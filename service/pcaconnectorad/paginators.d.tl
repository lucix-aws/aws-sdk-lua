local record M
    pages_list_connectors: function(client: table, input: table): function(): table, table
    items_list_connectors: function(client: table, input: table): function(): any
    pages_list_directory_registrations: function(client: table, input: table): function(): table, table
    items_list_directory_registrations: function(client: table, input: table): function(): any
    pages_list_service_principal_names: function(client: table, input: table): function(): table, table
    items_list_service_principal_names: function(client: table, input: table): function(): any
    pages_list_template_group_access_control_entries: function(client: table, input: table): function(): table, table
    items_list_template_group_access_control_entries: function(client: table, input: table): function(): any
    pages_list_templates: function(client: table, input: table): function(): table, table
    items_list_templates: function(client: table, input: table): function(): any
end

return M
