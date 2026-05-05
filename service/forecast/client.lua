local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("forecast.endpoint_rules")
local schemas = require("forecast.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonForecast"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "forecast", signing_region = cfg.region } }
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

function Client:createAutoPredictor(input, options)
    return self:invokeOperation(input, {
        name = "CreateAutoPredictor",
        input_schema = schemas.CreateAutoPredictorInput,
        output_schema = schemas.CreateAutoPredictorOutput,
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

function Client:createExplainability(input, options)
    return self:invokeOperation(input, {
        name = "CreateExplainability",
        input_schema = schemas.CreateExplainabilityInput,
        output_schema = schemas.CreateExplainabilityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createExplainabilityExport(input, options)
    return self:invokeOperation(input, {
        name = "CreateExplainabilityExport",
        input_schema = schemas.CreateExplainabilityExportInput,
        output_schema = schemas.CreateExplainabilityExportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createForecast(input, options)
    return self:invokeOperation(input, {
        name = "CreateForecast",
        input_schema = schemas.CreateForecastInput,
        output_schema = schemas.CreateForecastOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createForecastExportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateForecastExportJob",
        input_schema = schemas.CreateForecastExportJobInput,
        output_schema = schemas.CreateForecastExportJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMonitor(input, options)
    return self:invokeOperation(input, {
        name = "CreateMonitor",
        input_schema = schemas.CreateMonitorInput,
        output_schema = schemas.CreateMonitorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPredictor(input, options)
    return self:invokeOperation(input, {
        name = "CreatePredictor",
        input_schema = schemas.CreatePredictorInput,
        output_schema = schemas.CreatePredictorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPredictorBacktestExportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreatePredictorBacktestExportJob",
        input_schema = schemas.CreatePredictorBacktestExportJobInput,
        output_schema = schemas.CreatePredictorBacktestExportJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWhatIfAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "CreateWhatIfAnalysis",
        input_schema = schemas.CreateWhatIfAnalysisInput,
        output_schema = schemas.CreateWhatIfAnalysisOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWhatIfForecast(input, options)
    return self:invokeOperation(input, {
        name = "CreateWhatIfForecast",
        input_schema = schemas.CreateWhatIfForecastInput,
        output_schema = schemas.CreateWhatIfForecastOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWhatIfForecastExport(input, options)
    return self:invokeOperation(input, {
        name = "CreateWhatIfForecastExport",
        input_schema = schemas.CreateWhatIfForecastExportInput,
        output_schema = schemas.CreateWhatIfForecastExportOutput,
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

function Client:deleteDatasetImportJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDatasetImportJob",
        input_schema = schemas.DeleteDatasetImportJobInput,
        output_schema = schemas.DeleteDatasetImportJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteExplainability(input, options)
    return self:invokeOperation(input, {
        name = "DeleteExplainability",
        input_schema = schemas.DeleteExplainabilityInput,
        output_schema = schemas.DeleteExplainabilityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteExplainabilityExport(input, options)
    return self:invokeOperation(input, {
        name = "DeleteExplainabilityExport",
        input_schema = schemas.DeleteExplainabilityExportInput,
        output_schema = schemas.DeleteExplainabilityExportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteForecast(input, options)
    return self:invokeOperation(input, {
        name = "DeleteForecast",
        input_schema = schemas.DeleteForecastInput,
        output_schema = schemas.DeleteForecastOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteForecastExportJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteForecastExportJob",
        input_schema = schemas.DeleteForecastExportJobInput,
        output_schema = schemas.DeleteForecastExportJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMonitor(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMonitor",
        input_schema = schemas.DeleteMonitorInput,
        output_schema = schemas.DeleteMonitorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePredictor(input, options)
    return self:invokeOperation(input, {
        name = "DeletePredictor",
        input_schema = schemas.DeletePredictorInput,
        output_schema = schemas.DeletePredictorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePredictorBacktestExportJob(input, options)
    return self:invokeOperation(input, {
        name = "DeletePredictorBacktestExportJob",
        input_schema = schemas.DeletePredictorBacktestExportJobInput,
        output_schema = schemas.DeletePredictorBacktestExportJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourceTree(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourceTree",
        input_schema = schemas.DeleteResourceTreeInput,
        output_schema = schemas.DeleteResourceTreeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWhatIfAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWhatIfAnalysis",
        input_schema = schemas.DeleteWhatIfAnalysisInput,
        output_schema = schemas.DeleteWhatIfAnalysisOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWhatIfForecast(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWhatIfForecast",
        input_schema = schemas.DeleteWhatIfForecastInput,
        output_schema = schemas.DeleteWhatIfForecastOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWhatIfForecastExport(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWhatIfForecastExport",
        input_schema = schemas.DeleteWhatIfForecastExportInput,
        output_schema = schemas.DeleteWhatIfForecastExportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAutoPredictor(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAutoPredictor",
        input_schema = schemas.DescribeAutoPredictorInput,
        output_schema = schemas.DescribeAutoPredictorOutput,
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

function Client:describeExplainability(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExplainability",
        input_schema = schemas.DescribeExplainabilityInput,
        output_schema = schemas.DescribeExplainabilityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeExplainabilityExport(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExplainabilityExport",
        input_schema = schemas.DescribeExplainabilityExportInput,
        output_schema = schemas.DescribeExplainabilityExportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeForecast(input, options)
    return self:invokeOperation(input, {
        name = "DescribeForecast",
        input_schema = schemas.DescribeForecastInput,
        output_schema = schemas.DescribeForecastOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeForecastExportJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeForecastExportJob",
        input_schema = schemas.DescribeForecastExportJobInput,
        output_schema = schemas.DescribeForecastExportJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMonitor(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMonitor",
        input_schema = schemas.DescribeMonitorInput,
        output_schema = schemas.DescribeMonitorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePredictor(input, options)
    return self:invokeOperation(input, {
        name = "DescribePredictor",
        input_schema = schemas.DescribePredictorInput,
        output_schema = schemas.DescribePredictorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePredictorBacktestExportJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribePredictorBacktestExportJob",
        input_schema = schemas.DescribePredictorBacktestExportJobInput,
        output_schema = schemas.DescribePredictorBacktestExportJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWhatIfAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWhatIfAnalysis",
        input_schema = schemas.DescribeWhatIfAnalysisInput,
        output_schema = schemas.DescribeWhatIfAnalysisOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWhatIfForecast(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWhatIfForecast",
        input_schema = schemas.DescribeWhatIfForecastInput,
        output_schema = schemas.DescribeWhatIfForecastOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWhatIfForecastExport(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWhatIfForecastExport",
        input_schema = schemas.DescribeWhatIfForecastExportInput,
        output_schema = schemas.DescribeWhatIfForecastExportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccuracyMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetAccuracyMetrics",
        input_schema = schemas.GetAccuracyMetricsInput,
        output_schema = schemas.GetAccuracyMetricsOutput,
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

function Client:listExplainabilities(input, options)
    return self:invokeOperation(input, {
        name = "ListExplainabilities",
        input_schema = schemas.ListExplainabilitiesInput,
        output_schema = schemas.ListExplainabilitiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExplainabilityExports(input, options)
    return self:invokeOperation(input, {
        name = "ListExplainabilityExports",
        input_schema = schemas.ListExplainabilityExportsInput,
        output_schema = schemas.ListExplainabilityExportsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listForecastExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListForecastExportJobs",
        input_schema = schemas.ListForecastExportJobsInput,
        output_schema = schemas.ListForecastExportJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listForecasts(input, options)
    return self:invokeOperation(input, {
        name = "ListForecasts",
        input_schema = schemas.ListForecastsInput,
        output_schema = schemas.ListForecastsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMonitorEvaluations(input, options)
    return self:invokeOperation(input, {
        name = "ListMonitorEvaluations",
        input_schema = schemas.ListMonitorEvaluationsInput,
        output_schema = schemas.ListMonitorEvaluationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMonitors(input, options)
    return self:invokeOperation(input, {
        name = "ListMonitors",
        input_schema = schemas.ListMonitorsInput,
        output_schema = schemas.ListMonitorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPredictorBacktestExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListPredictorBacktestExportJobs",
        input_schema = schemas.ListPredictorBacktestExportJobsInput,
        output_schema = schemas.ListPredictorBacktestExportJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPredictors(input, options)
    return self:invokeOperation(input, {
        name = "ListPredictors",
        input_schema = schemas.ListPredictorsInput,
        output_schema = schemas.ListPredictorsOutput,
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

function Client:listWhatIfAnalyses(input, options)
    return self:invokeOperation(input, {
        name = "ListWhatIfAnalyses",
        input_schema = schemas.ListWhatIfAnalysesInput,
        output_schema = schemas.ListWhatIfAnalysesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWhatIfForecastExports(input, options)
    return self:invokeOperation(input, {
        name = "ListWhatIfForecastExports",
        input_schema = schemas.ListWhatIfForecastExportsInput,
        output_schema = schemas.ListWhatIfForecastExportsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWhatIfForecasts(input, options)
    return self:invokeOperation(input, {
        name = "ListWhatIfForecasts",
        input_schema = schemas.ListWhatIfForecastsInput,
        output_schema = schemas.ListWhatIfForecastsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resumeResource(input, options)
    return self:invokeOperation(input, {
        name = "ResumeResource",
        input_schema = schemas.ResumeResourceInput,
        output_schema = schemas.ResumeResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopResource(input, options)
    return self:invokeOperation(input, {
        name = "StopResource",
        input_schema = schemas.StopResourceInput,
        output_schema = schemas.StopResourceOutput,
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

function Client:updateDatasetGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDatasetGroup",
        input_schema = schemas.UpdateDatasetGroupInput,
        output_schema = schemas.UpdateDatasetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
