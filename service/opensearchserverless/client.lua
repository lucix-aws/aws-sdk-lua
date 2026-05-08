



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("opensearchserverless.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("opensearchserverless.schemas")
local traits = require("smithy.traits")
local types = require("opensearchserverless.types")
local sdk_defaults = require("aws.sdk_defaults")




















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "OpenSearchServerless"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "aoss", signing_region = c.region } }
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

function C:batchGetCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetCollection, input, options)
end

function C:batchGetCollectionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetCollectionGroup, input, options)
end

function C:batchGetEffectiveLifecyclePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetEffectiveLifecyclePolicy, input, options)
end

function C:batchGetLifecyclePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetLifecyclePolicy, input, options)
end

function C:batchGetVpcEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetVpcEndpoint, input, options)
end

function C:createAccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccessPolicy, input, options)
end

function C:createCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCollection, input, options)
end

function C:createCollectionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCollectionGroup, input, options)
end

function C:createIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIndex, input, options)
end

function C:createLifecyclePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLifecyclePolicy, input, options)
end

function C:createSecurityConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSecurityConfig, input, options)
end

function C:createSecurityPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSecurityPolicy, input, options)
end

function C:createVpcEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcEndpoint, input, options)
end

function C:deleteAccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessPolicy, input, options)
end

function C:deleteCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCollection, input, options)
end

function C:deleteCollectionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCollectionGroup, input, options)
end

function C:deleteIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIndex, input, options)
end

function C:deleteLifecyclePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLifecyclePolicy, input, options)
end

function C:deleteSecurityConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSecurityConfig, input, options)
end

function C:deleteSecurityPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSecurityPolicy, input, options)
end

function C:deleteVpcEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpcEndpoint, input, options)
end

function C:getAccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccessPolicy, input, options)
end

function C:getAccountSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountSettings, input, options)
end

function C:getIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIndex, input, options)
end

function C:getPoliciesStats(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPoliciesStats, input, options)
end

function C:getSecurityConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSecurityConfig, input, options)
end

function C:getSecurityPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSecurityPolicy, input, options)
end

function C:listAccessPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessPolicies, input, options)
end

function C:listCollectionGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCollectionGroups, input, options)
end

function C:listCollections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCollections, input, options)
end

function C:listLifecyclePolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLifecyclePolicies, input, options)
end

function C:listSecurityConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSecurityConfigs, input, options)
end

function C:listSecurityPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSecurityPolicies, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listVpcEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVpcEndpoints, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccessPolicy, input, options)
end

function C:updateAccountSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccountSettings, input, options)
end

function C:updateCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCollection, input, options)
end

function C:updateCollectionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCollectionGroup, input, options)
end

function C:updateIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIndex, input, options)
end

function C:updateLifecyclePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLifecyclePolicy, input, options)
end

function C:updateSecurityConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSecurityConfig, input, options)
end

function C:updateSecurityPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSecurityPolicy, input, options)
end

function C:updateVpcEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVpcEndpoint, input, options)
end

return M
