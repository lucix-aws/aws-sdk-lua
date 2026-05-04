local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listGateways.
function M.pages_list_gateways(client, input)
    return paginator.pages(client, "listGateways", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Gateways",
    })
end

--- Returns an item iterator for listGateways.
function M.items_list_gateways(client, input)
    return paginator.items(client, "listGateways", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Gateways",
    })
end

--- Returns a page iterator for listHypervisors.
function M.pages_list_hypervisors(client, input)
    return paginator.pages(client, "listHypervisors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Hypervisors",
    })
end

--- Returns an item iterator for listHypervisors.
function M.items_list_hypervisors(client, input)
    return paginator.items(client, "listHypervisors", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Hypervisors",
    })
end

--- Returns a page iterator for listVirtualMachines.
function M.pages_list_virtual_machines(client, input)
    return paginator.pages(client, "listVirtualMachines", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "VirtualMachines",
    })
end

--- Returns an item iterator for listVirtualMachines.
function M.items_list_virtual_machines(client, input)
    return paginator.items(client, "listVirtualMachines", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "VirtualMachines",
    })
end

return M
