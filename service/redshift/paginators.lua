local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeClusterDbRevisions.
function M.pages_describe_cluster_db_revisions(client, input)
    return paginator.pages(client, "describeClusterDbRevisions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ClusterDbRevisions",
    })
end

--- Returns an item iterator for describeClusterDbRevisions.
function M.items_describe_cluster_db_revisions(client, input)
    return paginator.items(client, "describeClusterDbRevisions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ClusterDbRevisions",
    })
end

--- Returns a page iterator for describeClusterParameterGroups.
function M.pages_describe_cluster_parameter_groups(client, input)
    return paginator.pages(client, "describeClusterParameterGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ParameterGroups",
    })
end

--- Returns an item iterator for describeClusterParameterGroups.
function M.items_describe_cluster_parameter_groups(client, input)
    return paginator.items(client, "describeClusterParameterGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ParameterGroups",
    })
end

--- Returns a page iterator for describeClusterParameters.
function M.pages_describe_cluster_parameters(client, input)
    return paginator.pages(client, "describeClusterParameters", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Parameters",
    })
end

--- Returns an item iterator for describeClusterParameters.
function M.items_describe_cluster_parameters(client, input)
    return paginator.items(client, "describeClusterParameters", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Parameters",
    })
end

--- Returns a page iterator for describeClusterSecurityGroups.
function M.pages_describe_cluster_security_groups(client, input)
    return paginator.pages(client, "describeClusterSecurityGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ClusterSecurityGroups",
    })
end

--- Returns an item iterator for describeClusterSecurityGroups.
function M.items_describe_cluster_security_groups(client, input)
    return paginator.items(client, "describeClusterSecurityGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ClusterSecurityGroups",
    })
end

--- Returns a page iterator for describeClusterSnapshots.
function M.pages_describe_cluster_snapshots(client, input)
    return paginator.pages(client, "describeClusterSnapshots", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Snapshots",
    })
end

--- Returns an item iterator for describeClusterSnapshots.
function M.items_describe_cluster_snapshots(client, input)
    return paginator.items(client, "describeClusterSnapshots", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Snapshots",
    })
end

--- Returns a page iterator for describeClusterSubnetGroups.
function M.pages_describe_cluster_subnet_groups(client, input)
    return paginator.pages(client, "describeClusterSubnetGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ClusterSubnetGroups",
    })
end

--- Returns an item iterator for describeClusterSubnetGroups.
function M.items_describe_cluster_subnet_groups(client, input)
    return paginator.items(client, "describeClusterSubnetGroups", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ClusterSubnetGroups",
    })
end

--- Returns a page iterator for describeClusterTracks.
function M.pages_describe_cluster_tracks(client, input)
    return paginator.pages(client, "describeClusterTracks", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "MaintenanceTracks",
    })
end

--- Returns an item iterator for describeClusterTracks.
function M.items_describe_cluster_tracks(client, input)
    return paginator.items(client, "describeClusterTracks", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "MaintenanceTracks",
    })
end

--- Returns a page iterator for describeClusterVersions.
function M.pages_describe_cluster_versions(client, input)
    return paginator.pages(client, "describeClusterVersions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ClusterVersions",
    })
end

--- Returns an item iterator for describeClusterVersions.
function M.items_describe_cluster_versions(client, input)
    return paginator.items(client, "describeClusterVersions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ClusterVersions",
    })
end

--- Returns a page iterator for describeClusters.
function M.pages_describe_clusters(client, input)
    return paginator.pages(client, "describeClusters", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Clusters",
    })
end

--- Returns an item iterator for describeClusters.
function M.items_describe_clusters(client, input)
    return paginator.items(client, "describeClusters", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Clusters",
    })
end

--- Returns a page iterator for describeCustomDomainAssociations.
function M.pages_describe_custom_domain_associations(client, input)
    return paginator.pages(client, "describeCustomDomainAssociations", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Associations",
    })
end

--- Returns an item iterator for describeCustomDomainAssociations.
function M.items_describe_custom_domain_associations(client, input)
    return paginator.items(client, "describeCustomDomainAssociations", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Associations",
    })
end

--- Returns a page iterator for describeDataShares.
function M.pages_describe_data_shares(client, input)
    return paginator.pages(client, "describeDataShares", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DataShares",
    })
end

--- Returns an item iterator for describeDataShares.
function M.items_describe_data_shares(client, input)
    return paginator.items(client, "describeDataShares", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DataShares",
    })
end

--- Returns a page iterator for describeDataSharesForConsumer.
function M.pages_describe_data_shares_for_consumer(client, input)
    return paginator.pages(client, "describeDataSharesForConsumer", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DataShares",
    })
end

--- Returns an item iterator for describeDataSharesForConsumer.
function M.items_describe_data_shares_for_consumer(client, input)
    return paginator.items(client, "describeDataSharesForConsumer", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DataShares",
    })
end

