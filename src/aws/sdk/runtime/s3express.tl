-- S3Express credential provider.

local hmac = require("smithy.crypto.hmac")

local record M
    record Provider
        resolve: function(Provider, bucket: string): any, any
    end

    new: function(opts: {string:any}): Provider
end

local CACHE_CAP = 100
local REFRESH_WINDOW = 60

local record Cache
    entries: {string:any}
    order: {string}
    cap: integer
end

local function new_cache(cap: integer): Cache
    return { entries = {}, order = {}, cap = cap }
end

local function cache_get(c: Cache, key: string): any
    local entry = c.entries[key]
    if not entry then return nil end
    for i, k in ipairs(c.order) do
        if k == key then
            table.remove(c.order, i)
            break
        end
    end
    table.insert(c.order, 1, key)
    return entry
end

local function cache_put(c: Cache, key: string, value: any)
    if c.entries[key] then
        c.entries[key] = value
        for i, k in ipairs(c.order) do
            if k == key then
                table.remove(c.order, i)
                break
            end
        end
    else
        if #c.order >= c.cap then
            local evict = table.remove(c.order)
            c.entries[evict] = nil
        end
        c.entries[key] = value
    end
    table.insert(c.order, 1, key)
end

function M.new(opts: {string:any}): M.Provider
    local cache = new_cache(CACHE_CAP)
    local provider: M.Provider = {} as M.Provider

    function provider:resolve(bucket: string): any, any
        local base_resolver = opts.base_credentials_resolver as function(): any, any
        local base_creds, err = base_resolver()
        if err then return nil, err end

        local creds = base_creds as {string:any}
        local key = hmac.hex_digest(creds.secret_key as string, creds.access_key as string) .. ":" .. bucket

        local cached = cache_get(cache, key) as {string:any}
        if cached then
            local now = os.time()
            if cached.expiration and ((cached.expiration as number) - now) > REFRESH_WINDOW then
                return cached, nil
            end
        end

        local s3_client = opts.s3_client as {string:any}
        local create_session = s3_client.createSession as function(any, {string:any}): any, any
        local resp: any
        resp, err = create_session(opts.s3_client, { Bucket = bucket })
        if err then return nil, err end

        local resp_tbl = resp as {string:any}
        if not resp_tbl or not resp_tbl.Credentials then
            return nil, { type = "sdk", code = "S3ExpressError", message = "CreateSession returned no credentials" }
        end

        local resp_creds = resp_tbl.Credentials as {string:any}
        local result = {
            access_key = resp_creds.AccessKeyId,
            secret_key = resp_creds.SecretAccessKey,
            session_token = resp_creds.SessionToken,
            expiration = resp_creds.Expiration,
        }

        cache_put(cache, key, result)
        return result, nil
    end

    return provider
end

return M
