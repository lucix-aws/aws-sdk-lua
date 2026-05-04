local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listEfficiencyMetrics.
function M.pages_list_efficiency_metrics(client, input)
    return paginator.pages(client, "listEfficiencyMetrics", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "efficiencyMetricsByGroup",
    })
end

--- Returns an item iterator for listEfficiencyMetrics.
function M.items_list_efficiency_metrics(client, input)
    return paginator.items(client, "listEfficiencyMetrics", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "efficiencyMetricsByGroup",
    })
end

--- Returns a page iterator for listEnrollmentStatuses.
function M.pages_list_enrollment_statuses(client, input)
    return paginator.pages(client, "listEnrollmentStatuses", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listEnrollmentStatuses.
function M.items_list_enrollment_statuses(client, input)
    return paginator.items(client, "listEnrollmentStatuses", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listRecommendationSummaries.
function M.pages_list_recommendation_summaries(client, input)
    return paginator.pages(client, "listRecommendationSummaries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listRecommendationSummaries.
function M.items_list_recommendation_summaries(client, input)
    return paginator.items(client, "listRecommendationSummaries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listRecommendations.
function M.pages_list_recommendations(client, input)
    return paginator.pages(client, "listRecommendations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listRecommendations.
function M.items_list_recommendations(client, input)
    return paginator.items(client, "listRecommendations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

return M
