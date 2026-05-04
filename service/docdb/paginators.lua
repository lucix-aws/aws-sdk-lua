local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeCertificates.
function M.pages_describe_certificates(client, input)
    return paginator.pages(client, "describeCertificates", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Certificates",
    })
end

--- Returns an item iterator for describeCertificates.
function M.items_describe_certificates(client, input)
    return paginator.items(client, "describeCertificates", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Certificates",
    })
end

--- Returns a page iterator for describeDBClusterParameterGroups.
function M.pages_describe_d_b_cluster_parameter_groups(client, input)
    return paginator.pages(client, "describeDBClusterParameterGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBClusterParameterGroups",
    })
end

--- Returns an item iterator for describeDBClusterParameterGroups.
function M.items_describe_d_b_cluster_parameter_groups(client, input)
    return paginator.items(client, "describeDBClusterParameterGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBClusterParameterGroups",
    })
end

--- Returns a page iterator for describeDBClusterParameters.
function M.pages_describe_d_b_cluster_parameters(client, input)
    return paginator.pages(client, "describeDBClusterParameters", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Parameters",
    })
end

--- Returns an item iterator for describeDBClusterParameters.
function M.items_describe_d_b_cluster_parameters(client, input)
    return paginator.items(client, "describeDBClusterParameters", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Parameters",
    })
end

--- Returns a page iterator for describeDBClusterSnapshots.
function M.pages_describe_d_b_cluster_snapshots(client, input)
    return paginator.pages(client, "describeDBClusterSnapshots", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBClusterSnapshots",
    })
end

--- Returns an item iterator for describeDBClusterSnapshots.
function M.items_describe_d_b_cluster_snapshots(client, input)
    return paginator.items(client, "describeDBClusterSnapshots", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBClusterSnapshots",
    })
end

--- Returns a page iterator for describeDBClusters.
function M.pages_describe_d_b_clusters(client, input)
    return paginator.pages(client, "describeDBClusters", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBClusters",
    })
end

--- Returns an item iterator for describeDBClusters.
function M.items_describe_d_b_clusters(client, input)
    return paginator.items(client, "describeDBClusters", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBClusters",
    })
end

--- Returns a page iterator for describeDBEngineVersions.
function M.pages_describe_d_b_engine_versions(client, input)
    return paginator.pages(client, "describeDBEngineVersions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBEngineVersions",
    })
end

--- Returns an item iterator for describeDBEngineVersions.
function M.items_describe_d_b_engine_versions(client, input)
    return paginator.items(client, "describeDBEngineVersions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBEngineVersions",
    })
end

--- Returns a page iterator for describeDBInstances.
function M.pages_describe_d_b_instances(client, input)
    return paginator.pages(client, "describeDBInstances", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBInstances",
    })
end

--- Returns an item iterator for describeDBInstances.
function M.items_describe_d_b_instances(client, input)
    return paginator.items(client, "describeDBInstances", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBInstances",
    })
end

--- Returns a page iterator for describeDBSubnetGroups.
function M.pages_describe_d_b_subnet_groups(client, input)
    return paginator.pages(client, "describeDBSubnetGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBSubnetGroups",
    })
end

--- Returns an item iterator for describeDBSubnetGroups.
function M.items_describe_d_b_subnet_groups(client, input)
    return paginator.items(client, "describeDBSubnetGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBSubnetGroups",
    })
end

--- Returns a page iterator for describeEventSubscriptions.
function M.pages_describe_event_subscriptions(client, input)
    return paginator.pages(client, "describeEventSubscriptions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "EventSubscriptionsList",
    })
end

--- Returns an item iterator for describeEventSubscriptions.
function M.items_describe_event_subscriptions(client, input)
    return paginator.items(client, "describeEventSubscriptions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "EventSubscriptionsList",
    })
end

--- Returns a page iterator for describeEvents.
function M.pages_describe_events(client, input)
    return paginator.pages(client, "describeEvents", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Events",
    })
end

--- Returns an item iterator for describeEvents.
function M.items_describe_events(client, input)
    return paginator.items(client, "describeEvents", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Events",
    })
end

--- Returns a page iterator for describeGlobalClusters.
function M.pages_describe_global_clusters(client, input)
    return paginator.pages(client, "describeGlobalClusters", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "GlobalClusters",
    })
end

--- Returns an item iterator for describeGlobalClusters.
function M.items_describe_global_clusters(client, input)
    return paginator.items(client, "describeGlobalClusters", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "GlobalClusters",
    })
end

--- Returns a page iterator for describeOrderableDBInstanceOptions.
function M.pages_describe_orderable_d_b_instance_options(client, input)
    return paginator.pages(client, "describeOrderableDBInstanceOptions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "OrderableDBInstanceOptions",
    })
end

--- Returns an item iterator for describeOrderableDBInstanceOptions.
function M.items_describe_orderable_d_b_instance_options(client, input)
    return paginator.items(client, "describeOrderableDBInstanceOptions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "OrderableDBInstanceOptions",
    })
end

--- Returns a page iterator for describePendingMaintenanceActions.
function M.pages_describe_pending_maintenance_actions(client, input)
    return paginator.pages(client, "describePendingMaintenanceActions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "PendingMaintenanceActions",
    })
end

--- Returns an item iterator for describePendingMaintenanceActions.
function M.items_describe_pending_maintenance_actions(client, input)
    return paginator.items(client, "describePendingMaintenanceActions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "PendingMaintenanceActions",
    })
end

return M
