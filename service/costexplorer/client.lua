



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("costexplorer.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("costexplorer.schemas")
local traits = require("smithy.traits")
local types = require("costexplorer.types")
local sdk_defaults = require("aws.sdk_defaults")





















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSInsightsIndexService"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ce", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:createAnomalyMonitor(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAnomalyMonitor, input, options)
end

function C:createAnomalySubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAnomalySubscription, input, options)
end

function C:createCostCategoryDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCostCategoryDefinition, input, options)
end

function C:deleteAnomalyMonitor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAnomalyMonitor, input, options)
end

function C:deleteAnomalySubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAnomalySubscription, input, options)
end

function C:deleteCostCategoryDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCostCategoryDefinition, input, options)
end

function C:describeCostCategoryDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCostCategoryDefinition, input, options)
end

function C:getAnomalies(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAnomalies, input, options)
end

function C:getAnomalyMonitors(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAnomalyMonitors, input, options)
end

function C:getAnomalySubscriptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAnomalySubscriptions, input, options)
end

function C:getApproximateUsageRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApproximateUsageRecords, input, options)
end

function C:getCommitmentPurchaseAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCommitmentPurchaseAnalysis, input, options)
end

function C:getCostAndUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCostAndUsage, input, options)
end

function C:getCostAndUsageComparisons(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCostAndUsageComparisons, input, options)
end

function C:getCostAndUsageWithResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCostAndUsageWithResources, input, options)
end

function C:getCostCategories(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCostCategories, input, options)
end

function C:getCostComparisonDrivers(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCostComparisonDrivers, input, options)
end

function C:getCostForecast(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCostForecast, input, options)
end

function C:getDimensionValues(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDimensionValues, input, options)
end

function C:getReservationCoverage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReservationCoverage, input, options)
end

function C:getReservationPurchaseRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReservationPurchaseRecommendation, input, options)
end

function C:getReservationUtilization(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReservationUtilization, input, options)
end

function C:getRightsizingRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRightsizingRecommendation, input, options)
end

function C:getSavingsPlanPurchaseRecommendationDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSavingsPlanPurchaseRecommendationDetails, input, options)
end

function C:getSavingsPlansCoverage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSavingsPlansCoverage, input, options)
end

function C:getSavingsPlansPurchaseRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSavingsPlansPurchaseRecommendation, input, options)
end

function C:getSavingsPlansUtilization(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSavingsPlansUtilization, input, options)
end

function C:getSavingsPlansUtilizationDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSavingsPlansUtilizationDetails, input, options)
end

function C:getTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTags, input, options)
end

function C:getUsageForecast(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUsageForecast, input, options)
end

function C:listCommitmentPurchaseAnalyses(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCommitmentPurchaseAnalyses, input, options)
end

function C:listCostAllocationTagBackfillHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCostAllocationTagBackfillHistory, input, options)
end

function C:listCostAllocationTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCostAllocationTags, input, options)
end

function C:listCostCategoryDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCostCategoryDefinitions, input, options)
end

function C:listCostCategoryResourceAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCostCategoryResourceAssociations, input, options)
end

function C:listSavingsPlansPurchaseRecommendationGeneration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSavingsPlansPurchaseRecommendationGeneration, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:provideAnomalyFeedback(input, options)
   return self:invokeOperation(schemas.Service, schemas.ProvideAnomalyFeedback, input, options)
end

function C:startCommitmentPurchaseAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCommitmentPurchaseAnalysis, input, options)
end

function C:startCostAllocationTagBackfill(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCostAllocationTagBackfill, input, options)
end

function C:startSavingsPlansPurchaseRecommendationGeneration(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSavingsPlansPurchaseRecommendationGeneration, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAnomalyMonitor(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAnomalyMonitor, input, options)
end

function C:updateAnomalySubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAnomalySubscription, input, options)
end

function C:updateCostAllocationTagsStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCostAllocationTagsStatus, input, options)
end

function C:updateCostCategoryDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCostCategoryDefinition, input, options)
end

return M
