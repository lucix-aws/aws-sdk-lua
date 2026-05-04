local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("chimesdkvoice.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("chimesdkvoice.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ChimeSDKTelephonyService"
    cfg.signing_name = "chime"
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

function Client:associatePhoneNumbersWithVoiceConnector(input, options)
    return self:invokeOperation(input, {
        name = "AssociatePhoneNumbersWithVoiceConnector",
        input_schema = types.AssociatePhoneNumbersWithVoiceConnectorInput,
        output_schema = types.AssociatePhoneNumbersWithVoiceConnectorOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}?operation=associate-phone-numbers",
    }, options)
end

function Client:associatePhoneNumbersWithVoiceConnectorGroup(input, options)
    return self:invokeOperation(input, {
        name = "AssociatePhoneNumbersWithVoiceConnectorGroup",
        input_schema = types.AssociatePhoneNumbersWithVoiceConnectorGroupInput,
        output_schema = types.AssociatePhoneNumbersWithVoiceConnectorGroupOutput,
        http_method = "POST",
        http_path = "/voice-connector-groups/{VoiceConnectorGroupId}?operation=associate-phone-numbers",
    }, options)
end

function Client:batchDeletePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeletePhoneNumber",
        input_schema = types.BatchDeletePhoneNumberInput,
        output_schema = types.BatchDeletePhoneNumberOutput,
        http_method = "POST",
        http_path = "/phone-numbers?operation=batch-delete",
    }, options)
end

function Client:batchUpdatePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdatePhoneNumber",
        input_schema = types.BatchUpdatePhoneNumberInput,
        output_schema = types.BatchUpdatePhoneNumberOutput,
        http_method = "POST",
        http_path = "/phone-numbers?operation=batch-update",
    }, options)
end

function Client:createPhoneNumberOrder(input, options)
    return self:invokeOperation(input, {
        name = "CreatePhoneNumberOrder",
        input_schema = types.CreatePhoneNumberOrderInput,
        output_schema = types.CreatePhoneNumberOrderOutput,
        http_method = "POST",
        http_path = "/phone-number-orders",
    }, options)
end

function Client:createProxySession(input, options)
    return self:invokeOperation(input, {
        name = "CreateProxySession",
        input_schema = types.CreateProxySessionInput,
        output_schema = types.CreateProxySessionOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}/proxy-sessions",
    }, options)
end

function Client:createSipMediaApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateSipMediaApplication",
        input_schema = types.CreateSipMediaApplicationInput,
        output_schema = types.CreateSipMediaApplicationOutput,
        http_method = "POST",
        http_path = "/sip-media-applications",
    }, options)
end

function Client:createSipMediaApplicationCall(input, options)
    return self:invokeOperation(input, {
        name = "CreateSipMediaApplicationCall",
        input_schema = types.CreateSipMediaApplicationCallInput,
        output_schema = types.CreateSipMediaApplicationCallOutput,
        http_method = "POST",
        http_path = "/sip-media-applications/{SipMediaApplicationId}/calls",
    }, options)
end

function Client:createSipRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateSipRule",
        input_schema = types.CreateSipRuleInput,
        output_schema = types.CreateSipRuleOutput,
        http_method = "POST",
        http_path = "/sip-rules",
    }, options)
end

function Client:createVoiceConnector(input, options)
    return self:invokeOperation(input, {
        name = "CreateVoiceConnector",
        input_schema = types.CreateVoiceConnectorInput,
        output_schema = types.CreateVoiceConnectorOutput,
        http_method = "POST",
        http_path = "/voice-connectors",
    }, options)
end

function Client:createVoiceConnectorGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateVoiceConnectorGroup",
        input_schema = types.CreateVoiceConnectorGroupInput,
        output_schema = types.CreateVoiceConnectorGroupOutput,
        http_method = "POST",
        http_path = "/voice-connector-groups",
    }, options)
end

function Client:createVoiceProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateVoiceProfile",
        input_schema = types.CreateVoiceProfileInput,
        output_schema = types.CreateVoiceProfileOutput,
        http_method = "POST",
        http_path = "/voice-profiles",
    }, options)
end

function Client:createVoiceProfileDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateVoiceProfileDomain",
        input_schema = types.CreateVoiceProfileDomainInput,
        output_schema = types.CreateVoiceProfileDomainOutput,
        http_method = "POST",
        http_path = "/voice-profile-domains",
    }, options)
