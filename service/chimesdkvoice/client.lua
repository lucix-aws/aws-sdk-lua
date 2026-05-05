local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("chimesdkvoice.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("chimesdkvoice.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ChimeSDKTelephonyService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "chime", signing_region = cfg.region } }
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

function Client:associatePhoneNumbersWithVoiceConnector(input, options)
    return self:invokeOperation(input, {
        name = "AssociatePhoneNumbersWithVoiceConnector",
        input_schema = schemas.AssociatePhoneNumbersWithVoiceConnectorInput,
        output_schema = schemas.AssociatePhoneNumbersWithVoiceConnectorOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}?operation=associate-phone-numbers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associatePhoneNumbersWithVoiceConnectorGroup(input, options)
    return self:invokeOperation(input, {
        name = "AssociatePhoneNumbersWithVoiceConnectorGroup",
        input_schema = schemas.AssociatePhoneNumbersWithVoiceConnectorGroupInput,
        output_schema = schemas.AssociatePhoneNumbersWithVoiceConnectorGroupOutput,
        http_method = "POST",
        http_path = "/voice-connector-groups/{VoiceConnectorGroupId}?operation=associate-phone-numbers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeletePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeletePhoneNumber",
        input_schema = schemas.BatchDeletePhoneNumberInput,
        output_schema = schemas.BatchDeletePhoneNumberOutput,
        http_method = "POST",
        http_path = "/phone-numbers?operation=batch-delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdatePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdatePhoneNumber",
        input_schema = schemas.BatchUpdatePhoneNumberInput,
        output_schema = schemas.BatchUpdatePhoneNumberOutput,
        http_method = "POST",
        http_path = "/phone-numbers?operation=batch-update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPhoneNumberOrder(input, options)
    return self:invokeOperation(input, {
        name = "CreatePhoneNumberOrder",
        input_schema = schemas.CreatePhoneNumberOrderInput,
        output_schema = schemas.CreatePhoneNumberOrderOutput,
        http_method = "POST",
        http_path = "/phone-number-orders",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProxySession(input, options)
    return self:invokeOperation(input, {
        name = "CreateProxySession",
        input_schema = schemas.CreateProxySessionInput,
        output_schema = schemas.CreateProxySessionOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}/proxy-sessions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSipMediaApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateSipMediaApplication",
        input_schema = schemas.CreateSipMediaApplicationInput,
        output_schema = schemas.CreateSipMediaApplicationOutput,
        http_method = "POST",
        http_path = "/sip-media-applications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSipMediaApplicationCall(input, options)
    return self:invokeOperation(input, {
        name = "CreateSipMediaApplicationCall",
        input_schema = schemas.CreateSipMediaApplicationCallInput,
        output_schema = schemas.CreateSipMediaApplicationCallOutput,
        http_method = "POST",
        http_path = "/sip-media-applications/{SipMediaApplicationId}/calls",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSipRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateSipRule",
        input_schema = schemas.CreateSipRuleInput,
        output_schema = schemas.CreateSipRuleOutput,
        http_method = "POST",
        http_path = "/sip-rules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVoiceConnector(input, options)
    return self:invokeOperation(input, {
        name = "CreateVoiceConnector",
        input_schema = schemas.CreateVoiceConnectorInput,
        output_schema = schemas.CreateVoiceConnectorOutput,
        http_method = "POST",
        http_path = "/voice-connectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVoiceConnectorGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateVoiceConnectorGroup",
        input_schema = schemas.CreateVoiceConnectorGroupInput,
        output_schema = schemas.CreateVoiceConnectorGroupOutput,
        http_method = "POST",
        http_path = "/voice-connector-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVoiceProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateVoiceProfile",
        input_schema = schemas.CreateVoiceProfileInput,
        output_schema = schemas.CreateVoiceProfileOutput,
        http_method = "POST",
        http_path = "/voice-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVoiceProfileDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateVoiceProfileDomain",
        input_schema = schemas.CreateVoiceProfileDomainInput,
        output_schema = schemas.CreateVoiceProfileDomainOutput,
        http_method = "POST",
        http_path = "/voice-profile-domains",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "DeletePhoneNumber",
        input_schema = schemas.DeletePhoneNumberInput,
        output_schema = schemas.DeletePhoneNumberOutput,
        http_method = "DELETE",
        http_path = "/phone-numbers/{PhoneNumberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProxySession(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProxySession",
        input_schema = schemas.DeleteProxySessionInput,
        output_schema = schemas.DeleteProxySessionOutput,
        http_method = "DELETE",
        http_path = "/voice-connectors/{VoiceConnectorId}/proxy-sessions/{ProxySessionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSipMediaApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSipMediaApplication",
        input_schema = schemas.DeleteSipMediaApplicationInput,
        output_schema = schemas.DeleteSipMediaApplicationOutput,
        http_method = "DELETE",
        http_path = "/sip-media-applications/{SipMediaApplicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSipRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSipRule",
        input_schema = schemas.DeleteSipRuleInput,
        output_schema = schemas.DeleteSipRuleOutput,
        http_method = "DELETE",
        http_path = "/sip-rules/{SipRuleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVoiceConnector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceConnector",
        input_schema = schemas.DeleteVoiceConnectorInput,
        output_schema = schemas.DeleteVoiceConnectorOutput,
        http_method = "DELETE",
        http_path = "/voice-connectors/{VoiceConnectorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVoiceConnectorEmergencyCallingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceConnectorEmergencyCallingConfiguration",
        input_schema = schemas.DeleteVoiceConnectorEmergencyCallingConfigurationInput,
        output_schema = schemas.DeleteVoiceConnectorEmergencyCallingConfigurationOutput,
        http_method = "DELETE",
        http_path = "/voice-connectors/{VoiceConnectorId}/emergency-calling-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVoiceConnectorExternalSystemsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceConnectorExternalSystemsConfiguration",
        input_schema = schemas.DeleteVoiceConnectorExternalSystemsConfigurationInput,
        output_schema = schemas.DeleteVoiceConnectorExternalSystemsConfigurationOutput,
        http_method = "DELETE",
        http_path = "/voice-connectors/{VoiceConnectorId}/external-systems-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVoiceConnectorGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceConnectorGroup",
        input_schema = schemas.DeleteVoiceConnectorGroupInput,
        output_schema = schemas.DeleteVoiceConnectorGroupOutput,
        http_method = "DELETE",
        http_path = "/voice-connector-groups/{VoiceConnectorGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVoiceConnectorOrigination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceConnectorOrigination",
        input_schema = schemas.DeleteVoiceConnectorOriginationInput,
        output_schema = schemas.DeleteVoiceConnectorOriginationOutput,
        http_method = "DELETE",
        http_path = "/voice-connectors/{VoiceConnectorId}/origination",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVoiceConnectorProxy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceConnectorProxy",
        input_schema = schemas.DeleteVoiceConnectorProxyInput,
        output_schema = schemas.DeleteVoiceConnectorProxyOutput,
        http_method = "DELETE",
        http_path = "/voice-connectors/{VoiceConnectorId}/programmable-numbers/proxy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVoiceConnectorStreamingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceConnectorStreamingConfiguration",
        input_schema = schemas.DeleteVoiceConnectorStreamingConfigurationInput,
        output_schema = schemas.DeleteVoiceConnectorStreamingConfigurationOutput,
        http_method = "DELETE",
        http_path = "/voice-connectors/{VoiceConnectorId}/streaming-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVoiceConnectorTermination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceConnectorTermination",
        input_schema = schemas.DeleteVoiceConnectorTerminationInput,
        output_schema = schemas.DeleteVoiceConnectorTerminationOutput,
        http_method = "DELETE",
        http_path = "/voice-connectors/{VoiceConnectorId}/termination",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVoiceConnectorTerminationCredentials(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceConnectorTerminationCredentials",
        input_schema = schemas.DeleteVoiceConnectorTerminationCredentialsInput,
        output_schema = schemas.DeleteVoiceConnectorTerminationCredentialsOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}/termination/credentials?operation=delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVoiceProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceProfile",
        input_schema = schemas.DeleteVoiceProfileInput,
        output_schema = schemas.DeleteVoiceProfileOutput,
        http_method = "DELETE",
        http_path = "/voice-profiles/{VoiceProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVoiceProfileDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceProfileDomain",
        input_schema = schemas.DeleteVoiceProfileDomainInput,
        output_schema = schemas.DeleteVoiceProfileDomainOutput,
        http_method = "DELETE",
        http_path = "/voice-profile-domains/{VoiceProfileDomainId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociatePhoneNumbersFromVoiceConnector(input, options)
    return self:invokeOperation(input, {
        name = "DisassociatePhoneNumbersFromVoiceConnector",
        input_schema = schemas.DisassociatePhoneNumbersFromVoiceConnectorInput,
        output_schema = schemas.DisassociatePhoneNumbersFromVoiceConnectorOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}?operation=disassociate-phone-numbers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociatePhoneNumbersFromVoiceConnectorGroup(input, options)
    return self:invokeOperation(input, {
        name = "DisassociatePhoneNumbersFromVoiceConnectorGroup",
        input_schema = schemas.DisassociatePhoneNumbersFromVoiceConnectorGroupInput,
        output_schema = schemas.DisassociatePhoneNumbersFromVoiceConnectorGroupOutput,
        http_method = "POST",
        http_path = "/voice-connector-groups/{VoiceConnectorGroupId}?operation=disassociate-phone-numbers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGlobalSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetGlobalSettings",
        input_schema = schemas.GetGlobalSettingsInput,
        output_schema = schemas.GetGlobalSettingsOutput,
        http_method = "GET",
        http_path = "/settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "GetPhoneNumber",
        input_schema = schemas.GetPhoneNumberInput,
        output_schema = schemas.GetPhoneNumberOutput,
        http_method = "GET",
        http_path = "/phone-numbers/{PhoneNumberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPhoneNumberOrder(input, options)
    return self:invokeOperation(input, {
        name = "GetPhoneNumberOrder",
        input_schema = schemas.GetPhoneNumberOrderInput,
        output_schema = schemas.GetPhoneNumberOrderOutput,
        http_method = "GET",
        http_path = "/phone-number-orders/{PhoneNumberOrderId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPhoneNumberSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetPhoneNumberSettings",
        input_schema = schemas.GetPhoneNumberSettingsInput,
        output_schema = schemas.GetPhoneNumberSettingsOutput,
        http_method = "GET",
        http_path = "/settings/phone-number",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProxySession(input, options)
    return self:invokeOperation(input, {
        name = "GetProxySession",
        input_schema = schemas.GetProxySessionInput,
        output_schema = schemas.GetProxySessionOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/proxy-sessions/{ProxySessionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSipMediaApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetSipMediaApplication",
        input_schema = schemas.GetSipMediaApplicationInput,
        output_schema = schemas.GetSipMediaApplicationOutput,
        http_method = "GET",
        http_path = "/sip-media-applications/{SipMediaApplicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSipMediaApplicationAlexaSkillConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetSipMediaApplicationAlexaSkillConfiguration",
        input_schema = schemas.GetSipMediaApplicationAlexaSkillConfigurationInput,
        output_schema = schemas.GetSipMediaApplicationAlexaSkillConfigurationOutput,
        http_method = "GET",
        http_path = "/sip-media-applications/{SipMediaApplicationId}/alexa-skill-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSipMediaApplicationLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetSipMediaApplicationLoggingConfiguration",
        input_schema = schemas.GetSipMediaApplicationLoggingConfigurationInput,
        output_schema = schemas.GetSipMediaApplicationLoggingConfigurationOutput,
        http_method = "GET",
        http_path = "/sip-media-applications/{SipMediaApplicationId}/logging-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSipRule(input, options)
    return self:invokeOperation(input, {
        name = "GetSipRule",
        input_schema = schemas.GetSipRuleInput,
        output_schema = schemas.GetSipRuleOutput,
        http_method = "GET",
        http_path = "/sip-rules/{SipRuleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSpeakerSearchTask(input, options)
    return self:invokeOperation(input, {
        name = "GetSpeakerSearchTask",
        input_schema = schemas.GetSpeakerSearchTaskInput,
        output_schema = schemas.GetSpeakerSearchTaskOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks/{SpeakerSearchTaskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVoiceConnector(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnector",
        input_schema = schemas.GetVoiceConnectorInput,
        output_schema = schemas.GetVoiceConnectorOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVoiceConnectorEmergencyCallingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnectorEmergencyCallingConfiguration",
        input_schema = schemas.GetVoiceConnectorEmergencyCallingConfigurationInput,
        output_schema = schemas.GetVoiceConnectorEmergencyCallingConfigurationOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/emergency-calling-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVoiceConnectorExternalSystemsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnectorExternalSystemsConfiguration",
        input_schema = schemas.GetVoiceConnectorExternalSystemsConfigurationInput,
        output_schema = schemas.GetVoiceConnectorExternalSystemsConfigurationOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/external-systems-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVoiceConnectorGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnectorGroup",
        input_schema = schemas.GetVoiceConnectorGroupInput,
        output_schema = schemas.GetVoiceConnectorGroupOutput,
        http_method = "GET",
        http_path = "/voice-connector-groups/{VoiceConnectorGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVoiceConnectorLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnectorLoggingConfiguration",
        input_schema = schemas.GetVoiceConnectorLoggingConfigurationInput,
        output_schema = schemas.GetVoiceConnectorLoggingConfigurationOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/logging-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVoiceConnectorOrigination(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnectorOrigination",
        input_schema = schemas.GetVoiceConnectorOriginationInput,
        output_schema = schemas.GetVoiceConnectorOriginationOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/origination",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVoiceConnectorProxy(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnectorProxy",
        input_schema = schemas.GetVoiceConnectorProxyInput,
        output_schema = schemas.GetVoiceConnectorProxyOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/programmable-numbers/proxy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVoiceConnectorStreamingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnectorStreamingConfiguration",
        input_schema = schemas.GetVoiceConnectorStreamingConfigurationInput,
        output_schema = schemas.GetVoiceConnectorStreamingConfigurationOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/streaming-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVoiceConnectorTermination(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnectorTermination",
        input_schema = schemas.GetVoiceConnectorTerminationInput,
        output_schema = schemas.GetVoiceConnectorTerminationOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/termination",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVoiceConnectorTerminationHealth(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnectorTerminationHealth",
        input_schema = schemas.GetVoiceConnectorTerminationHealthInput,
        output_schema = schemas.GetVoiceConnectorTerminationHealthOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/termination/health",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVoiceProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceProfile",
        input_schema = schemas.GetVoiceProfileInput,
        output_schema = schemas.GetVoiceProfileOutput,
        http_method = "GET",
        http_path = "/voice-profiles/{VoiceProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVoiceProfileDomain(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceProfileDomain",
        input_schema = schemas.GetVoiceProfileDomainInput,
        output_schema = schemas.GetVoiceProfileDomainOutput,
        http_method = "GET",
        http_path = "/voice-profile-domains/{VoiceProfileDomainId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVoiceToneAnalysisTask(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceToneAnalysisTask",
        input_schema = schemas.GetVoiceToneAnalysisTaskInput,
        output_schema = schemas.GetVoiceToneAnalysisTaskOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAvailableVoiceConnectorRegions(input, options)
    return self:invokeOperation(input, {
        name = "ListAvailableVoiceConnectorRegions",
        input_schema = schemas.ListAvailableVoiceConnectorRegionsInput,
        output_schema = schemas.ListAvailableVoiceConnectorRegionsOutput,
        http_method = "GET",
        http_path = "/voice-connector-regions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPhoneNumberOrders(input, options)
    return self:invokeOperation(input, {
        name = "ListPhoneNumberOrders",
        input_schema = schemas.ListPhoneNumberOrdersInput,
        output_schema = schemas.ListPhoneNumberOrdersOutput,
        http_method = "GET",
        http_path = "/phone-number-orders",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPhoneNumbers(input, options)
    return self:invokeOperation(input, {
        name = "ListPhoneNumbers",
        input_schema = schemas.ListPhoneNumbersInput,
        output_schema = schemas.ListPhoneNumbersOutput,
        http_method = "GET",
        http_path = "/phone-numbers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProxySessions(input, options)
    return self:invokeOperation(input, {
        name = "ListProxySessions",
        input_schema = schemas.ListProxySessionsInput,
        output_schema = schemas.ListProxySessionsOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/proxy-sessions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSipMediaApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListSipMediaApplications",
        input_schema = schemas.ListSipMediaApplicationsInput,
        output_schema = schemas.ListSipMediaApplicationsOutput,
        http_method = "GET",
        http_path = "/sip-media-applications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSipRules(input, options)
    return self:invokeOperation(input, {
        name = "ListSipRules",
        input_schema = schemas.ListSipRulesInput,
        output_schema = schemas.ListSipRulesOutput,
        http_method = "GET",
        http_path = "/sip-rules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSupportedPhoneNumberCountries(input, options)
    return self:invokeOperation(input, {
        name = "ListSupportedPhoneNumberCountries",
        input_schema = schemas.ListSupportedPhoneNumberCountriesInput,
        output_schema = schemas.ListSupportedPhoneNumberCountriesOutput,
        http_method = "GET",
        http_path = "/phone-number-countries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVoiceConnectorGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListVoiceConnectorGroups",
        input_schema = schemas.ListVoiceConnectorGroupsInput,
        output_schema = schemas.ListVoiceConnectorGroupsOutput,
        http_method = "GET",
        http_path = "/voice-connector-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVoiceConnectors(input, options)
    return self:invokeOperation(input, {
        name = "ListVoiceConnectors",
        input_schema = schemas.ListVoiceConnectorsInput,
        output_schema = schemas.ListVoiceConnectorsOutput,
        http_method = "GET",
        http_path = "/voice-connectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVoiceConnectorTerminationCredentials(input, options)
    return self:invokeOperation(input, {
        name = "ListVoiceConnectorTerminationCredentials",
        input_schema = schemas.ListVoiceConnectorTerminationCredentialsInput,
        output_schema = schemas.ListVoiceConnectorTerminationCredentialsOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/termination/credentials",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVoiceProfileDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListVoiceProfileDomains",
        input_schema = schemas.ListVoiceProfileDomainsInput,
        output_schema = schemas.ListVoiceProfileDomainsOutput,
        http_method = "GET",
        http_path = "/voice-profile-domains",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVoiceProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListVoiceProfiles",
        input_schema = schemas.ListVoiceProfilesInput,
        output_schema = schemas.ListVoiceProfilesOutput,
        http_method = "GET",
        http_path = "/voice-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putSipMediaApplicationAlexaSkillConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutSipMediaApplicationAlexaSkillConfiguration",
        input_schema = schemas.PutSipMediaApplicationAlexaSkillConfigurationInput,
        output_schema = schemas.PutSipMediaApplicationAlexaSkillConfigurationOutput,
        http_method = "PUT",
        http_path = "/sip-media-applications/{SipMediaApplicationId}/alexa-skill-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putSipMediaApplicationLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutSipMediaApplicationLoggingConfiguration",
        input_schema = schemas.PutSipMediaApplicationLoggingConfigurationInput,
        output_schema = schemas.PutSipMediaApplicationLoggingConfigurationOutput,
        http_method = "PUT",
        http_path = "/sip-media-applications/{SipMediaApplicationId}/logging-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putVoiceConnectorEmergencyCallingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutVoiceConnectorEmergencyCallingConfiguration",
        input_schema = schemas.PutVoiceConnectorEmergencyCallingConfigurationInput,
        output_schema = schemas.PutVoiceConnectorEmergencyCallingConfigurationOutput,
        http_method = "PUT",
        http_path = "/voice-connectors/{VoiceConnectorId}/emergency-calling-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putVoiceConnectorExternalSystemsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutVoiceConnectorExternalSystemsConfiguration",
        input_schema = schemas.PutVoiceConnectorExternalSystemsConfigurationInput,
        output_schema = schemas.PutVoiceConnectorExternalSystemsConfigurationOutput,
        http_method = "PUT",
        http_path = "/voice-connectors/{VoiceConnectorId}/external-systems-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putVoiceConnectorLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutVoiceConnectorLoggingConfiguration",
        input_schema = schemas.PutVoiceConnectorLoggingConfigurationInput,
        output_schema = schemas.PutVoiceConnectorLoggingConfigurationOutput,
        http_method = "PUT",
        http_path = "/voice-connectors/{VoiceConnectorId}/logging-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putVoiceConnectorOrigination(input, options)
    return self:invokeOperation(input, {
        name = "PutVoiceConnectorOrigination",
        input_schema = schemas.PutVoiceConnectorOriginationInput,
        output_schema = schemas.PutVoiceConnectorOriginationOutput,
        http_method = "PUT",
        http_path = "/voice-connectors/{VoiceConnectorId}/origination",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putVoiceConnectorProxy(input, options)
    return self:invokeOperation(input, {
        name = "PutVoiceConnectorProxy",
        input_schema = schemas.PutVoiceConnectorProxyInput,
        output_schema = schemas.PutVoiceConnectorProxyOutput,
        http_method = "PUT",
        http_path = "/voice-connectors/{VoiceConnectorId}/programmable-numbers/proxy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putVoiceConnectorStreamingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutVoiceConnectorStreamingConfiguration",
        input_schema = schemas.PutVoiceConnectorStreamingConfigurationInput,
        output_schema = schemas.PutVoiceConnectorStreamingConfigurationOutput,
        http_method = "PUT",
        http_path = "/voice-connectors/{VoiceConnectorId}/streaming-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putVoiceConnectorTermination(input, options)
    return self:invokeOperation(input, {
        name = "PutVoiceConnectorTermination",
        input_schema = schemas.PutVoiceConnectorTerminationInput,
        output_schema = schemas.PutVoiceConnectorTerminationOutput,
        http_method = "PUT",
        http_path = "/voice-connectors/{VoiceConnectorId}/termination",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putVoiceConnectorTerminationCredentials(input, options)
    return self:invokeOperation(input, {
        name = "PutVoiceConnectorTerminationCredentials",
        input_schema = schemas.PutVoiceConnectorTerminationCredentialsInput,
        output_schema = schemas.PutVoiceConnectorTerminationCredentialsOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}/termination/credentials?operation=put",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restorePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "RestorePhoneNumber",
        input_schema = schemas.RestorePhoneNumberInput,
        output_schema = schemas.RestorePhoneNumberOutput,
        http_method = "POST",
        http_path = "/phone-numbers/{PhoneNumberId}?operation=restore",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchAvailablePhoneNumbers(input, options)
    return self:invokeOperation(input, {
        name = "SearchAvailablePhoneNumbers",
        input_schema = schemas.SearchAvailablePhoneNumbersInput,
        output_schema = schemas.SearchAvailablePhoneNumbersOutput,
        http_method = "GET",
        http_path = "/search?type=phone-numbers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSpeakerSearchTask(input, options)
    return self:invokeOperation(input, {
        name = "StartSpeakerSearchTask",
        input_schema = schemas.StartSpeakerSearchTaskInput,
        output_schema = schemas.StartSpeakerSearchTaskOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startVoiceToneAnalysisTask(input, options)
    return self:invokeOperation(input, {
        name = "StartVoiceToneAnalysisTask",
        input_schema = schemas.StartVoiceToneAnalysisTaskInput,
        output_schema = schemas.StartVoiceToneAnalysisTaskOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopSpeakerSearchTask(input, options)
    return self:invokeOperation(input, {
        name = "StopSpeakerSearchTask",
        input_schema = schemas.StopSpeakerSearchTaskInput,
        output_schema = schemas.StopSpeakerSearchTaskOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks/{SpeakerSearchTaskId}?operation=stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopVoiceToneAnalysisTask(input, options)
    return self:invokeOperation(input, {
        name = "StopVoiceToneAnalysisTask",
        input_schema = schemas.StopVoiceToneAnalysisTaskInput,
        output_schema = schemas.StopVoiceToneAnalysisTaskOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}?operation=stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags?operation=tag-resource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "POST",
        http_path = "/tags?operation=untag-resource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGlobalSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGlobalSettings",
        input_schema = schemas.UpdateGlobalSettingsInput,
        output_schema = schemas.UpdateGlobalSettingsOutput,
        http_method = "PUT",
        http_path = "/settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePhoneNumber",
        input_schema = schemas.UpdatePhoneNumberInput,
        output_schema = schemas.UpdatePhoneNumberOutput,
        http_method = "POST",
        http_path = "/phone-numbers/{PhoneNumberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePhoneNumberSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePhoneNumberSettings",
        input_schema = schemas.UpdatePhoneNumberSettingsInput,
        output_schema = schemas.UpdatePhoneNumberSettingsOutput,
        http_method = "PUT",
        http_path = "/settings/phone-number",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProxySession(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProxySession",
        input_schema = schemas.UpdateProxySessionInput,
        output_schema = schemas.UpdateProxySessionOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}/proxy-sessions/{ProxySessionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSipMediaApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSipMediaApplication",
        input_schema = schemas.UpdateSipMediaApplicationInput,
        output_schema = schemas.UpdateSipMediaApplicationOutput,
        http_method = "PUT",
        http_path = "/sip-media-applications/{SipMediaApplicationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSipMediaApplicationCall(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSipMediaApplicationCall",
        input_schema = schemas.UpdateSipMediaApplicationCallInput,
        output_schema = schemas.UpdateSipMediaApplicationCallOutput,
        http_method = "POST",
        http_path = "/sip-media-applications/{SipMediaApplicationId}/calls/{TransactionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSipRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSipRule",
        input_schema = schemas.UpdateSipRuleInput,
        output_schema = schemas.UpdateSipRuleOutput,
        http_method = "PUT",
        http_path = "/sip-rules/{SipRuleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVoiceConnector(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVoiceConnector",
        input_schema = schemas.UpdateVoiceConnectorInput,
        output_schema = schemas.UpdateVoiceConnectorOutput,
        http_method = "PUT",
        http_path = "/voice-connectors/{VoiceConnectorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVoiceConnectorGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVoiceConnectorGroup",
        input_schema = schemas.UpdateVoiceConnectorGroupInput,
        output_schema = schemas.UpdateVoiceConnectorGroupOutput,
        http_method = "PUT",
        http_path = "/voice-connector-groups/{VoiceConnectorGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVoiceProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVoiceProfile",
        input_schema = schemas.UpdateVoiceProfileInput,
        output_schema = schemas.UpdateVoiceProfileOutput,
        http_method = "PUT",
        http_path = "/voice-profiles/{VoiceProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVoiceProfileDomain(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVoiceProfileDomain",
        input_schema = schemas.UpdateVoiceProfileDomainInput,
        output_schema = schemas.UpdateVoiceProfileDomainOutput,
        http_method = "PUT",
        http_path = "/voice-profile-domains/{VoiceProfileDomainId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:validateE911Address(input, options)
    return self:invokeOperation(input, {
        name = "ValidateE911Address",
        input_schema = schemas.ValidateE911AddressInput,
        output_schema = schemas.ValidateE911AddressOutput,
        http_method = "POST",
        http_path = "/emergency-calling/address",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
