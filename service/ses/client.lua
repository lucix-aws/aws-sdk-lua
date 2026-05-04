local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ses.endpoint_rules")
local query_protocol = require("protocol.query")
local sdk_defaults = require("sdk_defaults")
local types = require("ses.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SimpleEmailService"
    cfg.signing_name = "simpleemailservice"
    if not cfg.protocol then
        cfg.protocol = query_protocol.new("awsQuery")
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

function Client:cloneReceiptRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "CloneReceiptRuleSet",
        input_schema = types.CloneReceiptRuleSetInput,
        output_schema = types.CloneReceiptRuleSetOutput,
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

function Client:createConfigurationSetEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationSetEventDestination",
        input_schema = types.CreateConfigurationSetEventDestinationInput,
        output_schema = types.CreateConfigurationSetEventDestinationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createConfigurationSetTrackingOptions(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationSetTrackingOptions",
        input_schema = types.CreateConfigurationSetTrackingOptionsInput,
        output_schema = types.CreateConfigurationSetTrackingOptionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createCustomVerificationEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomVerificationEmailTemplate",
        input_schema = types.CreateCustomVerificationEmailTemplateInput,
        output_schema = types.CreateCustomVerificationEmailTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createReceiptFilter(input, options)
    return self:invokeOperation(input, {
        name = "CreateReceiptFilter",
        input_schema = types.CreateReceiptFilterInput,
        output_schema = types.CreateReceiptFilterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createReceiptRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateReceiptRule",
        input_schema = types.CreateReceiptRuleInput,
        output_schema = types.CreateReceiptRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createReceiptRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateReceiptRuleSet",
        input_schema = types.CreateReceiptRuleSetInput,
        output_schema = types.CreateReceiptRuleSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateTemplate",
        input_schema = types.CreateTemplateInput,
        output_schema = types.CreateTemplateOutput,
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

function Client:deleteConfigurationSetEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationSetEventDestination",
        input_schema = types.DeleteConfigurationSetEventDestinationInput,
        output_schema = types.DeleteConfigurationSetEventDestinationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteConfigurationSetTrackingOptions(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationSetTrackingOptions",
        input_schema = types.DeleteConfigurationSetTrackingOptionsInput,
        output_schema = types.DeleteConfigurationSetTrackingOptionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCustomVerificationEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomVerificationEmailTemplate",
        input_schema = types.DeleteCustomVerificationEmailTemplateInput,
        output_schema = types.DeleteCustomVerificationEmailTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteIdentity(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIdentity",
        input_schema = types.DeleteIdentityInput,
        output_schema = types.DeleteIdentityOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteIdentityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIdentityPolicy",
        input_schema = types.DeleteIdentityPolicyInput,
        output_schema = types.DeleteIdentityPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteReceiptFilter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReceiptFilter",
        input_schema = types.DeleteReceiptFilterInput,
        output_schema = types.DeleteReceiptFilterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteReceiptRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReceiptRule",
        input_schema = types.DeleteReceiptRuleInput,
        output_schema = types.DeleteReceiptRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteReceiptRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReceiptRuleSet",
        input_schema = types.DeleteReceiptRuleSetInput,
        output_schema = types.DeleteReceiptRuleSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTemplate",
        input_schema = types.DeleteTemplateInput,
        output_schema = types.DeleteTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteVerifiedEmailAddress(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVerifiedEmailAddress",
        input_schema = types.DeleteVerifiedEmailAddressInput,
        output_schema = types.DeleteVerifiedEmailAddressOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeActiveReceiptRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "DescribeActiveReceiptRuleSet",
        input_schema = types.DescribeActiveReceiptRuleSetInput,
        output_schema = types.DescribeActiveReceiptRuleSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeConfigurationSet(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConfigurationSet",
        input_schema = types.DescribeConfigurationSetInput,
        output_schema = types.DescribeConfigurationSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeReceiptRule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReceiptRule",
        input_schema = types.DescribeReceiptRuleInput,
        output_schema = types.DescribeReceiptRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeReceiptRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReceiptRuleSet",
        input_schema = types.DescribeReceiptRuleSetInput,
        output_schema = types.DescribeReceiptRuleSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAccountSendingEnabled(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountSendingEnabled",
        input_schema = types.GetAccountSendingEnabledInput,
        output_schema = types.GetAccountSendingEnabledOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCustomVerificationEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetCustomVerificationEmailTemplate",
        input_schema = types.GetCustomVerificationEmailTemplateInput,
        output_schema = types.GetCustomVerificationEmailTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getIdentityDkimAttributes(input, options)
    return self:invokeOperation(input, {
        name = "GetIdentityDkimAttributes",
        input_schema = types.GetIdentityDkimAttributesInput,
        output_schema = types.GetIdentityDkimAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getIdentityMailFromDomainAttributes(input, options)
    return self:invokeOperation(input, {
        name = "GetIdentityMailFromDomainAttributes",
        input_schema = types.GetIdentityMailFromDomainAttributesInput,
        output_schema = types.GetIdentityMailFromDomainAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getIdentityNotificationAttributes(input, options)
    return self:invokeOperation(input, {
        name = "GetIdentityNotificationAttributes",
        input_schema = types.GetIdentityNotificationAttributesInput,
        output_schema = types.GetIdentityNotificationAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getIdentityPolicies(input, options)
    return self:invokeOperation(input, {
        name = "GetIdentityPolicies",
        input_schema = types.GetIdentityPoliciesInput,
        output_schema = types.GetIdentityPoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getIdentityVerificationAttributes(input, options)
    return self:invokeOperation(input, {
        name = "GetIdentityVerificationAttributes",
        input_schema = types.GetIdentityVerificationAttributesInput,
        output_schema = types.GetIdentityVerificationAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSendQuota(input, options)
    return self:invokeOperation(input, {
        name = "GetSendQuota",
        input_schema = types.GetSendQuotaInput,
        output_schema = types.GetSendQuotaOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSendStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetSendStatistics",
        input_schema = types.GetSendStatisticsInput,
        output_schema = types.GetSendStatisticsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetTemplate",
        input_schema = types.GetTemplateInput,
        output_schema = types.GetTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listConfigurationSets(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationSets",
        input_schema = types.ListConfigurationSetsInput,
        output_schema = types.ListConfigurationSetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listCustomVerificationEmailTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomVerificationEmailTemplates",
        input_schema = types.ListCustomVerificationEmailTemplatesInput,
        output_schema = types.ListCustomVerificationEmailTemplatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listIdentities(input, options)
    return self:invokeOperation(input, {
        name = "ListIdentities",
        input_schema = types.ListIdentitiesInput,
        output_schema = types.ListIdentitiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listIdentityPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListIdentityPolicies",
        input_schema = types.ListIdentityPoliciesInput,
        output_schema = types.ListIdentityPoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listReceiptFilters(input, options)
    return self:invokeOperation(input, {
        name = "ListReceiptFilters",
        input_schema = types.ListReceiptFiltersInput,
        output_schema = types.ListReceiptFiltersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listReceiptRuleSets(input, options)
    return self:invokeOperation(input, {
        name = "ListReceiptRuleSets",
        input_schema = types.ListReceiptRuleSetsInput,
        output_schema = types.ListReceiptRuleSetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplates",
        input_schema = types.ListTemplatesInput,
        output_schema = types.ListTemplatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listVerifiedEmailAddresses(input, options)
    return self:invokeOperation(input, {
        name = "ListVerifiedEmailAddresses",
        input_schema = types.ListVerifiedEmailAddressesInput,
        output_schema = types.ListVerifiedEmailAddressesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putConfigurationSetDeliveryOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetDeliveryOptions",
        input_schema = types.PutConfigurationSetDeliveryOptionsInput,
        output_schema = types.PutConfigurationSetDeliveryOptionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putIdentityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutIdentityPolicy",
        input_schema = types.PutIdentityPolicyInput,
        output_schema = types.PutIdentityPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:reorderReceiptRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "ReorderReceiptRuleSet",
        input_schema = types.ReorderReceiptRuleSetInput,
        output_schema = types.ReorderReceiptRuleSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:sendBounce(input, options)
    return self:invokeOperation(input, {
        name = "SendBounce",
        input_schema = types.SendBounceInput,
        output_schema = types.SendBounceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:sendBulkTemplatedEmail(input, options)
    return self:invokeOperation(input, {
        name = "SendBulkTemplatedEmail",
        input_schema = types.SendBulkTemplatedEmailInput,
        output_schema = types.SendBulkTemplatedEmailOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:sendCustomVerificationEmail(input, options)
    return self:invokeOperation(input, {
        name = "SendCustomVerificationEmail",
        input_schema = types.SendCustomVerificationEmailInput,
        output_schema = types.SendCustomVerificationEmailOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:sendEmail(input, options)
    return self:invokeOperation(input, {
        name = "SendEmail",
        input_schema = types.SendEmailInput,
        output_schema = types.SendEmailOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:sendRawEmail(input, options)
    return self:invokeOperation(input, {
        name = "SendRawEmail",
        input_schema = types.SendRawEmailInput,
        output_schema = types.SendRawEmailOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:sendTemplatedEmail(input, options)
    return self:invokeOperation(input, {
        name = "SendTemplatedEmail",
        input_schema = types.SendTemplatedEmailInput,
        output_schema = types.SendTemplatedEmailOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setActiveReceiptRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "SetActiveReceiptRuleSet",
        input_schema = types.SetActiveReceiptRuleSetInput,
        output_schema = types.SetActiveReceiptRuleSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setIdentityDkimEnabled(input, options)
    return self:invokeOperation(input, {
        name = "SetIdentityDkimEnabled",
        input_schema = types.SetIdentityDkimEnabledInput,
        output_schema = types.SetIdentityDkimEnabledOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setIdentityFeedbackForwardingEnabled(input, options)
    return self:invokeOperation(input, {
        name = "SetIdentityFeedbackForwardingEnabled",
        input_schema = types.SetIdentityFeedbackForwardingEnabledInput,
        output_schema = types.SetIdentityFeedbackForwardingEnabledOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setIdentityHeadersInNotificationsEnabled(input, options)
    return self:invokeOperation(input, {
        name = "SetIdentityHeadersInNotificationsEnabled",
        input_schema = types.SetIdentityHeadersInNotificationsEnabledInput,
        output_schema = types.SetIdentityHeadersInNotificationsEnabledOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setIdentityMailFromDomain(input, options)
    return self:invokeOperation(input, {
        name = "SetIdentityMailFromDomain",
        input_schema = types.SetIdentityMailFromDomainInput,
        output_schema = types.SetIdentityMailFromDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setIdentityNotificationTopic(input, options)
    return self:invokeOperation(input, {
        name = "SetIdentityNotificationTopic",
        input_schema = types.SetIdentityNotificationTopicInput,
        output_schema = types.SetIdentityNotificationTopicOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setReceiptRulePosition(input, options)
    return self:invokeOperation(input, {
        name = "SetReceiptRulePosition",
        input_schema = types.SetReceiptRulePositionInput,
        output_schema = types.SetReceiptRulePositionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:testRenderTemplate(input, options)
    return self:invokeOperation(input, {
        name = "TestRenderTemplate",
        input_schema = types.TestRenderTemplateInput,
        output_schema = types.TestRenderTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateAccountSendingEnabled(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountSendingEnabled",
        input_schema = types.UpdateAccountSendingEnabledInput,
        output_schema = types.UpdateAccountSendingEnabledOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateConfigurationSetEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfigurationSetEventDestination",
        input_schema = types.UpdateConfigurationSetEventDestinationInput,
        output_schema = types.UpdateConfigurationSetEventDestinationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateConfigurationSetReputationMetricsEnabled(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfigurationSetReputationMetricsEnabled",
        input_schema = types.UpdateConfigurationSetReputationMetricsEnabledInput,
        output_schema = types.UpdateConfigurationSetReputationMetricsEnabledOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateConfigurationSetSendingEnabled(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfigurationSetSendingEnabled",
        input_schema = types.UpdateConfigurationSetSendingEnabledInput,
        output_schema = types.UpdateConfigurationSetSendingEnabledOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateConfigurationSetTrackingOptions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfigurationSetTrackingOptions",
        input_schema = types.UpdateConfigurationSetTrackingOptionsInput,
        output_schema = types.UpdateConfigurationSetTrackingOptionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateCustomVerificationEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCustomVerificationEmailTemplate",
        input_schema = types.UpdateCustomVerificationEmailTemplateInput,
        output_schema = types.UpdateCustomVerificationEmailTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateReceiptRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReceiptRule",
        input_schema = types.UpdateReceiptRuleInput,
        output_schema = types.UpdateReceiptRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTemplate",
        input_schema = types.UpdateTemplateInput,
        output_schema = types.UpdateTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:verifyDomainDkim(input, options)
    return self:invokeOperation(input, {
        name = "VerifyDomainDkim",
        input_schema = types.VerifyDomainDkimInput,
        output_schema = types.VerifyDomainDkimOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:verifyDomainIdentity(input, options)
    return self:invokeOperation(input, {
        name = "VerifyDomainIdentity",
        input_schema = types.VerifyDomainIdentityInput,
        output_schema = types.VerifyDomainIdentityOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:verifyEmailAddress(input, options)
    return self:invokeOperation(input, {
        name = "VerifyEmailAddress",
        input_schema = types.VerifyEmailAddressInput,
        output_schema = types.VerifyEmailAddressOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:verifyEmailIdentity(input, options)
    return self:invokeOperation(input, {
        name = "VerifyEmailIdentity",
        input_schema = types.VerifyEmailIdentityInput,
        output_schema = types.VerifyEmailIdentityOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
