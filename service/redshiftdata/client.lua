local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("redshiftdata.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("redshiftdata.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "RedshiftData"
    cfg.signing_name = "redshiftdata"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:batchExecuteStatement(input, options)
    return self:invokeOperation(input, {
        name = "BatchExecuteStatement",
        input_schema = types.BatchExecuteStatementInput,
        output_schema = types.BatchExecuteStatementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelStatement(input, options)
    return self:invokeOperation(input, {
        name = "CancelStatement",
        input_schema = types.CancelStatementInput,
        output_schema = types.CancelStatementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeStatement(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStatement",
        input_schema = types.DescribeStatementInput,
        output_schema = types.DescribeStatementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTable(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTable",
        input_schema = types.DescribeTableInput,
        output_schema = types.DescribeTableOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:executeStatement(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteStatement",
        input_schema = types.ExecuteStatementInput,
        output_schema = types.ExecuteStatementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getStatementResult(input, options)
    return self:invokeOperation(input, {
        name = "GetStatementResult",
        input_schema = types.GetStatementResultInput,
        output_schema = types.GetStatementResultOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getStatementResultV2(input, options)
    return self:invokeOperation(input, {
        name = "GetStatementResultV2",
        input_schema = types.GetStatementResultV2Input,
        output_schema = types.GetStatementResultV2Output,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDatabases(input, options)
    return self:invokeOperation(input, {
        name = "ListDatabases",
        input_schema = types.ListDatabasesInput,
        output_schema = types.ListDatabasesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSchemas(input, options)
    return self:invokeOperation(input, {
        name = "ListSchemas",
        input_schema = types.ListSchemasInput,
        output_schema = types.ListSchemasOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listStatements(input, options)
    return self:invokeOperation(input, {
        name = "ListStatements",
        input_schema = types.ListStatementsInput,
        output_schema = types.ListStatementsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTables(input, options)
    return self:invokeOperation(input, {
        name = "ListTables",
        input_schema = types.ListTablesInput,
        output_schema = types.ListTablesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
