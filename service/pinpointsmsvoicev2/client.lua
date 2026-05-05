local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("pinpointsmsvoicev2.endpoint_rules")
local schemas = require("pinpointsmsvoicev2.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "PinpointSMSVoiceV2"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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

function Client:associateOriginationIdentity(input, options)
    return self:invokeOperation(input, {
        name = "AssociateOriginationIdentity",
        input_schema = schemas.AssociateOriginationIdentityInput,
        output_schema = schemas.AssociateOriginationIdentityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateProtectConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "AssociateProtectConfiguration",
        input_schema = schemas.AssociateProtectConfigurationInput,
        output_schema = schemas.AssociateProtectConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:carrierLookup(input, options)
    return self:invokeOperation(input, {
        name = "CarrierLookup",
        input_schema = schemas.CarrierLookupInput,
        output_schema = schemas.CarrierLookupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConfigurationSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationSet",
        input_schema = schemas.CreateConfigurationSetInput,
        output_schema = schemas.CreateConfigurationSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventDestination",
        input_schema = schemas.CreateEventDestinationInput,
        output_schema = schemas.CreateEventDestinationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNotifyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateNotifyConfiguration",
        input_schema = schemas.CreateNotifyConfigurationInput,
        output_schema = schemas.CreateNotifyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOptOutList(input, options)
    return self:invokeOperation(input, {
        name = "CreateOptOutList",
        input_schema = schemas.CreateOptOutListInput,
        output_schema = schemas.CreateOptOutListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPool(input, options)
    return self:invokeOperation(input, {
        name = "CreatePool",
        input_schema = schemas.CreatePoolInput,
        output_schema = schemas.CreatePoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProtectConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateProtectConfiguration",
        input_schema = schemas.CreateProtectConfigurationInput,
        output_schema = schemas.CreateProtectConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRcsAgent(input, options)
    return self:invokeOperation(input, {
        name = "CreateRcsAgent",
        input_schema = schemas.CreateRcsAgentInput,
        output_schema = schemas.CreateRcsAgentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRegistration(input, options)
    return self:invokeOperation(input, {
        name = "CreateRegistration",
        input_schema = schemas.CreateRegistrationInput,
        output_schema = schemas.CreateRegistrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRegistrationAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateRegistrationAssociation",
        input_schema = schemas.CreateRegistrationAssociationInput,
        output_schema = schemas.CreateRegistrationAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRegistrationAttachment(input, options)
    return self:invokeOperation(input, {
        name = "CreateRegistrationAttachment",
        input_schema = schemas.CreateRegistrationAttachmentInput,
        output_schema = schemas.CreateRegistrationAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRegistrationVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateRegistrationVersion",
        input_schema = schemas.CreateRegistrationVersionInput,
        output_schema = schemas.CreateRegistrationVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVerifiedDestinationNumber(input, options)
    return self:invokeOperation(input, {
        name = "CreateVerifiedDestinationNumber",
        input_schema = schemas.CreateVerifiedDestinationNumberInput,
        output_schema = schemas.CreateVerifiedDestinationNumberOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccountDefaultProtectConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountDefaultProtectConfiguration",
        input_schema = schemas.DeleteAccountDefaultProtectConfigurationInput,
        output_schema = schemas.DeleteAccountDefaultProtectConfigurationOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDefaultMessageType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDefaultMessageType",
        input_schema = schemas.DeleteDefaultMessageTypeInput,
        output_schema = schemas.DeleteDefaultMessageTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDefaultSenderId(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDefaultSenderId",
        input_schema = schemas.DeleteDefaultSenderIdInput,
        output_schema = schemas.DeleteDefaultSenderIdOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventDestination",
        input_schema = schemas.DeleteEventDestinationInput,
        output_schema = schemas.DeleteEventDestinationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteKeyword(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKeyword",
        input_schema = schemas.DeleteKeywordInput,
        output_schema = schemas.DeleteKeywordOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMediaMessageSpendLimitOverride(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMediaMessageSpendLimitOverride",
        input_schema = schemas.DeleteMediaMessageSpendLimitOverrideInput,
        output_schema = schemas.DeleteMediaMessageSpendLimitOverrideOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNotifyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotifyConfiguration",
        input_schema = schemas.DeleteNotifyConfigurationInput,
        output_schema = schemas.DeleteNotifyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNotifyMessageSpendLimitOverride(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotifyMessageSpendLimitOverride",
        input_schema = schemas.DeleteNotifyMessageSpendLimitOverrideInput,
        output_schema = schemas.DeleteNotifyMessageSpendLimitOverrideOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOptedOutNumber(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOptedOutNumber",
        input_schema = schemas.DeleteOptedOutNumberInput,
        output_schema = schemas.DeleteOptedOutNumberOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOptOutList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOptOutList",
        input_schema = schemas.DeleteOptOutListInput,
        output_schema = schemas.DeleteOptOutListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePool(input, options)
    return self:invokeOperation(input, {
        name = "DeletePool",
        input_schema = schemas.DeletePoolInput,
        output_schema = schemas.DeletePoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProtectConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProtectConfiguration",
        input_schema = schemas.DeleteProtectConfigurationInput,
        output_schema = schemas.DeleteProtectConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProtectConfigurationRuleSetNumberOverride(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProtectConfigurationRuleSetNumberOverride",
        input_schema = schemas.DeleteProtectConfigurationRuleSetNumberOverrideInput,
        output_schema = schemas.DeleteProtectConfigurationRuleSetNumberOverrideOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRcsAgent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRcsAgent",
        input_schema = schemas.DeleteRcsAgentInput,
        output_schema = schemas.DeleteRcsAgentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRegistration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRegistration",
        input_schema = schemas.DeleteRegistrationInput,
        output_schema = schemas.DeleteRegistrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRegistrationAttachment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRegistrationAttachment",
        input_schema = schemas.DeleteRegistrationAttachmentInput,
        output_schema = schemas.DeleteRegistrationAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRegistrationFieldValue(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRegistrationFieldValue",
        input_schema = schemas.DeleteRegistrationFieldValueInput,
        output_schema = schemas.DeleteRegistrationFieldValueOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = schemas.DeleteResourcePolicyInput,
        output_schema = schemas.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTextMessageSpendLimitOverride(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTextMessageSpendLimitOverride",
        input_schema = schemas.DeleteTextMessageSpendLimitOverrideInput,
        output_schema = schemas.DeleteTextMessageSpendLimitOverrideOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVerifiedDestinationNumber(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVerifiedDestinationNumber",
        input_schema = schemas.DeleteVerifiedDestinationNumberInput,
        output_schema = schemas.DeleteVerifiedDestinationNumberOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVoiceMessageSpendLimitOverride(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVoiceMessageSpendLimitOverride",
        input_schema = schemas.DeleteVoiceMessageSpendLimitOverrideInput,
        output_schema = schemas.DeleteVoiceMessageSpendLimitOverrideOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountAttributes",
        input_schema = schemas.DescribeAccountAttributesInput,
        output_schema = schemas.DescribeAccountAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountLimits",
        input_schema = schemas.DescribeAccountLimitsInput,
        output_schema = schemas.DescribeAccountLimitsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConfigurationSets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConfigurationSets",
        input_schema = schemas.DescribeConfigurationSetsInput,
        output_schema = schemas.DescribeConfigurationSetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeKeywords(input, options)
    return self:invokeOperation(input, {
        name = "DescribeKeywords",
        input_schema = schemas.DescribeKeywordsInput,
        output_schema = schemas.DescribeKeywordsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNotifyConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNotifyConfigurations",
        input_schema = schemas.DescribeNotifyConfigurationsInput,
        output_schema = schemas.DescribeNotifyConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNotifyTemplates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNotifyTemplates",
        input_schema = schemas.DescribeNotifyTemplatesInput,
        output_schema = schemas.DescribeNotifyTemplatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOptedOutNumbers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOptedOutNumbers",
        input_schema = schemas.DescribeOptedOutNumbersInput,
        output_schema = schemas.DescribeOptedOutNumbersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOptOutLists(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOptOutLists",
        input_schema = schemas.DescribeOptOutListsInput,
        output_schema = schemas.DescribeOptOutListsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePhoneNumbers(input, options)
    return self:invokeOperation(input, {
        name = "DescribePhoneNumbers",
        input_schema = schemas.DescribePhoneNumbersInput,
        output_schema = schemas.DescribePhoneNumbersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePools(input, options)
    return self:invokeOperation(input, {
        name = "DescribePools",
        input_schema = schemas.DescribePoolsInput,
        output_schema = schemas.DescribePoolsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProtectConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProtectConfigurations",
        input_schema = schemas.DescribeProtectConfigurationsInput,
        output_schema = schemas.DescribeProtectConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRcsAgentCountryLaunchStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRcsAgentCountryLaunchStatus",
        input_schema = schemas.DescribeRcsAgentCountryLaunchStatusInput,
        output_schema = schemas.DescribeRcsAgentCountryLaunchStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRcsAgents(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRcsAgents",
        input_schema = schemas.DescribeRcsAgentsInput,
        output_schema = schemas.DescribeRcsAgentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRegistrationAttachments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegistrationAttachments",
        input_schema = schemas.DescribeRegistrationAttachmentsInput,
        output_schema = schemas.DescribeRegistrationAttachmentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRegistrationFieldDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegistrationFieldDefinitions",
        input_schema = schemas.DescribeRegistrationFieldDefinitionsInput,
        output_schema = schemas.DescribeRegistrationFieldDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRegistrationFieldValues(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegistrationFieldValues",
        input_schema = schemas.DescribeRegistrationFieldValuesInput,
        output_schema = schemas.DescribeRegistrationFieldValuesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRegistrations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegistrations",
        input_schema = schemas.DescribeRegistrationsInput,
        output_schema = schemas.DescribeRegistrationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRegistrationSectionDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegistrationSectionDefinitions",
        input_schema = schemas.DescribeRegistrationSectionDefinitionsInput,
        output_schema = schemas.DescribeRegistrationSectionDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRegistrationTypeDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegistrationTypeDefinitions",
        input_schema = schemas.DescribeRegistrationTypeDefinitionsInput,
        output_schema = schemas.DescribeRegistrationTypeDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRegistrationVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegistrationVersions",
        input_schema = schemas.DescribeRegistrationVersionsInput,
        output_schema = schemas.DescribeRegistrationVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSenderIds(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSenderIds",
        input_schema = schemas.DescribeSenderIdsInput,
        output_schema = schemas.DescribeSenderIdsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSpendLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSpendLimits",
        input_schema = schemas.DescribeSpendLimitsInput,
        output_schema = schemas.DescribeSpendLimitsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVerifiedDestinationNumbers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVerifiedDestinationNumbers",
        input_schema = schemas.DescribeVerifiedDestinationNumbersInput,
        output_schema = schemas.DescribeVerifiedDestinationNumbersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateOriginationIdentity(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateOriginationIdentity",
        input_schema = schemas.DisassociateOriginationIdentityInput,
        output_schema = schemas.DisassociateOriginationIdentityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateProtectConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateProtectConfiguration",
        input_schema = schemas.DisassociateProtectConfigurationInput,
        output_schema = schemas.DisassociateProtectConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:discardRegistrationVersion(input, options)
    return self:invokeOperation(input, {
        name = "DiscardRegistrationVersion",
        input_schema = schemas.DiscardRegistrationVersionInput,
        output_schema = schemas.DiscardRegistrationVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProtectConfigurationCountryRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "GetProtectConfigurationCountryRuleSet",
        input_schema = schemas.GetProtectConfigurationCountryRuleSetInput,
        output_schema = schemas.GetProtectConfigurationCountryRuleSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = schemas.GetResourcePolicyInput,
        output_schema = schemas.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNotifyCountries(input, options)
    return self:invokeOperation(input, {
        name = "ListNotifyCountries",
        input_schema = schemas.ListNotifyCountriesInput,
        output_schema = schemas.ListNotifyCountriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPoolOriginationIdentities(input, options)
    return self:invokeOperation(input, {
        name = "ListPoolOriginationIdentities",
        input_schema = schemas.ListPoolOriginationIdentitiesInput,
        output_schema = schemas.ListPoolOriginationIdentitiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProtectConfigurationRuleSetNumberOverrides(input, options)
    return self:invokeOperation(input, {
        name = "ListProtectConfigurationRuleSetNumberOverrides",
        input_schema = schemas.ListProtectConfigurationRuleSetNumberOverridesInput,
        output_schema = schemas.ListProtectConfigurationRuleSetNumberOverridesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRegistrationAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListRegistrationAssociations",
        input_schema = schemas.ListRegistrationAssociationsInput,
        output_schema = schemas.ListRegistrationAssociationsOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putKeyword(input, options)
    return self:invokeOperation(input, {
        name = "PutKeyword",
        input_schema = schemas.PutKeywordInput,
        output_schema = schemas.PutKeywordOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putMessageFeedback(input, options)
    return self:invokeOperation(input, {
        name = "PutMessageFeedback",
        input_schema = schemas.PutMessageFeedbackInput,
        output_schema = schemas.PutMessageFeedbackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putOptedOutNumber(input, options)
    return self:invokeOperation(input, {
        name = "PutOptedOutNumber",
        input_schema = schemas.PutOptedOutNumberInput,
        output_schema = schemas.PutOptedOutNumberOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putProtectConfigurationRuleSetNumberOverride(input, options)
    return self:invokeOperation(input, {
        name = "PutProtectConfigurationRuleSetNumberOverride",
        input_schema = schemas.PutProtectConfigurationRuleSetNumberOverrideInput,
        output_schema = schemas.PutProtectConfigurationRuleSetNumberOverrideOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRegistrationFieldValue(input, options)
    return self:invokeOperation(input, {
        name = "PutRegistrationFieldValue",
        input_schema = schemas.PutRegistrationFieldValueInput,
        output_schema = schemas.PutRegistrationFieldValueOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = schemas.PutResourcePolicyInput,
        output_schema = schemas.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:releasePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "ReleasePhoneNumber",
        input_schema = schemas.ReleasePhoneNumberInput,
        output_schema = schemas.ReleasePhoneNumberOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:releaseSenderId(input, options)
    return self:invokeOperation(input, {
        name = "ReleaseSenderId",
        input_schema = schemas.ReleaseSenderIdInput,
        output_schema = schemas.ReleaseSenderIdOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:requestPhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "RequestPhoneNumber",
        input_schema = schemas.RequestPhoneNumberInput,
        output_schema = schemas.RequestPhoneNumberOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:requestSenderId(input, options)
    return self:invokeOperation(input, {
        name = "RequestSenderId",
        input_schema = schemas.RequestSenderIdInput,
        output_schema = schemas.RequestSenderIdOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendDestinationNumberVerificationCode(input, options)
    return self:invokeOperation(input, {
        name = "SendDestinationNumberVerificationCode",
        input_schema = schemas.SendDestinationNumberVerificationCodeInput,
        output_schema = schemas.SendDestinationNumberVerificationCodeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendMediaMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendMediaMessage",
        input_schema = schemas.SendMediaMessageInput,
        output_schema = schemas.SendMediaMessageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendNotifyTextMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendNotifyTextMessage",
        input_schema = schemas.SendNotifyTextMessageInput,
        output_schema = schemas.SendNotifyTextMessageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendNotifyVoiceMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendNotifyVoiceMessage",
        input_schema = schemas.SendNotifyVoiceMessageInput,
        output_schema = schemas.SendNotifyVoiceMessageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendTextMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendTextMessage",
        input_schema = schemas.SendTextMessageInput,
        output_schema = schemas.SendTextMessageOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setAccountDefaultProtectConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "SetAccountDefaultProtectConfiguration",
        input_schema = schemas.SetAccountDefaultProtectConfigurationInput,
        output_schema = schemas.SetAccountDefaultProtectConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setDefaultMessageFeedbackEnabled(input, options)
    return self:invokeOperation(input, {
        name = "SetDefaultMessageFeedbackEnabled",
        input_schema = schemas.SetDefaultMessageFeedbackEnabledInput,
        output_schema = schemas.SetDefaultMessageFeedbackEnabledOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setDefaultMessageType(input, options)
    return self:invokeOperation(input, {
        name = "SetDefaultMessageType",
        input_schema = schemas.SetDefaultMessageTypeInput,
        output_schema = schemas.SetDefaultMessageTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setDefaultSenderId(input, options)
    return self:invokeOperation(input, {
        name = "SetDefaultSenderId",
        input_schema = schemas.SetDefaultSenderIdInput,
        output_schema = schemas.SetDefaultSenderIdOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setMediaMessageSpendLimitOverride(input, options)
    return self:invokeOperation(input, {
        name = "SetMediaMessageSpendLimitOverride",
        input_schema = schemas.SetMediaMessageSpendLimitOverrideInput,
        output_schema = schemas.SetMediaMessageSpendLimitOverrideOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setNotifyMessageSpendLimitOverride(input, options)
    return self:invokeOperation(input, {
        name = "SetNotifyMessageSpendLimitOverride",
        input_schema = schemas.SetNotifyMessageSpendLimitOverrideInput,
        output_schema = schemas.SetNotifyMessageSpendLimitOverrideOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setTextMessageSpendLimitOverride(input, options)
    return self:invokeOperation(input, {
        name = "SetTextMessageSpendLimitOverride",
        input_schema = schemas.SetTextMessageSpendLimitOverrideInput,
        output_schema = schemas.SetTextMessageSpendLimitOverrideOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setVoiceMessageSpendLimitOverride(input, options)
    return self:invokeOperation(input, {
        name = "SetVoiceMessageSpendLimitOverride",
        input_schema = schemas.SetVoiceMessageSpendLimitOverrideInput,
        output_schema = schemas.SetVoiceMessageSpendLimitOverrideOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:submitRegistrationVersion(input, options)
    return self:invokeOperation(input, {
        name = "SubmitRegistrationVersion",
        input_schema = schemas.SubmitRegistrationVersionInput,
        output_schema = schemas.SubmitRegistrationVersionOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventDestination",
        input_schema = schemas.UpdateEventDestinationInput,
        output_schema = schemas.UpdateEventDestinationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNotifyConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNotifyConfiguration",
        input_schema = schemas.UpdateNotifyConfigurationInput,
        output_schema = schemas.UpdateNotifyConfigurationOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePool(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePool",
        input_schema = schemas.UpdatePoolInput,
        output_schema = schemas.UpdatePoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProtectConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProtectConfiguration",
        input_schema = schemas.UpdateProtectConfigurationInput,
        output_schema = schemas.UpdateProtectConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProtectConfigurationCountryRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProtectConfigurationCountryRuleSet",
        input_schema = schemas.UpdateProtectConfigurationCountryRuleSetInput,
        output_schema = schemas.UpdateProtectConfigurationCountryRuleSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRcsAgent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRcsAgent",
        input_schema = schemas.UpdateRcsAgentInput,
        output_schema = schemas.UpdateRcsAgentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSenderId(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSenderId",
        input_schema = schemas.UpdateSenderIdInput,
        output_schema = schemas.UpdateSenderIdOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:verifyDestinationNumber(input, options)
    return self:invokeOperation(input, {
        name = "VerifyDestinationNumber",
        input_schema = schemas.VerifyDestinationNumberInput,
        output_schema = schemas.VerifyDestinationNumberOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
