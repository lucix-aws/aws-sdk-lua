-- Generated endpoint ruleset tests — do not edit

package.path = "runtime/?.lua;runtime/?/init.lua;" .. package.path

local endpoint = require("smithy.endpoint")
local ruleset = require("kinesis.endpoint_rules")

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

test("For region af-south-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "af-south-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.af-south-1.amazonaws.com", "url")
end)

test("For region ap-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.ap-east-1.amazonaws.com", "url")
end)

test("For region ap-northeast-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-northeast-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.ap-northeast-1.amazonaws.com", "url")
end)

test("For region ap-northeast-2 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-northeast-2",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.ap-northeast-2.amazonaws.com", "url")
end)

test("For region ap-northeast-3 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-northeast-3",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.ap-northeast-3.amazonaws.com", "url")
end)

test("For region ap-south-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-south-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.ap-south-1.amazonaws.com", "url")
end)

test("For region ap-southeast-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-southeast-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.ap-southeast-1.amazonaws.com", "url")
end)

test("For region ap-southeast-2 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-southeast-2",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.ap-southeast-2.amazonaws.com", "url")
end)

test("For region ap-southeast-3 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-southeast-3",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.ap-southeast-3.amazonaws.com", "url")
end)

test("For region ca-central-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ca-central-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.ca-central-1.amazonaws.com", "url")
end)

test("For region eu-central-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eu-central-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.eu-central-1.amazonaws.com", "url")
end)

test("For region eu-north-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eu-north-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.eu-north-1.amazonaws.com", "url")
end)

test("For region eu-south-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eu-south-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.eu-south-1.amazonaws.com", "url")
end)

test("For region eu-west-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eu-west-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.eu-west-1.amazonaws.com", "url")
end)

test("For region eu-west-2 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eu-west-2",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.eu-west-2.amazonaws.com", "url")
end)

test("For region eu-west-3 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eu-west-3",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.eu-west-3.amazonaws.com", "url")
end)

test("For region me-south-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "me-south-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.me-south-1.amazonaws.com", "url")
end)

test("For region sa-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "sa-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.sa-east-1.amazonaws.com", "url")
end)

test("For region us-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-east-1.amazonaws.com", "url")
end)

test("For region us-east-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-fips.us-east-1.amazonaws.com", "url")
end)

test("For region us-east-2 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-east-2",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-east-2.amazonaws.com", "url")
end)

test("For region us-east-2 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-east-2",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-fips.us-east-2.amazonaws.com", "url")
end)

test("For region us-west-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-west-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-west-1.amazonaws.com", "url")
end)

test("For region us-west-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-west-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-fips.us-west-1.amazonaws.com", "url")
end)

test("For region us-west-2 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-west-2",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-west-2.amazonaws.com", "url")
end)

test("For region us-west-2 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-west-2",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-fips.us-west-2.amazonaws.com", "url")
end)

test("For region us-east-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-fips.us-east-1.api.aws", "url")
end)

test("For region us-east-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-east-1.api.aws", "url")
end)

test("For region cn-north-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "cn-north-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.cn-north-1.amazonaws.com.cn", "url")
end)

test("For region cn-northwest-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "cn-northwest-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.cn-northwest-1.amazonaws.com.cn", "url")
end)

test("For region cn-north-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "cn-north-1",
        UseFIPS = true,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-fips.cn-north-1.api.amazonwebservices.com.cn", "url")
end)

test("For region cn-north-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "cn-north-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-fips.cn-north-1.amazonaws.com.cn", "url")
end)

test("For region cn-north-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "cn-north-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.cn-north-1.api.amazonwebservices.com.cn", "url")
end)

test("For region us-gov-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-gov-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-gov-east-1.amazonaws.com", "url")
end)

test("For region us-gov-east-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-gov-east-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-gov-east-1.amazonaws.com", "url")
end)

test("For region us-gov-west-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-gov-west-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-gov-west-1.amazonaws.com", "url")
end)

test("For region us-gov-west-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-gov-west-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-gov-west-1.amazonaws.com", "url")
end)

test("For region us-gov-east-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "us-gov-east-1",
        UseFIPS = true,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-fips.us-gov-east-1.api.aws", "url")
end)

test("For region us-gov-east-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "us-gov-east-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-gov-east-1.api.aws", "url")
end)

test("For region us-iso-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-iso-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-iso-east-1.c2s.ic.gov", "url")
end)

test("For region us-iso-west-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-iso-west-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-iso-west-1.c2s.ic.gov", "url")
end)

test("For region us-iso-east-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-iso-east-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-fips.us-iso-east-1.c2s.ic.gov", "url")
end)

test("For region us-isob-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-isob-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-isob-east-1.sc2s.sgov.gov", "url")
end)

test("For region us-isob-east-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-isob-east-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-fips.us-isob-east-1.sc2s.sgov.gov", "url")
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

