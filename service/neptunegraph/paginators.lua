local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listExportTasks.
function M.pages_list_export_tasks(client, input)
    return paginator.pages(client, "listExportTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tasks",
    })
end

--- Returns an item iterator for listExportTasks.
function M.items_list_export_tasks(client, input)
    return paginator.items(client, "listExportTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tasks",
    })
end

--- Returns a page iterator for listGraphSnapshots.
function M.pages_list_graph_snapshots(client, input)
    return paginator.pages(client, "listGraphSnapshots", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "graphSnapshots",
    })
end

--- Returns an item iterator for listGraphSnapshots.
function M.items_list_graph_snapshots(client, input)
    return paginator.items(client, "listGraphSnapshots", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "graphSnapshots",
    })
end

--- Returns a page iterator for listGraphs.
function M.pages_list_graphs(client, input)
    return paginator.pages(client, "listGraphs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "graphs",
    })
end

--- Returns an item iterator for listGraphs.
function M.items_list_graphs(client, input)
    return paginator.items(client, "listGraphs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "graphs",
    })
end

--- Returns a page iterator for listImportTasks.
function M.pages_list_import_tasks(client, input)
    return paginator.pages(client, "listImportTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tasks",
    })
end

--- Returns an item iterator for listImportTasks.
function M.items_list_import_tasks(client, input)
    return paginator.items(client, "listImportTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tasks",
    })
end

--- Returns a page iterator for listPrivateGraphEndpoints.
function M.pages_list_private_graph_endpoints(client, input)
    return paginator.pages(client, "listPrivateGraphEndpoints", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "privateGraphEndpoints",
    })
end

--- Returns an item iterator for listPrivateGraphEndpoints.
function M.items_list_private_graph_endpoints(client, input)
    return paginator.items(client, "listPrivateGraphEndpoints", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "privateGraphEndpoints",
    })
end

return M
