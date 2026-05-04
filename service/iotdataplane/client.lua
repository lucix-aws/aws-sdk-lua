local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("iotdataplane.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("iotdataplane.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "IotMoonrakerService"
    cfg.signing_name = "iotdata"
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

function Client:deleteConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnection",
        input_schema = types.DeleteConnectionInput,
        output_schema = types.DeleteConnectionOutput,
        http_method = "DELETE",
        http_path = "/connections/{clientId}",
    }, options)
end

function Client:deleteThingShadow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteThingShadow",
        input_schema = types.DeleteThingShadowInput,
        output_schema = types.DeleteThingShadowOutput,
        http_method = "DELETE",
        http_path = "/things/{thingName}/shadow",
    }, options)
end

function Client:getRetainedMessage(input, options)
    return self:invokeOperation(input, {
        name = "GetRetainedMessage",
        input_schema = types.GetRetainedMessageInput,
        output_schema = types.GetRetainedMessageOutput,
        http_method = "GET",
        http_path = "/retainedMessage/{topic}",
    }, options)
end

function Client:getThingShadow(input, options)
    return self:invokeOperation(input, {
        name = "GetThingShadow",
        input_schema = types.GetThingShadowInput,
        output_schema = types.GetThingShadowOutput,
        http_method = "GET",
        http_path = "/things/{thingName}/shadow",
    }, options)
end

function Client:listNamedShadowsForThing(input, options)
    return self:invokeOperation(input, {
        name = "ListNamedShadowsForThing",
        input_schema = types.ListNamedShadowsForThingInput,
        output_schema = types.ListNamedShadowsForThingOutput,
        http_method = "GET",
        http_path = "/api/things/shadow/ListNamedShadowsForThing/{thingName}",
    }, options)
end

function Client:listRetainedMessages(input, options)
    return self:invokeOperation(input, {
        name = "ListRetainedMessages",
        input_schema = types.ListRetainedMessagesInput,
        output_schema = types.ListRetainedMessagesOutput,
        http_method = "GET",
        http_path = "/retainedMessage",
    }, options)
end

function Client:publish(input, options)
    return self:invokeOperation(input, {
        name = "Publish",
        input_schema = types.PublishInput,
        output_schema = types.PublishOutput,
        http_method = "POST",
        http_path = "/topics/{topic}",
    }, options)
end

function Client:updateThingShadow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThingShadow",
        input_schema = types.UpdateThingShadowInput,
        output_schema = types.UpdateThingShadowOutput,
        http_method = "POST",
        http_path = "/things/{thingName}/shadow",
    }, options)
end

return M
