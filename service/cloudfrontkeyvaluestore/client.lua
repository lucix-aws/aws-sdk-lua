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
    cfg.signing_name = "cloudfront-keyvaluestore"
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

function Client:deleteKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKey",
        input_schema = types.DeleteKeyInput,
        output_schema = types.DeleteKeyOutput,
        http_method = "DELETE",
        http_path = "/key-value-stores/{KvsARN}/keys/{Key}",
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
        context_params = {
            KvsARN = "KvsARN",
        },
    }, options)
end

return M
