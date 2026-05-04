local record M
    pages_get_durable_execution_history: function(client: table, input: table): function(): table, table
    items_get_durable_execution_history: function(client: table, input: table): function(): any
    pages_get_durable_execution_state: function(client: table, input: table): function(): table, table
    items_get_durable_execution_state: function(client: table, input: table): function(): any
    pages_list_aliases: function(client: table, input: table): function(): table, table
    items_list_aliases: function(client: table, input: table): function(): any
    pages_list_capacity_providers: function(client: table, input: table): function(): table, table
    items_list_capacity_providers: function(client: table, input: table): function(): any
    pages_list_code_signing_configs: function(client: table, input: table): function(): table, table
    items_list_code_signing_configs: function(client: table, input: table): function(): any
    pages_list_durable_executions_by_function: function(client: table, input: table): function(): table, table
    items_list_durable_executions_by_function: function(client: table, input: table): function(): any
    pages_list_event_source_mappings: function(client: table, input: table): function(): table, table
    items_list_event_source_mappings: function(client: table, input: table): function(): any
    pages_list_function_event_invoke_configs: function(client: table, input: table): function(): table, table
    items_list_function_event_invoke_configs: function(client: table, input: table): function(): any
    pages_list_function_url_configs: function(client: table, input: table): function(): table, table
    items_list_function_url_configs: function(client: table, input: table): function(): any
    pages_list_function_versions_by_capacity_provider: function(client: table, input: table): function(): table, table
    items_list_function_versions_by_capacity_provider: function(client: table, input: table): function(): any
    pages_list_functions: function(client: table, input: table): function(): table, table
    items_list_functions: function(client: table, input: table): function(): any
    pages_list_functions_by_code_signing_config: function(client: table, input: table): function(): table, table
    items_list_functions_by_code_signing_config: function(client: table, input: table): function(): any
    pages_list_layer_versions: function(client: table, input: table): function(): table, table
    items_list_layer_versions: function(client: table, input: table): function(): any
    pages_list_layers: function(client: table, input: table): function(): table, table
    items_list_layers: function(client: table, input: table): function(): any
    pages_list_provisioned_concurrency_configs: function(client: table, input: table): function(): table, table
    items_list_provisioned_concurrency_configs: function(client: table, input: table): function(): any
    pages_list_versions_by_function: function(client: table, input: table): function(): table, table
    items_list_versions_by_function: function(client: table, input: table): function(): any
end

return M
