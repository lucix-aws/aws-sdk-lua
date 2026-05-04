local record M
    pages_list_library_items: function(client: table, input: table): function(): table, table
    items_list_library_items: function(client: table, input: table): function(): any
    pages_list_q_apps: function(client: table, input: table): function(): table, table
    items_list_q_apps: function(client: table, input: table): function(): any
end

return M
