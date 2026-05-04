local record M
    pages_list_api_keys: function(client: table, input: table): function(): table, table
    items_list_api_keys: function(client: table, input: table): function(): any
    pages_list_apis: function(client: table, input: table): function(): table, table
    items_list_apis: function(client: table, input: table): function(): any
    pages_list_channel_namespaces: function(client: table, input: table): function(): table, table
    items_list_channel_namespaces: function(client: table, input: table): function(): any
    pages_list_data_sources: function(client: table, input: table): function(): table, table
    items_list_data_sources: function(client: table, input: table): function(): any
    pages_list_domain_names: function(client: table, input: table): function(): table, table
    items_list_domain_names: function(client: table, input: table): function(): any
    pages_list_functions: function(client: table, input: table): function(): table, table
    items_list_functions: function(client: table, input: table): function(): any
    pages_list_graphql_apis: function(client: table, input: table): function(): table, table
    items_list_graphql_apis: function(client: table, input: table): function(): any
    pages_list_resolvers: function(client: table, input: table): function(): table, table
    items_list_resolvers: function(client: table, input: table): function(): any
    pages_list_resolvers_by_function: function(client: table, input: table): function(): table, table
    items_list_resolvers_by_function: function(client: table, input: table): function(): any
    pages_list_source_api_associations: function(client: table, input: table): function(): table, table
    items_list_source_api_associations: function(client: table, input: table): function(): any
    pages_list_types: function(client: table, input: table): function(): table, table
    items_list_types: function(client: table, input: table): function(): any
    pages_list_types_by_association: function(client: table, input: table): function(): table, table
    items_list_types_by_association: function(client: table, input: table): function(): any
end

return M
