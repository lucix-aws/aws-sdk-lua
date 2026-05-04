local record M
    pages_list_resource_requests: function(client: table, input: table): function(): table, table
    items_list_resource_requests: function(client: table, input: table): function(): any
    pages_list_resources: function(client: table, input: table): function(): table, table
    items_list_resources: function(client: table, input: table): function(): any
end

return M
