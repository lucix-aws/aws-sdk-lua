local record M
    pages_list_application_states: function(client: table, input: table): function(): table, table
    items_list_application_states: function(client: table, input: table): function(): any
    pages_list_created_artifacts: function(client: table, input: table): function(): table, table
    items_list_created_artifacts: function(client: table, input: table): function(): any
    pages_list_discovered_resources: function(client: table, input: table): function(): table, table
    items_list_discovered_resources: function(client: table, input: table): function(): any
    pages_list_migration_task_updates: function(client: table, input: table): function(): table, table
    items_list_migration_task_updates: function(client: table, input: table): function(): any
    pages_list_migration_tasks: function(client: table, input: table): function(): table, table
    items_list_migration_tasks: function(client: table, input: table): function(): any
    pages_list_progress_update_streams: function(client: table, input: table): function(): table, table
    items_list_progress_update_streams: function(client: table, input: table): function(): any
    pages_list_source_resources: function(client: table, input: table): function(): table, table
    items_list_source_resources: function(client: table, input: table): function(): any
end

return M
