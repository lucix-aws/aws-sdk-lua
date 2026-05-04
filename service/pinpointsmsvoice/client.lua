local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("pinpointsmsvoice.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("pinpointsmsvoice.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PinpointSMSVoice"
    cfg.signing_name = "sms-voice"
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

function Client:createConfigurationSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationSet",
        input_schema = types.CreateConfigurationSetInput,
        output_schema = types.CreateConfigurationSetOutput,
        http_method = "POST",
        http_path = "/v1/sms-voice/configuration-sets",
    }, options)
end

function Client:createConfigurationSetEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationSetEventDestination",
        input_schema = types.CreateConfigurationSetEventDestinationInput,
        output_schema = types.CreateConfigurationSetEventDestinationOutput,
        http_method = "POST",
        http_path = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations",
    }, options)
end

function Client:deleteConfigurationSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationSet",
        input_schema = types.DeleteConfigurationSetInput,
        output_schema = types.DeleteConfigurationSetOutput,
        http_method = "DELETE",
        http_path = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}",
    }, options)
end

function Client:deleteConfigurationSetEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationSetEventDestination",
        input_schema = types.DeleteConfigurationSetEventDestinationInput,
        output_schema = types.DeleteConfigurationSetEventDestinationOutput,
        http_method = "DELETE",
        http_path = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}",
    }, options)
end

function Client:getConfigurationSetEventDestinations(input, options)
    return self:invokeOperation(input, {
        name = "GetConfigurationSetEventDestinations",
        input_schema = types.GetConfigurationSetEventDestinationsInput,
        output_schema = types.GetConfigurationSetEventDestinationsOutput,
        http_method = "GET",
        http_path = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations",
    }, options)
end

function Client:listConfigurationSets(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationSets",
        input_schema = types.ListConfigurationSetsInput,
        output_schema = types.ListConfigurationSetsOutput,
        http_method = "GET",
        http_path = "/v1/sms-voice/configuration-sets",
    }, options)
end

function Client:sendVoiceMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendVoiceMessage",
        input_schema = types.SendVoiceMessageInput,
        output_schema = types.SendVoiceMessageOutput,
        http_method = "POST",
        http_path = "/v1/sms-voice/voice/message",
    }, options)
end

function Client:updateConfigurationSetEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfigurationSetEventDestination",
        input_schema = types.UpdateConfigurationSetEventDestinationInput,
        output_schema = types.UpdateConfigurationSetEventDestinationOutput,
        http_method = "PUT",
        http_path = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}",
    }, options)
end

return M
