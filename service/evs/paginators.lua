local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listEnvironmentConnectors.
function M.pages_list_environment_connectors(client, input)
    return paginator.pages(client, "listEnvironmentConnectors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "connectors",
    })
end

--- Returns an item iterator for listEnvironmentConnectors.
function M.items_list_environment_connectors(client, input)
    return paginator.items(client, "listEnvironmentConnectors", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "connectors",
    })
end

--- Returns a page iterator for listEnvironmentHosts.
function M.pages_list_environment_hosts(client, input)
    return paginator.pages(client, "listEnvironmentHosts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "environmentHosts",
    })
end

--- Returns an item iterator for listEnvironmentHosts.
function M.items_list_environment_hosts(client, input)
    return paginator.items(client, "listEnvironmentHosts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "environmentHosts",
    })
end

--- Returns a page iterator for listEnvironmentVlans.
function M.pages_list_environment_vlans(client, input)
    return paginator.pages(client, "listEnvironmentVlans", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "environmentVlans",
    })
end

--- Returns an item iterator for listEnvironmentVlans.
function M.items_list_environment_vlans(client, input)
    return paginator.items(client, "listEnvironmentVlans", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "environmentVlans",
    })
end

--- Returns a page iterator for listEnvironments.
function M.pages_list_environments(client, input)
    return paginator.pages(client, "listEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "environmentSummaries",
    })
end

--- Returns an item iterator for listEnvironments.
function M.items_list_environments(client, input)
    return paginator.items(client, "listEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "environmentSummaries",
    })
end

--- Returns a page iterator for listVmEntitlements.
function M.pages_list_vm_entitlements(client, input)
    return paginator.pages(client, "listVmEntitlements", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "entitlements",
    })
end

--- Returns an item iterator for listVmEntitlements.
function M.items_list_vm_entitlements(client, input)
    return paginator.items(client, "listVmEntitlements", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "entitlements",
    })
end

return M
