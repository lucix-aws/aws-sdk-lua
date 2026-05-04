local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeGlobalNetworks.
function M.pages_describe_global_networks(client, input)
    return paginator.pages(client, "describeGlobalNetworks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GlobalNetworks",
    })
end

--- Returns an item iterator for describeGlobalNetworks.
function M.items_describe_global_networks(client, input)
    return paginator.items(client, "describeGlobalNetworks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GlobalNetworks",
    })
end

--- Returns a page iterator for getConnectPeerAssociations.
function M.pages_get_connect_peer_associations(client, input)
    return paginator.pages(client, "getConnectPeerAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConnectPeerAssociations",
    })
end

--- Returns an item iterator for getConnectPeerAssociations.
function M.items_get_connect_peer_associations(client, input)
    return paginator.items(client, "getConnectPeerAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConnectPeerAssociations",
    })
end

--- Returns a page iterator for getConnections.
function M.pages_get_connections(client, input)
    return paginator.pages(client, "getConnections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Connections",
    })
end

--- Returns an item iterator for getConnections.
function M.items_get_connections(client, input)
    return paginator.items(client, "getConnections", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Connections",
    })
end

--- Returns a page iterator for getCoreNetworkChangeEvents.
function M.pages_get_core_network_change_events(client, input)
    return paginator.pages(client, "getCoreNetworkChangeEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CoreNetworkChangeEvents",
    })
end

--- Returns an item iterator for getCoreNetworkChangeEvents.
function M.items_get_core_network_change_events(client, input)
    return paginator.items(client, "getCoreNetworkChangeEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CoreNetworkChangeEvents",
    })
end

--- Returns a page iterator for getCoreNetworkChangeSet.
function M.pages_get_core_network_change_set(client, input)
    return paginator.pages(client, "getCoreNetworkChangeSet", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CoreNetworkChanges",
    })
end

--- Returns an item iterator for getCoreNetworkChangeSet.
function M.items_get_core_network_change_set(client, input)
    return paginator.items(client, "getCoreNetworkChangeSet", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CoreNetworkChanges",
    })
end

--- Returns a page iterator for getCustomerGatewayAssociations.
function M.pages_get_customer_gateway_associations(client, input)
    return paginator.pages(client, "getCustomerGatewayAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CustomerGatewayAssociations",
    })
end

--- Returns an item iterator for getCustomerGatewayAssociations.
function M.items_get_customer_gateway_associations(client, input)
    return paginator.items(client, "getCustomerGatewayAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CustomerGatewayAssociations",
    })
end

--- Returns a page iterator for getDevices.
function M.pages_get_devices(client, input)
    return paginator.pages(client, "getDevices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Devices",
    })
end

--- Returns an item iterator for getDevices.
function M.items_get_devices(client, input)
    return paginator.items(client, "getDevices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Devices",
    })
end

--- Returns a page iterator for getLinkAssociations.
function M.pages_get_link_associations(client, input)
    return paginator.pages(client, "getLinkAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LinkAssociations",
    })
end

--- Returns an item iterator for getLinkAssociations.
function M.items_get_link_associations(client, input)
    return paginator.items(client, "getLinkAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LinkAssociations",
    })
end

--- Returns a page iterator for getLinks.
function M.pages_get_links(client, input)
    return paginator.pages(client, "getLinks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Links",
    })
end

--- Returns an item iterator for getLinks.
function M.items_get_links(client, input)
    return paginator.items(client, "getLinks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Links",
    })
end

--- Returns a page iterator for getNetworkResourceCounts.
function M.pages_get_network_resource_counts(client, input)
    return paginator.pages(client, "getNetworkResourceCounts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "NetworkResourceCounts",
    })
end

--- Returns an item iterator for getNetworkResourceCounts.
function M.items_get_network_resource_counts(client, input)
    return paginator.items(client, "getNetworkResourceCounts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "NetworkResourceCounts",
    })
end

--- Returns a page iterator for getNetworkResourceRelationships.
function M.pages_get_network_resource_relationships(client, input)
    return paginator.pages(client, "getNetworkResourceRelationships", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Relationships",
    })
end

--- Returns an item iterator for getNetworkResourceRelationships.
function M.items_get_network_resource_relationships(client, input)
    return paginator.items(client, "getNetworkResourceRelationships", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Relationships",
    })
end

--- Returns a page iterator for getNetworkResources.
function M.pages_get_network_resources(client, input)
    return paginator.pages(client, "getNetworkResources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "NetworkResources",
    })
end

--- Returns an item iterator for getNetworkResources.
function M.items_get_network_resources(client, input)
    return paginator.items(client, "getNetworkResources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "NetworkResources",
    })
end

--- Returns a page iterator for getNetworkTelemetry.
function M.pages_get_network_telemetry(client, input)
    return paginator.pages(client, "getNetworkTelemetry", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "NetworkTelemetry",
    })
end

