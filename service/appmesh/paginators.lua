local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listGatewayRoutes.
function M.pages_list_gateway_routes(client, input)
    return paginator.pages(client, "listGatewayRoutes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "gatewayRoutes",
    })
end

--- Returns an item iterator for listGatewayRoutes.
function M.items_list_gateway_routes(client, input)
    return paginator.items(client, "listGatewayRoutes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "gatewayRoutes",
    })
end

--- Returns a page iterator for listMeshes.
function M.pages_list_meshes(client, input)
    return paginator.pages(client, "listMeshes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "meshes",
    })
end

--- Returns an item iterator for listMeshes.
function M.items_list_meshes(client, input)
    return paginator.items(client, "listMeshes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "meshes",
    })
end

--- Returns a page iterator for listRoutes.
function M.pages_list_routes(client, input)
    return paginator.pages(client, "listRoutes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "routes",
    })
end

--- Returns an item iterator for listRoutes.
function M.items_list_routes(client, input)
    return paginator.items(client, "listRoutes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "routes",
    })
end

--- Returns a page iterator for listTagsForResource.
function M.pages_list_tags_for_resource(client, input)
    return paginator.pages(client, "listTagsForResource", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tags",
    })
end

--- Returns an item iterator for listTagsForResource.
function M.items_list_tags_for_resource(client, input)
    return paginator.items(client, "listTagsForResource", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tags",
    })
end

--- Returns a page iterator for listVirtualGateways.
function M.pages_list_virtual_gateways(client, input)
    return paginator.pages(client, "listVirtualGateways", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "virtualGateways",
    })
end

--- Returns an item iterator for listVirtualGateways.
function M.items_list_virtual_gateways(client, input)
    return paginator.items(client, "listVirtualGateways", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "virtualGateways",
    })
end

--- Returns a page iterator for listVirtualNodes.
function M.pages_list_virtual_nodes(client, input)
    return paginator.pages(client, "listVirtualNodes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "virtualNodes",
    })
end

--- Returns an item iterator for listVirtualNodes.
function M.items_list_virtual_nodes(client, input)
    return paginator.items(client, "listVirtualNodes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "virtualNodes",
    })
end

--- Returns a page iterator for listVirtualRouters.
function M.pages_list_virtual_routers(client, input)
    return paginator.pages(client, "listVirtualRouters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "virtualRouters",
    })
end

--- Returns an item iterator for listVirtualRouters.
function M.items_list_virtual_routers(client, input)
    return paginator.items(client, "listVirtualRouters", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "virtualRouters",
    })
end

--- Returns a page iterator for listVirtualServices.
function M.pages_list_virtual_services(client, input)
    return paginator.pages(client, "listVirtualServices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "virtualServices",
    })
end

--- Returns an item iterator for listVirtualServices.
function M.items_list_virtual_services(client, input)
    return paginator.items(client, "listVirtualServices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "virtualServices",
    })
end

return M
