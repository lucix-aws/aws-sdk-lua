#!/usr/bin/env luajit
--
-- Example: S3 Async - Sequential vs Concurrent GetObject (10 files)
--
-- Demonstrates the difference between fetching 10 objects sequentially
-- vs concurrently using await_all.
--
-- Usage:
--   cd aws-sdk-lua
--   make run-example EXAMPLE="s3/async_example <bucket> <prefix> [region]"
--
-- Expects objects at <prefix>/1 through <prefix>/10 to exist.
-- Create them with: for i in $(seq 1 10); do aws s3 cp /etc/hosts s3://<bucket>/<prefix>/$i; done
--

local s3 = require("s3.client")
local async = require("smithy.async")
local http = require("smithy.http")
local curl_async = require("smithy.http.curl_async")

local bucket = arg[1]
local prefix = arg[2]
local region = arg[3] or os.getenv("AWS_REGION") or "us-east-1"

if not bucket or not prefix then
    io.stderr:write("Usage: async_example.lua <bucket> <prefix> [region]\n")
    os.exit(1)
end

local sync_client = s3.new({ region = region })
local async_client = s3.new({ region = region, http_client = curl_async.new() })
local keys = {}
for i = 1, 100 do keys[i] = prefix .. "/" .. i end

local function body_size(body)
    if not body then return 0 end
    local s = http.read_all(body)
    return s and #s or 0
end

-- Sequential
print("=== Sequential (100 GetObject) ===")
local t0 = os.clock()
local total = 0
for _, key in ipairs(keys) do
    local r, err = sync_client:getObject({ Bucket = bucket, Key = key }):await()
    if err then io.stderr:write("ERROR " .. key .. ": " .. (err.message or "") .. "\n"); os.exit(1) end
    total = total + body_size(r.Body)
end
local seq_time = os.clock() - t0
print(string.format("  Total: %d bytes in %.3fs", total, seq_time))

-- Concurrent
print("\n=== Concurrent (100 GetObject) ===")
t0 = os.clock()
local ops = {}
for i, key in ipairs(keys) do
    ops[i] = async_client:getObject({ Bucket = bucket, Key = key })
end
local results = async.await_all(ops)
total = 0
for i, res in ipairs(results) do
    local r, err = res[1], res[2]
    if err then io.stderr:write("ERROR " .. keys[i] .. ": " .. (err.message or "") .. "\n"); os.exit(1) end
    total = total + body_size(r.Body)
end
local con_time = os.clock() - t0
print(string.format("  Total: %d bytes in %.3fs", total, con_time))

print(string.format("\nSpeedup: %.1fx", seq_time / con_time))
