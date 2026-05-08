



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("neptunedata.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("neptunedata.schemas")
local traits = require("smithy.traits")
local types = require("neptunedata.types")
local sdk_defaults = require("aws.sdk_defaults")

















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonNeptuneDataplane"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "neptune-db", signing_region = c.region } }
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

function C:cancelGremlinQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelGremlinQuery, input, options)
end

function C:cancelLoaderJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelLoaderJob, input, options)
end

function C:cancelMLDataProcessingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelMLDataProcessingJob, input, options)
end

function C:cancelMLModelTrainingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelMLModelTrainingJob, input, options)
end

function C:cancelMLModelTransformJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelMLModelTransformJob, input, options)
end

function C:cancelOpenCypherQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelOpenCypherQuery, input, options)
end

function C:createMLEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMLEndpoint, input, options)
end

function C:deleteMLEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMLEndpoint, input, options)
end

function C:deletePropertygraphStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePropertygraphStatistics, input, options)
end

function C:deleteSparqlStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSparqlStatistics, input, options)
end

function C:executeFastReset(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteFastReset, input, options)
end

function C:executeGremlinExplainQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteGremlinExplainQuery, input, options)
end

function C:executeGremlinProfileQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteGremlinProfileQuery, input, options)
end

function C:executeGremlinQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteGremlinQuery, input, options)
end

function C:executeOpenCypherExplainQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteOpenCypherExplainQuery, input, options)
end

function C:executeOpenCypherQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteOpenCypherQuery, input, options)
end

function C:getEngineStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEngineStatus, input, options)
end

function C:getGremlinQueryStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGremlinQueryStatus, input, options)
end

function C:getLoaderJobStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLoaderJobStatus, input, options)
end

function C:getMLDataProcessingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMLDataProcessingJob, input, options)
end

function C:getMLEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMLEndpoint, input, options)
end

function C:getMLModelTrainingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMLModelTrainingJob, input, options)
end

function C:getMLModelTransformJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMLModelTransformJob, input, options)
end

function C:getOpenCypherQueryStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOpenCypherQueryStatus, input, options)
end

function C:getPropertygraphStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPropertygraphStatistics, input, options)
end

function C:getPropertygraphStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPropertygraphStream, input, options)
end

function C:getPropertygraphSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPropertygraphSummary, input, options)
end

function C:getRDFGraphSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRDFGraphSummary, input, options)
end

function C:getSparqlStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSparqlStatistics, input, options)
end

function C:getSparqlStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSparqlStream, input, options)
end

function C:listGremlinQueries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGremlinQueries, input, options)
end

function C:listLoaderJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLoaderJobs, input, options)
end

function C:listMLDataProcessingJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMLDataProcessingJobs, input, options)
end

function C:listMLEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMLEndpoints, input, options)
end

function C:listMLModelTrainingJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMLModelTrainingJobs, input, options)
end

function C:listMLModelTransformJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMLModelTransformJobs, input, options)
end

function C:listOpenCypherQueries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOpenCypherQueries, input, options)
end

function C:managePropertygraphStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.ManagePropertygraphStatistics, input, options)
end

function C:manageSparqlStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.ManageSparqlStatistics, input, options)
end

function C:startLoaderJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartLoaderJob, input, options)
end

function C:startMLDataProcessingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMLDataProcessingJob, input, options)
end

function C:startMLModelTrainingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMLModelTrainingJob, input, options)
end

function C:startMLModelTransformJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMLModelTransformJob, input, options)
end

return M
