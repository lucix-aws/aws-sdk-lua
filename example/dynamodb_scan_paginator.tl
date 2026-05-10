--
-- Example: DynamoDB Scan with Paginator
--
-- Demonstrates using the paginator to iterate over all items in a table,
-- automatically handling pagination tokens.
--
-- Requires AWS credentials via environment variables, ~/.aws/credentials,
-- or ~/.aws/config (standard credential chain).
--
-- Usage:
--   make run-example EXAMPLE=dynamodb_scan_paginator
--
-- Or:
--   LUA_PATH="..." luajit example/dynamodb_scan_paginator.lua <table-name> [region]
--

local dynamodb = require("aws.sdk.service.dynamodb")
local paginators = require("aws.sdk.service.dynamodb.paginators")

local table_name = arg[1]
local region = arg[2] or os.getenv("AWS_REGION") or "us-east-1"

if not table_name then
    io.stderr:write("Usage: dynamodb_scan_paginator.lua <table-name> [region]\n")
    os.exit(1)
end

local client = dynamodb.new({ region = region })

print("DynamoDB Scan Paginator (" .. region .. ", table=" .. table_name .. ")")
print(string.rep("-", 60))

-- Iterate individual items across all pages
local count = 0
for item in paginators.items_scan(client, { TableName = table_name }) do
    count = count + 1
    -- Print first few fields of each item
    local parts = {}
    for k, v in pairs(item) do
        -- DynamoDB attribute values are typed: {S = "..."}, {N = "..."}, etc.
        local display
        if v.S then display = v.S
        elseif v.N then display = v.N
        elseif v.BOOL ~= nil then display = tostring(v.BOOL)
        else display = "..."
        end
        parts[#parts + 1] = k .. "=" .. display
    end
    print("  " .. table.concat(parts, ", "))
end

print(string.rep("-", 60))
print(count .. " item(s) total")
