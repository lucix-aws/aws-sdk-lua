local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("neptunedata.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("neptunedata.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonNeptuneDataplane"
    cfg.signing_name = "neptune-db"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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

function Client:cancelGremlinQuery(input, options)
    return self:invokeOperation(input, {
        name = "CancelGremlinQuery",
        input_schema = types.CancelGremlinQueryInput,
        output_schema = types.CancelGremlinQueryOutput,
        http_method = "DELETE",
        http_path = "/gremlin/status/{queryId}",
    }, options)
end

function Client:cancelLoaderJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelLoaderJob",
        input_schema = types.CancelLoaderJobInput,
        output_schema = types.CancelLoaderJobOutput,
        http_method = "DELETE",
        http_path = "/loader/{loadId}",
    }, options)
end

function Client:cancelMLDataProcessingJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelMLDataProcessingJob",
        input_schema = types.CancelMLDataProcessingJobInput,
        output_schema = types.CancelMLDataProcessingJobOutput,
        http_method = "DELETE",
        http_path = "/ml/dataprocessing/{id}",
    }, options)
end

function Client:cancelMLModelTrainingJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelMLModelTrainingJob",
        input_schema = types.CancelMLModelTrainingJobInput,
        output_schema = types.CancelMLModelTrainingJobOutput,
        http_method = "DELETE",
        http_path = "/ml/modeltraining/{id}",
    }, options)
end

function Client:cancelMLModelTransformJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelMLModelTransformJob",
        input_schema = types.CancelMLModelTransformJobInput,
        output_schema = types.CancelMLModelTransformJobOutput,
        http_method = "DELETE",
        http_path = "/ml/modeltransform/{id}",
    }, options)
end

function Client:cancelOpenCypherQuery(input, options)
    return self:invokeOperation(input, {
        name = "CancelOpenCypherQuery",
        input_schema = types.CancelOpenCypherQueryInput,
        output_schema = types.CancelOpenCypherQueryOutput,
        http_method = "DELETE",
        http_path = "/opencypher/status/{queryId}",
    }, options)
end

function Client:createMLEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateMLEndpoint",
        input_schema = types.CreateMLEndpointInput,
        output_schema = types.CreateMLEndpointOutput,
        http_method = "POST",
        http_path = "/ml/endpoints",
    }, options)
end

function Client:deleteMLEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMLEndpoint",
        input_schema = types.DeleteMLEndpointInput,
        output_schema = types.DeleteMLEndpointOutput,
        http_method = "DELETE",
        http_path = "/ml/endpoints/{id}",
    }, options)
end

function Client:deletePropertygraphStatistics(input, options)
    return self:invokeOperation(input, {
        name = "DeletePropertygraphStatistics",
        input_schema = types.DeletePropertygraphStatisticsInput,
        output_schema = types.DeletePropertygraphStatisticsOutput,
        http_method = "DELETE",
        http_path = "/propertygraph/statistics",
    }, options)
end

function Client:deleteSparqlStatistics(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSparqlStatistics",
        input_schema = types.DeleteSparqlStatisticsInput,
        output_schema = types.DeleteSparqlStatisticsOutput,
        http_method = "DELETE",
        http_path = "/sparql/statistics",
    }, options)
end

function Client:executeFastReset(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteFastReset",
        input_schema = types.ExecuteFastResetInput,
        output_schema = types.ExecuteFastResetOutput,
        http_method = "POST",
        http_path = "/system",
    }, options)
end

function Client:executeGremlinExplainQuery(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteGremlinExplainQuery",
        input_schema = types.ExecuteGremlinExplainQueryInput,
        output_schema = types.ExecuteGremlinExplainQueryOutput,
        http_method = "POST",
        http_path = "/gremlin/explain",
    }, options)
end

function Client:executeGremlinProfileQuery(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteGremlinProfileQuery",
        input_schema = types.ExecuteGremlinProfileQueryInput,
        output_schema = types.ExecuteGremlinProfileQueryOutput,
        http_method = "POST",
        http_path = "/gremlin/profile",
    }, options)
end

function Client:executeGremlinQuery(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteGremlinQuery",
        input_schema = types.ExecuteGremlinQueryInput,
        output_schema = types.ExecuteGremlinQueryOutput,
        http_method = "POST",
        http_path = "/gremlin",
    }, options)
end

