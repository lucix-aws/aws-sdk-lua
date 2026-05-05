local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("sagemakerfeaturestoreruntime.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("sagemakerfeaturestoreruntime.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonSageMakerFeatureStoreRuntime"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "sagemaker", signing_region = cfg.region } }
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

function Client:batchGetRecord(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetRecord",
        input_schema = schemas.BatchGetRecordInput,
        output_schema = schemas.BatchGetRecordOutput,
        http_method = "POST",
        http_path = "/BatchGetRecord",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRecord(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecord",
        input_schema = schemas.DeleteRecordInput,
        output_schema = schemas.DeleteRecordOutput,
        http_method = "DELETE",
        http_path = "/FeatureGroup/{FeatureGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRecord(input, options)
    return self:invokeOperation(input, {
        name = "GetRecord",
        input_schema = schemas.GetRecordInput,
        output_schema = schemas.GetRecordOutput,
        http_method = "GET",
        http_path = "/FeatureGroup/{FeatureGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRecord(input, options)
    return self:invokeOperation(input, {
        name = "PutRecord",
        input_schema = schemas.PutRecordInput,
        output_schema = schemas.PutRecordOutput,
        http_method = "PUT",
        http_path = "/FeatureGroup/{FeatureGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