test("Invalid ARN: Failed to parse ARN.", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        StreamARN = "arn",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Failed to parse ARN.", "error message")
end)

test("Invalid ARN: partition missing from ARN.", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        StreamARN = "arn::kinesis:us-west-2:123456789012:stream/testStream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Failed to parse ARN.", "error message")
end)

test("Invalid ARN: partitions mismatch.", function()
    local params = {
        Region = "us-gov-west-1",
        UseFIPS = false,
        UseDualStack = false,
        StreamARN = "arn:aws:kinesis:us-west-2:123456789012:stream/testStream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Partition: aws from ARN doesn't match with partition name: aws-us-gov.", "error message")
end)

test("Invalid ARN: Not Kinesis", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        StreamARN = "arn:aws:s3:us-west-2:123456789012:stream/testStream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: The ARN was not for the Kinesis service, found: s3.", "error message")
end)

test("Invalid ARN: Region is missing in ARN", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        StreamARN = "arn:aws:kinesis::123456789012:stream/testStream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Invalid region.", "error message")
end)

test("Invalid ARN: Region is empty string in ARN", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        StreamARN = "arn:aws:kinesis:  :123456789012:stream/testStream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Invalid region.", "error message")
end)

test("Invalid ARN: Invalid account id", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        StreamARN = "arn:aws:kinesis:us-east-1::stream/testStream",
        OperationType = "control",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Invalid account id.", "error message")
end)

test("Invalid ARN: Invalid account id", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        StreamARN = "arn:aws:kinesis:us-east-1:   :stream/testStream",
        OperationType = "control",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Invalid account id.", "error message")
end)

test("Invalid ARN: Kinesis ARNs only support stream arn types", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        StreamARN = "arn:aws:kinesis:us-east-1:123:accesspoint/testStream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Kinesis ARNs don't support `accesspoint` arn types.", "error message")
end)

test("OperationType not set", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        StreamARN = "arn:aws:kinesis:us-east-1:123456789012:stream/testStream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Operation Type is not set. Please contact service team for resolution.", "error message")
end)

test("Custom Endpoint is specified", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        StreamARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
        Endpoint = "https://example.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://example.com", "url")
end)

test("Account endpoint targeting control operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        StreamARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis.us-east-1.amazonaws.com", "url")
end)

test("Account endpoint targeting data operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        StreamARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis.us-east-1.amazonaws.com", "url")
end)

test("Account endpoint with fips targeting data operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "data",
        StreamARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis-fips.us-east-1.amazonaws.com", "url")
end)

test("Account endpoint with fips targeting control operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "control",
        StreamARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis-fips.us-east-1.amazonaws.com", "url")
end)

test("Account endpoint with Dual Stack and FIPS enabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = true,
        OperationType = "control",
        StreamARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis-fips.us-east-1.api.aws", "url")
end)

test("Account endpoint with Dual Stack enabled", function()
    local params = {
        Region = "us-west-1",
        UseFIPS = false,
        UseDualStack = true,
        OperationType = "data",
        StreamARN = "arn:aws:kinesis:us-west-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis.us-west-1.api.aws", "url")
end)

test("Account endpoint with FIPS and DualStack disabled", function()
    local params = {
        Region = "us-west-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        StreamARN = "arn:aws:kinesis:us-west-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis.us-west-1.amazonaws.com", "url")
end)

test("RegionMismatch: client region should be used for endpoint region", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        StreamARN = "arn:aws:kinesis:us-west-1:123:stream/testStream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis.us-east-1.amazonaws.com", "url")
end)

test("Account endpoint with FIPS enabled", function()
    local params = {
        Region = "cn-northwest-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "data",
        StreamARN = "arn:aws-cn:kinesis:cn-northwest-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis-fips.cn-northwest-1.amazonaws.com.cn", "url")
end)

test("Account endpoint with FIPS and DualStack enabled for cn regions.", function()
    local params = {
        Region = "cn-northwest-1",
        UseFIPS = true,
        UseDualStack = true,
        OperationType = "data",
        StreamARN = "arn:aws-cn:kinesis:cn-northwest-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis-fips.cn-northwest-1.api.amazonwebservices.com.cn", "url")
end)

