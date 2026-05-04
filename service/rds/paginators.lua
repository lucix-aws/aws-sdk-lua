local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeBlueGreenDeployments.
function M.pages_describe_blue_green_deployments(client, input)
    return paginator.pages(client, "describeBlueGreenDeployments", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "BlueGreenDeployments",
    })
end

--- Returns an item iterator for describeBlueGreenDeployments.
function M.items_describe_blue_green_deployments(client, input)
    return paginator.items(client, "describeBlueGreenDeployments", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "BlueGreenDeployments",
    })
end

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

--- Returns a page iterator for describeDBClusterAutomatedBackups.
function M.pages_describe_d_b_cluster_automated_backups(client, input)
    return paginator.pages(client, "describeDBClusterAutomatedBackups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBClusterAutomatedBackups",
    })
end

--- Returns an item iterator for describeDBClusterAutomatedBackups.
function M.items_describe_d_b_cluster_automated_backups(client, input)
    return paginator.items(client, "describeDBClusterAutomatedBackups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBClusterAutomatedBackups",
    })
end

--- Returns a page iterator for describeDBClusterBacktracks.
function M.pages_describe_d_b_cluster_backtracks(client, input)
    return paginator.pages(client, "describeDBClusterBacktracks", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBClusterBacktracks",
    })
end

--- Returns an item iterator for describeDBClusterBacktracks.
function M.items_describe_d_b_cluster_backtracks(client, input)
    return paginator.items(client, "describeDBClusterBacktracks", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBClusterBacktracks",
    })
end

--- Returns a page iterator for describeDBClusterEndpoints.
function M.pages_describe_d_b_cluster_endpoints(client, input)
    return paginator.pages(client, "describeDBClusterEndpoints", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBClusterEndpoints",
    })
end

--- Returns an item iterator for describeDBClusterEndpoints.
function M.items_describe_d_b_cluster_endpoints(client, input)
    return paginator.items(client, "describeDBClusterEndpoints", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBClusterEndpoints",
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

--- Returns a page iterator for describeDBInstanceAutomatedBackups.
function M.pages_describe_d_b_instance_automated_backups(client, input)
    return paginator.pages(client, "describeDBInstanceAutomatedBackups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBInstanceAutomatedBackups",
    })
end

--- Returns an item iterator for describeDBInstanceAutomatedBackups.
function M.items_describe_d_b_instance_automated_backups(client, input)
    return paginator.items(client, "describeDBInstanceAutomatedBackups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBInstanceAutomatedBackups",
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

--- Returns a page iterator for describeDBLogFiles.
function M.pages_describe_d_b_log_files(client, input)
    return paginator.pages(client, "describeDBLogFiles", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DescribeDBLogFiles",
    })
end

--- Returns an item iterator for describeDBLogFiles.
function M.items_describe_d_b_log_files(client, input)
    return paginator.items(client, "describeDBLogFiles", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DescribeDBLogFiles",
    })
end

--- Returns a page iterator for describeDBMajorEngineVersions.
function M.pages_describe_d_b_major_engine_versions(client, input)
    return paginator.pages(client, "describeDBMajorEngineVersions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBMajorEngineVersions",
    })
end

--- Returns an item iterator for describeDBMajorEngineVersions.
function M.items_describe_d_b_major_engine_versions(client, input)
    return paginator.items(client, "describeDBMajorEngineVersions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBMajorEngineVersions",
    })
end

--- Returns a page iterator for describeDBParameterGroups.
function M.pages_describe_d_b_parameter_groups(client, input)
    return paginator.pages(client, "describeDBParameterGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBParameterGroups",
    })
end

--- Returns an item iterator for describeDBParameterGroups.
function M.items_describe_d_b_parameter_groups(client, input)
    return paginator.items(client, "describeDBParameterGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBParameterGroups",
    })
end

--- Returns a page iterator for describeDBParameters.
function M.pages_describe_d_b_parameters(client, input)
    return paginator.pages(client, "describeDBParameters", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Parameters",
    })
end

--- Returns an item iterator for describeDBParameters.
function M.items_describe_d_b_parameters(client, input)
    return paginator.items(client, "describeDBParameters", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Parameters",
    })
