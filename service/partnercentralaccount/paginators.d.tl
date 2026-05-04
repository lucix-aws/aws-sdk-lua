local record M
    pages_list_connection_invitations: function(client: table, input: table): function(): table, table
    items_list_connection_invitations: function(client: table, input: table): function(): any
    pages_list_connections: function(client: table, input: table): function(): table, table
    items_list_connections: function(client: table, input: table): function(): any
    pages_list_partners: function(client: table, input: table): function(): table, table
    items_list_partners: function(client: table, input: table): function(): any
end

return M
