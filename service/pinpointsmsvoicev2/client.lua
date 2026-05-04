local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("pinpointsmsvoicev2.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("pinpointsmsvoicev2.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PinpointSMSVoiceV2"
    cfg.signing_name = "sms-voice"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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

function Client:associateOriginationIdentity(input, options)
    return self:invokeOperation(input, {
        name = "AssociateOriginationIdentity",
        input_schema = types.AssociateOriginationIdentityInput,
        output_schema = types.AssociateOriginationIdentityOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateProtectConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "AssociateProtectConfiguration",
        input_schema = types.AssociateProtectConfigurationInput,
        output_schema = types.AssociateProtectConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:carrierLookup(input, options)
    return self:invokeOperation(input, {
        name = "CarrierLookup",
        input_schema = types.CarrierLookupInput,
        output_schema = types.CarrierLookupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createConfigurationSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationSet",
        input_schema = types.CreateConfigurationSetInput,
        output_schema = types.CreateConfigurationSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventDestination",
        input_schema = types.CreateEventDestinationInput,
        output_schema = types.CreateEventDestinationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createNotifyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateNotifyConfiguration",
        input_schema = types.CreateNotifyConfigurationInput,
        output_schema = types.CreateNotifyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createOptOutList(input, options)
    return self:invokeOperation(input, {
        name = "CreateOptOutList",
        input_schema = types.CreateOptOutListInput,
        output_schema = types.CreateOptOutListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createPool(input, options)
    return self:invokeOperation(input, {
        name = "CreatePool",
        input_schema = types.CreatePoolInput,
        output_schema = types.CreatePoolOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createProtectConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateProtectConfiguration",
        input_schema = types.CreateProtectConfigurationInput,
        output_schema = types.CreateProtectConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createRcsAgent(input, options)
    return self:invokeOperation(input, {
        name = "CreateRcsAgent",
        input_schema = types.CreateRcsAgentInput,
        output_schema = types.CreateRcsAgentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createRegistration(input, options)
    return self:invokeOperation(input, {
        name = "CreateRegistration",
        input_schema = types.CreateRegistrationInput,
        output_schema = types.CreateRegistrationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createRegistrationAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateRegistrationAssociation",
        input_schema = types.CreateRegistrationAssociationInput,
        output_schema = types.CreateRegistrationAssociationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createRegistrationAttachment(input, options)
    return self:invokeOperation(input, {
        name = "CreateRegistrationAttachment",
        input_schema = types.CreateRegistrationAttachmentInput,
        output_schema = types.CreateRegistrationAttachmentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createRegistrationVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateRegistrationVersion",
        input_schema = types.CreateRegistrationVersionInput,
        output_schema = types.CreateRegistrationVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createVerifiedDestinationNumber(input, options)
    return self:invokeOperation(input, {
        name = "CreateVerifiedDestinationNumber",
        input_schema = types.CreateVerifiedDestinationNumberInput,
        output_schema = types.CreateVerifiedDestinationNumberOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAccountDefaultProtectConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountDefaultProtectConfiguration",
        input_schema = types.DeleteAccountDefaultProtectConfigurationInput,
        output_schema = types.DeleteAccountDefaultProtectConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteConfigurationSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationSet",
        input_schema = types.DeleteConfigurationSetInput,
        output_schema = types.DeleteConfigurationSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDefaultMessageType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDefaultMessageType",
        input_schema = types.DeleteDefaultMessageTypeInput,
        output_schema = types.DeleteDefaultMessageTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDefaultSenderId(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDefaultSenderId",
        input_schema = types.DeleteDefaultSenderIdInput,
        output_schema = types.DeleteDefaultSenderIdOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventDestination",
        input_schema = types.DeleteEventDestinationInput,
        output_schema = types.DeleteEventDestinationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteKeyword(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKeyword",
        input_schema = types.DeleteKeywordInput,
        output_schema = types.DeleteKeywordOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteMediaMessageSpendLimitOverride(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMediaMessageSpendLimitOverride",
        input_schema = types.DeleteMediaMessageSpendLimitOverrideInput,
        output_schema = types.DeleteMediaMessageSpendLimitOverrideOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteNotifyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotifyConfiguration",
        input_schema = types.DeleteNotifyConfigurationInput,
        output_schema = types.DeleteNotifyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteNotifyMessageSpendLimitOverride(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotifyMessageSpendLimitOverride",
        input_schema = types.DeleteNotifyMessageSpendLimitOverrideInput,
        output_schema = types.DeleteNotifyMessageSpendLimitOverrideOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteOptedOutNumber(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOptedOutNumber",
        input_schema = types.DeleteOptedOutNumberInput,
        output_schema = types.DeleteOptedOutNumberOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteOptOutList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOptOutList",
        input_schema = types.DeleteOptOutListInput,
        output_schema = types.DeleteOptOutListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deletePool(input, options)
    return self:invokeOperation(input, {
        name = "DeletePool",
        input_schema = types.DeletePoolInput,
        output_schema = types.DeletePoolOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteProtectConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProtectConfiguration",
        input_schema = types.DeleteProtectConfigurationInput,
        output_schema = types.DeleteProtectConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteProtectConfigurationRuleSetNumberOverride(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProtectConfigurationRuleSetNumberOverride",
        input_schema = types.DeleteProtectConfigurationRuleSetNumberOverrideInput,
        output_schema = types.DeleteProtectConfigurationRuleSetNumberOverrideOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRcsAgent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRcsAgent",
        input_schema = types.DeleteRcsAgentInput,
        output_schema = types.DeleteRcsAgentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRegistration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRegistration",
        input_schema = types.DeleteRegistrationInput,
        output_schema = types.DeleteRegistrationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRegistrationAttachment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRegistrationAttachment",
        input_schema = types.DeleteRegistrationAttachmentInput,
        output_schema = types.DeleteRegistrationAttachmentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRegistrationFieldValue(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRegistrationFieldValue",
        input_schema = types.DeleteRegistrationFieldValueInput,
        output_schema = types.DeleteRegistrationFieldValueOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTextMessageSpendLimitOverride(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTextMessageSpendLimitOverride",
        input_schema = types.DeleteTextMessageSpendLimitOverrideInput,
        output_schema = types.DeleteTextMessageSpendLimitOverrideOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteVerifiedDestinationNumber(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVerifiedDestinationNumber",
        input_schema = types.DeleteVerifiedDestinationNumberInput,
        output_schema = types.DeleteVerifiedDestinationNumberOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteVoiceMessageSpendLimitOverride(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceMessageSpendLimitOverride",
        input_schema = types.DeleteVoiceMessageSpendLimitOverrideInput,
        output_schema = types.DeleteVoiceMessageSpendLimitOverrideOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAccountAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountAttributes",
        input_schema = types.DescribeAccountAttributesInput,
        output_schema = types.DescribeAccountAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAccountLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountLimits",
        input_schema = types.DescribeAccountLimitsInput,
        output_schema = types.DescribeAccountLimitsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeConfigurationSets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConfigurationSets",
        input_schema = types.DescribeConfigurationSetsInput,
        output_schema = types.DescribeConfigurationSetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeKeywords(input, options)
    return self:invokeOperation(input, {
        name = "DescribeKeywords",
        input_schema = types.DescribeKeywordsInput,
        output_schema = types.DescribeKeywordsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeNotifyConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNotifyConfigurations",
        input_schema = types.DescribeNotifyConfigurationsInput,
        output_schema = types.DescribeNotifyConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeNotifyTemplates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNotifyTemplates",
        input_schema = types.DescribeNotifyTemplatesInput,
        output_schema = types.DescribeNotifyTemplatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeOptedOutNumbers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOptedOutNumbers",
        input_schema = types.DescribeOptedOutNumbersInput,
        output_schema = types.DescribeOptedOutNumbersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeOptOutLists(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOptOutLists",
        input_schema = types.DescribeOptOutListsInput,
        output_schema = types.DescribeOptOutListsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describePhoneNumbers(input, options)
    return self:invokeOperation(input, {
        name = "DescribePhoneNumbers",
        input_schema = types.DescribePhoneNumbersInput,
        output_schema = types.DescribePhoneNumbersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describePools(input, options)
    return self:invokeOperation(input, {
        name = "DescribePools",
        input_schema = types.DescribePoolsInput,
        output_schema = types.DescribePoolsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeProtectConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProtectConfigurations",
        input_schema = types.DescribeProtectConfigurationsInput,
        output_schema = types.DescribeProtectConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRcsAgentCountryLaunchStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRcsAgentCountryLaunchStatus",
        input_schema = types.DescribeRcsAgentCountryLaunchStatusInput,
        output_schema = types.DescribeRcsAgentCountryLaunchStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRcsAgents(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRcsAgents",
        input_schema = types.DescribeRcsAgentsInput,
        output_schema = types.DescribeRcsAgentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRegistrationAttachments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegistrationAttachments",
        input_schema = types.DescribeRegistrationAttachmentsInput,
        output_schema = types.DescribeRegistrationAttachmentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRegistrationFieldDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegistrationFieldDefinitions",
        input_schema = types.DescribeRegistrationFieldDefinitionsInput,
        output_schema = types.DescribeRegistrationFieldDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRegistrationFieldValues(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegistrationFieldValues",
        input_schema = types.DescribeRegistrationFieldValuesInput,
        output_schema = types.DescribeRegistrationFieldValuesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRegistrations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegistrations",
        input_schema = types.DescribeRegistrationsInput,
        output_schema = types.DescribeRegistrationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRegistrationSectionDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegistrationSectionDefinitions",
        input_schema = types.DescribeRegistrationSectionDefinitionsInput,
        output_schema = types.DescribeRegistrationSectionDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRegistrationTypeDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegistrationTypeDefinitions",
        input_schema = types.DescribeRegistrationTypeDefinitionsInput,
        output_schema = types.DescribeRegistrationTypeDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRegistrationVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegistrationVersions",
        input_schema = types.DescribeRegistrationVersionsInput,
        output_schema = types.DescribeRegistrationVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSenderIds(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSenderIds",
        input_schema = types.DescribeSenderIdsInput,
        output_schema = types.DescribeSenderIdsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSpendLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSpendLimits",
        input_schema = types.DescribeSpendLimitsInput,
        output_schema = types.DescribeSpendLimitsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeVerifiedDestinationNumbers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVerifiedDestinationNumbers",
        input_schema = types.DescribeVerifiedDestinationNumbersInput,
        output_schema = types.DescribeVerifiedDestinationNumbersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateOriginationIdentity(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateOriginationIdentity",
        input_schema = types.DisassociateOriginationIdentityInput,
        output_schema = types.DisassociateOriginationIdentityOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateProtectConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateProtectConfiguration",
        input_schema = types.DisassociateProtectConfigurationInput,
        output_schema = types.DisassociateProtectConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:discardRegistrationVersion(input, options)
    return self:invokeOperation(input, {
        name = "DiscardRegistrationVersion",
        input_schema = types.DiscardRegistrationVersionInput,
        output_schema = types.DiscardRegistrationVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getProtectConfigurationCountryRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "GetProtectConfigurationCountryRuleSet",
        input_schema = types.GetProtectConfigurationCountryRuleSetInput,
        output_schema = types.GetProtectConfigurationCountryRuleSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listNotifyCountries(input, options)
    return self:invokeOperation(input, {
        name = "ListNotifyCountries",
        input_schema = types.ListNotifyCountriesInput,
        output_schema = types.ListNotifyCountriesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPoolOriginationIdentities(input, options)
    return self:invokeOperation(input, {
        name = "ListPoolOriginationIdentities",
        input_schema = types.ListPoolOriginationIdentitiesInput,
        output_schema = types.ListPoolOriginationIdentitiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listProtectConfigurationRuleSetNumberOverrides(input, options)
    return self:invokeOperation(input, {
        name = "ListProtectConfigurationRuleSetNumberOverrides",
        input_schema = types.ListProtectConfigurationRuleSetNumberOverridesInput,
        output_schema = types.ListProtectConfigurationRuleSetNumberOverridesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRegistrationAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListRegistrationAssociations",
        input_schema = types.ListRegistrationAssociationsInput,
        output_schema = types.ListRegistrationAssociationsOutput,
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

function Client:putKeyword(input, options)
    return self:invokeOperation(input, {
        name = "PutKeyword",
        input_schema = types.PutKeywordInput,
        output_schema = types.PutKeywordOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putMessageFeedback(input, options)
    return self:invokeOperation(input, {
        name = "PutMessageFeedback",
        input_schema = types.PutMessageFeedbackInput,
        output_schema = types.PutMessageFeedbackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putOptedOutNumber(input, options)
    return self:invokeOperation(input, {
        name = "PutOptedOutNumber",
        input_schema = types.PutOptedOutNumberInput,
        output_schema = types.PutOptedOutNumberOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putProtectConfigurationRuleSetNumberOverride(input, options)
    return self:invokeOperation(input, {
        name = "PutProtectConfigurationRuleSetNumberOverride",
        input_schema = types.PutProtectConfigurationRuleSetNumberOverrideInput,
        output_schema = types.PutProtectConfigurationRuleSetNumberOverrideOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putRegistrationFieldValue(input, options)
    return self:invokeOperation(input, {
        name = "PutRegistrationFieldValue",
        input_schema = types.PutRegistrationFieldValueInput,
        output_schema = types.PutRegistrationFieldValueOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:releasePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "ReleasePhoneNumber",
        input_schema = types.ReleasePhoneNumberInput,
        output_schema = types.ReleasePhoneNumberOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:releaseSenderId(input, options)
    return self:invokeOperation(input, {
        name = "ReleaseSenderId",
        input_schema = types.ReleaseSenderIdInput,
        output_schema = types.ReleaseSenderIdOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:requestPhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "RequestPhoneNumber",
        input_schema = types.RequestPhoneNumberInput,
        output_schema = types.RequestPhoneNumberOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:requestSenderId(input, options)
    return self:invokeOperation(input, {
        name = "RequestSenderId",
        input_schema = types.RequestSenderIdInput,
        output_schema = types.RequestSenderIdOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:sendDestinationNumberVerificationCode(input, options)
    return self:invokeOperation(input, {
        name = "SendDestinationNumberVerificationCode",
        input_schema = types.SendDestinationNumberVerificationCodeInput,
        output_schema = types.SendDestinationNumberVerificationCodeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:sendMediaMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendMediaMessage",
        input_schema = types.SendMediaMessageInput,
        output_schema = types.SendMediaMessageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:sendNotifyTextMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendNotifyTextMessage",
        input_schema = types.SendNotifyTextMessageInput,
        output_schema = types.SendNotifyTextMessageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:sendNotifyVoiceMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendNotifyVoiceMessage",
        input_schema = types.SendNotifyVoiceMessageInput,
        output_schema = types.SendNotifyVoiceMessageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:sendTextMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendTextMessage",
        input_schema = types.SendTextMessageInput,
        output_schema = types.SendTextMessageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:sendVoiceMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendVoiceMessage",
        input_schema = types.SendVoiceMessageInput,
        output_schema = types.SendVoiceMessageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setAccountDefaultProtectConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "SetAccountDefaultProtectConfiguration",
        input_schema = types.SetAccountDefaultProtectConfigurationInput,
        output_schema = types.SetAccountDefaultProtectConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setDefaultMessageFeedbackEnabled(input, options)
    return self:invokeOperation(input, {
        name = "SetDefaultMessageFeedbackEnabled",
        input_schema = types.SetDefaultMessageFeedbackEnabledInput,
        output_schema = types.SetDefaultMessageFeedbackEnabledOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setDefaultMessageType(input, options)
    return self:invokeOperation(input, {
        name = "SetDefaultMessageType",
        input_schema = types.SetDefaultMessageTypeInput,
        output_schema = types.SetDefaultMessageTypeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setDefaultSenderId(input, options)
    return self:invokeOperation(input, {
        name = "SetDefaultSenderId",
        input_schema = types.SetDefaultSenderIdInput,
        output_schema = types.SetDefaultSenderIdOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setMediaMessageSpendLimitOverride(input, options)
    return self:invokeOperation(input, {
        name = "SetMediaMessageSpendLimitOverride",
        input_schema = types.SetMediaMessageSpendLimitOverrideInput,
        output_schema = types.SetMediaMessageSpendLimitOverrideOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setNotifyMessageSpendLimitOverride(input, options)
    return self:invokeOperation(input, {
        name = "SetNotifyMessageSpendLimitOverride",
        input_schema = types.SetNotifyMessageSpendLimitOverrideInput,
        output_schema = types.SetNotifyMessageSpendLimitOverrideOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setTextMessageSpendLimitOverride(input, options)
    return self:invokeOperation(input, {
        name = "SetTextMessageSpendLimitOverride",
        input_schema = types.SetTextMessageSpendLimitOverrideInput,
        output_schema = types.SetTextMessageSpendLimitOverrideOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setVoiceMessageSpendLimitOverride(input, options)
    return self:invokeOperation(input, {
        name = "SetVoiceMessageSpendLimitOverride",
        input_schema = types.SetVoiceMessageSpendLimitOverrideInput,
        output_schema = types.SetVoiceMessageSpendLimitOverrideOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:submitRegistrationVersion(input, options)
    return self:invokeOperation(input, {
        name = "SubmitRegistrationVersion",
        input_schema = types.SubmitRegistrationVersionInput,
        output_schema = types.SubmitRegistrationVersionOutput,
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

function Client:updateEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventDestination",
        input_schema = types.UpdateEventDestinationInput,
        output_schema = types.UpdateEventDestinationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateNotifyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNotifyConfiguration",
        input_schema = types.UpdateNotifyConfigurationInput,
        output_schema = types.UpdateNotifyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updatePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePhoneNumber",
        input_schema = types.UpdatePhoneNumberInput,
        output_schema = types.UpdatePhoneNumberOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updatePool(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePool",
        input_schema = types.UpdatePoolInput,
        output_schema = types.UpdatePoolOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateProtectConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProtectConfiguration",
        input_schema = types.UpdateProtectConfigurationInput,
        output_schema = types.UpdateProtectConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateProtectConfigurationCountryRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProtectConfigurationCountryRuleSet",
        input_schema = types.UpdateProtectConfigurationCountryRuleSetInput,
        output_schema = types.UpdateProtectConfigurationCountryRuleSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateRcsAgent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRcsAgent",
        input_schema = types.UpdateRcsAgentInput,
        output_schema = types.UpdateRcsAgentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSenderId(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSenderId",
        input_schema = types.UpdateSenderIdInput,
        output_schema = types.UpdateSenderIdOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:verifyDestinationNumber(input, options)
    return self:invokeOperation(input, {
        name = "VerifyDestinationNumber",
        input_schema = types.VerifyDestinationNumberInput,
        output_schema = types.VerifyDestinationNumberOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
