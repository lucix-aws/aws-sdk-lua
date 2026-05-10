-- Top-level AWS configuration resolver.
-- Precedence: explicit config > environment variables > shared config files.

local env_mod = require("aws.sdk.runtime.env")
local config_mod = require("aws.sdk.runtime.config")

local M = {}

-- Map from shared config property names to our config field names.
local PROFILE_KEY_MAP = {
    region = "region",
    aws_access_key_id = "access_key_id",
    aws_secret_access_key = "secret_access_key",
    aws_session_token = "session_token",
    use_fips_endpoint = "use_fips",
    use_dualstack_endpoint = "use_dual_stack",
    endpoint_url = "endpoint_url",
    max_attempts = "max_attempts",
    retry_mode = "retry_mode",
    role_arn = "role_arn",
    source_profile = "source_profile",
    credential_process = "credential_process",
    sso_session = "sso_session",
    sso_account_id = "sso_account_id",
    sso_role_name = "sso_role_name",
    sso_region = "sso_region",
    sso_start_url = "sso_start_url",
}

-- Boolean config keys that need parsing from shared config string values.
local BOOL_KEYS = { use_fips = true, use_dual_stack = true }

-- Integer config keys that need parsing from shared config string values.
local INT_KEYS = { max_attempts = true }

-- Parse a boolean string. Returns bool or nil.
local function parse_bool(v)
    if type(v) ~= "string" then return v end
    local low = v:lower()
    if low == "true" then return true end
    if low == "false" then return false end
    return nil
end

--- Load the full resolved configuration.
--- @param overrides table|nil  Explicit user-provided config (highest precedence)
--- @return table, string|nil  Resolved config table, error
function M.load(overrides)
    overrides = overrides or {}

    -- 1. Load environment config
    local env_cfg, err = env_mod.load()
    if not env_cfg then return nil, err end

    -- 2. Determine profile name: overrides > env > "default"
    local profile_name = overrides.profile or env_cfg.profile or "default"

    -- 3. Determine file paths: overrides > env > defaults
    local config_path = overrides.config_file or env_cfg.config_file
    local creds_path = overrides.credentials_file or env_cfg.credentials_file

    -- 4. Load shared config files
    local profiles, err2 = config_mod.load(config_path, creds_path)
    if not profiles then return nil, err2 end

    -- 5. Get the active profile
    local profile = config_mod.get_profile(profiles, profile_name) or {}

    -- 6. Build resolved config: shared config (lowest) -> env -> overrides (highest)
    local cfg = {}

    -- Layer 1: shared config file values
    for file_key, cfg_key in pairs(PROFILE_KEY_MAP) do
        local v = profile[file_key]
        if v and v ~= "" then
            if BOOL_KEYS[cfg_key] then
                v = parse_bool(v)
            elseif INT_KEYS[cfg_key] then
                v = tonumber(v)
            end
            if v ~= nil then cfg[cfg_key] = v end
        end
    end

    -- Layer 2: environment variables (override shared config)
    for k, v in pairs(env_cfg) do
        if v ~= nil and k ~= "config_file" and k ~= "credentials_file" and k ~= "profile" then
            cfg[k] = v
        end
    end

    -- Layer 3: explicit overrides (highest precedence)
    for k, v in pairs(overrides) do
        if v ~= nil and k ~= "config_file" and k ~= "credentials_file" and k ~= "profile" then
            cfg[k] = v
        end
    end

    -- Always include resolved metadata
    cfg.profile = profile_name
    cfg.profiles = profiles

    return cfg
end

return M
