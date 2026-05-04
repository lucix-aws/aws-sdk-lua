local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listKxChangesets.
function M.pages_list_kx_changesets(client, input)
    return paginator.pages(client, "listKxChangesets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listKxClusterNodes.
function M.pages_list_kx_cluster_nodes(client, input)
    return paginator.pages(client, "listKxClusterNodes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listKxDatabases.
function M.pages_list_kx_databases(client, input)
    return paginator.pages(client, "listKxDatabases", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listKxDataviews.
function M.pages_list_kx_dataviews(client, input)
    return paginator.pages(client, "listKxDataviews", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

--- Returns a page iterator for listKxEnvironments.
function M.pages_list_kx_environments(client, input)
    return paginator.pages(client, "listKxEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "environments",
    })
end

--- Returns an item iterator for listKxEnvironments.
function M.items_list_kx_environments(client, input)
    return paginator.items(client, "listKxEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "environments",
    })
end

--- Returns a page iterator for listKxScalingGroups.
function M.pages_list_kx_scaling_groups(client, input)
    return paginator.pages(client, "listKxScalingGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
    })
end

return M
