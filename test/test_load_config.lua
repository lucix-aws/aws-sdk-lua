-- Test: runtime/load_config.lua
-- Run: luajit test/test_load_config.lua

package.path = "runtime/?.lua;" .. package.path

local load_config = require("aws.sdk.runtime.load_config")
local ffi = require("ffi")

ffi.cdef[[
    int setenv(const char *name, const char *value, int overwrite);
    int unsetenv(const char *name);
]]

local pass, fail = 0, 0

local function test(name, fn)
    local ok, err = pcall(fn)
    if ok then
        pass = pass + 1
        print("PASS: " .. name)
    else
        fail = fail + 1
        print("FAIL: " .. name .. "\n  " .. tostring(err))
    end
end

local function assert_eq(a, b, msg)
    if a ~= b then
        error((msg or "assert_eq") .. ": expected " .. tostring(b) .. ", got " .. tostring(a), 2)
    end
end

local function assert_nil(a, msg)
    if a ~= nil then
        error((msg or "assert_nil") .. ": expected nil, got " .. tostring(a), 2)
    end
end

-- Env var management
local ENV_KEYS = {
    "AWS_REGION", "AWS_DEFAULT_REGION", "AWS_PROFILE", "AWS_DEFAULT_PROFILE",
    "AWS_CONFIG_FILE", "AWS_SHARED_CREDENTIALS_FILE",
    "AWS_ACCESS_KEY_ID", "AWS_ACCESS_KEY", "AWS_SECRET_ACCESS_KEY", "AWS_SECRET_KEY",
    "AWS_SESSION_TOKEN",
    "AWS_USE_FIPS_ENDPOINT", "AWS_USE_DUALSTACK_ENDPOINT",
    "AWS_ENDPOINT_URL", "AWS_MAX_ATTEMPTS", "AWS_RETRY_MODE",
}

local saved = {}
local function save_env()
    for _, k in ipairs(ENV_KEYS) do saved[k] = os.getenv(k) end
end
local function clear_env()
    for _, k in ipairs(ENV_KEYS) do ffi.C.unsetenv(k) end
end
local function restore_env()
    for _, k in ipairs(ENV_KEYS) do
        if saved[k] then ffi.C.setenv(k, saved[k], 1) else ffi.C.unsetenv(k) end
    end
end
local function setenv(k, v) ffi.C.setenv(k, v, 1) end

