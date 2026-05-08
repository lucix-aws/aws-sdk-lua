



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("osis.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("osis.schemas")
local traits = require("smithy.traits")
local types = require("osis.types")
local sdk_defaults = require("aws.sdk_defaults")




























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonOpenSearchIngestionService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "osis", signing_region = c.region } }
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

function C:createPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePipeline, input, options)
end

function C:createPipelineEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePipelineEndpoint, input, options)
end

function C:deletePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePipeline, input, options)
end

function C:deletePipelineEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePipelineEndpoint, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:getPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPipeline, input, options)
end

function C:getPipelineBlueprint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPipelineBlueprint, input, options)
end

function C:getPipelineChangeProgress(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPipelineChangeProgress, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:listPipelineBlueprints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPipelineBlueprints, input, options)
end

function C:listPipelineEndpointConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPipelineEndpointConnections, input, options)
end

function C:listPipelineEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPipelineEndpoints, input, options)
end

function C:listPipelines(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPipelines, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:revokePipelineEndpointConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokePipelineEndpointConnections, input, options)
end

function C:startPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartPipeline, input, options)
end

function C:stopPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopPipeline, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updatePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePipeline, input, options)
end

function C:validatePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.ValidatePipeline, input, options)
end

return M
