local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("sesv2.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("sesv2.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SimpleEmailService_v2"
    cfg.signing_name = "ses"
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

function Client:batchGetMetricData(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetMetricData",
        input_schema = types.BatchGetMetricDataInput,
        output_schema = types.BatchGetMetricDataOutput,
        http_method = "POST",
        http_path = "/v2/email/metrics/batch",
    }, options)
end

function Client:cancelExportJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelExportJob",
        input_schema = types.CancelExportJobInput,
        output_schema = types.CancelExportJobOutput,
        http_method = "PUT",
        http_path = "/v2/email/export-jobs/{JobId}/cancel",
    }, options)
end

function Client:createConfigurationSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationSet",
        input_schema = types.CreateConfigurationSetInput,
        output_schema = types.CreateConfigurationSetOutput,
        http_method = "POST",
        http_path = "/v2/email/configuration-sets",
    }, options)
end

function Client:createConfigurationSetEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationSetEventDestination",
        input_schema = types.CreateConfigurationSetEventDestinationInput,
        output_schema = types.CreateConfigurationSetEventDestinationOutput,
        http_method = "POST",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations",
    }, options)
end

function Client:createContact(input, options)
    return self:invokeOperation(input, {
        name = "CreateContact",
        input_schema = types.CreateContactInput,
        output_schema = types.CreateContactOutput,
        http_method = "POST",
        http_path = "/v2/email/contact-lists/{ContactListName}/contacts",
    }, options)
end

function Client:createContactList(input, options)
    return self:invokeOperation(input, {
        name = "CreateContactList",
        input_schema = types.CreateContactListInput,
        output_schema = types.CreateContactListOutput,
        http_method = "POST",
        http_path = "/v2/email/contact-lists",
    }, options)
end

function Client:createCustomVerificationEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomVerificationEmailTemplate",
        input_schema = types.CreateCustomVerificationEmailTemplateInput,
        output_schema = types.CreateCustomVerificationEmailTemplateOutput,
        http_method = "POST",
        http_path = "/v2/email/custom-verification-email-templates",
    }, options)
end

function Client:createDedicatedIpPool(input, options)
    return self:invokeOperation(input, {
        name = "CreateDedicatedIpPool",
        input_schema = types.CreateDedicatedIpPoolInput,
        output_schema = types.CreateDedicatedIpPoolOutput,
        http_method = "POST",
        http_path = "/v2/email/dedicated-ip-pools",
    }, options)
end

function Client:createDeliverabilityTestReport(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeliverabilityTestReport",
        input_schema = types.CreateDeliverabilityTestReportInput,
        output_schema = types.CreateDeliverabilityTestReportOutput,
        http_method = "POST",
        http_path = "/v2/email/deliverability-dashboard/test",
    }, options)
end

function Client:createEmailIdentity(input, options)
    return self:invokeOperation(input, {
        name = "CreateEmailIdentity",
        input_schema = types.CreateEmailIdentityInput,
        output_schema = types.CreateEmailIdentityOutput,
        http_method = "POST",
        http_path = "/v2/email/identities",
    }, options)
end

function Client:createEmailIdentityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateEmailIdentityPolicy",
        input_schema = types.CreateEmailIdentityPolicyInput,
        output_schema = types.CreateEmailIdentityPolicyOutput,
        http_method = "POST",
        http_path = "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}",
    }, options)
end

function Client:createEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateEmailTemplate",
        input_schema = types.CreateEmailTemplateInput,
        output_schema = types.CreateEmailTemplateOutput,
        http_method = "POST",
        http_path = "/v2/email/templates",
    }, options)
end

function Client:createExportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateExportJob",
        input_schema = types.CreateExportJobInput,
        output_schema = types.CreateExportJobOutput,
        http_method = "POST",
        http_path = "/v2/email/export-jobs",
    }, options)
end

function Client:createImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateImportJob",
        input_schema = types.CreateImportJobInput,
        output_schema = types.CreateImportJobOutput,
        http_method = "POST",
        http_path = "/v2/email/import-jobs",
    }, options)
end

