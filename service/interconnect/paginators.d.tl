local record M
    pages_list_attach_points: function(client: table, input: table): function(): table, table
    items_list_attach_points: function(client: table, input: table): function(): any
    pages_list_connections: function(client: table, input: table): function(): table, table
    items_list_connections: function(client: table, input: table): function(): any
    pages_list_environments: function(client: table, input: table): function(): table, table
    items_list_environments: function(client: table, input: table): function(): any
end

return M
