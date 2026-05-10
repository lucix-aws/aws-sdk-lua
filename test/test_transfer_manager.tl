#!/usr/bin/env tl run
-- Unit test for S3 Transfer Manager (mock client, no network)

local tm_mod = require("aws.sdk.hll.s3.transfermanager")

local passed = 0
local failed = 0

local function test(name: string, fn: function())
    local ok, err = pcall(fn)
    if ok then
        passed = passed + 1
        io.write("  PASS: " .. name .. "\n")
    else
        failed = failed + 1
        io.write("  FAIL: " .. name .. ": " .. tostring(err) .. "\n")
    end
end

local function assert_eq(a: any, b: any)
    if a ~= b then
        error("expected " .. tostring(b) .. " got " .. tostring(a), 2)
    end
end

-- Minimal future that resolves immediately
local record Future
    await: function(Future): any, any
end

local function resolved(value: any, err: any): Future
    return { await = function(_self: Future): any, any return value, err end }
end

-- Mock S3 client
local record Call
    op: string
    input: {string:any}
end

local record MockClient
    _calls: {Call}
    putObject: function(MockClient, {string:any}): Future
    createMultipartUpload: function(MockClient, {string:any}): Future
    uploadPart: function(MockClient, {string:any}): Future
    completeMultipartUpload: function(MockClient, {string:any}): Future
    abortMultipartUpload: function(MockClient, {string:any}): Future
    getObject: function(MockClient, {string:any}): Future
    listObjectsV2: function(MockClient, {string:any}): Future
end

