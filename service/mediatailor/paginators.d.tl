local record M
    pages_get_channel_schedule: function(client: table, input: table): function(): table, table
    items_get_channel_schedule: function(client: table, input: table): function(): any
    pages_list_alerts: function(client: table, input: table): function(): table, table
    items_list_alerts: function(client: table, input: table): function(): any
    pages_list_channels: function(client: table, input: table): function(): table, table
    items_list_channels: function(client: table, input: table): function(): any
    pages_list_live_sources: function(client: table, input: table): function(): table, table
    items_list_live_sources: function(client: table, input: table): function(): any
    pages_list_playback_configurations: function(client: table, input: table): function(): table, table
    items_list_playback_configurations: function(client: table, input: table): function(): any
    pages_list_prefetch_schedules: function(client: table, input: table): function(): table, table
    items_list_prefetch_schedules: function(client: table, input: table): function(): any
    pages_list_source_locations: function(client: table, input: table): function(): table, table
    items_list_source_locations: function(client: table, input: table): function(): any
    pages_list_vod_sources: function(client: table, input: table): function(): table, table
    items_list_vod_sources: function(client: table, input: table): function(): any
end

return M
