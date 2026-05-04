local record M
    pages_list_applications: function(client: table, input: table): function(): table, table
    items_list_applications: function(client: table, input: table): function(): any
    pages_list_environment_vpcs: function(client: table, input: table): function(): table, table
    items_list_environment_vpcs: function(client: table, input: table): function(): any
    pages_list_environments: function(client: table, input: table): function(): table, table
    items_list_environments: function(client: table, input: table): function(): any
    pages_list_routes: function(client: table, input: table): function(): table, table
    items_list_routes: function(client: table, input: table): function(): any
    pages_list_services: function(client: table, input: table): function(): table, table
    items_list_services: function(client: table, input: table): function(): any
end

return M
