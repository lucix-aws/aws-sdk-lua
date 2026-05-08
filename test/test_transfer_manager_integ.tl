#!/usr/bin/env tl run
-- Integration test for S3 Transfer Manager (requires real AWS credentials and bucket)
--
-- Usage:
--   export TEST_BUCKET=my-test-bucket
--   tl gen test/test_transfer_manager_integ.tl && luajit test/test_transfer_manager_integ.lua

local s3 = require("s3.client")
local tm_mod = require("s3.transfermanager")

local bucket = os.getenv("TEST_BUCKET") or arg[1]
local region = os.getenv("AWS_REGION") or "us-east-1"

if not bucket then
    io.stderr:write("Usage: TEST_BUCKET=<bucket> luajit test_transfer_manager_integ.lua\n")
    os.exit(1)
end

local prefix = "lua-sdk-tm-test-" .. tostring(os.time()) .. "/"
local client = s3.new({ region = region })
local tm = tm_mod.new({ client = client })

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

local function cleanup(key: string)
    pcall(function() client:deleteObject({ Bucket = bucket, Key = key }):await() end)
end

print("=== S3 Transfer Manager Integration Tests ===")
print("  bucket: " .. bucket .. "  prefix: " .. prefix)

test("upload small object and download it back", function()
    local key = prefix .. "small.txt"
    local body = "hello from lua sdk transfer manager"

    local up_result, up_err = tm:upload({ Bucket = bucket, Key = key, Body = body })
    assert(not up_err, "upload error: " .. tostring(up_err and (up_err as {string:string}).message))
    assert(up_result, "expected upload result")
    assert((up_result as {string:any}).ETag, "expected ETag")

    local dl_result, dl_err = tm:download({ Bucket = bucket, Key = key })
    assert(not dl_err, "download error: " .. tostring(dl_err and (dl_err as {string:string}).message))
    assert(dl_result, "expected download result")
    assert((dl_result as {string:any}).Body == body, "body mismatch: got " .. tostring((dl_result as {string:any}).Body))

    cleanup(key)
end)

test("upload triggers multipart for large body", function()
    local key = prefix .. "large.bin"
    -- 17MB body to exceed default 16MB threshold
    local body = string.rep("A", 17 * 1024 * 1024)

    local up_result, up_err = tm:upload({ Bucket = bucket, Key = key, Body = body })
    assert(not up_err, "upload error: " .. tostring(up_err and (up_err as {string:string}).message))
    assert(up_result, "expected upload result")

    local dl_result, dl_err = tm:download({ Bucket = bucket, Key = key })
    assert(not dl_err, "download error: " .. tostring(dl_err and (dl_err as {string:string}).message))
    assert(#(dl_result as {string:any}).Body == #body, "size mismatch: expected " .. #body .. " got " .. #(dl_result as {string:any}).Body)

    cleanup(key)
end)

test("upload from file and download to file", function()
    local key = prefix .. "file-roundtrip.txt"
    local src_path = "/tmp/lua-sdk-tm-test-src-" .. tostring(os.time())
    local dst_path = "/tmp/lua-sdk-tm-test-dst-" .. tostring(os.time())
    local content = "file roundtrip test content\n" .. string.rep("data\n", 100)

    -- Write source file
    local f = io.open(src_path, "wb")
    assert(f, "failed to create source file")
    f:write(content)
    f:close()

    local up_result, up_err = tm:upload({ Bucket = bucket, Key = key, FilePath = src_path })
    assert(not up_err, "upload error: " .. tostring(up_err and (up_err as {string:string}).message))
    assert(up_result, "expected upload result")

    local dl_result, dl_err = tm:download({ Bucket = bucket, Key = key, FilePath = dst_path })
    assert(not dl_err, "download error: " .. tostring(dl_err and (dl_err as {string:string}).message))

    -- Verify file contents
    local df = io.open(dst_path, "rb")
    assert(df, "download file not created")
    local downloaded = df:read("*a")
    df:close()
    assert(downloaded == content, "file content mismatch")

    -- Cleanup
    os.remove(src_path)
    os.remove(dst_path)
    cleanup(key)
end)

test("download with ranged-GET mode", function()
    local key = prefix .. "ranged.txt"
    local body = "ranged download test body"

    client:putObject({ Bucket = bucket, Key = key, Body = body }):await()

    local range_tm = tm_mod.new({ client = client, multipartDownloadType = "RANGE" })
    local dl_result, dl_err = range_tm:download({ Bucket = bucket, Key = key })
    assert(not dl_err, "download error: " .. tostring(dl_err and (dl_err as {string:string}).message))
    assert((dl_result as {string:any}).Body == body, "body mismatch")

    cleanup(key)
end)

print(string.format("\n%d passed, %d failed", passed, failed))
if failed > 0 then os.exit(1) end
