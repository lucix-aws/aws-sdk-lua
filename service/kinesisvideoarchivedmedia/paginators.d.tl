local record M
    pages_get_images: function(client: table, input: table): function(): table, table
    items_get_images: function(client: table, input: table): function(): any
    pages_list_fragments: function(client: table, input: table): function(): table, table
    items_list_fragments: function(client: table, input: table): function(): any
end

return M