end

function Client:deletePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "DeletePhoneNumber",
        input_schema = types.DeletePhoneNumberInput,
        output_schema = types.DeletePhoneNumberOutput,
        http_method = "DELETE",
        http_path = "/phone-numbers/{PhoneNumberId}",
    }, options)
end

function Client:deleteProxySession(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProxySession",
        input_schema = types.DeleteProxySessionInput,
        output_schema = types.DeleteProxySessionOutput,
        http_method = "DELETE",
        http_path = "/voice-connectors/{VoiceConnectorId}/proxy-sessions/{ProxySessionId}",
    }, options)
end

function Client:deleteSipMediaApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSipMediaApplication",
        input_schema = types.DeleteSipMediaApplicationInput,
        output_schema = types.DeleteSipMediaApplicationOutput,
        http_method = "DELETE",
        http_path = "/sip-media-applications/{SipMediaApplicationId}",
    }, options)
end

function Client:deleteSipRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSipRule",
        input_schema = types.DeleteSipRuleInput,
        output_schema = types.DeleteSipRuleOutput,
        http_method = "DELETE",
        http_path = "/sip-rules/{SipRuleId}",
    }, options)
end

function Client:deleteVoiceConnector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceConnector",
        input_schema = types.DeleteVoiceConnectorInput,
        output_schema = types.DeleteVoiceConnectorOutput,
        http_method = "DELETE",
        http_path = "/voice-connectors/{VoiceConnectorId}",
    }, options)
end

function Client:deleteVoiceConnectorEmergencyCallingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceConnectorEmergencyCallingConfiguration",
        input_schema = types.DeleteVoiceConnectorEmergencyCallingConfigurationInput,
        output_schema = types.DeleteVoiceConnectorEmergencyCallingConfigurationOutput,
        http_method = "DELETE",
        http_path = "/voice-connectors/{VoiceConnectorId}/emergency-calling-configuration",
    }, options)
end

function Client:deleteVoiceConnectorExternalSystemsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceConnectorExternalSystemsConfiguration",
        input_schema = types.DeleteVoiceConnectorExternalSystemsConfigurationInput,
        output_schema = types.DeleteVoiceConnectorExternalSystemsConfigurationOutput,
        http_method = "DELETE",
        http_path = "/voice-connectors/{VoiceConnectorId}/external-systems-configuration",
    }, options)
end

function Client:deleteVoiceConnectorGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceConnectorGroup",
        input_schema = types.DeleteVoiceConnectorGroupInput,
        output_schema = types.DeleteVoiceConnectorGroupOutput,
        http_method = "DELETE",
        http_path = "/voice-connector-groups/{VoiceConnectorGroupId}",
    }, options)
end

function Client:deleteVoiceConnectorOrigination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceConnectorOrigination",
        input_schema = types.DeleteVoiceConnectorOriginationInput,
        output_schema = types.DeleteVoiceConnectorOriginationOutput,
        http_method = "DELETE",
        http_path = "/voice-connectors/{VoiceConnectorId}/origination",
    }, options)
end

function Client:deleteVoiceConnectorProxy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceConnectorProxy",
        input_schema = types.DeleteVoiceConnectorProxyInput,
        output_schema = types.DeleteVoiceConnectorProxyOutput,
        http_method = "DELETE",
        http_path = "/voice-connectors/{VoiceConnectorId}/programmable-numbers/proxy",
    }, options)
end

function Client:deleteVoiceConnectorStreamingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceConnectorStreamingConfiguration",
        input_schema = types.DeleteVoiceConnectorStreamingConfigurationInput,
        output_schema = types.DeleteVoiceConnectorStreamingConfigurationOutput,
        http_method = "DELETE",
        http_path = "/voice-connectors/{VoiceConnectorId}/streaming-configuration",
    }, options)
end

function Client:deleteVoiceConnectorTermination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceConnectorTermination",
        input_schema = types.DeleteVoiceConnectorTerminationInput,
        output_schema = types.DeleteVoiceConnectorTerminationOutput,
        http_method = "DELETE",
        http_path = "/voice-connectors/{VoiceConnectorId}/termination",
    }, options)
end

function Client:deleteVoiceConnectorTerminationCredentials(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceConnectorTerminationCredentials",
        input_schema = types.DeleteVoiceConnectorTerminationCredentialsInput,
        output_schema = types.DeleteVoiceConnectorTerminationCredentialsOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}/termination/credentials?operation=delete",
    }, options)
