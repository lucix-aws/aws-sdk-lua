local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeCacheClusters.
function M.pages_describe_cache_clusters(client, input)
    return paginator.pages(client, "describeCacheClusters", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "CacheClusters",
    })
end

--- Returns an item iterator for describeCacheClusters.
function M.items_describe_cache_clusters(client, input)
    return paginator.items(client, "describeCacheClusters", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "CacheClusters",
    })
end

--- Returns a page iterator for describeCacheEngineVersions.
function M.pages_describe_cache_engine_versions(client, input)
    return paginator.pages(client, "describeCacheEngineVersions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "CacheEngineVersions",
    })
end

--- Returns an item iterator for describeCacheEngineVersions.
function M.items_describe_cache_engine_versions(client, input)
    return paginator.items(client, "describeCacheEngineVersions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "CacheEngineVersions",
    })
end

--- Returns a page iterator for describeCacheParameterGroups.
function M.pages_describe_cache_parameter_groups(client, input)
    return paginator.pages(client, "describeCacheParameterGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "CacheParameterGroups",
    })
end

--- Returns an item iterator for describeCacheParameterGroups.
function M.items_describe_cache_parameter_groups(client, input)
    return paginator.items(client, "describeCacheParameterGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "CacheParameterGroups",
    })
end

--- Returns a page iterator for describeCacheParameters.
function M.pages_describe_cache_parameters(client, input)
    return paginator.pages(client, "describeCacheParameters", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Parameters",
    })
end

--- Returns an item iterator for describeCacheParameters.
function M.items_describe_cache_parameters(client, input)
    return paginator.items(client, "describeCacheParameters", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Parameters",
    })
end

--- Returns a page iterator for describeCacheSecurityGroups.
function M.pages_describe_cache_security_groups(client, input)
    return paginator.pages(client, "describeCacheSecurityGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "CacheSecurityGroups",
    })
end

--- Returns an item iterator for describeCacheSecurityGroups.
function M.items_describe_cache_security_groups(client, input)
    return paginator.items(client, "describeCacheSecurityGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "CacheSecurityGroups",
    })
end

--- Returns a page iterator for describeCacheSubnetGroups.
function M.pages_describe_cache_subnet_groups(client, input)
    return paginator.pages(client, "describeCacheSubnetGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "CacheSubnetGroups",
    })
end

--- Returns an item iterator for describeCacheSubnetGroups.
function M.items_describe_cache_subnet_groups(client, input)
    return paginator.items(client, "describeCacheSubnetGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "CacheSubnetGroups",
    })
end

--- Returns a page iterator for describeEngineDefaultParameters.
function M.pages_describe_engine_default_parameters(client, input)
    return paginator.pages(client, "describeEngineDefaultParameters", input, {
        input_token = "Marker",
        output_token = "EngineDefaults.Marker",
        items = "EngineDefaults.Parameters",
    })
end

--- Returns an item iterator for describeEngineDefaultParameters.
function M.items_describe_engine_default_parameters(client, input)
    return paginator.items(client, "describeEngineDefaultParameters", input, {
        input_token = "Marker",
        output_token = "EngineDefaults.Marker",
        items = "EngineDefaults.Parameters",
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

--- Returns a page iterator for describeGlobalReplicationGroups.
function M.pages_describe_global_replication_groups(client, input)
    return paginator.pages(client, "describeGlobalReplicationGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "GlobalReplicationGroups",
    })
end

--- Returns an item iterator for describeGlobalReplicationGroups.
function M.items_describe_global_replication_groups(client, input)
    return paginator.items(client, "describeGlobalReplicationGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "GlobalReplicationGroups",
    })
end

--- Returns a page iterator for describeReplicationGroups.
function M.pages_describe_replication_groups(client, input)
    return paginator.pages(client, "describeReplicationGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReplicationGroups",
    })
end

--- Returns an item iterator for describeReplicationGroups.
function M.items_describe_replication_groups(client, input)
    return paginator.items(client, "describeReplicationGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReplicationGroups",
    })
end

--- Returns a page iterator for describeReservedCacheNodes.
function M.pages_describe_reserved_cache_nodes(client, input)
    return paginator.pages(client, "describeReservedCacheNodes", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReservedCacheNodes",
    })
end

--- Returns an item iterator for describeReservedCacheNodes.
function M.items_describe_reserved_cache_nodes(client, input)
    return paginator.items(client, "describeReservedCacheNodes", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReservedCacheNodes",
    })
end

--- Returns a page iterator for describeReservedCacheNodesOfferings.
function M.pages_describe_reserved_cache_nodes_offerings(client, input)
    return paginator.pages(client, "describeReservedCacheNodesOfferings", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReservedCacheNodesOfferings",
    })
end

--- Returns an item iterator for describeReservedCacheNodesOfferings.
function M.items_describe_reserved_cache_nodes_offerings(client, input)
    return paginator.items(client, "describeReservedCacheNodesOfferings", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReservedCacheNodesOfferings",
    })
end

--- Returns a page iterator for describeServerlessCacheSnapshots.
function M.pages_describe_serverless_cache_snapshots(client, input)
    return paginator.pages(client, "describeServerlessCacheSnapshots", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ServerlessCacheSnapshots",
    })
end

--- Returns an item iterator for describeServerlessCacheSnapshots.
function M.items_describe_serverless_cache_snapshots(client, input)
    return paginator.items(client, "describeServerlessCacheSnapshots", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ServerlessCacheSnapshots",
    })
end

--- Returns a page iterator for describeServerlessCaches.
function M.pages_describe_serverless_caches(client, input)
    return paginator.pages(client, "describeServerlessCaches", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ServerlessCaches",
    })
end

--- Returns an item iterator for describeServerlessCaches.
function M.items_describe_serverless_caches(client, input)
    return paginator.items(client, "describeServerlessCaches", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ServerlessCaches",
    })
end

--- Returns a page iterator for describeServiceUpdates.
function M.pages_describe_service_updates(client, input)
    return paginator.pages(client, "describeServiceUpdates", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ServiceUpdates",
    })
end

--- Returns an item iterator for describeServiceUpdates.
function M.items_describe_service_updates(client, input)
    return paginator.items(client, "describeServiceUpdates", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ServiceUpdates",
    })
end

--- Returns a page iterator for describeSnapshots.
function M.pages_describe_snapshots(client, input)
    return paginator.pages(client, "describeSnapshots", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Snapshots",
    })
end

--- Returns an item iterator for describeSnapshots.
function M.items_describe_snapshots(client, input)
    return paginator.items(client, "describeSnapshots", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Snapshots",
    })
end

--- Returns a page iterator for describeUpdateActions.
function M.pages_describe_update_actions(client, input)
    return paginator.pages(client, "describeUpdateActions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "UpdateActions",
    })
end

--- Returns an item iterator for describeUpdateActions.
function M.items_describe_update_actions(client, input)
    return paginator.items(client, "describeUpdateActions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "UpdateActions",
    })
end

--- Returns a page iterator for describeUserGroups.
function M.pages_describe_user_groups(client, input)
    return paginator.pages(client, "describeUserGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "UserGroups",
    })
end

--- Returns an item iterator for describeUserGroups.
function M.items_describe_user_groups(client, input)
    return paginator.items(client, "describeUserGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "UserGroups",
    })
end

--- Returns a page iterator for describeUsers.
function M.pages_describe_users(client, input)
    return paginator.pages(client, "describeUsers", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Users",
    })
end

--- Returns an item iterator for describeUsers.
function M.items_describe_users(client, input)
    return paginator.items(client, "describeUsers", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Users",
    })
end

return M
