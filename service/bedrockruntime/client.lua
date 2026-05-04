local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("bedrockruntime.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("bedrockruntime.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonBedrockFrontendService"
    cfg.signing_name = "bedrock"
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

function Client:applyGuardrail(input, options)
    return self:invokeOperation(input, {
        name = "ApplyGuardrail",
        input_schema = types.ApplyGuardrailInput,
        output_schema = types.ApplyGuardrailOutput,
        http_method = "POST",
        http_path = "/guardrail/{guardrailIdentifier}/version/{guardrailVersion}/apply",
    }, options)
end

function Client:converse(input, options)
    return self:invokeOperation(input, {
        name = "Converse",
        input_schema = types.ConverseInput,
        output_schema = types.ConverseOperationOutput,
        http_method = "POST",
        http_path = "/model/{modelId}/converse",
    }, options)
end

function Client:converseStream(input, options)
    return self:invokeOperation(input, {
        name = "ConverseStream",
        input_schema = types.ConverseStreamInput,
        output_schema = types.ConverseStreamOperationOutput,
        http_method = "POST",
        http_path = "/model/{modelId}/converse-stream",
    }, options)
end

function Client:countTokens(input, options)
    return self:invokeOperation(input, {
        name = "CountTokens",
        input_schema = types.CountTokensOperationInput,
        output_schema = types.CountTokensOutput,
        http_method = "POST",
        http_path = "/model/{modelId}/count-tokens",
    }, options)
end

function Client:getAsyncInvoke(input, options)
    return self:invokeOperation(input, {
        name = "GetAsyncInvoke",
        input_schema = types.GetAsyncInvokeInput,
        output_schema = types.GetAsyncInvokeOutput,
        http_method = "GET",
        http_path = "/async-invoke/{invocationArn}",
    }, options)
end

function Client:invokeModel(input, options)
    return self:invokeOperation(input, {
        name = "InvokeModel",
        input_schema = types.InvokeModelInput,
        output_schema = types.InvokeModelOutput,
        http_method = "POST",
        http_path = "/model/{modelId}/invoke",
    }, options)
end

function Client:invokeModelWithBidirectionalStream(input, options)
    return self:invokeOperation(input, {
        name = "InvokeModelWithBidirectionalStream",
        input_schema = types.InvokeModelWithBidirectionalStreamOperationInput,
        output_schema = types.InvokeModelWithBidirectionalStreamOperationOutput,
        http_method = "POST",
        http_path = "/model/{modelId}/invoke-with-bidirectional-stream",
    }, options)
end

function Client:invokeModelWithResponseStream(input, options)
    return self:invokeOperation(input, {
        name = "InvokeModelWithResponseStream",
        input_schema = types.InvokeModelWithResponseStreamInput,
        output_schema = types.InvokeModelWithResponseStreamOutput,
        http_method = "POST",
        http_path = "/model/{modelId}/invoke-with-response-stream",
    }, options)
end

function Client:listAsyncInvokes(input, options)
    return self:invokeOperation(input, {
        name = "ListAsyncInvokes",
        input_schema = types.ListAsyncInvokesInput,
        output_schema = types.ListAsyncInvokesOutput,
        http_method = "GET",
        http_path = "/async-invoke",
    }, options)
end

function Client:startAsyncInvoke(input, options)
    return self:invokeOperation(input, {
        name = "StartAsyncInvoke",
        input_schema = types.StartAsyncInvokeInput,
        output_schema = types.StartAsyncInvokeOutput,
        http_method = "POST",
        http_path = "/async-invoke",
    }, options)
end

return M
