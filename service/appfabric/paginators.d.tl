local record M
    pages_list_app_authorizations: function(client: table, input: table): function(): table, table
    items_list_app_authorizations: function(client: table, input: table): function(): any
    pages_list_app_bundles: function(client: table, input: table): function(): table, table
    items_list_app_bundles: function(client: table, input: table): function(): any
    pages_list_ingestion_destinations: function(client: table, input: table): function(): table, table
    items_list_ingestion_destinations: function(client: table, input: table): function(): any
    pages_list_ingestions: function(client: table, input: table): function(): table, table
    items_list_ingestions: function(client: table, input: table): function(): any
end

return M
