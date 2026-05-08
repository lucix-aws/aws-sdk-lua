



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("lexruntimeservice.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("lexruntimeservice.schemas")
local traits = require("smithy.traits")
local types = require("lexruntimeservice.types")
local sdk_defaults = require("aws.sdk_defaults")











local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSDeepSenseRunTimeService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "lex", signing_region = c.region } }
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

function C:deleteSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSession, input, options)
end

function C:getSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSession, input, options)
end

function C:postContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.PostContent, input, options)
end

function C:postText(input, options)
   return self:invokeOperation(schemas.Service, schemas.PostText, input, options)
end

function C:putSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSession, input, options)
end

return M
