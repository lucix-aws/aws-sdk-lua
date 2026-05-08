



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("oam.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("oam.schemas")
local traits = require("smithy.traits")
local types = require("oam.types")
local sdk_defaults = require("aws.sdk_defaults")





















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "oamservice"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "oam", signing_region = c.region } }
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

function C:createLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLink, input, options)
end

function C:createSink(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSink, input, options)
end

function C:deleteLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLink, input, options)
end

function C:deleteSink(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSink, input, options)
end

function C:getLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLink, input, options)
end

function C:getSink(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSink, input, options)
end

function C:getSinkPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSinkPolicy, input, options)
end

function C:listAttachedLinks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAttachedLinks, input, options)
end

function C:listLinks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLinks, input, options)
end

function C:listSinks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSinks, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putSinkPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSinkPolicy, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLink, input, options)
end

return M
