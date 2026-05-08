



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cognitoidentity.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("cognitoidentity.schemas")
local traits = require("smithy.traits")
local types = require("cognitoidentity.types")
local sdk_defaults = require("aws.sdk_defaults")





























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSCognitoIdentityService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cognito-identity", signing_region = c.region } }
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

function C:createIdentityPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIdentityPool, input, options)
end

function C:deleteIdentities(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIdentities, input, options)
end

function C:deleteIdentityPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIdentityPool, input, options)
end

function C:describeIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIdentity, input, options)
end

function C:describeIdentityPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIdentityPool, input, options)
end

function C:getCredentialsForIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCredentialsForIdentity, input, options)
end

function C:getId(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetId, input, options)
end

function C:getIdentityPoolRoles(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdentityPoolRoles, input, options)
end

function C:getOpenIdToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOpenIdToken, input, options)
end

function C:getOpenIdTokenForDeveloperIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOpenIdTokenForDeveloperIdentity, input, options)
end

function C:getPrincipalTagAttributeMap(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPrincipalTagAttributeMap, input, options)
end

function C:listIdentities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIdentities, input, options)
end

function C:listIdentityPools(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIdentityPools, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:lookupDeveloperIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.LookupDeveloperIdentity, input, options)
end

function C:mergeDeveloperIdentities(input, options)
   return self:invokeOperation(schemas.Service, schemas.MergeDeveloperIdentities, input, options)
end

function C:setIdentityPoolRoles(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetIdentityPoolRoles, input, options)
end

function C:setPrincipalTagAttributeMap(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetPrincipalTagAttributeMap, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:unlinkDeveloperIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.UnlinkDeveloperIdentity, input, options)
end

function C:unlinkIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.UnlinkIdentity, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateIdentityPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIdentityPool, input, options)
end

return M