test("Account endpoint targeting control operation type in ADC regions", function()
    local params = {
        Region = "us-iso-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        StreamARN = "arn:aws-iso:kinesis:us-iso-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-iso-east-1.c2s.ic.gov", "url")
end)

test("Account endpoint targeting control operation type in ADC regions", function()
    local params = {
        Region = "us-iso-west-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        StreamARN = "arn:aws-iso:kinesis:us-iso-west-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-iso-west-1.c2s.ic.gov", "url")
end)

test("Account endpoint targeting data operation type in ADC regions", function()
    local params = {
        Region = "us-isob-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        StreamARN = "arn:aws-iso-b:kinesis:us-isob-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-isob-east-1.sc2s.sgov.gov", "url")
end)

test("Account endpoint with fips targeting control operation type in ADC regions", function()
    local params = {
        Region = "us-iso-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "control",
        StreamARN = "arn:aws-iso:kinesis:us-iso-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-fips.us-iso-east-1.c2s.ic.gov", "url")
end)

test("Account endpoint with fips targeting data operation type in ADC regions", function()
    local params = {
        Region = "us-isob-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "data",
        StreamARN = "arn:aws-iso-b:kinesis:us-isob-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-fips.us-isob-east-1.sc2s.sgov.gov", "url")
end)

test("Invalid ConsumerARN: Failed to parse ARN.", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ConsumerARN = "arn",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Failed to parse ARN.", "error message")
end)

test("Invalid ConsumerARN: partition missing from ARN.", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ConsumerARN = "arn::kinesis:us-west-2:123456789012:stream/testStream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Failed to parse ARN.", "error message")
end)

test("Invalid ARN: partitions mismatch.", function()
    local params = {
        Region = "us-gov-west-1",
        UseFIPS = false,
        UseDualStack = false,
        ConsumerARN = "arn:aws:kinesis:us-west-2:123456789012:stream/testStream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Partition: aws from ARN doesn't match with partition name: aws-us-gov.", "error message")
end)

test("Invalid ARN: Not Kinesis", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ConsumerARN = "arn:aws:s3:us-west-2:123456789012:stream/testStream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: The ARN was not for the Kinesis service, found: s3.", "error message")
end)

test("Invalid ARN: Region is missing in ARN", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ConsumerARN = "arn:aws:kinesis::123456789012:stream/testStream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Invalid region.", "error message")
end)

test("Invalid ARN: Region is empty string in ARN", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ConsumerARN = "arn:aws:kinesis:  :123456789012:stream/testStream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Invalid region.", "error message")
end)

test("Invalid ARN: Invalid account id", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ConsumerARN = "arn:aws:kinesis:us-east-1::stream/testStream/consumer/test-consumer:1525898737",
        OperationType = "control",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Invalid account id.", "error message")
end)

test("Invalid ARN: Invalid account id", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ConsumerARN = "arn:aws:kinesis:us-east-1:   :stream/testStream/consumer/test-consumer:1525898737",
        OperationType = "control",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Invalid account id.", "error message")
end)

test("Invalid ARN: Kinesis ARNs only support stream arn/consumer arn types", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ConsumerARN = "arn:aws:kinesis:us-east-1:123:accesspoint/testStream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Kinesis ARNs don't support `accesspoint` arn types.", "error message")
end)

test("OperationType not set", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ConsumerARN = "arn:aws:kinesis:us-east-1:123456789012:stream/testStream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Operation Type is not set. Please contact service team for resolution.", "error message")
end)

test("Custom Endpoint is specified", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        ConsumerARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
        Endpoint = "https://example.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://example.com", "url")
end)

test("Account endpoint targeting control operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        ConsumerARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis.us-east-1.amazonaws.com", "url")
end)

test("Account endpoint targeting data operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        ConsumerARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis.us-east-1.amazonaws.com", "url")
end)

test("Account endpoint with fips targeting data operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "data",
        ConsumerARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis-fips.us-east-1.amazonaws.com", "url")
end)

test("Account endpoint with fips targeting control operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "control",
        ConsumerARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis-fips.us-east-1.amazonaws.com", "url")
end)

test("Account endpoint with Dual Stack and FIPS enabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = true,
        OperationType = "control",
        ConsumerARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis-fips.us-east-1.api.aws", "url")
end)

test("Account endpoint with Dual Stack enabled", function()
    local params = {
        Region = "us-west-1",
        UseFIPS = false,
        UseDualStack = true,
        OperationType = "data",
        ConsumerARN = "arn:aws:kinesis:us-west-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis.us-west-1.api.aws", "url")
end)

test("Account endpoint with FIPS and DualStack disabled", function()
    local params = {
        Region = "us-west-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        ConsumerARN = "arn:aws:kinesis:us-west-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis.us-west-1.amazonaws.com", "url")
end)

test("RegionMismatch: client region should be used for endpoint region", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        ConsumerARN = "arn:aws:kinesis:us-west-1:123:stream/testStream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis.us-east-1.amazonaws.com", "url")
end)

test("Account endpoint with FIPS enabled", function()
    local params = {
        Region = "cn-northwest-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "data",
        ConsumerARN = "arn:aws-cn:kinesis:cn-northwest-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis-fips.cn-northwest-1.amazonaws.com.cn", "url")
end)

test("Account endpoint with FIPS and DualStack enabled for cn regions.", function()
    local params = {
        Region = "cn-northwest-1",
        UseFIPS = true,
        UseDualStack = true,
        OperationType = "data",
        ConsumerARN = "arn:aws-cn:kinesis:cn-northwest-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis-fips.cn-northwest-1.api.amazonwebservices.com.cn", "url")
end)

