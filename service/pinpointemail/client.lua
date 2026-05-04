local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("pinpointemail.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("pinpointemail.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonPinpointEmailService"
    cfg.signing_name = "amazonpinpointemailservice"
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

function Client:createConfigurationSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationSet",
        input_schema = types.CreateConfigurationSetInput,
        output_schema = types.CreateConfigurationSetOutput,
        http_method = "POST",
        http_path = "/v1/email/configuration-sets",
    }, options)
end

function Client:createConfigurationSetEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationSetEventDestination",
        input_schema = types.CreateConfigurationSetEventDestinationInput,
        output_schema = types.CreateConfigurationSetEventDestinationOutput,
        http_method = "POST",
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations",
    }, options)
end

function Client:createDedicatedIpPool(input, options)
    return self:invokeOperation(input, {
        name = "CreateDedicatedIpPool",
        input_schema = types.CreateDedicatedIpPoolInput,
        output_schema = types.CreateDedicatedIpPoolOutput,
        http_method = "POST",
        http_path = "/v1/email/dedicated-ip-pools",
    }, options)
end

function Client:createDeliverabilityTestReport(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeliverabilityTestReport",
        input_schema = types.CreateDeliverabilityTestReportInput,
        output_schema = types.CreateDeliverabilityTestReportOutput,
        http_method = "POST",
        http_path = "/v1/email/deliverability-dashboard/test",
    }, options)
end

function Client:createEmailIdentity(input, options)
    return self:invokeOperation(input, {
        name = "CreateEmailIdentity",
        input_schema = types.CreateEmailIdentityInput,
        output_schema = types.CreateEmailIdentityOutput,
        http_method = "POST",
        http_path = "/v1/email/identities",
    }, options)
end

function Client:deleteConfigurationSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationSet",
        input_schema = types.DeleteConfigurationSetInput,
        output_schema = types.DeleteConfigurationSetOutput,
        http_method = "DELETE",
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}",
    }, options)
end

function Client:deleteConfigurationSetEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationSetEventDestination",
        input_schema = types.DeleteConfigurationSetEventDestinationInput,
        output_schema = types.DeleteConfigurationSetEventDestinationOutput,
        http_method = "DELETE",
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}",
    }, options)
end

function Client:deleteDedicatedIpPool(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDedicatedIpPool",
        input_schema = types.DeleteDedicatedIpPoolInput,
        output_schema = types.DeleteDedicatedIpPoolOutput,
        http_method = "DELETE",
        http_path = "/v1/email/dedicated-ip-pools/{PoolName}",
    }, options)
end

function Client:deleteEmailIdentity(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEmailIdentity",
        input_schema = types.DeleteEmailIdentityInput,
        output_schema = types.DeleteEmailIdentityOutput,
        http_method = "DELETE",
        http_path = "/v1/email/identities/{EmailIdentity}",
    }, options)
end

function Client:getAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetAccount",
        input_schema = types.GetAccountInput,
        output_schema = types.GetAccountOutput,
        http_method = "GET",
        http_path = "/v1/email/account",
    }, options)
end

function Client:getBlacklistReports(input, options)
    return self:invokeOperation(input, {
        name = "GetBlacklistReports",
        input_schema = types.GetBlacklistReportsInput,
        output_schema = types.GetBlacklistReportsOutput,
        http_method = "GET",
        http_path = "/v1/email/deliverability-dashboard/blacklist-report",
    }, options)
end

function Client:getConfigurationSet(input, options)
    return self:invokeOperation(input, {
        name = "GetConfigurationSet",
        input_schema = types.GetConfigurationSetInput,
        output_schema = types.GetConfigurationSetOutput,
        http_method = "GET",
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}",
    }, options)
end

function Client:getConfigurationSetEventDestinations(input, options)
    return self:invokeOperation(input, {
        name = "GetConfigurationSetEventDestinations",
        input_schema = types.GetConfigurationSetEventDestinationsInput,
        output_schema = types.GetConfigurationSetEventDestinationsOutput,
        http_method = "GET",
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations",
    }, options)
end

function Client:getDedicatedIp(input, options)
    return self:invokeOperation(input, {
        name = "GetDedicatedIp",
        input_schema = types.GetDedicatedIpInput,
        output_schema = types.GetDedicatedIpOutput,
        http_method = "GET",
        http_path = "/v1/email/dedicated-ips/{Ip}",
    }, options)
