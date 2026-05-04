local record M
    pages_list_client_devices_associated_with_core_device: function(client: table, input: table): function(): table, table
    items_list_client_devices_associated_with_core_device: function(client: table, input: table): function(): any
    pages_list_component_versions: function(client: table, input: table): function(): table, table
    items_list_component_versions: function(client: table, input: table): function(): any
    pages_list_components: function(client: table, input: table): function(): table, table
    items_list_components: function(client: table, input: table): function(): any
    pages_list_core_devices: function(client: table, input: table): function(): table, table
    items_list_core_devices: function(client: table, input: table): function(): any
    pages_list_deployments: function(client: table, input: table): function(): table, table
    items_list_deployments: function(client: table, input: table): function(): any
    pages_list_effective_deployments: function(client: table, input: table): function(): table, table
    items_list_effective_deployments: function(client: table, input: table): function(): any
    pages_list_installed_components: function(client: table, input: table): function(): table, table
    items_list_installed_components: function(client: table, input: table): function(): any
end

return M