function Client:createMultiRegionEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateMultiRegionEndpoint",
        input_schema = types.CreateMultiRegionEndpointInput,
        output_schema = types.CreateMultiRegionEndpointOutput,
        http_method = "POST",
        http_path = "/v2/email/multi-region-endpoints",
    }, options)
end

function Client:createTenant(input, options)
    return self:invokeOperation(input, {
        name = "CreateTenant",
        input_schema = types.CreateTenantInput,
        output_schema = types.CreateTenantOutput,
        http_method = "POST",
        http_path = "/v2/email/tenants",
    }, options)
end

function Client:createTenantResourceAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateTenantResourceAssociation",
        input_schema = types.CreateTenantResourceAssociationInput,
        output_schema = types.CreateTenantResourceAssociationOutput,
        http_method = "POST",
        http_path = "/v2/email/tenants/resources",
    }, options)
end

function Client:deleteConfigurationSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationSet",
        input_schema = types.DeleteConfigurationSetInput,
        output_schema = types.DeleteConfigurationSetOutput,
        http_method = "DELETE",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}",
    }, options)
end

function Client:deleteConfigurationSetEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationSetEventDestination",
        input_schema = types.DeleteConfigurationSetEventDestinationInput,
        output_schema = types.DeleteConfigurationSetEventDestinationOutput,
        http_method = "DELETE",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}",
    }, options)
end

function Client:deleteContact(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContact",
        input_schema = types.DeleteContactInput,
        output_schema = types.DeleteContactOutput,
        http_method = "DELETE",
        http_path = "/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}",
    }, options)
end

function Client:deleteContactList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContactList",
        input_schema = types.DeleteContactListInput,
        output_schema = types.DeleteContactListOutput,
        http_method = "DELETE",
        http_path = "/v2/email/contact-lists/{ContactListName}",
    }, options)
end

function Client:deleteCustomVerificationEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomVerificationEmailTemplate",
        input_schema = types.DeleteCustomVerificationEmailTemplateInput,
        output_schema = types.DeleteCustomVerificationEmailTemplateOutput,
        http_method = "DELETE",
        http_path = "/v2/email/custom-verification-email-templates/{TemplateName}",
    }, options)
end

function Client:deleteDedicatedIpPool(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDedicatedIpPool",
        input_schema = types.DeleteDedicatedIpPoolInput,
        output_schema = types.DeleteDedicatedIpPoolOutput,
        http_method = "DELETE",
        http_path = "/v2/email/dedicated-ip-pools/{PoolName}",
    }, options)
end

function Client:deleteEmailIdentity(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEmailIdentity",
        input_schema = types.DeleteEmailIdentityInput,
        output_schema = types.DeleteEmailIdentityOutput,
        http_method = "DELETE",
        http_path = "/v2/email/identities/{EmailIdentity}",
    }, options)
end

function Client:deleteEmailIdentityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEmailIdentityPolicy",
        input_schema = types.DeleteEmailIdentityPolicyInput,
        output_schema = types.DeleteEmailIdentityPolicyOutput,
        http_method = "DELETE",
        http_path = "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}",
    }, options)
end

function Client:deleteEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEmailTemplate",
        input_schema = types.DeleteEmailTemplateInput,
        output_schema = types.DeleteEmailTemplateOutput,
        http_method = "DELETE",
        http_path = "/v2/email/templates/{TemplateName}",
    }, options)
end

function Client:deleteMultiRegionEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMultiRegionEndpoint",
        input_schema = types.DeleteMultiRegionEndpointInput,
        output_schema = types.DeleteMultiRegionEndpointOutput,
        http_method = "DELETE",
        http_path = "/v2/email/multi-region-endpoints/{EndpointName}",
    }, options)
end

function Client:deleteSuppressedDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSuppressedDestination",
        input_schema = types.DeleteSuppressedDestinationInput,
        output_schema = types.DeleteSuppressedDestinationOutput,
        http_method = "DELETE",
        http_path = "/v2/email/suppression/addresses/{EmailAddress}",
    }, options)
end

