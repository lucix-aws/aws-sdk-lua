local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("personalize.endpoint_rules")
local schemas = require("personalize.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonPersonalize"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "personalize", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:createBatchInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateBatchInferenceJob",
        input_schema = schemas.CreateBatchInferenceJobInput,
        output_schema = schemas.CreateBatchInferenceJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBatchSegmentJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateBatchSegmentJob",
        input_schema = schemas.CreateBatchSegmentJobInput,
        output_schema = schemas.CreateBatchSegmentJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCampaign(input, options)
    return self:invokeOperation(input, {
        name = "CreateCampaign",
        input_schema = schemas.CreateCampaignInput,
        output_schema = schemas.CreateCampaignOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataDeletionJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataDeletionJob",
        input_schema = schemas.CreateDataDeletionJobInput,
        output_schema = schemas.CreateDataDeletionJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataset(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataset",
        input_schema = schemas.CreateDatasetInput,
        output_schema = schemas.CreateDatasetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDatasetExportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateDatasetExportJob",
        input_schema = schemas.CreateDatasetExportJobInput,
        output_schema = schemas.CreateDatasetExportJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDatasetGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDatasetGroup",
        input_schema = schemas.CreateDatasetGroupInput,
        output_schema = schemas.CreateDatasetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDatasetImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateDatasetImportJob",
        input_schema = schemas.CreateDatasetImportJobInput,
        output_schema = schemas.CreateDatasetImportJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEventTracker(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventTracker",
        input_schema = schemas.CreateEventTrackerInput,
        output_schema = schemas.CreateEventTrackerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFilter(input, options)
    return self:invokeOperation(input, {
        name = "CreateFilter",
        input_schema = schemas.CreateFilterInput,
        output_schema = schemas.CreateFilterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMetricAttribution(input, options)
    return self:invokeOperation(input, {
        name = "CreateMetricAttribution",
        input_schema = schemas.CreateMetricAttributionInput,
        output_schema = schemas.CreateMetricAttributionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRecommender(input, options)
    return self:invokeOperation(input, {
        name = "CreateRecommender",
        input_schema = schemas.CreateRecommenderInput,
        output_schema = schemas.CreateRecommenderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSchema(input, options)
    return self:invokeOperation(input, {
        name = "CreateSchema",
        input_schema = schemas.CreateSchemaInput,
        output_schema = schemas.CreateSchemaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSolution(input, options)
    return self:invokeOperation(input, {
        name = "CreateSolution",
        input_schema = schemas.CreateSolutionInput,
        output_schema = schemas.CreateSolutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSolutionVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateSolutionVersion",
        input_schema = schemas.CreateSolutionVersionInput,
        output_schema = schemas.CreateSolutionVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCampaign(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCampaign",
        input_schema = schemas.DeleteCampaignInput,
        output_schema = schemas.DeleteCampaignOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataset",
        input_schema = schemas.DeleteDatasetInput,
        output_schema = schemas.DeleteDatasetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDatasetGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDatasetGroup",
        input_schema = schemas.DeleteDatasetGroupInput,
        output_schema = schemas.DeleteDatasetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEventTracker(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventTracker",
        input_schema = schemas.DeleteEventTrackerInput,
        output_schema = schemas.DeleteEventTrackerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFilter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFilter",
        input_schema = schemas.DeleteFilterInput,
        output_schema = schemas.DeleteFilterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMetricAttribution(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMetricAttribution",
        input_schema = schemas.DeleteMetricAttributionInput,
        output_schema = schemas.DeleteMetricAttributionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRecommender(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecommender",
        input_schema = schemas.DeleteRecommenderInput,
        output_schema = schemas.DeleteRecommenderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSchema(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSchema",
        input_schema = schemas.DeleteSchemaInput,
        output_schema = schemas.DeleteSchemaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSolution(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSolution",
        input_schema = schemas.DeleteSolutionInput,
        output_schema = schemas.DeleteSolutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAlgorithm(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAlgorithm",
        input_schema = schemas.DescribeAlgorithmInput,
        output_schema = schemas.DescribeAlgorithmOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBatchInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBatchInferenceJob",
        input_schema = schemas.DescribeBatchInferenceJobInput,
        output_schema = schemas.DescribeBatchInferenceJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBatchSegmentJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBatchSegmentJob",
        input_schema = schemas.DescribeBatchSegmentJobInput,
        output_schema = schemas.DescribeBatchSegmentJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCampaign(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCampaign",
        input_schema = schemas.DescribeCampaignInput,
        output_schema = schemas.DescribeCampaignOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataDeletionJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataDeletionJob",
        input_schema = schemas.DescribeDataDeletionJobInput,
        output_schema = schemas.DescribeDataDeletionJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataset(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataset",
        input_schema = schemas.DescribeDatasetInput,
        output_schema = schemas.DescribeDatasetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDatasetExportJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDatasetExportJob",
        input_schema = schemas.DescribeDatasetExportJobInput,
        output_schema = schemas.DescribeDatasetExportJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDatasetGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDatasetGroup",
        input_schema = schemas.DescribeDatasetGroupInput,
        output_schema = schemas.DescribeDatasetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDatasetImportJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDatasetImportJob",
        input_schema = schemas.DescribeDatasetImportJobInput,
        output_schema = schemas.DescribeDatasetImportJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEventTracker(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventTracker",
        input_schema = schemas.DescribeEventTrackerInput,
        output_schema = schemas.DescribeEventTrackerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFeatureTransformation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFeatureTransformation",
        input_schema = schemas.DescribeFeatureTransformationInput,
        output_schema = schemas.DescribeFeatureTransformationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFilter(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFilter",
        input_schema = schemas.DescribeFilterInput,
        output_schema = schemas.DescribeFilterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMetricAttribution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMetricAttribution",
        input_schema = schemas.DescribeMetricAttributionInput,
        output_schema = schemas.DescribeMetricAttributionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRecipe(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRecipe",
        input_schema = schemas.DescribeRecipeInput,
        output_schema = schemas.DescribeRecipeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRecommender(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRecommender",
        input_schema = schemas.DescribeRecommenderInput,
        output_schema = schemas.DescribeRecommenderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSchema(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSchema",
        input_schema = schemas.DescribeSchemaInput,
        output_schema = schemas.DescribeSchemaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSolution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSolution",
        input_schema = schemas.DescribeSolutionInput,
        output_schema = schemas.DescribeSolutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSolutionVersion(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSolutionVersion",
        input_schema = schemas.DescribeSolutionVersionInput,
        output_schema = schemas.DescribeSolutionVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSolutionMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetSolutionMetrics",
        input_schema = schemas.GetSolutionMetricsInput,
        output_schema = schemas.GetSolutionMetricsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBatchInferenceJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListBatchInferenceJobs",
        input_schema = schemas.ListBatchInferenceJobsInput,
        output_schema = schemas.ListBatchInferenceJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBatchSegmentJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListBatchSegmentJobs",
        input_schema = schemas.ListBatchSegmentJobsInput,
        output_schema = schemas.ListBatchSegmentJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCampaigns(input, options)
    return self:invokeOperation(input, {
        name = "ListCampaigns",
        input_schema = schemas.ListCampaignsInput,
        output_schema = schemas.ListCampaignsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataDeletionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListDataDeletionJobs",
        input_schema = schemas.ListDataDeletionJobsInput,
        output_schema = schemas.ListDataDeletionJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDatasetExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasetExportJobs",
        input_schema = schemas.ListDatasetExportJobsInput,
        output_schema = schemas.ListDatasetExportJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDatasetGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasetGroups",
        input_schema = schemas.ListDatasetGroupsInput,
        output_schema = schemas.ListDatasetGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDatasetImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasetImportJobs",
        input_schema = schemas.ListDatasetImportJobsInput,
        output_schema = schemas.ListDatasetImportJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDatasets(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasets",
        input_schema = schemas.ListDatasetsInput,
        output_schema = schemas.ListDatasetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEventTrackers(input, options)
    return self:invokeOperation(input, {
        name = "ListEventTrackers",
        input_schema = schemas.ListEventTrackersInput,
        output_schema = schemas.ListEventTrackersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFilters(input, options)
    return self:invokeOperation(input, {
        name = "ListFilters",
        input_schema = schemas.ListFiltersInput,
        output_schema = schemas.ListFiltersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMetricAttributionMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListMetricAttributionMetrics",
        input_schema = schemas.ListMetricAttributionMetricsInput,
        output_schema = schemas.ListMetricAttributionMetricsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMetricAttributions(input, options)
    return self:invokeOperation(input, {
        name = "ListMetricAttributions",
        input_schema = schemas.ListMetricAttributionsInput,
        output_schema = schemas.ListMetricAttributionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecipes(input, options)
    return self:invokeOperation(input, {
        name = "ListRecipes",
        input_schema = schemas.ListRecipesInput,
        output_schema = schemas.ListRecipesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecommenders(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommenders",
        input_schema = schemas.ListRecommendersInput,
        output_schema = schemas.ListRecommendersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSchemas(input, options)
    return self:invokeOperation(input, {
        name = "ListSchemas",
        input_schema = schemas.ListSchemasInput,
        output_schema = schemas.ListSchemasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSolutions(input, options)
    return self:invokeOperation(input, {
        name = "ListSolutions",
        input_schema = schemas.ListSolutionsInput,
        output_schema = schemas.ListSolutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSolutionVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListSolutionVersions",
        input_schema = schemas.ListSolutionVersionsInput,
        output_schema = schemas.ListSolutionVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startRecommender(input, options)
    return self:invokeOperation(input, {
        name = "StartRecommender",
        input_schema = schemas.StartRecommenderInput,
        output_schema = schemas.StartRecommenderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopRecommender(input, options)
    return self:invokeOperation(input, {
        name = "StopRecommender",
        input_schema = schemas.StopRecommenderInput,
        output_schema = schemas.StopRecommenderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopSolutionVersionCreation(input, options)
    return self:invokeOperation(input, {
        name = "StopSolutionVersionCreation",
        input_schema = schemas.StopSolutionVersionCreationInput,
        output_schema = schemas.StopSolutionVersionCreationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCampaign(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCampaign",
        input_schema = schemas.UpdateCampaignInput,
        output_schema = schemas.UpdateCampaignOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataset(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataset",
        input_schema = schemas.UpdateDatasetInput,
        output_schema = schemas.UpdateDatasetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMetricAttribution(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMetricAttribution",
        input_schema = schemas.UpdateMetricAttributionInput,
        output_schema = schemas.UpdateMetricAttributionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRecommender(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRecommender",
        input_schema = schemas.UpdateRecommenderInput,
        output_schema = schemas.UpdateRecommenderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSolution(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSolution",
        input_schema = schemas.UpdateSolutionInput,
        output_schema = schemas.UpdateSolutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
