



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("trustedadvisor.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("trustedadvisor.schemas")
local traits = require("smithy.traits")
local types = require("trustedadvisor.types")
local sdk_defaults = require("aws.sdk_defaults")

















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "TrustedAdvisor"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "trustedadvisor", signing_region = c.region } }
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

function C:batchUpdateRecommendationResourceExclusion(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateRecommendationResourceExclusion, input, options)
end

function C:getOrganizationRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOrganizationRecommendation, input, options)
end

function C:getRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecommendation, input, options)
end

function C:listChecks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChecks, input, options)
end

function C:listOrganizationRecommendationAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOrganizationRecommendationAccounts, input, options)
end

function C:listOrganizationRecommendationResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOrganizationRecommendationResources, input, options)
end

function C:listOrganizationRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOrganizationRecommendations, input, options)
end

function C:listRecommendationResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecommendationResources, input, options)
end

function C:listRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecommendations, input, options)
end

function C:updateOrganizationRecommendationLifecycle(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOrganizationRecommendationLifecycle, input, options)
end

function C:updateRecommendationLifecycle(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRecommendationLifecycle, input, options)
end

return M
