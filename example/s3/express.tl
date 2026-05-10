--
-- Example: S3 Express One Zone
--
-- Demonstrates using a directory bucket (S3 Express One Zone).
-- The SDK automatically handles CreateSession-based authentication —
-- no extra configuration is needed.
--
-- Usage:
--   cd aws-sdk-lua
--   ./example/s3_express.lua <bucket--azid--x-s3> <key> [region]
--
-- The bucket name must be a directory bucket (e.g. mybucket--use1-az4--x-s3).
--

local s3 = require("s3.client")

local bucket = arg[1]
local key = arg[2]
local region = arg[3] or os.getenv("AWS_REGION") or "us-east-1"

if not bucket or not key then
    io.stderr:write("Usage: s3_express.lua <bucket--azid--x-s3> <key> [region]\n")
    os.exit(1)
end

local client = s3.new({ region = region })

-- PutObject: upload content to the directory bucket
local body = "Hello from the AWS SDK for Lua (S3 Express One Zone)!"
local _, err = client:putObject({ Bucket = bucket, Key = key, Body = body }):await()
if err then
    io.stderr:write("PutObject ERROR: " .. (err.code or "unknown") .. ": " .. (err.message or "") .. "\n")
    os.exit(1)
end
print("PutObject OK: s3://" .. bucket .. "/" .. key)

-- GetObject: read it back
local result
result, err = client:getObject({ Bucket = bucket, Key = key }):await()
if err then
    io.stderr:write("GetObject ERROR: " .. (err.code or "unknown") .. ": " .. (err.message or "") .. "\n")
    os.exit(1)
end

io.write("GetObject body: ")
local reader = result.Body
while true do
    local chunk, read_err = reader()
    if read_err then
        io.stderr:write("Read error: " .. read_err .. "\n")
        os.exit(1)
    end
    if not chunk then break end
    io.write(chunk)
end
io.write("\n")

-- DeleteObject: clean up
_, err = client:deleteObject({ Bucket = bucket, Key = key }):await()
if err then
    io.stderr:write("DeleteObject ERROR: " .. (err.code or "unknown") .. ": " .. (err.message or "") .. "\n")
    os.exit(1)
end
print("DeleteObject OK")
