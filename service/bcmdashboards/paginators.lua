local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listDashboards.
function M.pages_list_dashboards(client, input)
    return paginator.pages(client, "listDashboards", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dashboards",
    })
end

--- Returns an item iterator for listDashboards.
function M.items_list_dashboards(client, input)
    return paginator.items(client, "listDashboards", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dashboards",
    })
end

--- Returns a page iterator for listScheduledReports.
function M.pages_list_scheduled_reports(client, input)
    return paginator.pages(client, "listScheduledReports", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "scheduledReports",
    })
end

--- Returns an item iterator for listScheduledReports.
function M.items_list_scheduled_reports(client, input)
    return paginator.items(client, "listScheduledReports", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "scheduledReports",
    })
end

return M