end

function Client:deleteVoiceProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceProfile",
        input_schema = types.DeleteVoiceProfileInput,
        output_schema = types.DeleteVoiceProfileOutput,
        http_method = "DELETE",
        http_path = "/voice-profiles/{VoiceProfileId}",
    }, options)
end

function Client:deleteVoiceProfileDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceProfileDomain",
        input_schema = types.DeleteVoiceProfileDomainInput,
        output_schema = types.DeleteVoiceProfileDomainOutput,
        http_method = "DELETE",
        http_path = "/voice-profile-domains/{VoiceProfileDomainId}",
    }, options)
end

function Client:disassociatePhoneNumbersFromVoiceConnector(input, options)
    return self:invokeOperation(input, {
        name = "DisassociatePhoneNumbersFromVoiceConnector",
        input_schema = types.DisassociatePhoneNumbersFromVoiceConnectorInput,
        output_schema = types.DisassociatePhoneNumbersFromVoiceConnectorOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}?operation=disassociate-phone-numbers",
    }, options)
end

function Client:disassociatePhoneNumbersFromVoiceConnectorGroup(input, options)
    return self:invokeOperation(input, {
        name = "DisassociatePhoneNumbersFromVoiceConnectorGroup",
        input_schema = types.DisassociatePhoneNumbersFromVoiceConnectorGroupInput,
        output_schema = types.DisassociatePhoneNumbersFromVoiceConnectorGroupOutput,
        http_method = "POST",
        http_path = "/voice-connector-groups/{VoiceConnectorGroupId}?operation=disassociate-phone-numbers",
    }, options)
end

function Client:getGlobalSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetGlobalSettings",
        input_schema = types.GetGlobalSettingsInput,
        output_schema = types.GetGlobalSettingsOutput,
        http_method = "GET",
        http_path = "/settings",
    }, options)
end

function Client:getPhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "GetPhoneNumber",
        input_schema = types.GetPhoneNumberInput,
        output_schema = types.GetPhoneNumberOutput,
        http_method = "GET",
        http_path = "/phone-numbers/{PhoneNumberId}",
    }, options)
end

function Client:getPhoneNumberOrder(input, options)
    return self:invokeOperation(input, {
        name = "GetPhoneNumberOrder",
        input_schema = types.GetPhoneNumberOrderInput,
        output_schema = types.GetPhoneNumberOrderOutput,
        http_method = "GET",
        http_path = "/phone-number-orders/{PhoneNumberOrderId}",
    }, options)
end

function Client:getPhoneNumberSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetPhoneNumberSettings",
        input_schema = types.GetPhoneNumberSettingsInput,
        output_schema = types.GetPhoneNumberSettingsOutput,
        http_method = "GET",
        http_path = "/settings/phone-number",
    }, options)
end

function Client:getProxySession(input, options)
    return self:invokeOperation(input, {
        name = "GetProxySession",
        input_schema = types.GetProxySessionInput,
        output_schema = types.GetProxySessionOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/proxy-sessions/{ProxySessionId}",
    }, options)
end

function Client:getSipMediaApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetSipMediaApplication",
        input_schema = types.GetSipMediaApplicationInput,
        output_schema = types.GetSipMediaApplicationOutput,
        http_method = "GET",
        http_path = "/sip-media-applications/{SipMediaApplicationId}",
    }, options)
end

function Client:getSipMediaApplicationAlexaSkillConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetSipMediaApplicationAlexaSkillConfiguration",
        input_schema = types.GetSipMediaApplicationAlexaSkillConfigurationInput,
        output_schema = types.GetSipMediaApplicationAlexaSkillConfigurationOutput,
        http_method = "GET",
        http_path = "/sip-media-applications/{SipMediaApplicationId}/alexa-skill-configuration",
    }, options)
end

function Client:getSipMediaApplicationLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetSipMediaApplicationLoggingConfiguration",
        input_schema = types.GetSipMediaApplicationLoggingConfigurationInput,
        output_schema = types.GetSipMediaApplicationLoggingConfigurationOutput,
        http_method = "GET",
        http_path = "/sip-media-applications/{SipMediaApplicationId}/logging-configuration",
    }, options)
end

function Client:getSipRule(input, options)
    return self:invokeOperation(input, {
        name = "GetSipRule",
        input_schema = types.GetSipRuleInput,
        output_schema = types.GetSipRuleOutput,
        http_method = "GET",
        http_path = "/sip-rules/{SipRuleId}",
    }, options)
