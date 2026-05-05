local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("forecast.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("forecast.types")

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
        input_schema = types.CreateAutoPredictorInput,
        output_schema = types.CreateAutoPredictorOutput,
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
        input_schema = types.CreateDatasetInput,
        output_schema = types.CreateDatasetOutput,
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
        input_schema = types.CreateDatasetGroupInput,
        output_schema = types.CreateDatasetGroupOutput,
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
        input_schema = types.CreateDatasetImportJobInput,
        output_schema = types.CreateDatasetImportJobOutput,
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
        input_schema = types.CreateExplainabilityInput,
        output_schema = types.CreateExplainabilityOutput,
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
        input_schema = types.CreateExplainabilityExportInput,
        output_schema = types.CreateExplainabilityExportOutput,
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
        input_schema = types.CreateForecastInput,
        output_schema = types.CreateForecastOutput,
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
        input_schema = types.CreateForecastExportJobInput,
        output_schema = types.CreateForecastExportJobOutput,
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
        input_schema = types.CreateMonitorInput,
        output_schema = types.CreateMonitorOutput,
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
        input_schema = types.CreatePredictorInput,
        output_schema = types.CreatePredictorOutput,
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
        input_schema = types.CreatePredictorBacktestExportJobInput,
        output_schema = types.CreatePredictorBacktestExportJobOutput,
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
        input_schema = types.CreateWhatIfAnalysisInput,
        output_schema = types.CreateWhatIfAnalysisOutput,
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
        input_schema = types.CreateWhatIfForecastInput,
        output_schema = types.CreateWhatIfForecastOutput,
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
        input_schema = types.CreateWhatIfForecastExportInput,
        output_schema = types.CreateWhatIfForecastExportOutput,
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
        input_schema = types.DeleteDatasetInput,
        output_schema = types.DeleteDatasetOutput,
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
        input_schema = types.DeleteDatasetGroupInput,
        output_schema = types.DeleteDatasetGroupOutput,
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
        input_schema = types.DeleteDatasetImportJobInput,
        output_schema = types.DeleteDatasetImportJobOutput,
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
        input_schema = types.DeleteExplainabilityInput,
        output_schema = types.DeleteExplainabilityOutput,
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
        input_schema = types.DeleteExplainabilityExportInput,
        output_schema = types.DeleteExplainabilityExportOutput,
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
        input_schema = types.DeleteForecastInput,
        output_schema = types.DeleteForecastOutput,
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
        input_schema = types.DeleteForecastExportJobInput,
        output_schema = types.DeleteForecastExportJobOutput,
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
        input_schema = types.DeleteMonitorInput,
        output_schema = types.DeleteMonitorOutput,
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
        input_schema = types.DeletePredictorInput,
        output_schema = types.DeletePredictorOutput,
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
        input_schema = types.DeletePredictorBacktestExportJobInput,
        output_schema = types.DeletePredictorBacktestExportJobOutput,
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
        input_schema = types.DeleteResourceTreeInput,
        output_schema = types.DeleteResourceTreeOutput,
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
        input_schema = types.DeleteWhatIfAnalysisInput,
        output_schema = types.DeleteWhatIfAnalysisOutput,
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
        input_schema = types.DeleteWhatIfForecastInput,
        output_schema = types.DeleteWhatIfForecastOutput,
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
        input_schema = types.DeleteWhatIfForecastExportInput,
        output_schema = types.DeleteWhatIfForecastExportOutput,
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
        input_schema = types.DescribeAutoPredictorInput,
        output_schema = types.DescribeAutoPredictorOutput,
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
        input_schema = types.DescribeDatasetInput,
        output_schema = types.DescribeDatasetOutput,
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
        input_schema = types.DescribeDatasetGroupInput,
        output_schema = types.DescribeDatasetGroupOutput,
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
        input_schema = types.DescribeDatasetImportJobInput,
        output_schema = types.DescribeDatasetImportJobOutput,
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
        input_schema = types.DescribeExplainabilityInput,
        output_schema = types.DescribeExplainabilityOutput,
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
        input_schema = types.DescribeExplainabilityExportInput,
        output_schema = types.DescribeExplainabilityExportOutput,
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
        input_schema = types.DescribeForecastInput,
        output_schema = types.DescribeForecastOutput,
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
        input_schema = types.DescribeForecastExportJobInput,
        output_schema = types.DescribeForecastExportJobOutput,
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
        input_schema = types.DescribeMonitorInput,
        output_schema = types.DescribeMonitorOutput,
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
        input_schema = types.DescribePredictorInput,
        output_schema = types.DescribePredictorOutput,
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
        input_schema = types.DescribePredictorBacktestExportJobInput,
        output_schema = types.DescribePredictorBacktestExportJobOutput,
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
        input_schema = types.DescribeWhatIfAnalysisInput,
        output_schema = types.DescribeWhatIfAnalysisOutput,
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
        input_schema = types.DescribeWhatIfForecastInput,
        output_schema = types.DescribeWhatIfForecastOutput,
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
        input_schema = types.DescribeWhatIfForecastExportInput,
        output_schema = types.DescribeWhatIfForecastExportOutput,
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
        input_schema = types.GetAccuracyMetricsInput,
        output_schema = types.GetAccuracyMetricsOutput,
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
        input_schema = types.ListDatasetGroupsInput,
        output_schema = types.ListDatasetGroupsOutput,
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
        input_schema = types.ListDatasetImportJobsInput,
        output_schema = types.ListDatasetImportJobsOutput,
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
        input_schema = types.ListDatasetsInput,
        output_schema = types.ListDatasetsOutput,
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
        input_schema = types.ListExplainabilitiesInput,
        output_schema = types.ListExplainabilitiesOutput,
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
        input_schema = types.ListExplainabilityExportsInput,
        output_schema = types.ListExplainabilityExportsOutput,
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
        input_schema = types.ListForecastExportJobsInput,
        output_schema = types.ListForecastExportJobsOutput,
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
        input_schema = types.ListForecastsInput,
        output_schema = types.ListForecastsOutput,
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
        input_schema = types.ListMonitorEvaluationsInput,
        output_schema = types.ListMonitorEvaluationsOutput,
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
        input_schema = types.ListMonitorsInput,
        output_schema = types.ListMonitorsOutput,
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
        input_schema = types.ListPredictorBacktestExportJobsInput,
        output_schema = types.ListPredictorBacktestExportJobsOutput,
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
        input_schema = types.ListPredictorsInput,
        output_schema = types.ListPredictorsOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.ListWhatIfAnalysesInput,
        output_schema = types.ListWhatIfAnalysesOutput,
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
        input_schema = types.ListWhatIfForecastExportsInput,
        output_schema = types.ListWhatIfForecastExportsOutput,
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
        input_schema = types.ListWhatIfForecastsInput,
        output_schema = types.ListWhatIfForecastsOutput,
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
        input_schema = types.ResumeResourceInput,
        output_schema = types.ResumeResourceOutput,
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
        input_schema = types.StopResourceInput,
        output_schema = types.StopResourceOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
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
        input_schema = types.UpdateDatasetGroupInput,
        output_schema = types.UpdateDatasetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
