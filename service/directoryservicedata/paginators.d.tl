local record M
    pages_list_group_members: function(client: table, input: table): function(): table, table
    items_list_group_members: function(client: table, input: table): function(): any
    pages_list_groups: function(client: table, input: table): function(): table, table
    items_list_groups: function(client: table, input: table): function(): any
    pages_list_groups_for_member: function(client: table, input: table): function(): table, table
    items_list_groups_for_member: function(client: table, input: table): function(): any
    pages_list_users: function(client: table, input: table): function(): table, table
    items_list_users: function(client: table, input: table): function(): any
    pages_search_groups: function(client: table, input: table): function(): table, table
    items_search_groups: function(client: table, input: table): function(): any
    pages_search_users: function(client: table, input: table): function(): table, table
    items_search_users: function(client: table, input: table): function(): any
end

return M
