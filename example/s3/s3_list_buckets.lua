#!/usr/bin/env luajit
--
-- Example: S3 ListBuckets
--
-- Lists all S3 buckets in the account.
--
-- Usage:
--   cd aws-sdk-lua
--   ./example/s3_list_buckets.lua [region]
--

local s3 = require("s3.client")

local region = arg[1] or os.getenv("AWS_REGION") or "us-east-1"
local client = s3.new({ region = region })

local result, err = client:listBuckets({})
if err then
    io.stderr:write("ERROR: " .. (err.code or "unknown") .. ": " .. (err.message or "") .. "\n")
    os.exit(1)
end

local buckets = result.Buckets or {}
print(string.format("Found %d bucket(s):", #buckets))
for _, b in ipairs(buckets) do
    print("  " .. b.Name)
end
