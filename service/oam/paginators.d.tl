local record M
    pages_list_attached_links: function(client: table, input: table): function(): table, table
    items_list_attached_links: function(client: table, input: table): function(): any
    pages_list_links: function(client: table, input: table): function(): table, table
    items_list_links: function(client: table, input: table): function(): any
    pages_list_sinks: function(client: table, input: table): function(): table, table
    items_list_sinks: function(client: table, input: table): function(): any
end

return M
