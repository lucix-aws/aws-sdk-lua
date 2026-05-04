local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listAccessLogSubscriptions.
function M.pages_list_access_log_subscriptions(client, input)
    return paginator.pages(client, "listAccessLogSubscriptions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listAccessLogSubscriptions.
function M.items_list_access_log_subscriptions(client, input)
    return paginator.items(client, "listAccessLogSubscriptions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listDomainVerifications.
function M.pages_list_domain_verifications(client, input)
    return paginator.pages(client, "listDomainVerifications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listDomainVerifications.
function M.items_list_domain_verifications(client, input)
    return paginator.items(client, "listDomainVerifications", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listListeners.
function M.pages_list_listeners(client, input)
    return paginator.pages(client, "listListeners", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listListeners.
function M.items_list_listeners(client, input)
    return paginator.items(client, "listListeners", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listResourceConfigurations.
function M.pages_list_resource_configurations(client, input)
    return paginator.pages(client, "listResourceConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listResourceConfigurations.
function M.items_list_resource_configurations(client, input)
    return paginator.items(client, "listResourceConfigurations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listResourceEndpointAssociations.
function M.pages_list_resource_endpoint_associations(client, input)
    return paginator.pages(client, "listResourceEndpointAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listResourceEndpointAssociations.
function M.items_list_resource_endpoint_associations(client, input)
    return paginator.items(client, "listResourceEndpointAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listResourceGateways.
function M.pages_list_resource_gateways(client, input)
    return paginator.pages(client, "listResourceGateways", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listResourceGateways.
function M.items_list_resource_gateways(client, input)
    return paginator.items(client, "listResourceGateways", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listRules.
function M.pages_list_rules(client, input)
    return paginator.pages(client, "listRules", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listRules.
function M.items_list_rules(client, input)
    return paginator.items(client, "listRules", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listServiceNetworkResourceAssociations.
function M.pages_list_service_network_resource_associations(client, input)
    return paginator.pages(client, "listServiceNetworkResourceAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listServiceNetworkResourceAssociations.
function M.items_list_service_network_resource_associations(client, input)
    return paginator.items(client, "listServiceNetworkResourceAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listServiceNetworkServiceAssociations.
function M.pages_list_service_network_service_associations(client, input)
    return paginator.pages(client, "listServiceNetworkServiceAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listServiceNetworkServiceAssociations.
function M.items_list_service_network_service_associations(client, input)
    return paginator.items(client, "listServiceNetworkServiceAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listServiceNetworkVpcAssociations.
function M.pages_list_service_network_vpc_associations(client, input)
    return paginator.pages(client, "listServiceNetworkVpcAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listServiceNetworkVpcAssociations.
function M.items_list_service_network_vpc_associations(client, input)
    return paginator.items(client, "listServiceNetworkVpcAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listServiceNetworkVpcEndpointAssociations.
function M.pages_list_service_network_vpc_endpoint_associations(client, input)
    return paginator.pages(client, "listServiceNetworkVpcEndpointAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listServiceNetworkVpcEndpointAssociations.
function M.items_list_service_network_vpc_endpoint_associations(client, input)
    return paginator.items(client, "listServiceNetworkVpcEndpointAssociations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listServiceNetworks.
function M.pages_list_service_networks(client, input)
    return paginator.pages(client, "listServiceNetworks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listServiceNetworks.
function M.items_list_service_networks(client, input)
    return paginator.items(client, "listServiceNetworks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listServices.
function M.pages_list_services(client, input)
    return paginator.pages(client, "listServices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listServices.
function M.items_list_services(client, input)
    return paginator.items(client, "listServices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listTargetGroups.
function M.pages_list_target_groups(client, input)
    return paginator.pages(client, "listTargetGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listTargetGroups.
function M.items_list_target_groups(client, input)
    return paginator.items(client, "listTargetGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listTargets.
function M.pages_list_targets(client, input)
    return paginator.pages(client, "listTargets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listTargets.
function M.items_list_targets(client, input)
    return paginator.items(client, "listTargets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

return M