--- Returns a page iterator for describeDataSharesForProducer.
function M.pages_describe_data_shares_for_producer(client, input)
    return paginator.pages(client, "describeDataSharesForProducer", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DataShares",
    })
end

--- Returns an item iterator for describeDataSharesForProducer.
function M.items_describe_data_shares_for_producer(client, input)
    return paginator.items(client, "describeDataSharesForProducer", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "DataShares",
    })
end

--- Returns a page iterator for describeDefaultClusterParameters.
function M.pages_describe_default_cluster_parameters(client, input)
    return paginator.pages(client, "describeDefaultClusterParameters", input, {
        input_token = "Marker",
        output_token = "DefaultClusterParameters.Marker",
        items = "DefaultClusterParameters.Parameters",
    })
end

--- Returns an item iterator for describeDefaultClusterParameters.
function M.items_describe_default_cluster_parameters(client, input)
    return paginator.items(client, "describeDefaultClusterParameters", input, {
        input_token = "Marker",
        output_token = "DefaultClusterParameters.Marker",
        items = "DefaultClusterParameters.Parameters",
    })
end

--- Returns a page iterator for describeEndpointAccess.
function M.pages_describe_endpoint_access(client, input)
    return paginator.pages(client, "describeEndpointAccess", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "EndpointAccessList",
    })
end

--- Returns an item iterator for describeEndpointAccess.
function M.items_describe_endpoint_access(client, input)
    return paginator.items(client, "describeEndpointAccess", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "EndpointAccessList",
    })
end

--- Returns a page iterator for describeEndpointAuthorization.
function M.pages_describe_endpoint_authorization(client, input)
    return paginator.pages(client, "describeEndpointAuthorization", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "EndpointAuthorizationList",
    })
end

--- Returns an item iterator for describeEndpointAuthorization.
function M.items_describe_endpoint_authorization(client, input)
    return paginator.items(client, "describeEndpointAuthorization", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "EndpointAuthorizationList",
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

--- Returns a page iterator for describeHsmClientCertificates.
function M.pages_describe_hsm_client_certificates(client, input)
    return paginator.pages(client, "describeHsmClientCertificates", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "HsmClientCertificates",
    })
end

--- Returns an item iterator for describeHsmClientCertificates.
function M.items_describe_hsm_client_certificates(client, input)
    return paginator.items(client, "describeHsmClientCertificates", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "HsmClientCertificates",
    })
end

--- Returns a page iterator for describeHsmConfigurations.
function M.pages_describe_hsm_configurations(client, input)
    return paginator.pages(client, "describeHsmConfigurations", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "HsmConfigurations",
    })
end

--- Returns an item iterator for describeHsmConfigurations.
function M.items_describe_hsm_configurations(client, input)
    return paginator.items(client, "describeHsmConfigurations", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "HsmConfigurations",
    })
end

--- Returns a page iterator for describeInboundIntegrations.
function M.pages_describe_inbound_integrations(client, input)
    return paginator.pages(client, "describeInboundIntegrations", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "InboundIntegrations",
    })
end

--- Returns an item iterator for describeInboundIntegrations.
function M.items_describe_inbound_integrations(client, input)
    return paginator.items(client, "describeInboundIntegrations", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "InboundIntegrations",
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

--- Returns a page iterator for describeNodeConfigurationOptions.
function M.pages_describe_node_configuration_options(client, input)
    return paginator.pages(client, "describeNodeConfigurationOptions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "NodeConfigurationOptionList",
    })
end

--- Returns an item iterator for describeNodeConfigurationOptions.
function M.items_describe_node_configuration_options(client, input)
    return paginator.items(client, "describeNodeConfigurationOptions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "NodeConfigurationOptionList",
    })
end

--- Returns a page iterator for describeOrderableClusterOptions.
function M.pages_describe_orderable_cluster_options(client, input)
    return paginator.pages(client, "describeOrderableClusterOptions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "OrderableClusterOptions",
    })
end

--- Returns an item iterator for describeOrderableClusterOptions.
function M.items_describe_orderable_cluster_options(client, input)
    return paginator.items(client, "describeOrderableClusterOptions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "OrderableClusterOptions",
    })
end

--- Returns a page iterator for describeRedshiftIdcApplications.
function M.pages_describe_redshift_idc_applications(client, input)
    return paginator.pages(client, "describeRedshiftIdcApplications", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "RedshiftIdcApplications",
    })
end

--- Returns an item iterator for describeRedshiftIdcApplications.
function M.items_describe_redshift_idc_applications(client, input)
    return paginator.items(client, "describeRedshiftIdcApplications", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "RedshiftIdcApplications",
    })
end

--- Returns a page iterator for describeReservedNodeExchangeStatus.
function M.pages_describe_reserved_node_exchange_status(client, input)
    return paginator.pages(client, "describeReservedNodeExchangeStatus", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReservedNodeExchangeStatusDetails",
    })
end

--- Returns an item iterator for describeReservedNodeExchangeStatus.
function M.items_describe_reserved_node_exchange_status(client, input)
    return paginator.items(client, "describeReservedNodeExchangeStatus", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReservedNodeExchangeStatusDetails",
    })
