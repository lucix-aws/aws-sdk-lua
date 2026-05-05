local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listInstanceTypes.
function M.pages_list_instance_types(client, input)
    return paginator.pages(client, "listInstanceTypes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InstanceTypes",
    })
end

--- Returns an item iterator for listInstanceTypes.
function M.items_list_instance_types(client, input)
    return paginator.items(client, "listInstanceTypes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InstanceTypes",
    })
end

--- Returns a page iterator for listRegions.
function M.pages_list_regions(client, input)
    return paginator.pages(client, "listRegions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Regions",
    })
end

--- Returns an item iterator for listRegions.
function M.items_list_regions(client, input)
    return paginator.items(client, "listRegions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Regions",
    })
end

--- Returns a page iterator for listWorkspaceInstances.
function M.pages_list_workspace_instances(client, input)
    return paginator.pages(client, "listWorkspaceInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WorkspaceInstances",
    })
end

--- Returns an item iterator for listWorkspaceInstances.
function M.items_list_workspace_instances(client, input)
    return paginator.items(client, "listWorkspaceInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "WorkspaceInstances",
    })
end

return M
