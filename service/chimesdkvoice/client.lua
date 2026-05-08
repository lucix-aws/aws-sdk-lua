



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("chimesdkvoice.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("chimesdkvoice.schemas")
local traits = require("smithy.traits")
local types = require("chimesdkvoice.types")
local sdk_defaults = require("aws.sdk_defaults")






































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ChimeSDKTelephonyService"
   if not c.protocol then c.protocol = restjson_protocol.new() end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "chime", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:associatePhoneNumbersWithVoiceConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociatePhoneNumbersWithVoiceConnector, input, options)
end

function C:associatePhoneNumbersWithVoiceConnectorGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociatePhoneNumbersWithVoiceConnectorGroup, input, options)
end

function C:batchDeletePhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeletePhoneNumber, input, options)
end

function C:batchUpdatePhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdatePhoneNumber, input, options)
end

function C:createPhoneNumberOrder(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePhoneNumberOrder, input, options)
end

function C:createProxySession(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProxySession, input, options)
end

function C:createSipMediaApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSipMediaApplication, input, options)
end

function C:createSipMediaApplicationCall(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSipMediaApplicationCall, input, options)
end

function C:createSipRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSipRule, input, options)
end

function C:createVoiceConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVoiceConnector, input, options)
end

function C:createVoiceConnectorGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVoiceConnectorGroup, input, options)
end

function C:createVoiceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVoiceProfile, input, options)
end

function C:createVoiceProfileDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVoiceProfileDomain, input, options)
end

function C:deletePhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePhoneNumber, input, options)
end

function C:deleteProxySession(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProxySession, input, options)
end

function C:deleteSipMediaApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSipMediaApplication, input, options)
end

function C:deleteSipRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSipRule, input, options)
end

function C:deleteVoiceConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVoiceConnector, input, options)
end

function C:deleteVoiceConnectorEmergencyCallingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVoiceConnectorEmergencyCallingConfiguration, input, options)
end

function C:deleteVoiceConnectorExternalSystemsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVoiceConnectorExternalSystemsConfiguration, input, options)
end

function C:deleteVoiceConnectorGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVoiceConnectorGroup, input, options)
end

function C:deleteVoiceConnectorOrigination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVoiceConnectorOrigination, input, options)
end

function C:deleteVoiceConnectorProxy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVoiceConnectorProxy, input, options)
end

function C:deleteVoiceConnectorStreamingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVoiceConnectorStreamingConfiguration, input, options)
end

function C:deleteVoiceConnectorTermination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVoiceConnectorTermination, input, options)
end

function C:deleteVoiceConnectorTerminationCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVoiceConnectorTerminationCredentials, input, options)
end

function C:deleteVoiceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVoiceProfile, input, options)
end

function C:deleteVoiceProfileDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVoiceProfileDomain, input, options)
end

function C:disassociatePhoneNumbersFromVoiceConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociatePhoneNumbersFromVoiceConnector, input, options)
end

function C:disassociatePhoneNumbersFromVoiceConnectorGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociatePhoneNumbersFromVoiceConnectorGroup, input, options)
end

function C:getGlobalSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGlobalSettings, input, options)
end

function C:getPhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPhoneNumber, input, options)
end

function C:getPhoneNumberOrder(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPhoneNumberOrder, input, options)
end

function C:getPhoneNumberSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPhoneNumberSettings, input, options)
end

function C:getProxySession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProxySession, input, options)
end

function C:getSipMediaApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSipMediaApplication, input, options)
end

function C:getSipMediaApplicationAlexaSkillConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSipMediaApplicationAlexaSkillConfiguration, input, options)
end

function C:getSipMediaApplicationLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSipMediaApplicationLoggingConfiguration, input, options)
end

function C:getSipRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSipRule, input, options)
end

function C:getSpeakerSearchTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSpeakerSearchTask, input, options)
end

function C:getVoiceConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVoiceConnector, input, options)
end

function C:getVoiceConnectorEmergencyCallingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVoiceConnectorEmergencyCallingConfiguration, input, options)
end

function C:getVoiceConnectorExternalSystemsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVoiceConnectorExternalSystemsConfiguration, input, options)
end

function C:getVoiceConnectorGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVoiceConnectorGroup, input, options)
end

