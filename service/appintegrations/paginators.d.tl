local record M
    pages_list_application_associations: function(client: table, input: table): function(): table, table
    items_list_application_associations: function(client: table, input: table): function(): any
    pages_list_applications: function(client: table, input: table): function(): table, table
    items_list_applications: function(client: table, input: table): function(): any
    pages_list_data_integration_associations: function(client: table, input: table): function(): table, table
    items_list_data_integration_associations: function(client: table, input: table): function(): any
    pages_list_data_integrations: function(client: table, input: table): function(): table, table
    items_list_data_integrations: function(client: table, input: table): function(): any
    pages_list_event_integration_associations: function(client: table, input: table): function(): table, table
    items_list_event_integration_associations: function(client: table, input: table): function(): any
    pages_list_event_integrations: function(client: table, input: table): function(): table, table
    items_list_event_integrations: function(client: table, input: table): function(): any
end

return M