end

--- Returns a page iterator for describeDBProxies.
function M.pages_describe_d_b_proxies(client, input)
    return paginator.pages(client, "describeDBProxies", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBProxies",
    })
end

--- Returns an item iterator for describeDBProxies.
function M.items_describe_d_b_proxies(client, input)
    return paginator.items(client, "describeDBProxies", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBProxies",
    })
end

--- Returns a page iterator for describeDBProxyEndpoints.
function M.pages_describe_d_b_proxy_endpoints(client, input)
    return paginator.pages(client, "describeDBProxyEndpoints", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBProxyEndpoints",
    })
end

--- Returns an item iterator for describeDBProxyEndpoints.
function M.items_describe_d_b_proxy_endpoints(client, input)
    return paginator.items(client, "describeDBProxyEndpoints", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBProxyEndpoints",
    })
end

--- Returns a page iterator for describeDBProxyTargetGroups.
function M.pages_describe_d_b_proxy_target_groups(client, input)
    return paginator.pages(client, "describeDBProxyTargetGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "TargetGroups",
    })
end

--- Returns an item iterator for describeDBProxyTargetGroups.
function M.items_describe_d_b_proxy_target_groups(client, input)
    return paginator.items(client, "describeDBProxyTargetGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "TargetGroups",
    })
end

--- Returns a page iterator for describeDBProxyTargets.
function M.pages_describe_d_b_proxy_targets(client, input)
    return paginator.pages(client, "describeDBProxyTargets", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Targets",
    })
end

--- Returns an item iterator for describeDBProxyTargets.
function M.items_describe_d_b_proxy_targets(client, input)
    return paginator.items(client, "describeDBProxyTargets", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Targets",
    })
end

--- Returns a page iterator for describeDBRecommendations.
function M.pages_describe_d_b_recommendations(client, input)
    return paginator.pages(client, "describeDBRecommendations", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBRecommendations",
    })
end

--- Returns an item iterator for describeDBRecommendations.
function M.items_describe_d_b_recommendations(client, input)
    return paginator.items(client, "describeDBRecommendations", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBRecommendations",
    })
end

--- Returns a page iterator for describeDBSecurityGroups.
function M.pages_describe_d_b_security_groups(client, input)
    return paginator.pages(client, "describeDBSecurityGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBSecurityGroups",
    })
end

--- Returns an item iterator for describeDBSecurityGroups.
function M.items_describe_d_b_security_groups(client, input)
    return paginator.items(client, "describeDBSecurityGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBSecurityGroups",
    })
end

--- Returns a page iterator for describeDBSnapshotTenantDatabases.
function M.pages_describe_d_b_snapshot_tenant_databases(client, input)
    return paginator.pages(client, "describeDBSnapshotTenantDatabases", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBSnapshotTenantDatabases",
    })
end

--- Returns an item iterator for describeDBSnapshotTenantDatabases.
function M.items_describe_d_b_snapshot_tenant_databases(client, input)
    return paginator.items(client, "describeDBSnapshotTenantDatabases", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBSnapshotTenantDatabases",
    })
end

--- Returns a page iterator for describeDBSnapshots.
function M.pages_describe_d_b_snapshots(client, input)
    return paginator.pages(client, "describeDBSnapshots", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBSnapshots",
    })
end

