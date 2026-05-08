



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cognitoidentityprovider.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("cognitoidentityprovider.schemas")
local traits = require("smithy.traits")
local types = require("cognitoidentityprovider.types")
local sdk_defaults = require("aws.sdk_defaults")
































































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSCognitoIdentityProviderService"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cognito-idp", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:addCustomAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddCustomAttributes, input, options)
end

function C:addUserPoolClientSecret(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddUserPoolClientSecret, input, options)
end

function C:adminAddUserToGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminAddUserToGroup, input, options)
end

function C:adminConfirmSignUp(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminConfirmSignUp, input, options)
end

function C:adminCreateUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminCreateUser, input, options)
end

function C:adminDeleteUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminDeleteUser, input, options)
end

function C:adminDeleteUserAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminDeleteUserAttributes, input, options)
end

function C:adminDisableProviderForUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminDisableProviderForUser, input, options)
end

function C:adminDisableUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminDisableUser, input, options)
end

function C:adminEnableUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminEnableUser, input, options)
end

function C:adminForgetDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminForgetDevice, input, options)
end

function C:adminGetDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminGetDevice, input, options)
end

function C:adminGetUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminGetUser, input, options)
end

function C:adminInitiateAuth(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminInitiateAuth, input, options)
end

function C:adminLinkProviderForUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminLinkProviderForUser, input, options)
end

function C:adminListDevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminListDevices, input, options)
end

function C:adminListGroupsForUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminListGroupsForUser, input, options)
end

function C:adminListUserAuthEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminListUserAuthEvents, input, options)
end

function C:adminRemoveUserFromGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminRemoveUserFromGroup, input, options)
end

function C:adminResetUserPassword(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminResetUserPassword, input, options)
end

function C:adminRespondToAuthChallenge(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminRespondToAuthChallenge, input, options)
end

function C:adminSetUserMFAPreference(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminSetUserMFAPreference, input, options)
end

function C:adminSetUserPassword(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminSetUserPassword, input, options)
end

function C:adminSetUserSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminSetUserSettings, input, options)
end

function C:adminUpdateAuthEventFeedback(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminUpdateAuthEventFeedback, input, options)
end

function C:adminUpdateDeviceStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminUpdateDeviceStatus, input, options)
end

function C:adminUpdateUserAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminUpdateUserAttributes, input, options)
end

function C:adminUserGlobalSignOut(input, options)
   return self:invokeOperation(schemas.Service, schemas.AdminUserGlobalSignOut, input, options)
end

function C:associateSoftwareToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateSoftwareToken, input, options)
end

function C:changePassword(input, options)
   return self:invokeOperation(schemas.Service, schemas.ChangePassword, input, options)
end

function C:completeWebAuthnRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CompleteWebAuthnRegistration, input, options)
end

function C:confirmDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConfirmDevice, input, options)
end

function C:confirmForgotPassword(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConfirmForgotPassword, input, options)
end

function C:confirmSignUp(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConfirmSignUp, input, options)
end

function C:createGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGroup, input, options)
end

function C:createIdentityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIdentityProvider, input, options)
end

function C:createManagedLoginBranding(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateManagedLoginBranding, input, options)
end

function C:createResourceServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResourceServer, input, options)
end

function C:createTerms(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTerms, input, options)
end

function C:createUserImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUserImportJob, input, options)
end

function C:createUserPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUserPool, input, options)
end

function C:createUserPoolClient(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUserPoolClient, input, options)
end

function C:createUserPoolDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUserPoolDomain, input, options)
end

function C:deleteGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGroup, input, options)
end

function C:deleteIdentityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIdentityProvider, input, options)
end

function C:deleteManagedLoginBranding(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteManagedLoginBranding, input, options)
end

function C:deleteResourceServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourceServer, input, options)
end

function C:deleteTerms(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTerms, input, options)
end

function C:deleteUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUser, input, options)
end

function C:deleteUserAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUserAttributes, input, options)
end

function C:deleteUserPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUserPool, input, options)
end

function C:deleteUserPoolClient(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUserPoolClient, input, options)
end

function C:deleteUserPoolClientSecret(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUserPoolClientSecret, input, options)
end

function C:deleteUserPoolDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUserPoolDomain, input, options)
end

function C:deleteWebAuthnCredential(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWebAuthnCredential, input, options)
end

function C:describeIdentityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIdentityProvider, input, options)
end

function C:describeManagedLoginBranding(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeManagedLoginBranding, input, options)
end

