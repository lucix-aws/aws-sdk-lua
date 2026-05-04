local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listTaskInstances.
function M.pages_list_task_instances(client, input)
    return paginator.pages(client, "listTaskInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TaskInstances",
    })
end

--- Returns an item iterator for listTaskInstances.
function M.items_list_task_instances(client, input)
    return paginator.items(client, "listTaskInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TaskInstances",
    })
end

--- Returns a page iterator for listWorkflowRuns.
function M.pages_list_workflow_runs(client, input)
    return paginator.pages(client, "listWorkflowRuns", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WorkflowRuns",
    })
end

--- Returns an item iterator for listWorkflowRuns.
function M.items_list_workflow_runs(client, input)
    return paginator.items(client, "listWorkflowRuns", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WorkflowRuns",
    })
end

--- Returns a page iterator for listWorkflowVersions.
function M.pages_list_workflow_versions(client, input)
    return paginator.pages(client, "listWorkflowVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WorkflowVersions",
    })
end

--- Returns an item iterator for listWorkflowVersions.
function M.items_list_workflow_versions(client, input)
    return paginator.items(client, "listWorkflowVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WorkflowVersions",
    })
end

--- Returns a page iterator for listWorkflows.
function M.pages_list_workflows(client, input)
    return paginator.pages(client, "listWorkflows", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Workflows",
    })
end

--- Returns an item iterator for listWorkflows.
function M.items_list_workflows(client, input)
    return paginator.items(client, "listWorkflows", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Workflows",
    })
end

return M
