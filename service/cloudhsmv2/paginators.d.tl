local record M
    pages_describe_backups: function(client: table, input: table): function(): table, table
    pages_describe_clusters: function(client: table, input: table): function(): table, table
    pages_list_tags: function(client: table, input: table): function(): table, table
end

return M
