local record M
    pages_describe_objects: function(client: table, input: table): function(): table, table
    items_describe_objects: function(client: table, input: table): function(): any
    pages_list_pipelines: function(client: table, input: table): function(): table, table
    items_list_pipelines: function(client: table, input: table): function(): any
    pages_query_objects: function(client: table, input: table): function(): table, table
    items_query_objects: function(client: table, input: table): function(): any
end

return M
