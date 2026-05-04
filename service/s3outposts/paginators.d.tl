local record M
    pages_list_endpoints: function(client: table, input: table): function(): table, table
    items_list_endpoints: function(client: table, input: table): function(): any
    pages_list_outposts_with_s3: function(client: table, input: table): function(): table, table
    items_list_outposts_with_s3: function(client: table, input: table): function(): any
    pages_list_shared_endpoints: function(client: table, input: table): function(): table, table
    items_list_shared_endpoints: function(client: table, input: table): function(): any
end

return M
