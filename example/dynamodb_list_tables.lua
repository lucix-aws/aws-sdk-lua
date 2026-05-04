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

-- Wire up LUA_PATH: sdk runtime + smithy-lua runtime + generated service code
local sdk_root = debug.getinfo(1, "S").source:match("^@(.*)/example/") or "."
local smithy_root = sdk_root .. "/../smithy-lua"
package.path = table.concat({
    sdk_root .. "/runtime/?.lua",
    sdk_root .. "/service/?.lua",
    smithy_root .. "/runtime/?.lua",
    smithy_root .. "/runtime/?/init.lua",
    smithy_root .. "/?.lua",
    "",
}, ";")

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
