local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("costexplorer.endpoint_rules")
local schemas = require("costexplorer.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSInsightsIndexService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ce", signing_region = cfg.region } }
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

function Client:createAnomalyMonitor(input, options)
    return self:invokeOperation(input, {
        name = "CreateAnomalyMonitor",
        input_schema = schemas.CreateAnomalyMonitorInput,
        output_schema = schemas.CreateAnomalyMonitorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAnomalySubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateAnomalySubscription",
        input_schema = schemas.CreateAnomalySubscriptionInput,
        output_schema = schemas.CreateAnomalySubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCostCategoryDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateCostCategoryDefinition",
        input_schema = schemas.CreateCostCategoryDefinitionInput,
        output_schema = schemas.CreateCostCategoryDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAnomalyMonitor(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAnomalyMonitor",
        input_schema = schemas.DeleteAnomalyMonitorInput,
        output_schema = schemas.DeleteAnomalyMonitorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAnomalySubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAnomalySubscription",
        input_schema = schemas.DeleteAnomalySubscriptionInput,
        output_schema = schemas.DeleteAnomalySubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCostCategoryDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCostCategoryDefinition",
        input_schema = schemas.DeleteCostCategoryDefinitionInput,
        output_schema = schemas.DeleteCostCategoryDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCostCategoryDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCostCategoryDefinition",
        input_schema = schemas.DescribeCostCategoryDefinitionInput,
        output_schema = schemas.DescribeCostCategoryDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAnomalies(input, options)
    return self:invokeOperation(input, {
        name = "GetAnomalies",
        input_schema = schemas.GetAnomaliesInput,
        output_schema = schemas.GetAnomaliesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAnomalyMonitors(input, options)
    return self:invokeOperation(input, {
        name = "GetAnomalyMonitors",
        input_schema = schemas.GetAnomalyMonitorsInput,
        output_schema = schemas.GetAnomalyMonitorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAnomalySubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "GetAnomalySubscriptions",
        input_schema = schemas.GetAnomalySubscriptionsInput,
        output_schema = schemas.GetAnomalySubscriptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApproximateUsageRecords(input, options)
    return self:invokeOperation(input, {
        name = "GetApproximateUsageRecords",
        input_schema = schemas.GetApproximateUsageRecordsInput,
        output_schema = schemas.GetApproximateUsageRecordsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCommitmentPurchaseAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "GetCommitmentPurchaseAnalysis",
        input_schema = schemas.GetCommitmentPurchaseAnalysisInput,
        output_schema = schemas.GetCommitmentPurchaseAnalysisOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCostAndUsage(input, options)
    return self:invokeOperation(input, {
        name = "GetCostAndUsage",
        input_schema = schemas.GetCostAndUsageInput,
        output_schema = schemas.GetCostAndUsageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCostAndUsageComparisons(input, options)
    return self:invokeOperation(input, {
        name = "GetCostAndUsageComparisons",
        input_schema = schemas.GetCostAndUsageComparisonsInput,
        output_schema = schemas.GetCostAndUsageComparisonsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCostAndUsageWithResources(input, options)
    return self:invokeOperation(input, {
        name = "GetCostAndUsageWithResources",
        input_schema = schemas.GetCostAndUsageWithResourcesInput,
        output_schema = schemas.GetCostAndUsageWithResourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCostCategories(input, options)
    return self:invokeOperation(input, {
        name = "GetCostCategories",
        input_schema = schemas.GetCostCategoriesInput,
        output_schema = schemas.GetCostCategoriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCostComparisonDrivers(input, options)
    return self:invokeOperation(input, {
        name = "GetCostComparisonDrivers",
        input_schema = schemas.GetCostComparisonDriversInput,
        output_schema = schemas.GetCostComparisonDriversOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCostForecast(input, options)
    return self:invokeOperation(input, {
        name = "GetCostForecast",
        input_schema = schemas.GetCostForecastInput,
        output_schema = schemas.GetCostForecastOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDimensionValues(input, options)
    return self:invokeOperation(input, {
        name = "GetDimensionValues",
        input_schema = schemas.GetDimensionValuesInput,
        output_schema = schemas.GetDimensionValuesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReservationCoverage(input, options)
    return self:invokeOperation(input, {
        name = "GetReservationCoverage",
        input_schema = schemas.GetReservationCoverageInput,
        output_schema = schemas.GetReservationCoverageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReservationPurchaseRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "GetReservationPurchaseRecommendation",
        input_schema = schemas.GetReservationPurchaseRecommendationInput,
        output_schema = schemas.GetReservationPurchaseRecommendationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReservationUtilization(input, options)
    return self:invokeOperation(input, {
        name = "GetReservationUtilization",
        input_schema = schemas.GetReservationUtilizationInput,
        output_schema = schemas.GetReservationUtilizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRightsizingRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "GetRightsizingRecommendation",
        input_schema = schemas.GetRightsizingRecommendationInput,
        output_schema = schemas.GetRightsizingRecommendationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSavingsPlanPurchaseRecommendationDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetSavingsPlanPurchaseRecommendationDetails",
        input_schema = schemas.GetSavingsPlanPurchaseRecommendationDetailsInput,
        output_schema = schemas.GetSavingsPlanPurchaseRecommendationDetailsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSavingsPlansCoverage(input, options)
    return self:invokeOperation(input, {
        name = "GetSavingsPlansCoverage",
        input_schema = schemas.GetSavingsPlansCoverageInput,
        output_schema = schemas.GetSavingsPlansCoverageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSavingsPlansPurchaseRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "GetSavingsPlansPurchaseRecommendation",
        input_schema = schemas.GetSavingsPlansPurchaseRecommendationInput,
        output_schema = schemas.GetSavingsPlansPurchaseRecommendationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSavingsPlansUtilization(input, options)
    return self:invokeOperation(input, {
        name = "GetSavingsPlansUtilization",
        input_schema = schemas.GetSavingsPlansUtilizationInput,
        output_schema = schemas.GetSavingsPlansUtilizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSavingsPlansUtilizationDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetSavingsPlansUtilizationDetails",
        input_schema = schemas.GetSavingsPlansUtilizationDetailsInput,
        output_schema = schemas.GetSavingsPlansUtilizationDetailsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTags(input, options)
    return self:invokeOperation(input, {
        name = "GetTags",
        input_schema = schemas.GetTagsInput,
        output_schema = schemas.GetTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUsageForecast(input, options)
    return self:invokeOperation(input, {
        name = "GetUsageForecast",
        input_schema = schemas.GetUsageForecastInput,
        output_schema = schemas.GetUsageForecastOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCommitmentPurchaseAnalyses(input, options)
    return self:invokeOperation(input, {
        name = "ListCommitmentPurchaseAnalyses",
        input_schema = schemas.ListCommitmentPurchaseAnalysesInput,
        output_schema = schemas.ListCommitmentPurchaseAnalysesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCostAllocationTagBackfillHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListCostAllocationTagBackfillHistory",
        input_schema = schemas.ListCostAllocationTagBackfillHistoryInput,
        output_schema = schemas.ListCostAllocationTagBackfillHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCostAllocationTags(input, options)
    return self:invokeOperation(input, {
        name = "ListCostAllocationTags",
        input_schema = schemas.ListCostAllocationTagsInput,
        output_schema = schemas.ListCostAllocationTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCostCategoryDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListCostCategoryDefinitions",
        input_schema = schemas.ListCostCategoryDefinitionsInput,
        output_schema = schemas.ListCostCategoryDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCostCategoryResourceAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListCostCategoryResourceAssociations",
        input_schema = schemas.ListCostCategoryResourceAssociationsInput,
        output_schema = schemas.ListCostCategoryResourceAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSavingsPlansPurchaseRecommendationGeneration(input, options)
    return self:invokeOperation(input, {
        name = "ListSavingsPlansPurchaseRecommendationGeneration",
        input_schema = schemas.ListSavingsPlansPurchaseRecommendationGenerationInput,
        output_schema = schemas.ListSavingsPlansPurchaseRecommendationGenerationOutput,
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

function Client:provideAnomalyFeedback(input, options)
    return self:invokeOperation(input, {
        name = "ProvideAnomalyFeedback",
        input_schema = schemas.ProvideAnomalyFeedbackInput,
        output_schema = schemas.ProvideAnomalyFeedbackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startCommitmentPurchaseAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "StartCommitmentPurchaseAnalysis",
        input_schema = schemas.StartCommitmentPurchaseAnalysisInput,
        output_schema = schemas.StartCommitmentPurchaseAnalysisOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startCostAllocationTagBackfill(input, options)
    return self:invokeOperation(input, {
        name = "StartCostAllocationTagBackfill",
        input_schema = schemas.StartCostAllocationTagBackfillInput,
        output_schema = schemas.StartCostAllocationTagBackfillOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSavingsPlansPurchaseRecommendationGeneration(input, options)
    return self:invokeOperation(input, {
        name = "StartSavingsPlansPurchaseRecommendationGeneration",
        input_schema = schemas.StartSavingsPlansPurchaseRecommendationGenerationInput,
        output_schema = schemas.StartSavingsPlansPurchaseRecommendationGenerationOutput,
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

function Client:updateAnomalyMonitor(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAnomalyMonitor",
        input_schema = schemas.UpdateAnomalyMonitorInput,
        output_schema = schemas.UpdateAnomalyMonitorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAnomalySubscription(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAnomalySubscription",
        input_schema = schemas.UpdateAnomalySubscriptionInput,
        output_schema = schemas.UpdateAnomalySubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCostAllocationTagsStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCostAllocationTagsStatus",
        input_schema = schemas.UpdateCostAllocationTagsStatusInput,
        output_schema = schemas.UpdateCostAllocationTagsStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCostCategoryDefinition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCostCategoryDefinition",
        input_schema = schemas.UpdateCostCategoryDefinitionInput,
        output_schema = schemas.UpdateCostCategoryDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