function Client:executeOpenCypherExplainQuery(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteOpenCypherExplainQuery",
        input_schema = types.ExecuteOpenCypherExplainQueryInput,
        output_schema = types.ExecuteOpenCypherExplainQueryOutput,
        http_method = "POST",
        http_path = "/opencypher/explain",
    }, options)
end

function Client:executeOpenCypherQuery(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteOpenCypherQuery",
        input_schema = types.ExecuteOpenCypherQueryInput,
        output_schema = types.ExecuteOpenCypherQueryOutput,
        http_method = "POST",
        http_path = "/opencypher",
    }, options)
end

function Client:getEngineStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetEngineStatus",
        input_schema = types.GetEngineStatusInput,
        output_schema = types.GetEngineStatusOutput,
        http_method = "GET",
        http_path = "/status",
    }, options)
end

function Client:getGremlinQueryStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetGremlinQueryStatus",
        input_schema = types.GetGremlinQueryStatusInput,
        output_schema = types.GetGremlinQueryStatusOutput,
        http_method = "GET",
        http_path = "/gremlin/status/{queryId}",
    }, options)
end

function Client:getLoaderJobStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetLoaderJobStatus",
        input_schema = types.GetLoaderJobStatusInput,
        output_schema = types.GetLoaderJobStatusOutput,
        http_method = "GET",
        http_path = "/loader/{loadId}",
    }, options)
end

function Client:getMLDataProcessingJob(input, options)
    return self:invokeOperation(input, {
        name = "GetMLDataProcessingJob",
        input_schema = types.GetMLDataProcessingJobInput,
        output_schema = types.GetMLDataProcessingJobOutput,
        http_method = "GET",
        http_path = "/ml/dataprocessing/{id}",
    }, options)
end

function Client:getMLEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetMLEndpoint",
        input_schema = types.GetMLEndpointInput,
        output_schema = types.GetMLEndpointOutput,
        http_method = "GET",
        http_path = "/ml/endpoints/{id}",
    }, options)
end

function Client:getMLModelTrainingJob(input, options)
    return self:invokeOperation(input, {
        name = "GetMLModelTrainingJob",
        input_schema = types.GetMLModelTrainingJobInput,
        output_schema = types.GetMLModelTrainingJobOutput,
        http_method = "GET",
        http_path = "/ml/modeltraining/{id}",
    }, options)
end

function Client:getMLModelTransformJob(input, options)
    return self:invokeOperation(input, {
        name = "GetMLModelTransformJob",
        input_schema = types.GetMLModelTransformJobInput,
        output_schema = types.GetMLModelTransformJobOutput,
        http_method = "GET",
        http_path = "/ml/modeltransform/{id}",
    }, options)
end

function Client:getOpenCypherQueryStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetOpenCypherQueryStatus",
        input_schema = types.GetOpenCypherQueryStatusInput,
        output_schema = types.GetOpenCypherQueryStatusOutput,
        http_method = "GET",
        http_path = "/opencypher/status/{queryId}",
    }, options)
end

function Client:getPropertygraphStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetPropertygraphStatistics",
        input_schema = types.GetPropertygraphStatisticsInput,
        output_schema = types.GetPropertygraphStatisticsOutput,
        http_method = "GET",
        http_path = "/propertygraph/statistics",
    }, options)
end

function Client:getPropertygraphStream(input, options)
    return self:invokeOperation(input, {
        name = "GetPropertygraphStream",
        input_schema = types.GetPropertygraphStreamInput,
        output_schema = types.GetPropertygraphStreamOutput,
        http_method = "GET",
        http_path = "/propertygraph/stream",
    }, options)
end

function Client:getPropertygraphSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetPropertygraphSummary",
        input_schema = types.GetPropertygraphSummaryInput,
        output_schema = types.GetPropertygraphSummaryOutput,
        http_method = "GET",
        http_path = "/propertygraph/statistics/summary",
    }, options)
end

function Client:getRDFGraphSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetRDFGraphSummary",
        input_schema = types.GetRDFGraphSummaryInput,
        output_schema = types.GetRDFGraphSummaryOutput,
        http_method = "GET",
        http_path = "/rdf/statistics/summary",
    }, options)
end

function Client:getSparqlStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetSparqlStatistics",
        input_schema = types.GetSparqlStatisticsInput,
        output_schema = types.GetSparqlStatisticsOutput,
        http_method = "GET",
        http_path = "/sparql/statistics",
    }, options)
