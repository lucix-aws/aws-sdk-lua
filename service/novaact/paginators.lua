local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listActs.
function M.pages_list_acts(client, input)
    return paginator.pages(client, "listActs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "actSummaries",
    })
end

--- Returns an item iterator for listActs.
function M.items_list_acts(client, input)
    return paginator.items(client, "listActs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "actSummaries",
    })
end

--- Returns a page iterator for listSessions.
function M.pages_list_sessions(client, input)
    return paginator.pages(client, "listSessions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sessionSummaries",
    })
end

--- Returns an item iterator for listSessions.
function M.items_list_sessions(client, input)
    return paginator.items(client, "listSessions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "sessionSummaries",
    })
end

--- Returns a page iterator for listWorkflowDefinitions.
function M.pages_list_workflow_definitions(client, input)
    return paginator.pages(client, "listWorkflowDefinitions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workflowDefinitionSummaries",
    })
end

--- Returns an item iterator for listWorkflowDefinitions.
function M.items_list_workflow_definitions(client, input)
    return paginator.items(client, "listWorkflowDefinitions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workflowDefinitionSummaries",
    })
end

--- Returns a page iterator for listWorkflowRuns.
function M.pages_list_workflow_runs(client, input)
    return paginator.pages(client, "listWorkflowRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workflowRunSummaries",
    })
end

--- Returns an item iterator for listWorkflowRuns.
function M.items_list_workflow_runs(client, input)
    return paginator.items(client, "listWorkflowRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workflowRunSummaries",
    })
end

return M
