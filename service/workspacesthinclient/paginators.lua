local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listDevices.
function M.pages_list_devices(client, input)
    return paginator.pages(client, "listDevices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "devices",
    })
end

--- Returns an item iterator for listDevices.
function M.items_list_devices(client, input)
    return paginator.items(client, "listDevices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "devices",
    })
end

--- Returns a page iterator for listEnvironments.
function M.pages_list_environments(client, input)
    return paginator.pages(client, "listEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "environments",
    })
end

--- Returns an item iterator for listEnvironments.
function M.items_list_environments(client, input)
    return paginator.items(client, "listEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "environments",
    })
end

--- Returns a page iterator for listSoftwareSets.
function M.pages_list_software_sets(client, input)
    return paginator.pages(client, "listSoftwareSets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "softwareSets",
    })
end

--- Returns an item iterator for listSoftwareSets.
function M.items_list_software_sets(client, input)
    return paginator.items(client, "listSoftwareSets", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "softwareSets",
    })
end

return M
