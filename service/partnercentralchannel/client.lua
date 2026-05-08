



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("partnercentralchannel.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("partnercentralchannel.schemas")
local traits = require("smithy.traits")
local types = require("partnercentralchannel.types")
local sdk_defaults = require("aws.sdk_defaults")























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "PartnerCentralChannel"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.0", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "partnercentral-channel", signing_region = c.region } }
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

function C:acceptChannelHandshake(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptChannelHandshake, input, options)
end

function C:cancelChannelHandshake(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelChannelHandshake, input, options)
end

function C:createChannelHandshake(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChannelHandshake, input, options)
end

function C:createProgramManagementAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProgramManagementAccount, input, options)
end

function C:createRelationship(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRelationship, input, options)
end

function C:deleteProgramManagementAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProgramManagementAccount, input, options)
end

function C:deleteRelationship(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRelationship, input, options)
end

function C:getRelationship(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRelationship, input, options)
end

function C:listChannelHandshakes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannelHandshakes, input, options)
end

function C:listProgramManagementAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProgramManagementAccounts, input, options)
end

function C:listRelationships(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRelationships, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:rejectChannelHandshake(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectChannelHandshake, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateProgramManagementAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProgramManagementAccount, input, options)
end

function C:updateRelationship(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRelationship, input, options)
end

return M
