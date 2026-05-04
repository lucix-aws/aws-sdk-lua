local record M
    pages_get_server_details: function(client: table, input: table): function(): table, table
    items_get_server_details: function(client: table, input: table): function(): any
    pages_list_analyzable_servers: function(client: table, input: table): function(): table, table
    items_list_analyzable_servers: function(client: table, input: table): function(): any
    pages_list_application_components: function(client: table, input: table): function(): table, table
    items_list_application_components: function(client: table, input: table): function(): any
    pages_list_collectors: function(client: table, input: table): function(): table, table
    items_list_collectors: function(client: table, input: table): function(): any
    pages_list_import_file_task: function(client: table, input: table): function(): table, table
    items_list_import_file_task: function(client: table, input: table): function(): any
    pages_list_servers: function(client: table, input: table): function(): table, table
    items_list_servers: function(client: table, input: table): function(): any
end

return M