end

--- Returns a page iterator for describeReservedNodeOfferings.
function M.pages_describe_reserved_node_offerings(client, input)
    return paginator.pages(client, "describeReservedNodeOfferings", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReservedNodeOfferings",
    })
end

--- Returns an item iterator for describeReservedNodeOfferings.
function M.items_describe_reserved_node_offerings(client, input)
    return paginator.items(client, "describeReservedNodeOfferings", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReservedNodeOfferings",
    })
end

--- Returns a page iterator for describeReservedNodes.
function M.pages_describe_reserved_nodes(client, input)
    return paginator.pages(client, "describeReservedNodes", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReservedNodes",
    })
end

--- Returns an item iterator for describeReservedNodes.
function M.items_describe_reserved_nodes(client, input)
    return paginator.items(client, "describeReservedNodes", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReservedNodes",
    })
end

--- Returns a page iterator for describeScheduledActions.
function M.pages_describe_scheduled_actions(client, input)
    return paginator.pages(client, "describeScheduledActions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ScheduledActions",
    })
end

--- Returns an item iterator for describeScheduledActions.
function M.items_describe_scheduled_actions(client, input)
    return paginator.items(client, "describeScheduledActions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ScheduledActions",
    })
end

--- Returns a page iterator for describeSnapshotCopyGrants.
function M.pages_describe_snapshot_copy_grants(client, input)
    return paginator.pages(client, "describeSnapshotCopyGrants", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "SnapshotCopyGrants",
    })
end

--- Returns an item iterator for describeSnapshotCopyGrants.
function M.items_describe_snapshot_copy_grants(client, input)
    return paginator.items(client, "describeSnapshotCopyGrants", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "SnapshotCopyGrants",
    })
end

--- Returns a page iterator for describeSnapshotSchedules.
function M.pages_describe_snapshot_schedules(client, input)
    return paginator.pages(client, "describeSnapshotSchedules", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "SnapshotSchedules",
    })
end

--- Returns an item iterator for describeSnapshotSchedules.
function M.items_describe_snapshot_schedules(client, input)
    return paginator.items(client, "describeSnapshotSchedules", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "SnapshotSchedules",
    })
end

--- Returns a page iterator for describeTableRestoreStatus.
function M.pages_describe_table_restore_status(client, input)
    return paginator.pages(client, "describeTableRestoreStatus", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "TableRestoreStatusDetails",
    })
end

--- Returns an item iterator for describeTableRestoreStatus.
function M.items_describe_table_restore_status(client, input)
    return paginator.items(client, "describeTableRestoreStatus", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "TableRestoreStatusDetails",
    })
end

--- Returns a page iterator for describeTags.
function M.pages_describe_tags(client, input)
    return paginator.pages(client, "describeTags", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "TaggedResources",
    })
end

--- Returns an item iterator for describeTags.
function M.items_describe_tags(client, input)
    return paginator.items(client, "describeTags", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "TaggedResources",
    })
end

--- Returns a page iterator for describeUsageLimits.
function M.pages_describe_usage_limits(client, input)
    return paginator.pages(client, "describeUsageLimits", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "UsageLimits",
    })
end

--- Returns an item iterator for describeUsageLimits.
function M.items_describe_usage_limits(client, input)
    return paginator.items(client, "describeUsageLimits", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "UsageLimits",
    })
end

--- Returns a page iterator for getReservedNodeExchangeConfigurationOptions.
function M.pages_get_reserved_node_exchange_configuration_options(client, input)
    return paginator.pages(client, "getReservedNodeExchangeConfigurationOptions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReservedNodeConfigurationOptionList",
    })
end

--- Returns an item iterator for getReservedNodeExchangeConfigurationOptions.
function M.items_get_reserved_node_exchange_configuration_options(client, input)
    return paginator.items(client, "getReservedNodeExchangeConfigurationOptions", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReservedNodeConfigurationOptionList",
    })
end

--- Returns a page iterator for getReservedNodeExchangeOfferings.
function M.pages_get_reserved_node_exchange_offerings(client, input)
    return paginator.pages(client, "getReservedNodeExchangeOfferings", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReservedNodeOfferings",
    })
end

--- Returns an item iterator for getReservedNodeExchangeOfferings.
function M.items_get_reserved_node_exchange_offerings(client, input)
    return paginator.items(client, "getReservedNodeExchangeOfferings", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "ReservedNodeOfferings",
    })
end

--- Returns a page iterator for listRecommendations.
function M.pages_list_recommendations(client, input)
    return paginator.pages(client, "listRecommendations", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Recommendations",
    })
end

--- Returns an item iterator for listRecommendations.
function M.items_list_recommendations(client, input)
    return paginator.items(client, "listRecommendations", input, {
        input_token = "Marker",
        output_token = "Marker",
        items = "Recommendations",
    })
end

return M
