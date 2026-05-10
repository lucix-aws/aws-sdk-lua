--
-- Example: S3 GetObject (streaming)
--
-- Downloads an object from S3 and writes it to stdout.
-- The response body is a streaming reader — it is NOT buffered into memory.
--
-- Requires AWS credentials via environment variables, ~/.aws/credentials,
-- or ~/.aws/config (standard credential chain).
--
-- Usage:
--   cd aws-sdk-lua
--   ./example/s3_get_object.lua <bucket> <key> [region]
--

local s3 = require("aws.sdk.service.s3")
local logging = require("smithy.interceptor.logging")

local bucket = arg[1]
local key = arg[2]
local region = arg[3] or os.getenv("AWS_REGION") or "us-east-1"

if not bucket or not key then
    io.stderr:write("Usage: s3_get_object.lua <bucket> <key> [region]\n")
    os.exit(1)
end

local client = s3.new({ region = region, interceptors = { logging.new() } })

local result, err = client:getObject({ Bucket = bucket, Key = key }):await()
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
