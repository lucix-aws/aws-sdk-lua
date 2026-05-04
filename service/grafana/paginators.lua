local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listPermissions.
function M.pages_list_permissions(client, input)
    return paginator.pages(client, "listPermissions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "permissions",
    })
end

--- Returns an item iterator for listPermissions.
function M.items_list_permissions(client, input)
    return paginator.items(client, "listPermissions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "permissions",
    })
end

--- Returns a page iterator for listVersions.
function M.pages_list_versions(client, input)
    return paginator.pages(client, "listVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "grafanaVersions",
    })
end

--- Returns an item iterator for listVersions.
function M.items_list_versions(client, input)
    return paginator.items(client, "listVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "grafanaVersions",
    })
end

--- Returns a page iterator for listWorkspaceServiceAccountTokens.
function M.pages_list_workspace_service_account_tokens(client, input)
    return paginator.pages(client, "listWorkspaceServiceAccountTokens", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "serviceAccountTokens",
    })
end

--- Returns an item iterator for listWorkspaceServiceAccountTokens.
function M.items_list_workspace_service_account_tokens(client, input)
    return paginator.items(client, "listWorkspaceServiceAccountTokens", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "serviceAccountTokens",
    })
end

--- Returns a page iterator for listWorkspaceServiceAccounts.
function M.pages_list_workspace_service_accounts(client, input)
    return paginator.pages(client, "listWorkspaceServiceAccounts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "serviceAccounts",
    })
end

--- Returns an item iterator for listWorkspaceServiceAccounts.
function M.items_list_workspace_service_accounts(client, input)
    return paginator.items(client, "listWorkspaceServiceAccounts", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "serviceAccounts",
    })
end

--- Returns a page iterator for listWorkspaces.
function M.pages_list_workspaces(client, input)
    return paginator.pages(client, "listWorkspaces", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workspaces",
    })
end

--- Returns an item iterator for listWorkspaces.
function M.items_list_workspaces(client, input)
    return paginator.items(client, "listWorkspaces", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "workspaces",
    })
end

return M
