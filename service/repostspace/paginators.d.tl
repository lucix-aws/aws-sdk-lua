local record M
    pages_list_channels: function(client: table, input: table): function(): table, table
    items_list_channels: function(client: table, input: table): function(): any
    pages_list_spaces: function(client: table, input: table): function(): table, table
    items_list_spaces: function(client: table, input: table): function(): any
end

return M
