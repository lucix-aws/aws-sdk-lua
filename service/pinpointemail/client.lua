local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("pinpointemail.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("pinpointemail.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonPinpointEmailService"
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

function Client:createConfigurationSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationSet",
        input_schema = schemas.CreateConfigurationSetInput,
        output_schema = schemas.CreateConfigurationSetOutput,
        http_method = "POST",
        http_path = "/v1/email/configuration-sets",
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
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations",
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
        http_path = "/v1/email/dedicated-ip-pools",
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
        http_path = "/v1/email/deliverability-dashboard/test",
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
        http_path = "/v1/email/identities",
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
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}",
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
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}",
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
        http_path = "/v1/email/dedicated-ip-pools/{PoolName}",
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
        http_path = "/v1/email/identities/{EmailIdentity}",
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
        http_path = "/v1/email/account",
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
        http_path = "/v1/email/deliverability-dashboard/blacklist-report",
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
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}",
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
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations",
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
        http_path = "/v1/email/dedicated-ips/{Ip}",
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
        http_path = "/v1/email/dedicated-ips",
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
        http_path = "/v1/email/deliverability-dashboard",
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
        http_path = "/v1/email/deliverability-dashboard/test-reports/{ReportId}",
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
        http_path = "/v1/email/deliverability-dashboard/campaigns/{CampaignId}",
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
        http_path = "/v1/email/deliverability-dashboard/statistics-report/{Domain}",
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
        http_path = "/v1/email/identities/{EmailIdentity}",
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
        http_path = "/v1/email/configuration-sets",
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
        http_path = "/v1/email/dedicated-ip-pools",
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
        http_path = "/v1/email/deliverability-dashboard/test-reports",
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
        http_path = "/v1/email/deliverability-dashboard/domains/{SubscribedDomain}/campaigns",
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
        http_path = "/v1/email/identities",
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
        http_path = "/v1/email/tags",
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
        http_path = "/v1/email/account/dedicated-ips/warmup",
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
        http_path = "/v1/email/account/sending",
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
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}/delivery-options",
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
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}/reputation-options",
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
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}/sending",
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
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}/tracking-options",
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
        http_path = "/v1/email/dedicated-ips/{Ip}/pool",
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
        http_path = "/v1/email/dedicated-ips/{Ip}/warmup",
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
        http_path = "/v1/email/deliverability-dashboard",
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
        http_path = "/v1/email/identities/{EmailIdentity}/dkim",
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
        http_path = "/v1/email/identities/{EmailIdentity}/feedback",
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
        http_path = "/v1/email/identities/{EmailIdentity}/mail-from",
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
        http_path = "/v1/email/outbound-emails",
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
        http_path = "/v1/email/tags",
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
        http_path = "/v1/email/tags",
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
        http_path = "/v1/email/configuration-sets/{ConfigurationSetName}/event-destinations/{EventDestinationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
