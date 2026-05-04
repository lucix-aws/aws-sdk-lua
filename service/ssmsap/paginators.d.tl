local record M
    pages_list_applications: function(client: table, input: table): function(): table, table
    items_list_applications: function(client: table, input: table): function(): any
    pages_list_components: function(client: table, input: table): function(): table, table
    items_list_components: function(client: table, input: table): function(): any
    pages_list_configuration_check_definitions: function(client: table, input: table): function(): table, table
    items_list_configuration_check_definitions: function(client: table, input: table): function(): any
    pages_list_configuration_check_operations: function(client: table, input: table): function(): table, table
    items_list_configuration_check_operations: function(client: table, input: table): function(): any
    pages_list_databases: function(client: table, input: table): function(): table, table
    items_list_databases: function(client: table, input: table): function(): any
    pages_list_operation_events: function(client: table, input: table): function(): table, table
    items_list_operation_events: function(client: table, input: table): function(): any
    pages_list_operations: function(client: table, input: table): function(): table, table
    items_list_operations: function(client: table, input: table): function(): any
    pages_list_sub_check_results: function(client: table, input: table): function(): table, table
    items_list_sub_check_results: function(client: table, input: table): function(): any
    pages_list_sub_check_rule_results: function(client: table, input: table): function(): table, table
    items_list_sub_check_rule_results: function(client: table, input: table): function(): any
end

return M
