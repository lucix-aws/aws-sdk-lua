local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("personalize.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("personalize.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonPersonalize"
    cfg.signing_name = "personalize"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:createBatchInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateBatchInferenceJob",
        input_schema = types.CreateBatchInferenceJobInput,
        output_schema = types.CreateBatchInferenceJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createBatchSegmentJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateBatchSegmentJob",
        input_schema = types.CreateBatchSegmentJobInput,
        output_schema = types.CreateBatchSegmentJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createCampaign(input, options)
    return self:invokeOperation(input, {
        name = "CreateCampaign",
        input_schema = types.CreateCampaignInput,
        output_schema = types.CreateCampaignOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDataDeletionJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataDeletionJob",
        input_schema = types.CreateDataDeletionJobInput,
        output_schema = types.CreateDataDeletionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDataset(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataset",
        input_schema = types.CreateDatasetInput,
        output_schema = types.CreateDatasetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDatasetExportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateDatasetExportJob",
        input_schema = types.CreateDatasetExportJobInput,
        output_schema = types.CreateDatasetExportJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDatasetGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDatasetGroup",
        input_schema = types.CreateDatasetGroupInput,
        output_schema = types.CreateDatasetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDatasetImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateDatasetImportJob",
        input_schema = types.CreateDatasetImportJobInput,
        output_schema = types.CreateDatasetImportJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createEventTracker(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventTracker",
        input_schema = types.CreateEventTrackerInput,
        output_schema = types.CreateEventTrackerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createFilter(input, options)
    return self:invokeOperation(input, {
        name = "CreateFilter",
        input_schema = types.CreateFilterInput,
        output_schema = types.CreateFilterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createMetricAttribution(input, options)
    return self:invokeOperation(input, {
        name = "CreateMetricAttribution",
        input_schema = types.CreateMetricAttributionInput,
        output_schema = types.CreateMetricAttributionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createRecommender(input, options)
    return self:invokeOperation(input, {
        name = "CreateRecommender",
        input_schema = types.CreateRecommenderInput,
        output_schema = types.CreateRecommenderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSchema(input, options)
    return self:invokeOperation(input, {
        name = "CreateSchema",
        input_schema = types.CreateSchemaInput,
        output_schema = types.CreateSchemaOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSolution(input, options)
    return self:invokeOperation(input, {
        name = "CreateSolution",
        input_schema = types.CreateSolutionInput,
        output_schema = types.CreateSolutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSolutionVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateSolutionVersion",
        input_schema = types.CreateSolutionVersionInput,
        output_schema = types.CreateSolutionVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCampaign(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCampaign",
        input_schema = types.DeleteCampaignInput,
        output_schema = types.DeleteCampaignOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDataset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataset",
        input_schema = types.DeleteDatasetInput,
        output_schema = types.DeleteDatasetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDatasetGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDatasetGroup",
        input_schema = types.DeleteDatasetGroupInput,
        output_schema = types.DeleteDatasetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEventTracker(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventTracker",
        input_schema = types.DeleteEventTrackerInput,
        output_schema = types.DeleteEventTrackerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteFilter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFilter",
        input_schema = types.DeleteFilterInput,
        output_schema = types.DeleteFilterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteMetricAttribution(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMetricAttribution",
        input_schema = types.DeleteMetricAttributionInput,
        output_schema = types.DeleteMetricAttributionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRecommender(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecommender",
        input_schema = types.DeleteRecommenderInput,
        output_schema = types.DeleteRecommenderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSchema(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSchema",
        input_schema = types.DeleteSchemaInput,
        output_schema = types.DeleteSchemaOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSolution(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSolution",
        input_schema = types.DeleteSolutionInput,
        output_schema = types.DeleteSolutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAlgorithm(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAlgorithm",
        input_schema = types.DescribeAlgorithmInput,
        output_schema = types.DescribeAlgorithmOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeBatchInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBatchInferenceJob",
        input_schema = types.DescribeBatchInferenceJobInput,
        output_schema = types.DescribeBatchInferenceJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeBatchSegmentJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBatchSegmentJob",
        input_schema = types.DescribeBatchSegmentJobInput,
        output_schema = types.DescribeBatchSegmentJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCampaign(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCampaign",
        input_schema = types.DescribeCampaignInput,
        output_schema = types.DescribeCampaignOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDataDeletionJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataDeletionJob",
        input_schema = types.DescribeDataDeletionJobInput,
        output_schema = types.DescribeDataDeletionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDataset(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataset",
        input_schema = types.DescribeDatasetInput,
        output_schema = types.DescribeDatasetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDatasetExportJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDatasetExportJob",
        input_schema = types.DescribeDatasetExportJobInput,
        output_schema = types.DescribeDatasetExportJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDatasetGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDatasetGroup",
        input_schema = types.DescribeDatasetGroupInput,
        output_schema = types.DescribeDatasetGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDatasetImportJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDatasetImportJob",
        input_schema = types.DescribeDatasetImportJobInput,
        output_schema = types.DescribeDatasetImportJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeEventTracker(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventTracker",
        input_schema = types.DescribeEventTrackerInput,
        output_schema = types.DescribeEventTrackerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFeatureTransformation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFeatureTransformation",
        input_schema = types.DescribeFeatureTransformationInput,
        output_schema = types.DescribeFeatureTransformationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFilter(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFilter",
        input_schema = types.DescribeFilterInput,
        output_schema = types.DescribeFilterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeMetricAttribution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMetricAttribution",
        input_schema = types.DescribeMetricAttributionInput,
        output_schema = types.DescribeMetricAttributionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRecipe(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRecipe",
        input_schema = types.DescribeRecipeInput,
        output_schema = types.DescribeRecipeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRecommender(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRecommender",
        input_schema = types.DescribeRecommenderInput,
        output_schema = types.DescribeRecommenderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSchema(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSchema",
        input_schema = types.DescribeSchemaInput,
        output_schema = types.DescribeSchemaOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSolution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSolution",
        input_schema = types.DescribeSolutionInput,
        output_schema = types.DescribeSolutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSolutionVersion(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSolutionVersion",
        input_schema = types.DescribeSolutionVersionInput,
        output_schema = types.DescribeSolutionVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSolutionMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetSolutionMetrics",
        input_schema = types.GetSolutionMetricsInput,
        output_schema = types.GetSolutionMetricsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listBatchInferenceJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListBatchInferenceJobs",
        input_schema = types.ListBatchInferenceJobsInput,
        output_schema = types.ListBatchInferenceJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listBatchSegmentJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListBatchSegmentJobs",
        input_schema = types.ListBatchSegmentJobsInput,
        output_schema = types.ListBatchSegmentJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listCampaigns(input, options)
    return self:invokeOperation(input, {
        name = "ListCampaigns",
        input_schema = types.ListCampaignsInput,
        output_schema = types.ListCampaignsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDataDeletionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListDataDeletionJobs",
        input_schema = types.ListDataDeletionJobsInput,
        output_schema = types.ListDataDeletionJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDatasetExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasetExportJobs",
        input_schema = types.ListDatasetExportJobsInput,
        output_schema = types.ListDatasetExportJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDatasetGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasetGroups",
        input_schema = types.ListDatasetGroupsInput,
        output_schema = types.ListDatasetGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDatasetImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasetImportJobs",
        input_schema = types.ListDatasetImportJobsInput,
        output_schema = types.ListDatasetImportJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDatasets(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasets",
        input_schema = types.ListDatasetsInput,
        output_schema = types.ListDatasetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEventTrackers(input, options)
    return self:invokeOperation(input, {
        name = "ListEventTrackers",
        input_schema = types.ListEventTrackersInput,
        output_schema = types.ListEventTrackersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFilters(input, options)
    return self:invokeOperation(input, {
        name = "ListFilters",
        input_schema = types.ListFiltersInput,
        output_schema = types.ListFiltersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listMetricAttributionMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListMetricAttributionMetrics",
        input_schema = types.ListMetricAttributionMetricsInput,
        output_schema = types.ListMetricAttributionMetricsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listMetricAttributions(input, options)
    return self:invokeOperation(input, {
        name = "ListMetricAttributions",
        input_schema = types.ListMetricAttributionsInput,
        output_schema = types.ListMetricAttributionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRecipes(input, options)
    return self:invokeOperation(input, {
        name = "ListRecipes",
        input_schema = types.ListRecipesInput,
        output_schema = types.ListRecipesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRecommenders(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommenders",
        input_schema = types.ListRecommendersInput,
        output_schema = types.ListRecommendersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSchemas(input, options)
    return self:invokeOperation(input, {
        name = "ListSchemas",
        input_schema = types.ListSchemasInput,
        output_schema = types.ListSchemasOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSolutions(input, options)
    return self:invokeOperation(input, {
        name = "ListSolutions",
        input_schema = types.ListSolutionsInput,
        output_schema = types.ListSolutionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSolutionVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListSolutionVersions",
        input_schema = types.ListSolutionVersionsInput,
        output_schema = types.ListSolutionVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startRecommender(input, options)
    return self:invokeOperation(input, {
        name = "StartRecommender",
        input_schema = types.StartRecommenderInput,
        output_schema = types.StartRecommenderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopRecommender(input, options)
    return self:invokeOperation(input, {
        name = "StopRecommender",
        input_schema = types.StopRecommenderInput,
        output_schema = types.StopRecommenderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopSolutionVersionCreation(input, options)
    return self:invokeOperation(input, {
        name = "StopSolutionVersionCreation",
        input_schema = types.StopSolutionVersionCreationInput,
        output_schema = types.StopSolutionVersionCreationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateCampaign(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaign",
        input_schema = types.UpdateCampaignInput,
        output_schema = types.UpdateCampaignOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDataset(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataset",
        input_schema = types.UpdateDatasetInput,
        output_schema = types.UpdateDatasetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateMetricAttribution(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMetricAttribution",
        input_schema = types.UpdateMetricAttributionInput,
        output_schema = types.UpdateMetricAttributionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateRecommender(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRecommender",
        input_schema = types.UpdateRecommenderInput,
        output_schema = types.UpdateRecommenderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSolution(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSolution",
        input_schema = types.UpdateSolutionInput,
        output_schema = types.UpdateSolutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
