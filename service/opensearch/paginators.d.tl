local record M
    pages_describe_domain_auto_tunes: function(client: table, input: table): function(): table, table
    pages_describe_inbound_connections: function(client: table, input: table): function(): table, table
    pages_describe_outbound_connections: function(client: table, input: table): function(): table, table
    pages_describe_packages: function(client: table, input: table): function(): table, table
    pages_describe_reserved_instance_offerings: function(client: table, input: table): function(): table, table
    pages_describe_reserved_instances: function(client: table, input: table): function(): table, table
    pages_get_package_version_history: function(client: table, input: table): function(): table, table
    pages_get_upgrade_history: function(client: table, input: table): function(): table, table
    pages_list_applications: function(client: table, input: table): function(): table, table
    items_list_applications: function(client: table, input: table): function(): any
    pages_list_domain_maintenances: function(client: table, input: table): function(): table, table
    pages_list_domains_for_package: function(client: table, input: table): function(): table, table
    pages_list_instance_type_details: function(client: table, input: table): function(): table, table
    pages_list_packages_for_domain: function(client: table, input: table): function(): table, table
    pages_list_scheduled_actions: function(client: table, input: table): function(): table, table
    pages_list_versions: function(client: table, input: table): function(): table, table
end

return M
