local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getInstancesHealthStatus.
function M.pages_get_instances_health_status(client, input)
    return paginator.pages(client, "getInstancesHealthStatus", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listInstances.
function M.pages_list_instances(client, input)
    return paginator.pages(client, "listInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listNamespaces.
function M.pages_list_namespaces(client, input)
    return paginator.pages(client, "listNamespaces", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listOperations.
function M.pages_list_operations(client, input)
    return paginator.pages(client, "listOperations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listServices.
function M.pages_list_services(client, input)
    return paginator.pages(client, "listServices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

return M
