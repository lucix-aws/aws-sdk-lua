local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("machinelearning.endpoint_rules")
local schemas = require("machinelearning.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonML_20141212"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "machinelearning", signing_region = cfg.region } }
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

function Client:addTags(input, options)
    return self:invokeOperation(input, {
        name = "AddTags",
        input_schema = schemas.AddTagsInput,
        output_schema = schemas.AddTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBatchPrediction(input, options)
    return self:invokeOperation(input, {
        name = "CreateBatchPrediction",
        input_schema = schemas.CreateBatchPredictionInput,
        output_schema = schemas.CreateBatchPredictionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataSourceFromRDS(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataSourceFromRDS",
        input_schema = schemas.CreateDataSourceFromRDSInput,
        output_schema = schemas.CreateDataSourceFromRDSOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataSourceFromRedshift(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataSourceFromRedshift",
        input_schema = schemas.CreateDataSourceFromRedshiftInput,
        output_schema = schemas.CreateDataSourceFromRedshiftOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataSourceFromS3(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataSourceFromS3",
        input_schema = schemas.CreateDataSourceFromS3Input,
        output_schema = schemas.CreateDataSourceFromS3Output,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEvaluation(input, options)
    return self:invokeOperation(input, {
        name = "CreateEvaluation",
        input_schema = schemas.CreateEvaluationInput,
        output_schema = schemas.CreateEvaluationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMLModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateMLModel",
        input_schema = schemas.CreateMLModelInput,
        output_schema = schemas.CreateMLModelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRealtimeEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateRealtimeEndpoint",
        input_schema = schemas.CreateRealtimeEndpointInput,
        output_schema = schemas.CreateRealtimeEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBatchPrediction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBatchPrediction",
        input_schema = schemas.DeleteBatchPredictionInput,
        output_schema = schemas.DeleteBatchPredictionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataSource",
        input_schema = schemas.DeleteDataSourceInput,
        output_schema = schemas.DeleteDataSourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEvaluation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEvaluation",
        input_schema = schemas.DeleteEvaluationInput,
        output_schema = schemas.DeleteEvaluationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMLModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMLModel",
        input_schema = schemas.DeleteMLModelInput,
        output_schema = schemas.DeleteMLModelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRealtimeEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRealtimeEndpoint",
        input_schema = schemas.DeleteRealtimeEndpointInput,
        output_schema = schemas.DeleteRealtimeEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTags(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTags",
        input_schema = schemas.DeleteTagsInput,
        output_schema = schemas.DeleteTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBatchPredictions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBatchPredictions",
        input_schema = schemas.DescribeBatchPredictionsInput,
        output_schema = schemas.DescribeBatchPredictionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataSources(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataSources",
        input_schema = schemas.DescribeDataSourcesInput,
        output_schema = schemas.DescribeDataSourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEvaluations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEvaluations",
        input_schema = schemas.DescribeEvaluationsInput,
        output_schema = schemas.DescribeEvaluationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMLModels(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMLModels",
        input_schema = schemas.DescribeMLModelsInput,
        output_schema = schemas.DescribeMLModelsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTags(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTags",
        input_schema = schemas.DescribeTagsInput,
        output_schema = schemas.DescribeTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBatchPrediction(input, options)
    return self:invokeOperation(input, {
        name = "GetBatchPrediction",
        input_schema = schemas.GetBatchPredictionInput,
        output_schema = schemas.GetBatchPredictionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataSource(input, options)
    return self:invokeOperation(input, {
        name = "GetDataSource",
        input_schema = schemas.GetDataSourceInput,
        output_schema = schemas.GetDataSourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEvaluation(input, options)
    return self:invokeOperation(input, {
        name = "GetEvaluation",
        input_schema = schemas.GetEvaluationInput,
        output_schema = schemas.GetEvaluationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMLModel(input, options)
    return self:invokeOperation(input, {
        name = "GetMLModel",
        input_schema = schemas.GetMLModelInput,
        output_schema = schemas.GetMLModelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:predict(input, options)
    return self:invokeOperation(input, {
        name = "Predict",
        input_schema = schemas.PredictInput,
        output_schema = schemas.PredictOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBatchPrediction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBatchPrediction",
        input_schema = schemas.UpdateBatchPredictionInput,
        output_schema = schemas.UpdateBatchPredictionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataSource",
        input_schema = schemas.UpdateDataSourceInput,
        output_schema = schemas.UpdateDataSourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEvaluation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEvaluation",
        input_schema = schemas.UpdateEvaluationInput,
        output_schema = schemas.UpdateEvaluationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMLModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMLModel",
        input_schema = schemas.UpdateMLModelInput,
        output_schema = schemas.UpdateMLModelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
