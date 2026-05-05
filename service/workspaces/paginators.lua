local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for describeApplicationAssociations.
function M.pages_describe_application_associations(client, input)
    return paginator.pages(client, "describeApplicationAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeApplications.
function M.pages_describe_applications(client, input)
    return paginator.pages(client, "describeApplications", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for describeWorkspaceBundles.
function M.pages_describe_workspace_bundles(client, input)
    return paginator.pages(client, "describeWorkspaceBundles", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Bundles",
    })
end

--- Returns an item iterator for describeWorkspaceBundles.
function M.items_describe_workspace_bundles(client, input)
    return paginator.items(client, "describeWorkspaceBundles", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Bundles",
    })
end

--- Returns a page iterator for describeWorkspaceDirectories.
function M.pages_describe_workspace_directories(client, input)
    return paginator.pages(client, "describeWorkspaceDirectories", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Directories",
    })
end

--- Returns an item iterator for describeWorkspaceDirectories.
function M.items_describe_workspace_directories(client, input)
    return paginator.items(client, "describeWorkspaceDirectories", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Directories",
    })
end

--- Returns a page iterator for describeWorkspaces.
function M.pages_describe_workspaces(client, input)
    return paginator.pages(client, "describeWorkspaces", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Workspaces",
    })
end

--- Returns an item iterator for describeWorkspaces.
function M.items_describe_workspaces(client, input)
    return paginator.items(client, "describeWorkspaces", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Workspaces",
    })
end

--- Returns a page iterator for listAccountLinks.
function M.pages_list_account_links(client, input)
    return paginator.pages(client, "listAccountLinks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccountLinks",
    })
end

--- Returns an item iterator for listAccountLinks.
function M.items_list_account_links(client, input)
    return paginator.items(client, "listAccountLinks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AccountLinks",
    })
end

return M
