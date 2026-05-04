local record M
    pages_describe_agents: function(client: table, input: table): function(): table, table
    items_describe_agents: function(client: table, input: table): function(): any
    pages_describe_continuous_exports: function(client: table, input: table): function(): table, table
    items_describe_continuous_exports: function(client: table, input: table): function(): any
    pages_describe_export_configurations: function(client: table, input: table): function(): table, table
    items_describe_export_configurations: function(client: table, input: table): function(): any
    pages_describe_export_tasks: function(client: table, input: table): function(): table, table
    items_describe_export_tasks: function(client: table, input: table): function(): any
    pages_describe_import_tasks: function(client: table, input: table): function(): table, table
    items_describe_import_tasks: function(client: table, input: table): function(): any
    pages_describe_tags: function(client: table, input: table): function(): table, table
    items_describe_tags: function(client: table, input: table): function(): any
    pages_list_configurations: function(client: table, input: table): function(): table, table
    items_list_configurations: function(client: table, input: table): function(): any
end

return M
