local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getQueryResultsMonitorTopContributors.
function M.pages_get_query_results_monitor_top_contributors(client, input)
    return paginator.pages(client, "getQueryResultsMonitorTopContributors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "topContributors",
    })
end

--- Returns an item iterator for getQueryResultsMonitorTopContributors.
function M.items_get_query_results_monitor_top_contributors(client, input)
    return paginator.items(client, "getQueryResultsMonitorTopContributors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "topContributors",
    })
end

--- Returns a page iterator for getQueryResultsWorkloadInsightsTopContributors.
function M.pages_get_query_results_workload_insights_top_contributors(client, input)
    return paginator.pages(client, "getQueryResultsWorkloadInsightsTopContributors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "topContributors",
    })
end

--- Returns an item iterator for getQueryResultsWorkloadInsightsTopContributors.
function M.items_get_query_results_workload_insights_top_contributors(client, input)
    return paginator.items(client, "getQueryResultsWorkloadInsightsTopContributors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "topContributors",
    })
end

--- Returns a page iterator for getQueryResultsWorkloadInsightsTopContributorsData.
function M.pages_get_query_results_workload_insights_top_contributors_data(client, input)
    return paginator.pages(client, "getQueryResultsWorkloadInsightsTopContributorsData", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "datapoints",
    })
end

--- Returns an item iterator for getQueryResultsWorkloadInsightsTopContributorsData.
function M.items_get_query_results_workload_insights_top_contributors_data(client, input)
    return paginator.items(client, "getQueryResultsWorkloadInsightsTopContributorsData", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "datapoints",
    })
end

--- Returns a page iterator for listMonitors.
function M.pages_list_monitors(client, input)
    return paginator.pages(client, "listMonitors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "monitors",
    })
end

--- Returns an item iterator for listMonitors.
function M.items_list_monitors(client, input)
    return paginator.items(client, "listMonitors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "monitors",
    })
end

--- Returns a page iterator for listScopes.
function M.pages_list_scopes(client, input)
    return paginator.pages(client, "listScopes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "scopes",
    })
end

--- Returns an item iterator for listScopes.
function M.items_list_scopes(client, input)
    return paginator.items(client, "listScopes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "scopes",
    })
end

return M
