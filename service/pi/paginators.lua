local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeDimensionKeys.
function M.pages_describe_dimension_keys(client, input)
    return paginator.pages(client, "describeDimensionKeys", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for getResourceMetrics.
function M.pages_get_resource_metrics(client, input)
    return paginator.pages(client, "getResourceMetrics", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listAvailableResourceDimensions.
function M.pages_list_available_resource_dimensions(client, input)
    return paginator.pages(client, "listAvailableResourceDimensions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listAvailableResourceMetrics.
function M.pages_list_available_resource_metrics(client, input)
    return paginator.pages(client, "listAvailableResourceMetrics", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listPerformanceAnalysisReports.
function M.pages_list_performance_analysis_reports(client, input)
    return paginator.pages(client, "listPerformanceAnalysisReports", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
