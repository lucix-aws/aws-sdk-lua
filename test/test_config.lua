-- Test: runtime/config.lua
-- Run: luajit test/test_config.lua

package.path = "runtime/?.lua;" .. package.path

local config = require("config")

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

local function assert_truthy(a, msg)
    if not a then
        error((msg or "assert_truthy") .. ": expected truthy, got " .. tostring(a), 2)
    end
end

-- Helper: write a temp file, return path
local tmpcount = 0
local tmpfiles = {}
local function write_tmp(content)
    tmpcount = tmpcount + 1
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

-- Use _parse_file for unit-level tests of the parser
local parse = config._parse_file

-- === Parser tests (config file mode) ===

test("parse empty content", function()
    local r = parse("", true)
    assert_eq(next(r), nil)
end)

test("parse default profile in config file", function()
    local r = parse("[default]\nregion = us-east-1\n", true)
    assert_eq(r["default"].props["region"], "us-east-1")
end)

test("parse named profile in config file", function()
    local r = parse("[profile dev]\nregion = eu-west-1\n", true)
    assert_eq(r["dev"].props["region"], "eu-west-1")
end)

test("config file: profile without prefix is skipped (non-default)", function()
    local r = parse("[dev]\nregion = eu-west-1\n", true)
    assert_nil(r["dev"])
end)

test("parse profile in credentials file (no prefix)", function()
    local r = parse("[dev]\naws_access_key_id = AKID\n", false)
    assert_eq(r["dev"].props["aws_access_key_id"], "AKID")
end)

test("credentials file: profile prefix is skipped", function()
    local r = parse("[profile dev]\naws_access_key_id = AKID\n", false)
    assert_nil(r["dev"])
end)

test("keys are lowercased", function()
    local r = parse("[default]\nREGION = us-west-2\n", true)
    assert_eq(r["default"].props["region"], "us-west-2")
end)

test("whitespace around key and value is trimmed", function()
    local r = parse("[default]\n  region  =  us-west-2  \n", true)
    assert_eq(r["default"].props["region"], "us-west-2")
end)

test("inline comment with whitespace before #", function()
    local r = parse("[default]\nregion = us-west-2 # my region\n", true)
    assert_eq(r["default"].props["region"], "us-west-2")
end)

test("inline comment with whitespace before ;", function()
    local r = parse("[default]\nregion = us-west-2 ; my region\n", true)
    assert_eq(r["default"].props["region"], "us-west-2")
end)

test("# without preceding whitespace is part of value", function()
    local r = parse("[default]\nregion = us-west-2#notcomment\n", true)
    assert_eq(r["default"].props["region"], "us-west-2#notcomment")
end)

test("comment lines are ignored", function()
    local r = parse("# comment\n; another\n[default]\nregion = us-east-1\n", true)
    assert_eq(r["default"].props["region"], "us-east-1")
end)

test("blank lines are ignored", function()
    local r = parse("[default]\n\nregion = us-east-1\n\n", true)
    assert_eq(r["default"].props["region"], "us-east-1")
end)

test("property continuation", function()
    local r = parse("[default]\nregion = us-\n  west-2\n", true)
    assert_eq(r["default"].props["region"], "us-\nwest-2")
end)

test("sub-properties", function()
    local r = parse("[default]\ns3 =\n  max_concurrent_requests = 20\n  max_retries = 5\n", true)
    assert_eq(r["default"].props["s3"], "")
    assert_eq(r["default"].sub_props["s3"]["max_concurrent_requests"], "20")
    assert_eq(r["default"].sub_props["s3"]["max_retries"], "5")
end)

test("duplicate profiles in same file are merged", function()
    local r = parse("[default]\nregion = us-east-1\n\n[default]\noutput = json\n", true)
    assert_eq(r["default"].props["region"], "us-east-1")
    assert_eq(r["default"].props["output"], "json")
end)

test("duplicate property: later wins", function()
    local r = parse("[default]\nregion = us-east-1\nregion = us-west-2\n", true)
    assert_eq(r["default"].props["region"], "us-west-2")
end)

test("[profile default] overrides [default] in config file", function()
    local content = "[default]\nregion = us-east-1\noutput = json\n\n[profile default]\nregion = us-west-2\n"
    local r = parse(content, true)
    assert_eq(r["default"].props["region"], "us-west-2")
    -- output from [default] should be dropped since [profile default] exists
    assert_nil(r["default"].props["output"])
end)

test("error: property before section", function()
    local r, err = parse("region = us-east-1\n[default]\n", true)
    assert_nil(r)
    assert_truthy(err:find("property before section"), err)
end)