function Client:deleteTenant(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTenant",
        input_schema = types.DeleteTenantInput,
        output_schema = types.DeleteTenantOutput,
        http_method = "POST",
        http_path = "/v2/email/tenants/delete",
    }, options)
end

function Client:deleteTenantResourceAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTenantResourceAssociation",
        input_schema = types.DeleteTenantResourceAssociationInput,
        output_schema = types.DeleteTenantResourceAssociationOutput,
        http_method = "POST",
        http_path = "/v2/email/tenants/resources/delete",
    }, options)
end

function Client:getAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetAccount",
        input_schema = types.GetAccountInput,
        output_schema = types.GetAccountOutput,
        http_method = "GET",
        http_path = "/v2/email/account",
    }, options)
end

function Client:getBlacklistReports(input, options)
    return self:invokeOperation(input, {
        name = "GetBlacklistReports",
        input_schema = types.GetBlacklistReportsInput,
        output_schema = types.GetBlacklistReportsOutput,
        http_method = "GET",
        http_path = "/v2/email/deliverability-dashboard/blacklist-report",
    }, options)
end

function Client:getConfigurationSet(input, options)
    return self:invokeOperation(input, {
        name = "GetConfigurationSet",
        input_schema = types.GetConfigurationSetInput,
        output_schema = types.GetConfigurationSetOutput,
        http_method = "GET",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}",
    }, options)
end

function Client:getConfigurationSetEventDestinations(input, options)
    return self:invokeOperation(input, {
        name = "GetConfigurationSetEventDestinations",
        input_schema = types.GetConfigurationSetEventDestinationsInput,
        output_schema = types.GetConfigurationSetEventDestinationsOutput,
        http_method = "GET",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations",
    }, options)
end

function Client:getContact(input, options)
    return self:invokeOperation(input, {
        name = "GetContact",
        input_schema = types.GetContactInput,
        output_schema = types.GetContactOutput,
        http_method = "GET",
        http_path = "/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}",
    }, options)
end

function Client:getContactList(input, options)
    return self:invokeOperation(input, {
        name = "GetContactList",
        input_schema = types.GetContactListInput,
        output_schema = types.GetContactListOutput,
        http_method = "GET",
        http_path = "/v2/email/contact-lists/{ContactListName}",
    }, options)
end

function Client:getCustomVerificationEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetCustomVerificationEmailTemplate",
        input_schema = types.GetCustomVerificationEmailTemplateInput,
        output_schema = types.GetCustomVerificationEmailTemplateOutput,
        http_method = "GET",
        http_path = "/v2/email/custom-verification-email-templates/{TemplateName}",
    }, options)
end

function Client:getDedicatedIp(input, options)
    return self:invokeOperation(input, {
        name = "GetDedicatedIp",
        input_schema = types.GetDedicatedIpInput,
        output_schema = types.GetDedicatedIpOutput,
        http_method = "GET",
        http_path = "/v2/email/dedicated-ips/{Ip}",
    }, options)
end

function Client:getDedicatedIpPool(input, options)
    return self:invokeOperation(input, {
        name = "GetDedicatedIpPool",
        input_schema = types.GetDedicatedIpPoolInput,
        output_schema = types.GetDedicatedIpPoolOutput,
        http_method = "GET",
        http_path = "/v2/email/dedicated-ip-pools/{PoolName}",
    }, options)
end

function Client:getDedicatedIps(input, options)
    return self:invokeOperation(input, {
        name = "GetDedicatedIps",
        input_schema = types.GetDedicatedIpsInput,
        output_schema = types.GetDedicatedIpsOutput,
        http_method = "GET",
        http_path = "/v2/email/dedicated-ips",
    }, options)
end

function Client:getDeliverabilityDashboardOptions(input, options)
    return self:invokeOperation(input, {
        name = "GetDeliverabilityDashboardOptions",
        input_schema = types.GetDeliverabilityDashboardOptionsInput,
        output_schema = types.GetDeliverabilityDashboardOptionsOutput,
        http_method = "GET",
        http_path = "/v2/email/deliverability-dashboard",
    }, options)
end