end

function Client:getSparqlStream(input, options)
    return self:invokeOperation(input, {
        name = "GetSparqlStream",
        input_schema = types.GetSparqlStreamInput,
        output_schema = types.GetSparqlStreamOutput,
        http_method = "GET",
        http_path = "/sparql/stream",
    }, options)
end

function Client:listGremlinQueries(input, options)
    return self:invokeOperation(input, {
        name = "ListGremlinQueries",
        input_schema = types.ListGremlinQueriesInput,
        output_schema = types.ListGremlinQueriesOutput,
        http_method = "GET",
        http_path = "/gremlin/status",
    }, options)
end

function Client:listLoaderJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListLoaderJobs",
        input_schema = types.ListLoaderJobsInput,
        output_schema = types.ListLoaderJobsOutput,
        http_method = "GET",
        http_path = "/loader",
    }, options)
end

function Client:listMLDataProcessingJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListMLDataProcessingJobs",
        input_schema = types.ListMLDataProcessingJobsInput,
        output_schema = types.ListMLDataProcessingJobsOutput,
        http_method = "GET",
        http_path = "/ml/dataprocessing",
    }, options)
end

function Client:listMLEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListMLEndpoints",
        input_schema = types.ListMLEndpointsInput,
        output_schema = types.ListMLEndpointsOutput,
        http_method = "GET",
        http_path = "/ml/endpoints",
    }, options)
end

function Client:listMLModelTrainingJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListMLModelTrainingJobs",
        input_schema = types.ListMLModelTrainingJobsInput,
        output_schema = types.ListMLModelTrainingJobsOutput,
        http_method = "GET",
        http_path = "/ml/modeltraining",
    }, options)
end

function Client:listMLModelTransformJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListMLModelTransformJobs",
        input_schema = types.ListMLModelTransformJobsInput,
        output_schema = types.ListMLModelTransformJobsOutput,
        http_method = "GET",
        http_path = "/ml/modeltransform",
    }, options)
end

function Client:listOpenCypherQueries(input, options)
    return self:invokeOperation(input, {
        name = "ListOpenCypherQueries",
        input_schema = types.ListOpenCypherQueriesInput,
        output_schema = types.ListOpenCypherQueriesOutput,
        http_method = "GET",
        http_path = "/opencypher/status",
    }, options)
end

function Client:managePropertygraphStatistics(input, options)
    return self:invokeOperation(input, {
        name = "ManagePropertygraphStatistics",
        input_schema = types.ManagePropertygraphStatisticsInput,
        output_schema = types.ManagePropertygraphStatisticsOutput,
        http_method = "POST",
        http_path = "/propertygraph/statistics",
    }, options)
end

function Client:manageSparqlStatistics(input, options)
    return self:invokeOperation(input, {
        name = "ManageSparqlStatistics",
        input_schema = types.ManageSparqlStatisticsInput,
        output_schema = types.ManageSparqlStatisticsOutput,
        http_method = "POST",
        http_path = "/sparql/statistics",
    }, options)
end

function Client:startLoaderJob(input, options)
    return self:invokeOperation(input, {
        name = "StartLoaderJob",
        input_schema = types.StartLoaderJobInput,
        output_schema = types.StartLoaderJobOutput,
        http_method = "POST",
        http_path = "/loader",
    }, options)
end

function Client:startMLDataProcessingJob(input, options)
    return self:invokeOperation(input, {
        name = "StartMLDataProcessingJob",
        input_schema = types.StartMLDataProcessingJobInput,
        output_schema = types.StartMLDataProcessingJobOutput,
        http_method = "POST",
        http_path = "/ml/dataprocessing",
    }, options)
end

function Client:startMLModelTrainingJob(input, options)
    return self:invokeOperation(input, {
        name = "StartMLModelTrainingJob",
        input_schema = types.StartMLModelTrainingJobInput,
        output_schema = types.StartMLModelTrainingJobOutput,
        http_method = "POST",
        http_path = "/ml/modeltraining",
    }, options)
end

function Client:startMLModelTransformJob(input, options)
    return self:invokeOperation(input, {
        name = "StartMLModelTransformJob",
        input_schema = types.StartMLModelTransformJobInput,
        output_schema = types.StartMLModelTransformJobOutput,
        http_method = "POST",
        http_path = "/ml/modeltransform",
    }, options)
end

return M
