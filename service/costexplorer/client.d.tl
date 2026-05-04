local types = require("costexplorer.types")

local record Client
    createAnomalyMonitor: function(Client, types.CreateAnomalyMonitorInput): types.CreateAnomalyMonitorOutput, table
    createAnomalySubscription: function(Client, types.CreateAnomalySubscriptionInput): types.CreateAnomalySubscriptionOutput, table
    createCostCategoryDefinition: function(Client, types.CreateCostCategoryDefinitionInput): types.CreateCostCategoryDefinitionOutput, table
    deleteAnomalyMonitor: function(Client, types.DeleteAnomalyMonitorInput): types.DeleteAnomalyMonitorOutput, table
    deleteAnomalySubscription: function(Client, types.DeleteAnomalySubscriptionInput): types.DeleteAnomalySubscriptionOutput, table
    deleteCostCategoryDefinition: function(Client, types.DeleteCostCategoryDefinitionInput): types.DeleteCostCategoryDefinitionOutput, table
    describeCostCategoryDefinition: function(Client, types.DescribeCostCategoryDefinitionInput): types.DescribeCostCategoryDefinitionOutput, table
    getAnomalies: function(Client, types.GetAnomaliesInput): types.GetAnomaliesOutput, table
    getAnomalyMonitors: function(Client, types.GetAnomalyMonitorsInput): types.GetAnomalyMonitorsOutput, table
    getAnomalySubscriptions: function(Client, types.GetAnomalySubscriptionsInput): types.GetAnomalySubscriptionsOutput, table
    getApproximateUsageRecords: function(Client, types.GetApproximateUsageRecordsInput): types.GetApproximateUsageRecordsOutput, table
    getCommitmentPurchaseAnalysis: function(Client, types.GetCommitmentPurchaseAnalysisInput): types.GetCommitmentPurchaseAnalysisOutput, table
    getCostAndUsage: function(Client, types.GetCostAndUsageInput): types.GetCostAndUsageOutput, table
    getCostAndUsageComparisons: function(Client, types.GetCostAndUsageComparisonsInput): types.GetCostAndUsageComparisonsOutput, table
    getCostAndUsageWithResources: function(Client, types.GetCostAndUsageWithResourcesInput): types.GetCostAndUsageWithResourcesOutput, table
    getCostCategories: function(Client, types.GetCostCategoriesInput): types.GetCostCategoriesOutput, table
    getCostComparisonDrivers: function(Client, types.GetCostComparisonDriversInput): types.GetCostComparisonDriversOutput, table
    getCostForecast: function(Client, types.GetCostForecastInput): types.GetCostForecastOutput, table
    getDimensionValues: function(Client, types.GetDimensionValuesInput): types.GetDimensionValuesOutput, table
    getReservationCoverage: function(Client, types.GetReservationCoverageInput): types.GetReservationCoverageOutput, table
    getReservationPurchaseRecommendation: function(Client, types.GetReservationPurchaseRecommendationInput): types.GetReservationPurchaseRecommendationOutput, table
    getReservationUtilization: function(Client, types.GetReservationUtilizationInput): types.GetReservationUtilizationOutput, table
    getRightsizingRecommendation: function(Client, types.GetRightsizingRecommendationInput): types.GetRightsizingRecommendationOutput, table
    getSavingsPlanPurchaseRecommendationDetails: function(Client, types.GetSavingsPlanPurchaseRecommendationDetailsInput): types.GetSavingsPlanPurchaseRecommendationDetailsOutput, table
    getSavingsPlansCoverage: function(Client, types.GetSavingsPlansCoverageInput): types.GetSavingsPlansCoverageOutput, table
    getSavingsPlansPurchaseRecommendation: function(Client, types.GetSavingsPlansPurchaseRecommendationInput): types.GetSavingsPlansPurchaseRecommendationOutput, table
    getSavingsPlansUtilization: function(Client, types.GetSavingsPlansUtilizationInput): types.GetSavingsPlansUtilizationOutput, table
    getSavingsPlansUtilizationDetails: function(Client, types.GetSavingsPlansUtilizationDetailsInput): types.GetSavingsPlansUtilizationDetailsOutput, table
    getTags: function(Client, types.GetTagsInput): types.GetTagsOutput, table
    getUsageForecast: function(Client, types.GetUsageForecastInput): types.GetUsageForecastOutput, table
    listCommitmentPurchaseAnalyses: function(Client, types.ListCommitmentPurchaseAnalysesInput): types.ListCommitmentPurchaseAnalysesOutput, table
    listCostAllocationTagBackfillHistory: function(Client, types.ListCostAllocationTagBackfillHistoryInput): types.ListCostAllocationTagBackfillHistoryOutput, table
    listCostAllocationTags: function(Client, types.ListCostAllocationTagsInput): types.ListCostAllocationTagsOutput, table
    listCostCategoryDefinitions: function(Client, types.ListCostCategoryDefinitionsInput): types.ListCostCategoryDefinitionsOutput, table
    listCostCategoryResourceAssociations: function(Client, types.ListCostCategoryResourceAssociationsInput): types.ListCostCategoryResourceAssociationsOutput, table
    listSavingsPlansPurchaseRecommendationGeneration: function(Client, types.ListSavingsPlansPurchaseRecommendationGenerationInput): types.ListSavingsPlansPurchaseRecommendationGenerationOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    provideAnomalyFeedback: function(Client, types.ProvideAnomalyFeedbackInput): types.ProvideAnomalyFeedbackOutput, table
    startCommitmentPurchaseAnalysis: function(Client, types.StartCommitmentPurchaseAnalysisInput): types.StartCommitmentPurchaseAnalysisOutput, table
    startCostAllocationTagBackfill: function(Client, types.StartCostAllocationTagBackfillInput): types.StartCostAllocationTagBackfillOutput, table
    startSavingsPlansPurchaseRecommendationGeneration: function(Client, types.StartSavingsPlansPurchaseRecommendationGenerationInput): types.StartSavingsPlansPurchaseRecommendationGenerationOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAnomalyMonitor: function(Client, types.UpdateAnomalyMonitorInput): types.UpdateAnomalyMonitorOutput, table
    updateAnomalySubscription: function(Client, types.UpdateAnomalySubscriptionInput): types.UpdateAnomalySubscriptionOutput, table
    updateCostAllocationTagsStatus: function(Client, types.UpdateCostAllocationTagsStatusInput): types.UpdateCostAllocationTagsStatusOutput, table
    updateCostCategoryDefinition: function(Client, types.UpdateCostCategoryDefinitionInput): types.UpdateCostCategoryDefinitionOutput, table
end

local record M
    new: function(table): Client
end

return M
