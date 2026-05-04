local record M
    pages_get_resource_explorer_setup: function(client: table, input: table): function(): table, table
    items_get_resource_explorer_setup: function(client: table, input: table): function(): any
    pages_list_indexes: function(client: table, input: table): function(): table, table
    items_list_indexes: function(client: table, input: table): function(): any
    pages_list_indexes_for_members: function(client: table, input: table): function(): table, table
    items_list_indexes_for_members: function(client: table, input: table): function(): any
    pages_list_managed_views: function(client: table, input: table): function(): table, table
    items_list_managed_views: function(client: table, input: table): function(): any
    pages_list_resources: function(client: table, input: table): function(): table, table
    items_list_resources: function(client: table, input: table): function(): any
    pages_list_service_indexes: function(client: table, input: table): function(): table, table
    items_list_service_indexes: function(client: table, input: table): function(): any
    pages_list_service_views: function(client: table, input: table): function(): table, table
    items_list_service_views: function(client: table, input: table): function(): any
    pages_list_streaming_access_for_services: function(client: table, input: table): function(): table, table
    items_list_streaming_access_for_services: function(client: table, input: table): function(): any
    pages_list_supported_resource_types: function(client: table, input: table): function(): table, table
    items_list_supported_resource_types: function(client: table, input: table): function(): any
    pages_list_views: function(client: table, input: table): function(): table, table
    items_list_views: function(client: table, input: table): function(): any
    pages_search: function(client: table, input: table): function(): table, table
    items_search: function(client: table, input: table): function(): any
end

return M
