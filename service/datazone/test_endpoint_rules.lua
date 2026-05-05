-- Generated endpoint ruleset tests — do not edit

package.path = "runtime/?.lua;runtime/?/init.lua;" .. package.path

local endpoint = require("smithy.endpoint")
local ruleset = require("datazone.endpoint_rules")

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

test("For region us-east-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://datazone-fips.us-east-1.api.aws", "url")
end)

test("For region us-east-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://datazone.us-east-1.api.aws", "url")
end)

test("For region cn-north-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "cn-north-1",
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://datazone-fips.cn-north-1.api.amazonwebservices.com.cn", "url")
end)

test("For region cn-north-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "cn-north-1",
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://datazone.cn-north-1.api.amazonwebservices.com.cn", "url")
end)

test("For region us-gov-east-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "us-gov-east-1",
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://datazone-fips.us-gov-east-1.api.aws", "url")
end)

test("For region us-gov-east-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "us-gov-east-1",
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://datazone.us-gov-east-1.api.aws", "url")
end)

test("For custom endpoint with region set and fips disabled and dualstack disabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        Endpoint = "https://example.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://example.com", "url")
end)

test("For custom endpoint with region not set and fips disabled and dualstack disabled", function()
    local params = {
        UseFIPS = false,
        Endpoint = "https://example.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://example.com", "url")
end)

test("For custom endpoint with fips enabled and dualstack disabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        Endpoint = "https://example.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: FIPS and custom endpoint are not supported", "error message")
end)

test("Missing region", function()
    local params = {}
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: Missing Region", "error message")
end)

print(string.format("\n%d passed, %d failed", pass_count, fail_count))
if fail_count > 0 then os.exit(1) end