function Client:getDeliverabilityTestReport(input, options)
    return self:invokeOperation(input, {
        name = "GetDeliverabilityTestReport",
        input_schema = types.GetDeliverabilityTestReportInput,
        output_schema = types.GetDeliverabilityTestReportOutput,
        http_method = "GET",
        http_path = "/v2/email/deliverability-dashboard/test-reports/{ReportId}",
    }, options)
end

function Client:getDomainDeliverabilityCampaign(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainDeliverabilityCampaign",
        input_schema = types.GetDomainDeliverabilityCampaignInput,
        output_schema = types.GetDomainDeliverabilityCampaignOutput,
        http_method = "GET",
        http_path = "/v2/email/deliverability-dashboard/campaigns/{CampaignId}",
    }, options)
end

function Client:getDomainStatisticsReport(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainStatisticsReport",
        input_schema = types.GetDomainStatisticsReportInput,
        output_schema = types.GetDomainStatisticsReportOutput,
        http_method = "GET",
        http_path = "/v2/email/deliverability-dashboard/statistics-report/{Domain}",
    }, options)
end

function Client:getEmailAddressInsights(input, options)
    return self:invokeOperation(input, {
        name = "GetEmailAddressInsights",
        input_schema = types.GetEmailAddressInsightsInput,
        output_schema = types.GetEmailAddressInsightsOutput,
        http_method = "POST",
        http_path = "/v2/email/email-address-insights",
    }, options)
end

function Client:getEmailIdentity(input, options)
    return self:invokeOperation(input, {
        name = "GetEmailIdentity",
        input_schema = types.GetEmailIdentityInput,
        output_schema = types.GetEmailIdentityOutput,
        http_method = "GET",
        http_path = "/v2/email/identities/{EmailIdentity}",
    }, options)
end

function Client:getEmailIdentityPolicies(input, options)
    return self:invokeOperation(input, {
        name = "GetEmailIdentityPolicies",
        input_schema = types.GetEmailIdentityPoliciesInput,
        output_schema = types.GetEmailIdentityPoliciesOutput,
        http_method = "GET",
        http_path = "/v2/email/identities/{EmailIdentity}/policies",
    }, options)
end

function Client:getEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetEmailTemplate",
        input_schema = types.GetEmailTemplateInput,
        output_schema = types.GetEmailTemplateOutput,
        http_method = "GET",
        http_path = "/v2/email/templates/{TemplateName}",
    }, options)
end

function Client:getExportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetExportJob",
        input_schema = types.GetExportJobInput,
        output_schema = types.GetExportJobOutput,
        http_method = "GET",
        http_path = "/v2/email/export-jobs/{JobId}",
    }, options)
end

function Client:getImportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetImportJob",
        input_schema = types.GetImportJobInput,
        output_schema = types.GetImportJobOutput,
        http_method = "GET",
        http_path = "/v2/email/import-jobs/{JobId}",
    }, options)
end

function Client:getMessageInsights(input, options)
    return self:invokeOperation(input, {
        name = "GetMessageInsights",
        input_schema = types.GetMessageInsightsInput,
        output_schema = types.GetMessageInsightsOutput,
        http_method = "GET",
        http_path = "/v2/email/insights/{MessageId}",
    }, options)
end

function Client:getMultiRegionEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetMultiRegionEndpoint",
        input_schema = types.GetMultiRegionEndpointInput,
        output_schema = types.GetMultiRegionEndpointOutput,
        http_method = "GET",
        http_path = "/v2/email/multi-region-endpoints/{EndpointName}",
    }, options)
end

function Client:getReputationEntity(input, options)
    return self:invokeOperation(input, {
        name = "GetReputationEntity",
        input_schema = types.GetReputationEntityInput,
        output_schema = types.GetReputationEntityOutput,
        http_method = "GET",
        http_path = "/v2/email/reputation/entities/{ReputationEntityType}/{ReputationEntityReference}",
    }, options)
end

