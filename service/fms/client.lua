local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("fms.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("fms.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSFMS_20180101"
    cfg.signing_name = "awsfms_20180101"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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

function Client:associateAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAdminAccount",
        input_schema = types.AssociateAdminAccountInput,
        output_schema = types.AssociateAdminAccountOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateThirdPartyFirewall(input, options)
    return self:invokeOperation(input, {
        name = "AssociateThirdPartyFirewall",
        input_schema = types.AssociateThirdPartyFirewallInput,
        output_schema = types.AssociateThirdPartyFirewallOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchAssociateResource(input, options)
    return self:invokeOperation(input, {
        name = "BatchAssociateResource",
        input_schema = types.BatchAssociateResourceInput,
        output_schema = types.BatchAssociateResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDisassociateResource(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisassociateResource",
        input_schema = types.BatchDisassociateResourceInput,
        output_schema = types.BatchDisassociateResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAppsList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppsList",
        input_schema = types.DeleteAppsListInput,
        output_schema = types.DeleteAppsListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteNotificationChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotificationChannel",
        input_schema = types.DeleteNotificationChannelInput,
        output_schema = types.DeleteNotificationChannelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deletePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicy",
        input_schema = types.DeletePolicyInput,
        output_schema = types.DeletePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteProtocolsList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProtocolsList",
        input_schema = types.DeleteProtocolsListInput,
        output_schema = types.DeleteProtocolsListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteResourceSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourceSet",
        input_schema = types.DeleteResourceSetInput,
        output_schema = types.DeleteResourceSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAdminAccount",
        input_schema = types.DisassociateAdminAccountInput,
        output_schema = types.DisassociateAdminAccountOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateThirdPartyFirewall(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateThirdPartyFirewall",
        input_schema = types.DisassociateThirdPartyFirewallInput,
        output_schema = types.DisassociateThirdPartyFirewallOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetAdminAccount",
        input_schema = types.GetAdminAccountInput,
        output_schema = types.GetAdminAccountOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAdminScope(input, options)
    return self:invokeOperation(input, {
        name = "GetAdminScope",
        input_schema = types.GetAdminScopeInput,
        output_schema = types.GetAdminScopeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAppsList(input, options)
    return self:invokeOperation(input, {
        name = "GetAppsList",
        input_schema = types.GetAppsListInput,
        output_schema = types.GetAppsListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getComplianceDetail(input, options)
    return self:invokeOperation(input, {
        name = "GetComplianceDetail",
        input_schema = types.GetComplianceDetailInput,
        output_schema = types.GetComplianceDetailOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getNotificationChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetNotificationChannel",
        input_schema = types.GetNotificationChannelInput,
        output_schema = types.GetNotificationChannelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicy",
        input_schema = types.GetPolicyInput,
        output_schema = types.GetPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getProtectionStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetProtectionStatus",
        input_schema = types.GetProtectionStatusInput,
        output_schema = types.GetProtectionStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getProtocolsList(input, options)
    return self:invokeOperation(input, {
        name = "GetProtocolsList",
        input_schema = types.GetProtocolsListInput,
        output_schema = types.GetProtocolsListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResourceSet(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceSet",
        input_schema = types.GetResourceSetInput,
        output_schema = types.GetResourceSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getThirdPartyFirewallAssociationStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetThirdPartyFirewallAssociationStatus",
        input_schema = types.GetThirdPartyFirewallAssociationStatusInput,
        output_schema = types.GetThirdPartyFirewallAssociationStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getViolationDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetViolationDetails",
        input_schema = types.GetViolationDetailsInput,
        output_schema = types.GetViolationDetailsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAdminAccountsForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "ListAdminAccountsForOrganization",
        input_schema = types.ListAdminAccountsForOrganizationInput,
        output_schema = types.ListAdminAccountsForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAdminsManagingAccount(input, options)
    return self:invokeOperation(input, {
        name = "ListAdminsManagingAccount",
        input_schema = types.ListAdminsManagingAccountInput,
        output_schema = types.ListAdminsManagingAccountOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAppsLists(input, options)
    return self:invokeOperation(input, {
        name = "ListAppsLists",
        input_schema = types.ListAppsListsInput,
        output_schema = types.ListAppsListsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listComplianceStatus(input, options)
    return self:invokeOperation(input, {
        name = "ListComplianceStatus",
        input_schema = types.ListComplianceStatusInput,
        output_schema = types.ListComplianceStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDiscoveredResources(input, options)
    return self:invokeOperation(input, {
        name = "ListDiscoveredResources",
        input_schema = types.ListDiscoveredResourcesInput,
        output_schema = types.ListDiscoveredResourcesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listMemberAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListMemberAccounts",
        input_schema = types.ListMemberAccountsInput,
        output_schema = types.ListMemberAccountsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicies",
        input_schema = types.ListPoliciesInput,
        output_schema = types.ListPoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listProtocolsLists(input, options)
    return self:invokeOperation(input, {
        name = "ListProtocolsLists",
        input_schema = types.ListProtocolsListsInput,
        output_schema = types.ListProtocolsListsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResourceSetResources(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceSetResources",
        input_schema = types.ListResourceSetResourcesInput,
        output_schema = types.ListResourceSetResourcesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResourceSets(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceSets",
        input_schema = types.ListResourceSetsInput,
        output_schema = types.ListResourceSetsOutput,
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

function Client:listThirdPartyFirewallFirewallPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListThirdPartyFirewallFirewallPolicies",
        input_schema = types.ListThirdPartyFirewallFirewallPoliciesInput,
        output_schema = types.ListThirdPartyFirewallFirewallPoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "PutAdminAccount",
        input_schema = types.PutAdminAccountInput,
        output_schema = types.PutAdminAccountOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putAppsList(input, options)
    return self:invokeOperation(input, {
        name = "PutAppsList",
        input_schema = types.PutAppsListInput,
        output_schema = types.PutAppsListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putNotificationChannel(input, options)
    return self:invokeOperation(input, {
        name = "PutNotificationChannel",
        input_schema = types.PutNotificationChannelInput,
        output_schema = types.PutNotificationChannelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutPolicy",
        input_schema = types.PutPolicyInput,
        output_schema = types.PutPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putProtocolsList(input, options)
    return self:invokeOperation(input, {
        name = "PutProtocolsList",
        input_schema = types.PutProtocolsListInput,
        output_schema = types.PutProtocolsListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putResourceSet(input, options)
    return self:invokeOperation(input, {
        name = "PutResourceSet",
        input_schema = types.PutResourceSetInput,
        output_schema = types.PutResourceSetOutput,
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

return M
