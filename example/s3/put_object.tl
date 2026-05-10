--
-- Example: S3 PutObject
--
-- Uploads a string to an S3 bucket.
--
-- Usage:
--   cd aws-sdk-lua
--   make run-example EXAMPLE="s3_put_object <bucket> <key> [region]"
--

local s3 = require("s3.client")

local bucket = arg[1]
local key = arg[2]
local region = arg[3] or os.getenv("AWS_REGION") or "us-east-1"

if not bucket or not key then
    io.stderr:write("Usage: s3_put_object.lua <bucket> <key> [region]\n")
    os.exit(1)
end

local client = s3.new({ region = region })

local result, err = client:putObject({
    Bucket = bucket,
    Key = key,
    Body = "Hello from the AWS SDK for Lua!",
}):await()
if err then
    io.stderr:write("ERROR: " .. (err.code or "unknown") .. ": " .. (err.message or "") .. "\n")
    os.exit(1)
end

print("PutObject OK: s3://" .. bucket .. "/" .. key)
print("ETag: " .. (result.ETag or ""))
