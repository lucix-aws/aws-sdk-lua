local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for adminListGroupsForUser.
function M.pages_admin_list_groups_for_user(client, input)
    return paginator.pages(client, "adminListGroupsForUser", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Groups",
    })
end

--- Returns an item iterator for adminListGroupsForUser.
function M.items_admin_list_groups_for_user(client, input)
    return paginator.items(client, "adminListGroupsForUser", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Groups",
    })
end

--- Returns a page iterator for adminListUserAuthEvents.
function M.pages_admin_list_user_auth_events(client, input)
    return paginator.pages(client, "adminListUserAuthEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AuthEvents",
    })
end

--- Returns an item iterator for adminListUserAuthEvents.
function M.items_admin_list_user_auth_events(client, input)
    return paginator.items(client, "adminListUserAuthEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AuthEvents",
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

--- Returns a page iterator for listIdentityProviders.
function M.pages_list_identity_providers(client, input)
    return paginator.pages(client, "listIdentityProviders", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Providers",
    })
end

--- Returns an item iterator for listIdentityProviders.
function M.items_list_identity_providers(client, input)
    return paginator.items(client, "listIdentityProviders", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Providers",
    })
end

--- Returns a page iterator for listResourceServers.
function M.pages_list_resource_servers(client, input)
    return paginator.pages(client, "listResourceServers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ResourceServers",
    })
end

--- Returns an item iterator for listResourceServers.
function M.items_list_resource_servers(client, input)
    return paginator.items(client, "listResourceServers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ResourceServers",
    })
end

--- Returns a page iterator for listUserPoolClients.
function M.pages_list_user_pool_clients(client, input)
    return paginator.pages(client, "listUserPoolClients", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "UserPoolClients",
    })
end

--- Returns an item iterator for listUserPoolClients.
function M.items_list_user_pool_clients(client, input)
    return paginator.items(client, "listUserPoolClients", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "UserPoolClients",
    })
end

--- Returns a page iterator for listUserPools.
function M.pages_list_user_pools(client, input)
    return paginator.pages(client, "listUserPools", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "UserPools",
    })
end

--- Returns an item iterator for listUserPools.
function M.items_list_user_pools(client, input)
    return paginator.items(client, "listUserPools", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "UserPools",
    })
end

--- Returns a page iterator for listUsers.
function M.pages_list_users(client, input)
    return paginator.pages(client, "listUsers", input, {
        input_token = "PaginationToken",
        output_token = "PaginationToken",
        items = "Users",
    })
end

--- Returns an item iterator for listUsers.
function M.items_list_users(client, input)
    return paginator.items(client, "listUsers", input, {
        input_token = "PaginationToken",
        output_token = "PaginationToken",
        items = "Users",
    })
end

--- Returns a page iterator for listUsersInGroup.
function M.pages_list_users_in_group(client, input)
    return paginator.pages(client, "listUsersInGroup", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Users",
    })
end

--- Returns an item iterator for listUsersInGroup.
function M.items_list_users_in_group(client, input)
    return paginator.items(client, "listUsersInGroup", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Users",
    })
end

return M
