local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listAccelerators.
function M.pages_list_accelerators(client, input)
    return paginator.pages(client, "listAccelerators", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Accelerators",
    })
end

--- Returns an item iterator for listAccelerators.
function M.items_list_accelerators(client, input)
    return paginator.items(client, "listAccelerators", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Accelerators",
    })
end

--- Returns a page iterator for listByoipCidrs.
function M.pages_list_byoip_cidrs(client, input)
    return paginator.pages(client, "listByoipCidrs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ByoipCidrs",
    })
end

--- Returns an item iterator for listByoipCidrs.
function M.items_list_byoip_cidrs(client, input)
    return paginator.items(client, "listByoipCidrs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ByoipCidrs",
    })
end

--- Returns a page iterator for listCrossAccountAttachments.
function M.pages_list_cross_account_attachments(client, input)
    return paginator.pages(client, "listCrossAccountAttachments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CrossAccountAttachments",
    })
end

--- Returns an item iterator for listCrossAccountAttachments.
function M.items_list_cross_account_attachments(client, input)
    return paginator.items(client, "listCrossAccountAttachments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CrossAccountAttachments",
    })
end

--- Returns a page iterator for listCrossAccountResources.
function M.pages_list_cross_account_resources(client, input)
    return paginator.pages(client, "listCrossAccountResources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CrossAccountResources",
    })
end

--- Returns an item iterator for listCrossAccountResources.
function M.items_list_cross_account_resources(client, input)
    return paginator.items(client, "listCrossAccountResources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CrossAccountResources",
    })
end

--- Returns a page iterator for listCustomRoutingAccelerators.
function M.pages_list_custom_routing_accelerators(client, input)
    return paginator.pages(client, "listCustomRoutingAccelerators", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Accelerators",
    })
end

--- Returns an item iterator for listCustomRoutingAccelerators.
function M.items_list_custom_routing_accelerators(client, input)
    return paginator.items(client, "listCustomRoutingAccelerators", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Accelerators",
    })
end

--- Returns a page iterator for listCustomRoutingEndpointGroups.
function M.pages_list_custom_routing_endpoint_groups(client, input)
    return paginator.pages(client, "listCustomRoutingEndpointGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EndpointGroups",
    })
end

--- Returns an item iterator for listCustomRoutingEndpointGroups.
function M.items_list_custom_routing_endpoint_groups(client, input)
    return paginator.items(client, "listCustomRoutingEndpointGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EndpointGroups",
    })
end

--- Returns a page iterator for listCustomRoutingListeners.
function M.pages_list_custom_routing_listeners(client, input)
    return paginator.pages(client, "listCustomRoutingListeners", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Listeners",
    })
end

--- Returns an item iterator for listCustomRoutingListeners.
function M.items_list_custom_routing_listeners(client, input)
    return paginator.items(client, "listCustomRoutingListeners", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Listeners",
    })
end

--- Returns a page iterator for listCustomRoutingPortMappings.
function M.pages_list_custom_routing_port_mappings(client, input)
    return paginator.pages(client, "listCustomRoutingPortMappings", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PortMappings",
    })
end

--- Returns an item iterator for listCustomRoutingPortMappings.
function M.items_list_custom_routing_port_mappings(client, input)
    return paginator.items(client, "listCustomRoutingPortMappings", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PortMappings",
    })
end

--- Returns a page iterator for listCustomRoutingPortMappingsByDestination.
function M.pages_list_custom_routing_port_mappings_by_destination(client, input)
    return paginator.pages(client, "listCustomRoutingPortMappingsByDestination", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DestinationPortMappings",
    })
end

--- Returns an item iterator for listCustomRoutingPortMappingsByDestination.
function M.items_list_custom_routing_port_mappings_by_destination(client, input)
    return paginator.items(client, "listCustomRoutingPortMappingsByDestination", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DestinationPortMappings",
    })
end

--- Returns a page iterator for listEndpointGroups.
function M.pages_list_endpoint_groups(client, input)
    return paginator.pages(client, "listEndpointGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EndpointGroups",
    })
end

--- Returns an item iterator for listEndpointGroups.
function M.items_list_endpoint_groups(client, input)
    return paginator.items(client, "listEndpointGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EndpointGroups",
    })
end

--- Returns a page iterator for listListeners.
function M.pages_list_listeners(client, input)
    return paginator.pages(client, "listListeners", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Listeners",
    })
end

--- Returns an item iterator for listListeners.
function M.items_list_listeners(client, input)
    return paginator.items(client, "listListeners", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Listeners",
    })
end

return M
