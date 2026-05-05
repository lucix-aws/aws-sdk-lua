-- Generated endpoint ruleset tests — do not edit

package.path = "runtime/?.lua;runtime/?/init.lua;" .. package.path

local endpoint = require("smithy.endpoint")
local ruleset = require("eventbridge.endpoint_rules")

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
    assert_eq(result.url, "https://events.af-south-1.amazonaws.com", "url")
end)

test("For region ap-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.ap-east-1.amazonaws.com", "url")
end)

test("For region ap-northeast-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-northeast-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.ap-northeast-1.amazonaws.com", "url")
end)

test("For region ap-northeast-2 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-northeast-2",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.ap-northeast-2.amazonaws.com", "url")
end)

test("For region ap-northeast-3 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-northeast-3",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.ap-northeast-3.amazonaws.com", "url")
end)

test("For region ap-south-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-south-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.ap-south-1.amazonaws.com", "url")
end)

test("For region ap-southeast-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-southeast-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.ap-southeast-1.amazonaws.com", "url")
end)

test("For region ap-southeast-2 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-southeast-2",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.ap-southeast-2.amazonaws.com", "url")
end)

test("For region ap-southeast-3 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ap-southeast-3",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.ap-southeast-3.amazonaws.com", "url")
end)

test("For region ca-central-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "ca-central-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.ca-central-1.amazonaws.com", "url")
end)

test("For region eu-central-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eu-central-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.eu-central-1.amazonaws.com", "url")
end)

test("For region eu-north-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eu-north-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.eu-north-1.amazonaws.com", "url")
end)

test("For region eu-south-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eu-south-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.eu-south-1.amazonaws.com", "url")
end)

test("For region eu-west-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eu-west-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.eu-west-1.amazonaws.com", "url")
end)

test("For region eu-west-2 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eu-west-2",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.eu-west-2.amazonaws.com", "url")
end)

test("For region eu-west-3 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "eu-west-3",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.eu-west-3.amazonaws.com", "url")
end)

test("For region me-south-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "me-south-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.me-south-1.amazonaws.com", "url")
end)

test("For region sa-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "sa-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.sa-east-1.amazonaws.com", "url")
end)

test("For region us-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-east-1.amazonaws.com", "url")
end)

test("For region us-east-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events-fips.us-east-1.amazonaws.com", "url")
end)

test("For region us-east-2 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-east-2",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-east-2.amazonaws.com", "url")
end)

test("For region us-east-2 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-east-2",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events-fips.us-east-2.amazonaws.com", "url")
end)

test("For region us-west-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-west-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-west-1.amazonaws.com", "url")
end)

test("For region us-west-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-west-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events-fips.us-west-1.amazonaws.com", "url")
end)

test("For region us-west-2 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-west-2",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-west-2.amazonaws.com", "url")
end)

test("For region us-west-2 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-west-2",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events-fips.us-west-2.amazonaws.com", "url")
end)

test("For region us-east-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events-fips.us-east-1.api.aws", "url")
end)

test("For region us-east-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-east-1.api.aws", "url")
end)

test("For region cn-north-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "cn-north-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.cn-north-1.amazonaws.com.cn", "url")
end)

test("For region cn-northwest-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "cn-northwest-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.cn-northwest-1.amazonaws.com.cn", "url")
end)

test("For region cn-north-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "cn-north-1",
        UseFIPS = true,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events-fips.cn-north-1.api.amazonwebservices.com.cn", "url")
end)

test("For region cn-north-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "cn-north-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events-fips.cn-north-1.amazonaws.com.cn", "url")
end)

test("For region cn-north-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "cn-north-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.cn-north-1.api.amazonwebservices.com.cn", "url")
end)

test("For region us-gov-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-gov-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-gov-east-1.amazonaws.com", "url")
end)

test("For region us-gov-west-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-gov-west-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-gov-west-1.amazonaws.com", "url")
end)

test("For region us-gov-east-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "us-gov-east-1",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-gov-east-1.api.aws", "url")
end)

test("For region us-iso-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-iso-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-iso-east-1.c2s.ic.gov", "url")
end)

test("For region us-iso-west-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-iso-west-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-iso-west-1.c2s.ic.gov", "url")
end)

test("For region us-iso-east-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-iso-east-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events-fips.us-iso-east-1.c2s.ic.gov", "url")
end)

