local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("rdsdata.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("rdsdata.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "RdsDataService"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "rds-data", signing_region = cfg.region } }
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
        http_path = "/BatchExecute",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:beginTransaction(input, options)
    return self:invokeOperation(input, {
        name = "BeginTransaction",
        input_schema = schemas.BeginTransactionInput,
        output_schema = schemas.BeginTransactionOutput,
        http_method = "POST",
        http_path = "/BeginTransaction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:commitTransaction(input, options)
    return self:invokeOperation(input, {
        name = "CommitTransaction",
        input_schema = schemas.CommitTransactionInput,
        output_schema = schemas.CommitTransactionOutput,
        http_method = "POST",
        http_path = "/CommitTransaction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeSql(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteSql",
        input_schema = schemas.ExecuteSqlInput,
        output_schema = schemas.ExecuteSqlOutput,
        http_method = "POST",
        http_path = "/ExecuteSql",
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
        http_path = "/Execute",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rollbackTransaction(input, options)
    return self:invokeOperation(input, {
        name = "RollbackTransaction",
        input_schema = schemas.RollbackTransactionInput,
        output_schema = schemas.RollbackTransactionOutput,
        http_method = "POST",
        http_path = "/RollbackTransaction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
