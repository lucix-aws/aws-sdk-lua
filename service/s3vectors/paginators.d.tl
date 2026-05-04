local record M
    pages_list_indexes: function(client: table, input: table): function(): table, table
    items_list_indexes: function(client: table, input: table): function(): any
    pages_list_vector_buckets: function(client: table, input: table): function(): table, table
    items_list_vector_buckets: function(client: table, input: table): function(): any
    pages_list_vectors: function(client: table, input: table): function(): table, table
    items_list_vectors: function(client: table, input: table): function(): any
end

return M
