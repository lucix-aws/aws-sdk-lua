-- Test: runtime/env.lua
-- Run: luajit test/test_env.lua

package.path = "runtime/?.lua;" .. package.path

local env = require("aws.sdk.runtime.env")
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

-- Helper to set/unset env vars for a test
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
    for _, k in ipairs(ENV_KEYS) do
        saved[k] = os.getenv(k)
    end
end

local function clear_env()
    for _, k in ipairs(ENV_KEYS) do
        ffi.C.unsetenv(k)
    end
end

local function restore_env()
    for _, k in ipairs(ENV_KEYS) do
        if saved[k] then
            ffi.C.setenv(k, saved[k], 1)
        else
            ffi.C.unsetenv(k)
        end
    end
end

local function setenv(k, v)
    ffi.C.setenv(k, v, 1)
end

-- Save original env
save_env()

-- === Tests ===

test("empty env returns empty config", function()
    clear_env()
    local cfg = env.load()
    assert_nil(cfg.region)
    assert_nil(cfg.profile)
    assert_nil(cfg.access_key_id)
end)

test("AWS_REGION takes precedence over AWS_DEFAULT_REGION", function()
    clear_env()
    setenv("AWS_REGION", "us-west-2")
    setenv("AWS_DEFAULT_REGION", "us-east-1")
    local cfg = env.load()
    assert_eq(cfg.region, "us-west-2")
end)

test("AWS_DEFAULT_REGION used when AWS_REGION unset", function()
    clear_env()
    setenv("AWS_DEFAULT_REGION", "eu-west-1")
    local cfg = env.load()
    assert_eq(cfg.region, "eu-west-1")
end)

test("AWS_PROFILE takes precedence over AWS_DEFAULT_PROFILE", function()
    clear_env()
    setenv("AWS_PROFILE", "prod")
    setenv("AWS_DEFAULT_PROFILE", "dev")
    local cfg = env.load()
    assert_eq(cfg.profile, "prod")
end)

test("credentials loaded when both key and secret present", function()
    clear_env()
    setenv("AWS_ACCESS_KEY_ID", "AKID")
    setenv("AWS_SECRET_ACCESS_KEY", "SECRET")
    setenv("AWS_SESSION_TOKEN", "TOKEN")
    local cfg = env.load()
    assert_eq(cfg.access_key_id, "AKID")
    assert_eq(cfg.secret_access_key, "SECRET")
    assert_eq(cfg.session_token, "TOKEN")
end)

test("credentials not loaded when secret missing", function()
    clear_env()
    setenv("AWS_ACCESS_KEY_ID", "AKID")
    local cfg = env.load()
    assert_nil(cfg.access_key_id)
    assert_nil(cfg.secret_access_key)
end)

test("fallback credential env vars", function()
    clear_env()
    setenv("AWS_ACCESS_KEY", "AKID2")
    setenv("AWS_SECRET_KEY", "SECRET2")
    local cfg = env.load()
    assert_eq(cfg.access_key_id, "AKID2")
    assert_eq(cfg.secret_access_key, "SECRET2")
end)

test("boolean env: use_fips true", function()
    clear_env()
    setenv("AWS_USE_FIPS_ENDPOINT", "true")
    local cfg = env.load()
    assert_eq(cfg.use_fips, true)
end)

test("boolean env: use_fips false", function()
    clear_env()
    setenv("AWS_USE_FIPS_ENDPOINT", "false")
    local cfg = env.load()
    assert_eq(cfg.use_fips, false)
end)

test("boolean env: case insensitive", function()
    clear_env()
    setenv("AWS_USE_DUALSTACK_ENDPOINT", "True")
    local cfg = env.load()
    assert_eq(cfg.use_dual_stack, true)
end)

test("boolean env: invalid value returns error", function()
    clear_env()
    setenv("AWS_USE_FIPS_ENDPOINT", "yes")
    local cfg, err = env.load()
    assert_nil(cfg)
    assert(err:find("invalid boolean"), "expected boolean error, got: " .. tostring(err))
end)

test("integer env: max_attempts", function()
    clear_env()
    setenv("AWS_MAX_ATTEMPTS", "5")
    local cfg = env.load()
    assert_eq(cfg.max_attempts, 5)
end)

test("integer env: invalid returns error", function()
    clear_env()
    setenv("AWS_MAX_ATTEMPTS", "abc")
    local cfg, err = env.load()
    assert_nil(cfg)
    assert(err:find("invalid integer"), "expected integer error, got: " .. tostring(err))
end)

test("endpoint_url and retry_mode", function()
    clear_env()
    setenv("AWS_ENDPOINT_URL", "http://localhost:8080")
    setenv("AWS_RETRY_MODE", "adaptive")
    local cfg = env.load()
    assert_eq(cfg.endpoint_url, "http://localhost:8080")
    assert_eq(cfg.retry_mode, "adaptive")
end)

test("config_file and credentials_file", function()
    clear_env()
    setenv("AWS_CONFIG_FILE", "/tmp/myconfig")
    setenv("AWS_SHARED_CREDENTIALS_FILE", "/tmp/mycreds")
    local cfg = env.load()
    assert_eq(cfg.config_file, "/tmp/myconfig")
    assert_eq(cfg.credentials_file, "/tmp/mycreds")
end)

-- Restore
restore_env()

print(string.format("\n%d passed, %d failed", pass, fail))
if fail > 0 then os.exit(1) end