test("Account endpoint targeting control operation type in ADC regions", function()
    local params = {
        Region = "us-iso-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        ConsumerARN = "arn:aws-iso:kinesis:us-iso-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-iso-east-1.c2s.ic.gov", "url")
end)

test("Account endpoint targeting control operation type in ADC regions", function()
    local params = {
        Region = "us-iso-west-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        ConsumerARN = "arn:aws-iso:kinesis:us-iso-west-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-iso-west-1.c2s.ic.gov", "url")
end)

test("Account endpoint targeting data operation type in ADC regions", function()
    local params = {
        Region = "us-isob-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        ConsumerARN = "arn:aws-iso-b:kinesis:us-isob-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-isob-east-1.sc2s.sgov.gov", "url")
end)

test("Account endpoint with fips targeting control operation type in ADC regions", function()
    local params = {
        Region = "us-iso-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "control",
        ConsumerARN = "arn:aws-iso:kinesis:us-iso-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-fips.us-iso-east-1.c2s.ic.gov", "url")
end)

test("Account endpoint with fips targeting data operation type in ADC regions", function()
    local params = {
        Region = "us-isob-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "data",
        ConsumerARN = "arn:aws-iso-b:kinesis:us-isob-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-fips.us-isob-east-1.sc2s.sgov.gov", "url")
end)

test("ConsumerARN targeting US-EAST-1", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        ConsumerARN = "arn:aws:kinesis:us-east-1:123456789123:stream/foobar/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123456789123.data-kinesis.us-east-1.amazonaws.com", "url")
end)

test("Both StreamARN and ConsumerARN specified. StreamARN should take precedence", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        StreamARN = "arn:aws:kinesis:us-east-1:123:stream/foobar",
        ConsumerARN = "arn:aws:kinesis:us-east-1:123456789123:stream/foobar/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis.us-east-1.amazonaws.com", "url")
end)

test("ResourceARN test: Invalid ARN: Failed to parse ARN.", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Failed to parse ARN.", "error message")
end)

test("ResourceARN as StreamARN test: Invalid ARN: partition missing from ARN.", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn::kinesis:us-west-2:123456789012:stream/testStream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Failed to parse ARN.", "error message")
end)

test("ResourceARN as StreamARN test: Invalid ARN: partitions mismatch.", function()
    local params = {
        Region = "us-gov-west-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn:aws:kinesis:us-west-2:123456789012:stream/testStream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Partition: aws from ARN doesn't match with partition name: aws-us-gov.", "error message")
end)

test("ResourceARN as StreamARN test: Invalid ARN: Not Kinesis", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn:aws:s3:us-west-2:123456789012:stream/testStream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: The ARN was not for the Kinesis service, found: s3.", "error message")
end)

test("ResourceARN as StreamARN test: Invalid ARN: Region is missing in ARN", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn:aws:kinesis::123456789012:stream/testStream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Invalid region.", "error message")
end)

test("ResourceARN as StreamARN test: Invalid ARN: Region is empty string in ARN", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn:aws:kinesis:  :123456789012:stream/testStream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Invalid region.", "error message")
end)

test("ResourceARN as StreamARN test: Invalid ARN: Invalid account id", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn:aws:kinesis:us-east-1::stream/testStream",
        OperationType = "control",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Invalid account id.", "error message")
end)

test("ResourceARN as StreamARN test: Invalid ARN: Invalid account id", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn:aws:kinesis:us-east-1:   :stream/testStream",
        OperationType = "control",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Invalid account id.", "error message")
end)

test("ResourceARN as StreamARN test: Invalid ARN: Kinesis ARNs only support stream arn types", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn:aws:kinesis:us-east-1:123:accesspoint/testStream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Kinesis ARNs don't support `accesspoint` arn types.", "error message")
end)

test("ResourceARN as StreamARN test: OperationType not set", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn:aws:kinesis:us-east-1:123456789012:stream/testStream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Operation Type is not set. Please contact service team for resolution.", "error message")
end)

test("ResourceARN as StreamARN test: Custom Endpoint is specified", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
        Endpoint = "https://example.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://example.com", "url")
end)

test("ResourceARN as StreamARN test: Account endpoint targeting control operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis.us-east-1.amazonaws.com", "url")
end)

test("ResourceARN as StreamARN test: Account endpoint targeting data operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis.us-east-1.amazonaws.com", "url")
end)

test("ResourceARN as StreamARN test: Account endpoint with fips targeting data operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "data",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis-fips.us-east-1.amazonaws.com", "url")
end)

test("ResourceARN as StreamARN test: Account endpoint with fips targeting control operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "control",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis-fips.us-east-1.amazonaws.com", "url")
end)