end

function Client:getDedicatedIps(input, options)
    return self:invokeOperation(input, {
        name = "GetDedicatedIps",
        input_schema = types.GetDedicatedIpsInput,
        output_schema = types.GetDedicatedIpsOutput,
        http_method = "GET",
        http_path = "/v1/email/dedicated-ips",
    }, options)
end

function Client:getDeliverabilityDashboardOptions(input, options)
    return self:invokeOperation(input, {
        name = "GetDeliverabilityDashboardOptions",
        input_schema = types.GetDeliverabilityDashboardOptionsInput,
        output_schema = types.GetDeliverabilityDashboardOptionsOutput,
        http_method = "GET",
        http_path = "/v1/email/deliverability-dashboard",
    }, options)
end

function Client:getDeliverabilityTestReport(input, options)
    return self:invokeOperation(input, {
        name = "GetDeliverabilityTestReport",
        input_schema = types.GetDeliverabilityTestReportInput,
        output_schema = types.GetDeliverabilityTestReportOutput,
        http_method = "GET",
        http_path = "/v1/email/deliverability-dashboard/test-reports/{ReportId}",
    }, options)
end

function Client:getDomainDeliverabilityCampaign(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainDeliverabilityCampaign",
        input_schema = types.GetDomainDeliverabilityCampaignInput,
        output_schema = types.GetDomainDeliverabilityCampaignOutput,
        http_method = "GET",
        http_path = "/v1/email/deliverability-dashboard/campaigns/{CampaignId}",
    }, options)
end

function Client:getDomainStatisticsReport(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainStatisticsReport",
        input_schema = types.GetDomainStatisticsReportInput,
        output_schema = types.GetDomainStatisticsReportOutput,
        http_method = "GET",
        http_path = "/v1/email/deliverability-dashboard/statistics-report/{Domain}",
    }, options)
end

function Client:getEmailIdentity(input, options)
    return self:invokeOperation(input, {
        name = "GetEmailIdentity",
        input_schema = types.GetEmailIdentityInput,
        output_schema = types.GetEmailIdentityOutput,
        http_method = "GET",
        http_path = "/v1/email/identities/{EmailIdentity}",
    }, options)
end

function Client:listConfigurationSets(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationSets",
        input_schema = types.ListConfigurationSetsInput,
        output_schema = types.ListConfigurationSetsOutput,
        http_method = "GET",
        http_path = "/v1/email/configuration-sets",
    }, options)
end

function Client:listDedicatedIpPools(input, options)
    return self:invokeOperation(input, {
        name = "ListDedicatedIpPools",
        input_schema = types.ListDedicatedIpPoolsInput,
        output_schema = types.ListDedicatedIpPoolsOutput,
        http_method = "GET",
        http_path = "/v1/email/dedicated-ip-pools",
    }, options)
end

function Client:listDeliverabilityTestReports(input, options)
    return self:invokeOperation(input, {
        name = "ListDeliverabilityTestReports",
        input_schema = types.ListDeliverabilityTestReportsInput,
        output_schema = types.ListDeliverabilityTestReportsOutput,
        http_method = "GET",
        http_path = "/v1/email/deliverability-dashboard/test-reports",
    }, options)
end

function Client:listDomainDeliverabilityCampaigns(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainDeliverabilityCampaigns",
        input_schema = types.ListDomainDeliverabilityCampaignsInput,
        output_schema = types.ListDomainDeliverabilityCampaignsOutput,
        http_method = "GET",
        http_path = "/v1/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns",
    }, options)
end

function Client:listEmailIdentities(input, options)
    return self:invokeOperation(input, {
        name = "ListEmailIdentities",
        input_schema = types.ListEmailIdentitiesInput,
        output_schema = types.ListEmailIdentitiesOutput,
        http_method = "GET",
        http_path = "/v1/email/identities",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/v1/email/tags",
    }, options)
end

function Client:putAccountDedicatedIpWarmupAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountDedicatedIpWarmupAttributes",
        input_schema = types.PutAccountDedicatedIpWarmupAttributesInput,
        output_schema = types.PutAccountDedicatedIpWarmupAttributesOutput,
        http_method = "PUT",
        http_path = "/v1/email/account/dedicated-ips/warmup",
    }, options)
end

