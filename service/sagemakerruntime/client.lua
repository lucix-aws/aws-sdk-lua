local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("sagemakerruntime.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("sagemakerruntime.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonSageMakerRuntime"
    cfg.signing_name = "sagemaker"
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

function Client:invokeEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "InvokeEndpoint",
        input_schema = types.InvokeEndpointInput,
        output_schema = types.InvokeEndpointOutput,
        http_method = "POST",
        http_path = "/endpoints/{EndpointName}/invocations",
    }, options)
end

function Client:invokeEndpointAsync(input, options)
    return self:invokeOperation(input, {
        name = "InvokeEndpointAsync",
        input_schema = types.InvokeEndpointAsyncInput,
        output_schema = types.InvokeEndpointAsyncOutput,
        http_method = "POST",
        http_path = "/endpoints/{EndpointName}/async-invocations",
    }, options)
end

function Client:invokeEndpointWithResponseStream(input, options)
    return self:invokeOperation(input, {
        name = "InvokeEndpointWithResponseStream",
        input_schema = types.InvokeEndpointWithResponseStreamInput,
        output_schema = types.InvokeEndpointWithResponseStreamOutput,
        http_method = "POST",
        http_path = "/endpoints/{EndpointName}/invocations-response-stream",
    }, options)
end

return M
