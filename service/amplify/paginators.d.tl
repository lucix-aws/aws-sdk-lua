local record M
    pages_list_apps: function(client: table, input: table): function(): table, table
    items_list_apps: function(client: table, input: table): function(): any
    pages_list_branches: function(client: table, input: table): function(): table, table
    items_list_branches: function(client: table, input: table): function(): any
    pages_list_domain_associations: function(client: table, input: table): function(): table, table
    items_list_domain_associations: function(client: table, input: table): function(): any
    pages_list_jobs: function(client: table, input: table): function(): table, table
    items_list_jobs: function(client: table, input: table): function(): any
end

return M
