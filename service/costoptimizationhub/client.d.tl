local types = require("costoptimizationhub.types")

local record Client
    getPreferences: function(Client, types.GetPreferencesInput): types.GetPreferencesOutput, table
    getRecommendation: function(Client, types.GetRecommendationInput): types.GetRecommendationOutput, table
    listEfficiencyMetrics: function(Client, types.ListEfficiencyMetricsInput): types.ListEfficiencyMetricsOutput, table
    listEnrollmentStatuses: function(Client, types.ListEnrollmentStatusesInput): types.ListEnrollmentStatusesOutput, table
    listRecommendations: function(Client, types.ListRecommendationsInput): types.ListRecommendationsOutput, table
    listRecommendationSummaries: function(Client, types.ListRecommendationSummariesInput): types.ListRecommendationSummariesOutput, table
    updateEnrollmentStatus: function(Client, types.UpdateEnrollmentStatusInput): types.UpdateEnrollmentStatusOutput, table
    updatePreferences: function(Client, types.UpdatePreferencesInput): types.UpdatePreferencesOutput, table
end

local record M
    new: function(table): Client
end

return M
