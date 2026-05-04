local record M
    pages_get_stream: function(client: table, input: table): function(): table, table
    items_get_stream: function(client: table, input: table): function(): any
    pages_list_streams: function(client: table, input: table): function(): table, table
    items_list_streams: function(client: table, input: table): function(): any
end

return M
