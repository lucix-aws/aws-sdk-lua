



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("pinpointsmsvoicev2.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("pinpointsmsvoicev2.schemas")
local traits = require("smithy.traits")
local types = require("pinpointsmsvoicev2.types")
local sdk_defaults = require("aws.sdk_defaults")
















































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "PinpointSMSVoiceV2"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.0", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "sms-voice", signing_region = c.region } }
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

function C:associateOriginationIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateOriginationIdentity, input, options)
end

function C:associateProtectConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateProtectConfiguration, input, options)
end

function C:carrierLookup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CarrierLookup, input, options)
end

function C:createConfigurationSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfigurationSet, input, options)
end

function C:createEventDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEventDestination, input, options)
end

function C:createNotifyConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNotifyConfiguration, input, options)
end

function C:createOptOutList(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOptOutList, input, options)
end

function C:createPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePool, input, options)
end

function C:createProtectConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProtectConfiguration, input, options)
end

function C:createRcsAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRcsAgent, input, options)
end

function C:createRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRegistration, input, options)
end

function C:createRegistrationAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRegistrationAssociation, input, options)
end

function C:createRegistrationAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRegistrationAttachment, input, options)
end

function C:createRegistrationVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRegistrationVersion, input, options)
end

function C:createVerifiedDestinationNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVerifiedDestinationNumber, input, options)
end

function C:deleteAccountDefaultProtectConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccountDefaultProtectConfiguration, input, options)
end

function C:deleteConfigurationSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfigurationSet, input, options)
end

function C:deleteDefaultMessageType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDefaultMessageType, input, options)
end

function C:deleteDefaultSenderId(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDefaultSenderId, input, options)
end

function C:deleteEventDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventDestination, input, options)
end

function C:deleteKeyword(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteKeyword, input, options)
end

function C:deleteMediaMessageSpendLimitOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMediaMessageSpendLimitOverride, input, options)
end

function C:deleteNotifyConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNotifyConfiguration, input, options)
end

function C:deleteNotifyMessageSpendLimitOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNotifyMessageSpendLimitOverride, input, options)
end

function C:deleteOptedOutNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOptedOutNumber, input, options)
end

function C:deleteOptOutList(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOptOutList, input, options)
end

function C:deletePool(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePool, input, options)
end

function C:deleteProtectConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProtectConfiguration, input, options)
end

function C:deleteProtectConfigurationRuleSetNumberOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProtectConfigurationRuleSetNumberOverride, input, options)
end

function C:deleteRcsAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRcsAgent, input, options)
end

function C:deleteRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRegistration, input, options)
end

function C:deleteRegistrationAttachment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRegistrationAttachment, input, options)
end

function C:deleteRegistrationFieldValue(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRegistrationFieldValue, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteTextMessageSpendLimitOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTextMessageSpendLimitOverride, input, options)
end

function C:deleteVerifiedDestinationNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVerifiedDestinationNumber, input, options)
end

function C:deleteVoiceMessageSpendLimitOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVoiceMessageSpendLimitOverride, input, options)
end

function C:describeAccountAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountAttributes, input, options)
end

function C:describeAccountLimits(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountLimits, input, options)
end

function C:describeConfigurationSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConfigurationSets, input, options)
end

function C:describeKeywords(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeKeywords, input, options)
end

function C:describeNotifyConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNotifyConfigurations, input, options)
end

function C:describeNotifyTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNotifyTemplates, input, options)
end

function C:describeOptedOutNumbers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOptedOutNumbers, input, options)
end

function C:describeOptOutLists(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOptOutLists, input, options)
end

function C:describePhoneNumbers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePhoneNumbers, input, options)
end

function C:describePools(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePools, input, options)
end

function C:describeProtectConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProtectConfigurations, input, options)
end

function C:describeRcsAgentCountryLaunchStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRcsAgentCountryLaunchStatus, input, options)
end

function C:describeRcsAgents(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRcsAgents, input, options)
end

function C:describeRegistrationAttachments(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRegistrationAttachments, input, options)
end

