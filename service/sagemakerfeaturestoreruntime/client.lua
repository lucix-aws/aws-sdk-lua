local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("sagemakerfeaturestoreruntime.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("sagemakerfeaturestoreruntime.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonSageMakerFeatureStoreRuntime"
    cfg.signing_name = "amazonsagemakerfeaturestoreruntime"
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

function Client:batchGetRecord(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetRecord",
        input_schema = types.BatchGetRecordInput,
        output_schema = types.BatchGetRecordOutput,
        http_method = "POST",
        http_path = "/BatchGetRecord",
    }, options)
end

function Client:deleteRecord(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecord",
        input_schema = types.DeleteRecordInput,
        output_schema = types.DeleteRecordOutput,
        http_method = "DELETE",
        http_path = "/FeatureGroup/{FeatureGroupName}",
    }, options)
end

function Client:getRecord(input, options)
    return self:invokeOperation(input, {
        name = "GetRecord",
        input_schema = types.GetRecordInput,
        output_schema = types.GetRecordOutput,
        http_method = "GET",
        http_path = "/FeatureGroup/{FeatureGroupName}",
    }, options)
end

function Client:putRecord(input, options)
    return self:invokeOperation(input, {
        name = "PutRecord",
        input_schema = types.PutRecordInput,
        output_schema = types.PutRecordOutput,
        http_method = "PUT",
        http_path = "/FeatureGroup/{FeatureGroupName}",
    }, options)
end

return M
