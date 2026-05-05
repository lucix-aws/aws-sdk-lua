local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cloudfrontkeyvaluestore.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("cloudfrontkeyvaluestore.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CloudFrontKeyValueStore"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cloudfront-keyvaluestore", signing_region = cfg.region } }
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

function Client:deleteKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKey",
        input_schema = schemas.DeleteKeyInput,
        output_schema = schemas.DeleteKeyOutput,
        http_method = "DELETE",
        http_path = "/key-value-stores/{KvsARN}/keys/{Key}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            KvsARN = "KvsARN",
        },
    }, options)
end

function Client:describeKeyValueStore(input, options)
    return self:invokeOperation(input, {
        name = "DescribeKeyValueStore",
        input_schema = schemas.DescribeKeyValueStoreInput,
        output_schema = schemas.DescribeKeyValueStoreOutput,
        http_method = "GET",
        http_path = "/key-value-stores/{KvsARN}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            KvsARN = "KvsARN",
        },
    }, options)
end

function Client:getKey(input, options)
    return self:invokeOperation(input, {
        name = "GetKey",
        input_schema = schemas.GetKeyInput,
        output_schema = schemas.GetKeyOutput,
        http_method = "GET",
        http_path = "/key-value-stores/{KvsARN}/keys/{Key}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            KvsARN = "KvsARN",
        },
    }, options)
end

function Client:listKeys(input, options)
    return self:invokeOperation(input, {
        name = "ListKeys",
        input_schema = schemas.ListKeysInput,
        output_schema = schemas.ListKeysOutput,
        http_method = "GET",
        http_path = "/key-value-stores/{KvsARN}/keys",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            KvsARN = "KvsARN",
        },
    }, options)
end

function Client:putKey(input, options)
    return self:invokeOperation(input, {
        name = "PutKey",
        input_schema = schemas.PutKeyInput,
        output_schema = schemas.PutKeyOutput,
        http_method = "PUT",
        http_path = "/key-value-stores/{KvsARN}/keys/{Key}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            KvsARN = "KvsARN",
        },
    }, options)
end

function Client:updateKeys(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKeys",
        input_schema = schemas.UpdateKeysInput,
        output_schema = schemas.UpdateKeysOutput,
        http_method = "POST",
        http_path = "/key-value-stores/{KvsARN}/keys",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            KvsARN = "KvsARN",
        },
    }, options)
end

return M
