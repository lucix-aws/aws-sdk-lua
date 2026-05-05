local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listClusterSnapshots.
function M.pages_list_cluster_snapshots(client, input)
    return paginator.pages(client, "listClusterSnapshots", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "snapshots",
    })
end

--- Returns an item iterator for listClusterSnapshots.
function M.items_list_cluster_snapshots(client, input)
    return paginator.items(client, "listClusterSnapshots", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "snapshots",
    })
end

--- Returns a page iterator for listClusters.
function M.pages_list_clusters(client, input)
    return paginator.pages(client, "listClusters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "clusters",
    })
end

--- Returns an item iterator for listClusters.
function M.items_list_clusters(client, input)
    return paginator.items(client, "listClusters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "clusters",
    })
end

--- Returns a page iterator for listPendingMaintenanceActions.
function M.pages_list_pending_maintenance_actions(client, input)
    return paginator.pages(client, "listPendingMaintenanceActions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "resourcePendingMaintenanceActions",
    })
end

--- Returns an item iterator for listPendingMaintenanceActions.
function M.items_list_pending_maintenance_actions(client, input)
    return paginator.items(client, "listPendingMaintenanceActions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "resourcePendingMaintenanceActions",
    })
end

return M
