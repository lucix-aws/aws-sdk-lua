-- Generated endpoint ruleset tests — do not edit

package.path = "runtime/?.lua;runtime/?/init.lua;" .. package.path

local endpoint = require("endpoint")
local ruleset = require("iotsecuretunneling.endpoint_rules")

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

test("For region ap-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.ap-east-1.amazonaws.com", "url")
end)

test("For region ap-east-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "ap-east-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.ap-east-1.api.aws", "url")
end)

test("For region ap-northeast-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-northeast-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.ap-northeast-1.amazonaws.com", "url")
end)

test("For region ap-northeast-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "ap-northeast-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.ap-northeast-1.api.aws", "url")
end)

test("For region ap-northeast-2 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-northeast-2",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.ap-northeast-2.amazonaws.com", "url")
end)

test("For region ap-northeast-2 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "ap-northeast-2",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.ap-northeast-2.api.aws", "url")
end)

test("For region ap-south-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-south-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.ap-south-1.amazonaws.com", "url")
end)

test("For region ap-south-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "ap-south-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.ap-south-1.api.aws", "url")
end)

test("For region ap-southeast-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-southeast-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.ap-southeast-1.amazonaws.com", "url")
end)

test("For region ap-southeast-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "ap-southeast-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.ap-southeast-1.api.aws", "url")
end)

test("For region ap-southeast-2 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-southeast-2",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.ap-southeast-2.amazonaws.com", "url")
end)

test("For region ap-southeast-2 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "ap-southeast-2",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.ap-southeast-2.api.aws", "url")
end)

test("For region ca-central-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ca-central-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.ca-central-1.amazonaws.com", "url")
end)

test("For region ca-central-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "ca-central-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot-fips.ca-central-1.amazonaws.com", "url")
end)

test("For region ca-central-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "ca-central-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.ca-central-1.api.aws", "url")
end)

test("For region ca-central-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "ca-central-1",
        UseFIPS = true,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling-fips.ca-central-1.api.aws", "url")
end)

test("For region eu-central-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eu-central-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.eu-central-1.amazonaws.com", "url")
end)

test("For region eu-central-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "eu-central-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.eu-central-1.api.aws", "url")
end)

test("For region eu-north-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eu-north-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.eu-north-1.amazonaws.com", "url")
end)

test("For region eu-north-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "eu-north-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.eu-north-1.api.aws", "url")
end)

test("For region eu-west-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eu-west-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.eu-west-1.amazonaws.com", "url")
end)

test("For region eu-west-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "eu-west-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.eu-west-1.api.aws", "url")
end)

test("For region eu-west-2 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eu-west-2",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.eu-west-2.amazonaws.com", "url")
end)

test("For region eu-west-2 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "eu-west-2",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.eu-west-2.api.aws", "url")
end)

test("For region eu-west-3 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eu-west-3",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.eu-west-3.amazonaws.com", "url")
end)

test("For region eu-west-3 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "eu-west-3",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.eu-west-3.api.aws", "url")
end)

test("For region me-central-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "me-central-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.me-central-1.amazonaws.com", "url")
end)

test("For region me-central-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "me-central-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.me-central-1.api.aws", "url")
end)

test("For region me-south-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "me-south-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.me-south-1.amazonaws.com", "url")
end)

test("For region me-south-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "me-south-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.me-south-1.api.aws", "url")
end)

test("For region sa-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "sa-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.sa-east-1.amazonaws.com", "url")
end)

test("For region sa-east-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "sa-east-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.sa-east-1.api.aws", "url")
end)

test("For region us-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.us-east-1.amazonaws.com", "url")
end)

test("For region us-east-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot-fips.us-east-1.amazonaws.com", "url")
end)

test("For region us-east-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.us-east-1.api.aws", "url")
end)

test("For region us-east-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling-fips.us-east-1.api.aws", "url")
end)

test("For region us-east-2 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-east-2",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.us-east-2.amazonaws.com", "url")
end)

