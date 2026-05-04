local record M
    pages_list_jobs: function(client: table, input: table): function(): table, table
    items_list_jobs: function(client: table, input: table): function(): any
    pages_list_multipart_uploads: function(client: table, input: table): function(): table, table
    items_list_multipart_uploads: function(client: table, input: table): function(): any
    pages_list_parts: function(client: table, input: table): function(): table, table
    items_list_parts: function(client: table, input: table): function(): any
    pages_list_vaults: function(client: table, input: table): function(): table, table
    items_list_vaults: function(client: table, input: table): function(): any
end

return M
