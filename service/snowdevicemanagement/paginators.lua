local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listDeviceResources.
function M.pages_list_device_resources(client, input)
    return paginator.pages(client, "listDeviceResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "resources",
    })
end

--- Returns an item iterator for listDeviceResources.
function M.items_list_device_resources(client, input)
    return paginator.items(client, "listDeviceResources", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "resources",
    })
end

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

--- Returns a page iterator for listExecutions.
function M.pages_list_executions(client, input)
    return paginator.pages(client, "listExecutions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "executions",
    })
end

--- Returns an item iterator for listExecutions.
function M.items_list_executions(client, input)
    return paginator.items(client, "listExecutions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "executions",
    })
end

--- Returns a page iterator for listTasks.
function M.pages_list_tasks(client, input)
    return paginator.pages(client, "listTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tasks",
    })
end

--- Returns an item iterator for listTasks.
function M.items_list_tasks(client, input)
    return paginator.items(client, "listTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tasks",
    })
end

return M
