local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("rdsdata.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("rdsdata.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "RdsDataService"
    cfg.signing_name = "rdsdataservice"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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
        http_path = "/BatchExecute",
    }, options)
end

function Client:beginTransaction(input, options)
    return self:invokeOperation(input, {
        name = "BeginTransaction",
        input_schema = types.BeginTransactionInput,
        output_schema = types.BeginTransactionOutput,
        http_method = "POST",
        http_path = "/BeginTransaction",
    }, options)
end

function Client:commitTransaction(input, options)
    return self:invokeOperation(input, {
        name = "CommitTransaction",
        input_schema = types.CommitTransactionInput,
        output_schema = types.CommitTransactionOutput,
        http_method = "POST",
        http_path = "/CommitTransaction",
    }, options)
end

function Client:executeSql(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteSql",
        input_schema = types.ExecuteSqlInput,
        output_schema = types.ExecuteSqlOutput,
        http_method = "POST",
        http_path = "/ExecuteSql",
    }, options)
end

function Client:executeStatement(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteStatement",
        input_schema = types.ExecuteStatementInput,
        output_schema = types.ExecuteStatementOutput,
        http_method = "POST",
        http_path = "/Execute",
    }, options)
end

function Client:rollbackTransaction(input, options)
    return self:invokeOperation(input, {
        name = "RollbackTransaction",
        input_schema = types.RollbackTransactionInput,
        output_schema = types.RollbackTransactionOutput,
        http_method = "POST",
        http_path = "/RollbackTransaction",
    }, options)
end

return M
