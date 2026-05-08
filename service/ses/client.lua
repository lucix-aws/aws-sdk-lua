



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("ses.endpoint_rules")
local query_protocol = require("smithy.protocol.awsquery")
local schemas = require("ses.schemas")
local traits = require("smithy.traits")
local types = require("ses.types")
local sdk_defaults = require("aws.sdk_defaults")













































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "SimpleEmailService"
   if not c.protocol then c.protocol = query_protocol.new("awsQuery") end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ses", signing_region = c.region } }
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

function C:cloneReceiptRuleSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CloneReceiptRuleSet, input, options)
end

function C:createConfigurationSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfigurationSet, input, options)
end

function C:createConfigurationSetEventDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfigurationSetEventDestination, input, options)
end

function C:createConfigurationSetTrackingOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfigurationSetTrackingOptions, input, options)
end

function C:createCustomVerificationEmailTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomVerificationEmailTemplate, input, options)
end

function C:createReceiptFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReceiptFilter, input, options)
end

function C:createReceiptRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReceiptRule, input, options)
end

function C:createReceiptRuleSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReceiptRuleSet, input, options)
end

function C:createTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTemplate, input, options)
end

function C:deleteConfigurationSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfigurationSet, input, options)
end

function C:deleteConfigurationSetEventDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfigurationSetEventDestination, input, options)
end

function C:deleteConfigurationSetTrackingOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfigurationSetTrackingOptions, input, options)
end

function C:deleteCustomVerificationEmailTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomVerificationEmailTemplate, input, options)
end

function C:deleteIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIdentity, input, options)
end

function C:deleteIdentityPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIdentityPolicy, input, options)
end

function C:deleteReceiptFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReceiptFilter, input, options)
end

function C:deleteReceiptRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReceiptRule, input, options)
end

function C:deleteReceiptRuleSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReceiptRuleSet, input, options)
end

function C:deleteTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTemplate, input, options)
end

function C:deleteVerifiedEmailAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVerifiedEmailAddress, input, options)
end

function C:describeActiveReceiptRuleSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeActiveReceiptRuleSet, input, options)
end

function C:describeConfigurationSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConfigurationSet, input, options)
end

function C:describeReceiptRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReceiptRule, input, options)
end

function C:describeReceiptRuleSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReceiptRuleSet, input, options)
end

function C:getAccountSendingEnabled(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountSendingEnabled, input, options)
end

function C:getCustomVerificationEmailTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCustomVerificationEmailTemplate, input, options)
end

function C:getIdentityDkimAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdentityDkimAttributes, input, options)
end

function C:getIdentityMailFromDomainAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdentityMailFromDomainAttributes, input, options)
end

function C:getIdentityNotificationAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdentityNotificationAttributes, input, options)
end

function C:getIdentityPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdentityPolicies, input, options)
end

function C:getIdentityVerificationAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdentityVerificationAttributes, input, options)
end

function C:getSendQuota(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSendQuota, input, options)
end

function C:getSendStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSendStatistics, input, options)
end

function C:getTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTemplate, input, options)
end

function C:listConfigurationSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigurationSets, input, options)
end

function C:listCustomVerificationEmailTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomVerificationEmailTemplates, input, options)
end

function C:listIdentities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIdentities, input, options)
end

function C:listIdentityPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIdentityPolicies, input, options)
end

function C:listReceiptFilters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReceiptFilters, input, options)
end

function C:listReceiptRuleSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReceiptRuleSets, input, options)
end

function C:listTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTemplates, input, options)
end

function C:listVerifiedEmailAddresses(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVerifiedEmailAddresses, input, options)
end

function C:putConfigurationSetDeliveryOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutConfigurationSetDeliveryOptions, input, options)
end

function C:putIdentityPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutIdentityPolicy, input, options)
end

function C:reorderReceiptRuleSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReorderReceiptRuleSet, input, options)
end

function C:sendBounce(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendBounce, input, options)
end

function C:sendBulkTemplatedEmail(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendBulkTemplatedEmail, input, options)
end

function C:sendCustomVerificationEmail(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendCustomVerificationEmail, input, options)
end

function C:sendEmail(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendEmail, input, options)
end

function C:sendRawEmail(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendRawEmail, input, options)
end

function C:sendTemplatedEmail(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendTemplatedEmail, input, options)
end

function C:setActiveReceiptRuleSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetActiveReceiptRuleSet, input, options)
end

function C:setIdentityDkimEnabled(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetIdentityDkimEnabled, input, options)
end

function C:setIdentityFeedbackForwardingEnabled(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetIdentityFeedbackForwardingEnabled, input, options)
end

function C:setIdentityHeadersInNotificationsEnabled(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetIdentityHeadersInNotificationsEnabled, input, options)
end

function C:setIdentityMailFromDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetIdentityMailFromDomain, input, options)
end

function C:setIdentityNotificationTopic(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetIdentityNotificationTopic, input, options)
end

function C:setReceiptRulePosition(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetReceiptRulePosition, input, options)
end

function C:testRenderTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestRenderTemplate, input, options)
end

function C:updateAccountSendingEnabled(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccountSendingEnabled, input, options)
end

function C:updateConfigurationSetEventDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfigurationSetEventDestination, input, options)
end

function C:updateConfigurationSetReputationMetricsEnabled(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfigurationSetReputationMetricsEnabled, input, options)
end

function C:updateConfigurationSetSendingEnabled(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfigurationSetSendingEnabled, input, options)
end

function C:updateConfigurationSetTrackingOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfigurationSetTrackingOptions, input, options)
end

function C:updateCustomVerificationEmailTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCustomVerificationEmailTemplate, input, options)
end

function C:updateReceiptRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateReceiptRule, input, options)
end

function C:updateTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTemplate, input, options)
end

function C:verifyDomainDkim(input, options)
   return self:invokeOperation(schemas.Service, schemas.VerifyDomainDkim, input, options)
end

function C:verifyDomainIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.VerifyDomainIdentity, input, options)
end

function C:verifyEmailAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.VerifyEmailAddress, input, options)
end

function C:verifyEmailIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.VerifyEmailIdentity, input, options)
end

return M
