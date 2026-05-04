local record M
    pages_list_group_memberships: function(client: table, input: table): function(): table, table
    items_list_group_memberships: function(client: table, input: table): function(): any
    pages_list_group_memberships_for_member: function(client: table, input: table): function(): table, table
    items_list_group_memberships_for_member: function(client: table, input: table): function(): any
    pages_list_groups: function(client: table, input: table): function(): table, table
    items_list_groups: function(client: table, input: table): function(): any
    pages_list_users: function(client: table, input: table): function(): table, table
    items_list_users: function(client: table, input: table): function(): any
end

return M
