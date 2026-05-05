local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for listGroupMemberships.
function M.pages_list_group_memberships(client, input)
    return paginator.pages(client, "listGroupMemberships", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GroupMemberships",
    })
end

--- Returns an item iterator for listGroupMemberships.
function M.items_list_group_memberships(client, input)
    return paginator.items(client, "listGroupMemberships", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GroupMemberships",
    })
end

--- Returns a page iterator for listGroupMembershipsForMember.
function M.pages_list_group_memberships_for_member(client, input)
    return paginator.pages(client, "listGroupMembershipsForMember", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GroupMemberships",
    })
end

--- Returns an item iterator for listGroupMembershipsForMember.
function M.items_list_group_memberships_for_member(client, input)
    return paginator.items(client, "listGroupMembershipsForMember", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "GroupMemberships",
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

return M
