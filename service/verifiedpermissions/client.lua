



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("verifiedpermissions.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("verifiedpermissions.schemas")
local traits = require("smithy.traits")
local types = require("verifiedpermissions.types")
local sdk_defaults = require("aws.sdk_defaults")








































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "VerifiedPermissions"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "verifiedpermissions", signing_region = c.region } }
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

function C:batchGetPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetPolicy, input, options)
end

function C:batchIsAuthorized(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchIsAuthorized, input, options)
end

function C:batchIsAuthorizedWithToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchIsAuthorizedWithToken, input, options)
end

function C:createIdentitySource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIdentitySource, input, options)
end

function C:createPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePolicy, input, options)
end

function C:createPolicyStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePolicyStore, input, options)
end

function C:createPolicyStoreAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePolicyStoreAlias, input, options)
end

function C:createPolicyTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePolicyTemplate, input, options)
end

function C:deleteIdentitySource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIdentitySource, input, options)
end

function C:deletePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePolicy, input, options)
end

function C:deletePolicyStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePolicyStore, input, options)
end

function C:deletePolicyStoreAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePolicyStoreAlias, input, options)
end

function C:deletePolicyTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePolicyTemplate, input, options)
end

function C:getIdentitySource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdentitySource, input, options)
end

function C:getPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicy, input, options)
end

function C:getPolicyStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicyStore, input, options)
end

function C:getPolicyStoreAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicyStoreAlias, input, options)
end

function C:getPolicyTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicyTemplate, input, options)
end

function C:getSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSchema, input, options)
end

function C:isAuthorized(input, options)
   return self:invokeOperation(schemas.Service, schemas.IsAuthorized, input, options)
end

function C:isAuthorizedWithToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.IsAuthorizedWithToken, input, options)
end

function C:listIdentitySources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIdentitySources, input, options)
end

function C:listPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicies, input, options)
end

function C:listPolicyStoreAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicyStoreAliases, input, options)
end

function C:listPolicyStores(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicyStores, input, options)
end

function C:listPolicyTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicyTemplates, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSchema, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateIdentitySource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIdentitySource, input, options)
end

function C:updatePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePolicy, input, options)
end

function C:updatePolicyStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePolicyStore, input, options)
end

function C:updatePolicyTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePolicyTemplate, input, options)
end

return M
