local record M
    pages_list_cidr_blocks: function(client: table, input: table): function(): table, table
    items_list_cidr_blocks: function(client: table, input: table): function(): any
    pages_list_cidr_collections: function(client: table, input: table): function(): table, table
    items_list_cidr_collections: function(client: table, input: table): function(): any
    pages_list_cidr_locations: function(client: table, input: table): function(): table, table
    items_list_cidr_locations: function(client: table, input: table): function(): any
    pages_list_health_checks: function(client: table, input: table): function(): table, table
    items_list_health_checks: function(client: table, input: table): function(): any
    pages_list_hosted_zones: function(client: table, input: table): function(): table, table
    items_list_hosted_zones: function(client: table, input: table): function(): any
    pages_list_query_logging_configs: function(client: table, input: table): function(): table, table
    items_list_query_logging_configs: function(client: table, input: table): function(): any
end

return M