function Client:getSuppressedDestination(input, options)
    return self:invokeOperation(input, {
        name = "GetSuppressedDestination",
        input_schema = types.GetSuppressedDestinationInput,
        output_schema = types.GetSuppressedDestinationOutput,
        http_method = "GET",
        http_path = "/v2/email/suppression/addresses/{EmailAddress}",
    }, options)
end

function Client:getTenant(input, options)
    return self:invokeOperation(input, {
        name = "GetTenant",
        input_schema = types.GetTenantInput,
        output_schema = types.GetTenantOutput,
        http_method = "POST",
        http_path = "/v2/email/tenants/get",
    }, options)
end

function Client:listConfigurationSets(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationSets",
        input_schema = types.ListConfigurationSetsInput,
        output_schema = types.ListConfigurationSetsOutput,
        http_method = "GET",
        http_path = "/v2/email/configuration-sets",
    }, options)
end

function Client:listContactLists(input, options)
    return self:invokeOperation(input, {
        name = "ListContactLists",
        input_schema = types.ListContactListsInput,
        output_schema = types.ListContactListsOutput,
        http_method = "GET",
        http_path = "/v2/email/contact-lists",
    }, options)
end

function Client:listContacts(input, options)
    return self:invokeOperation(input, {
        name = "ListContacts",
        input_schema = types.ListContactsInput,
        output_schema = types.ListContactsOutput,
        http_method = "POST",
        http_path = "/v2/email/contact-lists/{ContactListName}/contacts/list",
    }, options)
end

function Client:listCustomVerificationEmailTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomVerificationEmailTemplates",
        input_schema = types.ListCustomVerificationEmailTemplatesInput,
        output_schema = types.ListCustomVerificationEmailTemplatesOutput,
        http_method = "GET",
        http_path = "/v2/email/custom-verification-email-templates",
    }, options)
end

function Client:listDedicatedIpPools(input, options)
    return self:invokeOperation(input, {
        name = "ListDedicatedIpPools",
        input_schema = types.ListDedicatedIpPoolsInput,
        output_schema = types.ListDedicatedIpPoolsOutput,
        http_method = "GET",
        http_path = "/v2/email/dedicated-ip-pools",
    }, options)
end

function Client:listDeliverabilityTestReports(input, options)
    return self:invokeOperation(input, {
        name = "ListDeliverabilityTestReports",
        input_schema = types.ListDeliverabilityTestReportsInput,
        output_schema = types.ListDeliverabilityTestReportsOutput,
        http_method = "GET",
        http_path = "/v2/email/deliverability-dashboard/test-reports",
    }, options)
end

function Client:listDomainDeliverabilityCampaigns(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainDeliverabilityCampaigns",
        input_schema = types.ListDomainDeliverabilityCampaignsInput,
        output_schema = types.ListDomainDeliverabilityCampaignsOutput,
        http_method = "GET",
        http_path = "/v2/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns",
    }, options)
end

function Client:listEmailIdentities(input, options)
    return self:invokeOperation(input, {
        name = "ListEmailIdentities",
        input_schema = types.ListEmailIdentitiesInput,
        output_schema = types.ListEmailIdentitiesOutput,
        http_method = "GET",
        http_path = "/v2/email/identities",
    }, options)
end

function Client:listEmailTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListEmailTemplates",
        input_schema = types.ListEmailTemplatesInput,
        output_schema = types.ListEmailTemplatesOutput,
        http_method = "GET",
        http_path = "/v2/email/templates",
    }, options)
end

function Client:listExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListExportJobs",
        input_schema = types.ListExportJobsInput,
        output_schema = types.ListExportJobsOutput,
        http_method = "POST",
        http_path = "/v2/email/list-export-jobs",
    }, options)
end

function Client:listImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListImportJobs",
        input_schema = types.ListImportJobsInput,
        output_schema = types.ListImportJobsOutput,
        http_method = "POST",
        http_path = "/v2/email/import-jobs/list",
    }, options)
end

function Client:listMultiRegionEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListMultiRegionEndpoints",
        input_schema = types.ListMultiRegionEndpointsInput,
        output_schema = types.ListMultiRegionEndpointsOutput,
        http_method = "GET",
        http_path = "/v2/email/multi-region-endpoints",
    }, options)
