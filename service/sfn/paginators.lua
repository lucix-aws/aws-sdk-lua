local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getExecutionHistory.
function M.pages_get_execution_history(client, input)
    return paginator.pages(client, "getExecutionHistory", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "events",
    })
end

--- Returns an item iterator for getExecutionHistory.
function M.items_get_execution_history(client, input)
    return paginator.items(client, "getExecutionHistory", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "events",
    })
end

--- Returns a page iterator for listActivities.
function M.pages_list_activities(client, input)
    return paginator.pages(client, "listActivities", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "activities",
    })
end

--- Returns an item iterator for listActivities.
function M.items_list_activities(client, input)
    return paginator.items(client, "listActivities", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "activities",
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

--- Returns a page iterator for listMapRuns.
function M.pages_list_map_runs(client, input)
    return paginator.pages(client, "listMapRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "mapRuns",
    })
end

--- Returns an item iterator for listMapRuns.
function M.items_list_map_runs(client, input)
    return paginator.items(client, "listMapRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "mapRuns",
    })
end

--- Returns a page iterator for listStateMachines.
function M.pages_list_state_machines(client, input)
    return paginator.pages(client, "listStateMachines", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "stateMachines",
    })
end

--- Returns an item iterator for listStateMachines.
function M.items_list_state_machines(client, input)
    return paginator.items(client, "listStateMachines", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "stateMachines",
    })
end

return M
