local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("neptunedata.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("neptunedata.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonNeptuneDataplane"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "neptune-db", signing_region = cfg.region } }
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

function Client:cancelGremlinQuery(input, options)
    return self:invokeOperation(input, {
        name = "CancelGremlinQuery",
        input_schema = schemas.CancelGremlinQueryInput,
        output_schema = schemas.CancelGremlinQueryOutput,
        http_method = "DELETE",
        http_path = "/gremlin/status/{queryId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelLoaderJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelLoaderJob",
        input_schema = schemas.CancelLoaderJobInput,
        output_schema = schemas.CancelLoaderJobOutput,
        http_method = "DELETE",
        http_path = "/loader/{loadId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelMLDataProcessingJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelMLDataProcessingJob",
        input_schema = schemas.CancelMLDataProcessingJobInput,
        output_schema = schemas.CancelMLDataProcessingJobOutput,
        http_method = "DELETE",
        http_path = "/ml/dataprocessing/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelMLModelTrainingJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelMLModelTrainingJob",
        input_schema = schemas.CancelMLModelTrainingJobInput,
        output_schema = schemas.CancelMLModelTrainingJobOutput,
        http_method = "DELETE",
        http_path = "/ml/modeltraining/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelMLModelTransformJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelMLModelTransformJob",
        input_schema = schemas.CancelMLModelTransformJobInput,
        output_schema = schemas.CancelMLModelTransformJobOutput,
        http_method = "DELETE",
        http_path = "/ml/modeltransform/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelOpenCypherQuery(input, options)
    return self:invokeOperation(input, {
        name = "CancelOpenCypherQuery",
        input_schema = schemas.CancelOpenCypherQueryInput,
        output_schema = schemas.CancelOpenCypherQueryOutput,
        http_method = "DELETE",
        http_path = "/opencypher/status/{queryId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMLEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateMLEndpoint",
        input_schema = schemas.CreateMLEndpointInput,
        output_schema = schemas.CreateMLEndpointOutput,
        http_method = "POST",
        http_path = "/ml/endpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMLEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMLEndpoint",
        input_schema = schemas.DeleteMLEndpointInput,
        output_schema = schemas.DeleteMLEndpointOutput,
        http_method = "DELETE",
        http_path = "/ml/endpoints/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePropertygraphStatistics(input, options)
    return self:invokeOperation(input, {
        name = "DeletePropertygraphStatistics",
        input_schema = schemas.DeletePropertygraphStatisticsInput,
        output_schema = schemas.DeletePropertygraphStatisticsOutput,
        http_method = "DELETE",
        http_path = "/propertygraph/statistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSparqlStatistics(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSparqlStatistics",
        input_schema = schemas.DeleteSparqlStatisticsInput,
        output_schema = schemas.DeleteSparqlStatisticsOutput,
        http_method = "DELETE",
        http_path = "/sparql/statistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeFastReset(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteFastReset",
        input_schema = schemas.ExecuteFastResetInput,
        output_schema = schemas.ExecuteFastResetOutput,
        http_method = "POST",
        http_path = "/system",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeGremlinExplainQuery(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteGremlinExplainQuery",
        input_schema = schemas.ExecuteGremlinExplainQueryInput,
        output_schema = schemas.ExecuteGremlinExplainQueryOutput,
        http_method = "POST",
        http_path = "/gremlin/explain",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeGremlinProfileQuery(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteGremlinProfileQuery",
        input_schema = schemas.ExecuteGremlinProfileQueryInput,
        output_schema = schemas.ExecuteGremlinProfileQueryOutput,
        http_method = "POST",
        http_path = "/gremlin/profile",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeGremlinQuery(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteGremlinQuery",
        input_schema = schemas.ExecuteGremlinQueryInput,
        output_schema = schemas.ExecuteGremlinQueryOutput,
        http_method = "POST",
        http_path = "/gremlin",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeOpenCypherExplainQuery(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteOpenCypherExplainQuery",
        input_schema = schemas.ExecuteOpenCypherExplainQueryInput,
        output_schema = schemas.ExecuteOpenCypherExplainQueryOutput,
        http_method = "POST",
        http_path = "/opencypher/explain",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeOpenCypherQuery(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteOpenCypherQuery",
        input_schema = schemas.ExecuteOpenCypherQueryInput,
        output_schema = schemas.ExecuteOpenCypherQueryOutput,
        http_method = "POST",
        http_path = "/opencypher",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEngineStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetEngineStatus",
        input_schema = schemas.GetEngineStatusInput,
        output_schema = schemas.GetEngineStatusOutput,
        http_method = "GET",
        http_path = "/status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGremlinQueryStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetGremlinQueryStatus",
        input_schema = schemas.GetGremlinQueryStatusInput,
        output_schema = schemas.GetGremlinQueryStatusOutput,
        http_method = "GET",
        http_path = "/gremlin/status/{queryId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLoaderJobStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetLoaderJobStatus",
        input_schema = schemas.GetLoaderJobStatusInput,
        output_schema = schemas.GetLoaderJobStatusOutput,
        http_method = "GET",
        http_path = "/loader/{loadId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMLDataProcessingJob(input, options)
    return self:invokeOperation(input, {
        name = "GetMLDataProcessingJob",
        input_schema = schemas.GetMLDataProcessingJobInput,
        output_schema = schemas.GetMLDataProcessingJobOutput,
        http_method = "GET",
        http_path = "/ml/dataprocessing/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMLEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetMLEndpoint",
        input_schema = schemas.GetMLEndpointInput,
        output_schema = schemas.GetMLEndpointOutput,
        http_method = "GET",
        http_path = "/ml/endpoints/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMLModelTrainingJob(input, options)
    return self:invokeOperation(input, {
        name = "GetMLModelTrainingJob",
        input_schema = schemas.GetMLModelTrainingJobInput,
        output_schema = schemas.GetMLModelTrainingJobOutput,
        http_method = "GET",
        http_path = "/ml/modeltraining/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMLModelTransformJob(input, options)
    return self:invokeOperation(input, {
        name = "GetMLModelTransformJob",
        input_schema = schemas.GetMLModelTransformJobInput,
        output_schema = schemas.GetMLModelTransformJobOutput,
        http_method = "GET",
        http_path = "/ml/modeltransform/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOpenCypherQueryStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetOpenCypherQueryStatus",
        input_schema = schemas.GetOpenCypherQueryStatusInput,
        output_schema = schemas.GetOpenCypherQueryStatusOutput,
        http_method = "GET",
        http_path = "/opencypher/status/{queryId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPropertygraphStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetPropertygraphStatistics",
        input_schema = schemas.GetPropertygraphStatisticsInput,
        output_schema = schemas.GetPropertygraphStatisticsOutput,
        http_method = "GET",
        http_path = "/propertygraph/statistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPropertygraphStream(input, options)
    return self:invokeOperation(input, {
        name = "GetPropertygraphStream",
        input_schema = schemas.GetPropertygraphStreamInput,
        output_schema = schemas.GetPropertygraphStreamOutput,
        http_method = "GET",
        http_path = "/propertygraph/stream",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPropertygraphSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetPropertygraphSummary",
        input_schema = schemas.GetPropertygraphSummaryInput,
        output_schema = schemas.GetPropertygraphSummaryOutput,
        http_method = "GET",
        http_path = "/propertygraph/statistics/summary",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRDFGraphSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetRDFGraphSummary",
        input_schema = schemas.GetRDFGraphSummaryInput,
        output_schema = schemas.GetRDFGraphSummaryOutput,
        http_method = "GET",
        http_path = "/rdf/statistics/summary",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSparqlStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetSparqlStatistics",
        input_schema = schemas.GetSparqlStatisticsInput,
        output_schema = schemas.GetSparqlStatisticsOutput,
        http_method = "GET",
        http_path = "/sparql/statistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSparqlStream(input, options)
    return self:invokeOperation(input, {
        name = "GetSparqlStream",
        input_schema = schemas.GetSparqlStreamInput,
        output_schema = schemas.GetSparqlStreamOutput,
        http_method = "GET",
        http_path = "/sparql/stream",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGremlinQueries(input, options)
    return self:invokeOperation(input, {
        name = "ListGremlinQueries",
        input_schema = schemas.ListGremlinQueriesInput,
        output_schema = schemas.ListGremlinQueriesOutput,
        http_method = "GET",
        http_path = "/gremlin/status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLoaderJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListLoaderJobs",
        input_schema = schemas.ListLoaderJobsInput,
        output_schema = schemas.ListLoaderJobsOutput,
        http_method = "GET",
        http_path = "/loader",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMLDataProcessingJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListMLDataProcessingJobs",
        input_schema = schemas.ListMLDataProcessingJobsInput,
        output_schema = schemas.ListMLDataProcessingJobsOutput,
        http_method = "GET",
        http_path = "/ml/dataprocessing",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMLEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListMLEndpoints",
        input_schema = schemas.ListMLEndpointsInput,
        output_schema = schemas.ListMLEndpointsOutput,
        http_method = "GET",
        http_path = "/ml/endpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMLModelTrainingJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListMLModelTrainingJobs",
        input_schema = schemas.ListMLModelTrainingJobsInput,
        output_schema = schemas.ListMLModelTrainingJobsOutput,
        http_method = "GET",
        http_path = "/ml/modeltraining",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMLModelTransformJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListMLModelTransformJobs",
        input_schema = schemas.ListMLModelTransformJobsInput,
        output_schema = schemas.ListMLModelTransformJobsOutput,
        http_method = "GET",
        http_path = "/ml/modeltransform",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOpenCypherQueries(input, options)
    return self:invokeOperation(input, {
        name = "ListOpenCypherQueries",
        input_schema = schemas.ListOpenCypherQueriesInput,
        output_schema = schemas.ListOpenCypherQueriesOutput,
        http_method = "GET",
        http_path = "/opencypher/status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:managePropertygraphStatistics(input, options)
    return self:invokeOperation(input, {
        name = "ManagePropertygraphStatistics",
        input_schema = schemas.ManagePropertygraphStatisticsInput,
        output_schema = schemas.ManagePropertygraphStatisticsOutput,
        http_method = "POST",
        http_path = "/propertygraph/statistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:manageSparqlStatistics(input, options)
    return self:invokeOperation(input, {
        name = "ManageSparqlStatistics",
        input_schema = schemas.ManageSparqlStatisticsInput,
        output_schema = schemas.ManageSparqlStatisticsOutput,
        http_method = "POST",
        http_path = "/sparql/statistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startLoaderJob(input, options)
    return self:invokeOperation(input, {
        name = "StartLoaderJob",
        input_schema = schemas.StartLoaderJobInput,
        output_schema = schemas.StartLoaderJobOutput,
        http_method = "POST",
        http_path = "/loader",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMLDataProcessingJob(input, options)
    return self:invokeOperation(input, {
        name = "StartMLDataProcessingJob",
        input_schema = schemas.StartMLDataProcessingJobInput,
        output_schema = schemas.StartMLDataProcessingJobOutput,
        http_method = "POST",
        http_path = "/ml/dataprocessing",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMLModelTrainingJob(input, options)
    return self:invokeOperation(input, {
        name = "StartMLModelTrainingJob",
        input_schema = schemas.StartMLModelTrainingJobInput,
        output_schema = schemas.StartMLModelTrainingJobOutput,
        http_method = "POST",
        http_path = "/ml/modeltraining",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMLModelTransformJob(input, options)
    return self:invokeOperation(input, {
        name = "StartMLModelTransformJob",
        input_schema = schemas.StartMLModelTransformJobInput,
        output_schema = schemas.StartMLModelTransformJobOutput,
        http_method = "POST",
        http_path = "/ml/modeltransform",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