end

function Client:listRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommendations",
        input_schema = types.ListRecommendationsInput,
        output_schema = types.ListRecommendationsOutput,
        http_method = "POST",
        http_path = "/v2/email/vdm/recommendations",
    }, options)
end

function Client:listReputationEntities(input, options)
    return self:invokeOperation(input, {
        name = "ListReputationEntities",
        input_schema = types.ListReputationEntitiesInput,
        output_schema = types.ListReputationEntitiesOutput,
        http_method = "POST",
        http_path = "/v2/email/reputation/entities",
    }, options)
end

function Client:listResourceTenants(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceTenants",
        input_schema = types.ListResourceTenantsInput,
        output_schema = types.ListResourceTenantsOutput,
        http_method = "POST",
        http_path = "/v2/email/resources/tenants/list",
    }, options)
end

function Client:listSuppressedDestinations(input, options)
    return self:invokeOperation(input, {
        name = "ListSuppressedDestinations",
        input_schema = types.ListSuppressedDestinationsInput,
        output_schema = types.ListSuppressedDestinationsOutput,
        http_method = "GET",
        http_path = "/v2/email/suppression/addresses",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/v2/email/tags",
    }, options)
end

function Client:listTenantResources(input, options)
    return self:invokeOperation(input, {
        name = "ListTenantResources",
        input_schema = types.ListTenantResourcesInput,
        output_schema = types.ListTenantResourcesOutput,
        http_method = "POST",
        http_path = "/v2/email/tenants/resources/list",
    }, options)
end

function Client:listTenants(input, options)
    return self:invokeOperation(input, {
        name = "ListTenants",
        input_schema = types.ListTenantsInput,
        output_schema = types.ListTenantsOutput,
        http_method = "POST",
        http_path = "/v2/email/tenants/list",
    }, options)
end

function Client:putAccountDedicatedIpWarmupAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountDedicatedIpWarmupAttributes",
        input_schema = types.PutAccountDedicatedIpWarmupAttributesInput,
        output_schema = types.PutAccountDedicatedIpWarmupAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/account/dedicated-ips/warmup",
    }, options)
end

function Client:putAccountDetails(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountDetails",
        input_schema = types.PutAccountDetailsInput,
        output_schema = types.PutAccountDetailsOutput,
        http_method = "POST",
        http_path = "/v2/email/account/details",
    }, options)
end

function Client:putAccountSendingAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountSendingAttributes",
        input_schema = types.PutAccountSendingAttributesInput,
        output_schema = types.PutAccountSendingAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/account/sending",
    }, options)
end

function Client:putAccountSuppressionAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountSuppressionAttributes",
        input_schema = types.PutAccountSuppressionAttributesInput,
        output_schema = types.PutAccountSuppressionAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/account/suppression",
    }, options)
end

function Client:putAccountVdmAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountVdmAttributes",
        input_schema = types.PutAccountVdmAttributesInput,
        output_schema = types.PutAccountVdmAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/account/vdm",
    }, options)
end

function Client:putConfigurationSetArchivingOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetArchivingOptions",
        input_schema = types.PutConfigurationSetArchivingOptionsInput,
        output_schema = types.PutConfigurationSetArchivingOptionsOutput,
        http_method = "PUT",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/archiving-options",
    }, options)
end

function Client:putConfigurationSetDeliveryOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetDeliveryOptions",
        input_schema = types.PutConfigurationSetDeliveryOptionsInput,
        output_schema = types.PutConfigurationSetDeliveryOptionsOutput,
        http_method = "PUT",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/delivery-options",
    }, options)
end

function Client:putConfigurationSetReputationOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetReputationOptions",
        input_schema = types.PutConfigurationSetReputationOptionsInput,
        output_schema = types.PutConfigurationSetReputationOptionsOutput,
        http_method = "PUT",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/reputation-options",
    }, options)
end

function Client:putConfigurationSetSendingOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetSendingOptions",
        input_schema = types.PutConfigurationSetSendingOptionsInput,
        output_schema = types.PutConfigurationSetSendingOptionsOutput,
        http_method = "PUT",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/sending",
    }, options)
