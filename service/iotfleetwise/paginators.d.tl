local record M
    pages_get_vehicle_status: function(client: table, input: table): function(): table, table
    items_get_vehicle_status: function(client: table, input: table): function(): any
    pages_list_campaigns: function(client: table, input: table): function(): table, table
    items_list_campaigns: function(client: table, input: table): function(): any
    pages_list_decoder_manifest_network_interfaces: function(client: table, input: table): function(): table, table
    items_list_decoder_manifest_network_interfaces: function(client: table, input: table): function(): any
    pages_list_decoder_manifest_signals: function(client: table, input: table): function(): table, table
    items_list_decoder_manifest_signals: function(client: table, input: table): function(): any
    pages_list_decoder_manifests: function(client: table, input: table): function(): table, table
    items_list_decoder_manifests: function(client: table, input: table): function(): any
    pages_list_fleets: function(client: table, input: table): function(): table, table
    items_list_fleets: function(client: table, input: table): function(): any
    pages_list_fleets_for_vehicle: function(client: table, input: table): function(): table, table
    items_list_fleets_for_vehicle: function(client: table, input: table): function(): any
    pages_list_model_manifest_nodes: function(client: table, input: table): function(): table, table
    items_list_model_manifest_nodes: function(client: table, input: table): function(): any
    pages_list_model_manifests: function(client: table, input: table): function(): table, table
    items_list_model_manifests: function(client: table, input: table): function(): any
    pages_list_signal_catalog_nodes: function(client: table, input: table): function(): table, table
    items_list_signal_catalog_nodes: function(client: table, input: table): function(): any
    pages_list_signal_catalogs: function(client: table, input: table): function(): table, table
    items_list_signal_catalogs: function(client: table, input: table): function(): any
    pages_list_state_templates: function(client: table, input: table): function(): table, table
    items_list_state_templates: function(client: table, input: table): function(): any
    pages_list_vehicles: function(client: table, input: table): function(): table, table
    items_list_vehicles: function(client: table, input: table): function(): any
    pages_list_vehicles_in_fleet: function(client: table, input: table): function(): table, table
    items_list_vehicles_in_fleet: function(client: table, input: table): function(): any
end

return M
