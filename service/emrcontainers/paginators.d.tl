local record M
    pages_list_job_runs: function(client: table, input: table): function(): table, table
    items_list_job_runs: function(client: table, input: table): function(): any
    pages_list_job_templates: function(client: table, input: table): function(): table, table
    items_list_job_templates: function(client: table, input: table): function(): any
    pages_list_managed_endpoints: function(client: table, input: table): function(): table, table
    items_list_managed_endpoints: function(client: table, input: table): function(): any
    pages_list_security_configurations: function(client: table, input: table): function(): table, table
    items_list_security_configurations: function(client: table, input: table): function(): any
    pages_list_virtual_clusters: function(client: table, input: table): function(): table, table
    items_list_virtual_clusters: function(client: table, input: table): function(): any
end

return M
