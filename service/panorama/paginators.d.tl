local record M
    pages_list_application_instance_dependencies: function(client: table, input: table): function(): table, table
    pages_list_application_instance_node_instances: function(client: table, input: table): function(): table, table
    pages_list_application_instances: function(client: table, input: table): function(): table, table
    pages_list_devices: function(client: table, input: table): function(): table, table
    pages_list_devices_jobs: function(client: table, input: table): function(): table, table
    pages_list_node_from_template_jobs: function(client: table, input: table): function(): table, table
    pages_list_nodes: function(client: table, input: table): function(): table, table
    pages_list_package_import_jobs: function(client: table, input: table): function(): table, table
    pages_list_packages: function(client: table, input: table): function(): table, table
end

return M
