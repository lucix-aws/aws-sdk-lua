local record M
    pages_list_clusters: function(client: table, input: table): function(): table, table
    items_list_clusters: function(client: table, input: table): function(): any
end

return M
