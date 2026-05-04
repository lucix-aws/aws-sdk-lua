local record M
    pages_list_accesses: function(client: table, input: table): function(): table, table
    items_list_accesses: function(client: table, input: table): function(): any
    pages_list_agreements: function(client: table, input: table): function(): table, table
    items_list_agreements: function(client: table, input: table): function(): any
    pages_list_certificates: function(client: table, input: table): function(): table, table
    items_list_certificates: function(client: table, input: table): function(): any
    pages_list_connectors: function(client: table, input: table): function(): table, table
    items_list_connectors: function(client: table, input: table): function(): any
    pages_list_executions: function(client: table, input: table): function(): table, table
    items_list_executions: function(client: table, input: table): function(): any
    pages_list_file_transfer_results: function(client: table, input: table): function(): table, table
    items_list_file_transfer_results: function(client: table, input: table): function(): any
    pages_list_profiles: function(client: table, input: table): function(): table, table
    items_list_profiles: function(client: table, input: table): function(): any
    pages_list_security_policies: function(client: table, input: table): function(): table, table
    items_list_security_policies: function(client: table, input: table): function(): any
    pages_list_servers: function(client: table, input: table): function(): table, table
    items_list_servers: function(client: table, input: table): function(): any
    pages_list_tags_for_resource: function(client: table, input: table): function(): table, table
    items_list_tags_for_resource: function(client: table, input: table): function(): any
    pages_list_users: function(client: table, input: table): function(): table, table
    items_list_users: function(client: table, input: table): function(): any
    pages_list_web_apps: function(client: table, input: table): function(): table, table
    items_list_web_apps: function(client: table, input: table): function(): any
    pages_list_workflows: function(client: table, input: table): function(): table, table
    items_list_workflows: function(client: table, input: table): function(): any
end

return M