end

function Client:getSpeakerSearchTask(input, options)
    return self:invokeOperation(input, {
        name = "GetSpeakerSearchTask",
        input_schema = types.GetSpeakerSearchTaskInput,
        output_schema = types.GetSpeakerSearchTaskOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks/{SpeakerSearchTaskId}",
    }, options)
end

function Client:getVoiceConnector(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnector",
        input_schema = types.GetVoiceConnectorInput,
        output_schema = types.GetVoiceConnectorOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}",
    }, options)
end

function Client:getVoiceConnectorEmergencyCallingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnectorEmergencyCallingConfiguration",
        input_schema = types.GetVoiceConnectorEmergencyCallingConfigurationInput,
        output_schema = types.GetVoiceConnectorEmergencyCallingConfigurationOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/emergency-calling-configuration",
    }, options)
end

function Client:getVoiceConnectorExternalSystemsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnectorExternalSystemsConfiguration",
        input_schema = types.GetVoiceConnectorExternalSystemsConfigurationInput,
        output_schema = types.GetVoiceConnectorExternalSystemsConfigurationOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/external-systems-configuration",
    }, options)
end

function Client:getVoiceConnectorGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnectorGroup",
        input_schema = types.GetVoiceConnectorGroupInput,
        output_schema = types.GetVoiceConnectorGroupOutput,
        http_method = "GET",
        http_path = "/voice-connector-groups/{VoiceConnectorGroupId}",
    }, options)
end

function Client:getVoiceConnectorLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnectorLoggingConfiguration",
        input_schema = types.GetVoiceConnectorLoggingConfigurationInput,
        output_schema = types.GetVoiceConnectorLoggingConfigurationOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/logging-configuration",
    }, options)
end

function Client:getVoiceConnectorOrigination(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnectorOrigination",
        input_schema = types.GetVoiceConnectorOriginationInput,
        output_schema = types.GetVoiceConnectorOriginationOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/origination",
    }, options)
end

function Client:getVoiceConnectorProxy(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnectorProxy",
        input_schema = types.GetVoiceConnectorProxyInput,
        output_schema = types.GetVoiceConnectorProxyOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/programmable-numbers/proxy",
    }, options)
end

function Client:getVoiceConnectorStreamingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnectorStreamingConfiguration",
        input_schema = types.GetVoiceConnectorStreamingConfigurationInput,
        output_schema = types.GetVoiceConnectorStreamingConfigurationOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/streaming-configuration",
    }, options)
end

function Client:getVoiceConnectorTermination(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnectorTermination",
        input_schema = types.GetVoiceConnectorTerminationInput,
        output_schema = types.GetVoiceConnectorTerminationOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/termination",
    }, options)
end

function Client:getVoiceConnectorTerminationHealth(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceConnectorTerminationHealth",
        input_schema = types.GetVoiceConnectorTerminationHealthInput,
        output_schema = types.GetVoiceConnectorTerminationHealthOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/termination/health",
    }, options)
end

function Client:getVoiceProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceProfile",
        input_schema = types.GetVoiceProfileInput,
        output_schema = types.GetVoiceProfileOutput,
        http_method = "GET",
        http_path = "/voice-profiles/{VoiceProfileId}",
    }, options)
end

function Client:getVoiceProfileDomain(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceProfileDomain",
        input_schema = types.GetVoiceProfileDomainInput,
        output_schema = types.GetVoiceProfileDomainOutput,
        http_method = "GET",
        http_path = "/voice-profile-domains/{VoiceProfileDomainId}",
    }, options)
end

function Client:getVoiceToneAnalysisTask(input, options)
    return self:invokeOperation(input, {
        name = "GetVoiceToneAnalysisTask",
        input_schema = types.GetVoiceToneAnalysisTaskInput,
        output_schema = types.GetVoiceToneAnalysisTaskOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}",
    }, options)
end

function Client:listAvailableVoiceConnectorRegions(input, options)
    return self:invokeOperation(input, {
        name = "ListAvailableVoiceConnectorRegions",
        input_schema = types.ListAvailableVoiceConnectorRegionsInput,
        output_schema = types.ListAvailableVoiceConnectorRegionsOutput,
        http_method = "GET",
        http_path = "/voice-connector-regions",
    }, options)
end

