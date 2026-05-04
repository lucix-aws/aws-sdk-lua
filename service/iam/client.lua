local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("iam.endpoint_rules")
local query_protocol = require("protocol.query")
local sdk_defaults = require("sdk_defaults")
local types = require("iam.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSIdentityManagementV20100508"
    cfg.signing_name = "awsidentitymanagementv20100508"
    if not cfg.protocol then
        cfg.protocol = query_protocol.new("awsQuery")
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

function Client:acceptDelegationRequest(input, options)
    return self:invokeOperation(input, {
        name = "AcceptDelegationRequest",
        input_schema = types.AcceptDelegationRequestInput,
        output_schema = types.AcceptDelegationRequestOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:addClientIDToOpenIDConnectProvider(input, options)
    return self:invokeOperation(input, {
        name = "AddClientIDToOpenIDConnectProvider",
        input_schema = types.AddClientIDToOpenIDConnectProviderInput,
        output_schema = types.AddClientIDToOpenIDConnectProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:addRoleToInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "AddRoleToInstanceProfile",
        input_schema = types.AddRoleToInstanceProfileInput,
        output_schema = types.AddRoleToInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:addUserToGroup(input, options)
    return self:invokeOperation(input, {
        name = "AddUserToGroup",
        input_schema = types.AddUserToGroupInput,
        output_schema = types.AddUserToGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateDelegationRequest(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDelegationRequest",
        input_schema = types.AssociateDelegationRequestInput,
        output_schema = types.AssociateDelegationRequestOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:attachGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "AttachGroupPolicy",
        input_schema = types.AttachGroupPolicyInput,
        output_schema = types.AttachGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:attachRolePolicy(input, options)
    return self:invokeOperation(input, {
        name = "AttachRolePolicy",
        input_schema = types.AttachRolePolicyInput,
        output_schema = types.AttachRolePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:attachUserPolicy(input, options)
    return self:invokeOperation(input, {
        name = "AttachUserPolicy",
        input_schema = types.AttachUserPolicyInput,
        output_schema = types.AttachUserPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:changePassword(input, options)
    return self:invokeOperation(input, {
        name = "ChangePassword",
        input_schema = types.ChangePasswordInput,
        output_schema = types.ChangePasswordOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAccessKey(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessKey",
        input_schema = types.CreateAccessKeyInput,
        output_schema = types.CreateAccessKeyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAccountAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccountAlias",
        input_schema = types.CreateAccountAliasInput,
        output_schema = types.CreateAccountAliasOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDelegationRequest(input, options)
    return self:invokeOperation(input, {
        name = "CreateDelegationRequest",
        input_schema = types.CreateDelegationRequestInput,
        output_schema = types.CreateDelegationRequestOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateGroup",
        input_schema = types.CreateGroupInput,
        output_schema = types.CreateGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateInstanceProfile",
        input_schema = types.CreateInstanceProfileInput,
        output_schema = types.CreateInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLoginProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateLoginProfile",
        input_schema = types.CreateLoginProfileInput,
        output_schema = types.CreateLoginProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createOpenIDConnectProvider(input, options)
    return self:invokeOperation(input, {
        name = "CreateOpenIDConnectProvider",
        input_schema = types.CreateOpenIDConnectProviderInput,
        output_schema = types.CreateOpenIDConnectProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreatePolicy",
        input_schema = types.CreatePolicyInput,
        output_schema = types.CreatePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreatePolicyVersion",
        input_schema = types.CreatePolicyVersionInput,
        output_schema = types.CreatePolicyVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createRole(input, options)
    return self:invokeOperation(input, {
        name = "CreateRole",
        input_schema = types.CreateRoleInput,
        output_schema = types.CreateRoleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSAMLProvider(input, options)
    return self:invokeOperation(input, {
        name = "CreateSAMLProvider",
        input_schema = types.CreateSAMLProviderInput,
        output_schema = types.CreateSAMLProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createServiceLinkedRole(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceLinkedRole",
        input_schema = types.CreateServiceLinkedRoleInput,
        output_schema = types.CreateServiceLinkedRoleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createServiceSpecificCredential(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceSpecificCredential",
        input_schema = types.CreateServiceSpecificCredentialInput,
        output_schema = types.CreateServiceSpecificCredentialOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateUser",
        input_schema = types.CreateUserInput,
        output_schema = types.CreateUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createVirtualMFADevice(input, options)
    return self:invokeOperation(input, {
        name = "CreateVirtualMFADevice",
        input_schema = types.CreateVirtualMFADeviceInput,
        output_schema = types.CreateVirtualMFADeviceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deactivateMFADevice(input, options)
    return self:invokeOperation(input, {
        name = "DeactivateMFADevice",
        input_schema = types.DeactivateMFADeviceInput,
        output_schema = types.DeactivateMFADeviceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAccessKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessKey",
        input_schema = types.DeleteAccessKeyInput,
        output_schema = types.DeleteAccessKeyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAccountAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountAlias",
        input_schema = types.DeleteAccountAliasInput,
        output_schema = types.DeleteAccountAliasOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAccountPasswordPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountPasswordPolicy",
        input_schema = types.DeleteAccountPasswordPolicyInput,
        output_schema = types.DeleteAccountPasswordPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGroup",
        input_schema = types.DeleteGroupInput,
        output_schema = types.DeleteGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGroupPolicy",
        input_schema = types.DeleteGroupPolicyInput,
        output_schema = types.DeleteGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInstanceProfile",
        input_schema = types.DeleteInstanceProfileInput,
        output_schema = types.DeleteInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteLoginProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLoginProfile",
        input_schema = types.DeleteLoginProfileInput,
        output_schema = types.DeleteLoginProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteOpenIDConnectProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOpenIDConnectProvider",
        input_schema = types.DeleteOpenIDConnectProviderInput,
        output_schema = types.DeleteOpenIDConnectProviderOutput,
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

function Client:deletePolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicyVersion",
        input_schema = types.DeletePolicyVersionInput,
        output_schema = types.DeletePolicyVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRole(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRole",
        input_schema = types.DeleteRoleInput,
        output_schema = types.DeleteRoleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRolePermissionsBoundary(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRolePermissionsBoundary",
        input_schema = types.DeleteRolePermissionsBoundaryInput,
        output_schema = types.DeleteRolePermissionsBoundaryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRolePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRolePolicy",
        input_schema = types.DeleteRolePolicyInput,
        output_schema = types.DeleteRolePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSAMLProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSAMLProvider",
        input_schema = types.DeleteSAMLProviderInput,
        output_schema = types.DeleteSAMLProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteServerCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServerCertificate",
        input_schema = types.DeleteServerCertificateInput,
        output_schema = types.DeleteServerCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteServiceLinkedRole(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceLinkedRole",
        input_schema = types.DeleteServiceLinkedRoleInput,
        output_schema = types.DeleteServiceLinkedRoleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteServiceSpecificCredential(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceSpecificCredential",
        input_schema = types.DeleteServiceSpecificCredentialInput,
        output_schema = types.DeleteServiceSpecificCredentialOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSigningCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSigningCertificate",
        input_schema = types.DeleteSigningCertificateInput,
        output_schema = types.DeleteSigningCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSSHPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSSHPublicKey",
        input_schema = types.DeleteSSHPublicKeyInput,
        output_schema = types.DeleteSSHPublicKeyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUser",
        input_schema = types.DeleteUserInput,
        output_schema = types.DeleteUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteUserPermissionsBoundary(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserPermissionsBoundary",
        input_schema = types.DeleteUserPermissionsBoundaryInput,
        output_schema = types.DeleteUserPermissionsBoundaryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteUserPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserPolicy",
        input_schema = types.DeleteUserPolicyInput,
        output_schema = types.DeleteUserPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteVirtualMFADevice(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVirtualMFADevice",
        input_schema = types.DeleteVirtualMFADeviceInput,
        output_schema = types.DeleteVirtualMFADeviceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detachGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DetachGroupPolicy",
        input_schema = types.DetachGroupPolicyInput,
        output_schema = types.DetachGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detachRolePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DetachRolePolicy",
        input_schema = types.DetachRolePolicyInput,
        output_schema = types.DetachRolePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detachUserPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DetachUserPolicy",
        input_schema = types.DetachUserPolicyInput,
        output_schema = types.DetachUserPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disableOrganizationsRootCredentialsManagement(input, options)
    return self:invokeOperation(input, {
        name = "DisableOrganizationsRootCredentialsManagement",
        input_schema = types.DisableOrganizationsRootCredentialsManagementInput,
        output_schema = types.DisableOrganizationsRootCredentialsManagementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disableOrganizationsRootSessions(input, options)
    return self:invokeOperation(input, {
        name = "DisableOrganizationsRootSessions",
        input_schema = types.DisableOrganizationsRootSessionsInput,
        output_schema = types.DisableOrganizationsRootSessionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disableOutboundWebIdentityFederation(input, options)
    return self:invokeOperation(input, {
        name = "DisableOutboundWebIdentityFederation",
        input_schema = types.DisableOutboundWebIdentityFederationInput,
        output_schema = types.DisableOutboundWebIdentityFederationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:enableMFADevice(input, options)
    return self:invokeOperation(input, {
        name = "EnableMFADevice",
        input_schema = types.EnableMFADeviceInput,
        output_schema = types.EnableMFADeviceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:enableOrganizationsRootCredentialsManagement(input, options)
    return self:invokeOperation(input, {
        name = "EnableOrganizationsRootCredentialsManagement",
        input_schema = types.EnableOrganizationsRootCredentialsManagementInput,
        output_schema = types.EnableOrganizationsRootCredentialsManagementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:enableOrganizationsRootSessions(input, options)
    return self:invokeOperation(input, {
        name = "EnableOrganizationsRootSessions",
        input_schema = types.EnableOrganizationsRootSessionsInput,
        output_schema = types.EnableOrganizationsRootSessionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:enableOutboundWebIdentityFederation(input, options)
    return self:invokeOperation(input, {
        name = "EnableOutboundWebIdentityFederation",
        input_schema = types.EnableOutboundWebIdentityFederationInput,
        output_schema = types.EnableOutboundWebIdentityFederationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:generateCredentialReport(input, options)
    return self:invokeOperation(input, {
        name = "GenerateCredentialReport",
        input_schema = types.GenerateCredentialReportInput,
        output_schema = types.GenerateCredentialReportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:generateOrganizationsAccessReport(input, options)
    return self:invokeOperation(input, {
        name = "GenerateOrganizationsAccessReport",
        input_schema = types.GenerateOrganizationsAccessReportInput,
        output_schema = types.GenerateOrganizationsAccessReportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:generateServiceLastAccessedDetails(input, options)
    return self:invokeOperation(input, {
        name = "GenerateServiceLastAccessedDetails",
        input_schema = types.GenerateServiceLastAccessedDetailsInput,
        output_schema = types.GenerateServiceLastAccessedDetailsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAccessKeyLastUsed(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessKeyLastUsed",
        input_schema = types.GetAccessKeyLastUsedInput,
        output_schema = types.GetAccessKeyLastUsedOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAccountAuthorizationDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountAuthorizationDetails",
        input_schema = types.GetAccountAuthorizationDetailsInput,
        output_schema = types.GetAccountAuthorizationDetailsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAccountPasswordPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountPasswordPolicy",
        input_schema = types.GetAccountPasswordPolicyInput,
        output_schema = types.GetAccountPasswordPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAccountSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountSummary",
        input_schema = types.GetAccountSummaryInput,
        output_schema = types.GetAccountSummaryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getContextKeysForCustomPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetContextKeysForCustomPolicy",
        input_schema = types.GetContextKeysForCustomPolicyInput,
        output_schema = types.GetContextKeysForCustomPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getContextKeysForPrincipalPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetContextKeysForPrincipalPolicy",
        input_schema = types.GetContextKeysForPrincipalPolicyInput,
        output_schema = types.GetContextKeysForPrincipalPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCredentialReport(input, options)
    return self:invokeOperation(input, {
        name = "GetCredentialReport",
        input_schema = types.GetCredentialReportInput,
        output_schema = types.GetCredentialReportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDelegationRequest(input, options)
    return self:invokeOperation(input, {
        name = "GetDelegationRequest",
        input_schema = types.GetDelegationRequestInput,
        output_schema = types.GetDelegationRequestOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetGroup",
        input_schema = types.GetGroupInput,
        output_schema = types.GetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetGroupPolicy",
        input_schema = types.GetGroupPolicyInput,
        output_schema = types.GetGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getHumanReadableSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetHumanReadableSummary",
        input_schema = types.GetHumanReadableSummaryInput,
        output_schema = types.GetHumanReadableSummaryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceProfile",
        input_schema = types.GetInstanceProfileInput,
        output_schema = types.GetInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getLoginProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetLoginProfile",
        input_schema = types.GetLoginProfileInput,
        output_schema = types.GetLoginProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMFADevice(input, options)
    return self:invokeOperation(input, {
        name = "GetMFADevice",
        input_schema = types.GetMFADeviceInput,
        output_schema = types.GetMFADeviceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getOpenIDConnectProvider(input, options)
    return self:invokeOperation(input, {
        name = "GetOpenIDConnectProvider",
        input_schema = types.GetOpenIDConnectProviderInput,
        output_schema = types.GetOpenIDConnectProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getOrganizationsAccessReport(input, options)
    return self:invokeOperation(input, {
        name = "GetOrganizationsAccessReport",
        input_schema = types.GetOrganizationsAccessReportInput,
        output_schema = types.GetOrganizationsAccessReportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getOutboundWebIdentityFederationInfo(input, options)
    return self:invokeOperation(input, {
        name = "GetOutboundWebIdentityFederationInfo",
        input_schema = types.GetOutboundWebIdentityFederationInfoInput,
        output_schema = types.GetOutboundWebIdentityFederationInfoOutput,
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

function Client:getPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicyVersion",
        input_schema = types.GetPolicyVersionInput,
        output_schema = types.GetPolicyVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRole(input, options)
    return self:invokeOperation(input, {
        name = "GetRole",
        input_schema = types.GetRoleInput,
        output_schema = types.GetRoleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRolePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetRolePolicy",
        input_schema = types.GetRolePolicyInput,
        output_schema = types.GetRolePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSAMLProvider(input, options)
    return self:invokeOperation(input, {
        name = "GetSAMLProvider",
        input_schema = types.GetSAMLProviderInput,
        output_schema = types.GetSAMLProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getServerCertificate(input, options)
    return self:invokeOperation(input, {
        name = "GetServerCertificate",
        input_schema = types.GetServerCertificateInput,
        output_schema = types.GetServerCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getServiceLastAccessedDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceLastAccessedDetails",
        input_schema = types.GetServiceLastAccessedDetailsInput,
        output_schema = types.GetServiceLastAccessedDetailsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getServiceLastAccessedDetailsWithEntities(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceLastAccessedDetailsWithEntities",
        input_schema = types.GetServiceLastAccessedDetailsWithEntitiesInput,
        output_schema = types.GetServiceLastAccessedDetailsWithEntitiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getServiceLinkedRoleDeletionStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceLinkedRoleDeletionStatus",
        input_schema = types.GetServiceLinkedRoleDeletionStatusInput,
        output_schema = types.GetServiceLinkedRoleDeletionStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSSHPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "GetSSHPublicKey",
        input_schema = types.GetSSHPublicKeyInput,
        output_schema = types.GetSSHPublicKeyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getUser(input, options)
    return self:invokeOperation(input, {
        name = "GetUser",
        input_schema = types.GetUserInput,
        output_schema = types.GetUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getUserPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetUserPolicy",
        input_schema = types.GetUserPolicyInput,
        output_schema = types.GetUserPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAccessKeys(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessKeys",
        input_schema = types.ListAccessKeysInput,
        output_schema = types.ListAccessKeysOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAccountAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountAliases",
        input_schema = types.ListAccountAliasesInput,
        output_schema = types.ListAccountAliasesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAttachedGroupPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachedGroupPolicies",
        input_schema = types.ListAttachedGroupPoliciesInput,
        output_schema = types.ListAttachedGroupPoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAttachedRolePolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachedRolePolicies",
        input_schema = types.ListAttachedRolePoliciesInput,
        output_schema = types.ListAttachedRolePoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAttachedUserPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachedUserPolicies",
        input_schema = types.ListAttachedUserPoliciesInput,
        output_schema = types.ListAttachedUserPoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDelegationRequests(input, options)
    return self:invokeOperation(input, {
        name = "ListDelegationRequests",
        input_schema = types.ListDelegationRequestsInput,
        output_schema = types.ListDelegationRequestsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEntitiesForPolicy(input, options)
    return self:invokeOperation(input, {
        name = "ListEntitiesForPolicy",
        input_schema = types.ListEntitiesForPolicyInput,
        output_schema = types.ListEntitiesForPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listGroupPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupPolicies",
        input_schema = types.ListGroupPoliciesInput,
        output_schema = types.ListGroupPoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListGroups",
        input_schema = types.ListGroupsInput,
        output_schema = types.ListGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listGroupsForUser(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupsForUser",
        input_schema = types.ListGroupsForUserInput,
        output_schema = types.ListGroupsForUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listInstanceProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListInstanceProfiles",
        input_schema = types.ListInstanceProfilesInput,
        output_schema = types.ListInstanceProfilesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listInstanceProfilesForRole(input, options)
    return self:invokeOperation(input, {
        name = "ListInstanceProfilesForRole",
        input_schema = types.ListInstanceProfilesForRoleInput,
        output_schema = types.ListInstanceProfilesForRoleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listInstanceProfileTags(input, options)
    return self:invokeOperation(input, {
        name = "ListInstanceProfileTags",
        input_schema = types.ListInstanceProfileTagsInput,
        output_schema = types.ListInstanceProfileTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listMFADevices(input, options)
    return self:invokeOperation(input, {
        name = "ListMFADevices",
        input_schema = types.ListMFADevicesInput,
        output_schema = types.ListMFADevicesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listMFADeviceTags(input, options)
    return self:invokeOperation(input, {
        name = "ListMFADeviceTags",
        input_schema = types.ListMFADeviceTagsInput,
        output_schema = types.ListMFADeviceTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listOpenIDConnectProviders(input, options)
    return self:invokeOperation(input, {
        name = "ListOpenIDConnectProviders",
        input_schema = types.ListOpenIDConnectProvidersInput,
        output_schema = types.ListOpenIDConnectProvidersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listOpenIDConnectProviderTags(input, options)
    return self:invokeOperation(input, {
        name = "ListOpenIDConnectProviderTags",
        input_schema = types.ListOpenIDConnectProviderTagsInput,
        output_schema = types.ListOpenIDConnectProviderTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listOrganizationsFeatures(input, options)
    return self:invokeOperation(input, {
        name = "ListOrganizationsFeatures",
        input_schema = types.ListOrganizationsFeaturesInput,
        output_schema = types.ListOrganizationsFeaturesOutput,
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

function Client:listPoliciesGrantingServiceAccess(input, options)
    return self:invokeOperation(input, {
        name = "ListPoliciesGrantingServiceAccess",
        input_schema = types.ListPoliciesGrantingServiceAccessInput,
        output_schema = types.ListPoliciesGrantingServiceAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPolicyTags(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyTags",
        input_schema = types.ListPolicyTagsInput,
        output_schema = types.ListPolicyTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPolicyVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyVersions",
        input_schema = types.ListPolicyVersionsInput,
        output_schema = types.ListPolicyVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRolePolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListRolePolicies",
        input_schema = types.ListRolePoliciesInput,
        output_schema = types.ListRolePoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRoles(input, options)
    return self:invokeOperation(input, {
        name = "ListRoles",
        input_schema = types.ListRolesInput,
        output_schema = types.ListRolesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRoleTags(input, options)
    return self:invokeOperation(input, {
        name = "ListRoleTags",
        input_schema = types.ListRoleTagsInput,
        output_schema = types.ListRoleTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSAMLProviders(input, options)
    return self:invokeOperation(input, {
        name = "ListSAMLProviders",
        input_schema = types.ListSAMLProvidersInput,
        output_schema = types.ListSAMLProvidersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSAMLProviderTags(input, options)
    return self:invokeOperation(input, {
        name = "ListSAMLProviderTags",
        input_schema = types.ListSAMLProviderTagsInput,
        output_schema = types.ListSAMLProviderTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listServerCertificates(input, options)
    return self:invokeOperation(input, {
        name = "ListServerCertificates",
        input_schema = types.ListServerCertificatesInput,
        output_schema = types.ListServerCertificatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listServerCertificateTags(input, options)
    return self:invokeOperation(input, {
        name = "ListServerCertificateTags",
        input_schema = types.ListServerCertificateTagsInput,
        output_schema = types.ListServerCertificateTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listServiceSpecificCredentials(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceSpecificCredentials",
        input_schema = types.ListServiceSpecificCredentialsInput,
        output_schema = types.ListServiceSpecificCredentialsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSigningCertificates(input, options)
    return self:invokeOperation(input, {
        name = "ListSigningCertificates",
        input_schema = types.ListSigningCertificatesInput,
        output_schema = types.ListSigningCertificatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSSHPublicKeys(input, options)
    return self:invokeOperation(input, {
        name = "ListSSHPublicKeys",
        input_schema = types.ListSSHPublicKeysInput,
        output_schema = types.ListSSHPublicKeysOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listUserPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListUserPolicies",
        input_schema = types.ListUserPoliciesInput,
        output_schema = types.ListUserPoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListUsers",
        input_schema = types.ListUsersInput,
        output_schema = types.ListUsersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listUserTags(input, options)
    return self:invokeOperation(input, {
        name = "ListUserTags",
        input_schema = types.ListUserTagsInput,
        output_schema = types.ListUserTagsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listVirtualMFADevices(input, options)
    return self:invokeOperation(input, {
        name = "ListVirtualMFADevices",
        input_schema = types.ListVirtualMFADevicesInput,
        output_schema = types.ListVirtualMFADevicesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutGroupPolicy",
        input_schema = types.PutGroupPolicyInput,
        output_schema = types.PutGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putRolePermissionsBoundary(input, options)
    return self:invokeOperation(input, {
        name = "PutRolePermissionsBoundary",
        input_schema = types.PutRolePermissionsBoundaryInput,
        output_schema = types.PutRolePermissionsBoundaryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putRolePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutRolePolicy",
        input_schema = types.PutRolePolicyInput,
        output_schema = types.PutRolePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putUserPermissionsBoundary(input, options)
    return self:invokeOperation(input, {
        name = "PutUserPermissionsBoundary",
        input_schema = types.PutUserPermissionsBoundaryInput,
        output_schema = types.PutUserPermissionsBoundaryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putUserPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutUserPolicy",
        input_schema = types.PutUserPolicyInput,
        output_schema = types.PutUserPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:rejectDelegationRequest(input, options)
    return self:invokeOperation(input, {
        name = "RejectDelegationRequest",
        input_schema = types.RejectDelegationRequestInput,
        output_schema = types.RejectDelegationRequestOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeClientIDFromOpenIDConnectProvider(input, options)
    return self:invokeOperation(input, {
        name = "RemoveClientIDFromOpenIDConnectProvider",
        input_schema = types.RemoveClientIDFromOpenIDConnectProviderInput,
        output_schema = types.RemoveClientIDFromOpenIDConnectProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeRoleFromInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "RemoveRoleFromInstanceProfile",
        input_schema = types.RemoveRoleFromInstanceProfileInput,
        output_schema = types.RemoveRoleFromInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeUserFromGroup(input, options)
    return self:invokeOperation(input, {
        name = "RemoveUserFromGroup",
        input_schema = types.RemoveUserFromGroupInput,
        output_schema = types.RemoveUserFromGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:resetServiceSpecificCredential(input, options)
    return self:invokeOperation(input, {
        name = "ResetServiceSpecificCredential",
        input_schema = types.ResetServiceSpecificCredentialInput,
        output_schema = types.ResetServiceSpecificCredentialOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:resyncMFADevice(input, options)
    return self:invokeOperation(input, {
        name = "ResyncMFADevice",
        input_schema = types.ResyncMFADeviceInput,
        output_schema = types.ResyncMFADeviceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:sendDelegationToken(input, options)
    return self:invokeOperation(input, {
        name = "SendDelegationToken",
        input_schema = types.SendDelegationTokenInput,
        output_schema = types.SendDelegationTokenOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setDefaultPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "SetDefaultPolicyVersion",
        input_schema = types.SetDefaultPolicyVersionInput,
        output_schema = types.SetDefaultPolicyVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setSecurityTokenServicePreferences(input, options)
    return self:invokeOperation(input, {
        name = "SetSecurityTokenServicePreferences",
        input_schema = types.SetSecurityTokenServicePreferencesInput,
        output_schema = types.SetSecurityTokenServicePreferencesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:simulateCustomPolicy(input, options)
    return self:invokeOperation(input, {
        name = "SimulateCustomPolicy",
        input_schema = types.SimulateCustomPolicyInput,
        output_schema = types.SimulateCustomPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:simulatePrincipalPolicy(input, options)
    return self:invokeOperation(input, {
        name = "SimulatePrincipalPolicy",
        input_schema = types.SimulatePrincipalPolicyInput,
        output_schema = types.SimulatePrincipalPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "TagInstanceProfile",
        input_schema = types.TagInstanceProfileInput,
        output_schema = types.TagInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagMFADevice(input, options)
    return self:invokeOperation(input, {
        name = "TagMFADevice",
        input_schema = types.TagMFADeviceInput,
        output_schema = types.TagMFADeviceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagOpenIDConnectProvider(input, options)
    return self:invokeOperation(input, {
        name = "TagOpenIDConnectProvider",
        input_schema = types.TagOpenIDConnectProviderInput,
        output_schema = types.TagOpenIDConnectProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagPolicy(input, options)
    return self:invokeOperation(input, {
        name = "TagPolicy",
        input_schema = types.TagPolicyInput,
        output_schema = types.TagPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagRole(input, options)
    return self:invokeOperation(input, {
        name = "TagRole",
        input_schema = types.TagRoleInput,
        output_schema = types.TagRoleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagSAMLProvider(input, options)
    return self:invokeOperation(input, {
        name = "TagSAMLProvider",
        input_schema = types.TagSAMLProviderInput,
        output_schema = types.TagSAMLProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagServerCertificate(input, options)
    return self:invokeOperation(input, {
        name = "TagServerCertificate",
        input_schema = types.TagServerCertificateInput,
        output_schema = types.TagServerCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagUser(input, options)
    return self:invokeOperation(input, {
        name = "TagUser",
        input_schema = types.TagUserInput,
        output_schema = types.TagUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagInstanceProfile(input, options)
    return self:invokeOperation(input, {
        name = "UntagInstanceProfile",
        input_schema = types.UntagInstanceProfileInput,
        output_schema = types.UntagInstanceProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagMFADevice(input, options)
    return self:invokeOperation(input, {
        name = "UntagMFADevice",
        input_schema = types.UntagMFADeviceInput,
        output_schema = types.UntagMFADeviceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagOpenIDConnectProvider(input, options)
    return self:invokeOperation(input, {
        name = "UntagOpenIDConnectProvider",
        input_schema = types.UntagOpenIDConnectProviderInput,
        output_schema = types.UntagOpenIDConnectProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UntagPolicy",
        input_schema = types.UntagPolicyInput,
        output_schema = types.UntagPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagRole(input, options)
    return self:invokeOperation(input, {
        name = "UntagRole",
        input_schema = types.UntagRoleInput,
        output_schema = types.UntagRoleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagSAMLProvider(input, options)
    return self:invokeOperation(input, {
        name = "UntagSAMLProvider",
        input_schema = types.UntagSAMLProviderInput,
        output_schema = types.UntagSAMLProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagServerCertificate(input, options)
    return self:invokeOperation(input, {
        name = "UntagServerCertificate",
        input_schema = types.UntagServerCertificateInput,
        output_schema = types.UntagServerCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagUser(input, options)
    return self:invokeOperation(input, {
        name = "UntagUser",
        input_schema = types.UntagUserInput,
        output_schema = types.UntagUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateAccessKey(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccessKey",
        input_schema = types.UpdateAccessKeyInput,
        output_schema = types.UpdateAccessKeyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateAccountPasswordPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountPasswordPolicy",
        input_schema = types.UpdateAccountPasswordPolicyInput,
        output_schema = types.UpdateAccountPasswordPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateAssumeRolePolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssumeRolePolicy",
        input_schema = types.UpdateAssumeRolePolicyInput,
        output_schema = types.UpdateAssumeRolePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDelegationRequest(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDelegationRequest",
        input_schema = types.UpdateDelegationRequestInput,
        output_schema = types.UpdateDelegationRequestOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGroup",
        input_schema = types.UpdateGroupInput,
        output_schema = types.UpdateGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLoginProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLoginProfile",
        input_schema = types.UpdateLoginProfileInput,
        output_schema = types.UpdateLoginProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateOpenIDConnectProviderThumbprint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOpenIDConnectProviderThumbprint",
        input_schema = types.UpdateOpenIDConnectProviderThumbprintInput,
        output_schema = types.UpdateOpenIDConnectProviderThumbprintOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateRole(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRole",
        input_schema = types.UpdateRoleInput,
        output_schema = types.UpdateRoleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateRoleDescription(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoleDescription",
        input_schema = types.UpdateRoleDescriptionInput,
        output_schema = types.UpdateRoleDescriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSAMLProvider(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSAMLProvider",
        input_schema = types.UpdateSAMLProviderInput,
        output_schema = types.UpdateSAMLProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateServerCertificate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServerCertificate",
        input_schema = types.UpdateServerCertificateInput,
        output_schema = types.UpdateServerCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateServiceSpecificCredential(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceSpecificCredential",
        input_schema = types.UpdateServiceSpecificCredentialInput,
        output_schema = types.UpdateServiceSpecificCredentialOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSigningCertificate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSigningCertificate",
        input_schema = types.UpdateSigningCertificateInput,
        output_schema = types.UpdateSigningCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSSHPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSSHPublicKey",
        input_schema = types.UpdateSSHPublicKeyInput,
        output_schema = types.UpdateSSHPublicKeyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUser",
        input_schema = types.UpdateUserInput,
        output_schema = types.UpdateUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:uploadServerCertificate(input, options)
    return self:invokeOperation(input, {
        name = "UploadServerCertificate",
        input_schema = types.UploadServerCertificateInput,
        output_schema = types.UploadServerCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:uploadSigningCertificate(input, options)
    return self:invokeOperation(input, {
        name = "UploadSigningCertificate",
        input_schema = types.UploadSigningCertificateInput,
        output_schema = types.UploadSigningCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:uploadSSHPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "UploadSSHPublicKey",
        input_schema = types.UploadSSHPublicKeyInput,
        output_schema = types.UploadSSHPublicKeyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
