local paginator = require("paginator")

local M = {}

--- Returns a page iterator for getWorkflowExecutionHistory.
function M.pages_get_workflow_execution_history(client, input)
    return paginator.pages(client, "getWorkflowExecutionHistory", input, {
        input_token = "nextPageToken",
        output_token = "nextPageToken",
        items = "events",
    })
end

--- Returns an item iterator for getWorkflowExecutionHistory.
function M.items_get_workflow_execution_history(client, input)
    return paginator.items(client, "getWorkflowExecutionHistory", input, {
        input_token = "nextPageToken",
        output_token = "nextPageToken",
        items = "events",
    })
end

--- Returns a page iterator for listActivityTypes.
function M.pages_list_activity_types(client, input)
    return paginator.pages(client, "listActivityTypes", input, {
        input_token = "nextPageToken",
        output_token = "nextPageToken",
        items = "typeInfos",
    })
end

--- Returns an item iterator for listActivityTypes.
function M.items_list_activity_types(client, input)
    return paginator.items(client, "listActivityTypes", input, {
        input_token = "nextPageToken",
        output_token = "nextPageToken",
        items = "typeInfos",
    })
end

--- Returns a page iterator for listClosedWorkflowExecutions.
function M.pages_list_closed_workflow_executions(client, input)
    return paginator.pages(client, "listClosedWorkflowExecutions", input, {
        input_token = "nextPageToken",
        output_token = "nextPageToken",
        items = "executionInfos",
    })
end

--- Returns an item iterator for listClosedWorkflowExecutions.
function M.items_list_closed_workflow_executions(client, input)
    return paginator.items(client, "listClosedWorkflowExecutions", input, {
        input_token = "nextPageToken",
        output_token = "nextPageToken",
        items = "executionInfos",
    })
end

--- Returns a page iterator for listDomains.
function M.pages_list_domains(client, input)
    return paginator.pages(client, "listDomains", input, {
        input_token = "nextPageToken",
        output_token = "nextPageToken",
        items = "domainInfos",
    })
end

--- Returns an item iterator for listDomains.
function M.items_list_domains(client, input)
    return paginator.items(client, "listDomains", input, {
        input_token = "nextPageToken",
        output_token = "nextPageToken",
        items = "domainInfos",
    })
end

--- Returns a page iterator for listOpenWorkflowExecutions.
function M.pages_list_open_workflow_executions(client, input)
    return paginator.pages(client, "listOpenWorkflowExecutions", input, {
        input_token = "nextPageToken",
        output_token = "nextPageToken",
        items = "executionInfos",
    })
end

--- Returns an item iterator for listOpenWorkflowExecutions.
function M.items_list_open_workflow_executions(client, input)
    return paginator.items(client, "listOpenWorkflowExecutions", input, {
        input_token = "nextPageToken",
        output_token = "nextPageToken",
        items = "executionInfos",
    })
end

--- Returns a page iterator for listWorkflowTypes.
function M.pages_list_workflow_types(client, input)
    return paginator.pages(client, "listWorkflowTypes", input, {
        input_token = "nextPageToken",
        output_token = "nextPageToken",
        items = "typeInfos",
    })
end

--- Returns an item iterator for listWorkflowTypes.
function M.items_list_workflow_types(client, input)
    return paginator.items(client, "listWorkflowTypes", input, {
        input_token = "nextPageToken",
        output_token = "nextPageToken",
        items = "typeInfos",
    })
end

--- Returns a page iterator for pollForDecisionTask.
function M.pages_poll_for_decision_task(client, input)
    return paginator.pages(client, "pollForDecisionTask", input, {
        input_token = "nextPageToken",
        output_token = "nextPageToken",
        items = "events",
    })
end

--- Returns an item iterator for pollForDecisionTask.
function M.items_poll_for_decision_task(client, input)
    return paginator.items(client, "pollForDecisionTask", input, {
        input_token = "nextPageToken",
        output_token = "nextPageToken",
        items = "events",
    })
end

return M
