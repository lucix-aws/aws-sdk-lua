



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("organizations.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("organizations.schemas")
local traits = require("smithy.traits")
local types = require("organizations.types")
local sdk_defaults = require("aws.sdk_defaults")





































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSOrganizationsV20161128"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "organizations", signing_region = c.region } }
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

function C:acceptHandshake(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptHandshake, input, options)
end

function C:attachPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachPolicy, input, options)
end

function C:cancelHandshake(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelHandshake, input, options)
end

function C:closeAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.CloseAccount, input, options)
end

function C:createAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccount, input, options)
end

function C:createGovCloudAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGovCloudAccount, input, options)
end

function C:createOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOrganization, input, options)
end

function C:createOrganizationalUnit(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOrganizationalUnit, input, options)
end

function C:createPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePolicy, input, options)
end

function C:declineHandshake(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeclineHandshake, input, options)
end

function C:deleteOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOrganization, input, options)
end

function C:deleteOrganizationalUnit(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOrganizationalUnit, input, options)
end

function C:deletePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePolicy, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deregisterDelegatedAdministrator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterDelegatedAdministrator, input, options)
end

function C:describeAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccount, input, options)
end

function C:describeCreateAccountStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCreateAccountStatus, input, options)
end

function C:describeEffectivePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEffectivePolicy, input, options)
end

function C:describeHandshake(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHandshake, input, options)
end

function C:describeOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrganization, input, options)
end

function C:describeOrganizationalUnit(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOrganizationalUnit, input, options)
end

function C:describePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePolicy, input, options)
end

function C:describeResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeResourcePolicy, input, options)
end

function C:describeResponsibilityTransfer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeResponsibilityTransfer, input, options)
end

function C:detachPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachPolicy, input, options)
end

function C:disableAWSServiceAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableAWSServiceAccess, input, options)
end

function C:disablePolicyType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisablePolicyType, input, options)
end

function C:enableAllFeatures(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableAllFeatures, input, options)
end

function C:enableAWSServiceAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableAWSServiceAccess, input, options)
end

function C:enablePolicyType(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnablePolicyType, input, options)
end

function C:inviteAccountToOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.InviteAccountToOrganization, input, options)
end

function C:inviteOrganizationToTransferResponsibility(input, options)
   return self:invokeOperation(schemas.Service, schemas.InviteOrganizationToTransferResponsibility, input, options)
end

function C:leaveOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.LeaveOrganization, input, options)
end

function C:listAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccounts, input, options)
end

function C:listAccountsForParent(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccountsForParent, input, options)
end

function C:listAccountsWithInvalidEffectivePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccountsWithInvalidEffectivePolicy, input, options)
end

function C:listAWSServiceAccessForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAWSServiceAccessForOrganization, input, options)
end

function C:listChildren(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChildren, input, options)
end

function C:listCreateAccountStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCreateAccountStatus, input, options)
end

function C:listDelegatedAdministrators(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDelegatedAdministrators, input, options)
end

function C:listDelegatedServicesForAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDelegatedServicesForAccount, input, options)
end

function C:listEffectivePolicyValidationErrors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEffectivePolicyValidationErrors, input, options)
end

function C:listHandshakesForAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHandshakesForAccount, input, options)
end

function C:listHandshakesForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHandshakesForOrganization, input, options)
end

function C:listInboundResponsibilityTransfers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInboundResponsibilityTransfers, input, options)
end

function C:listOrganizationalUnitsForParent(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOrganizationalUnitsForParent, input, options)
end

function C:listOutboundResponsibilityTransfers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOutboundResponsibilityTransfers, input, options)
end

function C:listParents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListParents, input, options)
end

function C:listPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicies, input, options)
end

function C:listPoliciesForTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPoliciesForTarget, input, options)
end

function C:listRoots(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRoots, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTargetsForPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTargetsForPolicy, input, options)
end

function C:moveAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.MoveAccount, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:registerDelegatedAdministrator(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterDelegatedAdministrator, input, options)
end

function C:removeAccountFromOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveAccountFromOrganization, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:terminateResponsibilityTransfer(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateResponsibilityTransfer, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateOrganizationalUnit(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOrganizationalUnit, input, options)
end

function C:updatePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePolicy, input, options)
end

function C:updateResponsibilityTransfer(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResponsibilityTransfer, input, options)
end

return M