end

function Client:putConfigurationSetSuppressionOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetSuppressionOptions",
        input_schema = types.PutConfigurationSetSuppressionOptionsInput,
        output_schema = types.PutConfigurationSetSuppressionOptionsOutput,
        http_method = "PUT",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/suppression-options",
    }, options)
end

function Client:putConfigurationSetTrackingOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetTrackingOptions",
        input_schema = types.PutConfigurationSetTrackingOptionsInput,
        output_schema = types.PutConfigurationSetTrackingOptionsOutput,
        http_method = "PUT",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/tracking-options",
    }, options)
end

function Client:putConfigurationSetVdmOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetVdmOptions",
        input_schema = types.PutConfigurationSetVdmOptionsInput,
        output_schema = types.PutConfigurationSetVdmOptionsOutput,
        http_method = "PUT",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/vdm-options",
    }, options)
end

function Client:putDedicatedIpInPool(input, options)
    return self:invokeOperation(input, {
        name = "PutDedicatedIpInPool",
        input_schema = types.PutDedicatedIpInPoolInput,
        output_schema = types.PutDedicatedIpInPoolOutput,
        http_method = "PUT",
        http_path = "/v2/email/dedicated-ips/{Ip}/pool",
    }, options)
end

function Client:putDedicatedIpPoolScalingAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutDedicatedIpPoolScalingAttributes",
        input_schema = types.PutDedicatedIpPoolScalingAttributesInput,
        output_schema = types.PutDedicatedIpPoolScalingAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/dedicated-ip-pools/{PoolName}/scaling",
    }, options)
end

function Client:putDedicatedIpWarmupAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutDedicatedIpWarmupAttributes",
        input_schema = types.PutDedicatedIpWarmupAttributesInput,
        output_schema = types.PutDedicatedIpWarmupAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/dedicated-ips/{Ip}/warmup",
    }, options)
end

function Client:putDeliverabilityDashboardOption(input, options)
    return self:invokeOperation(input, {
        name = "PutDeliverabilityDashboardOption",
        input_schema = types.PutDeliverabilityDashboardOptionInput,
        output_schema = types.PutDeliverabilityDashboardOptionOutput,
        http_method = "PUT",
        http_path = "/v2/email/deliverability-dashboard",
    }, options)
end

function Client:putEmailIdentityConfigurationSetAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutEmailIdentityConfigurationSetAttributes",
        input_schema = types.PutEmailIdentityConfigurationSetAttributesInput,
        output_schema = types.PutEmailIdentityConfigurationSetAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/identities/{EmailIdentity}/configuration-set",
    }, options)
end

function Client:putEmailIdentityDkimAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutEmailIdentityDkimAttributes",
        input_schema = types.PutEmailIdentityDkimAttributesInput,
        output_schema = types.PutEmailIdentityDkimAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/identities/{EmailIdentity}/dkim",
    }, options)
end

function Client:putEmailIdentityDkimSigningAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutEmailIdentityDkimSigningAttributes",
        input_schema = types.PutEmailIdentityDkimSigningAttributesInput,
        output_schema = types.PutEmailIdentityDkimSigningAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/identities/{EmailIdentity}/dkim/signing",
    }, options)
end

function Client:putEmailIdentityFeedbackAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutEmailIdentityFeedbackAttributes",
        input_schema = types.PutEmailIdentityFeedbackAttributesInput,
        output_schema = types.PutEmailIdentityFeedbackAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/identities/{EmailIdentity}/feedback",
    }, options)
end

function Client:putEmailIdentityMailFromAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutEmailIdentityMailFromAttributes",
        input_schema = types.PutEmailIdentityMailFromAttributesInput,
        output_schema = types.PutEmailIdentityMailFromAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/identities/{EmailIdentity}/mail-from",
    }, options)
end

function Client:putSuppressedDestination(input, options)
    return self:invokeOperation(input, {
        name = "PutSuppressedDestination",
        input_schema = types.PutSuppressedDestinationInput,
        output_schema = types.PutSuppressedDestinationOutput,
        http_method = "PUT",
        http_path = "/v2/email/suppression/addresses",
    }, options)
