local record M
    pages_list_capabilities: function(client: table, input: table): function(): table, table
    items_list_capabilities: function(client: table, input: table): function(): any
    pages_list_partnerships: function(client: table, input: table): function(): table, table
    items_list_partnerships: function(client: table, input: table): function(): any
    pages_list_profiles: function(client: table, input: table): function(): table, table
    items_list_profiles: function(client: table, input: table): function(): any
    pages_list_transformers: function(client: table, input: table): function(): table, table
    items_list_transformers: function(client: table, input: table): function(): any
end

return M
