#!/usr/bin/env luajit
--
-- Example: S3 GetObject (streaming)
--
-- Downloads an object from S3 and writes it to stdout.
-- The response body is a streaming reader — it is NOT buffered into memory.
--
-- Requires AWS credentials in environment:
--   export AWS_ACCESS_KEY_ID=...
--   export AWS_SECRET_ACCESS_KEY=...
--   export AWS_SESSION_TOKEN=...  (optional)
--
-- Usage:
--   cd aws-sdk-lua
--   ./example/s3_get_object.lua <bucket> <key> [region]
--

local s3 = require("s3.client")

local bucket = arg[1]
local key = arg[2]
local region = arg[3] or os.getenv("AWS_REGION") or "us-east-1"

if not bucket or not key then
    io.stderr:write("Usage: s3_get_object.lua <bucket> <key> [region]\n")
    os.exit(1)
end

local client = s3.new({ region = region })

local result, err = client:getObject({ Bucket = bucket, Key = key })
if err then
    io.stderr:write("ERROR: " .. (err.code or "unknown") .. ": " .. (err.message or "") .. "\n")
    os.exit(1)
end

-- result.Body is a reader function: call it repeatedly to get chunks
local body = result.Body
while true do
    local chunk, read_err = body()
    if read_err then
        io.stderr:write("Read error: " .. read_err .. "\n")
        os.exit(1)
    end
    if not chunk then break end
    io.write(chunk)
end
