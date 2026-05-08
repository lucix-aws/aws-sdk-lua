



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("repostspace.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("repostspace.schemas")
local traits = require("smithy.traits")
local types = require("repostspace.types")
local sdk_defaults = require("aws.sdk_defaults")

























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "RepostSpace"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "repostspace", signing_region = c.region } }
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

function C:batchAddChannelRoleToAccessors(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchAddChannelRoleToAccessors, input, options)
end

function C:batchAddRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchAddRole, input, options)
end

function C:batchRemoveChannelRoleFromAccessors(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchRemoveChannelRoleFromAccessors, input, options)
end

function C:batchRemoveRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchRemoveRole, input, options)
end

function C:createChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChannel, input, options)
end

function C:createSpace(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSpace, input, options)
end

function C:deleteSpace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSpace, input, options)
end

function C:deregisterAdmin(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterAdmin, input, options)
end

function C:getChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChannel, input, options)
end

function C:getSpace(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSpace, input, options)
end

function C:listChannels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannels, input, options)
end

function C:listSpaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSpaces, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:registerAdmin(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterAdmin, input, options)
end

function C:sendInvites(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendInvites, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateChannel, input, options)
end

function C:updateSpace(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSpace, input, options)
end

return M
