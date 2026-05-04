local record M
    pages_list_id_mapping_jobs: function(client: table, input: table): function(): table, table
    items_list_id_mapping_jobs: function(client: table, input: table): function(): any
    pages_list_id_mapping_workflows: function(client: table, input: table): function(): table, table
    items_list_id_mapping_workflows: function(client: table, input: table): function(): any
    pages_list_id_namespaces: function(client: table, input: table): function(): table, table
    items_list_id_namespaces: function(client: table, input: table): function(): any
    pages_list_matching_jobs: function(client: table, input: table): function(): table, table
    items_list_matching_jobs: function(client: table, input: table): function(): any
    pages_list_matching_workflows: function(client: table, input: table): function(): table, table
    items_list_matching_workflows: function(client: table, input: table): function(): any
    pages_list_provider_services: function(client: table, input: table): function(): table, table
    items_list_provider_services: function(client: table, input: table): function(): any
    pages_list_schema_mappings: function(client: table, input: table): function(): table, table
    items_list_schema_mappings: function(client: table, input: table): function(): any
end

return M
