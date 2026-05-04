local record M
    pages_list_access_log_subscriptions: function(client: table, input: table): function(): table, table
    items_list_access_log_subscriptions: function(client: table, input: table): function(): any
    pages_list_domain_verifications: function(client: table, input: table): function(): table, table
    items_list_domain_verifications: function(client: table, input: table): function(): any
    pages_list_listeners: function(client: table, input: table): function(): table, table
    items_list_listeners: function(client: table, input: table): function(): any
    pages_list_resource_configurations: function(client: table, input: table): function(): table, table
    items_list_resource_configurations: function(client: table, input: table): function(): any
    pages_list_resource_endpoint_associations: function(client: table, input: table): function(): table, table
    items_list_resource_endpoint_associations: function(client: table, input: table): function(): any
    pages_list_resource_gateways: function(client: table, input: table): function(): table, table
    items_list_resource_gateways: function(client: table, input: table): function(): any
    pages_list_rules: function(client: table, input: table): function(): table, table
    items_list_rules: function(client: table, input: table): function(): any
    pages_list_service_network_resource_associations: function(client: table, input: table): function(): table, table
    items_list_service_network_resource_associations: function(client: table, input: table): function(): any
    pages_list_service_network_service_associations: function(client: table, input: table): function(): table, table
    items_list_service_network_service_associations: function(client: table, input: table): function(): any
    pages_list_service_network_vpc_associations: function(client: table, input: table): function(): table, table
    items_list_service_network_vpc_associations: function(client: table, input: table): function(): any
    pages_list_service_network_vpc_endpoint_associations: function(client: table, input: table): function(): table, table
    items_list_service_network_vpc_endpoint_associations: function(client: table, input: table): function(): any
    pages_list_service_networks: function(client: table, input: table): function(): table, table
    items_list_service_networks: function(client: table, input: table): function(): any
    pages_list_services: function(client: table, input: table): function(): table, table
    items_list_services: function(client: table, input: table): function(): any
    pages_list_target_groups: function(client: table, input: table): function(): table, table
    items_list_target_groups: function(client: table, input: table): function(): any
    pages_list_targets: function(client: table, input: table): function(): table, table
    items_list_targets: function(client: table, input: table): function(): any
end

return M
