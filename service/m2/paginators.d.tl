local record M
    pages_list_application_versions: function(client: table, input: table): function(): table, table
    items_list_application_versions: function(client: table, input: table): function(): any
    pages_list_applications: function(client: table, input: table): function(): table, table
    items_list_applications: function(client: table, input: table): function(): any
    pages_list_batch_job_definitions: function(client: table, input: table): function(): table, table
    items_list_batch_job_definitions: function(client: table, input: table): function(): any
    pages_list_batch_job_executions: function(client: table, input: table): function(): table, table
    items_list_batch_job_executions: function(client: table, input: table): function(): any
    pages_list_data_set_export_history: function(client: table, input: table): function(): table, table
    items_list_data_set_export_history: function(client: table, input: table): function(): any
    pages_list_data_set_import_history: function(client: table, input: table): function(): table, table
    items_list_data_set_import_history: function(client: table, input: table): function(): any
    pages_list_data_sets: function(client: table, input: table): function(): table, table
    items_list_data_sets: function(client: table, input: table): function(): any
    pages_list_deployments: function(client: table, input: table): function(): table, table
    items_list_deployments: function(client: table, input: table): function(): any
    pages_list_engine_versions: function(client: table, input: table): function(): table, table
    items_list_engine_versions: function(client: table, input: table): function(): any
    pages_list_environments: function(client: table, input: table): function(): table, table
    items_list_environments: function(client: table, input: table): function(): any
end

return M