test("ResourceARN as StreamARN test: Account endpoint with Dual Stack and FIPS enabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = true,
        OperationType = "control",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis-fips.us-east-1.api.aws", "url")
end)

test("ResourceARN as StreamARN test: Account endpoint with Dual Stack enabled", function()
    local params = {
        Region = "us-west-1",
        UseFIPS = false,
        UseDualStack = true,
        OperationType = "data",
        ResourceARN = "arn:aws:kinesis:us-west-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis.us-west-1.api.aws", "url")
end)

test("ResourceARN as StreamARN test: Account endpoint with FIPS and DualStack disabled", function()
    local params = {
        Region = "us-west-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        ResourceARN = "arn:aws:kinesis:us-west-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis.us-west-1.amazonaws.com", "url")
end)

test("ResourceARN as StreamARN test: RegionMismatch: client region should be used for endpoint region", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        ResourceARN = "arn:aws:kinesis:us-west-1:123:stream/testStream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis.us-east-1.amazonaws.com", "url")
end)

test("ResourceARN as StreamARN test: Account endpoint with FIPS enabled", function()
    local params = {
        Region = "cn-northwest-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "data",
        ResourceARN = "arn:aws-cn:kinesis:cn-northwest-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis-fips.cn-northwest-1.amazonaws.com.cn", "url")
end)

test("ResourceARN as StreamARN test: Account endpoint with FIPS and DualStack enabled for cn regions.", function()
    local params = {
        Region = "cn-northwest-1",
        UseFIPS = true,
        UseDualStack = true,
        OperationType = "data",
        ResourceARN = "arn:aws-cn:kinesis:cn-northwest-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis-fips.cn-northwest-1.api.amazonwebservices.com.cn", "url")
end)

test("ResourceARN as StreamARN test: Account endpoint targeting control operation type in ADC regions", function()
    local params = {
        Region = "us-iso-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        ResourceARN = "arn:aws-iso:kinesis:us-iso-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-iso-east-1.c2s.ic.gov", "url")
end)

test("ResourceARN as StreamARN test: Account endpoint targeting control operation type in ADC regions", function()
    local params = {
        Region = "us-iso-west-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        ResourceARN = "arn:aws-iso:kinesis:us-iso-west-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-iso-west-1.c2s.ic.gov", "url")
end)

test("ResourceARN as StreamARN test: Account endpoint targeting data operation type in ADC regions", function()
    local params = {
        Region = "us-isob-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        ResourceARN = "arn:aws-iso-b:kinesis:us-isob-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-isob-east-1.sc2s.sgov.gov", "url")
end)

test("ResourceARN as StreamARN test: Account endpoint with fips targeting control operation type in ADC regions", function()
    local params = {
        Region = "us-iso-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "control",
        ResourceARN = "arn:aws-iso:kinesis:us-iso-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-fips.us-iso-east-1.c2s.ic.gov", "url")
end)

test("ResourceARN as StreamARN test: Account endpoint with fips targeting data operation type in ADC regions", function()
    local params = {
        Region = "us-isob-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "data",
        ResourceARN = "arn:aws-iso-b:kinesis:us-isob-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-fips.us-isob-east-1.sc2s.sgov.gov", "url")
end)

test("ResourceARN as ConsumerARN test: Invalid ARN: partition missing from ARN.", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn::kinesis:us-west-2:123456789012:stream/testStream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Failed to parse ARN.", "error message")
end)

test("ResourceARN as ConsumerARN test: Invalid ARN: partitions mismatch.", function()
    local params = {
        Region = "us-gov-west-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn:aws:kinesis:us-west-2:123456789012:stream/testStream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Partition: aws from ARN doesn't match with partition name: aws-us-gov.", "error message")
end)

test("ResourceARN as ConsumerARN test: Invalid ARN: Not Kinesis", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn:aws:s3:us-west-2:123456789012:stream/testStream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: The ARN was not for the Kinesis service, found: s3.", "error message")
end)

test("ResourceARN as ConsumerARN test: Invalid ARN: Region is missing in ARN", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn:aws:kinesis::123456789012:stream/testStream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Invalid region.", "error message")
end)

test("ResourceARN as ConsumerARN test: Invalid ARN: Region is empty string in ARN", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn:aws:kinesis:  :123456789012:stream/testStream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Invalid region.", "error message")
end)

test("ResourceARN as ConsumerARN test: Invalid ARN: Invalid account id", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn:aws:kinesis:us-east-1::stream/testStream/consumer/test-consumer:1525898737",
        OperationType = "control",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Invalid account id.", "error message")
end)

test("ResourceARN as ConsumerARN test: Invalid ARN: Invalid account id", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn:aws:kinesis:us-east-1:   :stream/testStream/consumer/test-consumer:1525898737",
        OperationType = "control",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Invalid account id.", "error message")
end)

test("ResourceARN as ConsumerARN test: Invalid ARN: Kinesis ARNs only support stream arn/consumer arn types", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn:aws:kinesis:us-east-1:123:accesspoint/testStream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Kinesis ARNs don't support `accesspoint` arn types.", "error message")
end)

test("ResourceARN as ConsumerARN test: OperationType not set", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        ResourceARN = "arn:aws:kinesis:us-east-1:123456789012:stream/testStream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Operation Type is not set. Please contact service team for resolution.", "error message")
end)

test("ResourceARN as ConsumerARN test: Custom Endpoint is specified", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
        Endpoint = "https://example.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://example.com", "url")
end)

test("ResourceARN as ConsumerARN test: Account endpoint targeting control operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis.us-east-1.amazonaws.com", "url")
end)

