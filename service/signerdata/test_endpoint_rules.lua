-- Generated endpoint ruleset tests — do not edit

package.path = "runtime/?.lua;runtime/?/init.lua;" .. package.path

local endpoint = require("smithy.endpoint")
local ruleset = require("signerdata.endpoint_rules")

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

test("Standard region endpoint", function()
    local params = {
        Region = "us-east-1",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://data-signer.us-east-1.amazonaws.com", "url")
end)

test("European Sovereign Cloud region endpoint", function()
    local params = {
        Region = "eusc-de-east-1",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://data-signer.eusc-de-east-1.amazonaws.eu", "url")
end)

test("Custom endpoint override", function()
    local params = {
        Region = "us-east-1",
        Endpoint = "https://vpce-123.data-signer.us-east-1.vpce.amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://vpce-123.data-signer.us-east-1.vpce.amazonaws.com", "url")
end)

test("FIPS endpoint", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://data-signer-fips.us-east-1.amazonaws.com", "url")
end)

test("Dual-stack endpoint", function()
    local params = {
        Region = "us-east-1",
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://data-signer.us-east-1.api.aws", "url")
end)

print(string.format("\n%d passed, %d failed", pass_count, fail_count))
if fail_count > 0 then os.exit(1) end
