local record M
    pages_describe_custom_domains: function(client: table, input: table): function(): table, table
    pages_list_auto_scaling_configurations: function(client: table, input: table): function(): table, table
    pages_list_connections: function(client: table, input: table): function(): table, table
    pages_list_observability_configurations: function(client: table, input: table): function(): table, table
    pages_list_operations: function(client: table, input: table): function(): table, table
    pages_list_services: function(client: table, input: table): function(): table, table
    pages_list_services_for_auto_scaling_configuration: function(client: table, input: table): function(): table, table
    pages_list_vpc_connectors: function(client: table, input: table): function(): table, table
    pages_list_vpc_ingress_connections: function(client: table, input: table): function(): table, table
end

return M