function Client:putAccountSendingAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountSendingAttributes",
        input_schema = types.PutAccountSendingAttributesInput,
        output_schema = types.PutAccountSendingAttributesOutput,
        http_method = "PUT",
        http_path = "/v1/email/account/sending",
    }, options)
end

function Client:putConfigurationSetDeliveryOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetDeliveryOptions",
        input_schema = types.PutConfigurationSetDeliveryOptionsInput,
        output_schema = types.PutConfigurationSetDeliveryOptionsOutput,
        http_method = "PUT",
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}/delivery-options",
    }, options)
end

function Client:putConfigurationSetReputationOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetReputationOptions",
        input_schema = types.PutConfigurationSetReputationOptionsInput,
        output_schema = types.PutConfigurationSetReputationOptionsOutput,
        http_method = "PUT",
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}/reputation-options",
    }, options)
end

function Client:putConfigurationSetSendingOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetSendingOptions",
        input_schema = types.PutConfigurationSetSendingOptionsInput,
        output_schema = types.PutConfigurationSetSendingOptionsOutput,
        http_method = "PUT",
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}/sending",
    }, options)
end

function Client:putConfigurationSetTrackingOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationSetTrackingOptions",
        input_schema = types.PutConfigurationSetTrackingOptionsInput,
        output_schema = types.PutConfigurationSetTrackingOptionsOutput,
        http_method = "PUT",
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}/tracking-options",
    }, options)
end

function Client:putDedicatedIpInPool(input, options)
    return self:invokeOperation(input, {
        name = "PutDedicatedIpInPool",
        input_schema = types.PutDedicatedIpInPoolInput,
        output_schema = types.PutDedicatedIpInPoolOutput,
        http_method = "PUT",
        http_path = "/v1/email/dedicated-ips/{Ip}/pool",
    }, options)
end

function Client:putDedicatedIpWarmupAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutDedicatedIpWarmupAttributes",
        input_schema = types.PutDedicatedIpWarmupAttributesInput,
        output_schema = types.PutDedicatedIpWarmupAttributesOutput,
        http_method = "PUT",
        http_path = "/v1/email/dedicated-ips/{Ip}/warmup",
    }, options)
end

function Client:putDeliverabilityDashboardOption(input, options)
    return self:invokeOperation(input, {
        name = "PutDeliverabilityDashboardOption",
        input_schema = types.PutDeliverabilityDashboardOptionInput,
        output_schema = types.PutDeliverabilityDashboardOptionOutput,
        http_method = "PUT",
        http_path = "/v1/email/deliverability-dashboard",
    }, options)
end

function Client:putEmailIdentityDkimAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutEmailIdentityDkimAttributes",
        input_schema = types.PutEmailIdentityDkimAttributesInput,
        output_schema = types.PutEmailIdentityDkimAttributesOutput,
        http_method = "PUT",
        http_path = "/v1/email/identities/{EmailIdentity}/dkim",
    }, options)
end

function Client:putEmailIdentityFeedbackAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutEmailIdentityFeedbackAttributes",
        input_schema = types.PutEmailIdentityFeedbackAttributesInput,
        output_schema = types.PutEmailIdentityFeedbackAttributesOutput,
        http_method = "PUT",
        http_path = "/v1/email/identities/{EmailIdentity}/feedback",
    }, options)
end

function Client:putEmailIdentityMailFromAttributes(input, options)
    return self:invokeOperation(input, {
        name = "PutEmailIdentityMailFromAttributes",
        input_schema = types.PutEmailIdentityMailFromAttributesInput,
        output_schema = types.PutEmailIdentityMailFromAttributesOutput,
        http_method = "PUT",
        http_path = "/v1/email/identities/{EmailIdentity}/mail-from",
    }, options)
end

function Client:sendEmail(input, options)
    return self:invokeOperation(input, {
        name = "SendEmail",
        input_schema = types.SendEmailInput,
        output_schema = types.SendEmailOutput,
        http_method = "POST",
        http_path = "/v1/email/outbound-emails",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/v1/email/tags",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/v1/email/tags",
    }, options)
end

function Client:updateConfigurationSetEventDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfigurationSetEventDestination",
        input_schema = types.UpdateConfigurationSetEventDestinationInput,
        output_schema = types.UpdateConfigurationSetEventDestinationOutput,
        http_method = "PUT",
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}",
    }, options)
end

return M