test("ResourceARN as ConsumerARN test: Account endpoint targeting data operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis.us-east-1.amazonaws.com", "url")
end)

test("ResourceARN as ConsumerARN test: Account endpoint with fips targeting data operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "data",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis-fips.us-east-1.amazonaws.com", "url")
end)

test("ResourceARN as ConsumerARN test: Account endpoint with fips targeting control operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "control",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis-fips.us-east-1.amazonaws.com", "url")
end)

test("ResourceARN as ConsumerARN test: Account endpoint with Dual Stack and FIPS enabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = true,
        OperationType = "control",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis-fips.us-east-1.api.aws", "url")
end)

test("ResourceARN as ConsumerARN test: Account endpoint with Dual Stack enabled", function()
    local params = {
        Region = "us-west-1",
        UseFIPS = false,
        UseDualStack = true,
        OperationType = "data",
        ResourceARN = "arn:aws:kinesis:us-west-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis.us-west-1.api.aws", "url")
end)

test("ResourceARN as ConsumerARN test: Account endpoint with FIPS and DualStack disabled", function()
    local params = {
        Region = "us-west-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        ResourceARN = "arn:aws:kinesis:us-west-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis.us-west-1.amazonaws.com", "url")
end)

test("ResourceARN as ConsumerARN test: RegionMismatch: client region should be used for endpoint region", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        ResourceARN = "arn:aws:kinesis:us-west-1:123:stream/testStream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis.us-east-1.amazonaws.com", "url")
end)

test("ResourceARN as ConsumerARN test: Account endpoint with FIPS enabled", function()
    local params = {
        Region = "cn-northwest-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "data",
        ResourceARN = "arn:aws-cn:kinesis:cn-northwest-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis-fips.cn-northwest-1.amazonaws.com.cn", "url")
end)

test("ResourceARN as ConsumerARN test: Account endpoint with FIPS and DualStack enabled for cn regions.", function()
    local params = {
        Region = "cn-northwest-1",
        UseFIPS = true,
        UseDualStack = true,
        OperationType = "data",
        ResourceARN = "arn:aws-cn:kinesis:cn-northwest-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis-fips.cn-northwest-1.api.amazonwebservices.com.cn", "url")
end)

