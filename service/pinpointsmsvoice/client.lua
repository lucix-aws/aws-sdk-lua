local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("pinpointsmsvoice.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("pinpointsmsvoice.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PinpointSMSVoice"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "sms-voice", signing_region = cfg.region } }
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

function Client:createConfigurationSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationSet",
        input_schema = schemas.CreateConfigurationSetInput,
        output_schema = schemas.CreateConfigurationSetOutput,
        http_method = "POST",
        http_path = "/v1/sms-voice/configuration-sets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConfigurationSetEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationSetEventDestination",
        input_schema = schemas.CreateConfigurationSetEventDestinationInput,
        output_schema = schemas.CreateConfigurationSetEventDestinationOutput,
        http_method = "POST",
        http_path = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfigurationSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationSet",
        input_schema = schemas.DeleteConfigurationSetInput,
        output_schema = schemas.DeleteConfigurationSetOutput,
        http_method = "DELETE",
        http_path = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfigurationSetEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationSetEventDestination",
        input_schema = schemas.DeleteConfigurationSetEventDestinationInput,
        output_schema = schemas.DeleteConfigurationSetEventDestinationOutput,
        http_method = "DELETE",
        http_path = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfigurationSetEventDestinations(input, options)
    return self:invokeOperation(input, {
        name = "GetConfigurationSetEventDestinations",
        input_schema = schemas.GetConfigurationSetEventDestinationsInput,
        output_schema = schemas.GetConfigurationSetEventDestinationsOutput,
        http_method = "GET",
        http_path = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfigurationSets(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationSets",
        input_schema = schemas.ListConfigurationSetsInput,
        output_schema = schemas.ListConfigurationSetsOutput,
        http_method = "GET",
        http_path = "/v1/sms-voice/configuration-sets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendVoiceMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendVoiceMessage",
        input_schema = schemas.SendVoiceMessageInput,
        output_schema = schemas.SendVoiceMessageOutput,
        http_method = "POST",
        http_path = "/v1/sms-voice/voice/message",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConfigurationSetEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfigurationSetEventDestination",
        input_schema = schemas.UpdateConfigurationSetEventDestinationInput,
        output_schema = schemas.UpdateConfigurationSetEventDestinationOutput,
        http_method = "PUT",
        http_path = "/v1/sms-voice/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
