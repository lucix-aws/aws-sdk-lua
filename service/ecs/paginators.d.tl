local record M
    pages_list_account_settings: function(client: table, input: table): function(): table, table
    items_list_account_settings: function(client: table, input: table): function(): any
    pages_list_attributes: function(client: table, input: table): function(): table, table
    items_list_attributes: function(client: table, input: table): function(): any
    pages_list_clusters: function(client: table, input: table): function(): table, table
    items_list_clusters: function(client: table, input: table): function(): any
    pages_list_container_instances: function(client: table, input: table): function(): table, table
    items_list_container_instances: function(client: table, input: table): function(): any
    pages_list_services: function(client: table, input: table): function(): table, table
    items_list_services: function(client: table, input: table): function(): any
    pages_list_services_by_namespace: function(client: table, input: table): function(): table, table
    items_list_services_by_namespace: function(client: table, input: table): function(): any
    pages_list_task_definition_families: function(client: table, input: table): function(): table, table
    items_list_task_definition_families: function(client: table, input: table): function(): any
    pages_list_task_definitions: function(client: table, input: table): function(): table, table
    items_list_task_definitions: function(client: table, input: table): function(): any
    pages_list_tasks: function(client: table, input: table): function(): table, table
    items_list_tasks: function(client: table, input: table): function(): any
end

return M