test("error: continuation before property", function()
    local r, err = parse("[default]\n  continuation\n", true)
    assert_nil(r)
    assert_truthy(err:find("continuation before property"), err)
end)

test("error: sub-property without =", function()
    local r, err = parse("[default]\ns3 =\n  badline\n", true)
    assert_nil(r)
    assert_truthy(err:find("sub%-property without ="), err)
end)

test("sso-session sections are skipped", function()
    local r = parse("[sso-session my-sso]\nsso_region = us-east-1\n[default]\nregion = us-west-2\n", true)
    assert_nil(r["my-sso"])
    assert_eq(r["default"].props["region"], "us-west-2")
end)

test("services sections are skipped", function()
    local r = parse("[services my-services]\ns3 =\n  endpoint_url = http://localhost\n[default]\nregion = us-west-2\n", true)
    assert_nil(r["my-services"])
    assert_eq(r["default"].props["region"], "us-west-2")
end)

-- === Integration tests with load() ===

test("load: merge config and credentials files", function()
    local cfg_path = write_tmp("[default]\nregion = us-east-1\n\n[profile dev]\nregion = eu-west-1\n")
    local creds_path = write_tmp("[default]\naws_access_key_id = AKID0\naws_secret_access_key = SK0\n\n[dev]\naws_access_key_id = AKID1\naws_secret_access_key = SK1\n")
    local profiles, err = config.load(cfg_path, creds_path)
    assert_nil(err)
    local def = config.get_profile(profiles, "default")
    assert_eq(def["region"], "us-east-1")
    assert_eq(def["aws_access_key_id"], "AKID0")
    local dev = config.get_profile(profiles, "dev")
    assert_eq(dev["region"], "eu-west-1")
    assert_eq(dev["aws_access_key_id"], "AKID1")
end)

test("load: credentials file overrides config file properties", function()
    local cfg_path = write_tmp("[default]\naws_access_key_id = CONFIG_KEY\nregion = us-east-1\n")
    local creds_path = write_tmp("[default]\naws_access_key_id = CREDS_KEY\n")
    local profiles = config.load(cfg_path, creds_path)
    local def = config.get_profile(profiles)
    assert_eq(def["aws_access_key_id"], "CREDS_KEY")
    assert_eq(def["region"], "us-east-1")
end)

test("load: missing files treated as empty", function()
    local profiles = config.load("/nonexistent/config", "/nonexistent/credentials")
    assert_eq(next(profiles), nil)
end)

test("get_profile: nil name defaults to 'default'", function()
    local cfg_path = write_tmp("[default]\nregion = us-east-1\n")
    local profiles = config.load(cfg_path, "/nonexistent")
    local def = config.get_profile(profiles)
    assert_eq(def["region"], "us-east-1")
end)

test("get_profile: nonexistent profile returns nil", function()
    local profiles = config.load("/nonexistent", "/nonexistent")
    assert_nil(config.get_profile(profiles, "nope"))
end)

test("load: windows line endings", function()
    local cfg_path = write_tmp("[default]\r\nregion = us-east-1\r\n")
    local profiles = config.load(cfg_path, "/nonexistent")
    local def = config.get_profile(profiles)
    assert_eq(def["region"], "us-east-1")
end)

test("load: multiple profiles", function()
    local cfg_path = write_tmp(
        "[default]\nregion = us-east-1\n\n" ..
        "[profile staging]\nregion = us-west-1\n\n" ..
        "[profile production]\nregion = eu-central-1\n"
    )
    local profiles = config.load(cfg_path, "/nonexistent")
    assert_eq(config.get_profile(profiles, "default")["region"], "us-east-1")
    assert_eq(config.get_profile(profiles, "staging")["region"], "us-west-1")
    assert_eq(config.get_profile(profiles, "production")["region"], "eu-central-1")
end)

test("load: profile with all credential types", function()
    local cfg_path = write_tmp(
        "[profile assume]\nrole_arn = arn:aws:iam::123456:role/myrole\nsource_profile = default\n\n" ..
        "[profile sso]\nsso_session = my-sso\nsso_account_id = 123456\nsso_role_name = myrole\n"
    )
    local profiles = config.load(cfg_path, "/nonexistent")
    local assume = config.get_profile(profiles, "assume")
    assert_eq(assume["role_arn"], "arn:aws:iam::123456:role/myrole")
    assert_eq(assume["source_profile"], "default")
    local sso = config.get_profile(profiles, "sso")
    assert_eq(sso["sso_session"], "my-sso")
    assert_eq(sso["sso_account_id"], "123456")
end)

-- Cleanup
cleanup()

print(string.format("\n%d passed, %d failed", pass, fail))
if fail > 0 then os.exit(1) end