test("For region us-east-2 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-east-2",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot-fips.us-east-2.amazonaws.com", "url")
end)

test("For region us-east-2 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "us-east-2",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.us-east-2.api.aws", "url")
end)

test("For region us-east-2 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "us-east-2",
        UseFIPS = true,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling-fips.us-east-2.api.aws", "url")
end)

test("For region us-west-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-west-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.us-west-1.amazonaws.com", "url")
end)

test("For region us-west-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-west-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot-fips.us-west-1.amazonaws.com", "url")
end)

test("For region us-west-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "us-west-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.us-west-1.api.aws", "url")
end)

test("For region us-west-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "us-west-1",
        UseFIPS = true,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling-fips.us-west-1.api.aws", "url")
end)

test("For region us-west-2 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-west-2",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.us-west-2.amazonaws.com", "url")
end)

test("For region us-west-2 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-west-2",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot-fips.us-west-2.amazonaws.com", "url")
end)

test("For region us-west-2 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "us-west-2",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.us-west-2.api.aws", "url")
end)

test("For region us-west-2 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "us-west-2",
        UseFIPS = true,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling-fips.us-west-2.api.aws", "url")
end)

test("For region cn-north-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "cn-north-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.cn-north-1.amazonaws.com.cn", "url")
end)

test("For region cn-north-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "cn-north-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.cn-north-1.api.amazonwebservices.com.cn", "url")
end)

test("For region cn-northwest-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "cn-northwest-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.cn-northwest-1.amazonaws.com.cn", "url")
end)

test("For region cn-northwest-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "cn-northwest-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.cn-northwest-1.api.amazonwebservices.com.cn", "url")
end)

test("For region cn-north-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "cn-north-1",
        UseFIPS = true,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling-fips.cn-north-1.api.amazonwebservices.com.cn", "url")
end)

test("For region cn-north-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "cn-north-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot-fips.cn-north-1.amazonaws.com.cn", "url")
end)

test("For region us-gov-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-gov-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.us-gov-east-1.amazonaws.com", "url")
end)

test("For region us-gov-east-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-gov-east-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot-fips.us-gov-east-1.amazonaws.com", "url")
end)

test("For region us-gov-east-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "us-gov-east-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.us-gov-east-1.api.aws", "url")
end)

test("For region us-gov-east-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "us-gov-east-1",
        UseFIPS = true,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling-fips.us-gov-east-1.api.aws", "url")
end)

test("For region us-gov-west-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-gov-west-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.us-gov-west-1.amazonaws.com", "url")
end)

test("For region us-gov-west-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-gov-west-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot-fips.us-gov-west-1.amazonaws.com", "url")
end)

test("For region us-gov-west-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "us-gov-west-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling.us-gov-west-1.api.aws", "url")
end)

test("For region us-gov-west-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "us-gov-west-1",
        UseFIPS = true,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.iot-tunneling-fips.us-gov-west-1.api.aws", "url")
end)

test("For region us-iso-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-iso-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.us-iso-east-1.c2s.ic.gov", "url")
end)

test("For region us-iso-east-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-iso-east-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot-fips.us-iso-east-1.c2s.ic.gov", "url")
end)

test("For region us-isob-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-isob-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot.us-isob-east-1.sc2s.sgov.gov", "url")
end)

test("For region us-isob-east-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-isob-east-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://api.tunneling.iot-fips.us-isob-east-1.sc2s.sgov.gov", "url")
end)

test("For custom endpoint with region set and fips disabled and dualstack disabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        Endpoint = "https://example.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://example.com", "url")
end)

test("For custom endpoint with region not set and fips disabled and dualstack disabled", function()
    local params = {
        UseFIPS = false,
        UseDualStack = false,
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
        UseDualStack = false,
        Endpoint = "https://example.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: FIPS and custom endpoint are not supported", "error message")
end)

test("For custom endpoint with fips disabled and dualstack enabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = true,
        Endpoint = "https://example.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: Dualstack and custom endpoint are not supported", "error message")
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
