local paginator = require("paginator")

local M = {}

--- Returns a page iterator for listGroupResources.
function M.pages_list_group_resources(client, input)
    return paginator.pages(client, "listGroupResources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ResourceIdentifiers",
    })
end

--- Returns an item iterator for listGroupResources.
function M.items_list_group_resources(client, input)
    return paginator.items(client, "listGroupResources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ResourceIdentifiers",
    })
end

--- Returns a page iterator for listGroupingStatuses.
function M.pages_list_grouping_statuses(client, input)
    return paginator.pages(client, "listGroupingStatuses", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GroupingStatuses",
    })
end

--- Returns an item iterator for listGroupingStatuses.
function M.items_list_grouping_statuses(client, input)
    return paginator.items(client, "listGroupingStatuses", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GroupingStatuses",
    })
end

--- Returns a page iterator for listGroups.
function M.pages_list_groups(client, input)
    return paginator.pages(client, "listGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GroupIdentifiers",
    })
end

--- Returns an item iterator for listGroups.
function M.items_list_groups(client, input)
    return paginator.items(client, "listGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GroupIdentifiers",
    })
end

--- Returns a page iterator for listTagSyncTasks.
function M.pages_list_tag_sync_tasks(client, input)
    return paginator.pages(client, "listTagSyncTasks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TagSyncTasks",
    })
end

--- Returns an item iterator for listTagSyncTasks.
function M.items_list_tag_sync_tasks(client, input)
    return paginator.items(client, "listTagSyncTasks", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TagSyncTasks",
    })
end

--- Returns a page iterator for searchResources.
function M.pages_search_resources(client, input)
    return paginator.pages(client, "searchResources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ResourceIdentifiers",
    })
end

--- Returns an item iterator for searchResources.
function M.items_search_resources(client, input)
    return paginator.items(client, "searchResources", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ResourceIdentifiers",
    })
end

return M