function Client:listPhoneNumberOrders(input, options)
    return self:invokeOperation(input, {
        name = "ListPhoneNumberOrders",
        input_schema = types.ListPhoneNumberOrdersInput,
        output_schema = types.ListPhoneNumberOrdersOutput,
        http_method = "GET",
        http_path = "/phone-number-orders",
    }, options)
end

function Client:listPhoneNumbers(input, options)
    return self:invokeOperation(input, {
        name = "ListPhoneNumbers",
        input_schema = types.ListPhoneNumbersInput,
        output_schema = types.ListPhoneNumbersOutput,
        http_method = "GET",
        http_path = "/phone-numbers",
    }, options)
end

function Client:listProxySessions(input, options)
    return self:invokeOperation(input, {
        name = "ListProxySessions",
        input_schema = types.ListProxySessionsInput,
        output_schema = types.ListProxySessionsOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/proxy-sessions",
    }, options)
end

function Client:listSipMediaApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListSipMediaApplications",
        input_schema = types.ListSipMediaApplicationsInput,
        output_schema = types.ListSipMediaApplicationsOutput,
        http_method = "GET",
        http_path = "/sip-media-applications",
    }, options)
end

function Client:listSipRules(input, options)
    return self:invokeOperation(input, {
        name = "ListSipRules",
        input_schema = types.ListSipRulesInput,
        output_schema = types.ListSipRulesOutput,
        http_method = "GET",
        http_path = "/sip-rules",
    }, options)
end

function Client:listSupportedPhoneNumberCountries(input, options)
    return self:invokeOperation(input, {
        name = "ListSupportedPhoneNumberCountries",
        input_schema = types.ListSupportedPhoneNumberCountriesInput,
        output_schema = types.ListSupportedPhoneNumberCountriesOutput,
        http_method = "GET",
        http_path = "/phone-number-countries",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags",
    }, options)
end

function Client:listVoiceConnectorGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListVoiceConnectorGroups",
        input_schema = types.ListVoiceConnectorGroupsInput,
        output_schema = types.ListVoiceConnectorGroupsOutput,
        http_method = "GET",
        http_path = "/voice-connector-groups",
    }, options)
end

function Client:listVoiceConnectors(input, options)
    return self:invokeOperation(input, {
        name = "ListVoiceConnectors",
        input_schema = types.ListVoiceConnectorsInput,
        output_schema = types.ListVoiceConnectorsOutput,
        http_method = "GET",
        http_path = "/voice-connectors",
    }, options)
end

function Client:listVoiceConnectorTerminationCredentials(input, options)
    return self:invokeOperation(input, {
        name = "ListVoiceConnectorTerminationCredentials",
        input_schema = types.ListVoiceConnectorTerminationCredentialsInput,
        output_schema = types.ListVoiceConnectorTerminationCredentialsOutput,
        http_method = "GET",
        http_path = "/voice-connectors/{VoiceConnectorId}/termination/credentials",
    }, options)
end

function Client:listVoiceProfileDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListVoiceProfileDomains",
        input_schema = types.ListVoiceProfileDomainsInput,
        output_schema = types.ListVoiceProfileDomainsOutput,
        http_method = "GET",
        http_path = "/voice-profile-domains",
    }, options)
end

function Client:listVoiceProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListVoiceProfiles",
        input_schema = types.ListVoiceProfilesInput,
        output_schema = types.ListVoiceProfilesOutput,
        http_method = "GET",
        http_path = "/voice-profiles",
    }, options)
end

function Client:putSipMediaApplicationAlexaSkillConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutSipMediaApplicationAlexaSkillConfiguration",
        input_schema = types.PutSipMediaApplicationAlexaSkillConfigurationInput,
        output_schema = types.PutSipMediaApplicationAlexaSkillConfigurationOutput,
        http_method = "PUT",
        http_path = "/sip-media-applications/{SipMediaApplicationId}/alexa-skill-configuration",
    }, options)
end

function Client:putSipMediaApplicationLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutSipMediaApplicationLoggingConfiguration",
        input_schema = types.PutSipMediaApplicationLoggingConfigurationInput,
        output_schema = types.PutSipMediaApplicationLoggingConfigurationOutput,
        http_method = "PUT",
        http_path = "/sip-media-applications/{SipMediaApplicationId}/logging-configuration",
    }, options)
end

function Client:putVoiceConnectorEmergencyCallingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutVoiceConnectorEmergencyCallingConfiguration",
        input_schema = types.PutVoiceConnectorEmergencyCallingConfigurationInput,
        output_schema = types.PutVoiceConnectorEmergencyCallingConfigurationOutput,
        http_method = "PUT",
        http_path = "/voice-connectors/{VoiceConnectorId}/emergency-calling-configuration",
    }, options)
end

function Client:putVoiceConnectorExternalSystemsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutVoiceConnectorExternalSystemsConfiguration",
        input_schema = types.PutVoiceConnectorExternalSystemsConfigurationInput,
        output_schema = types.PutVoiceConnectorExternalSystemsConfigurationOutput,
        http_method = "PUT",
        http_path = "/voice-connectors/{VoiceConnectorId}/external-systems-configuration",
    }, options)
end

function Client:putVoiceConnectorLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutVoiceConnectorLoggingConfiguration",
        input_schema = types.PutVoiceConnectorLoggingConfigurationInput,
        output_schema = types.PutVoiceConnectorLoggingConfigurationOutput,
        http_method = "PUT",
        http_path = "/voice-connectors/{VoiceConnectorId}/logging-configuration",
    }, options)
end

function Client:putVoiceConnectorOrigination(input, options)
    return self:invokeOperation(input, {
        name = "PutVoiceConnectorOrigination",
        input_schema = types.PutVoiceConnectorOriginationInput,
        output_schema = types.PutVoiceConnectorOriginationOutput,
        http_method = "PUT",
        http_path = "/voice-connectors/{VoiceConnectorId}/origination",
    }, options)
end

function Client:putVoiceConnectorProxy(input, options)
    return self:invokeOperation(input, {
        name = "PutVoiceConnectorProxy",
        input_schema = types.PutVoiceConnectorProxyInput,
        output_schema = types.PutVoiceConnectorProxyOutput,
        http_method = "PUT",
        http_path = "/voice-connectors/{VoiceConnectorId}/programmable-numbers/proxy",
    }, options)
end

function Client:putVoiceConnectorStreamingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutVoiceConnectorStreamingConfiguration",
        input_schema = types.PutVoiceConnectorStreamingConfigurationInput,
        output_schema = types.PutVoiceConnectorStreamingConfigurationOutput,
        http_method = "PUT",
        http_path = "/voice-connectors/{VoiceConnectorId}/streaming-configuration",
    }, options)
end

function Client:putVoiceConnectorTermination(input, options)
    return self:invokeOperation(input, {
        name = "PutVoiceConnectorTermination",
        input_schema = types.PutVoiceConnectorTerminationInput,
        output_schema = types.PutVoiceConnectorTerminationOutput,
        http_method = "PUT",
        http_path = "/voice-connectors/{VoiceConnectorId}/termination",
    }, options)
end

function Client:putVoiceConnectorTerminationCredentials(input, options)
    return self:invokeOperation(input, {
        name = "PutVoiceConnectorTerminationCredentials",
        input_schema = types.PutVoiceConnectorTerminationCredentialsInput,
        output_schema = types.PutVoiceConnectorTerminationCredentialsOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}/termination/credentials?operation=put",
    }, options)
end

function Client:restorePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "RestorePhoneNumber",
        input_schema = types.RestorePhoneNumberInput,
        output_schema = types.RestorePhoneNumberOutput,
        http_method = "POST",
        http_path = "/phone-numbers/{PhoneNumberId}?operation=restore",
    }, options)
end

function Client:searchAvailablePhoneNumbers(input, options)
    return self:invokeOperation(input, {
        name = "SearchAvailablePhoneNumbers",
        input_schema = types.SearchAvailablePhoneNumbersInput,
        output_schema = types.SearchAvailablePhoneNumbersOutput,
        http_method = "GET",
        http_path = "/search?type=phone-numbers",
    }, options)
end

function Client:startSpeakerSearchTask(input, options)
    return self:invokeOperation(input, {
        name = "StartSpeakerSearchTask",
        input_schema = types.StartSpeakerSearchTaskInput,
        output_schema = types.StartSpeakerSearchTaskOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks",
    }, options)
end

function Client:startVoiceToneAnalysisTask(input, options)
    return self:invokeOperation(input, {
        name = "StartVoiceToneAnalysisTask",
        input_schema = types.StartVoiceToneAnalysisTaskInput,
        output_schema = types.StartVoiceToneAnalysisTaskOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks",
    }, options)
