local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("migrationhubstrategy.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("migrationhubstrategy.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSMigrationHubStrategyRecommendation"
    cfg.signing_name = "migrationhub-strategy"
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

function Client:getApplicationComponentDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetApplicationComponentDetails",
        input_schema = types.GetApplicationComponentDetailsInput,
        output_schema = types.GetApplicationComponentDetailsOutput,
        http_method = "GET",
        http_path = "/get-applicationcomponent-details/{applicationComponentId}",
    }, options)
end

function Client:getApplicationComponentStrategies(input, options)
    return self:invokeOperation(input, {
        name = "GetApplicationComponentStrategies",
        input_schema = types.GetApplicationComponentStrategiesInput,
        output_schema = types.GetApplicationComponentStrategiesOutput,
        http_method = "GET",
        http_path = "/get-applicationcomponent-strategies/{applicationComponentId}",
    }, options)
end

function Client:getAssessment(input, options)
    return self:invokeOperation(input, {
        name = "GetAssessment",
        input_schema = types.GetAssessmentInput,
        output_schema = types.GetAssessmentOutput,
        http_method = "GET",
        http_path = "/get-assessment/{id}",
    }, options)
end

function Client:getImportFileTask(input, options)
    return self:invokeOperation(input, {
        name = "GetImportFileTask",
        input_schema = types.GetImportFileTaskInput,
        output_schema = types.GetImportFileTaskOutput,
        http_method = "GET",
        http_path = "/get-import-file-task/{id}",
    }, options)
end

function Client:getLatestAssessmentId(input, options)
    return self:invokeOperation(input, {
        name = "GetLatestAssessmentId",
        input_schema = types.GetLatestAssessmentIdInput,
        output_schema = types.GetLatestAssessmentIdOutput,
        http_method = "GET",
        http_path = "/get-latest-assessment-id",
    }, options)
end

function Client:getPortfolioPreferences(input, options)
    return self:invokeOperation(input, {
        name = "GetPortfolioPreferences",
        input_schema = types.GetPortfolioPreferencesInput,
        output_schema = types.GetPortfolioPreferencesOutput,
        http_method = "GET",
        http_path = "/get-portfolio-preferences",
    }, options)
end

function Client:getPortfolioSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetPortfolioSummary",
        input_schema = types.GetPortfolioSummaryInput,
        output_schema = types.GetPortfolioSummaryOutput,
        http_method = "GET",
        http_path = "/get-portfolio-summary",
    }, options)
end

function Client:getRecommendationReportDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetRecommendationReportDetails",
        input_schema = types.GetRecommendationReportDetailsInput,
        output_schema = types.GetRecommendationReportDetailsOutput,
        http_method = "GET",
        http_path = "/get-recommendation-report-details/{id}",
    }, options)
end

function Client:getServerDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetServerDetails",
        input_schema = types.GetServerDetailsInput,
        output_schema = types.GetServerDetailsOutput,
        http_method = "GET",
        http_path = "/get-server-details/{serverId}",
    }, options)
end

function Client:getServerStrategies(input, options)
    return self:invokeOperation(input, {
        name = "GetServerStrategies",
        input_schema = types.GetServerStrategiesInput,
        output_schema = types.GetServerStrategiesOutput,
        http_method = "GET",
        http_path = "/get-server-strategies/{serverId}",
    }, options)
end

function Client:listAnalyzableServers(input, options)
    return self:invokeOperation(input, {
        name = "ListAnalyzableServers",
        input_schema = types.ListAnalyzableServersInput,
        output_schema = types.ListAnalyzableServersOutput,
        http_method = "POST",
        http_path = "/list-analyzable-servers",
    }, options)
end

function Client:listApplicationComponents(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationComponents",
        input_schema = types.ListApplicationComponentsInput,
        output_schema = types.ListApplicationComponentsOutput,
        http_method = "POST",
        http_path = "/list-applicationcomponents",
    }, options)
end

function Client:listCollectors(input, options)
    return self:invokeOperation(input, {
        name = "ListCollectors",
        input_schema = types.ListCollectorsInput,
        output_schema = types.ListCollectorsOutput,
        http_method = "GET",
        http_path = "/list-collectors",
    }, options)
end

function Client:listImportFileTask(input, options)
    return self:invokeOperation(input, {
        name = "ListImportFileTask",
        input_schema = types.ListImportFileTaskInput,
        output_schema = types.ListImportFileTaskOutput,
        http_method = "GET",
        http_path = "/list-import-file-task",
    }, options)
end

function Client:listServers(input, options)
    return self:invokeOperation(input, {
        name = "ListServers",
        input_schema = types.ListServersInput,
        output_schema = types.ListServersOutput,
        http_method = "POST",
        http_path = "/list-servers",
    }, options)
end

function Client:putPortfolioPreferences(input, options)
    return self:invokeOperation(input, {
        name = "PutPortfolioPreferences",
        input_schema = types.PutPortfolioPreferencesInput,
        output_schema = types.PutPortfolioPreferencesOutput,
        http_method = "POST",
        http_path = "/put-portfolio-preferences",
    }, options)
end

function Client:startAssessment(input, options)
    return self:invokeOperation(input, {
        name = "StartAssessment",
        input_schema = types.StartAssessmentInput,
        output_schema = types.StartAssessmentOutput,
        http_method = "POST",
        http_path = "/start-assessment",
    }, options)
end

function Client:startImportFileTask(input, options)
    return self:invokeOperation(input, {
        name = "StartImportFileTask",
        input_schema = types.StartImportFileTaskInput,
        output_schema = types.StartImportFileTaskOutput,
        http_method = "POST",
        http_path = "/start-import-file-task",
    }, options)
end

function Client:startRecommendationReportGeneration(input, options)
    return self:invokeOperation(input, {
        name = "StartRecommendationReportGeneration",
        input_schema = types.StartRecommendationReportGenerationInput,
        output_schema = types.StartRecommendationReportGenerationOutput,
        http_method = "POST",
        http_path = "/start-recommendation-report-generation",
    }, options)
end

function Client:stopAssessment(input, options)
    return self:invokeOperation(input, {
        name = "StopAssessment",
        input_schema = types.StopAssessmentInput,
        output_schema = types.StopAssessmentOutput,
        http_method = "POST",
        http_path = "/stop-assessment",
    }, options)
end

function Client:updateApplicationComponentConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplicationComponentConfig",
        input_schema = types.UpdateApplicationComponentConfigInput,
        output_schema = types.UpdateApplicationComponentConfigOutput,
        http_method = "POST",
        http_path = "/update-applicationcomponent-config/",
    }, options)
end

function Client:updateServerConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServerConfig",
        input_schema = types.UpdateServerConfigInput,
        output_schema = types.UpdateServerConfigOutput,
        http_method = "POST",
        http_path = "/update-server-config/",
    }, options)
end

return M
