



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("iam.endpoint_rules")
local query_protocol = require("smithy.protocol.awsquery")
local schemas = require("iam.schemas")
local traits = require("smithy.traits")
local types = require("iam.types")
local sdk_defaults = require("aws.sdk_defaults")






















































































































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSIdentityManagementV20100508"
   if not c.protocol then c.protocol = query_protocol.new("awsQuery") end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iam", signing_region = c.region } }
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

function C:acceptDelegationRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptDelegationRequest, input, options)
end

function C:addClientIDToOpenIDConnectProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddClientIDToOpenIDConnectProvider, input, options)
end

function C:addRoleToInstanceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddRoleToInstanceProfile, input, options)
end

function C:addUserToGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddUserToGroup, input, options)
end

function C:associateDelegationRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateDelegationRequest, input, options)
end

function C:attachGroupPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachGroupPolicy, input, options)
end

function C:attachRolePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachRolePolicy, input, options)
end

function C:attachUserPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachUserPolicy, input, options)
end

function C:changePassword(input, options)
   return self:invokeOperation(schemas.Service, schemas.ChangePassword, input, options)
end

function C:createAccessKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccessKey, input, options)
end

function C:createAccountAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccountAlias, input, options)
end

function C:createDelegationRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDelegationRequest, input, options)
end

function C:createGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGroup, input, options)
end

function C:createInstanceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInstanceProfile, input, options)
end

function C:createLoginProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLoginProfile, input, options)
end

function C:createOpenIDConnectProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOpenIDConnectProvider, input, options)
end

function C:createPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePolicy, input, options)
end

function C:createPolicyVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePolicyVersion, input, options)
end

function C:createRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRole, input, options)
end

function C:createSAMLProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSAMLProvider, input, options)
end

function C:createServiceLinkedRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateServiceLinkedRole, input, options)
end

function C:createServiceSpecificCredential(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateServiceSpecificCredential, input, options)
end

function C:createUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUser, input, options)
end

function C:createVirtualMFADevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVirtualMFADevice, input, options)
end

function C:deactivateMFADevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeactivateMFADevice, input, options)
end

function C:deleteAccessKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessKey, input, options)
end

function C:deleteAccountAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccountAlias, input, options)
end

function C:deleteAccountPasswordPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccountPasswordPolicy, input, options)
end

function C:deleteGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGroup, input, options)
end

function C:deleteGroupPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGroupPolicy, input, options)
end

function C:deleteInstanceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInstanceProfile, input, options)
end

function C:deleteLoginProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLoginProfile, input, options)
end

function C:deleteOpenIDConnectProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOpenIDConnectProvider, input, options)
end

function C:deletePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePolicy, input, options)
end

function C:deletePolicyVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePolicyVersion, input, options)
end

function C:deleteRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRole, input, options)
end

function C:deleteRolePermissionsBoundary(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRolePermissionsBoundary, input, options)
end

function C:deleteRolePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRolePolicy, input, options)
end

function C:deleteSAMLProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSAMLProvider, input, options)
end

function C:deleteServerCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServerCertificate, input, options)
end

function C:deleteServiceLinkedRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServiceLinkedRole, input, options)
end

function C:deleteServiceSpecificCredential(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServiceSpecificCredential, input, options)
end

function C:deleteSigningCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSigningCertificate, input, options)
end

function C:deleteSSHPublicKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSSHPublicKey, input, options)
end

function C:deleteUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUser, input, options)
end

function C:deleteUserPermissionsBoundary(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUserPermissionsBoundary, input, options)
end

function C:deleteUserPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUserPolicy, input, options)
end

function C:deleteVirtualMFADevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVirtualMFADevice, input, options)
end

function C:detachGroupPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachGroupPolicy, input, options)
end

function C:detachRolePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachRolePolicy, input, options)
end

function C:detachUserPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachUserPolicy, input, options)
end

function C:disableOrganizationsRootCredentialsManagement(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableOrganizationsRootCredentialsManagement, input, options)
end

function C:disableOrganizationsRootSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableOrganizationsRootSessions, input, options)
end

function C:disableOutboundWebIdentityFederation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableOutboundWebIdentityFederation, input, options)
end

function C:enableMFADevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableMFADevice, input, options)
end

