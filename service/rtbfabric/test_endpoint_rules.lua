-- Generated endpoint ruleset tests — do not edit

package.path = "runtime/?.lua;runtime/?/init.lua;" .. package.path

local endpoint = require("endpoint")
local ruleset = require("rtbfabric.endpoint_rules")

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

test("For custom endpoint with region not set and fips disabled", function()
    local params = {
        Endpoint = "https://example.com",
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://example.com", "url")
end)

test("For custom endpoint with fips enabled", function()
    local params = {
        Endpoint = "https://example.com",
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: FIPS and custom endpoint are not supported", "error message")
end)

test("For custom endpoint with fips disabled and dualstack enabled", function()
    local params = {
        Endpoint = "https://example.com",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: Dualstack and custom endpoint are not supported", "error message")
end)

test("For region us-east-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric-fips.us-east-1.api.aws", "url")
end)

test("For region us-east-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric-fips.us-east-1.amazonaws.com", "url")
end)

test("For region us-east-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric.us-east-1.api.aws", "url")
end)

test("For region us-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric.us-east-1.amazonaws.com", "url")
end)

test("For region cn-northwest-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "cn-northwest-1",
        UseFIPS = true,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric-fips.cn-northwest-1.api.amazonwebservices.com.cn", "url")
end)

test("For region cn-northwest-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "cn-northwest-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric-fips.cn-northwest-1.amazonaws.com.cn", "url")
end)

test("For region cn-northwest-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "cn-northwest-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric.cn-northwest-1.api.amazonwebservices.com.cn", "url")
end)

test("For region cn-northwest-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "cn-northwest-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric.cn-northwest-1.amazonaws.com.cn", "url")
end)

test("For region eusc-de-east-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "eusc-de-east-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric-fips.eusc-de-east-1.amazonaws.eu", "url")
end)

test("For region eusc-de-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eusc-de-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric.eusc-de-east-1.amazonaws.eu", "url")
end)

test("For region us-iso-east-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-iso-east-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric-fips.us-iso-east-1.c2s.ic.gov", "url")
end)

test("For region us-iso-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-iso-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric.us-iso-east-1.c2s.ic.gov", "url")
end)

test("For region us-isob-east-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-isob-east-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric-fips.us-isob-east-1.sc2s.sgov.gov", "url")
end)

test("For region us-isob-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-isob-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric.us-isob-east-1.sc2s.sgov.gov", "url")
end)

test("For region eu-isoe-west-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "eu-isoe-west-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric-fips.eu-isoe-west-1.cloud.adc-e.uk", "url")
end)

test("For region eu-isoe-west-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eu-isoe-west-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric.eu-isoe-west-1.cloud.adc-e.uk", "url")
end)

test("For region us-isof-south-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-isof-south-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric-fips.us-isof-south-1.csp.hci.ic.gov", "url")
end)

test("For region us-isof-south-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-isof-south-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric.us-isof-south-1.csp.hci.ic.gov", "url")
end)

test("For region us-gov-west-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "us-gov-west-1",
        UseFIPS = true,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric-fips.us-gov-west-1.api.aws", "url")
end)

test("For region us-gov-west-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-gov-west-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric-fips.us-gov-west-1.amazonaws.com", "url")
end)

test("For region us-gov-west-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "us-gov-west-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric.us-gov-west-1.api.aws", "url")
end)

test("For region us-gov-west-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-gov-west-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://rtbfabric.us-gov-west-1.amazonaws.com", "url")
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
