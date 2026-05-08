#!/usr/bin/env luajit
--
-- Example: S3 ListBuckets (Teal)
--
-- Usage:
--   cd aws-sdk-lua
--   make run-example EXAMPLE="s3/s3_list_buckets_teal"
--

local s3 = require("s3.client")

local client = s3.new({ region = "us-east-1" })

local result, err = client:listBuckets({}, nil):await()
if err then
    io.stderr:write("ERROR: " .. tostring(err) .. "\n")
    os.exit(1)
end

for _, b in ipairs(result.Buckets) do
    print(b.Name)
end
