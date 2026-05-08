



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("sagemakergeospatial.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("sagemakergeospatial.schemas")
local traits = require("smithy.traits")
local types = require("sagemakergeospatial.types")
local sdk_defaults = require("aws.sdk_defaults")

























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "SageMakerGeospatial"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "sagemaker-geospatial", signing_region = c.region } }
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

function C:deleteEarthObservationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEarthObservationJob, input, options)
end

function C:deleteVectorEnrichmentJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVectorEnrichmentJob, input, options)
end

function C:exportEarthObservationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportEarthObservationJob, input, options)
end

function C:exportVectorEnrichmentJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportVectorEnrichmentJob, input, options)
end

function C:getEarthObservationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEarthObservationJob, input, options)
end

function C:getRasterDataCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRasterDataCollection, input, options)
end

function C:getTile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTile, input, options)
end

function C:getVectorEnrichmentJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVectorEnrichmentJob, input, options)
end

function C:listEarthObservationJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEarthObservationJobs, input, options)
end

function C:listRasterDataCollections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRasterDataCollections, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listVectorEnrichmentJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVectorEnrichmentJobs, input, options)
end

function C:searchRasterDataCollection(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchRasterDataCollection, input, options)
end

function C:startEarthObservationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartEarthObservationJob, input, options)
end

function C:startVectorEnrichmentJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartVectorEnrichmentJob, input, options)
end

function C:stopEarthObservationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopEarthObservationJob, input, options)
end

function C:stopVectorEnrichmentJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopVectorEnrichmentJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

return M