end

function Client:sendBulkEmail(input, options)
    return self:invokeOperation(input, {
        name = "SendBulkEmail",
        input_schema = types.SendBulkEmailInput,
        output_schema = types.SendBulkEmailOutput,
        http_method = "POST",
        http_path = "/v2/email/outbound-bulk-emails",
        context_params = {
            EndpointId = "EndpointId",
        },
    }, options)
end

function Client:sendCustomVerificationEmail(input, options)
    return self:invokeOperation(input, {
        name = "SendCustomVerificationEmail",
        input_schema = types.SendCustomVerificationEmailInput,
        output_schema = types.SendCustomVerificationEmailOutput,
        http_method = "POST",
        http_path = "/v2/email/outbound-custom-verification-emails",
    }, options)
end

function Client:sendEmail(input, options)
    return self:invokeOperation(input, {
        name = "SendEmail",
        input_schema = types.SendEmailInput,
        output_schema = types.SendEmailOutput,
        http_method = "POST",
        http_path = "/v2/email/outbound-emails",
        context_params = {
            EndpointId = "EndpointId",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/v2/email/tags",
    }, options)
end

function Client:testRenderEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "TestRenderEmailTemplate",
        input_schema = types.TestRenderEmailTemplateInput,
        output_schema = types.TestRenderEmailTemplateOutput,
        http_method = "POST",
        http_path = "/v2/email/templates/{TemplateName}/render",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/v2/email/tags",
    }, options)
end

function Client:updateConfigurationSetEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfigurationSetEventDestination",
        input_schema = types.UpdateConfigurationSetEventDestinationInput,
        output_schema = types.UpdateConfigurationSetEventDestinationOutput,
        http_method = "PUT",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}",
    }, options)
end

function Client:updateContact(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContact",
        input_schema = types.UpdateContactInput,
        output_schema = types.UpdateContactOutput,
        http_method = "PUT",
        http_path = "/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}",
    }, options)
end

function Client:updateContactList(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContactList",
        input_schema = types.UpdateContactListInput,
        output_schema = types.UpdateContactListOutput,
        http_method = "PUT",
        http_path = "/v2/email/contact-lists/{ContactListName}",
    }, options)
end

function Client:updateCustomVerificationEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCustomVerificationEmailTemplate",
        input_schema = types.UpdateCustomVerificationEmailTemplateInput,
        output_schema = types.UpdateCustomVerificationEmailTemplateOutput,
        http_method = "PUT",
        http_path = "/v2/email/custom-verification-email-templates/{TemplateName}",
    }, options)
end

function Client:updateEmailIdentityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEmailIdentityPolicy",
        input_schema = types.UpdateEmailIdentityPolicyInput,
        output_schema = types.UpdateEmailIdentityPolicyOutput,
        http_method = "PUT",
        http_path = "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}",
    }, options)
end

function Client:updateEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEmailTemplate",
        input_schema = types.UpdateEmailTemplateInput,
        output_schema = types.UpdateEmailTemplateOutput,
        http_method = "PUT",
        http_path = "/v2/email/templates/{TemplateName}",
    }, options)
end

function Client:updateReputationEntityCustomerManagedStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReputationEntityCustomerManagedStatus",
        input_schema = types.UpdateReputationEntityCustomerManagedStatusInput,
        output_schema = types.UpdateReputationEntityCustomerManagedStatusOutput,
        http_method = "PUT",
        http_path = "/v2/email/reputation/entities/{ReputationEntityType}/{ReputationEntityReference}/customer-managed-status",
    }, options)
end

function Client:updateReputationEntityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReputationEntityPolicy",
        input_schema = types.UpdateReputationEntityPolicyInput,
        output_schema = types.UpdateReputationEntityPolicyOutput,
        http_method = "PUT",
        http_path = "/v2/email/reputation/entities/{ReputationEntityType}/{ReputationEntityReference}/policy",
    }, options)
end

return M