--- Returns an item iterator for describeDBSnapshots.
function M.items_describe_d_b_snapshots(client, input)
    return paginator.items(client, "describeDBSnapshots", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DBSnapshots",
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

--- Returns a page iterator for describeEngineDefaultClusterParameters.
function M.pages_describe_engine_default_cluster_parameters(client, input)
    return paginator.pages(client, "describeEngineDefaultClusterParameters", input, {
        input_token = "Marker",
        output_token = "EngineDefaults.Marker",
        items = "EngineDefaults.Parameters",
    })
end

--- Returns an item iterator for describeEngineDefaultClusterParameters.
function M.items_describe_engine_default_cluster_parameters(client, input)
    return paginator.items(client, "describeEngineDefaultClusterParameters", input, {
        input_token = "Marker",
        output_token = "EngineDefaults.Marker",
        items = "EngineDefaults.Parameters",
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

--- Returns a page iterator for describeExportTasks.
function M.pages_describe_export_tasks(client, input)
    return paginator.pages(client, "describeExportTasks", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ExportTasks",
    })
end

--- Returns an item iterator for describeExportTasks.
function M.items_describe_export_tasks(client, input)
    return paginator.items(client, "describeExportTasks", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ExportTasks",
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

--- Returns a page iterator for describeIntegrations.
function M.pages_describe_integrations(client, input)
    return paginator.pages(client, "describeIntegrations", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Integrations",
    })
end

--- Returns an item iterator for describeIntegrations.
function M.items_describe_integrations(client, input)
    return paginator.items(client, "describeIntegrations", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Integrations",
    })
end

--- Returns a page iterator for describeOptionGroupOptions.
function M.pages_describe_option_group_options(client, input)
    return paginator.pages(client, "describeOptionGroupOptions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "OptionGroupOptions",
    })
end

--- Returns an item iterator for describeOptionGroupOptions.
function M.items_describe_option_group_options(client, input)
    return paginator.items(client, "describeOptionGroupOptions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "OptionGroupOptions",
    })
end

--- Returns a page iterator for describeOptionGroups.
function M.pages_describe_option_groups(client, input)
    return paginator.pages(client, "describeOptionGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "OptionGroupsList",
    })
end

--- Returns an item iterator for describeOptionGroups.
function M.items_describe_option_groups(client, input)
    return paginator.items(client, "describeOptionGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "OptionGroupsList",
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

--- Returns a page iterator for describeReservedDBInstances.
function M.pages_describe_reserved_d_b_instances(client, input)
    return paginator.pages(client, "describeReservedDBInstances", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReservedDBInstances",
    })
end

--- Returns an item iterator for describeReservedDBInstances.
function M.items_describe_reserved_d_b_instances(client, input)
    return paginator.items(client, "describeReservedDBInstances", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReservedDBInstances",
    })
end

--- Returns a page iterator for describeReservedDBInstancesOfferings.
function M.pages_describe_reserved_d_b_instances_offerings(client, input)
    return paginator.pages(client, "describeReservedDBInstancesOfferings", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReservedDBInstancesOfferings",
    })
end

--- Returns an item iterator for describeReservedDBInstancesOfferings.
function M.items_describe_reserved_d_b_instances_offerings(client, input)
    return paginator.items(client, "describeReservedDBInstancesOfferings", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReservedDBInstancesOfferings",
    })
end

--- Returns a page iterator for describeServerlessV2PlatformVersions.
function M.pages_describe_serverless_v2_platform_versions(client, input)
    return paginator.pages(client, "describeServerlessV2PlatformVersions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ServerlessV2PlatformVersions",
    })
end

--- Returns an item iterator for describeServerlessV2PlatformVersions.
function M.items_describe_serverless_v2_platform_versions(client, input)
    return paginator.items(client, "describeServerlessV2PlatformVersions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ServerlessV2PlatformVersions",
    })
end

--- Returns a page iterator for describeSourceRegions.
function M.pages_describe_source_regions(client, input)
    return paginator.pages(client, "describeSourceRegions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "SourceRegions",
    })
end

--- Returns an item iterator for describeSourceRegions.
function M.items_describe_source_regions(client, input)
    return paginator.items(client, "describeSourceRegions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "SourceRegions",
    })
end

--- Returns a page iterator for describeTenantDatabases.
function M.pages_describe_tenant_databases(client, input)
    return paginator.pages(client, "describeTenantDatabases", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "TenantDatabases",
    })
end

--- Returns an item iterator for describeTenantDatabases.
function M.items_describe_tenant_databases(client, input)
    return paginator.items(client, "describeTenantDatabases", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "TenantDatabases",
    })
end

--- Returns a page iterator for downloadDBLogFilePortion.
function M.pages_download_d_b_log_file_portion(client, input)
    return paginator.pages(client, "downloadDBLogFilePortion", input, {
        input_token = "Marker",
        output_token = "Marker",
    })
end

return M
