local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("fms.endpoint_rules")
local schemas = require("fms.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSFMS_20180101"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "fms", signing_region = cfg.region } }
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

function Client:associateAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAdminAccount",
        input_schema = schemas.AssociateAdminAccountInput,
        output_schema = schemas.AssociateAdminAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateThirdPartyFirewall(input, options)
    return self:invokeOperation(input, {
        name = "AssociateThirdPartyFirewall",
        input_schema = schemas.AssociateThirdPartyFirewallInput,
        output_schema = schemas.AssociateThirdPartyFirewallOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchAssociateResource(input, options)
    return self:invokeOperation(input, {
        name = "BatchAssociateResource",
        input_schema = schemas.BatchAssociateResourceInput,
        output_schema = schemas.BatchAssociateResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDisassociateResource(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisassociateResource",
        input_schema = schemas.BatchDisassociateResourceInput,
        output_schema = schemas.BatchDisassociateResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAppsList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppsList",
        input_schema = schemas.DeleteAppsListInput,
        output_schema = schemas.DeleteAppsListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNotificationChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotificationChannel",
        input_schema = schemas.DeleteNotificationChannelInput,
        output_schema = schemas.DeleteNotificationChannelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicy",
        input_schema = schemas.DeletePolicyInput,
        output_schema = schemas.DeletePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProtocolsList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProtocolsList",
        input_schema = schemas.DeleteProtocolsListInput,
        output_schema = schemas.DeleteProtocolsListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourceSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourceSet",
        input_schema = schemas.DeleteResourceSetInput,
        output_schema = schemas.DeleteResourceSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAdminAccount",
        input_schema = schemas.DisassociateAdminAccountInput,
        output_schema = schemas.DisassociateAdminAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateThirdPartyFirewall(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateThirdPartyFirewall",
        input_schema = schemas.DisassociateThirdPartyFirewallInput,
        output_schema = schemas.DisassociateThirdPartyFirewallOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetAdminAccount",
        input_schema = schemas.GetAdminAccountInput,
        output_schema = schemas.GetAdminAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAdminScope(input, options)
    return self:invokeOperation(input, {
        name = "GetAdminScope",
        input_schema = schemas.GetAdminScopeInput,
        output_schema = schemas.GetAdminScopeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAppsList(input, options)
    return self:invokeOperation(input, {
        name = "GetAppsList",
        input_schema = schemas.GetAppsListInput,
        output_schema = schemas.GetAppsListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getComplianceDetail(input, options)
    return self:invokeOperation(input, {
        name = "GetComplianceDetail",
        input_schema = schemas.GetComplianceDetailInput,
        output_schema = schemas.GetComplianceDetailOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNotificationChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetNotificationChannel",
        input_schema = schemas.GetNotificationChannelInput,
        output_schema = schemas.GetNotificationChannelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicy",
        input_schema = schemas.GetPolicyInput,
        output_schema = schemas.GetPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProtectionStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetProtectionStatus",
        input_schema = schemas.GetProtectionStatusInput,
        output_schema = schemas.GetProtectionStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProtocolsList(input, options)
    return self:invokeOperation(input, {
        name = "GetProtocolsList",
        input_schema = schemas.GetProtocolsListInput,
        output_schema = schemas.GetProtocolsListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceSet(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceSet",
        input_schema = schemas.GetResourceSetInput,
        output_schema = schemas.GetResourceSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getThirdPartyFirewallAssociationStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetThirdPartyFirewallAssociationStatus",
        input_schema = schemas.GetThirdPartyFirewallAssociationStatusInput,
        output_schema = schemas.GetThirdPartyFirewallAssociationStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getViolationDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetViolationDetails",
        input_schema = schemas.GetViolationDetailsInput,
        output_schema = schemas.GetViolationDetailsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAdminAccountsForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "ListAdminAccountsForOrganization",
        input_schema = schemas.ListAdminAccountsForOrganizationInput,
        output_schema = schemas.ListAdminAccountsForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAdminsManagingAccount(input, options)
    return self:invokeOperation(input, {
        name = "ListAdminsManagingAccount",
        input_schema = schemas.ListAdminsManagingAccountInput,
        output_schema = schemas.ListAdminsManagingAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAppsLists(input, options)
    return self:invokeOperation(input, {
        name = "ListAppsLists",
        input_schema = schemas.ListAppsListsInput,
        output_schema = schemas.ListAppsListsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComplianceStatus(input, options)
    return self:invokeOperation(input, {
        name = "ListComplianceStatus",
        input_schema = schemas.ListComplianceStatusInput,
        output_schema = schemas.ListComplianceStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDiscoveredResources(input, options)
    return self:invokeOperation(input, {
        name = "ListDiscoveredResources",
        input_schema = schemas.ListDiscoveredResourcesInput,
        output_schema = schemas.ListDiscoveredResourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMemberAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListMemberAccounts",
        input_schema = schemas.ListMemberAccountsInput,
        output_schema = schemas.ListMemberAccountsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicies",
        input_schema = schemas.ListPoliciesInput,
        output_schema = schemas.ListPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProtocolsLists(input, options)
    return self:invokeOperation(input, {
        name = "ListProtocolsLists",
        input_schema = schemas.ListProtocolsListsInput,
        output_schema = schemas.ListProtocolsListsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceSetResources(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceSetResources",
        input_schema = schemas.ListResourceSetResourcesInput,
        output_schema = schemas.ListResourceSetResourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceSets(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceSets",
        input_schema = schemas.ListResourceSetsInput,
        output_schema = schemas.ListResourceSetsOutput,
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

function Client:listThirdPartyFirewallFirewallPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListThirdPartyFirewallFirewallPolicies",
        input_schema = schemas.ListThirdPartyFirewallFirewallPoliciesInput,
        output_schema = schemas.ListThirdPartyFirewallFirewallPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "PutAdminAccount",
        input_schema = schemas.PutAdminAccountInput,
        output_schema = schemas.PutAdminAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAppsList(input, options)
    return self:invokeOperation(input, {
        name = "PutAppsList",
        input_schema = schemas.PutAppsListInput,
        output_schema = schemas.PutAppsListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putNotificationChannel(input, options)
    return self:invokeOperation(input, {
        name = "PutNotificationChannel",
        input_schema = schemas.PutNotificationChannelInput,
        output_schema = schemas.PutNotificationChannelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutPolicy",
        input_schema = schemas.PutPolicyInput,
        output_schema = schemas.PutPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putProtocolsList(input, options)
    return self:invokeOperation(input, {
        name = "PutProtocolsList",
        input_schema = schemas.PutProtocolsListInput,
        output_schema = schemas.PutProtocolsListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourceSet(input, options)
    return self:invokeOperation(input, {
        name = "PutResourceSet",
        input_schema = schemas.PutResourceSetInput,
        output_schema = schemas.PutResourceSetOutput,
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

return M
