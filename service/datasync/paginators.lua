local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listAgents.
function M.pages_list_agents(client, input)
    return paginator.pages(client, "listAgents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Agents",
    })
end

--- Returns an item iterator for listAgents.
function M.items_list_agents(client, input)
    return paginator.items(client, "listAgents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Agents",
    })
end

--- Returns a page iterator for listLocations.
function M.pages_list_locations(client, input)
    return paginator.pages(client, "listLocations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Locations",
    })
end

--- Returns an item iterator for listLocations.
function M.items_list_locations(client, input)
    return paginator.items(client, "listLocations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Locations",
    })
end

--- Returns a page iterator for listTagsForResource.
function M.pages_list_tags_for_resource(client, input)
    return paginator.pages(client, "listTagsForResource", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Tags",
    })
end

--- Returns an item iterator for listTagsForResource.
function M.items_list_tags_for_resource(client, input)
    return paginator.items(client, "listTagsForResource", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Tags",
    })
end

--- Returns a page iterator for listTaskExecutions.
function M.pages_list_task_executions(client, input)
    return paginator.pages(client, "listTaskExecutions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TaskExecutions",
    })
end

--- Returns an item iterator for listTaskExecutions.
function M.items_list_task_executions(client, input)
    return paginator.items(client, "listTaskExecutions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TaskExecutions",
    })
end

--- Returns a page iterator for listTasks.
function M.pages_list_tasks(client, input)
    return paginator.pages(client, "listTasks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Tasks",
    })
end

--- Returns an item iterator for listTasks.
function M.items_list_tasks(client, input)
    return paginator.items(client, "listTasks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Tasks",
    })
end

return M
