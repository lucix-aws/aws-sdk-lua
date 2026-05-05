local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listAutonomousVirtualMachines.
function M.pages_list_autonomous_virtual_machines(client, input)
    return paginator.pages(client, "listAutonomousVirtualMachines", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "autonomousVirtualMachines",
    })
end

--- Returns an item iterator for listAutonomousVirtualMachines.
function M.items_list_autonomous_virtual_machines(client, input)
    return paginator.items(client, "listAutonomousVirtualMachines", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "autonomousVirtualMachines",
    })
end

--- Returns a page iterator for listCloudAutonomousVmClusters.
function M.pages_list_cloud_autonomous_vm_clusters(client, input)
    return paginator.pages(client, "listCloudAutonomousVmClusters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "cloudAutonomousVmClusters",
    })
end

--- Returns an item iterator for listCloudAutonomousVmClusters.
function M.items_list_cloud_autonomous_vm_clusters(client, input)
    return paginator.items(client, "listCloudAutonomousVmClusters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "cloudAutonomousVmClusters",
    })
end

--- Returns a page iterator for listCloudExadataInfrastructures.
function M.pages_list_cloud_exadata_infrastructures(client, input)
    return paginator.pages(client, "listCloudExadataInfrastructures", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "cloudExadataInfrastructures",
    })
end

--- Returns an item iterator for listCloudExadataInfrastructures.
function M.items_list_cloud_exadata_infrastructures(client, input)
    return paginator.items(client, "listCloudExadataInfrastructures", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "cloudExadataInfrastructures",
    })
end

--- Returns a page iterator for listCloudVmClusters.
function M.pages_list_cloud_vm_clusters(client, input)
    return paginator.pages(client, "listCloudVmClusters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "cloudVmClusters",
    })
end

--- Returns an item iterator for listCloudVmClusters.
function M.items_list_cloud_vm_clusters(client, input)
    return paginator.items(client, "listCloudVmClusters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "cloudVmClusters",
    })
end

--- Returns a page iterator for listDbNodes.
function M.pages_list_db_nodes(client, input)
    return paginator.pages(client, "listDbNodes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dbNodes",
    })
end

--- Returns an item iterator for listDbNodes.
function M.items_list_db_nodes(client, input)
    return paginator.items(client, "listDbNodes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dbNodes",
    })
end

--- Returns a page iterator for listDbServers.
function M.pages_list_db_servers(client, input)
    return paginator.pages(client, "listDbServers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dbServers",
    })
end

--- Returns an item iterator for listDbServers.
function M.items_list_db_servers(client, input)
    return paginator.items(client, "listDbServers", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dbServers",
    })
end

--- Returns a page iterator for listDbSystemShapes.
function M.pages_list_db_system_shapes(client, input)
    return paginator.pages(client, "listDbSystemShapes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dbSystemShapes",
    })
end

--- Returns an item iterator for listDbSystemShapes.
function M.items_list_db_system_shapes(client, input)
    return paginator.items(client, "listDbSystemShapes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dbSystemShapes",
    })
end

--- Returns a page iterator for listGiVersions.
function M.pages_list_gi_versions(client, input)
    return paginator.pages(client, "listGiVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "giVersions",
    })
end

--- Returns an item iterator for listGiVersions.
function M.items_list_gi_versions(client, input)
    return paginator.items(client, "listGiVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "giVersions",
    })
end

--- Returns a page iterator for listOdbNetworks.
function M.pages_list_odb_networks(client, input)
    return paginator.pages(client, "listOdbNetworks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "odbNetworks",
    })
end

--- Returns an item iterator for listOdbNetworks.
function M.items_list_odb_networks(client, input)
    return paginator.items(client, "listOdbNetworks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "odbNetworks",
    })
end

--- Returns a page iterator for listOdbPeeringConnections.
function M.pages_list_odb_peering_connections(client, input)
    return paginator.pages(client, "listOdbPeeringConnections", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "odbPeeringConnections",
    })
end

--- Returns an item iterator for listOdbPeeringConnections.
function M.items_list_odb_peering_connections(client, input)
    return paginator.items(client, "listOdbPeeringConnections", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "odbPeeringConnections",
    })
end

--- Returns a page iterator for listSystemVersions.
function M.pages_list_system_versions(client, input)
    return paginator.pages(client, "listSystemVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "systemVersions",
    })
end

--- Returns an item iterator for listSystemVersions.
function M.items_list_system_versions(client, input)
    return paginator.items(client, "listSystemVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "systemVersions",
    })
end

return M