--- Returns an item iterator for getNetworkTelemetry.
function M.items_get_network_telemetry(client, input)
    return paginator.items(client, "getNetworkTelemetry", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "NetworkTelemetry",
    })
end

--- Returns a page iterator for getSites.
function M.pages_get_sites(client, input)
    return paginator.pages(client, "getSites", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Sites",
    })
end

--- Returns an item iterator for getSites.
function M.items_get_sites(client, input)
    return paginator.items(client, "getSites", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Sites",
    })
end

--- Returns a page iterator for getTransitGatewayConnectPeerAssociations.
function M.pages_get_transit_gateway_connect_peer_associations(client, input)
    return paginator.pages(client, "getTransitGatewayConnectPeerAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TransitGatewayConnectPeerAssociations",
    })
end

--- Returns an item iterator for getTransitGatewayConnectPeerAssociations.
function M.items_get_transit_gateway_connect_peer_associations(client, input)
    return paginator.items(client, "getTransitGatewayConnectPeerAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TransitGatewayConnectPeerAssociations",
    })
end

--- Returns a page iterator for getTransitGatewayRegistrations.
function M.pages_get_transit_gateway_registrations(client, input)
    return paginator.pages(client, "getTransitGatewayRegistrations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TransitGatewayRegistrations",
    })
end

--- Returns an item iterator for getTransitGatewayRegistrations.
function M.items_get_transit_gateway_registrations(client, input)
    return paginator.items(client, "getTransitGatewayRegistrations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TransitGatewayRegistrations",
    })
end

--- Returns a page iterator for listAttachmentRoutingPolicyAssociations.
function M.pages_list_attachment_routing_policy_associations(client, input)
    return paginator.pages(client, "listAttachmentRoutingPolicyAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AttachmentRoutingPolicyAssociations",
    })
end

--- Returns an item iterator for listAttachmentRoutingPolicyAssociations.
function M.items_list_attachment_routing_policy_associations(client, input)
    return paginator.items(client, "listAttachmentRoutingPolicyAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AttachmentRoutingPolicyAssociations",
    })
end

--- Returns a page iterator for listAttachments.
function M.pages_list_attachments(client, input)
    return paginator.pages(client, "listAttachments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Attachments",
    })
end

--- Returns an item iterator for listAttachments.
function M.items_list_attachments(client, input)
    return paginator.items(client, "listAttachments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Attachments",
    })
end

--- Returns a page iterator for listConnectPeers.
function M.pages_list_connect_peers(client, input)
    return paginator.pages(client, "listConnectPeers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConnectPeers",
    })
end

--- Returns an item iterator for listConnectPeers.
function M.items_list_connect_peers(client, input)
    return paginator.items(client, "listConnectPeers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ConnectPeers",
    })
end

--- Returns a page iterator for listCoreNetworkPolicyVersions.
function M.pages_list_core_network_policy_versions(client, input)
    return paginator.pages(client, "listCoreNetworkPolicyVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CoreNetworkPolicyVersions",
    })
end

--- Returns an item iterator for listCoreNetworkPolicyVersions.
function M.items_list_core_network_policy_versions(client, input)
    return paginator.items(client, "listCoreNetworkPolicyVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CoreNetworkPolicyVersions",
    })
end

--- Returns a page iterator for listCoreNetworkPrefixListAssociations.
function M.pages_list_core_network_prefix_list_associations(client, input)
    return paginator.pages(client, "listCoreNetworkPrefixListAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PrefixListAssociations",
    })
end

--- Returns an item iterator for listCoreNetworkPrefixListAssociations.
function M.items_list_core_network_prefix_list_associations(client, input)
    return paginator.items(client, "listCoreNetworkPrefixListAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PrefixListAssociations",
    })
end

--- Returns a page iterator for listCoreNetworkRoutingInformation.
function M.pages_list_core_network_routing_information(client, input)
    return paginator.pages(client, "listCoreNetworkRoutingInformation", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CoreNetworkRoutingInformation",
    })
end

--- Returns an item iterator for listCoreNetworkRoutingInformation.
function M.items_list_core_network_routing_information(client, input)
    return paginator.items(client, "listCoreNetworkRoutingInformation", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CoreNetworkRoutingInformation",
    })
end

--- Returns a page iterator for listCoreNetworks.
function M.pages_list_core_networks(client, input)
    return paginator.pages(client, "listCoreNetworks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CoreNetworks",
    })
end

--- Returns an item iterator for listCoreNetworks.
function M.items_list_core_networks(client, input)
    return paginator.items(client, "listCoreNetworks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CoreNetworks",
    })
end

--- Returns a page iterator for listPeerings.
function M.pages_list_peerings(client, input)
    return paginator.pages(client, "listPeerings", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Peerings",
    })
end

--- Returns an item iterator for listPeerings.
function M.items_list_peerings(client, input)
    return paginator.items(client, "listPeerings", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Peerings",
    })
end

return M
