local record M
    pages_list_destinations: function(client: table, input: table): function(): table, table
    pages_list_device_profiles: function(client: table, input: table): function(): table, table
    pages_list_fuota_tasks: function(client: table, input: table): function(): table, table
    pages_list_multicast_groups: function(client: table, input: table): function(): table, table
    pages_list_multicast_groups_by_fuota_task: function(client: table, input: table): function(): table, table
    pages_list_network_analyzer_configurations: function(client: table, input: table): function(): table, table
    pages_list_position_configurations: function(client: table, input: table): function(): table, table
    pages_list_queued_messages: function(client: table, input: table): function(): table, table
    pages_list_service_profiles: function(client: table, input: table): function(): table, table
    pages_list_wireless_devices: function(client: table, input: table): function(): table, table
    pages_list_wireless_gateways: function(client: table, input: table): function(): table, table
end

return M
