local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ssoadmin.endpoint_rules")
local schemas = require("ssoadmin.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SWBExternalService"
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
        input_schema = schemas.AddRegionInput,
        output_schema = schemas.AddRegionOutput,
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
        input_schema = schemas.AttachCustomerManagedPolicyReferenceToPermissionSetInput,
        output_schema = schemas.AttachCustomerManagedPolicyReferenceToPermissionSetOutput,
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
        input_schema = schemas.AttachManagedPolicyToPermissionSetInput,
        output_schema = schemas.AttachManagedPolicyToPermissionSetOutput,
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
        input_schema = schemas.CreateAccountAssignmentInput,
        output_schema = schemas.CreateAccountAssignmentOutput,
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
        input_schema = schemas.CreateApplicationInput,
        output_schema = schemas.CreateApplicationOutput,
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
        input_schema = schemas.CreateApplicationAssignmentInput,
        output_schema = schemas.CreateApplicationAssignmentOutput,
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
        input_schema = schemas.CreateInstanceInput,
        output_schema = schemas.CreateInstanceOutput,
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
        input_schema = schemas.CreateInstanceAccessControlAttributeConfigurationInput,
        output_schema = schemas.CreateInstanceAccessControlAttributeConfigurationOutput,
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
        input_schema = schemas.CreatePermissionSetInput,
        output_schema = schemas.CreatePermissionSetOutput,
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
        input_schema = schemas.CreateTrustedTokenIssuerInput,
        output_schema = schemas.CreateTrustedTokenIssuerOutput,
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
        input_schema = schemas.DeleteAccountAssignmentInput,
        output_schema = schemas.DeleteAccountAssignmentOutput,
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
        input_schema = schemas.DeleteApplicationInput,
        output_schema = schemas.DeleteApplicationOutput,
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
        input_schema = schemas.DeleteApplicationAccessScopeInput,
        output_schema = schemas.DeleteApplicationAccessScopeOutput,
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
        input_schema = schemas.DeleteApplicationAssignmentInput,
        output_schema = schemas.DeleteApplicationAssignmentOutput,
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
        input_schema = schemas.DeleteApplicationAuthenticationMethodInput,
        output_schema = schemas.DeleteApplicationAuthenticationMethodOutput,
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
        input_schema = schemas.DeleteApplicationGrantInput,
        output_schema = schemas.DeleteApplicationGrantOutput,
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
        input_schema = schemas.DeleteInlinePolicyFromPermissionSetInput,
        output_schema = schemas.DeleteInlinePolicyFromPermissionSetOutput,
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
        input_schema = schemas.DeleteInstanceInput,
        output_schema = schemas.DeleteInstanceOutput,
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
        input_schema = schemas.DeleteInstanceAccessControlAttributeConfigurationInput,
        output_schema = schemas.DeleteInstanceAccessControlAttributeConfigurationOutput,
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
        input_schema = schemas.DeletePermissionsBoundaryFromPermissionSetInput,
        output_schema = schemas.DeletePermissionsBoundaryFromPermissionSetOutput,
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
        input_schema = schemas.DeletePermissionSetInput,
        output_schema = schemas.DeletePermissionSetOutput,
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
        input_schema = schemas.DeleteTrustedTokenIssuerInput,
        output_schema = schemas.DeleteTrustedTokenIssuerOutput,
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
        input_schema = schemas.DescribeAccountAssignmentCreationStatusInput,
        output_schema = schemas.DescribeAccountAssignmentCreationStatusOutput,
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
        input_schema = schemas.DescribeAccountAssignmentDeletionStatusInput,
        output_schema = schemas.DescribeAccountAssignmentDeletionStatusOutput,
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
        input_schema = schemas.DescribeApplicationInput,
        output_schema = schemas.DescribeApplicationOutput,
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
        input_schema = schemas.DescribeApplicationAssignmentInput,
        output_schema = schemas.DescribeApplicationAssignmentOutput,
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
        input_schema = schemas.DescribeApplicationProviderInput,
        output_schema = schemas.DescribeApplicationProviderOutput,
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
        input_schema = schemas.DescribeInstanceInput,
        output_schema = schemas.DescribeInstanceOutput,
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
        input_schema = schemas.DescribeInstanceAccessControlAttributeConfigurationInput,
        output_schema = schemas.DescribeInstanceAccessControlAttributeConfigurationOutput,
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
        input_schema = schemas.DescribePermissionSetInput,
        output_schema = schemas.DescribePermissionSetOutput,
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
        input_schema = schemas.DescribePermissionSetProvisioningStatusInput,
        output_schema = schemas.DescribePermissionSetProvisioningStatusOutput,
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
        input_schema = schemas.DescribeRegionInput,
        output_schema = schemas.DescribeRegionOutput,
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
        input_schema = schemas.DescribeTrustedTokenIssuerInput,
        output_schema = schemas.DescribeTrustedTokenIssuerOutput,
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
        input_schema = schemas.DetachCustomerManagedPolicyReferenceFromPermissionSetInput,
        output_schema = schemas.DetachCustomerManagedPolicyReferenceFromPermissionSetOutput,
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
        input_schema = schemas.DetachManagedPolicyFromPermissionSetInput,
        output_schema = schemas.DetachManagedPolicyFromPermissionSetOutput,
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
        input_schema = schemas.GetApplicationAccessScopeInput,
        output_schema = schemas.GetApplicationAccessScopeOutput,
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
        input_schema = schemas.GetApplicationAssignmentConfigurationInput,
        output_schema = schemas.GetApplicationAssignmentConfigurationOutput,
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
        input_schema = schemas.GetApplicationAuthenticationMethodInput,
        output_schema = schemas.GetApplicationAuthenticationMethodOutput,
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
        input_schema = schemas.GetApplicationGrantInput,
        output_schema = schemas.GetApplicationGrantOutput,
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
        input_schema = schemas.GetApplicationSessionConfigurationInput,
        output_schema = schemas.GetApplicationSessionConfigurationOutput,
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
        input_schema = schemas.GetInlinePolicyForPermissionSetInput,
        output_schema = schemas.GetInlinePolicyForPermissionSetOutput,
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
        input_schema = schemas.GetPermissionsBoundaryForPermissionSetInput,
        output_schema = schemas.GetPermissionsBoundaryForPermissionSetOutput,
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
        input_schema = schemas.ListAccountAssignmentCreationStatusInput,
        output_schema = schemas.ListAccountAssignmentCreationStatusOutput,
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
        input_schema = schemas.ListAccountAssignmentDeletionStatusInput,
        output_schema = schemas.ListAccountAssignmentDeletionStatusOutput,
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
        input_schema = schemas.ListAccountAssignmentsInput,
        output_schema = schemas.ListAccountAssignmentsOutput,
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
        input_schema = schemas.ListAccountAssignmentsForPrincipalInput,
        output_schema = schemas.ListAccountAssignmentsForPrincipalOutput,
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
        input_schema = schemas.ListAccountsForProvisionedPermissionSetInput,
        output_schema = schemas.ListAccountsForProvisionedPermissionSetOutput,
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
        input_schema = schemas.ListApplicationAccessScopesInput,
        output_schema = schemas.ListApplicationAccessScopesOutput,
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
        input_schema = schemas.ListApplicationAssignmentsInput,
        output_schema = schemas.ListApplicationAssignmentsOutput,
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
        input_schema = schemas.ListApplicationAssignmentsForPrincipalInput,
        output_schema = schemas.ListApplicationAssignmentsForPrincipalOutput,
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
        input_schema = schemas.ListApplicationAuthenticationMethodsInput,
        output_schema = schemas.ListApplicationAuthenticationMethodsOutput,
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
        input_schema = schemas.ListApplicationGrantsInput,
        output_schema = schemas.ListApplicationGrantsOutput,
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
        input_schema = schemas.ListApplicationProvidersInput,
        output_schema = schemas.ListApplicationProvidersOutput,
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
        input_schema = schemas.ListApplicationsInput,
        output_schema = schemas.ListApplicationsOutput,
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
        input_schema = schemas.ListCustomerManagedPolicyReferencesInPermissionSetInput,
        output_schema = schemas.ListCustomerManagedPolicyReferencesInPermissionSetOutput,
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
        input_schema = schemas.ListInstancesInput,
        output_schema = schemas.ListInstancesOutput,
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
        input_schema = schemas.ListManagedPoliciesInPermissionSetInput,
        output_schema = schemas.ListManagedPoliciesInPermissionSetOutput,
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
        input_schema = schemas.ListPermissionSetProvisioningStatusInput,
        output_schema = schemas.ListPermissionSetProvisioningStatusOutput,
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
        input_schema = schemas.ListPermissionSetsInput,
        output_schema = schemas.ListPermissionSetsOutput,
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
        input_schema = schemas.ListPermissionSetsProvisionedToAccountInput,
        output_schema = schemas.ListPermissionSetsProvisionedToAccountOutput,
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
        input_schema = schemas.ListRegionsInput,
        output_schema = schemas.ListRegionsOutput,
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

function Client:listTrustedTokenIssuers(input, options)
    return self:invokeOperation(input, {
        name = "ListTrustedTokenIssuers",
        input_schema = schemas.ListTrustedTokenIssuersInput,
        output_schema = schemas.ListTrustedTokenIssuersOutput,
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
        input_schema = schemas.ProvisionPermissionSetInput,
        output_schema = schemas.ProvisionPermissionSetOutput,
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
        input_schema = schemas.PutApplicationAccessScopeInput,
        output_schema = schemas.PutApplicationAccessScopeOutput,
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
        input_schema = schemas.PutApplicationAssignmentConfigurationInput,
        output_schema = schemas.PutApplicationAssignmentConfigurationOutput,
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
        input_schema = schemas.PutApplicationAuthenticationMethodInput,
        output_schema = schemas.PutApplicationAuthenticationMethodOutput,
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
        input_schema = schemas.PutApplicationGrantInput,
        output_schema = schemas.PutApplicationGrantOutput,
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
        input_schema = schemas.PutApplicationSessionConfigurationInput,
        output_schema = schemas.PutApplicationSessionConfigurationOutput,
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
        input_schema = schemas.PutInlinePolicyToPermissionSetInput,
        output_schema = schemas.PutInlinePolicyToPermissionSetOutput,
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
        input_schema = schemas.PutPermissionsBoundaryToPermissionSetInput,
        output_schema = schemas.PutPermissionsBoundaryToPermissionSetOutput,
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
        input_schema = schemas.RemoveRegionInput,
        output_schema = schemas.RemoveRegionOutput,
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

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = schemas.UpdateApplicationInput,
        output_schema = schemas.UpdateApplicationOutput,
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
        input_schema = schemas.UpdateInstanceInput,
        output_schema = schemas.UpdateInstanceOutput,
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
        input_schema = schemas.UpdateInstanceAccessControlAttributeConfigurationInput,
        output_schema = schemas.UpdateInstanceAccessControlAttributeConfigurationOutput,
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
        input_schema = schemas.UpdatePermissionSetInput,
        output_schema = schemas.UpdatePermissionSetOutput,
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
        input_schema = schemas.UpdateTrustedTokenIssuerInput,
        output_schema = schemas.UpdateTrustedTokenIssuerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
