



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("ram.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("ram.schemas")
local traits = require("smithy.traits")
local types = require("ram.types")
local sdk_defaults = require("aws.sdk_defaults")









































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonResourceSharing"
   if not c.protocol then c.protocol = restjson_protocol.new() end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ram", signing_region = c.region } }
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

function C:acceptResourceShareInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptResourceShareInvitation, input, options)
end

function C:associateResourceShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateResourceShare, input, options)
end

function C:associateResourceSharePermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateResourceSharePermission, input, options)
end

function C:createPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePermission, input, options)
end

function C:createPermissionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePermissionVersion, input, options)
end

function C:createResourceShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResourceShare, input, options)
end

function C:deletePermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePermission, input, options)
end

function C:deletePermissionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePermissionVersion, input, options)
end

function C:deleteResourceShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourceShare, input, options)
end

function C:disassociateResourceShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateResourceShare, input, options)
end

function C:disassociateResourceSharePermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateResourceSharePermission, input, options)
end

function C:enableSharingWithAwsOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableSharingWithAwsOrganization, input, options)
end

function C:getPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPermission, input, options)
end

function C:getResourcePolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicies, input, options)
end

function C:getResourceShareAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceShareAssociations, input, options)
end

function C:getResourceShareInvitations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceShareInvitations, input, options)
end

function C:getResourceShares(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceShares, input, options)
end

function C:listPendingInvitationResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPendingInvitationResources, input, options)
end

function C:listPermissionAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPermissionAssociations, input, options)
end

function C:listPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPermissions, input, options)
end

function C:listPermissionVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPermissionVersions, input, options)
end

function C:listPrincipals(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPrincipals, input, options)
end

function C:listReplacePermissionAssociationsWork(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReplacePermissionAssociationsWork, input, options)
end

function C:listResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResources, input, options)
end

function C:listResourceSharePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceSharePermissions, input, options)
end

function C:listResourceTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceTypes, input, options)
end

function C:listSourceAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSourceAssociations, input, options)
end

function C:promotePermissionCreatedFromPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PromotePermissionCreatedFromPolicy, input, options)
end

function C:promoteResourceShareCreatedFromPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PromoteResourceShareCreatedFromPolicy, input, options)
end

function C:rejectResourceShareInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectResourceShareInvitation, input, options)
end

function C:replacePermissionAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReplacePermissionAssociations, input, options)
end

function C:setDefaultPermissionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetDefaultPermissionVersion, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateResourceShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResourceShare, input, options)
end

return M
