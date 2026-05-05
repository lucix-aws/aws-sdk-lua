local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("migrationhubstrategy.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("migrationhubstrategy.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSMigrationHubStrategyRecommendation"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "migrationhub-strategy", signing_region = cfg.region } }
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

function Client:getApplicationComponentDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetApplicationComponentDetails",
        input_schema = schemas.GetApplicationComponentDetailsInput,
        output_schema = schemas.GetApplicationComponentDetailsOutput,
        http_method = "GET",
        http_path = "/get-applicationcomponent-details/{applicationComponentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApplicationComponentStrategies(input, options)
    return self:invokeOperation(input, {
        name = "GetApplicationComponentStrategies",
        input_schema = schemas.GetApplicationComponentStrategiesInput,
        output_schema = schemas.GetApplicationComponentStrategiesOutput,
        http_method = "GET",
        http_path = "/get-applicationcomponent-strategies/{applicationComponentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAssessment(input, options)
    return self:invokeOperation(input, {
        name = "GetAssessment",
        input_schema = schemas.GetAssessmentInput,
        output_schema = schemas.GetAssessmentOutput,
        http_method = "GET",
        http_path = "/get-assessment/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getImportFileTask(input, options)
    return self:invokeOperation(input, {
        name = "GetImportFileTask",
        input_schema = schemas.GetImportFileTaskInput,
        output_schema = schemas.GetImportFileTaskOutput,
        http_method = "GET",
        http_path = "/get-import-file-task/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLatestAssessmentId(input, options)
    return self:invokeOperation(input, {
        name = "GetLatestAssessmentId",
        input_schema = schemas.GetLatestAssessmentIdInput,
        output_schema = schemas.GetLatestAssessmentIdOutput,
        http_method = "GET",
        http_path = "/get-latest-assessment-id",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPortfolioPreferences(input, options)
    return self:invokeOperation(input, {
        name = "GetPortfolioPreferences",
        input_schema = schemas.GetPortfolioPreferencesInput,
        output_schema = schemas.GetPortfolioPreferencesOutput,
        http_method = "GET",
        http_path = "/get-portfolio-preferences",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPortfolioSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetPortfolioSummary",
        input_schema = schemas.GetPortfolioSummaryInput,
        output_schema = schemas.GetPortfolioSummaryOutput,
        http_method = "GET",
        http_path = "/get-portfolio-summary",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRecommendationReportDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetRecommendationReportDetails",
        input_schema = schemas.GetRecommendationReportDetailsInput,
        output_schema = schemas.GetRecommendationReportDetailsOutput,
        http_method = "GET",
        http_path = "/get-recommendation-report-details/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServerDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetServerDetails",
        input_schema = schemas.GetServerDetailsInput,
        output_schema = schemas.GetServerDetailsOutput,
        http_method = "GET",
        http_path = "/get-server-details/{serverId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServerStrategies(input, options)
    return self:invokeOperation(input, {
        name = "GetServerStrategies",
        input_schema = schemas.GetServerStrategiesInput,
        output_schema = schemas.GetServerStrategiesOutput,
        http_method = "GET",
        http_path = "/get-server-strategies/{serverId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAnalyzableServers(input, options)
    return self:invokeOperation(input, {
        name = "ListAnalyzableServers",
        input_schema = schemas.ListAnalyzableServersInput,
        output_schema = schemas.ListAnalyzableServersOutput,
        http_method = "POST",
        http_path = "/list-analyzable-servers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplicationComponents(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationComponents",
        input_schema = schemas.ListApplicationComponentsInput,
        output_schema = schemas.ListApplicationComponentsOutput,
        http_method = "POST",
        http_path = "/list-applicationcomponents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCollectors(input, options)
    return self:invokeOperation(input, {
        name = "ListCollectors",
        input_schema = schemas.ListCollectorsInput,
        output_schema = schemas.ListCollectorsOutput,
        http_method = "GET",
        http_path = "/list-collectors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImportFileTask(input, options)
    return self:invokeOperation(input, {
        name = "ListImportFileTask",
        input_schema = schemas.ListImportFileTaskInput,
        output_schema = schemas.ListImportFileTaskOutput,
        http_method = "GET",
        http_path = "/list-import-file-task",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServers(input, options)
    return self:invokeOperation(input, {
        name = "ListServers",
        input_schema = schemas.ListServersInput,
        output_schema = schemas.ListServersOutput,
        http_method = "POST",
        http_path = "/list-servers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putPortfolioPreferences(input, options)
    return self:invokeOperation(input, {
        name = "PutPortfolioPreferences",
        input_schema = schemas.PutPortfolioPreferencesInput,
        output_schema = schemas.PutPortfolioPreferencesOutput,
        http_method = "POST",
        http_path = "/put-portfolio-preferences",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startAssessment(input, options)
    return self:invokeOperation(input, {
        name = "StartAssessment",
        input_schema = schemas.StartAssessmentInput,
        output_schema = schemas.StartAssessmentOutput,
        http_method = "POST",
        http_path = "/start-assessment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startImportFileTask(input, options)
    return self:invokeOperation(input, {
        name = "StartImportFileTask",
        input_schema = schemas.StartImportFileTaskInput,
        output_schema = schemas.StartImportFileTaskOutput,
        http_method = "POST",
        http_path = "/start-import-file-task",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startRecommendationReportGeneration(input, options)
    return self:invokeOperation(input, {
        name = "StartRecommendationReportGeneration",
        input_schema = schemas.StartRecommendationReportGenerationInput,
        output_schema = schemas.StartRecommendationReportGenerationOutput,
        http_method = "POST",
        http_path = "/start-recommendation-report-generation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopAssessment(input, options)
    return self:invokeOperation(input, {
        name = "StopAssessment",
        input_schema = schemas.StopAssessmentInput,
        output_schema = schemas.StopAssessmentOutput,
        http_method = "POST",
        http_path = "/stop-assessment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApplicationComponentConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplicationComponentConfig",
        input_schema = schemas.UpdateApplicationComponentConfigInput,
        output_schema = schemas.UpdateApplicationComponentConfigOutput,
        http_method = "POST",
        http_path = "/update-applicationcomponent-config/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServerConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServerConfig",
        input_schema = schemas.UpdateServerConfigInput,
        output_schema = schemas.UpdateServerConfigOutput,
        http_method = "POST",
        http_path = "/update-server-config/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