function C:describeRegistrationFieldDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRegistrationFieldDefinitions, input, options)
end

function C:describeRegistrationFieldValues(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRegistrationFieldValues, input, options)
end

function C:describeRegistrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRegistrations, input, options)
end

function C:describeRegistrationSectionDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRegistrationSectionDefinitions, input, options)
end

function C:describeRegistrationTypeDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRegistrationTypeDefinitions, input, options)
end

function C:describeRegistrationVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRegistrationVersions, input, options)
end

function C:describeSenderIds(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSenderIds, input, options)
end

function C:describeSpendLimits(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSpendLimits, input, options)
end

function C:describeVerifiedDestinationNumbers(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVerifiedDestinationNumbers, input, options)
end

function C:disassociateOriginationIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateOriginationIdentity, input, options)
end

function C:disassociateProtectConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateProtectConfiguration, input, options)
end

function C:discardRegistrationVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DiscardRegistrationVersion, input, options)
end

function C:getProtectConfigurationCountryRuleSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProtectConfigurationCountryRuleSet, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:listNotifyCountries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNotifyCountries, input, options)
end

function C:listPoolOriginationIdentities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPoolOriginationIdentities, input, options)
end

function C:listProtectConfigurationRuleSetNumberOverrides(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProtectConfigurationRuleSetNumberOverrides, input, options)
end

function C:listRegistrationAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRegistrationAssociations, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putKeyword(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutKeyword, input, options)
end

function C:putMessageFeedback(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutMessageFeedback, input, options)
end

function C:putOptedOutNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutOptedOutNumber, input, options)
end

function C:putProtectConfigurationRuleSetNumberOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutProtectConfigurationRuleSetNumberOverride, input, options)
end

function C:putRegistrationFieldValue(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRegistrationFieldValue, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:releasePhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReleasePhoneNumber, input, options)
end

function C:releaseSenderId(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReleaseSenderId, input, options)
end

function C:requestPhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.RequestPhoneNumber, input, options)
end

function C:requestSenderId(input, options)
   return self:invokeOperation(schemas.Service, schemas.RequestSenderId, input, options)
end

function C:sendDestinationNumberVerificationCode(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendDestinationNumberVerificationCode, input, options)
end

function C:sendMediaMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendMediaMessage, input, options)
end

function C:sendNotifyTextMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendNotifyTextMessage, input, options)
end

function C:sendNotifyVoiceMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendNotifyVoiceMessage, input, options)
end

function C:sendTextMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendTextMessage, input, options)
end

function C:sendVoiceMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendVoiceMessage, input, options)
end

function C:setAccountDefaultProtectConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetAccountDefaultProtectConfiguration, input, options)
end

function C:setDefaultMessageFeedbackEnabled(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetDefaultMessageFeedbackEnabled, input, options)
end

function C:setDefaultMessageType(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetDefaultMessageType, input, options)
end

function C:setDefaultSenderId(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetDefaultSenderId, input, options)
end

function C:setMediaMessageSpendLimitOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetMediaMessageSpendLimitOverride, input, options)
end

function C:setNotifyMessageSpendLimitOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetNotifyMessageSpendLimitOverride, input, options)
end

function C:setTextMessageSpendLimitOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetTextMessageSpendLimitOverride, input, options)
end

function C:setVoiceMessageSpendLimitOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetVoiceMessageSpendLimitOverride, input, options)
end

function C:submitRegistrationVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.SubmitRegistrationVersion, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateEventDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEventDestination, input, options)
end

function C:updateNotifyConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNotifyConfiguration, input, options)
end

function C:updatePhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePhoneNumber, input, options)
end

function C:updatePool(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePool, input, options)
end

function C:updateProtectConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProtectConfiguration, input, options)
end

function C:updateProtectConfigurationCountryRuleSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProtectConfigurationCountryRuleSet, input, options)
end

function C:updateRcsAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRcsAgent, input, options)
end

function C:updateSenderId(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSenderId, input, options)
end

function C:verifyDestinationNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.VerifyDestinationNumber, input, options)
end

return M
