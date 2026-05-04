local record M
    pages_list_application_revisions: function(client: table, input: table): function(): table, table
    items_list_application_revisions: function(client: table, input: table): function(): any
    pages_list_applications: function(client: table, input: table): function(): table, table
    items_list_applications: function(client: table, input: table): function(): any
    pages_list_deployment_configs: function(client: table, input: table): function(): table, table
    items_list_deployment_configs: function(client: table, input: table): function(): any
    pages_list_deployment_groups: function(client: table, input: table): function(): table, table
    items_list_deployment_groups: function(client: table, input: table): function(): any
    pages_list_deployment_instances: function(client: table, input: table): function(): table, table
    items_list_deployment_instances: function(client: table, input: table): function(): any
    pages_list_deployments: function(client: table, input: table): function(): table, table
    items_list_deployments: function(client: table, input: table): function(): any
end

return M
