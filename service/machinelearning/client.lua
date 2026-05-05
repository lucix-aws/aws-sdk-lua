local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("machinelearning.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("machinelearning.types")

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
        input_schema = types.AddTagsInput,
        output_schema = types.AddTagsOutput,
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
        input_schema = types.CreateBatchPredictionInput,
        output_schema = types.CreateBatchPredictionOutput,
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
        input_schema = types.CreateDataSourceFromRDSInput,
        output_schema = types.CreateDataSourceFromRDSOutput,
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
        input_schema = types.CreateDataSourceFromRedshiftInput,
        output_schema = types.CreateDataSourceFromRedshiftOutput,
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
        input_schema = types.CreateDataSourceFromS3Input,
        output_schema = types.CreateDataSourceFromS3Output,
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
        input_schema = types.CreateEvaluationInput,
        output_schema = types.CreateEvaluationOutput,
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
        input_schema = types.CreateMLModelInput,
        output_schema = types.CreateMLModelOutput,
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
        input_schema = types.CreateRealtimeEndpointInput,
        output_schema = types.CreateRealtimeEndpointOutput,
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
        input_schema = types.DeleteBatchPredictionInput,
        output_schema = types.DeleteBatchPredictionOutput,
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
        input_schema = types.DeleteDataSourceInput,
        output_schema = types.DeleteDataSourceOutput,
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
        input_schema = types.DeleteEvaluationInput,
        output_schema = types.DeleteEvaluationOutput,
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
        input_schema = types.DeleteMLModelInput,
        output_schema = types.DeleteMLModelOutput,
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
        input_schema = types.DeleteRealtimeEndpointInput,
        output_schema = types.DeleteRealtimeEndpointOutput,
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
        input_schema = types.DeleteTagsInput,
        output_schema = types.DeleteTagsOutput,
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
        input_schema = types.DescribeBatchPredictionsInput,
        output_schema = types.DescribeBatchPredictionsOutput,
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
        input_schema = types.DescribeDataSourcesInput,
        output_schema = types.DescribeDataSourcesOutput,
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
        input_schema = types.DescribeEvaluationsInput,
        output_schema = types.DescribeEvaluationsOutput,
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
        input_schema = types.DescribeMLModelsInput,
        output_schema = types.DescribeMLModelsOutput,
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
        input_schema = types.DescribeTagsInput,
        output_schema = types.DescribeTagsOutput,
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
        input_schema = types.GetBatchPredictionInput,
        output_schema = types.GetBatchPredictionOutput,
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
        input_schema = types.GetDataSourceInput,
        output_schema = types.GetDataSourceOutput,
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
        input_schema = types.GetEvaluationInput,
        output_schema = types.GetEvaluationOutput,
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
        input_schema = types.GetMLModelInput,
        output_schema = types.GetMLModelOutput,
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
        input_schema = types.PredictInput,
        output_schema = types.PredictOutput,
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
        input_schema = types.UpdateBatchPredictionInput,
        output_schema = types.UpdateBatchPredictionOutput,
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
        input_schema = types.UpdateDataSourceInput,
        output_schema = types.UpdateDataSourceOutput,
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
        input_schema = types.UpdateEvaluationInput,
        output_schema = types.UpdateEvaluationOutput,
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
        input_schema = types.UpdateMLModelInput,
        output_schema = types.UpdateMLModelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
