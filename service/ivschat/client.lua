



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("ivschat.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("ivschat.schemas")
local traits = require("smithy.traits")
local types = require("ivschat.types")
local sdk_defaults = require("aws.sdk_defaults")























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonInteractiveVideoServiceChat"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ivschat", signing_region = c.region } }
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

function C:createChatToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChatToken, input, options)
end

function C:createLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLoggingConfiguration, input, options)
end

function C:createRoom(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRoom, input, options)
end

function C:deleteLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLoggingConfiguration, input, options)
end

function C:deleteMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMessage, input, options)
end

function C:deleteRoom(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRoom, input, options)
end

function C:disconnectUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisconnectUser, input, options)
end

function C:getLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLoggingConfiguration, input, options)
end

function C:getRoom(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRoom, input, options)
end

function C:listLoggingConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLoggingConfigurations, input, options)
end

function C:listRooms(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRooms, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:sendEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendEvent, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateLoggingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLoggingConfiguration, input, options)
end

function C:updateRoom(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRoom, input, options)
end

return M
