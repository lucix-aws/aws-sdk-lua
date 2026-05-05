local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listSolFunctionInstances.
function M.pages_list_sol_function_instances(client, input)
    return paginator.pages(client, "listSolFunctionInstances", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "functionInstances",
    })
end

--- Returns an item iterator for listSolFunctionInstances.
function M.items_list_sol_function_instances(client, input)
    return paginator.items(client, "listSolFunctionInstances", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "functionInstances",
    })
end

--- Returns a page iterator for listSolFunctionPackages.
function M.pages_list_sol_function_packages(client, input)
    return paginator.pages(client, "listSolFunctionPackages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "functionPackages",
    })
end

--- Returns an item iterator for listSolFunctionPackages.
function M.items_list_sol_function_packages(client, input)
    return paginator.items(client, "listSolFunctionPackages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "functionPackages",
    })
end

--- Returns a page iterator for listSolNetworkInstances.
function M.pages_list_sol_network_instances(client, input)
    return paginator.pages(client, "listSolNetworkInstances", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "networkInstances",
    })
end

--- Returns an item iterator for listSolNetworkInstances.
function M.items_list_sol_network_instances(client, input)
    return paginator.items(client, "listSolNetworkInstances", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "networkInstances",
    })
end

--- Returns a page iterator for listSolNetworkOperations.
function M.pages_list_sol_network_operations(client, input)
    return paginator.pages(client, "listSolNetworkOperations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "networkOperations",
    })
end

--- Returns an item iterator for listSolNetworkOperations.
function M.items_list_sol_network_operations(client, input)
    return paginator.items(client, "listSolNetworkOperations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "networkOperations",
    })
end

--- Returns a page iterator for listSolNetworkPackages.
function M.pages_list_sol_network_packages(client, input)
    return paginator.pages(client, "listSolNetworkPackages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "networkPackages",
    })
end

--- Returns an item iterator for listSolNetworkPackages.
function M.items_list_sol_network_packages(client, input)
    return paginator.items(client, "listSolNetworkPackages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "networkPackages",
    })
end

return M
