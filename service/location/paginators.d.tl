local record M
    pages_forecast_geofence_events: function(client: table, input: table): function(): table, table
    items_forecast_geofence_events: function(client: table, input: table): function(): any
    pages_get_device_position_history: function(client: table, input: table): function(): table, table
    items_get_device_position_history: function(client: table, input: table): function(): any
    pages_list_device_positions: function(client: table, input: table): function(): table, table
    items_list_device_positions: function(client: table, input: table): function(): any
    pages_list_geofence_collections: function(client: table, input: table): function(): table, table
    items_list_geofence_collections: function(client: table, input: table): function(): any
    pages_list_geofences: function(client: table, input: table): function(): table, table
    items_list_geofences: function(client: table, input: table): function(): any
    pages_list_jobs: function(client: table, input: table): function(): table, table
    items_list_jobs: function(client: table, input: table): function(): any
    pages_list_keys: function(client: table, input: table): function(): table, table
    items_list_keys: function(client: table, input: table): function(): any
    pages_list_maps: function(client: table, input: table): function(): table, table
    items_list_maps: function(client: table, input: table): function(): any
    pages_list_place_indexes: function(client: table, input: table): function(): table, table
    items_list_place_indexes: function(client: table, input: table): function(): any
    pages_list_route_calculators: function(client: table, input: table): function(): table, table
    items_list_route_calculators: function(client: table, input: table): function(): any
    pages_list_tracker_consumers: function(client: table, input: table): function(): table, table
    items_list_tracker_consumers: function(client: table, input: table): function(): any
    pages_list_trackers: function(client: table, input: table): function(): table, table
    items_list_trackers: function(client: table, input: table): function(): any
end

return M
