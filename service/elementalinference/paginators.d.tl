local record M
    pages_list_feeds: function(client: table, input: table): function(): table, table
    items_list_feeds: function(client: table, input: table): function(): any
end

return M
