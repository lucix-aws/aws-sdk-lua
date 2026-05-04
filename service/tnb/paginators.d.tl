local record M
    pages_list_sol_function_instances: function(client: table, input: table): function(): table, table
    items_list_sol_function_instances: function(client: table, input: table): function(): any
    pages_list_sol_function_packages: function(client: table, input: table): function(): table, table
    items_list_sol_function_packages: function(client: table, input: table): function(): any
    pages_list_sol_network_instances: function(client: table, input: table): function(): table, table
    items_list_sol_network_instances: function(client: table, input: table): function(): any
    pages_list_sol_network_operations: function(client: table, input: table): function(): table, table
    items_list_sol_network_operations: function(client: table, input: table): function(): any
    pages_list_sol_network_packages: function(client: table, input: table): function(): table, table
    items_list_sol_network_packages: function(client: table, input: table): function(): any
end

return M
