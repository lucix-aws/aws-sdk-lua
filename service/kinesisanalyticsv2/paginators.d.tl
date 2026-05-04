local record M
    pages_list_application_operations: function(client: table, input: table): function(): table, table
    items_list_application_operations: function(client: table, input: table): function(): any
    pages_list_application_snapshots: function(client: table, input: table): function(): table, table
    items_list_application_snapshots: function(client: table, input: table): function(): any
    pages_list_application_versions: function(client: table, input: table): function(): table, table
    items_list_application_versions: function(client: table, input: table): function(): any
    pages_list_applications: function(client: table, input: table): function(): table, table
    items_list_applications: function(client: table, input: table): function(): any
end

return M
