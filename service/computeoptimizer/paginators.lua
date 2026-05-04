local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeRecommendationExportJobs.
function M.pages_describe_recommendation_export_jobs(client, input)
    return paginator.pages(client, "describeRecommendationExportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "recommendationExportJobs",
    })
end

--- Returns an item iterator for describeRecommendationExportJobs.
function M.items_describe_recommendation_export_jobs(client, input)
    return paginator.items(client, "describeRecommendationExportJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "recommendationExportJobs",
    })
end

--- Returns a page iterator for getEnrollmentStatusesForOrganization.
function M.pages_get_enrollment_statuses_for_organization(client, input)
    return paginator.pages(client, "getEnrollmentStatusesForOrganization", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "accountEnrollmentStatuses",
    })
end

--- Returns an item iterator for getEnrollmentStatusesForOrganization.
function M.items_get_enrollment_statuses_for_organization(client, input)
    return paginator.items(client, "getEnrollmentStatusesForOrganization", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "accountEnrollmentStatuses",
    })
end

--- Returns a page iterator for getLambdaFunctionRecommendations.
function M.pages_get_lambda_function_recommendations(client, input)
    return paginator.pages(client, "getLambdaFunctionRecommendations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "lambdaFunctionRecommendations",
    })
end

--- Returns an item iterator for getLambdaFunctionRecommendations.
function M.items_get_lambda_function_recommendations(client, input)
    return paginator.items(client, "getLambdaFunctionRecommendations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "lambdaFunctionRecommendations",
    })
end

--- Returns a page iterator for getRecommendationPreferences.
function M.pages_get_recommendation_preferences(client, input)
    return paginator.pages(client, "getRecommendationPreferences", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "recommendationPreferencesDetails",
    })
end

--- Returns an item iterator for getRecommendationPreferences.
function M.items_get_recommendation_preferences(client, input)
    return paginator.items(client, "getRecommendationPreferences", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "recommendationPreferencesDetails",
    })
end

--- Returns a page iterator for getRecommendationSummaries.
function M.pages_get_recommendation_summaries(client, input)
    return paginator.pages(client, "getRecommendationSummaries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "recommendationSummaries",
    })
end

--- Returns an item iterator for getRecommendationSummaries.
function M.items_get_recommendation_summaries(client, input)
    return paginator.items(client, "getRecommendationSummaries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "recommendationSummaries",
    })
end

return M
