local record M
    pages_describe_tape_archives: function(client: table, input: table): function(): table, table
    items_describe_tape_archives: function(client: table, input: table): function(): any
    pages_describe_tape_recovery_points: function(client: table, input: table): function(): table, table
    items_describe_tape_recovery_points: function(client: table, input: table): function(): any
    pages_describe_tapes: function(client: table, input: table): function(): table, table
    items_describe_tapes: function(client: table, input: table): function(): any
    pages_describe_v_t_l_devices: function(client: table, input: table): function(): table, table
    items_describe_v_t_l_devices: function(client: table, input: table): function(): any
    pages_list_cache_reports: function(client: table, input: table): function(): table, table
    items_list_cache_reports: function(client: table, input: table): function(): any
    pages_list_file_shares: function(client: table, input: table): function(): table, table
    items_list_file_shares: function(client: table, input: table): function(): any
    pages_list_file_system_associations: function(client: table, input: table): function(): table, table
    items_list_file_system_associations: function(client: table, input: table): function(): any
    pages_list_gateways: function(client: table, input: table): function(): table, table
    items_list_gateways: function(client: table, input: table): function(): any
    pages_list_tags_for_resource: function(client: table, input: table): function(): table, table
    items_list_tags_for_resource: function(client: table, input: table): function(): any
    pages_list_tape_pools: function(client: table, input: table): function(): table, table
    items_list_tape_pools: function(client: table, input: table): function(): any
    pages_list_tapes: function(client: table, input: table): function(): table, table
    items_list_tapes: function(client: table, input: table): function(): any
    pages_list_volumes: function(client: table, input: table): function(): table, table
    items_list_volumes: function(client: table, input: table): function(): any
end

return M
