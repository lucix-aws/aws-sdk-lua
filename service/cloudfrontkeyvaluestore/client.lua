local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cloudfrontkeyvaluestore.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("cloudfrontkeyvaluestore.types")

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
        input_schema = types.DeleteKeyInput,
        output_schema = types.DeleteKeyOutput,
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
        input_schema = types.DescribeKeyValueStoreInput,
        output_schema = types.DescribeKeyValueStoreOutput,
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
        input_schema = types.GetKeyInput,
        output_schema = types.GetKeyOutput,
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
        input_schema = types.ListKeysInput,
        output_schema = types.ListKeysOutput,
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
        input_schema = types.PutKeyInput,
        output_schema = types.PutKeyOutput,
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
        input_schema = types.UpdateKeysInput,
        output_schema = types.UpdateKeysOutput,
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
