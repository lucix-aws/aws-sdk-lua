local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("costexplorer.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("costexplorer.types")

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
        input_schema = types.CreateAnomalyMonitorInput,
        output_schema = types.CreateAnomalyMonitorOutput,
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
        input_schema = types.CreateAnomalySubscriptionInput,
        output_schema = types.CreateAnomalySubscriptionOutput,
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
        input_schema = types.CreateCostCategoryDefinitionInput,
        output_schema = types.CreateCostCategoryDefinitionOutput,
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
        input_schema = types.DeleteAnomalyMonitorInput,
        output_schema = types.DeleteAnomalyMonitorOutput,
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
        input_schema = types.DeleteAnomalySubscriptionInput,
        output_schema = types.DeleteAnomalySubscriptionOutput,
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
        input_schema = types.DeleteCostCategoryDefinitionInput,
        output_schema = types.DeleteCostCategoryDefinitionOutput,
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
        input_schema = types.DescribeCostCategoryDefinitionInput,
        output_schema = types.DescribeCostCategoryDefinitionOutput,
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
        input_schema = types.GetAnomaliesInput,
        output_schema = types.GetAnomaliesOutput,
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
        input_schema = types.GetAnomalyMonitorsInput,
        output_schema = types.GetAnomalyMonitorsOutput,
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
        input_schema = types.GetAnomalySubscriptionsInput,
        output_schema = types.GetAnomalySubscriptionsOutput,
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
        input_schema = types.GetApproximateUsageRecordsInput,
        output_schema = types.GetApproximateUsageRecordsOutput,
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
        input_schema = types.GetCommitmentPurchaseAnalysisInput,
        output_schema = types.GetCommitmentPurchaseAnalysisOutput,
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
        input_schema = types.GetCostAndUsageInput,
        output_schema = types.GetCostAndUsageOutput,
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
        input_schema = types.GetCostAndUsageComparisonsInput,
        output_schema = types.GetCostAndUsageComparisonsOutput,
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
        input_schema = types.GetCostAndUsageWithResourcesInput,
        output_schema = types.GetCostAndUsageWithResourcesOutput,
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
        input_schema = types.GetCostCategoriesInput,
        output_schema = types.GetCostCategoriesOutput,
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
        input_schema = types.GetCostComparisonDriversInput,
        output_schema = types.GetCostComparisonDriversOutput,
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
        input_schema = types.GetCostForecastInput,
        output_schema = types.GetCostForecastOutput,
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
        input_schema = types.GetDimensionValuesInput,
        output_schema = types.GetDimensionValuesOutput,
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
        input_schema = types.GetReservationCoverageInput,
        output_schema = types.GetReservationCoverageOutput,
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
        input_schema = types.GetReservationPurchaseRecommendationInput,
        output_schema = types.GetReservationPurchaseRecommendationOutput,
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
        input_schema = types.GetReservationUtilizationInput,
        output_schema = types.GetReservationUtilizationOutput,
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
        input_schema = types.GetRightsizingRecommendationInput,
        output_schema = types.GetRightsizingRecommendationOutput,
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
        input_schema = types.GetSavingsPlanPurchaseRecommendationDetailsInput,
        output_schema = types.GetSavingsPlanPurchaseRecommendationDetailsOutput,
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
        input_schema = types.GetSavingsPlansCoverageInput,
        output_schema = types.GetSavingsPlansCoverageOutput,
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
        input_schema = types.GetSavingsPlansPurchaseRecommendationInput,
        output_schema = types.GetSavingsPlansPurchaseRecommendationOutput,
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
        input_schema = types.GetSavingsPlansUtilizationInput,
        output_schema = types.GetSavingsPlansUtilizationOutput,
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
        input_schema = types.GetSavingsPlansUtilizationDetailsInput,
        output_schema = types.GetSavingsPlansUtilizationDetailsOutput,
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
        input_schema = types.GetTagsInput,
        output_schema = types.GetTagsOutput,
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
        input_schema = types.GetUsageForecastInput,
        output_schema = types.GetUsageForecastOutput,
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
        input_schema = types.ListCommitmentPurchaseAnalysesInput,
        output_schema = types.ListCommitmentPurchaseAnalysesOutput,
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
        input_schema = types.ListCostAllocationTagBackfillHistoryInput,
        output_schema = types.ListCostAllocationTagBackfillHistoryOutput,
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
        input_schema = types.ListCostAllocationTagsInput,
        output_schema = types.ListCostAllocationTagsOutput,
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
        input_schema = types.ListCostCategoryDefinitionsInput,
        output_schema = types.ListCostCategoryDefinitionsOutput,
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
        input_schema = types.ListCostCategoryResourceAssociationsInput,
        output_schema = types.ListCostCategoryResourceAssociationsOutput,
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
        input_schema = types.ListSavingsPlansPurchaseRecommendationGenerationInput,
        output_schema = types.ListSavingsPlansPurchaseRecommendationGenerationOutput,
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

function Client:provideAnomalyFeedback(input, options)
    return self:invokeOperation(input, {
        name = "ProvideAnomalyFeedback",
        input_schema = types.ProvideAnomalyFeedbackInput,
        output_schema = types.ProvideAnomalyFeedbackOutput,
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
        input_schema = types.StartCommitmentPurchaseAnalysisInput,
        output_schema = types.StartCommitmentPurchaseAnalysisOutput,
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
        input_schema = types.StartCostAllocationTagBackfillInput,
        output_schema = types.StartCostAllocationTagBackfillOutput,
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
        input_schema = types.StartSavingsPlansPurchaseRecommendationGenerationInput,
        output_schema = types.StartSavingsPlansPurchaseRecommendationGenerationOutput,
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

function Client:updateAnomalyMonitor(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAnomalyMonitor",
        input_schema = types.UpdateAnomalyMonitorInput,
        output_schema = types.UpdateAnomalyMonitorOutput,
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
        input_schema = types.UpdateAnomalySubscriptionInput,
        output_schema = types.UpdateAnomalySubscriptionOutput,
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
        input_schema = types.UpdateCostAllocationTagsStatusInput,
        output_schema = types.UpdateCostAllocationTagsStatusOutput,
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
        input_schema = types.UpdateCostCategoryDefinitionInput,
        output_schema = types.UpdateCostCategoryDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
