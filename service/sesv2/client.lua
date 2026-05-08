



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("sesv2.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("sesv2.schemas")
local traits = require("smithy.traits")
local types = require("sesv2.types")
local sdk_defaults = require("aws.sdk_defaults")




















































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "SimpleEmailService_v2"
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

function C:batchGetMetricData(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetMetricData, input, options)
end

function C:cancelExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelExportJob, input, options)
end

function C:createConfigurationSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfigurationSet, input, options)
end

function C:createConfigurationSetEventDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConfigurationSetEventDestination, input, options)
end

function C:createContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContact, input, options)
end

function C:createContactList(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContactList, input, options)
end

function C:createCustomVerificationEmailTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomVerificationEmailTemplate, input, options)
end

function C:createDedicatedIpPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDedicatedIpPool, input, options)
end

function C:createDeliverabilityTestReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDeliverabilityTestReport, input, options)
end

function C:createEmailIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEmailIdentity, input, options)
end

function C:createEmailIdentityPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEmailIdentityPolicy, input, options)
end

function C:createEmailTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEmailTemplate, input, options)
end

function C:createExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateExportJob, input, options)
end

function C:createImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateImportJob, input, options)
end

function C:createMultiRegionEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMultiRegionEndpoint, input, options)
end

function C:createTenant(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTenant, input, options)
end

function C:createTenantResourceAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTenantResourceAssociation, input, options)
end

function C:deleteConfigurationSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfigurationSet, input, options)
end

function C:deleteConfigurationSetEventDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConfigurationSetEventDestination, input, options)
end

function C:deleteContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContact, input, options)
end

function C:deleteContactList(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContactList, input, options)
end

function C:deleteCustomVerificationEmailTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomVerificationEmailTemplate, input, options)
end

function C:deleteDedicatedIpPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDedicatedIpPool, input, options)
end

function C:deleteEmailIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEmailIdentity, input, options)
end

function C:deleteEmailIdentityPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEmailIdentityPolicy, input, options)
end

function C:deleteEmailTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEmailTemplate, input, options)
end

function C:deleteMultiRegionEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMultiRegionEndpoint, input, options)
end

function C:deleteSuppressedDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSuppressedDestination, input, options)
end

function C:deleteTenant(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTenant, input, options)
end

function C:deleteTenantResourceAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTenantResourceAssociation, input, options)
end

function C:getAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccount, input, options)
end

function C:getBlacklistReports(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBlacklistReports, input, options)
end

function C:getConfigurationSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfigurationSet, input, options)
end

function C:getConfigurationSetEventDestinations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConfigurationSetEventDestinations, input, options)
end

function C:getContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContact, input, options)
end

function C:getContactList(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContactList, input, options)
end

function C:getCustomVerificationEmailTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCustomVerificationEmailTemplate, input, options)
end

function C:getDedicatedIp(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDedicatedIp, input, options)
end

function C:getDedicatedIpPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDedicatedIpPool, input, options)
end

function C:getDedicatedIps(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDedicatedIps, input, options)
end

function C:getDeliverabilityDashboardOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeliverabilityDashboardOptions, input, options)
end

function C:getDeliverabilityTestReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeliverabilityTestReport, input, options)
end

function C:getDomainDeliverabilityCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainDeliverabilityCampaign, input, options)
end

function C:getDomainStatisticsReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainStatisticsReport, input, options)
end

function C:getEmailAddressInsights(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEmailAddressInsights, input, options)
end

function C:getEmailIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEmailIdentity, input, options)
end

function C:getEmailIdentityPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEmailIdentityPolicies, input, options)
end

function C:getEmailTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEmailTemplate, input, options)
end

function C:getExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExportJob, input, options)
end

function C:getImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImportJob, input, options)
end

function C:getMessageInsights(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMessageInsights, input, options)
end

function C:getMultiRegionEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMultiRegionEndpoint, input, options)
end

function C:getReputationEntity(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReputationEntity, input, options)
end

function C:getSuppressedDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSuppressedDestination, input, options)
end

function C:getTenant(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTenant, input, options)
end

