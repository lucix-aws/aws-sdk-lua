-- Generated endpoint ruleset tests — do not edit

package.path = "runtime/?.lua;runtime/?/init.lua;" .. package.path

local endpoint = require("endpoint")
local ruleset = require("codecatalyst.endpoint_rules")

local pass_count = 0
local fail_count = 0

local function test(name, fn)
    local ok, err = pcall(fn)
    if ok then
        pass_count = pass_count + 1
        print("PASS: " .. name)
    else
        fail_count = fail_count + 1
        print("FAIL: " .. name .. "\n  " .. tostring(err))
    end
end

local function assert_eq(a, b, msg)
    if a ~= b then
        error((msg or "assert_eq") .. ": expected " .. tostring(b) .. ", got " .. tostring(a), 2)
    end
end

test("Override endpoint", function()
    local params = {
        Endpoint = "https://test.codecatalyst.global.api.aws",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://test.codecatalyst.global.api.aws", "url")
end)

test("Default endpoint (region not set)", function()
    local params = {}
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://codecatalyst.global.api.aws", "url")
end)

test("Default FIPS endpoint (region not set)", function()
    local params = {
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://codecatalyst-fips.global.api.aws", "url")
end)

test("Default endpoint (region: aws-global)", function()
    local params = {
        Region = "aws-global",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://codecatalyst.global.api.aws", "url")
end)

test("Default FIPS endpoint (region: aws-global)", function()
    local params = {
        Region = "aws-global",
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://codecatalyst-fips.global.api.aws", "url")
end)

test("Default endpoint for a valid home region (region: us-west-2)", function()
    local params = {
        Region = "us-west-2",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://codecatalyst.global.api.aws", "url")
end)

test("Default FIPS endpoint for a valid home region (region: us-west-2)", function()
    local params = {
        Region = "us-west-2",
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://codecatalyst-fips.global.api.aws", "url")
end)

test("Default endpoint for an unavailable home region (region: us-east-1)", function()
    local params = {
        Region = "us-east-1",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://codecatalyst.global.api.aws", "url")
end)

test("Default FIPS endpoint for an unavailable home region (region: us-east-1)", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://codecatalyst-fips.global.api.aws", "url")
end)

print(string.format("\n%d passed, %d failed", pass_count, fail_count))
if fail_count > 0 then os.exit(1) end