test("ResourceARN as ConsumerARN test: Account endpoint targeting control operation type in ADC regions", function()
    local params = {
        Region = "us-iso-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        ResourceARN = "arn:aws-iso:kinesis:us-iso-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-iso-east-1.c2s.ic.gov", "url")
end)

test("ResourceARN as ConsumerARN test: Account endpoint targeting control operation type in ADC regions", function()
    local params = {
        Region = "us-iso-west-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        ResourceARN = "arn:aws-iso:kinesis:us-iso-west-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-iso-west-1.c2s.ic.gov", "url")
end)

test("ResourceARN as ConsumerARN test: Account endpoint targeting data operation type in ADC regions", function()
    local params = {
        Region = "us-isob-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        ResourceARN = "arn:aws-iso-b:kinesis:us-isob-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-isob-east-1.sc2s.sgov.gov", "url")
end)

test("ResourceARN as ConsumerARN test: Account endpoint with fips targeting control operation type in ADC regions", function()
    local params = {
        Region = "us-iso-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "control",
        ResourceARN = "arn:aws-iso:kinesis:us-iso-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-fips.us-iso-east-1.c2s.ic.gov", "url")
end)

test("ResourceARN as ConsumerARN test: Account endpoint with fips targeting data operation type in ADC regions", function()
    local params = {
        Region = "us-isob-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "data",
        ResourceARN = "arn:aws-iso-b:kinesis:us-isob-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-fips.us-isob-east-1.sc2s.sgov.gov", "url")
end)

test("StreamId test: OperationType not set with StreamId", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        StreamId = "af4lwng4k01746835071-xyz",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Operation Type is not set. Please contact service team for resolution.", "error message")
end)

test("StreamId test: Stream endpoint targeting control operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        StreamId = "af4lwng4k01746835071-xyz",
        StreamARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.control-kinesis.us-east-1.amazonaws.com", "url")
end)

test("StreamId test: Stream endpoint targeting data operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        StreamId = "af4lwng4k01746835071-xyz",
        StreamARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.data-kinesis.us-east-1.amazonaws.com", "url")
end)

test("StreamId test: Stream endpoint with fips targeting data operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "data",
        StreamId = "af4lwng4k01746835071-xyz",
        StreamARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.data-kinesis-fips.us-east-1.amazonaws.com", "url")
end)

test("StreamId test: Stream endpoint with fips targeting control operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "control",
        StreamId = "af4lwng4k01746835071-xyz",
        StreamARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.control-kinesis-fips.us-east-1.amazonaws.com", "url")
end)

test("StreamId test: Stream endpoint with Dual Stack and FIPS enabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = true,
        OperationType = "control",
        StreamId = "af4lwng4k01746835071-xyz",
        StreamARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.control-kinesis-fips.us-east-1.api.aws", "url")
end)

test("StreamId test: Stream endpoint with Dual Stack enabled", function()
    local params = {
        Region = "us-west-1",
        UseFIPS = false,
        UseDualStack = true,
        OperationType = "data",
        StreamId = "af4lwng4k01746835071-xyz",
        StreamARN = "arn:aws:kinesis:us-west-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.data-kinesis.us-west-1.api.aws", "url")
end)

test("StreamId test: Stream endpoint with FIPS and DualStack disabled", function()
    local params = {
        Region = "us-west-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        StreamId = "af4lwng4k01746835071-xyz",
        StreamARN = "arn:aws:kinesis:us-west-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.control-kinesis.us-west-1.amazonaws.com", "url")
end)

test("StreamId test: Stream endpoint FIPS and DualStack disabled with endpoint", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        StreamId = "af4lwng4k01746835071-xyz",
        Endpoint = "kinesis-pod1.us-east-1.amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.control-kinesis-pod1.us-east-1.amazonaws.com", "url")
end)

test("StreamId test: Stream endpoint targeting data operation type with endpoint", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        StreamId = "af4lwng4k01746835071-xyz",
        Endpoint = "kinesis-pod1.us-east-1.amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.data-kinesis-pod1.us-east-1.amazonaws.com", "url")
end)

test("StreamId test: Stream endpoint with fips targeting data operation type with endpoint", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "data",
        StreamId = "af4lwng4k01746835071-xyz",
        Endpoint = "kinesis-pod1.us-east-1.amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.data-kinesis-pod1-fips.us-east-1.amazonaws.com", "url")
end)

test("StreamId test: Stream endpoint with fips targeting control operation type with endpoint", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "control",
        StreamId = "af4lwng4k01746835071-xyz",
        Endpoint = "kinesis-pod1.us-east-1.amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.control-kinesis-pod1-fips.us-east-1.amazonaws.com", "url")
end)

test("StreamId test: Stream endpoint with Dual Stack and FIPS enabled with endpoint", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = true,
        OperationType = "control",
        StreamId = "af4lwng4k01746835071-xyz",
        Endpoint = "kinesis-pod1.us-east-1.amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.control-kinesis-pod1-fips.us-east-1.api.aws", "url")
end)

test("StreamId test: Stream endpoint with Dual Stack enabled with endpoint", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = true,
        OperationType = "data",
        StreamId = "af4lwng4k01746835071-xyz",
        Endpoint = "kinesis-pod1.us-east-1.amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.data-kinesis-pod1.us-east-1.api.aws", "url")
end)

test("StreamId test: Stream endpoint targeting data operation type with https endpoint", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        StreamId = "af4lwng4k01746835071-xyz",
        Endpoint = "https://kinesis-pod1.us-east-1.amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.data-kinesis-pod1.us-east-1.amazonaws.com", "url")
end)

test("StreamId test: HTTPS endpoint with FIPS enabled targeting control operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "control",
        StreamId = "af4lwng4k01746835071-xyz",
        Endpoint = "https://kinesis-pod1.us-east-1.amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.control-kinesis-pod1-fips.us-east-1.amazonaws.com", "url")
end)

test("StreamId test: HTTPS endpoint with FIPS enabled targeting data operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "data",
        StreamId = "af4lwng4k01746835071-xyz",
        Endpoint = "https://kinesis-pod1.us-east-1.amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.data-kinesis-pod1-fips.us-east-1.amazonaws.com", "url")
end)

test("StreamId test: HTTPS endpoint with DualStack enabled targeting control operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = true,
        OperationType = "control",
        StreamId = "af4lwng4k01746835071-xyz",
        Endpoint = "https://kinesis-pod1.us-east-1.amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.control-kinesis-pod1.us-east-1.api.aws", "url")
end)

test("StreamId test: HTTPS endpoint with DualStack enabled targeting data operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = true,
        OperationType = "data",
        StreamId = "af4lwng4k01746835071-xyz",
        Endpoint = "https://kinesis-pod1.us-east-1.amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.data-kinesis-pod1.us-east-1.api.aws", "url")
