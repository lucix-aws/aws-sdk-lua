local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("bedrockdataautomationruntime.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("bedrockdataautomationruntime.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonBedrockKeystoneRuntimeService"
    cfg.signing_name = "amazonbedrockkeystoneruntimeservice"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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

function Client:getDataAutomationStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetDataAutomationStatus",
        input_schema = types.GetDataAutomationStatusInput,
        output_schema = types.GetDataAutomationStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:invokeDataAutomation(input, options)
    return self:invokeOperation(input, {
        name = "InvokeDataAutomation",
        input_schema = types.InvokeDataAutomationInput,
        output_schema = types.InvokeDataAutomationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:invokeDataAutomationAsync(input, options)
    return self:invokeOperation(input, {
        name = "InvokeDataAutomationAsync",
        input_schema = types.InvokeDataAutomationAsyncInput,
        output_schema = types.InvokeDataAutomationAsyncOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
