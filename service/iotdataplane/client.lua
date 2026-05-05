local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("iotdataplane.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("iotdataplane.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "IotMoonrakerService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iotdata", signing_region = cfg.region } }
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

function Client:deleteConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnection",
        input_schema = schemas.DeleteConnectionInput,
        output_schema = schemas.DeleteConnectionOutput,
        http_method = "DELETE",
        http_path = "/connections/{clientId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteThingShadow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteThingShadow",
        input_schema = schemas.DeleteThingShadowInput,
        output_schema = schemas.DeleteThingShadowOutput,
        http_method = "DELETE",
        http_path = "/things/{thingName}/shadow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRetainedMessage(input, options)
    return self:invokeOperation(input, {
        name = "GetRetainedMessage",
        input_schema = schemas.GetRetainedMessageInput,
        output_schema = schemas.GetRetainedMessageOutput,
        http_method = "GET",
        http_path = "/retainedMessage/{topic}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getThingShadow(input, options)
    return self:invokeOperation(input, {
        name = "GetThingShadow",
        input_schema = schemas.GetThingShadowInput,
        output_schema = schemas.GetThingShadowOutput,
        http_method = "GET",
        http_path = "/things/{thingName}/shadow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNamedShadowsForThing(input, options)
    return self:invokeOperation(input, {
        name = "ListNamedShadowsForThing",
        input_schema = schemas.ListNamedShadowsForThingInput,
        output_schema = schemas.ListNamedShadowsForThingOutput,
        http_method = "GET",
        http_path = "/api/things/shadow/ListNamedShadowsForThing/{thingName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRetainedMessages(input, options)
    return self:invokeOperation(input, {
        name = "ListRetainedMessages",
        input_schema = schemas.ListRetainedMessagesInput,
        output_schema = schemas.ListRetainedMessagesOutput,
        http_method = "GET",
        http_path = "/retainedMessage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:publish(input, options)
    return self:invokeOperation(input, {
        name = "Publish",
        input_schema = schemas.PublishInput,
        output_schema = schemas.PublishOutput,
        http_method = "POST",
        http_path = "/topics/{topic}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateThingShadow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThingShadow",
        input_schema = schemas.UpdateThingShadowInput,
        output_schema = schemas.UpdateThingShadowOutput,
        http_method = "POST",
        http_path = "/things/{thingName}/shadow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
