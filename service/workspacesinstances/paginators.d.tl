local record M
    pages_list_instance_types: function(client: table, input: table): function(): table, table
    items_list_instance_types: function(client: table, input: table): function(): any
    pages_list_regions: function(client: table, input: table): function(): table, table
    items_list_regions: function(client: table, input: table): function(): any
    pages_list_workspace_instances: function(client: table, input: table): function(): table, table
    items_list_workspace_instances: function(client: table, input: table): function(): any
end

return M