function C:describeManagedLoginBrandingByClient(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeManagedLoginBrandingByClient, input, options)
end

function C:describeResourceServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeResourceServer, input, options)
end

function C:describeRiskConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRiskConfiguration, input, options)
end

function C:describeTerms(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTerms, input, options)
end

function C:describeUserImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUserImportJob, input, options)
end

function C:describeUserPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUserPool, input, options)
end

function C:describeUserPoolClient(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUserPoolClient, input, options)
end

function C:describeUserPoolDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUserPoolDomain, input, options)
end

function C:forgetDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.ForgetDevice, input, options)
end

function C:forgotPassword(input, options)
   return self:invokeOperation(schemas.Service, schemas.ForgotPassword, input, options)
end

function C:getCSVHeader(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCSVHeader, input, options)
end

function C:getDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDevice, input, options)
end

function C:getGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGroup, input, options)
end

function C:getIdentityProviderByIdentifier(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdentityProviderByIdentifier, input, options)
end

function C:getLogDeliveryConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLogDeliveryConfiguration, input, options)
end

function C:getSigningCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSigningCertificate, input, options)
end

function C:getTokensFromRefreshToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTokensFromRefreshToken, input, options)
end

function C:getUICustomization(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUICustomization, input, options)
end

function C:getUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUser, input, options)
end

function C:getUserAttributeVerificationCode(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUserAttributeVerificationCode, input, options)
end

function C:getUserAuthFactors(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUserAuthFactors, input, options)
end

function C:getUserPoolMfaConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUserPoolMfaConfig, input, options)
end

function C:globalSignOut(input, options)
   return self:invokeOperation(schemas.Service, schemas.GlobalSignOut, input, options)
end

function C:initiateAuth(input, options)
   return self:invokeOperation(schemas.Service, schemas.InitiateAuth, input, options)
end

function C:listDevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDevices, input, options)
end

function C:listGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroups, input, options)
end

function C:listIdentityProviders(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIdentityProviders, input, options)
end

function C:listResourceServers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceServers, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTerms(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTerms, input, options)
end

function C:listUserImportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUserImportJobs, input, options)
end

function C:listUserPoolClients(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUserPoolClients, input, options)
end

function C:listUserPoolClientSecrets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUserPoolClientSecrets, input, options)
end

function C:listUserPools(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUserPools, input, options)
end

function C:listUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUsers, input, options)
end

function C:listUsersInGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUsersInGroup, input, options)
end

function C:listWebAuthnCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWebAuthnCredentials, input, options)
end

function C:resendConfirmationCode(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResendConfirmationCode, input, options)
end

function C:respondToAuthChallenge(input, options)
   return self:invokeOperation(schemas.Service, schemas.RespondToAuthChallenge, input, options)
end

function C:revokeToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeToken, input, options)
end

function C:setLogDeliveryConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetLogDeliveryConfiguration, input, options)
end

function C:setRiskConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetRiskConfiguration, input, options)
end

function C:setUICustomization(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetUICustomization, input, options)
end

function C:setUserMFAPreference(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetUserMFAPreference, input, options)
end

function C:setUserPoolMfaConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetUserPoolMfaConfig, input, options)
end

function C:setUserSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetUserSettings, input, options)
end

function C:signUp(input, options)
   return self:invokeOperation(schemas.Service, schemas.SignUp, input, options)
end

function C:startUserImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartUserImportJob, input, options)
end

function C:startWebAuthnRegistration(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartWebAuthnRegistration, input, options)
end

function C:stopUserImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopUserImportJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAuthEventFeedback(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAuthEventFeedback, input, options)
end

function C:updateDeviceStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDeviceStatus, input, options)
end

function C:updateGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGroup, input, options)
end

function C:updateIdentityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIdentityProvider, input, options)
end

function C:updateManagedLoginBranding(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateManagedLoginBranding, input, options)
end

function C:updateResourceServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResourceServer, input, options)
end

function C:updateTerms(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTerms, input, options)
end

function C:updateUserAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserAttributes, input, options)
end

function C:updateUserPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserPool, input, options)
end

function C:updateUserPoolClient(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserPoolClient, input, options)
end

function C:updateUserPoolDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserPoolDomain, input, options)
end

function C:verifySoftwareToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.VerifySoftwareToken, input, options)
end

function C:verifyUserAttribute(input, options)
   return self:invokeOperation(schemas.Service, schemas.VerifyUserAttribute, input, options)
end

return M
