



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("machinelearning.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("machinelearning.schemas")
local traits = require("smithy.traits")
local types = require("machinelearning.types")
local sdk_defaults = require("aws.sdk_defaults")


































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonML_20141212"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "machinelearning", signing_region = c.region } }
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

function C:addTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTags, input, options)
end

function C:createBatchPrediction(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBatchPrediction, input, options)
end

function C:createDataSourceFromRDS(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataSourceFromRDS, input, options)
end

function C:createDataSourceFromRedshift(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataSourceFromRedshift, input, options)
end

function C:createDataSourceFromS3(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataSourceFromS3, input, options)
end

function C:createEvaluation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEvaluation, input, options)
end

function C:createMLModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMLModel, input, options)
end

function C:createRealtimeEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRealtimeEndpoint, input, options)
end

function C:deleteBatchPrediction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBatchPrediction, input, options)
end

function C:deleteDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataSource, input, options)
end

function C:deleteEvaluation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEvaluation, input, options)
end

function C:deleteMLModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMLModel, input, options)
end

function C:deleteRealtimeEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRealtimeEndpoint, input, options)
end

function C:deleteTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTags, input, options)
end

function C:describeBatchPredictions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBatchPredictions, input, options)
end

function C:describeDataSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataSources, input, options)
end

function C:describeEvaluations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEvaluations, input, options)
end

function C:describeMLModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMLModels, input, options)
end

function C:describeTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTags, input, options)
end

function C:getBatchPrediction(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBatchPrediction, input, options)
end

function C:getDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataSource, input, options)
end

function C:getEvaluation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEvaluation, input, options)
end

function C:getMLModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMLModel, input, options)
end

function C:predict(input, options)
   return self:invokeOperation(schemas.Service, schemas.Predict, input, options)
end

function C:updateBatchPrediction(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBatchPrediction, input, options)
end

function C:updateDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataSource, input, options)
end

function C:updateEvaluation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEvaluation, input, options)
end

function C:updateMLModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMLModel, input, options)
end

return M
