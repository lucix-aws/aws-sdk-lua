



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("sts.endpoint_rules")
local query_protocol = require("smithy.protocol.awsquery")
local schemas = require("sts.schemas")
local traits = require("smithy.traits")
local types = require("sts.types")
local sdk_defaults = require("aws.sdk_defaults")

















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSSecurityTokenServiceV20110615"
   if not c.protocol then c.protocol = query_protocol.new("awsQuery") end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "sts", signing_region = c.region } }
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

function C:assumeRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssumeRole, input, options)
end

function C:assumeRoleWithSAML(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssumeRoleWithSAML, input, options)
end

function C:assumeRoleWithWebIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssumeRoleWithWebIdentity, input, options)
end

function C:assumeRoot(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssumeRoot, input, options)
end

function C:decodeAuthorizationMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DecodeAuthorizationMessage, input, options)
end

function C:getAccessKeyInfo(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessKeyInfo, input, options)
end

function C:getCallerIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCallerIdentity, input, options)
end

function C:getDelegatedAccessToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDelegatedAccessToken, input, options)
end

function C:getFederationToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFederationToken, input, options)
end

function C:getSessionToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSessionToken, input, options)
end

function C:getWebIdentityToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWebIdentityToken, input, options)
end

return M
