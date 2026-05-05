local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("iam.endpoint_rules")
local query_protocol = require("protocol.query")
local schemas = require("iam.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSIdentityManagementV20100508"
    if not cfg.protocol then
        cfg.protocol = query_protocol.new("awsQuery")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iam", signing_region = cfg.region } }
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

function Client:acceptDelegationRequest(input, options)
    return self:invokeOperation(input, {
        name = "AcceptDelegationRequest",
        input_schema = schemas.AcceptDelegationRequestInput,
        output_schema = schemas.AcceptDelegationRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addClientIDToOpenIDConnectProvider(input, options)
    return self:invokeOperation(input, {
        name = "AddClientIDToOpenIDConnectProvider",
        input_schema = schemas.AddClientIDToOpenIDConnectProviderInput,
        output_schema = schemas.AddClientIDToOpenIDConnectProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addRoleToInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "AddRoleToInstanceProfile",
        input_schema = schemas.AddRoleToInstanceProfileInput,
        output_schema = schemas.AddRoleToInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addUserToGroup(input, options)
    return self:invokeOperation(input, {
        name = "AddUserToGroup",
        input_schema = schemas.AddUserToGroupInput,
        output_schema = schemas.AddUserToGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateDelegationRequest(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDelegationRequest",
        input_schema = schemas.AssociateDelegationRequestInput,
        output_schema = schemas.AssociateDelegationRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "AttachGroupPolicy",
        input_schema = schemas.AttachGroupPolicyInput,
        output_schema = schemas.AttachGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachRolePolicy(input, options)
    return self:invokeOperation(input, {
        name = "AttachRolePolicy",
        input_schema = schemas.AttachRolePolicyInput,
        output_schema = schemas.AttachRolePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachUserPolicy(input, options)
    return self:invokeOperation(input, {
        name = "AttachUserPolicy",
        input_schema = schemas.AttachUserPolicyInput,
        output_schema = schemas.AttachUserPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:changePassword(input, options)
    return self:invokeOperation(input, {
        name = "ChangePassword",
        input_schema = schemas.ChangePasswordInput,
        output_schema = schemas.ChangePasswordOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAccessKey(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessKey",
        input_schema = schemas.CreateAccessKeyInput,
        output_schema = schemas.CreateAccessKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAccountAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccountAlias",
        input_schema = schemas.CreateAccountAliasInput,
        output_schema = schemas.CreateAccountAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDelegationRequest(input, options)
    return self:invokeOperation(input, {
        name = "CreateDelegationRequest",
        input_schema = schemas.CreateDelegationRequestInput,
        output_schema = schemas.CreateDelegationRequestOutput,
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
        input_schema = schemas.CreateGroupInput,
        output_schema = schemas.CreateGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateInstanceProfile",
        input_schema = schemas.CreateInstanceProfileInput,
        output_schema = schemas.CreateInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLoginProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateLoginProfile",
        input_schema = schemas.CreateLoginProfileInput,
        output_schema = schemas.CreateLoginProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOpenIDConnectProvider(input, options)
    return self:invokeOperation(input, {
        name = "CreateOpenIDConnectProvider",
        input_schema = schemas.CreateOpenIDConnectProviderInput,
        output_schema = schemas.CreateOpenIDConnectProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreatePolicy",
        input_schema = schemas.CreatePolicyInput,
        output_schema = schemas.CreatePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreatePolicyVersion",
        input_schema = schemas.CreatePolicyVersionInput,
        output_schema = schemas.CreatePolicyVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRole(input, options)
    return self:invokeOperation(input, {
        name = "CreateRole",
        input_schema = schemas.CreateRoleInput,
        output_schema = schemas.CreateRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSAMLProvider(input, options)
    return self:invokeOperation(input, {
        name = "CreateSAMLProvider",
        input_schema = schemas.CreateSAMLProviderInput,
        output_schema = schemas.CreateSAMLProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createServiceLinkedRole(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceLinkedRole",
        input_schema = schemas.CreateServiceLinkedRoleInput,
        output_schema = schemas.CreateServiceLinkedRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createServiceSpecificCredential(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceSpecificCredential",
        input_schema = schemas.CreateServiceSpecificCredentialInput,
        output_schema = schemas.CreateServiceSpecificCredentialOutput,
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
        input_schema = schemas.CreateUserInput,
        output_schema = schemas.CreateUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVirtualMFADevice(input, options)
    return self:invokeOperation(input, {
        name = "CreateVirtualMFADevice",
        input_schema = schemas.CreateVirtualMFADeviceInput,
        output_schema = schemas.CreateVirtualMFADeviceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deactivateMFADevice(input, options)
    return self:invokeOperation(input, {
        name = "DeactivateMFADevice",
        input_schema = schemas.DeactivateMFADeviceInput,
        output_schema = schemas.DeactivateMFADeviceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccessKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessKey",
        input_schema = schemas.DeleteAccessKeyInput,
        output_schema = schemas.DeleteAccessKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccountAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountAlias",
        input_schema = schemas.DeleteAccountAliasInput,
        output_schema = schemas.DeleteAccountAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccountPasswordPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountPasswordPolicy",
        input_schema = schemas.DeleteAccountPasswordPolicyInput,
        output_schema = schemas.DeleteAccountPasswordPolicyOutput,
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
        input_schema = schemas.DeleteGroupInput,
        output_schema = schemas.DeleteGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGroupPolicy",
        input_schema = schemas.DeleteGroupPolicyInput,
        output_schema = schemas.DeleteGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInstanceProfile",
        input_schema = schemas.DeleteInstanceProfileInput,
        output_schema = schemas.DeleteInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLoginProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLoginProfile",
        input_schema = schemas.DeleteLoginProfileInput,
        output_schema = schemas.DeleteLoginProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOpenIDConnectProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOpenIDConnectProvider",
        input_schema = schemas.DeleteOpenIDConnectProviderInput,
        output_schema = schemas.DeleteOpenIDConnectProviderOutput,
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

function Client:deletePolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicyVersion",
        input_schema = schemas.DeletePolicyVersionInput,
        output_schema = schemas.DeletePolicyVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRole(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRole",
        input_schema = schemas.DeleteRoleInput,
        output_schema = schemas.DeleteRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRolePermissionsBoundary(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRolePermissionsBoundary",
        input_schema = schemas.DeleteRolePermissionsBoundaryInput,
        output_schema = schemas.DeleteRolePermissionsBoundaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRolePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRolePolicy",
        input_schema = schemas.DeleteRolePolicyInput,
        output_schema = schemas.DeleteRolePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSAMLProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSAMLProvider",
        input_schema = schemas.DeleteSAMLProviderInput,
        output_schema = schemas.DeleteSAMLProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteServerCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServerCertificate",
        input_schema = schemas.DeleteServerCertificateInput,
        output_schema = schemas.DeleteServerCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteServiceLinkedRole(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceLinkedRole",
        input_schema = schemas.DeleteServiceLinkedRoleInput,
        output_schema = schemas.DeleteServiceLinkedRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteServiceSpecificCredential(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceSpecificCredential",
        input_schema = schemas.DeleteServiceSpecificCredentialInput,
        output_schema = schemas.DeleteServiceSpecificCredentialOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSigningCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSigningCertificate",
        input_schema = schemas.DeleteSigningCertificateInput,
        output_schema = schemas.DeleteSigningCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSSHPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSSHPublicKey",
        input_schema = schemas.DeleteSSHPublicKeyInput,
        output_schema = schemas.DeleteSSHPublicKeyOutput,
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
        input_schema = schemas.DeleteUserInput,
        output_schema = schemas.DeleteUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUserPermissionsBoundary(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserPermissionsBoundary",
        input_schema = schemas.DeleteUserPermissionsBoundaryInput,
        output_schema = schemas.DeleteUserPermissionsBoundaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUserPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserPolicy",
        input_schema = schemas.DeleteUserPolicyInput,
        output_schema = schemas.DeleteUserPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVirtualMFADevice(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVirtualMFADevice",
        input_schema = schemas.DeleteVirtualMFADeviceInput,
        output_schema = schemas.DeleteVirtualMFADeviceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DetachGroupPolicy",
        input_schema = schemas.DetachGroupPolicyInput,
        output_schema = schemas.DetachGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachRolePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DetachRolePolicy",
        input_schema = schemas.DetachRolePolicyInput,
        output_schema = schemas.DetachRolePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachUserPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DetachUserPolicy",
        input_schema = schemas.DetachUserPolicyInput,
        output_schema = schemas.DetachUserPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableOrganizationsRootCredentialsManagement(input, options)
    return self:invokeOperation(input, {
        name = "DisableOrganizationsRootCredentialsManagement",
        input_schema = schemas.DisableOrganizationsRootCredentialsManagementInput,
        output_schema = schemas.DisableOrganizationsRootCredentialsManagementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableOrganizationsRootSessions(input, options)
    return self:invokeOperation(input, {
        name = "DisableOrganizationsRootSessions",
        input_schema = schemas.DisableOrganizationsRootSessionsInput,
        output_schema = schemas.DisableOrganizationsRootSessionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableOutboundWebIdentityFederation(input, options)
    return self:invokeOperation(input, {
        name = "DisableOutboundWebIdentityFederation",
        input_schema = schemas.DisableOutboundWebIdentityFederationInput,
        output_schema = schemas.DisableOutboundWebIdentityFederationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableMFADevice(input, options)
    return self:invokeOperation(input, {
        name = "EnableMFADevice",
        input_schema = schemas.EnableMFADeviceInput,
        output_schema = schemas.EnableMFADeviceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableOrganizationsRootCredentialsManagement(input, options)
    return self:invokeOperation(input, {
        name = "EnableOrganizationsRootCredentialsManagement",
        input_schema = schemas.EnableOrganizationsRootCredentialsManagementInput,
        output_schema = schemas.EnableOrganizationsRootCredentialsManagementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableOrganizationsRootSessions(input, options)
    return self:invokeOperation(input, {
        name = "EnableOrganizationsRootSessions",
        input_schema = schemas.EnableOrganizationsRootSessionsInput,
        output_schema = schemas.EnableOrganizationsRootSessionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableOutboundWebIdentityFederation(input, options)
    return self:invokeOperation(input, {
        name = "EnableOutboundWebIdentityFederation",
        input_schema = schemas.EnableOutboundWebIdentityFederationInput,
        output_schema = schemas.EnableOutboundWebIdentityFederationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateCredentialReport(input, options)
    return self:invokeOperation(input, {
        name = "GenerateCredentialReport",
        input_schema = schemas.GenerateCredentialReportInput,
        output_schema = schemas.GenerateCredentialReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateOrganizationsAccessReport(input, options)
    return self:invokeOperation(input, {
        name = "GenerateOrganizationsAccessReport",
        input_schema = schemas.GenerateOrganizationsAccessReportInput,
        output_schema = schemas.GenerateOrganizationsAccessReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateServiceLastAccessedDetails(input, options)
    return self:invokeOperation(input, {
        name = "GenerateServiceLastAccessedDetails",
        input_schema = schemas.GenerateServiceLastAccessedDetailsInput,
        output_schema = schemas.GenerateServiceLastAccessedDetailsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccessKeyLastUsed(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessKeyLastUsed",
        input_schema = schemas.GetAccessKeyLastUsedInput,
        output_schema = schemas.GetAccessKeyLastUsedOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountAuthorizationDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountAuthorizationDetails",
        input_schema = schemas.GetAccountAuthorizationDetailsInput,
        output_schema = schemas.GetAccountAuthorizationDetailsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountPasswordPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountPasswordPolicy",
        input_schema = schemas.GetAccountPasswordPolicyInput,
        output_schema = schemas.GetAccountPasswordPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountSummary",
        input_schema = schemas.GetAccountSummaryInput,
        output_schema = schemas.GetAccountSummaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContextKeysForCustomPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetContextKeysForCustomPolicy",
        input_schema = schemas.GetContextKeysForCustomPolicyInput,
        output_schema = schemas.GetContextKeysForCustomPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContextKeysForPrincipalPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetContextKeysForPrincipalPolicy",
        input_schema = schemas.GetContextKeysForPrincipalPolicyInput,
        output_schema = schemas.GetContextKeysForPrincipalPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCredentialReport(input, options)
    return self:invokeOperation(input, {
        name = "GetCredentialReport",
        input_schema = schemas.GetCredentialReportInput,
        output_schema = schemas.GetCredentialReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDelegationRequest(input, options)
    return self:invokeOperation(input, {
        name = "GetDelegationRequest",
        input_schema = schemas.GetDelegationRequestInput,
        output_schema = schemas.GetDelegationRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetGroup",
        input_schema = schemas.GetGroupInput,
        output_schema = schemas.GetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetGroupPolicy",
        input_schema = schemas.GetGroupPolicyInput,
        output_schema = schemas.GetGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHumanReadableSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetHumanReadableSummary",
        input_schema = schemas.GetHumanReadableSummaryInput,
        output_schema = schemas.GetHumanReadableSummaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceProfile",
        input_schema = schemas.GetInstanceProfileInput,
        output_schema = schemas.GetInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLoginProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetLoginProfile",
        input_schema = schemas.GetLoginProfileInput,
        output_schema = schemas.GetLoginProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMFADevice(input, options)
    return self:invokeOperation(input, {
        name = "GetMFADevice",
        input_schema = schemas.GetMFADeviceInput,
        output_schema = schemas.GetMFADeviceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOpenIDConnectProvider(input, options)
    return self:invokeOperation(input, {
        name = "GetOpenIDConnectProvider",
        input_schema = schemas.GetOpenIDConnectProviderInput,
        output_schema = schemas.GetOpenIDConnectProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOrganizationsAccessReport(input, options)
    return self:invokeOperation(input, {
        name = "GetOrganizationsAccessReport",
        input_schema = schemas.GetOrganizationsAccessReportInput,
        output_schema = schemas.GetOrganizationsAccessReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOutboundWebIdentityFederationInfo(input, options)
    return self:invokeOperation(input, {
        name = "GetOutboundWebIdentityFederationInfo",
        input_schema = schemas.GetOutboundWebIdentityFederationInfoInput,
        output_schema = schemas.GetOutboundWebIdentityFederationInfoOutput,
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

function Client:getPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicyVersion",
        input_schema = schemas.GetPolicyVersionInput,
        output_schema = schemas.GetPolicyVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRole(input, options)
    return self:invokeOperation(input, {
        name = "GetRole",
        input_schema = schemas.GetRoleInput,
        output_schema = schemas.GetRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRolePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetRolePolicy",
        input_schema = schemas.GetRolePolicyInput,
        output_schema = schemas.GetRolePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSAMLProvider(input, options)
    return self:invokeOperation(input, {
        name = "GetSAMLProvider",
        input_schema = schemas.GetSAMLProviderInput,
        output_schema = schemas.GetSAMLProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServerCertificate(input, options)
    return self:invokeOperation(input, {
        name = "GetServerCertificate",
        input_schema = schemas.GetServerCertificateInput,
        output_schema = schemas.GetServerCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceLastAccessedDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceLastAccessedDetails",
        input_schema = schemas.GetServiceLastAccessedDetailsInput,
        output_schema = schemas.GetServiceLastAccessedDetailsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceLastAccessedDetailsWithEntities(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceLastAccessedDetailsWithEntities",
        input_schema = schemas.GetServiceLastAccessedDetailsWithEntitiesInput,
        output_schema = schemas.GetServiceLastAccessedDetailsWithEntitiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceLinkedRoleDeletionStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceLinkedRoleDeletionStatus",
        input_schema = schemas.GetServiceLinkedRoleDeletionStatusInput,
        output_schema = schemas.GetServiceLinkedRoleDeletionStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSSHPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "GetSSHPublicKey",
        input_schema = schemas.GetSSHPublicKeyInput,
        output_schema = schemas.GetSSHPublicKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUser(input, options)
    return self:invokeOperation(input, {
        name = "GetUser",
        input_schema = schemas.GetUserInput,
        output_schema = schemas.GetUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUserPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetUserPolicy",
        input_schema = schemas.GetUserPolicyInput,
        output_schema = schemas.GetUserPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccessKeys(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessKeys",
        input_schema = schemas.ListAccessKeysInput,
        output_schema = schemas.ListAccessKeysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccountAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountAliases",
        input_schema = schemas.ListAccountAliasesInput,
        output_schema = schemas.ListAccountAliasesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAttachedGroupPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachedGroupPolicies",
        input_schema = schemas.ListAttachedGroupPoliciesInput,
        output_schema = schemas.ListAttachedGroupPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAttachedRolePolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachedRolePolicies",
        input_schema = schemas.ListAttachedRolePoliciesInput,
        output_schema = schemas.ListAttachedRolePoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAttachedUserPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachedUserPolicies",
        input_schema = schemas.ListAttachedUserPoliciesInput,
        output_schema = schemas.ListAttachedUserPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDelegationRequests(input, options)
    return self:invokeOperation(input, {
        name = "ListDelegationRequests",
        input_schema = schemas.ListDelegationRequestsInput,
        output_schema = schemas.ListDelegationRequestsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEntitiesForPolicy(input, options)
    return self:invokeOperation(input, {
        name = "ListEntitiesForPolicy",
        input_schema = schemas.ListEntitiesForPolicyInput,
        output_schema = schemas.ListEntitiesForPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroupPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupPolicies",
        input_schema = schemas.ListGroupPoliciesInput,
        output_schema = schemas.ListGroupPoliciesOutput,
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
        input_schema = schemas.ListGroupsInput,
        output_schema = schemas.ListGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroupsForUser(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupsForUser",
        input_schema = schemas.ListGroupsForUserInput,
        output_schema = schemas.ListGroupsForUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInstanceProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListInstanceProfiles",
        input_schema = schemas.ListInstanceProfilesInput,
        output_schema = schemas.ListInstanceProfilesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInstanceProfilesForRole(input, options)
    return self:invokeOperation(input, {
        name = "ListInstanceProfilesForRole",
        input_schema = schemas.ListInstanceProfilesForRoleInput,
        output_schema = schemas.ListInstanceProfilesForRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInstanceProfileTags(input, options)
    return self:invokeOperation(input, {
        name = "ListInstanceProfileTags",
        input_schema = schemas.ListInstanceProfileTagsInput,
        output_schema = schemas.ListInstanceProfileTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMFADevices(input, options)
    return self:invokeOperation(input, {
        name = "ListMFADevices",
        input_schema = schemas.ListMFADevicesInput,
        output_schema = schemas.ListMFADevicesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMFADeviceTags(input, options)
    return self:invokeOperation(input, {
        name = "ListMFADeviceTags",
        input_schema = schemas.ListMFADeviceTagsInput,
        output_schema = schemas.ListMFADeviceTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOpenIDConnectProviders(input, options)
    return self:invokeOperation(input, {
        name = "ListOpenIDConnectProviders",
        input_schema = schemas.ListOpenIDConnectProvidersInput,
        output_schema = schemas.ListOpenIDConnectProvidersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOpenIDConnectProviderTags(input, options)
    return self:invokeOperation(input, {
        name = "ListOpenIDConnectProviderTags",
        input_schema = schemas.ListOpenIDConnectProviderTagsInput,
        output_schema = schemas.ListOpenIDConnectProviderTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOrganizationsFeatures(input, options)
    return self:invokeOperation(input, {
        name = "ListOrganizationsFeatures",
        input_schema = schemas.ListOrganizationsFeaturesInput,
        output_schema = schemas.ListOrganizationsFeaturesOutput,
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

function Client:listPoliciesGrantingServiceAccess(input, options)
    return self:invokeOperation(input, {
        name = "ListPoliciesGrantingServiceAccess",
        input_schema = schemas.ListPoliciesGrantingServiceAccessInput,
        output_schema = schemas.ListPoliciesGrantingServiceAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicyTags(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyTags",
        input_schema = schemas.ListPolicyTagsInput,
        output_schema = schemas.ListPolicyTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicyVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyVersions",
        input_schema = schemas.ListPolicyVersionsInput,
        output_schema = schemas.ListPolicyVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRolePolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListRolePolicies",
        input_schema = schemas.ListRolePoliciesInput,
        output_schema = schemas.ListRolePoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRoles(input, options)
    return self:invokeOperation(input, {
        name = "ListRoles",
        input_schema = schemas.ListRolesInput,
        output_schema = schemas.ListRolesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRoleTags(input, options)
    return self:invokeOperation(input, {
        name = "ListRoleTags",
        input_schema = schemas.ListRoleTagsInput,
        output_schema = schemas.ListRoleTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSAMLProviders(input, options)
    return self:invokeOperation(input, {
        name = "ListSAMLProviders",
        input_schema = schemas.ListSAMLProvidersInput,
        output_schema = schemas.ListSAMLProvidersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSAMLProviderTags(input, options)
    return self:invokeOperation(input, {
        name = "ListSAMLProviderTags",
        input_schema = schemas.ListSAMLProviderTagsInput,
        output_schema = schemas.ListSAMLProviderTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServerCertificates(input, options)
    return self:invokeOperation(input, {
        name = "ListServerCertificates",
        input_schema = schemas.ListServerCertificatesInput,
        output_schema = schemas.ListServerCertificatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServerCertificateTags(input, options)
    return self:invokeOperation(input, {
        name = "ListServerCertificateTags",
        input_schema = schemas.ListServerCertificateTagsInput,
        output_schema = schemas.ListServerCertificateTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceSpecificCredentials(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceSpecificCredentials",
        input_schema = schemas.ListServiceSpecificCredentialsInput,
        output_schema = schemas.ListServiceSpecificCredentialsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSigningCertificates(input, options)
    return self:invokeOperation(input, {
        name = "ListSigningCertificates",
        input_schema = schemas.ListSigningCertificatesInput,
        output_schema = schemas.ListSigningCertificatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSSHPublicKeys(input, options)
    return self:invokeOperation(input, {
        name = "ListSSHPublicKeys",
        input_schema = schemas.ListSSHPublicKeysInput,
        output_schema = schemas.ListSSHPublicKeysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUserPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListUserPolicies",
        input_schema = schemas.ListUserPoliciesInput,
        output_schema = schemas.ListUserPoliciesOutput,
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
        input_schema = schemas.ListUsersInput,
        output_schema = schemas.ListUsersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUserTags(input, options)
    return self:invokeOperation(input, {
        name = "ListUserTags",
        input_schema = schemas.ListUserTagsInput,
        output_schema = schemas.ListUserTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVirtualMFADevices(input, options)
    return self:invokeOperation(input, {
        name = "ListVirtualMFADevices",
        input_schema = schemas.ListVirtualMFADevicesInput,
        output_schema = schemas.ListVirtualMFADevicesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutGroupPolicy",
        input_schema = schemas.PutGroupPolicyInput,
        output_schema = schemas.PutGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRolePermissionsBoundary(input, options)
    return self:invokeOperation(input, {
        name = "PutRolePermissionsBoundary",
        input_schema = schemas.PutRolePermissionsBoundaryInput,
        output_schema = schemas.PutRolePermissionsBoundaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRolePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutRolePolicy",
        input_schema = schemas.PutRolePolicyInput,
        output_schema = schemas.PutRolePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putUserPermissionsBoundary(input, options)
    return self:invokeOperation(input, {
        name = "PutUserPermissionsBoundary",
        input_schema = schemas.PutUserPermissionsBoundaryInput,
        output_schema = schemas.PutUserPermissionsBoundaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putUserPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutUserPolicy",
        input_schema = schemas.PutUserPolicyInput,
        output_schema = schemas.PutUserPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectDelegationRequest(input, options)
    return self:invokeOperation(input, {
        name = "RejectDelegationRequest",
        input_schema = schemas.RejectDelegationRequestInput,
        output_schema = schemas.RejectDelegationRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeClientIDFromOpenIDConnectProvider(input, options)
    return self:invokeOperation(input, {
        name = "RemoveClientIDFromOpenIDConnectProvider",
        input_schema = schemas.RemoveClientIDFromOpenIDConnectProviderInput,
        output_schema = schemas.RemoveClientIDFromOpenIDConnectProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeRoleFromInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "RemoveRoleFromInstanceProfile",
        input_schema = schemas.RemoveRoleFromInstanceProfileInput,
        output_schema = schemas.RemoveRoleFromInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeUserFromGroup(input, options)
    return self:invokeOperation(input, {
        name = "RemoveUserFromGroup",
        input_schema = schemas.RemoveUserFromGroupInput,
        output_schema = schemas.RemoveUserFromGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetServiceSpecificCredential(input, options)
    return self:invokeOperation(input, {
        name = "ResetServiceSpecificCredential",
        input_schema = schemas.ResetServiceSpecificCredentialInput,
        output_schema = schemas.ResetServiceSpecificCredentialOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resyncMFADevice(input, options)
    return self:invokeOperation(input, {
        name = "ResyncMFADevice",
        input_schema = schemas.ResyncMFADeviceInput,
        output_schema = schemas.ResyncMFADeviceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendDelegationToken(input, options)
    return self:invokeOperation(input, {
        name = "SendDelegationToken",
        input_schema = schemas.SendDelegationTokenInput,
        output_schema = schemas.SendDelegationTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setDefaultPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "SetDefaultPolicyVersion",
        input_schema = schemas.SetDefaultPolicyVersionInput,
        output_schema = schemas.SetDefaultPolicyVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setSecurityTokenServicePreferences(input, options)
    return self:invokeOperation(input, {
        name = "SetSecurityTokenServicePreferences",
        input_schema = schemas.SetSecurityTokenServicePreferencesInput,
        output_schema = schemas.SetSecurityTokenServicePreferencesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:simulateCustomPolicy(input, options)
    return self:invokeOperation(input, {
        name = "SimulateCustomPolicy",
        input_schema = schemas.SimulateCustomPolicyInput,
        output_schema = schemas.SimulateCustomPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:simulatePrincipalPolicy(input, options)
    return self:invokeOperation(input, {
        name = "SimulatePrincipalPolicy",
        input_schema = schemas.SimulatePrincipalPolicyInput,
        output_schema = schemas.SimulatePrincipalPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "TagInstanceProfile",
        input_schema = schemas.TagInstanceProfileInput,
        output_schema = schemas.TagInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagMFADevice(input, options)
    return self:invokeOperation(input, {
        name = "TagMFADevice",
        input_schema = schemas.TagMFADeviceInput,
        output_schema = schemas.TagMFADeviceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagOpenIDConnectProvider(input, options)
    return self:invokeOperation(input, {
        name = "TagOpenIDConnectProvider",
        input_schema = schemas.TagOpenIDConnectProviderInput,
        output_schema = schemas.TagOpenIDConnectProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagPolicy(input, options)
    return self:invokeOperation(input, {
        name = "TagPolicy",
        input_schema = schemas.TagPolicyInput,
        output_schema = schemas.TagPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagRole(input, options)
    return self:invokeOperation(input, {
        name = "TagRole",
        input_schema = schemas.TagRoleInput,
        output_schema = schemas.TagRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagSAMLProvider(input, options)
    return self:invokeOperation(input, {
        name = "TagSAMLProvider",
        input_schema = schemas.TagSAMLProviderInput,
        output_schema = schemas.TagSAMLProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagServerCertificate(input, options)
    return self:invokeOperation(input, {
        name = "TagServerCertificate",
        input_schema = schemas.TagServerCertificateInput,
        output_schema = schemas.TagServerCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagUser(input, options)
    return self:invokeOperation(input, {
        name = "TagUser",
        input_schema = schemas.TagUserInput,
        output_schema = schemas.TagUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "UntagInstanceProfile",
        input_schema = schemas.UntagInstanceProfileInput,
        output_schema = schemas.UntagInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagMFADevice(input, options)
    return self:invokeOperation(input, {
        name = "UntagMFADevice",
        input_schema = schemas.UntagMFADeviceInput,
        output_schema = schemas.UntagMFADeviceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagOpenIDConnectProvider(input, options)
    return self:invokeOperation(input, {
        name = "UntagOpenIDConnectProvider",
        input_schema = schemas.UntagOpenIDConnectProviderInput,
        output_schema = schemas.UntagOpenIDConnectProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UntagPolicy",
        input_schema = schemas.UntagPolicyInput,
        output_schema = schemas.UntagPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagRole(input, options)
    return self:invokeOperation(input, {
        name = "UntagRole",
        input_schema = schemas.UntagRoleInput,
        output_schema = schemas.UntagRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagSAMLProvider(input, options)
    return self:invokeOperation(input, {
        name = "UntagSAMLProvider",
        input_schema = schemas.UntagSAMLProviderInput,
        output_schema = schemas.UntagSAMLProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagServerCertificate(input, options)
    return self:invokeOperation(input, {
        name = "UntagServerCertificate",
        input_schema = schemas.UntagServerCertificateInput,
        output_schema = schemas.UntagServerCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagUser(input, options)
    return self:invokeOperation(input, {
        name = "UntagUser",
        input_schema = schemas.UntagUserInput,
        output_schema = schemas.UntagUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccessKey(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccessKey",
        input_schema = schemas.UpdateAccessKeyInput,
        output_schema = schemas.UpdateAccessKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccountPasswordPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountPasswordPolicy",
        input_schema = schemas.UpdateAccountPasswordPolicyInput,
        output_schema = schemas.UpdateAccountPasswordPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAssumeRolePolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssumeRolePolicy",
        input_schema = schemas.UpdateAssumeRolePolicyInput,
        output_schema = schemas.UpdateAssumeRolePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDelegationRequest(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDelegationRequest",
        input_schema = schemas.UpdateDelegationRequestInput,
        output_schema = schemas.UpdateDelegationRequestOutput,
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
        input_schema = schemas.UpdateGroupInput,
        output_schema = schemas.UpdateGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLoginProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLoginProfile",
        input_schema = schemas.UpdateLoginProfileInput,
        output_schema = schemas.UpdateLoginProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOpenIDConnectProviderThumbprint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOpenIDConnectProviderThumbprint",
        input_schema = schemas.UpdateOpenIDConnectProviderThumbprintInput,
        output_schema = schemas.UpdateOpenIDConnectProviderThumbprintOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRole(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRole",
        input_schema = schemas.UpdateRoleInput,
        output_schema = schemas.UpdateRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRoleDescription(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoleDescription",
        input_schema = schemas.UpdateRoleDescriptionInput,
        output_schema = schemas.UpdateRoleDescriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSAMLProvider(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSAMLProvider",
        input_schema = schemas.UpdateSAMLProviderInput,
        output_schema = schemas.UpdateSAMLProviderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServerCertificate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServerCertificate",
        input_schema = schemas.UpdateServerCertificateInput,
        output_schema = schemas.UpdateServerCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServiceSpecificCredential(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceSpecificCredential",
        input_schema = schemas.UpdateServiceSpecificCredentialInput,
        output_schema = schemas.UpdateServiceSpecificCredentialOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSigningCertificate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSigningCertificate",
        input_schema = schemas.UpdateSigningCertificateInput,
        output_schema = schemas.UpdateSigningCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSSHPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSSHPublicKey",
        input_schema = schemas.UpdateSSHPublicKeyInput,
        output_schema = schemas.UpdateSSHPublicKeyOutput,
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
        input_schema = schemas.UpdateUserInput,
        output_schema = schemas.UpdateUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:uploadServerCertificate(input, options)
    return self:invokeOperation(input, {
        name = "UploadServerCertificate",
        input_schema = schemas.UploadServerCertificateInput,
        output_schema = schemas.UploadServerCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:uploadSigningCertificate(input, options)
    return self:invokeOperation(input, {
        name = "UploadSigningCertificate",
        input_schema = schemas.UploadSigningCertificateInput,
        output_schema = schemas.UploadSigningCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:uploadSSHPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "UploadSSHPublicKey",
        input_schema = schemas.UploadSSHPublicKeyInput,
        output_schema = schemas.UploadSSHPublicKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
