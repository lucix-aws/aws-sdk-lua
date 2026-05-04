local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getQueryResults.
function M.pages_get_query_results(client, input)
    return paginator.pages(client, "getQueryResults", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listHealthEvents.
function M.pages_list_health_events(client, input)
    return paginator.pages(client, "listHealthEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "HealthEvents",
    })
end

--- Returns an item iterator for listHealthEvents.
function M.items_list_health_events(client, input)
    return paginator.items(client, "listHealthEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "HealthEvents",
    })
end

--- Returns a page iterator for listInternetEvents.
function M.pages_list_internet_events(client, input)
    return paginator.pages(client, "listInternetEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InternetEvents",
    })
end

--- Returns an item iterator for listInternetEvents.
function M.items_list_internet_events(client, input)
    return paginator.items(client, "listInternetEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InternetEvents",
    })
end

--- Returns a page iterator for listMonitors.
function M.pages_list_monitors(client, input)
    return paginator.pages(client, "listMonitors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Monitors",
    })
end

--- Returns an item iterator for listMonitors.
function M.items_list_monitors(client, input)
    return paginator.items(client, "listMonitors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Monitors",
    })
end

return M
