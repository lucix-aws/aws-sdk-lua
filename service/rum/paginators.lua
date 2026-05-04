local paginator = require("paginator")

local M = {}

--- Returns a page iterator for batchGetRumMetricDefinitions.
function M.pages_batch_get_rum_metric_definitions(client, input)
    return paginator.pages(client, "batchGetRumMetricDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "MetricDefinitions",
    })
end

--- Returns an item iterator for batchGetRumMetricDefinitions.
function M.items_batch_get_rum_metric_definitions(client, input)
    return paginator.items(client, "batchGetRumMetricDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "MetricDefinitions",
    })
end

--- Returns a page iterator for getAppMonitorData.
function M.pages_get_app_monitor_data(client, input)
    return paginator.pages(client, "getAppMonitorData", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Events",
    })
end

--- Returns an item iterator for getAppMonitorData.
function M.items_get_app_monitor_data(client, input)
    return paginator.items(client, "getAppMonitorData", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Events",
    })
end

--- Returns a page iterator for listAppMonitors.
function M.pages_list_app_monitors(client, input)
    return paginator.pages(client, "listAppMonitors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AppMonitorSummaries",
    })
end

--- Returns an item iterator for listAppMonitors.
function M.items_list_app_monitors(client, input)
    return paginator.items(client, "listAppMonitors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AppMonitorSummaries",
    })
end

--- Returns a page iterator for listRumMetricsDestinations.
function M.pages_list_rum_metrics_destinations(client, input)
    return paginator.pages(client, "listRumMetricsDestinations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Destinations",
    })
end

--- Returns an item iterator for listRumMetricsDestinations.
function M.items_list_rum_metrics_destinations(client, input)
    return paginator.items(client, "listRumMetricsDestinations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Destinations",
    })
end

return M
