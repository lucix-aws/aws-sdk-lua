



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("ssoadmin.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("ssoadmin.schemas")
local traits = require("smithy.traits")
local types = require("ssoadmin.types")
local sdk_defaults = require("aws.sdk_defaults")





















































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "SWBExternalService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "sso", signing_region = c.region } }
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

function C:addRegion(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddRegion, input, options)
end

function C:attachCustomerManagedPolicyReferenceToPermissionSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachCustomerManagedPolicyReferenceToPermissionSet, input, options)
end

function C:attachManagedPolicyToPermissionSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachManagedPolicyToPermissionSet, input, options)
end

function C:createAccountAssignment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccountAssignment, input, options)
end

function C:createApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApplication, input, options)
end

function C:createApplicationAssignment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApplicationAssignment, input, options)
end

function C:createInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInstance, input, options)
end

function C:createInstanceAccessControlAttributeConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInstanceAccessControlAttributeConfiguration, input, options)
end

function C:createPermissionSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePermissionSet, input, options)
end

function C:createTrustedTokenIssuer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrustedTokenIssuer, input, options)
end

function C:deleteAccountAssignment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccountAssignment, input, options)
end

function C:deleteApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplication, input, options)
end

function C:deleteApplicationAccessScope(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplicationAccessScope, input, options)
end

function C:deleteApplicationAssignment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplicationAssignment, input, options)
end

function C:deleteApplicationAuthenticationMethod(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplicationAuthenticationMethod, input, options)
end

function C:deleteApplicationGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplicationGrant, input, options)
end

function C:deleteInlinePolicyFromPermissionSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInlinePolicyFromPermissionSet, input, options)
end

function C:deleteInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInstance, input, options)
end

function C:deleteInstanceAccessControlAttributeConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInstanceAccessControlAttributeConfiguration, input, options)
end

function C:deletePermissionsBoundaryFromPermissionSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePermissionsBoundaryFromPermissionSet, input, options)
end

function C:deletePermissionSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePermissionSet, input, options)
end

function C:deleteTrustedTokenIssuer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrustedTokenIssuer, input, options)
end

function C:describeAccountAssignmentCreationStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountAssignmentCreationStatus, input, options)
end

function C:describeAccountAssignmentDeletionStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountAssignmentDeletionStatus, input, options)
end

function C:describeApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApplication, input, options)
end

function C:describeApplicationAssignment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApplicationAssignment, input, options)
end

function C:describeApplicationProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApplicationProvider, input, options)
end

function C:describeInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstance, input, options)
end

function C:describeInstanceAccessControlAttributeConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInstanceAccessControlAttributeConfiguration, input, options)
end

function C:describePermissionSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePermissionSet, input, options)
end

function C:describePermissionSetProvisioningStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePermissionSetProvisioningStatus, input, options)
end

function C:describeRegion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRegion, input, options)
end

function C:describeTrustedTokenIssuer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrustedTokenIssuer, input, options)
end

function C:detachCustomerManagedPolicyReferenceFromPermissionSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachCustomerManagedPolicyReferenceFromPermissionSet, input, options)
end

function C:detachManagedPolicyFromPermissionSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachManagedPolicyFromPermissionSet, input, options)
end

function C:getApplicationAccessScope(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplicationAccessScope, input, options)
end

function C:getApplicationAssignmentConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplicationAssignmentConfiguration, input, options)
end

function C:getApplicationAuthenticationMethod(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplicationAuthenticationMethod, input, options)
end

function C:getApplicationGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplicationGrant, input, options)
end

function C:getApplicationSessionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplicationSessionConfiguration, input, options)
end

function C:getInlinePolicyForPermissionSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInlinePolicyForPermissionSet, input, options)
end

function C:getPermissionsBoundaryForPermissionSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPermissionsBoundaryForPermissionSet, input, options)
end

function C:listAccountAssignmentCreationStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccountAssignmentCreationStatus, input, options)
end

function C:listAccountAssignmentDeletionStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccountAssignmentDeletionStatus, input, options)
end

function C:listAccountAssignments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccountAssignments, input, options)
end

function C:listAccountAssignmentsForPrincipal(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccountAssignmentsForPrincipal, input, options)
end

function C:listAccountsForProvisionedPermissionSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccountsForProvisionedPermissionSet, input, options)
end

function C:listApplicationAccessScopes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplicationAccessScopes, input, options)
end

function C:listApplicationAssignments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplicationAssignments, input, options)
end

function C:listApplicationAssignmentsForPrincipal(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplicationAssignmentsForPrincipal, input, options)
end

function C:listApplicationAuthenticationMethods(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplicationAuthenticationMethods, input, options)
end

function C:listApplicationGrants(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplicationGrants, input, options)
end

function C:listApplicationProviders(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplicationProviders, input, options)
end

function C:listApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplications, input, options)
end

function C:listCustomerManagedPolicyReferencesInPermissionSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomerManagedPolicyReferencesInPermissionSet, input, options)
end

function C:listInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInstances, input, options)
end

function C:listManagedPoliciesInPermissionSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedPoliciesInPermissionSet, input, options)
end

function C:listPermissionSetProvisioningStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPermissionSetProvisioningStatus, input, options)
end

function C:listPermissionSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPermissionSets, input, options)
end

function C:listPermissionSetsProvisionedToAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPermissionSetsProvisionedToAccount, input, options)
end

function C:listRegions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRegions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTrustedTokenIssuers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrustedTokenIssuers, input, options)
end

function C:provisionPermissionSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.ProvisionPermissionSet, input, options)
end

function C:putApplicationAccessScope(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutApplicationAccessScope, input, options)
end

function C:putApplicationAssignmentConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutApplicationAssignmentConfiguration, input, options)
end

function C:putApplicationAuthenticationMethod(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutApplicationAuthenticationMethod, input, options)
end

function C:putApplicationGrant(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutApplicationGrant, input, options)
end

function C:putApplicationSessionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutApplicationSessionConfiguration, input, options)
end

function C:putInlinePolicyToPermissionSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutInlinePolicyToPermissionSet, input, options)
end

function C:putPermissionsBoundaryToPermissionSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutPermissionsBoundaryToPermissionSet, input, options)
end

function C:removeRegion(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveRegion, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplication, input, options)
end

function C:updateInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInstance, input, options)
end

function C:updateInstanceAccessControlAttributeConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInstanceAccessControlAttributeConfiguration, input, options)
end

function C:updatePermissionSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePermissionSet, input, options)
end

function C:updateTrustedTokenIssuer(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTrustedTokenIssuer, input, options)
end

return M
