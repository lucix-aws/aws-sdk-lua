local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listGroupMembers.
function M.pages_list_group_members(client, input)
    return paginator.pages(client, "listGroupMembers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Members",
    })
end

--- Returns an item iterator for listGroupMembers.
function M.items_list_group_members(client, input)
    return paginator.items(client, "listGroupMembers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Members",
    })
end

--- Returns a page iterator for listGroups.
function M.pages_list_groups(client, input)
    return paginator.pages(client, "listGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Groups",
    })
end

--- Returns an item iterator for listGroups.
function M.items_list_groups(client, input)
    return paginator.items(client, "listGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Groups",
    })
end

--- Returns a page iterator for listGroupsForMember.
function M.pages_list_groups_for_member(client, input)
    return paginator.pages(client, "listGroupsForMember", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Groups",
    })
end

--- Returns an item iterator for listGroupsForMember.
function M.items_list_groups_for_member(client, input)
    return paginator.items(client, "listGroupsForMember", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Groups",
    })
end

--- Returns a page iterator for listUsers.
function M.pages_list_users(client, input)
    return paginator.pages(client, "listUsers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Users",
    })
end

--- Returns an item iterator for listUsers.
function M.items_list_users(client, input)
    return paginator.items(client, "listUsers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Users",
    })
end

--- Returns a page iterator for searchGroups.
function M.pages_search_groups(client, input)
    return paginator.pages(client, "searchGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Groups",
    })
end

--- Returns an item iterator for searchGroups.
function M.items_search_groups(client, input)
    return paginator.items(client, "searchGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Groups",
    })
end

--- Returns a page iterator for searchUsers.
function M.pages_search_users(client, input)
    return paginator.pages(client, "searchUsers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Users",
    })
end

--- Returns an item iterator for searchUsers.
function M.items_search_users(client, input)
    return paginator.items(client, "searchUsers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Users",
    })
end

return M