function C:listConfigurationSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigurationSets, input, options)
end

function C:listContactLists(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContactLists, input, options)
end

function C:listContacts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContacts, input, options)
end

function C:listCustomVerificationEmailTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomVerificationEmailTemplates, input, options)
end

function C:listDedicatedIpPools(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDedicatedIpPools, input, options)
end

function C:listDeliverabilityTestReports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeliverabilityTestReports, input, options)
end

function C:listDomainDeliverabilityCampaigns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomainDeliverabilityCampaigns, input, options)
end

function C:listEmailIdentities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEmailIdentities, input, options)
end

function C:listEmailTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEmailTemplates, input, options)
end

function C:listExportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExportJobs, input, options)
end

function C:listImportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImportJobs, input, options)
end

function C:listMultiRegionEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMultiRegionEndpoints, input, options)
end

function C:listRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecommendations, input, options)
end

function C:listReputationEntities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReputationEntities, input, options)
end

function C:listResourceTenants(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceTenants, input, options)
end

function C:listSuppressedDestinations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSuppressedDestinations, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTenantResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTenantResources, input, options)
end

function C:listTenants(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTenants, input, options)
end

function C:putAccountDedicatedIpWarmupAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccountDedicatedIpWarmupAttributes, input, options)
end

function C:putAccountDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccountDetails, input, options)
end

function C:putAccountSendingAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccountSendingAttributes, input, options)
end

function C:putAccountSuppressionAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccountSuppressionAttributes, input, options)
end

function C:putAccountVdmAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccountVdmAttributes, input, options)
end

function C:putConfigurationSetArchivingOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutConfigurationSetArchivingOptions, input, options)
end

function C:putConfigurationSetDeliveryOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutConfigurationSetDeliveryOptions, input, options)
end

function C:putConfigurationSetReputationOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutConfigurationSetReputationOptions, input, options)
end

function C:putConfigurationSetSendingOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutConfigurationSetSendingOptions, input, options)
end

function C:putConfigurationSetSuppressionOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutConfigurationSetSuppressionOptions, input, options)
end

function C:putConfigurationSetTrackingOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutConfigurationSetTrackingOptions, input, options)
end

function C:putConfigurationSetVdmOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutConfigurationSetVdmOptions, input, options)
end

function C:putDedicatedIpInPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDedicatedIpInPool, input, options)
end

function C:putDedicatedIpPoolScalingAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDedicatedIpPoolScalingAttributes, input, options)
end

function C:putDedicatedIpWarmupAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDedicatedIpWarmupAttributes, input, options)
end

function C:putDeliverabilityDashboardOption(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDeliverabilityDashboardOption, input, options)
end

function C:putEmailIdentityConfigurationSetAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEmailIdentityConfigurationSetAttributes, input, options)
end

function C:putEmailIdentityDkimAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEmailIdentityDkimAttributes, input, options)
end

function C:putEmailIdentityDkimSigningAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEmailIdentityDkimSigningAttributes, input, options)
end

function C:putEmailIdentityFeedbackAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEmailIdentityFeedbackAttributes, input, options)
end

function C:putEmailIdentityMailFromAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEmailIdentityMailFromAttributes, input, options)
end

function C:putSuppressedDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSuppressedDestination, input, options)
end

function C:sendBulkEmail(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendBulkEmail, input, options)
end

function C:sendCustomVerificationEmail(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendCustomVerificationEmail, input, options)
end

function C:sendEmail(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendEmail, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:testRenderEmailTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestRenderEmailTemplate, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateConfigurationSetEventDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConfigurationSetEventDestination, input, options)
end

function C:updateContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContact, input, options)
end

function C:updateContactList(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContactList, input, options)
end

function C:updateCustomVerificationEmailTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCustomVerificationEmailTemplate, input, options)
end

function C:updateEmailIdentityPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEmailIdentityPolicy, input, options)
end

function C:updateEmailTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEmailTemplate, input, options)
end

function C:updateReputationEntityCustomerManagedStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateReputationEntityCustomerManagedStatus, input, options)
end

function C:updateReputationEntityPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateReputationEntityPolicy, input, options)
end

return M
