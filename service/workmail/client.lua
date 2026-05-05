local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("workmail.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("workmail.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "WorkMailService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "workmail", signing_region = cfg.region } }
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

function Client:associateDelegateToResource(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDelegateToResource",
        input_schema = types.AssociateDelegateToResourceInput,
        output_schema = types.AssociateDelegateToResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateMemberToGroup(input, options)
    return self:invokeOperation(input, {
        name = "AssociateMemberToGroup",
        input_schema = types.AssociateMemberToGroupInput,
        output_schema = types.AssociateMemberToGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:assumeImpersonationRole(input, options)
    return self:invokeOperation(input, {
        name = "AssumeImpersonationRole",
        input_schema = types.AssumeImpersonationRoleInput,
        output_schema = types.AssumeImpersonationRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelMailboxExportJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelMailboxExportJob",
        input_schema = types.CancelMailboxExportJobInput,
        output_schema = types.CancelMailboxExportJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateAlias",
        input_schema = types.CreateAliasInput,
        output_schema = types.CreateAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAvailabilityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateAvailabilityConfiguration",
        input_schema = types.CreateAvailabilityConfigurationInput,
        output_schema = types.CreateAvailabilityConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateGroup",
        input_schema = types.CreateGroupInput,
        output_schema = types.CreateGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIdentityCenterApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateIdentityCenterApplication",
        input_schema = types.CreateIdentityCenterApplicationInput,
        output_schema = types.CreateIdentityCenterApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createImpersonationRole(input, options)
    return self:invokeOperation(input, {
        name = "CreateImpersonationRole",
        input_schema = types.CreateImpersonationRoleInput,
        output_schema = types.CreateImpersonationRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMobileDeviceAccessRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateMobileDeviceAccessRule",
        input_schema = types.CreateMobileDeviceAccessRuleInput,
        output_schema = types.CreateMobileDeviceAccessRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOrganization(input, options)
    return self:invokeOperation(input, {
        name = "CreateOrganization",
        input_schema = types.CreateOrganizationInput,
        output_schema = types.CreateOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResource(input, options)
    return self:invokeOperation(input, {
        name = "CreateResource",
        input_schema = types.CreateResourceInput,
        output_schema = types.CreateResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateUser",
        input_schema = types.CreateUserInput,
        output_schema = types.CreateUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccessControlRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessControlRule",
        input_schema = types.DeleteAccessControlRuleInput,
        output_schema = types.DeleteAccessControlRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAlias",
        input_schema = types.DeleteAliasInput,
        output_schema = types.DeleteAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAvailabilityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAvailabilityConfiguration",
        input_schema = types.DeleteAvailabilityConfigurationInput,
        output_schema = types.DeleteAvailabilityConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEmailMonitoringConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEmailMonitoringConfiguration",
        input_schema = types.DeleteEmailMonitoringConfigurationInput,
        output_schema = types.DeleteEmailMonitoringConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGroup",
        input_schema = types.DeleteGroupInput,
        output_schema = types.DeleteGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIdentityCenterApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIdentityCenterApplication",
        input_schema = types.DeleteIdentityCenterApplicationInput,
        output_schema = types.DeleteIdentityCenterApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIdentityProviderConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIdentityProviderConfiguration",
        input_schema = types.DeleteIdentityProviderConfigurationInput,
        output_schema = types.DeleteIdentityProviderConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteImpersonationRole(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImpersonationRole",
        input_schema = types.DeleteImpersonationRoleInput,
        output_schema = types.DeleteImpersonationRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMailboxPermissions(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMailboxPermissions",
        input_schema = types.DeleteMailboxPermissionsInput,
        output_schema = types.DeleteMailboxPermissionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMobileDeviceAccessOverride(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMobileDeviceAccessOverride",
        input_schema = types.DeleteMobileDeviceAccessOverrideInput,
        output_schema = types.DeleteMobileDeviceAccessOverrideOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMobileDeviceAccessRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMobileDeviceAccessRule",
        input_schema = types.DeleteMobileDeviceAccessRuleInput,
        output_schema = types.DeleteMobileDeviceAccessRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOrganization(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOrganization",
        input_schema = types.DeleteOrganizationInput,
        output_schema = types.DeleteOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePersonalAccessToken(input, options)
    return self:invokeOperation(input, {
        name = "DeletePersonalAccessToken",
        input_schema = types.DeletePersonalAccessTokenInput,
        output_schema = types.DeletePersonalAccessTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResource",
        input_schema = types.DeleteResourceInput,
        output_schema = types.DeleteResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRetentionPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRetentionPolicy",
        input_schema = types.DeleteRetentionPolicyInput,
        output_schema = types.DeleteRetentionPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUser",
        input_schema = types.DeleteUserInput,
        output_schema = types.DeleteUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterFromWorkMail(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterFromWorkMail",
        input_schema = types.DeregisterFromWorkMailInput,
        output_schema = types.DeregisterFromWorkMailOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterMailDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterMailDomain",
        input_schema = types.DeregisterMailDomainInput,
        output_schema = types.DeregisterMailDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEmailMonitoringConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEmailMonitoringConfiguration",
        input_schema = types.DescribeEmailMonitoringConfigurationInput,
        output_schema = types.DescribeEmailMonitoringConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEntity(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEntity",
        input_schema = types.DescribeEntityInput,
        output_schema = types.DescribeEntityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGroup",
        input_schema = types.DescribeGroupInput,
        output_schema = types.DescribeGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIdentityProviderConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIdentityProviderConfiguration",
        input_schema = types.DescribeIdentityProviderConfigurationInput,
        output_schema = types.DescribeIdentityProviderConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInboundDmarcSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInboundDmarcSettings",
        input_schema = types.DescribeInboundDmarcSettingsInput,
        output_schema = types.DescribeInboundDmarcSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMailboxExportJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMailboxExportJob",
        input_schema = types.DescribeMailboxExportJobInput,
        output_schema = types.DescribeMailboxExportJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOrganization(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganization",
        input_schema = types.DescribeOrganizationInput,
        output_schema = types.DescribeOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeResource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResource",
        input_schema = types.DescribeResourceInput,
        output_schema = types.DescribeResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeUser(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUser",
        input_schema = types.DescribeUserInput,
        output_schema = types.DescribeUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateDelegateFromResource(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateDelegateFromResource",
        input_schema = types.DisassociateDelegateFromResourceInput,
        output_schema = types.DisassociateDelegateFromResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateMemberFromGroup(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateMemberFromGroup",
        input_schema = types.DisassociateMemberFromGroupInput,
        output_schema = types.DisassociateMemberFromGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccessControlEffect(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessControlEffect",
        input_schema = types.GetAccessControlEffectInput,
        output_schema = types.GetAccessControlEffectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDefaultRetentionPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetDefaultRetentionPolicy",
        input_schema = types.GetDefaultRetentionPolicyInput,
        output_schema = types.GetDefaultRetentionPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getImpersonationRole(input, options)
    return self:invokeOperation(input, {
        name = "GetImpersonationRole",
        input_schema = types.GetImpersonationRoleInput,
        output_schema = types.GetImpersonationRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getImpersonationRoleEffect(input, options)
    return self:invokeOperation(input, {
        name = "GetImpersonationRoleEffect",
        input_schema = types.GetImpersonationRoleEffectInput,
        output_schema = types.GetImpersonationRoleEffectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMailboxDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetMailboxDetails",
        input_schema = types.GetMailboxDetailsInput,
        output_schema = types.GetMailboxDetailsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMailDomain(input, options)
    return self:invokeOperation(input, {
        name = "GetMailDomain",
        input_schema = types.GetMailDomainInput,
        output_schema = types.GetMailDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMobileDeviceAccessEffect(input, options)
    return self:invokeOperation(input, {
        name = "GetMobileDeviceAccessEffect",
        input_schema = types.GetMobileDeviceAccessEffectInput,
        output_schema = types.GetMobileDeviceAccessEffectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMobileDeviceAccessOverride(input, options)
    return self:invokeOperation(input, {
        name = "GetMobileDeviceAccessOverride",
        input_schema = types.GetMobileDeviceAccessOverrideInput,
        output_schema = types.GetMobileDeviceAccessOverrideOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPersonalAccessTokenMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetPersonalAccessTokenMetadata",
        input_schema = types.GetPersonalAccessTokenMetadataInput,
        output_schema = types.GetPersonalAccessTokenMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccessControlRules(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessControlRules",
        input_schema = types.ListAccessControlRulesInput,
        output_schema = types.ListAccessControlRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListAliases",
        input_schema = types.ListAliasesInput,
        output_schema = types.ListAliasesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAvailabilityConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListAvailabilityConfigurations",
        input_schema = types.ListAvailabilityConfigurationsInput,
        output_schema = types.ListAvailabilityConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroupMembers(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupMembers",
        input_schema = types.ListGroupMembersInput,
        output_schema = types.ListGroupMembersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListGroups",
        input_schema = types.ListGroupsInput,
        output_schema = types.ListGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroupsForEntity(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupsForEntity",
        input_schema = types.ListGroupsForEntityInput,
        output_schema = types.ListGroupsForEntityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImpersonationRoles(input, options)
    return self:invokeOperation(input, {
        name = "ListImpersonationRoles",
        input_schema = types.ListImpersonationRolesInput,
        output_schema = types.ListImpersonationRolesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMailboxExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListMailboxExportJobs",
        input_schema = types.ListMailboxExportJobsInput,
        output_schema = types.ListMailboxExportJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMailboxPermissions(input, options)
    return self:invokeOperation(input, {
        name = "ListMailboxPermissions",
        input_schema = types.ListMailboxPermissionsInput,
        output_schema = types.ListMailboxPermissionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMailDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListMailDomains",
        input_schema = types.ListMailDomainsInput,
        output_schema = types.ListMailDomainsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMobileDeviceAccessOverrides(input, options)
    return self:invokeOperation(input, {
        name = "ListMobileDeviceAccessOverrides",
        input_schema = types.ListMobileDeviceAccessOverridesInput,
        output_schema = types.ListMobileDeviceAccessOverridesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMobileDeviceAccessRules(input, options)
    return self:invokeOperation(input, {
        name = "ListMobileDeviceAccessRules",
        input_schema = types.ListMobileDeviceAccessRulesInput,
        output_schema = types.ListMobileDeviceAccessRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOrganizations(input, options)
    return self:invokeOperation(input, {
        name = "ListOrganizations",
        input_schema = types.ListOrganizationsInput,
        output_schema = types.ListOrganizationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPersonalAccessTokens(input, options)
    return self:invokeOperation(input, {
        name = "ListPersonalAccessTokens",
        input_schema = types.ListPersonalAccessTokensInput,
        output_schema = types.ListPersonalAccessTokensOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceDelegates(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceDelegates",
        input_schema = types.ListResourceDelegatesInput,
        output_schema = types.ListResourceDelegatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResources(input, options)
    return self:invokeOperation(input, {
        name = "ListResources",
        input_schema = types.ListResourcesInput,
        output_schema = types.ListResourcesOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListUsers",
        input_schema = types.ListUsersInput,
        output_schema = types.ListUsersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAccessControlRule(input, options)
    return self:invokeOperation(input, {
        name = "PutAccessControlRule",
        input_schema = types.PutAccessControlRuleInput,
        output_schema = types.PutAccessControlRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putEmailMonitoringConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutEmailMonitoringConfiguration",
        input_schema = types.PutEmailMonitoringConfigurationInput,
        output_schema = types.PutEmailMonitoringConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putIdentityProviderConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutIdentityProviderConfiguration",
        input_schema = types.PutIdentityProviderConfigurationInput,
        output_schema = types.PutIdentityProviderConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putInboundDmarcSettings(input, options)
    return self:invokeOperation(input, {
        name = "PutInboundDmarcSettings",
        input_schema = types.PutInboundDmarcSettingsInput,
        output_schema = types.PutInboundDmarcSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putMailboxPermissions(input, options)
    return self:invokeOperation(input, {
        name = "PutMailboxPermissions",
        input_schema = types.PutMailboxPermissionsInput,
        output_schema = types.PutMailboxPermissionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putMobileDeviceAccessOverride(input, options)
    return self:invokeOperation(input, {
        name = "PutMobileDeviceAccessOverride",
        input_schema = types.PutMobileDeviceAccessOverrideInput,
        output_schema = types.PutMobileDeviceAccessOverrideOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRetentionPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutRetentionPolicy",
        input_schema = types.PutRetentionPolicyInput,
        output_schema = types.PutRetentionPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerMailDomain(input, options)
    return self:invokeOperation(input, {
        name = "RegisterMailDomain",
        input_schema = types.RegisterMailDomainInput,
        output_schema = types.RegisterMailDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerToWorkMail(input, options)
    return self:invokeOperation(input, {
        name = "RegisterToWorkMail",
        input_schema = types.RegisterToWorkMailInput,
        output_schema = types.RegisterToWorkMailOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetPassword(input, options)
    return self:invokeOperation(input, {
        name = "ResetPassword",
        input_schema = types.ResetPasswordInput,
        output_schema = types.ResetPasswordOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMailboxExportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartMailboxExportJob",
        input_schema = types.StartMailboxExportJobInput,
        output_schema = types.StartMailboxExportJobOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testAvailabilityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "TestAvailabilityConfiguration",
        input_schema = types.TestAvailabilityConfigurationInput,
        output_schema = types.TestAvailabilityConfigurationOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAvailabilityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAvailabilityConfiguration",
        input_schema = types.UpdateAvailabilityConfigurationInput,
        output_schema = types.UpdateAvailabilityConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDefaultMailDomain(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDefaultMailDomain",
        input_schema = types.UpdateDefaultMailDomainInput,
        output_schema = types.UpdateDefaultMailDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGroup",
        input_schema = types.UpdateGroupInput,
        output_schema = types.UpdateGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateImpersonationRole(input, options)
    return self:invokeOperation(input, {
        name = "UpdateImpersonationRole",
        input_schema = types.UpdateImpersonationRoleInput,
        output_schema = types.UpdateImpersonationRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMailboxQuota(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMailboxQuota",
        input_schema = types.UpdateMailboxQuotaInput,
        output_schema = types.UpdateMailboxQuotaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMobileDeviceAccessRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMobileDeviceAccessRule",
        input_schema = types.UpdateMobileDeviceAccessRuleInput,
        output_schema = types.UpdateMobileDeviceAccessRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePrimaryEmailAddress(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePrimaryEmailAddress",
        input_schema = types.UpdatePrimaryEmailAddressInput,
        output_schema = types.UpdatePrimaryEmailAddressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResource",
        input_schema = types.UpdateResourceInput,
        output_schema = types.UpdateResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUser",
        input_schema = types.UpdateUserInput,
        output_schema = types.UpdateUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
