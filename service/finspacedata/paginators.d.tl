local record M
    pages_list_changesets: function(client: table, input: table): function(): table, table
    items_list_changesets: function(client: table, input: table): function(): any
    pages_list_data_views: function(client: table, input: table): function(): table, table
    items_list_data_views: function(client: table, input: table): function(): any
    pages_list_datasets: function(client: table, input: table): function(): table, table
    items_list_datasets: function(client: table, input: table): function(): any
    pages_list_permission_groups: function(client: table, input: table): function(): table, table
    items_list_permission_groups: function(client: table, input: table): function(): any
    pages_list_users: function(client: table, input: table): function(): table, table
    items_list_users: function(client: table, input: table): function(): any
end

return M
