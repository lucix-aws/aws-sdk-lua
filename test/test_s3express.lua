-- Test: S3Express credential provider
-- Run: luajit test/test_s3express.lua

package.path = "../smithy-lua-s3express/runtime/?.lua;runtime/?.lua;service/?.lua;;" .. package.path

local s3express = require("aws.s3express")

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
        error((msg or "assert_eq") .. ":\n  expected: " .. tostring(b) .. "\n  got:      " .. tostring(a), 2)
    end
end

-- Mock S3 client
local call_count = 0
local mock_client = {
    createSession = function(self, input)
        call_count = call_count + 1
        return {
            Credentials = {
                AccessKeyId = "EXPRESS_AK_" .. input.Bucket,
                SecretAccessKey = "EXPRESS_SK_" .. input.Bucket,
                SessionToken = "EXPRESS_TOKEN_" .. input.Bucket,
                Expiration = os.time() + 300, -- 5 min from now
            },
        }, nil
    end,
}

-- Mock base credentials resolver
local base_creds = {
    access_key = "AKID_BASE",
    secret_key = "SK_BASE",
}
local function base_resolver()
    return base_creds, nil
end

test("resolve returns credentials for a bucket", function()
    call_count = 0
    local provider = s3express.new({
        s3_client = mock_client,
        base_credentials_resolver = base_resolver,
    })

    local creds, err = provider.resolve("mybucket--use1-az1--x-s3")
    assert(not err, "unexpected error: " .. tostring(err and err.message))
    assert_eq(creds.access_key, "EXPRESS_AK_mybucket--use1-az1--x-s3")
    assert_eq(creds.secret_key, "EXPRESS_SK_mybucket--use1-az1--x-s3")
    assert_eq(creds.session_token, "EXPRESS_TOKEN_mybucket--use1-az1--x-s3")
    assert_eq(call_count, 1)
end)

test("caches credentials for same bucket", function()
    call_count = 0
    local provider = s3express.new({
        s3_client = mock_client,
        base_credentials_resolver = base_resolver,
    })

    provider.resolve("bucket-a--use1-az1--x-s3")
    provider.resolve("bucket-a--use1-az1--x-s3")
    provider.resolve("bucket-a--use1-az1--x-s3")
    assert_eq(call_count, 1, "should only call CreateSession once for same bucket")
end)

test("different buckets get different credentials", function()
    call_count = 0
    local provider = s3express.new({
        s3_client = mock_client,
        base_credentials_resolver = base_resolver,
    })

    local creds_a, _ = provider.resolve("bucket-a--use1-az1--x-s3")
    local creds_b, _ = provider.resolve("bucket-b--use1-az2--x-s3")
    assert_eq(call_count, 2, "should call CreateSession for each bucket")
    assert_eq(creds_a.access_key, "EXPRESS_AK_bucket-a--use1-az1--x-s3")
    assert_eq(creds_b.access_key, "EXPRESS_AK_bucket-b--use1-az2--x-s3")
end)

test("propagates CreateSession errors", function()
    local err_client = {
        createSession = function(self, input)
            return nil, { type = "api", code = "AccessDenied", message = "forbidden" }
        end,
    }
    local provider = s3express.new({
        s3_client = err_client,
        base_credentials_resolver = base_resolver,
    })

    local creds, err = provider.resolve("bucket--use1-az1--x-s3")
    assert(err, "expected error")
    assert_eq(err.code, "AccessDenied")
end)

print(string.format("\n%d passed, %d failed", pass, fail))
if fail > 0 then os.exit(1) end