test("For region us-isob-east-1 with FIPS disabled and DualStack disabled", function()
    local params = {
        Region = "us-isob-east-1",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-isob-east-1.sc2s.sgov.gov", "url")
end)

test("For region us-isob-east-1 with FIPS enabled and DualStack disabled", function()
    local params = {
        Region = "us-isob-east-1",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events-fips.us-isob-east-1.sc2s.sgov.gov", "url")
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

test("Valid endpointId with fips disabled and dualstack disabled", function()
    local params = {
        EndpointId = "abc123.456def",
        UseDualStack = false,
        UseFIPS = false,
        Region = "us-east-1",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://abc123.456def.endpoint.events.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        signingName = "events",
        name = "sigv4a",
        signingRegionSet = {
        "*",
    },
    },
    },
    }
    local function deep_eq(a, b)
        if type(a) ~= type(b) then return false end
        if type(a) ~= "table" then return a == b end
        for k, v in pairs(a) do if not deep_eq(v, b[k]) then return false end end
        for k, _ in pairs(b) do if a[k] == nil then return false end end
        return true
    end
    assert(deep_eq(result.properties, expected_props), "properties mismatch")
end)

test("Valid EndpointId with dualstack disabled and fips enabled", function()
    local params = {
        EndpointId = "abc123.456def",
        UseDualStack = false,
        UseFIPS = true,
        Region = "us-east-1",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: FIPS is not supported with EventBridge multi-region endpoints.", "error message")
end)

test("Valid EndpointId with dualstack enabled and fips enabled", function()
    local params = {
        EndpointId = "abc123.456def",
        UseDualStack = true,
        UseFIPS = true,
        Region = "us-east-1",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: FIPS is not supported with EventBridge multi-region endpoints.", "error message")
end)

test("Invalid EndpointId", function()
    local params = {
        EndpointId = "badactor.com?foo=bar",
        UseDualStack = false,
        UseFIPS = false,
        Region = "us-east-1",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "EndpointId must be a valid host label.", "error message")
end)

test("Invalid EndpointId (empty)", function()
    local params = {
        EndpointId = "",
        UseDualStack = false,
        UseFIPS = false,
        Region = "us-east-1",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "EndpointId must be a valid host label.", "error message")
end)

test("Valid endpointId with fips disabled and dualstack true", function()
    local params = {
        EndpointId = "abc123.456def",
        UseDualStack = true,
        UseFIPS = false,
        Region = "us-east-1",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://abc123.456def.endpoint.events.api.aws", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        signingName = "events",
        name = "sigv4a",
        signingRegionSet = {
        "*",
    },
    },
    },
    }
    local function deep_eq(a, b)
        if type(a) ~= type(b) then return false end
        if type(a) ~= "table" then return a == b end
        for k, v in pairs(a) do if not deep_eq(v, b[k]) then return false end end
        for k, _ in pairs(b) do if a[k] == nil then return false end end
        return true
    end
    assert(deep_eq(result.properties, expected_props), "properties mismatch")
end)

test("Valid endpointId with custom sdk endpoint", function()
    local params = {
        EndpointId = "abc123.456def",
        UseDualStack = true,
        UseFIPS = false,
        Region = "us-east-1",
        Endpoint = "https://example.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://example.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        signingName = "events",
        name = "sigv4a",
        signingRegionSet = {
        "*",
    },
    },
    },
    }
    local function deep_eq(a, b)
        if type(a) ~= type(b) then return false end
        if type(a) ~= "table" then return a == b end
        for k, v in pairs(a) do if not deep_eq(v, b[k]) then return false end end
        for k, _ in pairs(b) do if a[k] == nil then return false end end
        return true
    end
    assert(deep_eq(result.properties, expected_props), "properties mismatch")
end)

test("legacy fips endpoint @ us-gov-east-1", function()
    local params = {
        Region = "us-gov-east-1",
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-gov-east-1.amazonaws.com", "url")
end)

test("legacy non-fips endpoint @ us-gov-east-1", function()
    local params = {
        Region = "us-gov-east-1",
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-gov-east-1.amazonaws.com", "url")
end)

test("Dualstack fips endpoint @ us-gov-east-1", function()
    local params = {
        Region = "us-gov-east-1",
        UseDualStack = true,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-gov-east-1.api.aws", "url")
end)

test("Dualstack non-fips endpoint @ us-gov-east-1", function()
    local params = {
        Region = "us-gov-east-1",
        UseDualStack = true,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-gov-east-1.api.aws", "url")
end)

test("legacy fips endpoint @ us-gov-west-1", function()
    local params = {
        Region = "us-gov-west-1",
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-gov-west-1.amazonaws.com", "url")
end)

test("legacy non-fips endpoint @ us-gov-west-1", function()
    local params = {
        Region = "us-gov-west-1",
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-gov-west-1.amazonaws.com", "url")
end)

test("Dualstack fips endpoint @ us-gov-west-1", function()
    local params = {
        Region = "us-gov-west-1",
        UseDualStack = true,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-gov-west-1.api.aws", "url")
end)

test("Dualstack non-fips endpoint @ us-gov-west-1", function()
    local params = {
        Region = "us-gov-west-1",
        UseDualStack = true,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://events.us-gov-west-1.api.aws", "url")
end)

print(string.format("\n%d passed, %d failed", pass_count, fail_count))
if fail_count > 0 then os.exit(1) end
