



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("personalize.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("personalize.schemas")
local traits = require("smithy.traits")
local types = require("personalize.types")
local sdk_defaults = require("aws.sdk_defaults")













































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonPersonalize"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "personalize", signing_region = c.region } }
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

function C:createBatchInferenceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBatchInferenceJob, input, options)
end

function C:createBatchSegmentJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBatchSegmentJob, input, options)
end

function C:createCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCampaign, input, options)
end

function C:createDataDeletionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataDeletionJob, input, options)
end

function C:createDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataset, input, options)
end

function C:createDatasetExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDatasetExportJob, input, options)
end

function C:createDatasetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDatasetGroup, input, options)
end

function C:createDatasetImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDatasetImportJob, input, options)
end

function C:createEventTracker(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEventTracker, input, options)
end

function C:createFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFilter, input, options)
end

function C:createMetricAttribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMetricAttribution, input, options)
end

function C:createRecommender(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRecommender, input, options)
end

function C:createSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSchema, input, options)
end

function C:createSolution(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSolution, input, options)
end

function C:createSolutionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSolutionVersion, input, options)
end

function C:deleteCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCampaign, input, options)
end

function C:deleteDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataset, input, options)
end

function C:deleteDatasetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDatasetGroup, input, options)
end

function C:deleteEventTracker(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventTracker, input, options)
end

function C:deleteFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFilter, input, options)
end

function C:deleteMetricAttribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMetricAttribution, input, options)
end

function C:deleteRecommender(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRecommender, input, options)
end

function C:deleteSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSchema, input, options)
end

function C:deleteSolution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSolution, input, options)
end

function C:describeAlgorithm(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAlgorithm, input, options)
end

function C:describeBatchInferenceJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBatchInferenceJob, input, options)
end

function C:describeBatchSegmentJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBatchSegmentJob, input, options)
end

function C:describeCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCampaign, input, options)
end

function C:describeDataDeletionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataDeletionJob, input, options)
end

function C:describeDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataset, input, options)
end

function C:describeDatasetExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDatasetExportJob, input, options)
end

function C:describeDatasetGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDatasetGroup, input, options)
end

function C:describeDatasetImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDatasetImportJob, input, options)
end

function C:describeEventTracker(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEventTracker, input, options)
end

function C:describeFeatureTransformation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFeatureTransformation, input, options)
end

function C:describeFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFilter, input, options)
end

function C:describeMetricAttribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMetricAttribution, input, options)
end

function C:describeRecipe(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRecipe, input, options)
end

function C:describeRecommender(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRecommender, input, options)
end

function C:describeSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSchema, input, options)
end

function C:describeSolution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSolution, input, options)
end

function C:describeSolutionVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSolutionVersion, input, options)
end

function C:getSolutionMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSolutionMetrics, input, options)
end

function C:listBatchInferenceJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBatchInferenceJobs, input, options)
end

function C:listBatchSegmentJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBatchSegmentJobs, input, options)
end

function C:listCampaigns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCampaigns, input, options)
end

function C:listDataDeletionJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataDeletionJobs, input, options)
end

function C:listDatasetExportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDatasetExportJobs, input, options)
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

function C:listEventTrackers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventTrackers, input, options)
end

function C:listFilters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFilters, input, options)
end

function C:listMetricAttributionMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMetricAttributionMetrics, input, options)
end

function C:listMetricAttributions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMetricAttributions, input, options)
end

function C:listRecipes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecipes, input, options)
end

function C:listRecommenders(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecommenders, input, options)
end

function C:listSchemas(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSchemas, input, options)
end

function C:listSolutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSolutions, input, options)
end

function C:listSolutionVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSolutionVersions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:startRecommender(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartRecommender, input, options)
end

function C:stopRecommender(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopRecommender, input, options)
end

function C:stopSolutionVersionCreation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopSolutionVersionCreation, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCampaign, input, options)
end

function C:updateDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataset, input, options)
end

function C:updateMetricAttribution(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMetricAttribution, input, options)
end

function C:updateRecommender(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRecommender, input, options)
end

function C:updateSolution(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSolution, input, options)
end

return M
