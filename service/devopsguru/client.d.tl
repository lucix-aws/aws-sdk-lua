local types = require("devopsguru.types")

local record Client
    addNotificationChannel: function(Client, types.AddNotificationChannelInput): types.AddNotificationChannelOutput, table
    deleteInsight: function(Client, types.DeleteInsightInput): types.DeleteInsightOutput, table
    describeAccountHealth: function(Client, types.DescribeAccountHealthInput): types.DescribeAccountHealthOutput, table
    describeAccountOverview: function(Client, types.DescribeAccountOverviewInput): types.DescribeAccountOverviewOutput, table
    describeAnomaly: function(Client, types.DescribeAnomalyInput): types.DescribeAnomalyOutput, table
    describeEventSourcesConfig: function(Client, types.DescribeEventSourcesConfigInput): types.DescribeEventSourcesConfigOutput, table
    describeFeedback: function(Client, types.DescribeFeedbackInput): types.DescribeFeedbackOutput, table
    describeInsight: function(Client, types.DescribeInsightInput): types.DescribeInsightOutput, table
    describeOrganizationHealth: function(Client, types.DescribeOrganizationHealthInput): types.DescribeOrganizationHealthOutput, table
    describeOrganizationOverview: function(Client, types.DescribeOrganizationOverviewInput): types.DescribeOrganizationOverviewOutput, table
    describeOrganizationResourceCollectionHealth: function(Client, types.DescribeOrganizationResourceCollectionHealthInput): types.DescribeOrganizationResourceCollectionHealthOutput, table
    describeResourceCollectionHealth: function(Client, types.DescribeResourceCollectionHealthInput): types.DescribeResourceCollectionHealthOutput, table
    describeServiceIntegration: function(Client, types.DescribeServiceIntegrationInput): types.DescribeServiceIntegrationOutput, table
    getCostEstimation: function(Client, types.GetCostEstimationInput): types.GetCostEstimationOutput, table
    getResourceCollection: function(Client, types.GetResourceCollectionInput): types.GetResourceCollectionOutput, table
    listAnomaliesForInsight: function(Client, types.ListAnomaliesForInsightInput): types.ListAnomaliesForInsightOutput, table
    listAnomalousLogGroups: function(Client, types.ListAnomalousLogGroupsInput): types.ListAnomalousLogGroupsOutput, table
    listEvents: function(Client, types.ListEventsInput): types.ListEventsOutput, table
    listInsights: function(Client, types.ListInsightsInput): types.ListInsightsOutput, table
    listMonitoredResources: function(Client, types.ListMonitoredResourcesInput): types.ListMonitoredResourcesOutput, table
    listNotificationChannels: function(Client, types.ListNotificationChannelsInput): types.ListNotificationChannelsOutput, table
    listOrganizationInsights: function(Client, types.ListOrganizationInsightsInput): types.ListOrganizationInsightsOutput, table
    listRecommendations: function(Client, types.ListRecommendationsInput): types.ListRecommendationsOutput, table
    putFeedback: function(Client, types.PutFeedbackInput): types.PutFeedbackOutput, table
    removeNotificationChannel: function(Client, types.RemoveNotificationChannelInput): types.RemoveNotificationChannelOutput, table
    searchInsights: function(Client, types.SearchInsightsInput): types.SearchInsightsOutput, table
    searchOrganizationInsights: function(Client, types.SearchOrganizationInsightsInput): types.SearchOrganizationInsightsOutput, table
    startCostEstimation: function(Client, types.StartCostEstimationInput): types.StartCostEstimationOutput, table
    updateEventSourcesConfig: function(Client, types.UpdateEventSourcesConfigInput): types.UpdateEventSourcesConfigOutput, table
    updateResourceCollection: function(Client, types.UpdateResourceCollectionInput): types.UpdateResourceCollectionOutput, table
    updateServiceIntegration: function(Client, types.UpdateServiceIntegrationInput): types.UpdateServiceIntegrationOutput, table
end

local record M
    new: function(table): Client
end

return M
