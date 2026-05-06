#!/usr/bin/env luajit
--
-- Example: DynamoDB CreateTable + WaitUntilTableExists
--
-- Creates a DynamoDB table and uses the waiter to poll until it becomes ACTIVE.
--
-- Requires AWS credentials via environment variables, ~/.aws/credentials,
-- or ~/.aws/config (standard credential chain).
--
-- Usage:
--   make run-example EXAMPLE=dynamodb_wait_table
--
-- Or:
--   LUA_PATH="..." luajit example/dynamodb_wait_table.lua [table-name] [region]
--

local dynamodb = require("dynamodb.client")
local waiters = require("dynamodb.waiters")

local table_name = arg[1] or "lua-sdk-waiter-example"
local region = arg[2] or os.getenv("AWS_REGION") or "us-east-1"

local client = dynamodb.new({ region = region })

print("DynamoDB CreateTable + Waiter (" .. region .. ")")
print(string.rep("-", 60))

-- Create a simple table
print("Creating table: " .. table_name)
local _, err = client:createTable({
    TableName = table_name,
    KeySchema = {
        { AttributeName = "pk", KeyType = "HASH" },
    },
    AttributeDefinitions = {
        { AttributeName = "pk", AttributeType = "S" },
    },
    BillingMode = "PAY_PER_REQUEST",
})
if err then
    io.stderr:write("ERROR: " .. (err.code or "unknown") .. ": " .. (err.message or "") .. "\n")
    os.exit(1)
end

-- Wait for the table to become ACTIVE
print("Waiting for table to become ACTIVE...")
local result, wait_err = waiters.wait_until_table_exists(client, {
    TableName = table_name,
}, { max_wait_time = 120 })

if wait_err then
    io.stderr:write("WAITER ERROR: " .. (wait_err.code or "unknown") .. ": " .. (wait_err.message or "") .. "\n")
    os.exit(1)
end

print("Table is ACTIVE! Status: " .. result.Table.TableStatus)

-- Clean up
print("Deleting table: " .. table_name)
local _, del_err = client:deleteTable({ TableName = table_name })
if del_err then
    io.stderr:write("WARNING: delete failed: " .. (del_err.message or "") .. "\n")
end

print("Done.")
