



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("forecast.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("forecast.schemas")
local traits = require("smithy.traits")
local types = require("forecast.types")
local sdk_defaults = require("aws.sdk_defaults")





































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonForecast"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "forecast", signing_region = c.region } }
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

function C:createAutoPredictor(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAutoPredictor, input, options)
end

function C:createDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataset, input, options)
end

function C:createDatasetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDatasetGroup, input, options)
end

function C:createDatasetImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDatasetImportJob, input, options)
end

function C:createExplainability(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateExplainability, input, options)
end

function C:createExplainabilityExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateExplainabilityExport, input, options)
end

function C:createForecast(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateForecast, input, options)
end

function C:createForecastExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateForecastExportJob, input, options)
end

function C:createMonitor(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMonitor, input, options)
end

function C:createPredictor(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePredictor, input, options)
end

function C:createPredictorBacktestExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePredictorBacktestExportJob, input, options)
end

function C:createWhatIfAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWhatIfAnalysis, input, options)
end

function C:createWhatIfForecast(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWhatIfForecast, input, options)
end

function C:createWhatIfForecastExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWhatIfForecastExport, input, options)
end

function C:deleteDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataset, input, options)
end

function C:deleteDatasetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDatasetGroup, input, options)
end

function C:deleteDatasetImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDatasetImportJob, input, options)
end

function C:deleteExplainability(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteExplainability, input, options)
end

function C:deleteExplainabilityExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteExplainabilityExport, input, options)
end

function C:deleteForecast(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteForecast, input, options)
end

function C:deleteForecastExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteForecastExportJob, input, options)
end

function C:deleteMonitor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMonitor, input, options)
end

function C:deletePredictor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePredictor, input, options)
end

function C:deletePredictorBacktestExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePredictorBacktestExportJob, input, options)
end

function C:deleteResourceTree(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourceTree, input, options)
end

function C:deleteWhatIfAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWhatIfAnalysis, input, options)
end

function C:deleteWhatIfForecast(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWhatIfForecast, input, options)
end

function C:deleteWhatIfForecastExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWhatIfForecastExport, input, options)
end

function C:describeAutoPredictor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAutoPredictor, input, options)
end

function C:describeDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataset, input, options)
end

function C:describeDatasetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDatasetGroup, input, options)
end

function C:describeDatasetImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDatasetImportJob, input, options)
end

function C:describeExplainability(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExplainability, input, options)
end

function C:describeExplainabilityExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExplainabilityExport, input, options)
end

function C:describeForecast(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeForecast, input, options)
end

function C:describeForecastExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeForecastExportJob, input, options)
end

function C:describeMonitor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMonitor, input, options)
end

function C:describePredictor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePredictor, input, options)
end

function C:describePredictorBacktestExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePredictorBacktestExportJob, input, options)
end

function C:describeWhatIfAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWhatIfAnalysis, input, options)
end

function C:describeWhatIfForecast(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWhatIfForecast, input, options)
end

function C:describeWhatIfForecastExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWhatIfForecastExport, input, options)
end

function C:getAccuracyMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccuracyMetrics, input, options)
end

function C:listDatasetGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDatasetGroups, input, options)
end

function C:listDatasetImportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDatasetImportJobs, input, options)
end

function C:listDatasets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDatasets, input, options)
end

function C:listExplainabilities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExplainabilities, input, options)
end

function C:listExplainabilityExports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExplainabilityExports, input, options)
end

function C:listForecastExportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListForecastExportJobs, input, options)
end

function C:listForecasts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListForecasts, input, options)
end

function C:listMonitorEvaluations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMonitorEvaluations, input, options)
end

function C:listMonitors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMonitors, input, options)
end

function C:listPredictorBacktestExportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPredictorBacktestExportJobs, input, options)
end

function C:listPredictors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPredictors, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWhatIfAnalyses(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWhatIfAnalyses, input, options)
end

function C:listWhatIfForecastExports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWhatIfForecastExports, input, options)
end

function C:listWhatIfForecasts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWhatIfForecasts, input, options)
end

function C:resumeResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResumeResource, input, options)
end

function C:stopResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopResource, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDatasetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDatasetGroup, input, options)
end

return M
