



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("launchwizard.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("launchwizard.schemas")
local traits = require("smithy.traits")
local types = require("launchwizard.types")
local sdk_defaults = require("aws.sdk_defaults")





















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "LaunchWizard"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "launchwizard", signing_region = c.region } }
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

function C:createDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDeployment, input, options)
end

function C:deleteDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDeployment, input, options)
end

function C:getDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeployment, input, options)
end

function C:getDeploymentPatternVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeploymentPatternVersion, input, options)
end

function C:getWorkload(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkload, input, options)
end

function C:getWorkloadDeploymentPattern(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkloadDeploymentPattern, input, options)
end

function C:listDeploymentEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeploymentEvents, input, options)
end

function C:listDeploymentPatternVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeploymentPatternVersions, input, options)
end

function C:listDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeployments, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWorkloadDeploymentPatterns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkloadDeploymentPatterns, input, options)
end

function C:listWorkloads(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkloads, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDeployment, input, options)
end

return M
