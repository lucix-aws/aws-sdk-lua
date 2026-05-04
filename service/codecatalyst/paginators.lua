local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listAccessTokens.
function M.pages_list_access_tokens(client, input)
    return paginator.pages(client, "listAccessTokens", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listAccessTokens.
function M.items_list_access_tokens(client, input)
    return paginator.items(client, "listAccessTokens", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listDevEnvironmentSessions.
function M.pages_list_dev_environment_sessions(client, input)
    return paginator.pages(client, "listDevEnvironmentSessions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listDevEnvironmentSessions.
function M.items_list_dev_environment_sessions(client, input)
    return paginator.items(client, "listDevEnvironmentSessions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listDevEnvironments.
function M.pages_list_dev_environments(client, input)
    return paginator.pages(client, "listDevEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listDevEnvironments.
function M.items_list_dev_environments(client, input)
    return paginator.items(client, "listDevEnvironments", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listEventLogs.
function M.pages_list_event_logs(client, input)
    return paginator.pages(client, "listEventLogs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listEventLogs.
function M.items_list_event_logs(client, input)
    return paginator.items(client, "listEventLogs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listProjects.
function M.pages_list_projects(client, input)
    return paginator.pages(client, "listProjects", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listProjects.
function M.items_list_projects(client, input)
    return paginator.items(client, "listProjects", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listSourceRepositories.
function M.pages_list_source_repositories(client, input)
    return paginator.pages(client, "listSourceRepositories", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listSourceRepositories.
function M.items_list_source_repositories(client, input)
    return paginator.items(client, "listSourceRepositories", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listSourceRepositoryBranches.
function M.pages_list_source_repository_branches(client, input)
    return paginator.pages(client, "listSourceRepositoryBranches", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listSourceRepositoryBranches.
function M.items_list_source_repository_branches(client, input)
    return paginator.items(client, "listSourceRepositoryBranches", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listSpaces.
function M.pages_list_spaces(client, input)
    return paginator.pages(client, "listSpaces", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listSpaces.
function M.items_list_spaces(client, input)
    return paginator.items(client, "listSpaces", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listWorkflowRuns.
function M.pages_list_workflow_runs(client, input)
    return paginator.pages(client, "listWorkflowRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listWorkflowRuns.
function M.items_list_workflow_runs(client, input)
    return paginator.items(client, "listWorkflowRuns", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns a page iterator for listWorkflows.
function M.pages_list_workflows(client, input)
    return paginator.pages(client, "listWorkflows", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

--- Returns an item iterator for listWorkflows.
function M.items_list_workflows(client, input)
    return paginator.items(client, "listWorkflows", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "items",
    })
end

return M
