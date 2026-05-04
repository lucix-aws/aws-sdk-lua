-- Environment variable configuration loading.
-- Reads AWS SDK-relevant environment variables into a config table.

local M = {}

-- Read the first non-empty value from a list of env var names.
local function env_first(keys)
    for _, k in ipairs(keys) do
        local v = os.getenv(k)
        if v and v ~= "" then return v end
    end
    return nil
end

-- Parse a boolean env var (true/false, case-insensitive).
-- Returns true, false, or nil (unset/empty). Returns nil, err for invalid values.
local function env_bool(keys)
    local v = env_first(keys)
    if not v then return nil end
    local low = v:lower()
    if low == "true" then return true end
    if low == "false" then return false end
    return nil, "invalid boolean value for " .. keys[1] .. ": " .. v
end

-- Parse an integer env var. Returns number or nil. Returns nil, err for invalid.
local function env_int(keys)
    local v = env_first(keys)
    if not v then return nil end
    local n = tonumber(v)
    if not n or n ~= math.floor(n) then
        return nil, "invalid integer value for " .. keys[1] .. ": " .. v
    end
    return n
end

--- Load configuration from environment variables.
--- Returns a table of resolved values (only non-nil entries present).
--- @return table, string|nil
function M.load()
    local cfg = {}
    local err

    cfg.region = env_first({"AWS_REGION", "AWS_DEFAULT_REGION"})
    cfg.profile = env_first({"AWS_PROFILE", "AWS_DEFAULT_PROFILE"})
    cfg.config_file = os.getenv("AWS_CONFIG_FILE") or nil
    cfg.credentials_file = os.getenv("AWS_SHARED_CREDENTIALS_FILE") or nil

    -- Credentials (only set if access key is present)
    local ak = env_first({"AWS_ACCESS_KEY_ID", "AWS_ACCESS_KEY"})
    local sk = env_first({"AWS_SECRET_ACCESS_KEY", "AWS_SECRET_KEY"})
    if ak and sk then
        cfg.access_key_id = ak
        cfg.secret_access_key = sk
        cfg.session_token = os.getenv("AWS_SESSION_TOKEN") or nil
    end

    cfg.use_fips, err = env_bool({"AWS_USE_FIPS_ENDPOINT"})
    if err then return nil, err end

    cfg.use_dual_stack, err = env_bool({"AWS_USE_DUALSTACK_ENDPOINT"})
    if err then return nil, err end

    cfg.endpoint_url = os.getenv("AWS_ENDPOINT_URL") or nil

    cfg.max_attempts, err = env_int({"AWS_MAX_ATTEMPTS"})
    if err then return nil, err end

    cfg.retry_mode = os.getenv("AWS_RETRY_MODE") or nil

    return cfg
end

return M
