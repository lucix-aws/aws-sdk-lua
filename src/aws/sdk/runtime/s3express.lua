-- S3Express credential provider.
-- Calls CreateSession per-bucket, caches results in an LRU cache.

local hmac = require("smithy.crypto.hmac")

local M = {}

local CACHE_CAP = 100
local REFRESH_WINDOW = 60 -- seconds before expiry to trigger refresh

--- Simple LRU cache.
local function new_cache(cap)
    return { entries = {}, order = {}, cap = cap }
end

local function cache_get(c, key)
    local entry = c.entries[key]
    if not entry then return nil end
    -- Move to front of order
    for i, k in ipairs(c.order) do
        if k == key then
            table.remove(c.order, i)
            break
        end
    end
    table.insert(c.order, 1, key)
    return entry
end

local function cache_put(c, key, value)
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

--- Create a new S3Express credential provider.
--- @param opts table: { s3_client: the S3 client instance, base_credentials_resolver: fn() -> identity }
function M.new(opts)
    local cache = new_cache(CACHE_CAP)
    local provider = {}

    --- Retrieve S3Express credentials for a bucket.
    --- @param bucket string
    --- @return table identity {access_key, secret_key, session_token, expiration}
    --- @return table|nil err
    function provider.resolve(bucket)
        -- Get base credentials for cache key
        local base_creds, err = opts.base_credentials_resolver()
        if err then return nil, err end

        local key = hmac.hex_digest(base_creds.secret_key, base_creds.access_key) .. ":" .. bucket

        local cached = cache_get(cache, key)
        if cached then
            local now = os.time()
            if cached.expiration and (cached.expiration - now) > REFRESH_WINDOW then
                return cached, nil
            end
        end

        -- Call CreateSession
        local resp
        resp, err = opts.s3_client:createSession({ Bucket = bucket })
        if err then return nil, err end

        if not resp or not resp.Credentials then
            return nil, { type = "sdk", code = "S3ExpressError", message = "CreateSession returned no credentials" }
        end

        local creds = {
            access_key = resp.Credentials.AccessKeyId,
            secret_key = resp.Credentials.SecretAccessKey,
            session_token = resp.Credentials.SessionToken,
            expiration = resp.Credentials.Expiration,
        }

        cache_put(cache, key, creds)
        return creds, nil
    end

    return provider
end

return M