function C:enableOrganizationsRootCredentialsManagement(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableOrganizationsRootCredentialsManagement, input, options)
end

function C:enableOrganizationsRootSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableOrganizationsRootSessions, input, options)
end

function C:enableOutboundWebIdentityFederation(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableOutboundWebIdentityFederation, input, options)
end

function C:generateCredentialReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateCredentialReport, input, options)
end

function C:generateOrganizationsAccessReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateOrganizationsAccessReport, input, options)
end

function C:generateServiceLastAccessedDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateServiceLastAccessedDetails, input, options)
end

function C:getAccessKeyLastUsed(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessKeyLastUsed, input, options)
end

function C:getAccountAuthorizationDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountAuthorizationDetails, input, options)
end

function C:getAccountPasswordPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountPasswordPolicy, input, options)
end

function C:getAccountSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountSummary, input, options)
end

function C:getContextKeysForCustomPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContextKeysForCustomPolicy, input, options)
end

function C:getContextKeysForPrincipalPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContextKeysForPrincipalPolicy, input, options)
end

function C:getCredentialReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCredentialReport, input, options)
end

function C:getDelegationRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDelegationRequest, input, options)
end

function C:getGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGroup, input, options)
end

function C:getGroupPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGroupPolicy, input, options)
end

function C:getHumanReadableSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHumanReadableSummary, input, options)
end

function C:getInstanceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstanceProfile, input, options)
end

function C:getLoginProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLoginProfile, input, options)
end

function C:getMFADevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMFADevice, input, options)
end

function C:getOpenIDConnectProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOpenIDConnectProvider, input, options)
end

function C:getOrganizationsAccessReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOrganizationsAccessReport, input, options)
end

function C:getOutboundWebIdentityFederationInfo(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOutboundWebIdentityFederationInfo, input, options)
end

function C:getPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicy, input, options)
end

function C:getPolicyVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicyVersion, input, options)
end

function C:getRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRole, input, options)
end

function C:getRolePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRolePolicy, input, options)
end

function C:getSAMLProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSAMLProvider, input, options)
end

function C:getServerCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServerCertificate, input, options)
end

function C:getServiceLastAccessedDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceLastAccessedDetails, input, options)
end

function C:getServiceLastAccessedDetailsWithEntities(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceLastAccessedDetailsWithEntities, input, options)
end

function C:getServiceLinkedRoleDeletionStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceLinkedRoleDeletionStatus, input, options)
end

function C:getSSHPublicKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSSHPublicKey, input, options)
end

function C:getUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUser, input, options)
end

function C:getUserPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUserPolicy, input, options)
end

function C:listAccessKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessKeys, input, options)
end

function C:listAccountAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccountAliases, input, options)
end

function C:listAttachedGroupPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAttachedGroupPolicies, input, options)
end

function C:listAttachedRolePolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAttachedRolePolicies, input, options)
end

function C:listAttachedUserPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAttachedUserPolicies, input, options)
end

function C:listDelegationRequests(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDelegationRequests, input, options)
end

function C:listEntitiesForPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEntitiesForPolicy, input, options)
end

function C:listGroupPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroupPolicies, input, options)
end

function C:listGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroups, input, options)
end

function C:listGroupsForUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroupsForUser, input, options)
end

function C:listInstanceProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInstanceProfiles, input, options)
end

function C:listInstanceProfilesForRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInstanceProfilesForRole, input, options)
end

function C:listInstanceProfileTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInstanceProfileTags, input, options)
end

function C:listMFADevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMFADevices, input, options)
end

function C:listMFADeviceTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMFADeviceTags, input, options)
end

function C:listOpenIDConnectProviders(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOpenIDConnectProviders, input, options)
end

function C:listOpenIDConnectProviderTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOpenIDConnectProviderTags, input, options)
end

function C:listOrganizationsFeatures(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOrganizationsFeatures, input, options)
end

function C:listPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicies, input, options)
end

function C:listPoliciesGrantingServiceAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPoliciesGrantingServiceAccess, input, options)
end

function C:listPolicyTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicyTags, input, options)
end

function C:listPolicyVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicyVersions, input, options)
end

function C:listRolePolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRolePolicies, input, options)
end

function C:listRoles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRoles, input, options)
end