-- Temp file helpers
local tmpfiles = {}
local function write_tmp(content)
    local path = os.tmpname()
    tmpfiles[#tmpfiles + 1] = path
    local f = io.open(path, "w")
    f:write(content)
    f:close()
    return path
end
local function cleanup()
    for _, p in ipairs(tmpfiles) do os.remove(p) end
end

save_env()

-- === Tests ===

test("load with no env, no files, no overrides", function()
    clear_env()
    -- Point to nonexistent files so real ~/.aws doesn't interfere
    setenv("AWS_CONFIG_FILE", "/nonexistent/config")
    setenv("AWS_SHARED_CREDENTIALS_FILE", "/nonexistent/creds")
    local cfg = load_config.load()
    assert_eq(cfg.profile, "default")
    assert_nil(cfg.region)
end)

test("shared config file provides region", function()
    clear_env()
    local cfg_path = write_tmp("[default]\nregion = us-west-2\n")
    setenv("AWS_CONFIG_FILE", cfg_path)
    setenv("AWS_SHARED_CREDENTIALS_FILE", "/nonexistent")
    local cfg = load_config.load()
    assert_eq(cfg.region, "us-west-2")
end)

test("env var overrides shared config", function()
    clear_env()
    local cfg_path = write_tmp("[default]\nregion = us-west-2\n")
    setenv("AWS_CONFIG_FILE", cfg_path)
    setenv("AWS_SHARED_CREDENTIALS_FILE", "/nonexistent")
    setenv("AWS_REGION", "eu-central-1")
    local cfg = load_config.load()
    assert_eq(cfg.region, "eu-central-1")
end)

test("explicit override beats env var", function()
    clear_env()
    setenv("AWS_CONFIG_FILE", "/nonexistent")
    setenv("AWS_SHARED_CREDENTIALS_FILE", "/nonexistent")
    setenv("AWS_REGION", "eu-central-1")
    local cfg = load_config.load({ region = "ap-southeast-1" })
    assert_eq(cfg.region, "ap-southeast-1")
end)

test("profile selection from env", function()
    clear_env()
    local cfg_path = write_tmp("[default]\nregion = us-east-1\n\n[profile dev]\nregion = eu-west-1\n")
    setenv("AWS_CONFIG_FILE", cfg_path)
    setenv("AWS_SHARED_CREDENTIALS_FILE", "/nonexistent")
    setenv("AWS_PROFILE", "dev")
    local cfg = load_config.load()
    assert_eq(cfg.profile, "dev")
    assert_eq(cfg.region, "eu-west-1")
end)

test("profile selection from override beats env", function()
    clear_env()
    local cfg_path = write_tmp("[default]\nregion = us-east-1\n\n[profile dev]\nregion = eu-west-1\n\n[profile staging]\nregion = ap-south-1\n")
    setenv("AWS_CONFIG_FILE", cfg_path)
    setenv("AWS_SHARED_CREDENTIALS_FILE", "/nonexistent")
    setenv("AWS_PROFILE", "dev")
    local cfg = load_config.load({ profile = "staging" })
    assert_eq(cfg.profile, "staging")
    assert_eq(cfg.region, "ap-south-1")
end)

test("credentials from shared config", function()
    clear_env()
    local creds_path = write_tmp("[default]\naws_access_key_id = FILE_AK\naws_secret_access_key = FILE_SK\naws_session_token = FILE_TOK\n")
    setenv("AWS_CONFIG_FILE", "/nonexistent")
    setenv("AWS_SHARED_CREDENTIALS_FILE", creds_path)
    local cfg = load_config.load()
    assert_eq(cfg.access_key_id, "FILE_AK")
    assert_eq(cfg.secret_access_key, "FILE_SK")
    assert_eq(cfg.session_token, "FILE_TOK")
end)

test("env credentials override file credentials", function()
    clear_env()
    local creds_path = write_tmp("[default]\naws_access_key_id = FILE_AK\naws_secret_access_key = FILE_SK\n")
    setenv("AWS_CONFIG_FILE", "/nonexistent")
    setenv("AWS_SHARED_CREDENTIALS_FILE", creds_path)
    setenv("AWS_ACCESS_KEY_ID", "ENV_AK")
    setenv("AWS_SECRET_ACCESS_KEY", "ENV_SK")
    local cfg = load_config.load()
    assert_eq(cfg.access_key_id, "ENV_AK")
    assert_eq(cfg.secret_access_key, "ENV_SK")
end)

test("boolean from shared config: use_fips_endpoint", function()
    clear_env()
    local cfg_path = write_tmp("[default]\nuse_fips_endpoint = true\n")
    setenv("AWS_CONFIG_FILE", cfg_path)
    setenv("AWS_SHARED_CREDENTIALS_FILE", "/nonexistent")
    local cfg = load_config.load()
    assert_eq(cfg.use_fips, true)
end)

test("integer from shared config: max_attempts", function()
    clear_env()
    local cfg_path = write_tmp("[default]\nmax_attempts = 5\n")
    setenv("AWS_CONFIG_FILE", cfg_path)
    setenv("AWS_SHARED_CREDENTIALS_FILE", "/nonexistent")
    local cfg = load_config.load()
    assert_eq(cfg.max_attempts, 5)
end)

test("role_arn and source_profile from shared config", function()
    clear_env()
    local cfg_path = write_tmp("[profile assume]\nrole_arn = arn:aws:iam::123:role/r\nsource_profile = default\n")
    setenv("AWS_CONFIG_FILE", cfg_path)
    setenv("AWS_SHARED_CREDENTIALS_FILE", "/nonexistent")
    local cfg = load_config.load({ profile = "assume" })
    assert_eq(cfg.role_arn, "arn:aws:iam::123:role/r")
    assert_eq(cfg.source_profile, "default")
end)

test("profiles table is included in result", function()
    clear_env()
    local cfg_path = write_tmp("[default]\nregion = us-east-1\n\n[profile dev]\nregion = eu-west-1\n")
    setenv("AWS_CONFIG_FILE", cfg_path)
    setenv("AWS_SHARED_CREDENTIALS_FILE", "/nonexistent")
    local cfg = load_config.load()
    assert(cfg.profiles, "profiles should be present")
    assert(cfg.profiles["default"], "default profile should exist")
    assert(cfg.profiles["dev"], "dev profile should exist")
end)

test("config_file override in load()", function()
    clear_env()
    local cfg_path = write_tmp("[default]\nregion = from-override\n")
    setenv("AWS_CONFIG_FILE", "/nonexistent")
    setenv("AWS_SHARED_CREDENTIALS_FILE", "/nonexistent")
    local cfg = load_config.load({ config_file = cfg_path })
    assert_eq(cfg.region, "from-override")
end)

test("full precedence chain: file < env < override", function()
    clear_env()
    local cfg_path = write_tmp("[default]\nregion = file-region\nendpoint_url = file-endpoint\nretry_mode = standard\n")
    setenv("AWS_CONFIG_FILE", cfg_path)
    setenv("AWS_SHARED_CREDENTIALS_FILE", "/nonexistent")
    setenv("AWS_REGION", "env-region")
    local cfg = load_config.load({ endpoint_url = "override-endpoint" })
    -- region: env wins over file
    assert_eq(cfg.region, "env-region")
    -- endpoint_url: override wins over file
    assert_eq(cfg.endpoint_url, "override-endpoint")
    -- retry_mode: file value (no env or override)
    assert_eq(cfg.retry_mode, "standard")
end)

-- Cleanup
restore_env()
cleanup()

print(string.format("\n%d passed, %d failed", pass, fail))
if fail > 0 then os.exit(1) end
