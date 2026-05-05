local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("sesv2.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("sesv2.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SimpleEmailService_v2"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ses", signing_region = cfg.region } }
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

function Client:batchGetMetricData(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetMetricData",
        input_schema = schemas.BatchGetMetricDataInput,
        output_schema = schemas.BatchGetMetricDataOutput,
        http_method = "POST",
        http_path = "/v2/email/metrics/batch",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelExportJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelExportJob",
        input_schema = schemas.CancelExportJobInput,
        output_schema = schemas.CancelExportJobOutput,
        http_method = "PUT",
        http_path = "/v2/email/export-jobs/{JobId}/cancel",
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
        http_path = "/v2/email/configuration-sets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConfigurationSetEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationSetEventDestination",
        input_schema = schemas.CreateConfigurationSetEventDestinationInput,
        output_schema = schemas.CreateConfigurationSetEventDestinationOutput,
        http_method = "POST",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContact(input, options)
    return self:invokeOperation(input, {
        name = "CreateContact",
        input_schema = schemas.CreateContactInput,
        output_schema = schemas.CreateContactOutput,
        http_method = "POST",
        http_path = "/v2/email/contact-lists/{ContactListName}/contacts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContactList(input, options)
    return self:invokeOperation(input, {
        name = "CreateContactList",
        input_schema = schemas.CreateContactListInput,
        output_schema = schemas.CreateContactListOutput,
        http_method = "POST",
        http_path = "/v2/email/contact-lists",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCustomVerificationEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomVerificationEmailTemplate",
        input_schema = schemas.CreateCustomVerificationEmailTemplateInput,
        output_schema = schemas.CreateCustomVerificationEmailTemplateOutput,
        http_method = "POST",
        http_path = "/v2/email/custom-verification-email-templates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDedicatedIpPool(input, options)
    return self:invokeOperation(input, {
        name = "CreateDedicatedIpPool",
        input_schema = schemas.CreateDedicatedIpPoolInput,
        output_schema = schemas.CreateDedicatedIpPoolOutput,
        http_method = "POST",
        http_path = "/v2/email/dedicated-ip-pools",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDeliverabilityTestReport(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeliverabilityTestReport",
        input_schema = schemas.CreateDeliverabilityTestReportInput,
        output_schema = schemas.CreateDeliverabilityTestReportOutput,
        http_method = "POST",
        http_path = "/v2/email/deliverability-dashboard/test",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEmailIdentity(input, options)
    return self:invokeOperation(input, {
        name = "CreateEmailIdentity",
        input_schema = schemas.CreateEmailIdentityInput,
        output_schema = schemas.CreateEmailIdentityOutput,
        http_method = "POST",
        http_path = "/v2/email/identities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEmailIdentityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateEmailIdentityPolicy",
        input_schema = schemas.CreateEmailIdentityPolicyInput,
        output_schema = schemas.CreateEmailIdentityPolicyOutput,
        http_method = "POST",
        http_path = "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateEmailTemplate",
        input_schema = schemas.CreateEmailTemplateInput,
        output_schema = schemas.CreateEmailTemplateOutput,
        http_method = "POST",
        http_path = "/v2/email/templates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createExportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateExportJob",
        input_schema = schemas.CreateExportJobInput,
        output_schema = schemas.CreateExportJobOutput,
        http_method = "POST",
        http_path = "/v2/email/export-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateImportJob",
        input_schema = schemas.CreateImportJobInput,
        output_schema = schemas.CreateImportJobOutput,
        http_method = "POST",
        http_path = "/v2/email/import-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMultiRegionEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateMultiRegionEndpoint",
        input_schema = schemas.CreateMultiRegionEndpointInput,
        output_schema = schemas.CreateMultiRegionEndpointOutput,
        http_method = "POST",
        http_path = "/v2/email/multi-region-endpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTenant(input, options)
    return self:invokeOperation(input, {
        name = "CreateTenant",
        input_schema = schemas.CreateTenantInput,
        output_schema = schemas.CreateTenantOutput,
        http_method = "POST",
        http_path = "/v2/email/tenants",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTenantResourceAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateTenantResourceAssociation",
        input_schema = schemas.CreateTenantResourceAssociationInput,
        output_schema = schemas.CreateTenantResourceAssociationOutput,
        http_method = "POST",
        http_path = "/v2/email/tenants/resources",
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
        http_method = "DELETE",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfigurationSetEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationSetEventDestination",
        input_schema = schemas.DeleteConfigurationSetEventDestinationInput,
        output_schema = schemas.DeleteConfigurationSetEventDestinationOutput,
        http_method = "DELETE",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContact(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContact",
        input_schema = schemas.DeleteContactInput,
        output_schema = schemas.DeleteContactOutput,
        http_method = "DELETE",
        http_path = "/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContactList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContactList",
        input_schema = schemas.DeleteContactListInput,
        output_schema = schemas.DeleteContactListOutput,
        http_method = "DELETE",
        http_path = "/v2/email/contact-lists/{ContactListName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCustomVerificationEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomVerificationEmailTemplate",
        input_schema = schemas.DeleteCustomVerificationEmailTemplateInput,
        output_schema = schemas.DeleteCustomVerificationEmailTemplateOutput,
        http_method = "DELETE",
        http_path = "/v2/email/custom-verification-email-templates/{TemplateName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDedicatedIpPool(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDedicatedIpPool",
        input_schema = schemas.DeleteDedicatedIpPoolInput,
        output_schema = schemas.DeleteDedicatedIpPoolOutput,
        http_method = "DELETE",
        http_path = "/v2/email/dedicated-ip-pools/{PoolName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEmailIdentity(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEmailIdentity",
        input_schema = schemas.DeleteEmailIdentityInput,
        output_schema = schemas.DeleteEmailIdentityOutput,
        http_method = "DELETE",
        http_path = "/v2/email/identities/{EmailIdentity}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEmailIdentityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEmailIdentityPolicy",
        input_schema = schemas.DeleteEmailIdentityPolicyInput,
        output_schema = schemas.DeleteEmailIdentityPolicyOutput,
        http_method = "DELETE",
        http_path = "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEmailTemplate",
        input_schema = schemas.DeleteEmailTemplateInput,
        output_schema = schemas.DeleteEmailTemplateOutput,
        http_method = "DELETE",
        http_path = "/v2/email/templates/{TemplateName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMultiRegionEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMultiRegionEndpoint",
        input_schema = schemas.DeleteMultiRegionEndpointInput,
        output_schema = schemas.DeleteMultiRegionEndpointOutput,
        http_method = "DELETE",
        http_path = "/v2/email/multi-region-endpoints/{EndpointName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSuppressedDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSuppressedDestination",
        input_schema = schemas.DeleteSuppressedDestinationInput,
        output_schema = schemas.DeleteSuppressedDestinationOutput,
        http_method = "DELETE",
        http_path = "/v2/email/suppression/addresses/{EmailAddress}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTenant(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTenant",
        input_schema = schemas.DeleteTenantInput,
        output_schema = schemas.DeleteTenantOutput,
        http_method = "POST",
        http_path = "/v2/email/tenants/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTenantResourceAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTenantResourceAssociation",
        input_schema = schemas.DeleteTenantResourceAssociationInput,
        output_schema = schemas.DeleteTenantResourceAssociationOutput,
        http_method = "POST",
        http_path = "/v2/email/tenants/resources/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetAccount",
        input_schema = schemas.GetAccountInput,
        output_schema = schemas.GetAccountOutput,
        http_method = "GET",
        http_path = "/v2/email/account",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBlacklistReports(input, options)
    return self:invokeOperation(input, {
        name = "GetBlacklistReports",
        input_schema = schemas.GetBlacklistReportsInput,
        output_schema = schemas.GetBlacklistReportsOutput,
        http_method = "GET",
        http_path = "/v2/email/deliverability-dashboard/blacklist-report",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfigurationSet(input, options)
    return self:invokeOperation(input, {
        name = "GetConfigurationSet",
        input_schema = schemas.GetConfigurationSetInput,
        output_schema = schemas.GetConfigurationSetOutput,
        http_method = "GET",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConfigurationSetEventDestinations(input, options)
    return self:invokeOperation(input, {
        name = "GetConfigurationSetEventDestinations",
        input_schema = schemas.GetConfigurationSetEventDestinationsInput,
        output_schema = schemas.GetConfigurationSetEventDestinationsOutput,
        http_method = "GET",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContact(input, options)
    return self:invokeOperation(input, {
        name = "GetContact",
        input_schema = schemas.GetContactInput,
        output_schema = schemas.GetContactOutput,
        http_method = "GET",
        http_path = "/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContactList(input, options)
    return self:invokeOperation(input, {
        name = "GetContactList",
        input_schema = schemas.GetContactListInput,
        output_schema = schemas.GetContactListOutput,
        http_method = "GET",
        http_path = "/v2/email/contact-lists/{ContactListName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCustomVerificationEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetCustomVerificationEmailTemplate",
        input_schema = schemas.GetCustomVerificationEmailTemplateInput,
        output_schema = schemas.GetCustomVerificationEmailTemplateOutput,
        http_method = "GET",
        http_path = "/v2/email/custom-verification-email-templates/{TemplateName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDedicatedIp(input, options)
    return self:invokeOperation(input, {
        name = "GetDedicatedIp",
        input_schema = schemas.GetDedicatedIpInput,
        output_schema = schemas.GetDedicatedIpOutput,
        http_method = "GET",
        http_path = "/v2/email/dedicated-ips/{Ip}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDedicatedIpPool(input, options)
    return self:invokeOperation(input, {
        name = "GetDedicatedIpPool",
        input_schema = schemas.GetDedicatedIpPoolInput,
        output_schema = schemas.GetDedicatedIpPoolOutput,
        http_method = "GET",
        http_path = "/v2/email/dedicated-ip-pools/{PoolName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDedicatedIps(input, options)
    return self:invokeOperation(input, {
        name = "GetDedicatedIps",
        input_schema = schemas.GetDedicatedIpsInput,
        output_schema = schemas.GetDedicatedIpsOutput,
        http_method = "GET",
        http_path = "/v2/email/dedicated-ips",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeliverabilityDashboardOptions(input, options)
    return self:invokeOperation(input, {
        name = "GetDeliverabilityDashboardOptions",
        input_schema = schemas.GetDeliverabilityDashboardOptionsInput,
        output_schema = schemas.GetDeliverabilityDashboardOptionsOutput,
        http_method = "GET",
        http_path = "/v2/email/deliverability-dashboard",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeliverabilityTestReport(input, options)
    return self:invokeOperation(input, {
        name = "GetDeliverabilityTestReport",
        input_schema = schemas.GetDeliverabilityTestReportInput,
        output_schema = schemas.GetDeliverabilityTestReportOutput,
        http_method = "GET",
        http_path = "/v2/email/deliverability-dashboard/test-reports/{ReportId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDomainDeliverabilityCampaign(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainDeliverabilityCampaign",
        input_schema = schemas.GetDomainDeliverabilityCampaignInput,
        output_schema = schemas.GetDomainDeliverabilityCampaignOutput,
        http_method = "GET",
        http_path = "/v2/email/deliverability-dashboard/campaigns/{CampaignId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDomainStatisticsReport(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainStatisticsReport",
        input_schema = schemas.GetDomainStatisticsReportInput,
        output_schema = schemas.GetDomainStatisticsReportOutput,
        http_method = "GET",
        http_path = "/v2/email/deliverability-dashboard/statistics-report/{Domain}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEmailAddressInsights(input, options)
    return self:invokeOperation(input, {
        name = "GetEmailAddressInsights",
        input_schema = schemas.GetEmailAddressInsightsInput,
        output_schema = schemas.GetEmailAddressInsightsOutput,
        http_method = "POST",
        http_path = "/v2/email/email-address-insights",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEmailIdentity(input, options)
    return self:invokeOperation(input, {
        name = "GetEmailIdentity",
        input_schema = schemas.GetEmailIdentityInput,
        output_schema = schemas.GetEmailIdentityOutput,
        http_method = "GET",
        http_path = "/v2/email/identities/{EmailIdentity}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEmailIdentityPolicies(input, options)
    return self:invokeOperation(input, {
        name = "GetEmailIdentityPolicies",
        input_schema = schemas.GetEmailIdentityPoliciesInput,
        output_schema = schemas.GetEmailIdentityPoliciesOutput,
        http_method = "GET",
        http_path = "/v2/email/identities/{EmailIdentity}/policies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetEmailTemplate",
        input_schema = schemas.GetEmailTemplateInput,
        output_schema = schemas.GetEmailTemplateOutput,
        http_method = "GET",
        http_path = "/v2/email/templates/{TemplateName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetExportJob",
        input_schema = schemas.GetExportJobInput,
        output_schema = schemas.GetExportJobOutput,
        http_method = "GET",
        http_path = "/v2/email/export-jobs/{JobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getImportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetImportJob",
        input_schema = schemas.GetImportJobInput,
        output_schema = schemas.GetImportJobOutput,
        http_method = "GET",
        http_path = "/v2/email/import-jobs/{JobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMessageInsights(input, options)
    return self:invokeOperation(input, {
        name = "GetMessageInsights",
        input_schema = schemas.GetMessageInsightsInput,
        output_schema = schemas.GetMessageInsightsOutput,
        http_method = "GET",
        http_path = "/v2/email/insights/{MessageId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMultiRegionEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetMultiRegionEndpoint",
        input_schema = schemas.GetMultiRegionEndpointInput,
        output_schema = schemas.GetMultiRegionEndpointOutput,
        http_method = "GET",
        http_path = "/v2/email/multi-region-endpoints/{EndpointName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReputationEntity(input, options)
    return self:invokeOperation(input, {
        name = "GetReputationEntity",
        input_schema = schemas.GetReputationEntityInput,
        output_schema = schemas.GetReputationEntityOutput,
        http_method = "GET",
        http_path = "/v2/email/reputation/entities/{ReputationEntityType}/{ReputationEntityReference}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSuppressedDestination(input, options)
    return self:invokeOperation(input, {
        name = "GetSuppressedDestination",
        input_schema = schemas.GetSuppressedDestinationInput,
        output_schema = schemas.GetSuppressedDestinationOutput,
        http_method = "GET",
        http_path = "/v2/email/suppression/addresses/{EmailAddress}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTenant(input, options)
    return self:invokeOperation(input, {
        name = "GetTenant",
        input_schema = schemas.GetTenantInput,
        output_schema = schemas.GetTenantOutput,
        http_method = "POST",
        http_path = "/v2/email/tenants/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfigurationSets(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationSets",
        input_schema = schemas.ListConfigurationSetsInput,
        output_schema = schemas.ListConfigurationSetsOutput,
        http_method = "GET",
        http_path = "/v2/email/configuration-sets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContactLists(input, options)
    return self:invokeOperation(input, {
        name = "ListContactLists",
        input_schema = schemas.ListContactListsInput,
        output_schema = schemas.ListContactListsOutput,
        http_method = "GET",
        http_path = "/v2/email/contact-lists",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContacts(input, options)
    return self:invokeOperation(input, {
        name = "ListContacts",
        input_schema = schemas.ListContactsInput,
        output_schema = schemas.ListContactsOutput,
        http_method = "POST",
        http_path = "/v2/email/contact-lists/{ContactListName}/contacts/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCustomVerificationEmailTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomVerificationEmailTemplates",
        input_schema = schemas.ListCustomVerificationEmailTemplatesInput,
        output_schema = schemas.ListCustomVerificationEmailTemplatesOutput,
        http_method = "GET",
        http_path = "/v2/email/custom-verification-email-templates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDedicatedIpPools(input, options)
    return self:invokeOperation(input, {
        name = "ListDedicatedIpPools",
        input_schema = schemas.ListDedicatedIpPoolsInput,
        output_schema = schemas.ListDedicatedIpPoolsOutput,
        http_method = "GET",
        http_path = "/v2/email/dedicated-ip-pools",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeliverabilityTestReports(input, options)
    return self:invokeOperation(input, {
        name = "ListDeliverabilityTestReports",
        input_schema = schemas.ListDeliverabilityTestReportsInput,
        output_schema = schemas.ListDeliverabilityTestReportsOutput,
        http_method = "GET",
        http_path = "/v2/email/deliverability-dashboard/test-reports",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDomainDeliverabilityCampaigns(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainDeliverabilityCampaigns",
        input_schema = schemas.ListDomainDeliverabilityCampaignsInput,
        output_schema = schemas.ListDomainDeliverabilityCampaignsOutput,
        http_method = "GET",
        http_path = "/v2/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEmailIdentities(input, options)
    return self:invokeOperation(input, {
        name = "ListEmailIdentities",
        input_schema = schemas.ListEmailIdentitiesInput,
        output_schema = schemas.ListEmailIdentitiesOutput,
        http_method = "GET",
        http_path = "/v2/email/identities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEmailTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListEmailTemplates",
        input_schema = schemas.ListEmailTemplatesInput,
        output_schema = schemas.ListEmailTemplatesOutput,
        http_method = "GET",
        http_path = "/v2/email/templates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListExportJobs",
        input_schema = schemas.ListExportJobsInput,
        output_schema = schemas.ListExportJobsOutput,
        http_method = "POST",
        http_path = "/v2/email/list-export-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListImportJobs",
        input_schema = schemas.ListImportJobsInput,
        output_schema = schemas.ListImportJobsOutput,
        http_method = "POST",
        http_path = "/v2/email/import-jobs/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMultiRegionEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListMultiRegionEndpoints",
        input_schema = schemas.ListMultiRegionEndpointsInput,
        output_schema = schemas.ListMultiRegionEndpointsOutput,
        http_method = "GET",
        http_path = "/v2/email/multi-region-endpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommendations",
        input_schema = schemas.ListRecommendationsInput,
        output_schema = schemas.ListRecommendationsOutput,
        http_method = "POST",
        http_path = "/v2/email/vdm/recommendations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReputationEntities(input, options)
    return self:invokeOperation(input, {
        name = "ListReputationEntities",
        input_schema = schemas.ListReputationEntitiesInput,
        output_schema = schemas.ListReputationEntitiesOutput,
        http_method = "POST",
        http_path = "/v2/email/reputation/entities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceTenants(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceTenants",
        input_schema = schemas.ListResourceTenantsInput,
        output_schema = schemas.ListResourceTenantsOutput,
        http_method = "POST",
        http_path = "/v2/email/resources/tenants/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSuppressedDestinations(input, options)
    return self:invokeOperation(input, {
        name = "ListSuppressedDestinations",
        input_schema = schemas.ListSuppressedDestinationsInput,
        output_schema = schemas.ListSuppressedDestinationsOutput,
        http_method = "GET",
        http_path = "/v2/email/suppression/addresses",
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
        http_path = "/v2/email/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTenantResources(input, options)
    return self:invokeOperation(input, {
        name = "ListTenantResources",
        input_schema = schemas.ListTenantResourcesInput,
        output_schema = schemas.ListTenantResourcesOutput,
        http_method = "POST",
        http_path = "/v2/email/tenants/resources/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTenants(input, options)
    return self:invokeOperation(input, {
        name = "ListTenants",
        input_schema = schemas.ListTenantsInput,
        output_schema = schemas.ListTenantsOutput,
        http_method = "POST",
        http_path = "/v2/email/tenants/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAccountDedicatedIpWarmupAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountDedicatedIpWarmupAttributes",
        input_schema = schemas.PutAccountDedicatedIpWarmupAttributesInput,
        output_schema = schemas.PutAccountDedicatedIpWarmupAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/account/dedicated-ips/warmup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAccountDetails(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountDetails",
        input_schema = schemas.PutAccountDetailsInput,
        output_schema = schemas.PutAccountDetailsOutput,
        http_method = "POST",
        http_path = "/v2/email/account/details",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAccountSendingAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountSendingAttributes",
        input_schema = schemas.PutAccountSendingAttributesInput,
        output_schema = schemas.PutAccountSendingAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/account/sending",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAccountSuppressionAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountSuppressionAttributes",
        input_schema = schemas.PutAccountSuppressionAttributesInput,
        output_schema = schemas.PutAccountSuppressionAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/account/suppression",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAccountVdmAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountVdmAttributes",
        input_schema = schemas.PutAccountVdmAttributesInput,
        output_schema = schemas.PutAccountVdmAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/account/vdm",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putConfigurationSetArchivingOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetArchivingOptions",
        input_schema = schemas.PutConfigurationSetArchivingOptionsInput,
        output_schema = schemas.PutConfigurationSetArchivingOptionsOutput,
        http_method = "PUT",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/archiving-options",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putConfigurationSetDeliveryOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetDeliveryOptions",
        input_schema = schemas.PutConfigurationSetDeliveryOptionsInput,
        output_schema = schemas.PutConfigurationSetDeliveryOptionsOutput,
        http_method = "PUT",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/delivery-options",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putConfigurationSetReputationOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetReputationOptions",
        input_schema = schemas.PutConfigurationSetReputationOptionsInput,
        output_schema = schemas.PutConfigurationSetReputationOptionsOutput,
        http_method = "PUT",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/reputation-options",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putConfigurationSetSendingOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetSendingOptions",
        input_schema = schemas.PutConfigurationSetSendingOptionsInput,
        output_schema = schemas.PutConfigurationSetSendingOptionsOutput,
        http_method = "PUT",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/sending",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putConfigurationSetSuppressionOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetSuppressionOptions",
        input_schema = schemas.PutConfigurationSetSuppressionOptionsInput,
        output_schema = schemas.PutConfigurationSetSuppressionOptionsOutput,
        http_method = "PUT",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/suppression-options",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putConfigurationSetTrackingOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetTrackingOptions",
        input_schema = schemas.PutConfigurationSetTrackingOptionsInput,
        output_schema = schemas.PutConfigurationSetTrackingOptionsOutput,
        http_method = "PUT",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/tracking-options",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putConfigurationSetVdmOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetVdmOptions",
        input_schema = schemas.PutConfigurationSetVdmOptionsInput,
        output_schema = schemas.PutConfigurationSetVdmOptionsOutput,
        http_method = "PUT",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/vdm-options",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDedicatedIpInPool(input, options)
    return self:invokeOperation(input, {
        name = "PutDedicatedIpInPool",
        input_schema = schemas.PutDedicatedIpInPoolInput,
        output_schema = schemas.PutDedicatedIpInPoolOutput,
        http_method = "PUT",
        http_path = "/v2/email/dedicated-ips/{Ip}/pool",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDedicatedIpPoolScalingAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutDedicatedIpPoolScalingAttributes",
        input_schema = schemas.PutDedicatedIpPoolScalingAttributesInput,
        output_schema = schemas.PutDedicatedIpPoolScalingAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/dedicated-ip-pools/{PoolName}/scaling",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDedicatedIpWarmupAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutDedicatedIpWarmupAttributes",
        input_schema = schemas.PutDedicatedIpWarmupAttributesInput,
        output_schema = schemas.PutDedicatedIpWarmupAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/dedicated-ips/{Ip}/warmup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDeliverabilityDashboardOption(input, options)
    return self:invokeOperation(input, {
        name = "PutDeliverabilityDashboardOption",
        input_schema = schemas.PutDeliverabilityDashboardOptionInput,
        output_schema = schemas.PutDeliverabilityDashboardOptionOutput,
        http_method = "PUT",
        http_path = "/v2/email/deliverability-dashboard",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putEmailIdentityConfigurationSetAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutEmailIdentityConfigurationSetAttributes",
        input_schema = schemas.PutEmailIdentityConfigurationSetAttributesInput,
        output_schema = schemas.PutEmailIdentityConfigurationSetAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/identities/{EmailIdentity}/configuration-set",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putEmailIdentityDkimAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutEmailIdentityDkimAttributes",
        input_schema = schemas.PutEmailIdentityDkimAttributesInput,
        output_schema = schemas.PutEmailIdentityDkimAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/identities/{EmailIdentity}/dkim",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putEmailIdentityDkimSigningAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutEmailIdentityDkimSigningAttributes",
        input_schema = schemas.PutEmailIdentityDkimSigningAttributesInput,
        output_schema = schemas.PutEmailIdentityDkimSigningAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/identities/{EmailIdentity}/dkim/signing",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putEmailIdentityFeedbackAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutEmailIdentityFeedbackAttributes",
        input_schema = schemas.PutEmailIdentityFeedbackAttributesInput,
        output_schema = schemas.PutEmailIdentityFeedbackAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/identities/{EmailIdentity}/feedback",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putEmailIdentityMailFromAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutEmailIdentityMailFromAttributes",
        input_schema = schemas.PutEmailIdentityMailFromAttributesInput,
        output_schema = schemas.PutEmailIdentityMailFromAttributesOutput,
        http_method = "PUT",
        http_path = "/v2/email/identities/{EmailIdentity}/mail-from",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putSuppressedDestination(input, options)
    return self:invokeOperation(input, {
        name = "PutSuppressedDestination",
        input_schema = schemas.PutSuppressedDestinationInput,
        output_schema = schemas.PutSuppressedDestinationOutput,
        http_method = "PUT",
        http_path = "/v2/email/suppression/addresses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendBulkEmail(input, options)
    return self:invokeOperation(input, {
        name = "SendBulkEmail",
        input_schema = schemas.SendBulkEmailInput,
        output_schema = schemas.SendBulkEmailOutput,
        http_method = "POST",
        http_path = "/v2/email/outbound-bulk-emails",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            EndpointId = "EndpointId",
        },
    }, options)
end

function Client:sendCustomVerificationEmail(input, options)
    return self:invokeOperation(input, {
        name = "SendCustomVerificationEmail",
        input_schema = schemas.SendCustomVerificationEmailInput,
        output_schema = schemas.SendCustomVerificationEmailOutput,
        http_method = "POST",
        http_path = "/v2/email/outbound-custom-verification-emails",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendEmail(input, options)
    return self:invokeOperation(input, {
        name = "SendEmail",
        input_schema = schemas.SendEmailInput,
        output_schema = schemas.SendEmailOutput,
        http_method = "POST",
        http_path = "/v2/email/outbound-emails",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            EndpointId = "EndpointId",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/v2/email/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testRenderEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "TestRenderEmailTemplate",
        input_schema = schemas.TestRenderEmailTemplateInput,
        output_schema = schemas.TestRenderEmailTemplateOutput,
        http_method = "POST",
        http_path = "/v2/email/templates/{TemplateName}/render",
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
        http_method = "DELETE",
        http_path = "/v2/email/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConfigurationSetEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfigurationSetEventDestination",
        input_schema = schemas.UpdateConfigurationSetEventDestinationInput,
        output_schema = schemas.UpdateConfigurationSetEventDestinationOutput,
        http_method = "PUT",
        http_path = "/v2/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContact(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContact",
        input_schema = schemas.UpdateContactInput,
        output_schema = schemas.UpdateContactOutput,
        http_method = "PUT",
        http_path = "/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContactList(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContactList",
        input_schema = schemas.UpdateContactListInput,
        output_schema = schemas.UpdateContactListOutput,
        http_method = "PUT",
        http_path = "/v2/email/contact-lists/{ContactListName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCustomVerificationEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCustomVerificationEmailTemplate",
        input_schema = schemas.UpdateCustomVerificationEmailTemplateInput,
        output_schema = schemas.UpdateCustomVerificationEmailTemplateOutput,
        http_method = "PUT",
        http_path = "/v2/email/custom-verification-email-templates/{TemplateName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEmailIdentityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEmailIdentityPolicy",
        input_schema = schemas.UpdateEmailIdentityPolicyInput,
        output_schema = schemas.UpdateEmailIdentityPolicyOutput,
        http_method = "PUT",
        http_path = "/v2/email/identities/{EmailIdentity}/policies/{PolicyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEmailTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEmailTemplate",
        input_schema = schemas.UpdateEmailTemplateInput,
        output_schema = schemas.UpdateEmailTemplateOutput,
        http_method = "PUT",
        http_path = "/v2/email/templates/{TemplateName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateReputationEntityCustomerManagedStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReputationEntityCustomerManagedStatus",
        input_schema = schemas.UpdateReputationEntityCustomerManagedStatusInput,
        output_schema = schemas.UpdateReputationEntityCustomerManagedStatusOutput,
        http_method = "PUT",
        http_path = "/v2/email/reputation/entities/{ReputationEntityType}/{ReputationEntityReference}/customer-managed-status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateReputationEntityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReputationEntityPolicy",
        input_schema = schemas.UpdateReputationEntityPolicyInput,
        output_schema = schemas.UpdateReputationEntityPolicyOutput,
        http_method = "PUT",
        http_path = "/v2/email/reputation/entities/{ReputationEntityType}/{ReputationEntityReference}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
