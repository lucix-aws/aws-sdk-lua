-- Generated endpoint ruleset tests — do not edit

package.path = "runtime/?.lua;runtime/?/init.lua;" .. package.path

local endpoint = require("endpoint")
local ruleset = require("s3control.endpoint_rules")

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

test("Vanilla outposts without ARN region + access point ARN@us-west-2", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-west-2.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-west-2",
        disableDoubleEncoding = true,
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

test("Vanilla outposts with ARN region + access point ARN@us-west-2", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-east-1.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("accept an access point ARN@us-west-2", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-west-2.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-west-2",
        disableDoubleEncoding = true,
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

test("vanilla outposts china@cn-north-1", function()
    local params = {
        AccessPointName = "arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "cn-north-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.cn-north-1.amazonaws.com.cn", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "cn-north-1",
        disableDoubleEncoding = true,
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

test("gov region@us-west-2", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-west-2.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-west-2",
        disableDoubleEncoding = true,
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

test("gov cloud with fips@us-west-2", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts-fips.us-west-2.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-west-2",
        disableDoubleEncoding = true,
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

test("govcloud with fips + arn region@us-gov-west-1", function()
    local params = {
        AccessPointName = "arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "us-gov-west-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts-fips.us-gov-east-1.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-gov-east-1",
        disableDoubleEncoding = true,
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

test("gov region@cn-north-1", function()
    local params = {
        AccessPointName = "arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "cn-north-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.cn-north-1.amazonaws.com.cn", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "cn-north-1",
        disableDoubleEncoding = true,
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

test("gov cloud with fips@cn-north-1", function()
    local params = {
        AccessPointName = "arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "cn-north-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Partition does not support FIPS", "error message")
end)

test("govcloud with fips + arn region@us-gov-west-1", function()
    local params = {
        AccessPointName = "arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "us-gov-west-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts-fips.us-gov-east-1.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-gov-east-1",
        disableDoubleEncoding = true,
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

test("gov region@af-south-1", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:af-south-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "af-south-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.af-south-1.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "af-south-1",
        disableDoubleEncoding = true,
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

test("gov cloud with fips@af-south-1", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:af-south-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "af-south-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts-fips.af-south-1.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "af-south-1",
        disableDoubleEncoding = true,
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

test("govcloud with fips + arn region@us-gov-west-1", function()
    local params = {
        AccessPointName = "arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "us-gov-west-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts-fips.us-gov-east-1.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-gov-east-1",
        disableDoubleEncoding = true,
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

test("CreateBucket + OutpostId = outposts endpoint@us-east-2", function()
    local params = {
        Bucket = "blah",
        OutpostId = "123",
        Region = "us-east-2",
        RequiresAccountId = false,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-east-2.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-east-2",
        disableDoubleEncoding = true,
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

test("CreateBucket + OutpostId with fips = outposts endpoint@us-east-2", function()
    local params = {
        Bucket = "blah",
        OutpostId = "123",
        Region = "us-east-2",
        RequiresAccountId = false,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts-fips.us-east-2.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-east-2",
        disableDoubleEncoding = true,
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

test("CreateBucket without OutpostId = regular endpoint@us-east-2", function()
    local params = {
        Bucket = "blah",
        Region = "us-east-2",
        RequiresAccountId = false,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-control.us-east-2.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-east-2",
        disableDoubleEncoding = true,
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

test("ListRegionalBuckets + OutpostId = outposts endpoint@us-east-2", function()
    local params = {
        AccountId = "123456789012",
        OutpostId = "op-123",
        Region = "us-east-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-east-2.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-east-2",
        disableDoubleEncoding = true,
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

test("ListRegionalBuckets without OutpostId = regular endpoint@us-east-2", function()
    local params = {
        AccountId = "123456789012",
        Region = "us-east-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123456789012.s3-control.us-east-2.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-east-2",
        disableDoubleEncoding = true,
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

test("ListRegionalBucket + OutpostId with fips = outposts endpoint@us-east-2", function()
    local params = {
        AccountId = "123456789012",
        OutpostId = "op-123",
        Region = "us-east-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts-fips.us-east-2.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-east-2",
        disableDoubleEncoding = true,
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

test("outpost access points support dualstack@us-west-2", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = true,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-west-2.api.aws", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-west-2",
        disableDoubleEncoding = true,
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

test("outpost access points support dualstack@af-south-1", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:af-south-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "af-south-1",
        RequiresAccountId = true,
        UseDualStack = true,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.af-south-1.api.aws", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "af-south-1",
        disableDoubleEncoding = true,
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

test("outpost access points support fips + dualstack@af-south-1", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:af-south-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "af-south-1",
        RequiresAccountId = true,
        UseDualStack = true,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts-fips.af-south-1.api.aws", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "af-south-1",
        disableDoubleEncoding = true,
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

test("invalid ARN: must be include outpost ID@us-west-2", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-west-2:123456789012:outpost",
        AccountId = "123456789012",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: The Outpost Id was not set", "error message")
end)

test("invalid ARN: must specify access point@us-west-2", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Expected a 4-component resource", "error message")
end)

test("invalid ARN@us-west-2", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:myaccesspoint",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Expected a 4-component resource", "error message")
end)

test("when set, AccountId drives AP construction@us-west-2", function()
    local params = {
        AccessPointName = "myaccesspoint",
        AccountId = "myid-1234",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://myid-1234.s3-control.us-west-2.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-west-2",
        disableDoubleEncoding = true,
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

test("Account ID set inline and in ARN but they both match@us-west-2", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseArnRegion = false,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-west-2.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-west-2",
        disableDoubleEncoding = true,
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

test("Account ID set inline and in ARN and they do not match@us-west-2", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "999999999999",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseArnRegion = false,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: the accountId specified in the ARN (`123456789012`) does not match the parameter (`999999999999`)", "error message")
end)

test("get access point prefixed with account id using endpoint url@us-west-2", function()
    local params = {
        AccessPointName = "apname",
        AccountId = "123456789012",
        Endpoint = "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123456789012.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-west-2",
        disableDoubleEncoding = true,
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

test("endpoint url with s3-outposts@us-west-2", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Endpoint = "https://beta.example.com",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://beta.example.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-west-2",
        disableDoubleEncoding = true,
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

test("access point name with a bucket arn@us-west-2", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Endpoint = "beta.example.com",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Expected an outpost type `accesspoint`, found `bucket`", "error message")
end)

test("bucket arn with access point name@us-west-2", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        Endpoint = "beta.example.com",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Expected an outpost type `bucket`, found `accesspoint`", "error message")
end)

test("create bucket with outposts@us-west-2", function()
    local params = {
        Bucket = "bucketname",
        Endpoint = "https://beta.example.com",
        OutpostId = "op-123",
        Region = "us-west-2",
        RequiresAccountId = false,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://beta.example.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-west-2",
        disableDoubleEncoding = true,
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

test("get bucket with endpoint_url@us-west-2", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Endpoint = "https://beta.example.com",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://beta.example.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-west-2",
        disableDoubleEncoding = true,
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

test("ListRegionalBucket + OutpostId endpoint url@us-east-2", function()
    local params = {
        AccountId = "123456789012",
        Endpoint = "https://beta.example.com",
        OutpostId = "op-123",
        Region = "us-east-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://beta.example.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-east-2",
        disableDoubleEncoding = true,
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

test("ListRegionalBucket + OutpostId + fips + endpoint url@us-east-2", function()
    local params = {
        AccountId = "123456789012",
        Endpoint = "https://beta.example.com",
        OutpostId = "op-123",
        Region = "us-east-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://beta.example.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-east-2",
        disableDoubleEncoding = true,
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

test("ListRegionalBucket + OutpostId + fips + dualstack@us-east-2", function()
    local params = {
        AccountId = "123456789012",
        OutpostId = "op-123",
        Region = "us-east-2",
        RequiresAccountId = true,
        UseDualStack = true,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts-fips.us-east-2.api.aws", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-east-2",
        disableDoubleEncoding = true,
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

test("CreateBucket + OutpostId endpoint url@us-east-2", function()
    local params = {
        Bucket = "blah",
        Endpoint = "https://beta.example.com",
        OutpostId = "123",
        Region = "us-east-2",
        RequiresAccountId = false,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://beta.example.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-east-2",
        disableDoubleEncoding = true,
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

test("dualstack cannot be used with outposts when an endpoint URL is set@us-west-2.", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        Endpoint = "https://s3-outposts.us-west-2.api.aws",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = true,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: DualStack and custom endpoint are not supported", "error message")
end)

test("vanilla bucket arn requires account id@us-west-2", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-west-2.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-west-2",
        disableDoubleEncoding = true,
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

test("bucket arn with UseArnRegion = true (arn region supercedes client configured region)@us-west-2", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-east-1.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("bucket ARN in gov partition (non-fips)@us-gov-east-1", function()
    local params = {
        Bucket = "arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-gov-east-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-gov-east-1.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-gov-east-1",
        disableDoubleEncoding = true,
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

test("bucket ARN in gov partition with FIPS@us-gov-west-1", function()
    local params = {
        Bucket = "arn:aws-us-gov:s3-outposts:us-gov-west-1:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-gov-west-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts-fips.us-gov-west-1.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-gov-west-1",
        disableDoubleEncoding = true,
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

test("bucket ARN in aws partition with FIPS@us-east-2", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-east-2:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-east-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts-fips.us-east-2.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-east-2",
        disableDoubleEncoding = true,
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

test("bucket ARN in aws partition with fips + dualstack@us-east-2", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-east-2:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-east-2",
        RequiresAccountId = true,
        UseDualStack = true,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts-fips.us-east-2.api.aws", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-east-2",
        disableDoubleEncoding = true,
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

test("vanilla bucket arn requires account id@cn-north-1", function()
    local params = {
        Bucket = "arn:aws-cn:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "cn-north-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.cn-north-1.amazonaws.com.cn", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "cn-north-1",
        disableDoubleEncoding = true,
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

test("bucket arn with UseArnRegion = true (arn region supercedes client configured region)@us-west-2", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-east-1.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("bucket ARN in gov partition (non-fips)@us-gov-east-1", function()
    local params = {
        Bucket = "arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-gov-east-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-gov-east-1.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-gov-east-1",
        disableDoubleEncoding = true,
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

test("bucket ARN in gov partition with FIPS@us-gov-west-1", function()
    local params = {
        Bucket = "arn:aws-us-gov:s3-outposts:us-gov-west-1:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-gov-west-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts-fips.us-gov-west-1.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-gov-west-1",
        disableDoubleEncoding = true,
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

test("bucket ARN in aws partition with FIPS@us-east-2", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-east-2:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-east-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts-fips.us-east-2.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-east-2",
        disableDoubleEncoding = true,
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

test("Outposts support dualstack @us-west-2", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = true,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-west-2.api.aws", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-west-2",
        disableDoubleEncoding = true,
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

test("vanilla bucket arn requires account id@af-south-1", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:af-south-1:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "af-south-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.af-south-1.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "af-south-1",
        disableDoubleEncoding = true,
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

test("bucket arn with UseArnRegion = true (arn region supercedes client configured region)@us-west-2", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-east-1.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("bucket ARN in gov partition (non-fips)@us-gov-east-1", function()
    local params = {
        Bucket = "arn:aws-us-gov:s3-outposts:us-gov-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-gov-east-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-gov-east-1.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-gov-east-1",
        disableDoubleEncoding = true,
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

test("bucket ARN in gov partition with FIPS@us-gov-west-1", function()
    local params = {
        Bucket = "arn:aws-us-gov:s3-outposts:us-gov-west-1:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-gov-west-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts-fips.us-gov-west-1.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-gov-west-1",
        disableDoubleEncoding = true,
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

test("bucket ARN in aws partition with FIPS@us-east-2", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-east-2:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-east-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts-fips.us-east-2.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-east-2",
        disableDoubleEncoding = true,
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

test("Invalid ARN: missing outpost id and bucket@us-west-2", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-west-2:123456789012:outpost",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: The Outpost Id was not set", "error message")
end)

test("Invalid ARN: missing bucket@us-west-2", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Expected a 4-component resource", "error message")
end)

test("Invalid ARN: missing outpost and bucket ids@us-west-2", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:bucket",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: Expected a 4-component resource", "error message")
end)

test("Invalid ARN: missing bucket id@us-west-2", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: expected a bucket name", "error message")
end)

test("account id inserted into hostname@us-west-2", function()
    local params = {
        AccountId = "1234567890",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://1234567890.s3-control.us-west-2.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-west-2",
        disableDoubleEncoding = true,
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

test("account id prefix with dualstack@us-east-1", function()
    local params = {
        AccountId = "1234567890",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = true,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://1234567890.s3-control.dualstack.us-east-1.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("account id prefix with fips@us-east-1", function()
    local params = {
        AccountId = "1234567890",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://1234567890.s3-control-fips.us-east-1.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("custom account id prefix with fips@us-east-1", function()
    local params = {
        AccountId = "123456789012",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123456789012.s3-control-fips.us-east-1.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("standard url @ us-east-1", function()
    local params = {
        Region = "us-east-1",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-control.us-east-1.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("fips url @ us-east-1", function()
    local params = {
        Region = "us-east-1",
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-control-fips.us-east-1.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("dualstack url @ us-east-1", function()
    local params = {
        Region = "us-east-1",
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-control.dualstack.us-east-1.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("fips,dualstack url @ us-east-1", function()
    local params = {
        Region = "us-east-1",
        UseDualStack = true,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-control-fips.dualstack.us-east-1.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("standard url @ cn-north-1", function()
    local params = {
        Region = "cn-north-1",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-control.cn-north-1.amazonaws.com.cn", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "cn-north-1",
        disableDoubleEncoding = true,
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

test("fips @ cn-north-1", function()
    local params = {
        Region = "cn-north-1",
        UseDualStack = true,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Partition does not support FIPS", "error message")
end)

test("custom account id prefix @us-east-1", function()
    local params = {
        AccountId = "123456789012",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123456789012.s3-control.us-east-1.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("invalid account id prefix @us-east-1", function()
    local params = {
        AccountId = "/?invalid&not-host*label",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "AccountId must only contain a-z, A-Z, 0-9 and `-`.", "error message")
end)

test("custom account id prefix with fips@us-east-1", function()
    local params = {
        AccountId = "123456789012",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123456789012.s3-control-fips.us-east-1.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("custom account id prefix with dualstack,fips@us-east-1", function()
    local params = {
        AccountId = "123456789012",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = true,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123456789012.s3-control-fips.dualstack.us-east-1.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("custom account id with custom endpoint", function()
    local params = {
        AccountId = "123456789012",
        Region = "us-east-1",
        RequiresAccountId = true,
        Endpoint = "https://example.com",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123456789012.example.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("RequiresAccountId with AccountId unset", function()
    local params = {
        Region = "us-east-1",
        RequiresAccountId = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "AccountId is required but not set", "error message")
end)

test("RequiresAccountId with AccountId unset and custom endpoint", function()
    local params = {
        Region = "us-east-1",
        Endpoint = "https://beta.example.com",
        RequiresAccountId = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "AccountId is required but not set", "error message")
end)

test("RequiresAccountId with invalid AccountId and custom endpoint", function()
    local params = {
        Region = "us-east-1",
        Endpoint = "https://beta.example.com",
        AccountId = "/?invalid&not-host*label",
        RequiresAccountId = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "AccountId must only contain a-z, A-Z, 0-9 and `-`.", "error message")
end)

test("account id with custom endpoint, fips", function()
    local params = {
        AccountId = "123456789012",
        Region = "us-east-1",
        RequiresAccountId = true,
        Endpoint = "https://example.com",
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123456789012.example.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("custom endpoint, fips", function()
    local params = {
        Region = "us-east-1",
        Endpoint = "https://example.com",
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://example.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("custom endpoint, fips", function()
    local params = {
        Region = "us-east-1",
        Endpoint = "https://example.com",
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://example.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("custom endpoint, DualStack", function()
    local params = {
        Region = "us-east-1",
        Endpoint = "https://example.com",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: DualStack and custom endpoint are not supported", "error message")
end)

test("region not set", function()
    local params = {}
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Region must be set", "error message")
end)

test("invalid partition", function()
    local params = {
        Region = "invalid-region 42",
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid region: region was not a valid DNS name.", "error message")
end)

test("ListRegionalBuckets + OutpostId without accountId set.", function()
    local params = {
        OutpostId = "op-123",
        Region = "us-east-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "AccountId is required but not set", "error message")
end)

test("ListRegionalBuckets + OutpostId with invalid accountId set.", function()
    local params = {
        AccountId = "/?invalid&not-host*label",
        OutpostId = "op-123",
        Region = "us-east-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "AccountId must only contain a-z, A-Z, 0-9 and `-`.", "error message")
end)

test("accesspoint set but missing accountId", function()
    local params = {
        AccessPointName = "myaccesspoint",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "AccountId is required but not set", "error message")
end)

test("outpost accesspoint ARN with missing accountId", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-west-2::outpost:op-01234567890123456:outpost:op1",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: missing account ID", "error message")
end)

test("bucket ARN with missing accountId", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-west-2::outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: missing account ID", "error message")
end)

test("endpoint url with accesspoint (non-arn)", function()
    local params = {
        AccessPointName = "apname",
        Endpoint = "https://beta.example.com",
        AccountId = "123456789012",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://123456789012.beta.example.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "us-west-2",
        disableDoubleEncoding = true,
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

test("access point name with an accesspoint arn@us-west-2", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        Endpoint = "https://beta.example.com",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://beta.example.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-west-2",
        disableDoubleEncoding = true,
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

test("DualStack + Custom endpoint is not supported(non-arn)", function()
    local params = {
        AccessPointName = "apname",
        Endpoint = "https://beta.example.com",
        AccountId = "123456789012",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = true,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: DualStack and custom endpoint are not supported", "error message")
end)

test("get bucket with custom endpoint and dualstack is not supported@us-west-2", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Endpoint = "https://s3-outposts.us-west-2.api.aws",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = true,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: DualStack and custom endpoint are not supported", "error message")
end)

test("ListRegionalBuckets + OutpostId with fips in CN.", function()
    local params = {
        AccountId = "012345678912",
        OutpostId = "op-123",
        Region = "cn-north-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Partition does not support FIPS", "error message")
end)

test("ListRegionalBuckets + invalid OutpostId.", function()
    local params = {
        AccountId = "012345678912",
        OutpostId = "?outpost/invalid+",
        Region = "us-west-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "OutpostId must only contain a-z, A-Z, 0-9 and `-`.", "error message")
end)

test("bucket ARN with mismatched accountId", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-west-2:999999:outpost:op-01234567890123456:bucket:mybucket",
        AccountId = "012345678912",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid ARN: the accountId specified in the ARN (`999999`) does not match the parameter (`012345678912`)", "error message")
end)

test("OutpostId with invalid region", function()
    local params = {
        OutpostId = "op-123",
        Region = "invalid-region 42",
        AccountId = "0123456",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid region: region was not a valid DNS name.", "error message")
end)

test("OutpostId with RequireAccountId unset", function()
    local params = {
        OutpostId = "op-123",
        Region = "us-west-2",
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-west-2.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-west-2",
        disableDoubleEncoding = true,
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

test("Outpost Accesspoint ARN with arn region and client region mismatch with UseArnRegion=false", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseArnRegion = false,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`", "error message")
end)

test("Outpost Bucket ARN with arn region and client region mismatch with UseArnRegion=false", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Endpoint = "https://beta.example.com",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseArnRegion = false,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`", "error message")
end)

test("Accesspoint ARN with region mismatch and UseArnRegion unset", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-east-1.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("Bucket ARN with region mismatch and UseArnRegion unset", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-east-1.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("Outpost Bucket ARN with partition mismatch with UseArnRegion=true", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseArnRegion = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Client was configured for partition `aws` but ARN has `aws-cn`", "error message")
end)

test("Accesspoint ARN with partition mismatch and UseArnRegion=true", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        AccountId = "123456789012",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseArnRegion = true,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Client was configured for partition `aws` but ARN has `aws-cn`", "error message")
end)

test("Accesspoint ARN with region mismatch, UseArnRegion=false and custom endpoint", function()
    local params = {
        AccessPointName = "arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
        Region = "us-west-2",
        Endpoint = "https://example.com",
        RequiresAccountId = true,
        UseDualStack = false,
        UseArnRegion = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid configuration: region from ARN `cn-north-1` does not match client region `us-west-2` and UseArnRegion is `false`", "error message")
end)

test("outpost bucket arn@us-west-2", function()
    local params = {
        Bucket = "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:bucket:mybucket",
        Region = "us-west-2",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3-outposts.us-west-2.amazonaws.com", "url")
    assert(result.headers and result.headers["x-amz-account-id"], "missing header: x-amz-account-id")
    assert_eq(result.headers["x-amz-account-id"][1], "123456789012", "header x-amz-account-id")
    assert(result.headers and result.headers["x-amz-outpost-id"], "missing header: x-amz-outpost-id")
    assert_eq(result.headers["x-amz-outpost-id"][1], "op-01234567890123456", "header x-amz-outpost-id")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3-outposts",
        signingRegion = "us-west-2",
        disableDoubleEncoding = true,
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

test("S3 Snow Control with bucket", function()
    local params = {
        Region = "snow",
        Bucket = "bucketName",
        Endpoint = "https://10.0.1.12:433",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://10.0.1.12:433", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "snow",
        disableDoubleEncoding = true,
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

test("S3 Snow Control without bucket", function()
    local params = {
        Region = "snow",
        Endpoint = "https://10.0.1.12:433",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://10.0.1.12:433", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "snow",
        disableDoubleEncoding = true,
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

test("S3 Snow Control with bucket and without port", function()
    local params = {
        Region = "snow",
        Bucket = "bucketName",
        Endpoint = "https://10.0.1.12",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://10.0.1.12", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "snow",
        disableDoubleEncoding = true,
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

test("S3 Snow Control with bucket and with DNS", function()
    local params = {
        Region = "snow",
        Bucket = "bucketName",
        Endpoint = "http://s3snow.com",
        UseFIPS = false,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "http://s3snow.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3",
        signingRegion = "snow",
        disableDoubleEncoding = true,
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

test("S3 Snow Control with FIPS enabled", function()
    local params = {
        Region = "snow",
        Bucket = "bucketName",
        Endpoint = "https://10.0.1.12:433",
        UseFIPS = true,
        UseDualStack = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "S3 Snow does not support FIPS", "error message")
end)

test("S3 Snow Control with Dualstack enabled", function()
    local params = {
        Region = "snow",
        Bucket = "bucketName",
        Endpoint = "https://10.0.1.12:433",
        UseFIPS = false,
        UseDualStack = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "S3 Snow does not support DualStack", "error message")
end)

test("Tagging on express bucket routed to s3express-control", function()
    local params = {
        ResourceArn = "arn:aws:s3express:us-east-1:871317572157:bucket/crachlintest--use1-az4--x-s3",
        AccountId = "871317572157",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3express-control.us-east-1.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3express",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("Tagging on express ap routed to s3express-control", function()
    local params = {
        ResourceArn = "arn:aws:s3express:us-east-1:871317572157:accesspoint/crachlintest--use1-az4--xa-s3",
        AccountId = "871317572157",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3express-control.us-east-1.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3express",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("Tagging on express bucket routed to s3express-control FIPS when FIPS enabled", function()
    local params = {
        ResourceArn = "arn:aws:s3express:us-east-1:871317572157:bucket/crachlintest--use1-az4--x-s3",
        AccountId = "871317572157",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3express-control-fips.us-east-1.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3express",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("Tagging on express bucket cn routed to s3express-control china endpoint", function()
    local params = {
        ResourceArn = "arn:aws-cn:s3express:cn-north-1:871317572157:bucket/crachlintest--use1-az4--x-s3",
        AccountId = "871317572157",
        Region = "cn-north-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3express-control.cn-north-1.amazonaws.com.cn", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3express",
        signingRegion = "cn-north-1",
        disableDoubleEncoding = true,
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

test("Tagging on express bucket cn routed to s3express-control china endpoint with FIPS", function()
    local params = {
        ResourceArn = "arn:aws-cn:s3express:cn-north-1:871317572157:bucket/crachlintest--use1-az4--x-s3",
        AccountId = "871317572157",
        Region = "cn-north-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Partition does not support FIPS", "error message")
end)

test("Tagging on express bucket with custom endpoint routed to custom endpoint", function()
    local params = {
        ResourceArn = "arn:aws:s3express:us-east-1:871317572157:bucket/crachlintest--use1-az4--x-s3",
        Endpoint = "https://my-endpoint.express-control.s3.aws.dev",
        AccountId = "871317572157",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://my-endpoint.express-control.s3.aws.dev", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3express",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("Tagging on express access point with custom endpoint routed to custom endpoint", function()
    local params = {
        ResourceArn = "arn:aws:s3express:us-east-1:871317572157:accesspoint/crachlintest--use1-az4--xa-s3",
        Endpoint = "https://my-endpoint.express-control.s3.aws.dev",
        AccountId = "871317572157",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://my-endpoint.express-control.s3.aws.dev", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3express",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("Tagging on express bucket with dualstack and custom endpoint fails", function()
    local params = {
        ResourceArn = "arn:aws:s3express:us-east-1:871317572157:bucket/crachlintest--use1-az4--x-s3",
        Endpoint = "https://my-endpoint.express-control.s3.aws.dev",
        AccountId = "871317572157",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = true,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: DualStack and custom endpoint are not supported", "error message")
end)

test("Access Point APIs on express bucket routed to s3express-control", function()
    local params = {
        AccountId = "871317572157",
        AccessPointName = "myaccesspoint--abcd-ab1--xa-s3",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3express-control.us-east-1.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3express",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("Access Point APIs on express bucket routed to s3express-control for List", function()
    local params = {
        AccountId = "871317572157",
        Region = "us-east-1",
        UseS3ExpressControlEndpoint = true,
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3express-control.us-east-1.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3express",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("Access Point APIs on express bucket routed to s3express-control for FIPS", function()
    local params = {
        AccountId = "871317572157",
        AccessPointName = "myaccesspoint--abcd-ab1--xa-s3",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3express-control-fips.us-east-1.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3express",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("Access Point APIs on express bucket routed to s3express-control for FIPS for List", function()
    local params = {
        AccountId = "871317572157",
        Region = "us-east-1",
        UseS3ExpressControlEndpoint = true,
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3express-control-fips.us-east-1.amazonaws.com", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3express",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("Access Point APIs on express bucket routed to s3express-control for china region", function()
    local params = {
        AccessPointName = "myaccesspoint--abcd-ab1--xa-s3",
        AccountId = "871317572157",
        Region = "cn-north-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3express-control.cn-north-1.amazonaws.com.cn", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3express",
        signingRegion = "cn-north-1",
        disableDoubleEncoding = true,
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

test("Access Point APIs on express bucket routed to s3express-control for china region for List", function()
    local params = {
        AccountId = "871317572157",
        Region = "cn-north-1",
        UseS3ExpressControlEndpoint = true,
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://s3express-control.cn-north-1.amazonaws.com.cn", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3express",
        signingRegion = "cn-north-1",
        disableDoubleEncoding = true,
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

test("Error when Access Point APIs on express bucket routed to s3express-control for china and FIPS", function()
    local params = {
        AccountId = "871317572157",
        Region = "cn-north-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = true,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Partition does not support FIPS", "error message")
end)

test("Error Access Point APIs on express bucket routed to s3express-control invalid zone", function()
    local params = {
        AccessPointName = "myaccesspoint-garbage-zone--xa-s3",
        AccountId = "871317572157",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Unrecognized S3Express Access Point name format.", "error message")
end)

test("Access Point APIs on express bucket routed to custom endpoint if provided", function()
    local params = {
        AccountId = "871317572157",
        AccessPointName = "myaccesspoint--abcd-ab1--xa-s3",
        Endpoint = "https://my-endpoint.express-control.s3.aws.dev",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://my-endpoint.express-control.s3.aws.dev", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3express",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("Access Point APIs on express bucket routed to custom endpoint if provided for List", function()
    local params = {
        AccountId = "871317572157",
        Region = "us-east-1",
        UseS3ExpressControlEndpoint = true,
        Endpoint = "https://my-endpoint.express-control.s3.aws.dev",
        RequiresAccountId = true,
        UseDualStack = false,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result ~= nil, "expected endpoint but got error: " .. tostring(err))
    assert_eq(result.url, "https://my-endpoint.express-control.s3.aws.dev", "url")
    assert(result.properties ~= nil, "missing properties")
    local expected_props = {
        authSchemes = {
        {
        name = "sigv4",
        signingName = "s3express",
        signingRegion = "us-east-1",
        disableDoubleEncoding = true,
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

test("Error on Access Point APIs on express bucket for dual stack", function()
    local params = {
        AccountId = "871317572157",
        AccessPointName = "myaccesspoint--abcd-ab1--xa-s3",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = true,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "S3Express does not support Dual-stack.", "error message")
end)

test("Error Access Point APIs on express bucket for dual stack for List", function()
    local params = {
        AccountId = "871317572157",
        Region = "us-east-1",
        UseS3ExpressControlEndpoint = true,
        RequiresAccountId = true,
        UseDualStack = true,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "S3Express does not support Dual-stack.", "error message")
end)

test("Error on Access Point APIs on express bucket for custom endpoint and dual stack", function()
    local params = {
        AccountId = "871317572157",
        AccessPointName = "myaccesspoint--abcd-ab1--xa-s3",
        Endpoint = "https://my-endpoint.express-control.s3.aws.dev",
        Region = "us-east-1",
        RequiresAccountId = true,
        UseDualStack = true,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: DualStack and custom endpoint are not supported", "error message")
end)

test("Error Access Point APIs on express bucket for custom endpoint and dual stack for List", function()
    local params = {
        AccountId = "871317572157",
        Region = "us-east-1",
        UseS3ExpressControlEndpoint = true,
        Endpoint = "https://my-endpoint.express-control.s3.aws.dev",
        RequiresAccountId = true,
        UseDualStack = true,
        UseFIPS = false,
    }
    local result, err = endpoint.resolve(ruleset, params)
    assert(result == nil, "expected error but got result")
    assert(err ~= nil, "expected error but got nil")
    assert_eq(err, "Invalid Configuration: DualStack and custom endpoint are not supported", "error message")
end)

print(string.format("\n%d passed, %d failed", pass_count, fail_count))
if fail_count > 0 then os.exit(1) end