end)

test("StreamId test: HTTPS endpoint with FIPS and DualStack enabled targeting control operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = true,
        OperationType = "control",
        StreamId = "af4lwng4k01746835071-xyz",
        Endpoint = "https://kinesis-pod1.us-east-1.amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.control-kinesis-pod1-fips.us-east-1.api.aws", "url")
end)

test("StreamId test: HTTPS endpoint with FIPS and DualStack enabled targeting data operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = true,
        OperationType = "data",
        StreamId = "af4lwng4k01746835071-xyz",
        Endpoint = "https://kinesis-pod1.us-east-1.amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.data-kinesis-pod1-fips.us-east-1.api.aws", "url")
end)

test("StreamId test: HTTPS endpoint with FIPS enabled in different region", function()
    local params = {
        Region = "us-west-2",
        UseFIPS = true,
        UseDualStack = false,
        OperationType = "data",
        StreamId = "af4lwng4k01746835071-xyz",
        Endpoint = "https://kinesis-pod2.us-west-2.amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.data-kinesis-pod2-fips.us-west-2.amazonaws.com", "url")
end)

test("StreamId test: HTTPS endpoint with DualStack enabled in different region", function()
    local params = {
        Region = "us-west-2",
        UseFIPS = false,
        UseDualStack = true,
        OperationType = "control",
        StreamId = "af4lwng4k01746835071-xyz",
        Endpoint = "https://kinesis-pod2.us-west-2.amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.control-kinesis-pod2.us-west-2.api.aws", "url")
end)

test("StreamId test: Stream endpoint with ConsumerARN targeting control operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        StreamId = "af4lwng4k01746835071-xyz",
        ConsumerARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.control-kinesis.us-east-1.amazonaws.com", "url")
end)

test("StreamId test: Stream endpoint with ConsumerARN targeting data operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        StreamId = "af4lwng4k01746835071-xyz",
        ConsumerARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream/consumer/test-consumer:1525898737",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.data-kinesis.us-east-1.amazonaws.com", "url")
end)

test("StreamId test: Stream endpoint with ResourceARN targeting control operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        StreamId = "af4lwng4k01746835071-xyz",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.control-kinesis.us-east-1.amazonaws.com", "url")
end)

test("StreamId test: Stream endpoint with ResourceARN targeting data operation type", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        StreamId = "af4lwng4k01746835071-xyz",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://af4lwng4k01746835071.xyz.data-kinesis.us-east-1.amazonaws.com", "url")
end)

test("StreamId test: Invalid StreamId with ARN", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "data",
        StreamId = "af4lwng4k01746835071=xyz",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.data-kinesis.us-east-1.amazonaws.com", "url")
end)

test("StreamId test: Invalid streamId with custom endpoint", function()
    local params = {
        Region = "us-west-2",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        StreamId = "af4lwng4k01746835071=xyz",
        Endpoint = "https://kinesis-pod2.us-west-2.amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-pod2.us-west-2.amazonaws.com", "url")
end)

test("StreamId test: Invalid streamId", function()
    local params = {
        Region = "us-west-2",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        StreamId = "af4lwng4k01746835071=xyz",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis.us-west-2.amazonaws.com", "url")
end)

test("StreamId test: Invalid streamId with custom endpoint and ARN", function()
    local params = {
        Region = "us-west-2",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        StreamId = "af4lwng4k01746835071=xyz",
        Endpoint = "https://kinesis-pod2.us-west-2.amazonaws.com",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://kinesis-pod2.us-west-2.amazonaws.com", "url")
end)

test("StreamId test: Invalid streamId with longer prefix", function()
    local params = {
        Region = "us-west-2",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        StreamId = "af4lwng4k0174683507123-xyz",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis.us-west-2.amazonaws.com", "url")
end)

test("StreamId test: Invalid streamId with shorter prefix", function()
    local params = {
        Region = "us-west-2",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        StreamId = "af4lwng4k01746835-xyz",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis.us-west-2.amazonaws.com", "url")
end)

test("StreamId test: Invalid streamId with longer suffix", function()
    local params = {
        Region = "us-west-2",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        StreamId = "af4lwng4k01746835071-wxyz",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis.us-west-2.amazonaws.com", "url")
end)

test("StreamId test: Invalid streamId with shorter suffix", function()
    local params = {
        Region = "us-west-2",
        UseFIPS = false,
        UseDualStack = false,
        OperationType = "control",
        StreamId = "af4lwng4k01746835071-yz",
        ResourceARN = "arn:aws:kinesis:us-east-1:123:stream/test-stream",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123.control-kinesis.us-west-2.amazonaws.com", "url")
end)

print(string.format("\n%d passed, %d failed", pass_count, fail_count))
if fail_count > 0 then os.exit(1) end
