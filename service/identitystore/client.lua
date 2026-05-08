



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("identitystore.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("identitystore.schemas")
local traits = require("smithy.traits")
local types = require("identitystore.types")
local sdk_defaults = require("aws.sdk_defaults")

























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSIdentityStore"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "identitystore", signing_region = c.region } }
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

function C:createGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGroup, input, options)
end

function C:createGroupMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGroupMembership, input, options)
end

function C:createUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUser, input, options)
end

function C:deleteGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGroup, input, options)
end

function C:deleteGroupMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGroupMembership, input, options)
end

function C:deleteUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUser, input, options)
end

function C:describeGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGroup, input, options)
end

function C:describeGroupMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeGroupMembership, input, options)
end

function C:describeUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUser, input, options)
end

function C:getGroupId(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGroupId, input, options)
end

function C:getGroupMembershipId(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGroupMembershipId, input, options)
end

function C:getUserId(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUserId, input, options)
end

function C:isMemberInGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.IsMemberInGroups, input, options)
end

function C:listGroupMemberships(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroupMemberships, input, options)
end

function C:listGroupMembershipsForMember(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroupMembershipsForMember, input, options)
end

function C:listGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGroups, input, options)
end

function C:listUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUsers, input, options)
end

function C:updateGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGroup, input, options)
end

function C:updateUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUser, input, options)
end

return M