end

function Client:stopSpeakerSearchTask(input, options)
    return self:invokeOperation(input, {
        name = "StopSpeakerSearchTask",
        input_schema = types.StopSpeakerSearchTaskInput,
        output_schema = types.StopSpeakerSearchTaskOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks/{SpeakerSearchTaskId}?operation=stop",
    }, options)
end

function Client:stopVoiceToneAnalysisTask(input, options)
    return self:invokeOperation(input, {
        name = "StopVoiceToneAnalysisTask",
        input_schema = types.StopVoiceToneAnalysisTaskInput,
        output_schema = types.StopVoiceToneAnalysisTaskOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}?operation=stop",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags?operation=tag-resource",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/tags?operation=untag-resource",
    }, options)
end

function Client:updateGlobalSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGlobalSettings",
        input_schema = types.UpdateGlobalSettingsInput,
        output_schema = types.UpdateGlobalSettingsOutput,
        http_method = "PUT",
        http_path = "/settings",
    }, options)
end

function Client:updatePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePhoneNumber",
        input_schema = types.UpdatePhoneNumberInput,
        output_schema = types.UpdatePhoneNumberOutput,
        http_method = "POST",
        http_path = "/phone-numbers/{PhoneNumberId}",
    }, options)
end

function Client:updatePhoneNumberSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePhoneNumberSettings",
        input_schema = types.UpdatePhoneNumberSettingsInput,
        output_schema = types.UpdatePhoneNumberSettingsOutput,
        http_method = "PUT",
        http_path = "/settings/phone-number",
    }, options)
end

function Client:updateProxySession(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProxySession",
        input_schema = types.UpdateProxySessionInput,
        output_schema = types.UpdateProxySessionOutput,
        http_method = "POST",
        http_path = "/voice-connectors/{VoiceConnectorId}/proxy-sessions/{ProxySessionId}",
    }, options)
end

function Client:updateSipMediaApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSipMediaApplication",
        input_schema = types.UpdateSipMediaApplicationInput,
        output_schema = types.UpdateSipMediaApplicationOutput,
        http_method = "PUT",
        http_path = "/sip-media-applications/{SipMediaApplicationId}",
    }, options)
end

function Client:updateSipMediaApplicationCall(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSipMediaApplicationCall",
        input_schema = types.UpdateSipMediaApplicationCallInput,
        output_schema = types.UpdateSipMediaApplicationCallOutput,
        http_method = "POST",
        http_path = "/sip-media-applications/{SipMediaApplicationId}/calls/{TransactionId}",
    }, options)
end

function Client:updateSipRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSipRule",
        input_schema = types.UpdateSipRuleInput,
        output_schema = types.UpdateSipRuleOutput,
        http_method = "PUT",
        http_path = "/sip-rules/{SipRuleId}",
    }, options)
end

function Client:updateVoiceConnector(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVoiceConnector",
        input_schema = types.UpdateVoiceConnectorInput,
        output_schema = types.UpdateVoiceConnectorOutput,
        http_method = "PUT",
        http_path = "/voice-connectors/{VoiceConnectorId}",
    }, options)
end

function Client:updateVoiceConnectorGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVoiceConnectorGroup",
        input_schema = types.UpdateVoiceConnectorGroupInput,
        output_schema = types.UpdateVoiceConnectorGroupOutput,
        http_method = "PUT",
        http_path = "/voice-connector-groups/{VoiceConnectorGroupId}",
    }, options)
end

function Client:updateVoiceProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVoiceProfile",
        input_schema = types.UpdateVoiceProfileInput,
        output_schema = types.UpdateVoiceProfileOutput,
        http_method = "PUT",
        http_path = "/voice-profiles/{VoiceProfileId}",
    }, options)
end

function Client:updateVoiceProfileDomain(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVoiceProfileDomain",
        input_schema = types.UpdateVoiceProfileDomainInput,
        output_schema = types.UpdateVoiceProfileDomainOutput,
        http_method = "PUT",
        http_path = "/voice-profile-domains/{VoiceProfileDomainId}",
    }, options)
end

function Client:validateE911Address(input, options)
    return self:invokeOperation(input, {
        name = "ValidateE911Address",
        input_schema = types.ValidateE911AddressInput,
        output_schema = types.ValidateE911AddressOutput,
        http_method = "POST",
        http_path = "/emergency-calling/address",
    }, options)
end

return M
