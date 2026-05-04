local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ssoadmin.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("ssoadmin.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SWBExternalService"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "sso", signing_region = cfg.region } }
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

function Client:addRegion(input, options)
    return self:invokeOperation(input, {
        name = "AddRegion",
        input_schema = types.AddRegionInput,
        output_schema = types.AddRegionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachCustomerManagedPolicyReferenceToPermissionSet(input, options)
    return self:invokeOperation(input, {
        name = "AttachCustomerManagedPolicyReferenceToPermissionSet",
        input_schema = types.AttachCustomerManagedPolicyReferenceToPermissionSetInput,
        output_schema = types.AttachCustomerManagedPolicyReferenceToPermissionSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachManagedPolicyToPermissionSet(input, options)
    return self:invokeOperation(input, {
        name = "AttachManagedPolicyToPermissionSet",
        input_schema = types.AttachManagedPolicyToPermissionSetInput,
        output_schema = types.AttachManagedPolicyToPermissionSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAccountAssignment(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccountAssignment",
        input_schema = types.CreateAccountAssignmentInput,
        output_schema = types.CreateAccountAssignmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = types.CreateApplicationInput,
        output_schema = types.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApplicationAssignment(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplicationAssignment",
        input_schema = types.CreateApplicationAssignmentInput,
        output_schema = types.CreateApplicationAssignmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateInstance",
        input_schema = types.CreateInstanceInput,
        output_schema = types.CreateInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInstanceAccessControlAttributeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateInstanceAccessControlAttributeConfiguration",
        input_schema = types.CreateInstanceAccessControlAttributeConfigurationInput,
        output_schema = types.CreateInstanceAccessControlAttributeConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPermissionSet(input, options)
    return self:invokeOperation(input, {
        name = "CreatePermissionSet",
        input_schema = types.CreatePermissionSetInput,
        output_schema = types.CreatePermissionSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrustedTokenIssuer(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrustedTokenIssuer",
        input_schema = types.CreateTrustedTokenIssuerInput,
        output_schema = types.CreateTrustedTokenIssuerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccountAssignment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountAssignment",
        input_schema = types.DeleteAccountAssignmentInput,
        output_schema = types.DeleteAccountAssignmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = types.DeleteApplicationInput,
        output_schema = types.DeleteApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplicationAccessScope(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplicationAccessScope",
        input_schema = types.DeleteApplicationAccessScopeInput,
        output_schema = types.DeleteApplicationAccessScopeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplicationAssignment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplicationAssignment",
        input_schema = types.DeleteApplicationAssignmentInput,
        output_schema = types.DeleteApplicationAssignmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplicationAuthenticationMethod(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplicationAuthenticationMethod",
        input_schema = types.DeleteApplicationAuthenticationMethodInput,
        output_schema = types.DeleteApplicationAuthenticationMethodOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplicationGrant(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplicationGrant",
        input_schema = types.DeleteApplicationGrantInput,
        output_schema = types.DeleteApplicationGrantOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInlinePolicyFromPermissionSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInlinePolicyFromPermissionSet",
        input_schema = types.DeleteInlinePolicyFromPermissionSetInput,
        output_schema = types.DeleteInlinePolicyFromPermissionSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInstance",
        input_schema = types.DeleteInstanceInput,
        output_schema = types.DeleteInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInstanceAccessControlAttributeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInstanceAccessControlAttributeConfiguration",
        input_schema = types.DeleteInstanceAccessControlAttributeConfigurationInput,
        output_schema = types.DeleteInstanceAccessControlAttributeConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePermissionsBoundaryFromPermissionSet(input, options)
    return self:invokeOperation(input, {
        name = "DeletePermissionsBoundaryFromPermissionSet",
        input_schema = types.DeletePermissionsBoundaryFromPermissionSetInput,
        output_schema = types.DeletePermissionsBoundaryFromPermissionSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePermissionSet(input, options)
    return self:invokeOperation(input, {
        name = "DeletePermissionSet",
        input_schema = types.DeletePermissionSetInput,
        output_schema = types.DeletePermissionSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTrustedTokenIssuer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrustedTokenIssuer",
        input_schema = types.DeleteTrustedTokenIssuerInput,
        output_schema = types.DeleteTrustedTokenIssuerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountAssignmentCreationStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountAssignmentCreationStatus",
        input_schema = types.DescribeAccountAssignmentCreationStatusInput,
        output_schema = types.DescribeAccountAssignmentCreationStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountAssignmentDeletionStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountAssignmentDeletionStatus",
        input_schema = types.DescribeAccountAssignmentDeletionStatusInput,
        output_schema = types.DescribeAccountAssignmentDeletionStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApplication(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplication",
        input_schema = types.DescribeApplicationInput,
        output_schema = types.DescribeApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApplicationAssignment(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplicationAssignment",
        input_schema = types.DescribeApplicationAssignmentInput,
        output_schema = types.DescribeApplicationAssignmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApplicationProvider(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplicationProvider",
        input_schema = types.DescribeApplicationProviderInput,
        output_schema = types.DescribeApplicationProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstance(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstance",
        input_schema = types.DescribeInstanceInput,
        output_schema = types.DescribeInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceAccessControlAttributeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceAccessControlAttributeConfiguration",
        input_schema = types.DescribeInstanceAccessControlAttributeConfigurationInput,
        output_schema = types.DescribeInstanceAccessControlAttributeConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePermissionSet(input, options)
    return self:invokeOperation(input, {
        name = "DescribePermissionSet",
        input_schema = types.DescribePermissionSetInput,
        output_schema = types.DescribePermissionSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePermissionSetProvisioningStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribePermissionSetProvisioningStatus",
        input_schema = types.DescribePermissionSetProvisioningStatusInput,
        output_schema = types.DescribePermissionSetProvisioningStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRegion(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegion",
        input_schema = types.DescribeRegionInput,
        output_schema = types.DescribeRegionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTrustedTokenIssuer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrustedTokenIssuer",
        input_schema = types.DescribeTrustedTokenIssuerInput,
        output_schema = types.DescribeTrustedTokenIssuerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachCustomerManagedPolicyReferenceFromPermissionSet(input, options)
    return self:invokeOperation(input, {
        name = "DetachCustomerManagedPolicyReferenceFromPermissionSet",
        input_schema = types.DetachCustomerManagedPolicyReferenceFromPermissionSetInput,
        output_schema = types.DetachCustomerManagedPolicyReferenceFromPermissionSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachManagedPolicyFromPermissionSet(input, options)
    return self:invokeOperation(input, {
        name = "DetachManagedPolicyFromPermissionSet",
        input_schema = types.DetachManagedPolicyFromPermissionSetInput,
        output_schema = types.DetachManagedPolicyFromPermissionSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApplicationAccessScope(input, options)
    return self:invokeOperation(input, {
        name = "GetApplicationAccessScope",
        input_schema = types.GetApplicationAccessScopeInput,
        output_schema = types.GetApplicationAccessScopeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApplicationAssignmentConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetApplicationAssignmentConfiguration",
        input_schema = types.GetApplicationAssignmentConfigurationInput,
        output_schema = types.GetApplicationAssignmentConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApplicationAuthenticationMethod(input, options)
    return self:invokeOperation(input, {
        name = "GetApplicationAuthenticationMethod",
        input_schema = types.GetApplicationAuthenticationMethodInput,
        output_schema = types.GetApplicationAuthenticationMethodOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApplicationGrant(input, options)
    return self:invokeOperation(input, {
        name = "GetApplicationGrant",
        input_schema = types.GetApplicationGrantInput,
        output_schema = types.GetApplicationGrantOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApplicationSessionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetApplicationSessionConfiguration",
        input_schema = types.GetApplicationSessionConfigurationInput,
        output_schema = types.GetApplicationSessionConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInlinePolicyForPermissionSet(input, options)
    return self:invokeOperation(input, {
        name = "GetInlinePolicyForPermissionSet",
        input_schema = types.GetInlinePolicyForPermissionSetInput,
        output_schema = types.GetInlinePolicyForPermissionSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPermissionsBoundaryForPermissionSet(input, options)
    return self:invokeOperation(input, {
        name = "GetPermissionsBoundaryForPermissionSet",
        input_schema = types.GetPermissionsBoundaryForPermissionSetInput,
        output_schema = types.GetPermissionsBoundaryForPermissionSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccountAssignmentCreationStatus(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountAssignmentCreationStatus",
        input_schema = types.ListAccountAssignmentCreationStatusInput,
        output_schema = types.ListAccountAssignmentCreationStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccountAssignmentDeletionStatus(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountAssignmentDeletionStatus",
        input_schema = types.ListAccountAssignmentDeletionStatusInput,
        output_schema = types.ListAccountAssignmentDeletionStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccountAssignments(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountAssignments",
        input_schema = types.ListAccountAssignmentsInput,
        output_schema = types.ListAccountAssignmentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccountAssignmentsForPrincipal(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountAssignmentsForPrincipal",
        input_schema = types.ListAccountAssignmentsForPrincipalInput,
        output_schema = types.ListAccountAssignmentsForPrincipalOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccountsForProvisionedPermissionSet(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountsForProvisionedPermissionSet",
        input_schema = types.ListAccountsForProvisionedPermissionSetInput,
        output_schema = types.ListAccountsForProvisionedPermissionSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplicationAccessScopes(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationAccessScopes",
        input_schema = types.ListApplicationAccessScopesInput,
        output_schema = types.ListApplicationAccessScopesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplicationAssignments(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationAssignments",
        input_schema = types.ListApplicationAssignmentsInput,
        output_schema = types.ListApplicationAssignmentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplicationAssignmentsForPrincipal(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationAssignmentsForPrincipal",
        input_schema = types.ListApplicationAssignmentsForPrincipalInput,
        output_schema = types.ListApplicationAssignmentsForPrincipalOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplicationAuthenticationMethods(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationAuthenticationMethods",
        input_schema = types.ListApplicationAuthenticationMethodsInput,
        output_schema = types.ListApplicationAuthenticationMethodsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplicationGrants(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationGrants",
        input_schema = types.ListApplicationGrantsInput,
        output_schema = types.ListApplicationGrantsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplicationProviders(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationProviders",
        input_schema = types.ListApplicationProvidersInput,
        output_schema = types.ListApplicationProvidersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListApplications",
        input_schema = types.ListApplicationsInput,
        output_schema = types.ListApplicationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCustomerManagedPolicyReferencesInPermissionSet(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomerManagedPolicyReferencesInPermissionSet",
        input_schema = types.ListCustomerManagedPolicyReferencesInPermissionSetInput,
        output_schema = types.ListCustomerManagedPolicyReferencesInPermissionSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListInstances",
        input_schema = types.ListInstancesInput,
        output_schema = types.ListInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listManagedPoliciesInPermissionSet(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedPoliciesInPermissionSet",
        input_schema = types.ListManagedPoliciesInPermissionSetInput,
        output_schema = types.ListManagedPoliciesInPermissionSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPermissionSetProvisioningStatus(input, options)
    return self:invokeOperation(input, {
        name = "ListPermissionSetProvisioningStatus",
        input_schema = types.ListPermissionSetProvisioningStatusInput,
        output_schema = types.ListPermissionSetProvisioningStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPermissionSets(input, options)
    return self:invokeOperation(input, {
        name = "ListPermissionSets",
        input_schema = types.ListPermissionSetsInput,
        output_schema = types.ListPermissionSetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPermissionSetsProvisionedToAccount(input, options)
    return self:invokeOperation(input, {
        name = "ListPermissionSetsProvisionedToAccount",
        input_schema = types.ListPermissionSetsProvisionedToAccountInput,
        output_schema = types.ListPermissionSetsProvisionedToAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRegions(input, options)
    return self:invokeOperation(input, {
        name = "ListRegions",
        input_schema = types.ListRegionsInput,
        output_schema = types.ListRegionsOutput,
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

function Client:listTrustedTokenIssuers(input, options)
    return self:invokeOperation(input, {
        name = "ListTrustedTokenIssuers",
        input_schema = types.ListTrustedTokenIssuersInput,
        output_schema = types.ListTrustedTokenIssuersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:provisionPermissionSet(input, options)
    return self:invokeOperation(input, {
        name = "ProvisionPermissionSet",
        input_schema = types.ProvisionPermissionSetInput,
        output_schema = types.ProvisionPermissionSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putApplicationAccessScope(input, options)
    return self:invokeOperation(input, {
        name = "PutApplicationAccessScope",
        input_schema = types.PutApplicationAccessScopeInput,
        output_schema = types.PutApplicationAccessScopeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putApplicationAssignmentConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutApplicationAssignmentConfiguration",
        input_schema = types.PutApplicationAssignmentConfigurationInput,
        output_schema = types.PutApplicationAssignmentConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putApplicationAuthenticationMethod(input, options)
    return self:invokeOperation(input, {
        name = "PutApplicationAuthenticationMethod",
        input_schema = types.PutApplicationAuthenticationMethodInput,
        output_schema = types.PutApplicationAuthenticationMethodOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putApplicationGrant(input, options)
    return self:invokeOperation(input, {
        name = "PutApplicationGrant",
        input_schema = types.PutApplicationGrantInput,
        output_schema = types.PutApplicationGrantOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putApplicationSessionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutApplicationSessionConfiguration",
        input_schema = types.PutApplicationSessionConfigurationInput,
        output_schema = types.PutApplicationSessionConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putInlinePolicyToPermissionSet(input, options)
    return self:invokeOperation(input, {
        name = "PutInlinePolicyToPermissionSet",
        input_schema = types.PutInlinePolicyToPermissionSetInput,
        output_schema = types.PutInlinePolicyToPermissionSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putPermissionsBoundaryToPermissionSet(input, options)
    return self:invokeOperation(input, {
        name = "PutPermissionsBoundaryToPermissionSet",
        input_schema = types.PutPermissionsBoundaryToPermissionSetInput,
        output_schema = types.PutPermissionsBoundaryToPermissionSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeRegion(input, options)
    return self:invokeOperation(input, {
        name = "RemoveRegion",
        input_schema = types.RemoveRegionInput,
        output_schema = types.RemoveRegionOutput,
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

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = types.UpdateApplicationInput,
        output_schema = types.UpdateApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInstance(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInstance",
        input_schema = types.UpdateInstanceInput,
        output_schema = types.UpdateInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInstanceAccessControlAttributeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInstanceAccessControlAttributeConfiguration",
        input_schema = types.UpdateInstanceAccessControlAttributeConfigurationInput,
        output_schema = types.UpdateInstanceAccessControlAttributeConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePermissionSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePermissionSet",
        input_schema = types.UpdatePermissionSetInput,
        output_schema = types.UpdatePermissionSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTrustedTokenIssuer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTrustedTokenIssuer",
        input_schema = types.UpdateTrustedTokenIssuerInput,
        output_schema = types.UpdateTrustedTokenIssuerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