function C:getVoiceConnectorLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVoiceConnectorLoggingConfiguration, input, options)
end

function C:getVoiceConnectorOrigination(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVoiceConnectorOrigination, input, options)
end

function C:getVoiceConnectorProxy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVoiceConnectorProxy, input, options)
end

function C:getVoiceConnectorStreamingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVoiceConnectorStreamingConfiguration, input, options)
end

function C:getVoiceConnectorTermination(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVoiceConnectorTermination, input, options)
end

function C:getVoiceConnectorTerminationHealth(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVoiceConnectorTerminationHealth, input, options)
end

function C:getVoiceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVoiceProfile, input, options)
end

function C:getVoiceProfileDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVoiceProfileDomain, input, options)
end

function C:getVoiceToneAnalysisTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVoiceToneAnalysisTask, input, options)
end

function C:listAvailableVoiceConnectorRegions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAvailableVoiceConnectorRegions, input, options)
end

function C:listPhoneNumberOrders(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPhoneNumberOrders, input, options)
end

function C:listPhoneNumbers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPhoneNumbers, input, options)
end

function C:listProxySessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProxySessions, input, options)
end

function C:listSipMediaApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSipMediaApplications, input, options)
end

function C:listSipRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSipRules, input, options)
end

function C:listSupportedPhoneNumberCountries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSupportedPhoneNumberCountries, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listVoiceConnectorGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVoiceConnectorGroups, input, options)
end

function C:listVoiceConnectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVoiceConnectors, input, options)
end

function C:listVoiceConnectorTerminationCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVoiceConnectorTerminationCredentials, input, options)
end

function C:listVoiceProfileDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVoiceProfileDomains, input, options)
end

function C:listVoiceProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVoiceProfiles, input, options)
end

function C:putSipMediaApplicationAlexaSkillConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSipMediaApplicationAlexaSkillConfiguration, input, options)
end

function C:putSipMediaApplicationLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSipMediaApplicationLoggingConfiguration, input, options)
end

function C:putVoiceConnectorEmergencyCallingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutVoiceConnectorEmergencyCallingConfiguration, input, options)
end

function C:putVoiceConnectorExternalSystemsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutVoiceConnectorExternalSystemsConfiguration, input, options)
end

function C:putVoiceConnectorLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutVoiceConnectorLoggingConfiguration, input, options)
end

function C:putVoiceConnectorOrigination(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutVoiceConnectorOrigination, input, options)
end

function C:putVoiceConnectorProxy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutVoiceConnectorProxy, input, options)
end

function C:putVoiceConnectorStreamingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutVoiceConnectorStreamingConfiguration, input, options)
end

function C:putVoiceConnectorTermination(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutVoiceConnectorTermination, input, options)
end

function C:putVoiceConnectorTerminationCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutVoiceConnectorTerminationCredentials, input, options)
end

function C:restorePhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestorePhoneNumber, input, options)
end

function C:searchAvailablePhoneNumbers(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchAvailablePhoneNumbers, input, options)
end

function C:startSpeakerSearchTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSpeakerSearchTask, input, options)
end

function C:startVoiceToneAnalysisTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartVoiceToneAnalysisTask, input, options)
end

function C:stopSpeakerSearchTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopSpeakerSearchTask, input, options)
end

function C:stopVoiceToneAnalysisTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopVoiceToneAnalysisTask, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateGlobalSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGlobalSettings, input, options)
end

function C:updatePhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePhoneNumber, input, options)
end

function C:updatePhoneNumberSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePhoneNumberSettings, input, options)
end

function C:updateProxySession(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProxySession, input, options)
end

function C:updateSipMediaApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSipMediaApplication, input, options)
end

function C:updateSipMediaApplicationCall(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSipMediaApplicationCall, input, options)
end

function C:updateSipRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSipRule, input, options)
end

function C:updateVoiceConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVoiceConnector, input, options)
end

function C:updateVoiceConnectorGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVoiceConnectorGroup, input, options)
end

function C:updateVoiceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVoiceProfile, input, options)
end

function C:updateVoiceProfileDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVoiceProfileDomain, input, options)
end

function C:validateE911Address(input, options)
   return self:invokeOperation(schemas.Service, schemas.ValidateE911Address, input, options)
end

return M
