local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("redshiftdata.endpoint_rules")
local schemas = require("redshiftdata.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "RedshiftData"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "redshift-data", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:batchExecuteStatement(input, options)
    return self:invokeOperation(input, {
        name = "BatchExecuteStatement",
        input_schema = schemas.BatchExecuteStatementInput,
        output_schema = schemas.BatchExecuteStatementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelStatement(input, options)
    return self:invokeOperation(input, {
        name = "CancelStatement",
        input_schema = schemas.CancelStatementInput,
        output_schema = schemas.CancelStatementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStatement(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStatement",
        input_schema = schemas.DescribeStatementInput,
        output_schema = schemas.DescribeStatementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTable(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTable",
        input_schema = schemas.DescribeTableInput,
        output_schema = schemas.DescribeTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeStatement(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteStatement",
        input_schema = schemas.ExecuteStatementInput,
        output_schema = schemas.ExecuteStatementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStatementResult(input, options)
    return self:invokeOperation(input, {
        name = "GetStatementResult",
        input_schema = schemas.GetStatementResultInput,
        output_schema = schemas.GetStatementResultOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStatementResultV2(input, options)
    return self:invokeOperation(input, {
        name = "GetStatementResultV2",
        input_schema = schemas.GetStatementResultV2Input,
        output_schema = schemas.GetStatementResultV2Output,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDatabases(input, options)
    return self:invokeOperation(input, {
        name = "ListDatabases",
        input_schema = schemas.ListDatabasesInput,
        output_schema = schemas.ListDatabasesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSchemas(input, options)
    return self:invokeOperation(input, {
        name = "ListSchemas",
        input_schema = schemas.ListSchemasInput,
        output_schema = schemas.ListSchemasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStatements(input, options)
    return self:invokeOperation(input, {
        name = "ListStatements",
        input_schema = schemas.ListStatementsInput,
        output_schema = schemas.ListStatementsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTables(input, options)
    return self:invokeOperation(input, {
        name = "ListTables",
        input_schema = schemas.ListTablesInput,
        output_schema = schemas.ListTablesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