local function make_mock_client(): MockClient
    local client: MockClient = { _calls = {} }

    client.putObject = function(self: MockClient, input: {string:any}): Future
        self._calls[#self._calls + 1] = { op = "putObject", input = input }
        return resolved({ ETag = '"abc123"' }, nil)
    end

    client.createMultipartUpload = function(self: MockClient, input: {string:any}): Future
        self._calls[#self._calls + 1] = { op = "createMultipartUpload", input = input }
        return resolved({ UploadId = "test-upload-id" }, nil)
    end

    client.uploadPart = function(self: MockClient, input: {string:any}): Future
        self._calls[#self._calls + 1] = { op = "uploadPart", input = input }
        return resolved({ ETag = '"part-etag-' .. tostring(input.PartNumber) .. '"' }, nil)
    end

    client.completeMultipartUpload = function(self: MockClient, input: {string:any}): Future
        self._calls[#self._calls + 1] = { op = "completeMultipartUpload", input = input }
        return resolved({ ETag = '"final-etag"', Location = "https://bucket.s3.amazonaws.com/key" }, nil)
    end

    client.abortMultipartUpload = function(self: MockClient, input: {string:any}): Future
        self._calls[#self._calls + 1] = { op = "abortMultipartUpload", input = input }
        return resolved({}, nil)
    end

    client.getObject = function(self: MockClient, input: {string:any}): Future
        self._calls[#self._calls + 1] = { op = "getObject", input = input }
        if input.PartNumber then
            return resolved({ Body = "hello world", ETag = '"obj-etag"', ContentRange = "bytes 0-10/11", PartsCount = 1 }, nil)
        elseif input.Range then
            return resolved({ Body = "hello world", ETag = '"obj-etag"', ContentRange = "bytes 0-10/11", ContentLength = 11 }, nil)
        else
            return resolved({ Body = "hello world", ETag = '"obj-etag"', ContentLength = 11 }, nil)
        end
    end

    client.listObjectsV2 = function(self: MockClient, input: {string:any}): Future
        self._calls[#self._calls + 1] = { op = "listObjectsV2", input = input }
        return resolved({ Contents = { { Key = "prefix/file1.txt", Size = 5 }, { Key = "prefix/file2.txt", Size = 5 } } }, nil)
    end

    return client
end

print("=== S3 Transfer Manager Unit Tests ===")

test("new() requires client", function()
    local ok = pcall(tm_mod.new, {})
    assert(not ok, "should fail without client")
end)

test("small upload uses putObject", function()
    local client = make_mock_client()
    local tm = tm_mod.new({ client = client })
    local result, err = tm:upload({ Bucket = "mybucket", Key = "mykey", Body = "small body" })
    assert(not err, "unexpected error: " .. tostring(err))
    assert(result, "expected result")
    assert_eq(result.ETag, '"abc123"')
    assert_eq(client._calls[1].op, "putObject")
    assert_eq(#client._calls, 1)
end)

test("large upload uses multipart", function()
    local client = make_mock_client()
    local tm = tm_mod.new({ client = client, multipartUploadThresholdBytes = 10 })
    local body = string.rep("x", 100)
    local result, err = tm:upload({ Bucket = "b", Key = "k", Body = body })
    assert(not err, "unexpected error: " .. tostring(err))
    assert(result, "expected result")
    assert_eq(client._calls[1].op, "createMultipartUpload")
    assert_eq(client._calls[#client._calls].op, "completeMultipartUpload")
end)

test("multipart with small part size creates multiple parts", function()
    local client = make_mock_client()
    local tm = tm_mod.new({ client = client, multipartUploadThresholdBytes = 10, targetPartSizeBytes = 20 })
    local body = string.rep("x", 100)
    local _result, err = tm:upload({ Bucket = "b", Key = "k", Body = body })
    assert(not err, "unexpected error: " .. tostring(err))
    local count = 0
    for _, c in ipairs(client._calls) do
        if c.op == "uploadPart" then count = count + 1 end
    end
    assert_eq(count, 5)
end)

test("download part-GET mode", function()
    local client = make_mock_client()
    local tm = tm_mod.new({ client = client })
    local result, err = tm:download({ Bucket = "mybucket", Key = "mykey" })
    assert(not err, "unexpected error: " .. tostring(err))
    assert_eq(result.Body, "hello world")
    assert_eq(result.ETag, '"obj-etag"')
    assert_eq(client._calls[1].op, "getObject")
    assert_eq(client._calls[1].input.PartNumber, 1)
end)

test("download ranged-GET mode", function()
    local client = make_mock_client()
    local tm = tm_mod.new({ client = client, multipartDownloadType = "RANGE" })
    local result, err = tm:download({ Bucket = "mybucket", Key = "mykey" })
    assert(not err, "unexpected error: " .. tostring(err))
    assert_eq(result.Body, "hello world")
    assert(client._calls[1].input.Range, "expected Range header")
end)

test("upload requires Body or FilePath", function()
    local client = make_mock_client()
    local tm = tm_mod.new({ client = client })
    local result, err = tm:upload({ Bucket = "b", Key = "k" })
    assert(not result, "expected nil result")
    assert_eq(err.code, "InvalidArgument")
end)

test("multipart aborts on part failure", function()
    local client = make_mock_client()
    local orig_upload_part = client.uploadPart
    client.uploadPart = function(self: MockClient, input: {string:any}): Future
        if input.PartNumber == 2 then
            self._calls[#self._calls + 1] = { op = "uploadPart", input = input }
            return resolved(nil, { code = "InternalError", message = "simulated" })
        end
        return orig_upload_part(self, input)
    end
    local tm = tm_mod.new({ client = client, multipartUploadThresholdBytes = 10, targetPartSizeBytes = 20 })
    local body = string.rep("x", 100)
    local result, err = tm:upload({ Bucket = "b", Key = "k", Body = body })
    assert(not result, "expected nil on failure")
    assert_eq(err.code, "InternalError")
    local aborted = false
    for _, c in ipairs(client._calls) do
        if c.op == "abortMultipartUpload" then aborted = true end
    end
    assert(aborted, "expected abortMultipartUpload")
end)

print(string.format("\n%d passed, %d failed", passed, failed))
if failed > 0 then os.exit(1) end