function C:listRoleTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRoleTags, input, options)
end

function C:listSAMLProviders(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSAMLProviders, input, options)
end

function C:listSAMLProviderTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSAMLProviderTags, input, options)
end

function C:listServerCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServerCertificates, input, options)
end

function C:listServerCertificateTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServerCertificateTags, input, options)
end

function C:listServiceSpecificCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceSpecificCredentials, input, options)
end

function C:listSigningCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSigningCertificates, input, options)
end

function C:listSSHPublicKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSSHPublicKeys, input, options)
end

function C:listUserPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUserPolicies, input, options)
end

function C:listUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUsers, input, options)
end

function C:listUserTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUserTags, input, options)
end

function C:listVirtualMFADevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVirtualMFADevices, input, options)
end

function C:putGroupPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutGroupPolicy, input, options)
end

function C:putRolePermissionsBoundary(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRolePermissionsBoundary, input, options)
end

function C:putRolePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRolePolicy, input, options)
end

function C:putUserPermissionsBoundary(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutUserPermissionsBoundary, input, options)
end

function C:putUserPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutUserPolicy, input, options)
end

function C:rejectDelegationRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectDelegationRequest, input, options)
end

function C:removeClientIDFromOpenIDConnectProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveClientIDFromOpenIDConnectProvider, input, options)
end

function C:removeRoleFromInstanceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveRoleFromInstanceProfile, input, options)
end

function C:removeUserFromGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveUserFromGroup, input, options)
end

function C:resetServiceSpecificCredential(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetServiceSpecificCredential, input, options)
end

function C:resyncMFADevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResyncMFADevice, input, options)
end

function C:sendDelegationToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendDelegationToken, input, options)
end

function C:setDefaultPolicyVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetDefaultPolicyVersion, input, options)
end

function C:setSecurityTokenServicePreferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetSecurityTokenServicePreferences, input, options)
end

function C:simulateCustomPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.SimulateCustomPolicy, input, options)
end

function C:simulatePrincipalPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.SimulatePrincipalPolicy, input, options)
end

function C:tagInstanceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagInstanceProfile, input, options)
end

function C:tagMFADevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagMFADevice, input, options)
end

function C:tagOpenIDConnectProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagOpenIDConnectProvider, input, options)
end

function C:tagPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagPolicy, input, options)
end

function C:tagRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagRole, input, options)
end

function C:tagSAMLProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagSAMLProvider, input, options)
end

function C:tagServerCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagServerCertificate, input, options)
end

function C:tagUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagUser, input, options)
end

function C:untagInstanceProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagInstanceProfile, input, options)
end

function C:untagMFADevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagMFADevice, input, options)
end

function C:untagOpenIDConnectProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagOpenIDConnectProvider, input, options)
end

function C:untagPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagPolicy, input, options)
end

function C:untagRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagRole, input, options)
end

function C:untagSAMLProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagSAMLProvider, input, options)
end

function C:untagServerCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagServerCertificate, input, options)
end

function C:untagUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagUser, input, options)
end

function C:updateAccessKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccessKey, input, options)
end

function C:updateAccountPasswordPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccountPasswordPolicy, input, options)
end

function C:updateAssumeRolePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAssumeRolePolicy, input, options)
end

function C:updateDelegationRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDelegationRequest, input, options)
end

function C:updateGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGroup, input, options)
end

function C:updateLoginProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLoginProfile, input, options)
end

function C:updateOpenIDConnectProviderThumbprint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOpenIDConnectProviderThumbprint, input, options)
end

function C:updateRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRole, input, options)
end

function C:updateRoleDescription(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRoleDescription, input, options)
end

function C:updateSAMLProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSAMLProvider, input, options)
end

function C:updateServerCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServerCertificate, input, options)
end

function C:updateServiceSpecificCredential(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServiceSpecificCredential, input, options)
end

function C:updateSigningCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSigningCertificate, input, options)
end

function C:updateSSHPublicKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSSHPublicKey, input, options)
end

function C:updateUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUser, input, options)
end

function C:uploadServerCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UploadServerCertificate, input, options)
end

function C:uploadSigningCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UploadSigningCertificate, input, options)
end

function C:uploadSSHPublicKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.UploadSSHPublicKey, input, options)
end

return M
