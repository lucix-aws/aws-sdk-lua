



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("workmail.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("workmail.schemas")
local traits = require("smithy.traits")
local types = require("workmail.types")
local sdk_defaults = require("aws.sdk_defaults")


































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "WorkMailService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "workmail", signing_region = c.region } }
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

function C:associateDelegateToResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateDelegateToResource, input, options)
end

function C:associateMemberToGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateMemberToGroup, input, options)
end

function C:assumeImpersonationRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssumeImpersonationRole, input, options)
end

function C:cancelMailboxExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelMailboxExportJob, input, options)
end

function C:createAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAlias, input, options)
end

function C:createAvailabilityConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAvailabilityConfiguration, input, options)
end

function C:createGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGroup, input, options)
end

function C:createIdentityCenterApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIdentityCenterApplication, input, options)
end

function C:createImpersonationRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateImpersonationRole, input, options)
end

function C:createMobileDeviceAccessRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMobileDeviceAccessRule, input, options)
end

function C:createOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOrganization, input, options)
end

function C:createResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResource, input, options)
end

function C:createUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUser, input, options)
end

function C:deleteAccessControlRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessControlRule, input, options)
end

function C:deleteAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAlias, input, options)
end

function C:deleteAvailabilityConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAvailabilityConfiguration, input, options)
end

function C:deleteEmailMonitoringConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEmailMonitoringConfiguration, input, options)
end

function C:deleteGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGroup, input, options)
end

function C:deleteIdentityCenterApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIdentityCenterApplication, input, options)
end

function C:deleteIdentityProviderConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIdentityProviderConfiguration, input, options)
end

function C:deleteImpersonationRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteImpersonationRole, input, options)
end

function C:deleteMailboxPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMailboxPermissions, input, options)
end

function C:deleteMobileDeviceAccessOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMobileDeviceAccessOverride, input, options)
end

function C:deleteMobileDeviceAccessRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMobileDeviceAccessRule, input, options)
end

function C:deleteOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOrganization, input, options)
end

function C:deletePersonalAccessToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePersonalAccessToken, input, options)
end

function C:deleteResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResource, input, options)
end

function C:deleteRetentionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRetentionPolicy, input, options)
end

function C:deleteUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUser, input, options)
end

function C:deregisterFromWorkMail(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterFromWorkMail, input, options)
end

function C:deregisterMailDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterMailDomain, input, options)
end

function C:describeEmailMonitoringConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEmailMonitoringConfiguration, input, options)
end

function C:describeEntity(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEntity, input, options)
end

function C:describeGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGroup, input, options)
end

function C:describeIdentityProviderConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIdentityProviderConfiguration, input, options)
end

function C:describeInboundDmarcSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInboundDmarcSettings, input, options)
end

function C:describeMailboxExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMailboxExportJob, input, options)
end

function C:describeOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrganization, input, options)
end

function C:describeResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeResource, input, options)
end

function C:describeUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUser, input, options)
end

function C:disassociateDelegateFromResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateDelegateFromResource, input, options)
end

function C:disassociateMemberFromGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateMemberFromGroup, input, options)
end

function C:getAccessControlEffect(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessControlEffect, input, options)
end

function C:getDefaultRetentionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDefaultRetentionPolicy, input, options)
end

function C:getImpersonationRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImpersonationRole, input, options)
end

function C:getImpersonationRoleEffect(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImpersonationRoleEffect, input, options)
end

function C:getMailboxDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMailboxDetails, input, options)
end

function C:getMailDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMailDomain, input, options)
end

function C:getMobileDeviceAccessEffect(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMobileDeviceAccessEffect, input, options)
end

function C:getMobileDeviceAccessOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMobileDeviceAccessOverride, input, options)
end

function C:getPersonalAccessTokenMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPersonalAccessTokenMetadata, input, options)
end

function C:listAccessControlRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessControlRules, input, options)
end

function C:listAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAliases, input, options)
end

function C:listAvailabilityConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAvailabilityConfigurations, input, options)
end

function C:listGroupMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroupMembers, input, options)
end

function C:listGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroups, input, options)
end

function C:listGroupsForEntity(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroupsForEntity, input, options)
end

function C:listImpersonationRoles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImpersonationRoles, input, options)
end

function C:listMailboxExportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMailboxExportJobs, input, options)
end

function C:listMailboxPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMailboxPermissions, input, options)
end

function C:listMailDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMailDomains, input, options)
end

function C:listMobileDeviceAccessOverrides(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMobileDeviceAccessOverrides, input, options)
end

function C:listMobileDeviceAccessRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMobileDeviceAccessRules, input, options)
end

function C:listOrganizations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOrganizations, input, options)
end

function C:listPersonalAccessTokens(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPersonalAccessTokens, input, options)
end

function C:listResourceDelegates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceDelegates, input, options)
end

function C:listResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResources, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUsers, input, options)
end

function C:putAccessControlRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAccessControlRule, input, options)
end

function C:putEmailMonitoringConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEmailMonitoringConfiguration, input, options)
end

function C:putIdentityProviderConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutIdentityProviderConfiguration, input, options)
end

function C:putInboundDmarcSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutInboundDmarcSettings, input, options)
end

function C:putMailboxPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutMailboxPermissions, input, options)
end

function C:putMobileDeviceAccessOverride(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutMobileDeviceAccessOverride, input, options)
end

function C:putRetentionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRetentionPolicy, input, options)
end

function C:registerMailDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterMailDomain, input, options)
end

function C:registerToWorkMail(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterToWorkMail, input, options)
end

function C:resetPassword(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetPassword, input, options)
end

function C:startMailboxExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMailboxExportJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:testAvailabilityConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestAvailabilityConfiguration, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAvailabilityConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAvailabilityConfiguration, input, options)
end

function C:updateDefaultMailDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDefaultMailDomain, input, options)
end

function C:updateGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGroup, input, options)
end

function C:updateImpersonationRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateImpersonationRole, input, options)
end

function C:updateMailboxQuota(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMailboxQuota, input, options)
end

function C:updateMobileDeviceAccessRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMobileDeviceAccessRule, input, options)
end

function C:updatePrimaryEmailAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePrimaryEmailAddress, input, options)
end

function C:updateResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResource, input, options)
end

function C:updateUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUser, input, options)
end

return M
