local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cognitoidentityprovider.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("cognitoidentityprovider.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSCognitoIdentityProviderService"
    cfg.signing_name = "awscognitoidentityproviderservice"
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

function Client:addCustomAttributes(input, options)
    return self:invokeOperation(input, {
        name = "AddCustomAttributes",
        input_schema = types.AddCustomAttributesInput,
        output_schema = types.AddCustomAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:addUserPoolClientSecret(input, options)
    return self:invokeOperation(input, {
        name = "AddUserPoolClientSecret",
        input_schema = types.AddUserPoolClientSecretInput,
        output_schema = types.AddUserPoolClientSecretOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminAddUserToGroup(input, options)
    return self:invokeOperation(input, {
        name = "AdminAddUserToGroup",
        input_schema = types.AdminAddUserToGroupInput,
        output_schema = types.AdminAddUserToGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminConfirmSignUp(input, options)
    return self:invokeOperation(input, {
        name = "AdminConfirmSignUp",
        input_schema = types.AdminConfirmSignUpInput,
        output_schema = types.AdminConfirmSignUpOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminCreateUser(input, options)
    return self:invokeOperation(input, {
        name = "AdminCreateUser",
        input_schema = types.AdminCreateUserInput,
        output_schema = types.AdminCreateUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminDeleteUser(input, options)
    return self:invokeOperation(input, {
        name = "AdminDeleteUser",
        input_schema = types.AdminDeleteUserInput,
        output_schema = types.AdminDeleteUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminDeleteUserAttributes(input, options)
    return self:invokeOperation(input, {
        name = "AdminDeleteUserAttributes",
        input_schema = types.AdminDeleteUserAttributesInput,
        output_schema = types.AdminDeleteUserAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminDisableProviderForUser(input, options)
    return self:invokeOperation(input, {
        name = "AdminDisableProviderForUser",
        input_schema = types.AdminDisableProviderForUserInput,
        output_schema = types.AdminDisableProviderForUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminDisableUser(input, options)
    return self:invokeOperation(input, {
        name = "AdminDisableUser",
        input_schema = types.AdminDisableUserInput,
        output_schema = types.AdminDisableUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminEnableUser(input, options)
    return self:invokeOperation(input, {
        name = "AdminEnableUser",
        input_schema = types.AdminEnableUserInput,
        output_schema = types.AdminEnableUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminForgetDevice(input, options)
    return self:invokeOperation(input, {
        name = "AdminForgetDevice",
        input_schema = types.AdminForgetDeviceInput,
        output_schema = types.AdminForgetDeviceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminGetDevice(input, options)
    return self:invokeOperation(input, {
        name = "AdminGetDevice",
        input_schema = types.AdminGetDeviceInput,
        output_schema = types.AdminGetDeviceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminGetUser(input, options)
    return self:invokeOperation(input, {
        name = "AdminGetUser",
        input_schema = types.AdminGetUserInput,
        output_schema = types.AdminGetUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminInitiateAuth(input, options)
    return self:invokeOperation(input, {
        name = "AdminInitiateAuth",
        input_schema = types.AdminInitiateAuthInput,
        output_schema = types.AdminInitiateAuthOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminLinkProviderForUser(input, options)
    return self:invokeOperation(input, {
        name = "AdminLinkProviderForUser",
        input_schema = types.AdminLinkProviderForUserInput,
        output_schema = types.AdminLinkProviderForUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminListDevices(input, options)
    return self:invokeOperation(input, {
        name = "AdminListDevices",
        input_schema = types.AdminListDevicesInput,
        output_schema = types.AdminListDevicesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminListGroupsForUser(input, options)
    return self:invokeOperation(input, {
        name = "AdminListGroupsForUser",
        input_schema = types.AdminListGroupsForUserInput,
        output_schema = types.AdminListGroupsForUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminListUserAuthEvents(input, options)
    return self:invokeOperation(input, {
        name = "AdminListUserAuthEvents",
        input_schema = types.AdminListUserAuthEventsInput,
        output_schema = types.AdminListUserAuthEventsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminRemoveUserFromGroup(input, options)
    return self:invokeOperation(input, {
        name = "AdminRemoveUserFromGroup",
        input_schema = types.AdminRemoveUserFromGroupInput,
        output_schema = types.AdminRemoveUserFromGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminResetUserPassword(input, options)
    return self:invokeOperation(input, {
        name = "AdminResetUserPassword",
        input_schema = types.AdminResetUserPasswordInput,
        output_schema = types.AdminResetUserPasswordOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminRespondToAuthChallenge(input, options)
    return self:invokeOperation(input, {
        name = "AdminRespondToAuthChallenge",
        input_schema = types.AdminRespondToAuthChallengeInput,
        output_schema = types.AdminRespondToAuthChallengeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminSetUserMFAPreference(input, options)
    return self:invokeOperation(input, {
        name = "AdminSetUserMFAPreference",
        input_schema = types.AdminSetUserMFAPreferenceInput,
        output_schema = types.AdminSetUserMFAPreferenceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminSetUserPassword(input, options)
    return self:invokeOperation(input, {
        name = "AdminSetUserPassword",
        input_schema = types.AdminSetUserPasswordInput,
        output_schema = types.AdminSetUserPasswordOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminSetUserSettings(input, options)
    return self:invokeOperation(input, {
        name = "AdminSetUserSettings",
        input_schema = types.AdminSetUserSettingsInput,
        output_schema = types.AdminSetUserSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminUpdateAuthEventFeedback(input, options)
    return self:invokeOperation(input, {
        name = "AdminUpdateAuthEventFeedback",
        input_schema = types.AdminUpdateAuthEventFeedbackInput,
        output_schema = types.AdminUpdateAuthEventFeedbackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminUpdateDeviceStatus(input, options)
    return self:invokeOperation(input, {
        name = "AdminUpdateDeviceStatus",
        input_schema = types.AdminUpdateDeviceStatusInput,
        output_schema = types.AdminUpdateDeviceStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminUpdateUserAttributes(input, options)
    return self:invokeOperation(input, {
        name = "AdminUpdateUserAttributes",
        input_schema = types.AdminUpdateUserAttributesInput,
        output_schema = types.AdminUpdateUserAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:adminUserGlobalSignOut(input, options)
    return self:invokeOperation(input, {
        name = "AdminUserGlobalSignOut",
        input_schema = types.AdminUserGlobalSignOutInput,
        output_schema = types.AdminUserGlobalSignOutOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateSoftwareToken(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSoftwareToken",
        input_schema = types.AssociateSoftwareTokenInput,
        output_schema = types.AssociateSoftwareTokenOutput,
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

function Client:completeWebAuthnRegistration(input, options)
    return self:invokeOperation(input, {
        name = "CompleteWebAuthnRegistration",
        input_schema = types.CompleteWebAuthnRegistrationInput,
        output_schema = types.CompleteWebAuthnRegistrationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:confirmDevice(input, options)
    return self:invokeOperation(input, {
        name = "ConfirmDevice",
        input_schema = types.ConfirmDeviceInput,
        output_schema = types.ConfirmDeviceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:confirmForgotPassword(input, options)
    return self:invokeOperation(input, {
        name = "ConfirmForgotPassword",
        input_schema = types.ConfirmForgotPasswordInput,
        output_schema = types.ConfirmForgotPasswordOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:confirmSignUp(input, options)
    return self:invokeOperation(input, {
        name = "ConfirmSignUp",
        input_schema = types.ConfirmSignUpInput,
        output_schema = types.ConfirmSignUpOutput,
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

function Client:createIdentityProvider(input, options)
    return self:invokeOperation(input, {
        name = "CreateIdentityProvider",
        input_schema = types.CreateIdentityProviderInput,
        output_schema = types.CreateIdentityProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createManagedLoginBranding(input, options)
    return self:invokeOperation(input, {
        name = "CreateManagedLoginBranding",
        input_schema = types.CreateManagedLoginBrandingInput,
        output_schema = types.CreateManagedLoginBrandingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createResourceServer(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourceServer",
        input_schema = types.CreateResourceServerInput,
        output_schema = types.CreateResourceServerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTerms(input, options)
    return self:invokeOperation(input, {
        name = "CreateTerms",
        input_schema = types.CreateTermsInput,
        output_schema = types.CreateTermsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createUserImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateUserImportJob",
        input_schema = types.CreateUserImportJobInput,
        output_schema = types.CreateUserImportJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createUserPool(input, options)
    return self:invokeOperation(input, {
        name = "CreateUserPool",
        input_schema = types.CreateUserPoolInput,
        output_schema = types.CreateUserPoolOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createUserPoolClient(input, options)
    return self:invokeOperation(input, {
        name = "CreateUserPoolClient",
        input_schema = types.CreateUserPoolClientInput,
        output_schema = types.CreateUserPoolClientOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createUserPoolDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateUserPoolDomain",
        input_schema = types.CreateUserPoolDomainInput,
        output_schema = types.CreateUserPoolDomainOutput,
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

function Client:deleteIdentityProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIdentityProvider",
        input_schema = types.DeleteIdentityProviderInput,
        output_schema = types.DeleteIdentityProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteManagedLoginBranding(input, options)
    return self:invokeOperation(input, {
        name = "DeleteManagedLoginBranding",
        input_schema = types.DeleteManagedLoginBrandingInput,
        output_schema = types.DeleteManagedLoginBrandingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteResourceServer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourceServer",
        input_schema = types.DeleteResourceServerInput,
        output_schema = types.DeleteResourceServerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTerms(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTerms",
        input_schema = types.DeleteTermsInput,
        output_schema = types.DeleteTermsOutput,
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

function Client:deleteUserAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserAttributes",
        input_schema = types.DeleteUserAttributesInput,
        output_schema = types.DeleteUserAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteUserPool(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserPool",
        input_schema = types.DeleteUserPoolInput,
        output_schema = types.DeleteUserPoolOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteUserPoolClient(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserPoolClient",
        input_schema = types.DeleteUserPoolClientInput,
        output_schema = types.DeleteUserPoolClientOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteUserPoolClientSecret(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserPoolClientSecret",
        input_schema = types.DeleteUserPoolClientSecretInput,
        output_schema = types.DeleteUserPoolClientSecretOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteUserPoolDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserPoolDomain",
        input_schema = types.DeleteUserPoolDomainInput,
        output_schema = types.DeleteUserPoolDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteWebAuthnCredential(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWebAuthnCredential",
        input_schema = types.DeleteWebAuthnCredentialInput,
        output_schema = types.DeleteWebAuthnCredentialOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeIdentityProvider(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIdentityProvider",
        input_schema = types.DescribeIdentityProviderInput,
        output_schema = types.DescribeIdentityProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeManagedLoginBranding(input, options)
    return self:invokeOperation(input, {
        name = "DescribeManagedLoginBranding",
        input_schema = types.DescribeManagedLoginBrandingInput,
        output_schema = types.DescribeManagedLoginBrandingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeManagedLoginBrandingByClient(input, options)
    return self:invokeOperation(input, {
        name = "DescribeManagedLoginBrandingByClient",
        input_schema = types.DescribeManagedLoginBrandingByClientInput,
        output_schema = types.DescribeManagedLoginBrandingByClientOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeResourceServer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourceServer",
        input_schema = types.DescribeResourceServerInput,
        output_schema = types.DescribeResourceServerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRiskConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRiskConfiguration",
        input_schema = types.DescribeRiskConfigurationInput,
        output_schema = types.DescribeRiskConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTerms(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTerms",
        input_schema = types.DescribeTermsInput,
        output_schema = types.DescribeTermsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeUserImportJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUserImportJob",
        input_schema = types.DescribeUserImportJobInput,
        output_schema = types.DescribeUserImportJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeUserPool(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUserPool",
        input_schema = types.DescribeUserPoolInput,
        output_schema = types.DescribeUserPoolOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeUserPoolClient(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUserPoolClient",
        input_schema = types.DescribeUserPoolClientInput,
        output_schema = types.DescribeUserPoolClientOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeUserPoolDomain(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUserPoolDomain",
        input_schema = types.DescribeUserPoolDomainInput,
        output_schema = types.DescribeUserPoolDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:forgetDevice(input, options)
    return self:invokeOperation(input, {
        name = "ForgetDevice",
        input_schema = types.ForgetDeviceInput,
        output_schema = types.ForgetDeviceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:forgotPassword(input, options)
    return self:invokeOperation(input, {
        name = "ForgotPassword",
        input_schema = types.ForgotPasswordInput,
        output_schema = types.ForgotPasswordOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getCSVHeader(input, options)
    return self:invokeOperation(input, {
        name = "GetCSVHeader",
        input_schema = types.GetCSVHeaderInput,
        output_schema = types.GetCSVHeaderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDevice(input, options)
    return self:invokeOperation(input, {
        name = "GetDevice",
        input_schema = types.GetDeviceInput,
        output_schema = types.GetDeviceOutput,
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

function Client:getIdentityProviderByIdentifier(input, options)
    return self:invokeOperation(input, {
        name = "GetIdentityProviderByIdentifier",
        input_schema = types.GetIdentityProviderByIdentifierInput,
        output_schema = types.GetIdentityProviderByIdentifierOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getLogDeliveryConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetLogDeliveryConfiguration",
        input_schema = types.GetLogDeliveryConfigurationInput,
        output_schema = types.GetLogDeliveryConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSigningCertificate(input, options)
    return self:invokeOperation(input, {
        name = "GetSigningCertificate",
        input_schema = types.GetSigningCertificateInput,
        output_schema = types.GetSigningCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTokensFromRefreshToken(input, options)
    return self:invokeOperation(input, {
        name = "GetTokensFromRefreshToken",
        input_schema = types.GetTokensFromRefreshTokenInput,
        output_schema = types.GetTokensFromRefreshTokenOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getUICustomization(input, options)
    return self:invokeOperation(input, {
        name = "GetUICustomization",
        input_schema = types.GetUICustomizationInput,
        output_schema = types.GetUICustomizationOutput,
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

function Client:getUserAttributeVerificationCode(input, options)
    return self:invokeOperation(input, {
        name = "GetUserAttributeVerificationCode",
        input_schema = types.GetUserAttributeVerificationCodeInput,
        output_schema = types.GetUserAttributeVerificationCodeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getUserAuthFactors(input, options)
    return self:invokeOperation(input, {
        name = "GetUserAuthFactors",
        input_schema = types.GetUserAuthFactorsInput,
        output_schema = types.GetUserAuthFactorsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getUserPoolMfaConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetUserPoolMfaConfig",
        input_schema = types.GetUserPoolMfaConfigInput,
        output_schema = types.GetUserPoolMfaConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:globalSignOut(input, options)
    return self:invokeOperation(input, {
        name = "GlobalSignOut",
        input_schema = types.GlobalSignOutInput,
        output_schema = types.GlobalSignOutOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:initiateAuth(input, options)
    return self:invokeOperation(input, {
        name = "InitiateAuth",
        input_schema = types.InitiateAuthInput,
        output_schema = types.InitiateAuthOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDevices(input, options)
    return self:invokeOperation(input, {
        name = "ListDevices",
        input_schema = types.ListDevicesInput,
        output_schema = types.ListDevicesOutput,
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

function Client:listIdentityProviders(input, options)
    return self:invokeOperation(input, {
        name = "ListIdentityProviders",
        input_schema = types.ListIdentityProvidersInput,
        output_schema = types.ListIdentityProvidersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResourceServers(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceServers",
        input_schema = types.ListResourceServersInput,
        output_schema = types.ListResourceServersOutput,
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

function Client:listTerms(input, options)
    return self:invokeOperation(input, {
        name = "ListTerms",
        input_schema = types.ListTermsInput,
        output_schema = types.ListTermsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listUserImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListUserImportJobs",
        input_schema = types.ListUserImportJobsInput,
        output_schema = types.ListUserImportJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listUserPoolClients(input, options)
    return self:invokeOperation(input, {
        name = "ListUserPoolClients",
        input_schema = types.ListUserPoolClientsInput,
        output_schema = types.ListUserPoolClientsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listUserPoolClientSecrets(input, options)
    return self:invokeOperation(input, {
        name = "ListUserPoolClientSecrets",
        input_schema = types.ListUserPoolClientSecretsInput,
        output_schema = types.ListUserPoolClientSecretsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listUserPools(input, options)
    return self:invokeOperation(input, {
        name = "ListUserPools",
        input_schema = types.ListUserPoolsInput,
        output_schema = types.ListUserPoolsOutput,
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

function Client:listUsersInGroup(input, options)
    return self:invokeOperation(input, {
        name = "ListUsersInGroup",
        input_schema = types.ListUsersInGroupInput,
        output_schema = types.ListUsersInGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listWebAuthnCredentials(input, options)
    return self:invokeOperation(input, {
        name = "ListWebAuthnCredentials",
        input_schema = types.ListWebAuthnCredentialsInput,
        output_schema = types.ListWebAuthnCredentialsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:resendConfirmationCode(input, options)
    return self:invokeOperation(input, {
        name = "ResendConfirmationCode",
        input_schema = types.ResendConfirmationCodeInput,
        output_schema = types.ResendConfirmationCodeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:respondToAuthChallenge(input, options)
    return self:invokeOperation(input, {
        name = "RespondToAuthChallenge",
        input_schema = types.RespondToAuthChallengeInput,
        output_schema = types.RespondToAuthChallengeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:revokeToken(input, options)
    return self:invokeOperation(input, {
        name = "RevokeToken",
        input_schema = types.RevokeTokenInput,
        output_schema = types.RevokeTokenOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setLogDeliveryConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "SetLogDeliveryConfiguration",
        input_schema = types.SetLogDeliveryConfigurationInput,
        output_schema = types.SetLogDeliveryConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setRiskConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "SetRiskConfiguration",
        input_schema = types.SetRiskConfigurationInput,
        output_schema = types.SetRiskConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setUICustomization(input, options)
    return self:invokeOperation(input, {
        name = "SetUICustomization",
        input_schema = types.SetUICustomizationInput,
        output_schema = types.SetUICustomizationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setUserMFAPreference(input, options)
    return self:invokeOperation(input, {
        name = "SetUserMFAPreference",
        input_schema = types.SetUserMFAPreferenceInput,
        output_schema = types.SetUserMFAPreferenceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setUserPoolMfaConfig(input, options)
    return self:invokeOperation(input, {
        name = "SetUserPoolMfaConfig",
        input_schema = types.SetUserPoolMfaConfigInput,
        output_schema = types.SetUserPoolMfaConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setUserSettings(input, options)
    return self:invokeOperation(input, {
        name = "SetUserSettings",
        input_schema = types.SetUserSettingsInput,
        output_schema = types.SetUserSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:signUp(input, options)
    return self:invokeOperation(input, {
        name = "SignUp",
        input_schema = types.SignUpInput,
        output_schema = types.SignUpOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startUserImportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartUserImportJob",
        input_schema = types.StartUserImportJobInput,
        output_schema = types.StartUserImportJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startWebAuthnRegistration(input, options)
    return self:invokeOperation(input, {
        name = "StartWebAuthnRegistration",
        input_schema = types.StartWebAuthnRegistrationInput,
        output_schema = types.StartWebAuthnRegistrationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopUserImportJob(input, options)
    return self:invokeOperation(input, {
        name = "StopUserImportJob",
        input_schema = types.StopUserImportJobInput,
        output_schema = types.StopUserImportJobOutput,
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

function Client:updateAuthEventFeedback(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAuthEventFeedback",
        input_schema = types.UpdateAuthEventFeedbackInput,
        output_schema = types.UpdateAuthEventFeedbackOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDeviceStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDeviceStatus",
        input_schema = types.UpdateDeviceStatusInput,
        output_schema = types.UpdateDeviceStatusOutput,
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

function Client:updateIdentityProvider(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIdentityProvider",
        input_schema = types.UpdateIdentityProviderInput,
        output_schema = types.UpdateIdentityProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateManagedLoginBranding(input, options)
    return self:invokeOperation(input, {
        name = "UpdateManagedLoginBranding",
        input_schema = types.UpdateManagedLoginBrandingInput,
        output_schema = types.UpdateManagedLoginBrandingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateResourceServer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourceServer",
        input_schema = types.UpdateResourceServerInput,
        output_schema = types.UpdateResourceServerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateTerms(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTerms",
        input_schema = types.UpdateTermsInput,
        output_schema = types.UpdateTermsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateUserAttributes(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserAttributes",
        input_schema = types.UpdateUserAttributesInput,
        output_schema = types.UpdateUserAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateUserPool(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserPool",
        input_schema = types.UpdateUserPoolInput,
        output_schema = types.UpdateUserPoolOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateUserPoolClient(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserPoolClient",
        input_schema = types.UpdateUserPoolClientInput,
        output_schema = types.UpdateUserPoolClientOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateUserPoolDomain(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserPoolDomain",
        input_schema = types.UpdateUserPoolDomainInput,
        output_schema = types.UpdateUserPoolDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:verifySoftwareToken(input, options)
    return self:invokeOperation(input, {
        name = "VerifySoftwareToken",
        input_schema = types.VerifySoftwareTokenInput,
        output_schema = types.VerifySoftwareTokenOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:verifyUserAttribute(input, options)
    return self:invokeOperation(input, {
        name = "VerifyUserAttribute",
        input_schema = types.VerifyUserAttributeInput,
        output_schema = types.VerifyUserAttributeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
