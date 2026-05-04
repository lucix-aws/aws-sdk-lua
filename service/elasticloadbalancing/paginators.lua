local paginator = require("paginator")

local M = {}

--- Returns a page iterator for describeLoadBalancers.
function M.pages_describe_load_balancers(client, input)
    return paginator.pages(client, "describeLoadBalancers", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "LoadBalancerDescriptions",
    })
end

--- Returns an item iterator for describeLoadBalancers.
function M.items_describe_load_balancers(client, input)
    return paginator.items(client, "describeLoadBalancers", input, {
        input_token = "Marker",
        output_token = "NextMarker",
        items = "LoadBalancerDescriptions",
    })
end

return M
