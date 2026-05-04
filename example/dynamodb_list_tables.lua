#!/usr/bin/env luajit
--
-- Example: DynamoDB ListTables
--
-- Requires AWS credentials in environment:
--   export AWS_ACCESS_KEY_ID=...
--   export AWS_SECRET_ACCESS_KEY=...
--   export AWS_SESSION_TOKEN=...  (optional)
--
-- Usage:
--   cd aws-sdk-lua
--   ./example/dynamodb_list_tables.lua [region]
--

-- Wire up LUA_PATH externally, e.g.:
--   make run-example EXAMPLE=dynamodb_list_tables
--
-- Or manually:
--   LUA_PATH="../smithy-lua/runtime/?.lua;../smithy-lua/runtime/smithy/?.lua;runtime/?.lua;runtime/aws/?.lua;service/?.lua;;" \
--     luajit example/dynamodb_list_tables.lua [region]
--

local dynamodb = require("dynamodb.client")

local region = arg[1] or os.getenv("AWS_REGION") or "us-east-1"
local client = dynamodb.new({ region = region })

print("DynamoDB ListTables (" .. region .. ")")
print(string.rep("-", 40))

local result, err = client:listTables({})
if err then
    io.stderr:write("ERROR: " .. (err.code or "unknown") .. ": " .. (err.message or "") .. "\n")
    os.exit(1)
end

if result.TableNames and #result.TableNames > 0 then
    for _, name in ipairs(result.TableNames) do
        print("  " .. name)
    end
    print(string.rep("-", 40))
    print(#result.TableNames .. " table(s)")
else
    print("  (no tables)")
end
