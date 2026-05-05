-- Generated endpoint ruleset tests — do not edit

package.path = "runtime/?.lua;runtime/?/init.lua;" .. package.path

local endpoint = require("smithy.endpoint")
local ruleset = require("arcregionswitch.endpoint_rules")

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

test("For region us-east-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://arc-region-switch-fips.us-east-1.api.aws", "url")
end)

test("For region us-east-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://arc-region-switch.us-east-1.api.aws", "url")
end)

test("For region cn-northwest-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "cn-northwest-1",
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://arc-region-switch-fips.cn-northwest-1.api.amazonwebservices.com.cn", "url")
end)

test("For region cn-northwest-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "cn-northwest-1",
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://arc-region-switch.cn-northwest-1.api.amazonwebservices.com.cn", "url")
end)

test("For region us-gov-west-1 with FIPS enabled and DualStack enabled", function()
    local params = {
        Region = "us-gov-west-1",
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://arc-region-switch-fips.us-gov-west-1.api.aws", "url")
end)

test("For region us-gov-west-1 with FIPS disabled and DualStack enabled", function()
    local params = {
        Region = "us-gov-west-1",
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://arc-region-switch.us-gov-west-1.api.aws", "url")
end)

test("Missing region", function()
    local params = {}
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: Missing Region", "error message")
end)

test("Control plane operation with DualStack in us-west-2 routes to us-east-1 DualStack endpoint", function()
    local params = {
        Region = "us-west-2",
        UseControlPlaneEndpoint = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://arc-region-switch-control-plane.us-east-1.api.aws", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingRegion = "us-east-1",
        signingName = "arc-region-switch",
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

test("Control plane operation with endpoint set in us-east-1 routes to provided endpoint", function()
    local params = {
        Region = "us-east-1",
        UseControlPlaneEndpoint = true,
        Endpoint = "https://amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://amazonaws.com", "url")
end)

test("Control plane operation with endpoint set in us-west-2 routes to provided endpoint", function()
    local params = {
        Region = "us-west-2",
        UseControlPlaneEndpoint = true,
        Endpoint = "https://amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://amazonaws.com", "url")
end)

test("Control plane operation in us-west-2 (standard partition) routes to us-east-1", function()
    local params = {
        Region = "us-west-2",
        UseControlPlaneEndpoint = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://arc-region-switch-control-plane.us-east-1.api.aws", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingRegion = "us-east-1",
        signingName = "arc-region-switch",
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

test("Control plane operation in cn-north-1 (China partition) routes to cn-north-1 with China DNS suffix", function()
    local params = {
        Region = "cn-north-1",
        UseControlPlaneEndpoint = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://arc-region-switch-control-plane.cn-north-1.api.amazonwebservices.com.cn", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingRegion = "cn-north-1",
        signingName = "arc-region-switch",
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

test("Control plane operation in cn-northwest-1 (China partition) routes to cn-north-1 with China DNS suffix", function()
    local params = {
        Region = "cn-northwest-1",
        UseControlPlaneEndpoint = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://arc-region-switch-control-plane.cn-north-1.api.amazonwebservices.com.cn", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingRegion = "cn-north-1",
        signingName = "arc-region-switch",
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

test("Control plane operation in us-gov-west-1 (GovCloud partition) routes to us-gov-west-1 with GovCloud DNS suffix", function()
    local params = {
        Region = "us-gov-west-1",
        UseControlPlaneEndpoint = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://arc-region-switch-control-plane.us-gov-west-1.api.aws", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingRegion = "us-gov-west-1",
        signingName = "arc-region-switch",
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

test("Control plane operation in us-gov-east-1 (GovCloud partition) routes to us-gov-west-1 with GovCloud DNS suffix", function()
    local params = {
        Region = "us-gov-east-1",
        UseControlPlaneEndpoint = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://arc-region-switch-control-plane.us-gov-west-1.api.aws", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingRegion = "us-gov-west-1",
        signingName = "arc-region-switch",
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

test("Control plane operation with FIPS in us-west-2 routes to us-east-1 FIPS endpoint", function()
    local params = {
        Region = "us-west-2",
        UseControlPlaneEndpoint = true,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://arc-region-switch-control-plane-fips.us-east-1.api.aws", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingRegion = "us-east-1",
        signingName = "arc-region-switch",
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

test("Control plane operation with FIPS in us-east-1 routes to us-east-1 FIPS endpoint", function()
    local params = {
        Region = "us-east-1",
        UseControlPlaneEndpoint = true,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://arc-region-switch-control-plane-fips.us-east-1.api.aws", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingRegion = "us-east-1",
        signingName = "arc-region-switch",
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

test("Control plane operation with FIPS in CN returns an error", function()
    local params = {
        Region = "cn-north-1",
        UseControlPlaneEndpoint = true,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: FIPS is not supported in this partition", "error message")
end)

test("Control plane operation with endpoint set using FIPS in us-east-1 errors", function()
    local params = {
        Region = "us-east-1",
        UseControlPlaneEndpoint = true,
        UseFIPS = true,
        Endpoint = "https://amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: FIPS and custom endpoint are not supported", "error message")
end)

test("Control plane operation with endpoint set using FIPS in us-west-2 routes to provided endpoint", function()
    local params = {
        Region = "us-west-2",
        UseControlPlaneEndpoint = true,
        UseFIPS = true,
        Endpoint = "https://amazonaws.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: FIPS and custom endpoint are not supported", "error message")
end)

print(string.format("\n%d passed, %d failed", pass_count, fail_count))
if fail_count > 0 then os.exit(1) end
