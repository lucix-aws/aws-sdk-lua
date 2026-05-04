local types = require("medialive.types")

local record M
    wait_until_channel_created: function(client: table, input: table, options: table): table, table
    wait_until_channel_deleted: function(client: table, input: table, options: table): table, table
    wait_until_channel_placement_group_assigned: function(client: table, input: table, options: table): table, table
    wait_until_channel_placement_group_deleted: function(client: table, input: table, options: table): table, table
    wait_until_channel_placement_group_unassigned: function(client: table, input: table, options: table): table, table
    wait_until_channel_running: function(client: table, input: table, options: table): table, table
    wait_until_channel_stopped: function(client: table, input: table, options: table): table, table
    wait_until_cluster_created: function(client: table, input: table, options: table): table, table
    wait_until_cluster_deleted: function(client: table, input: table, options: table): table, table
    wait_until_input_attached: function(client: table, input: table, options: table): table, table
    wait_until_input_deleted: function(client: table, input: table, options: table): table, table
    wait_until_input_detached: function(client: table, input: table, options: table): table, table
    wait_until_multiplex_created: function(client: table, input: table, options: table): table, table
    wait_until_multiplex_deleted: function(client: table, input: table, options: table): table, table
    wait_until_multiplex_running: function(client: table, input: table, options: table): table, table
    wait_until_multiplex_stopped: function(client: table, input: table, options: table): table, table
    wait_until_node_deregistered: function(client: table, input: table, options: table): table, table
    wait_until_node_registered: function(client: table, input: table, options: table): table, table
    wait_until_signal_map_created: function(client: table, input: table, options: table): table, table
    wait_until_signal_map_monitor_deleted: function(client: table, input: table, options: table): table, table
    wait_until_signal_map_monitor_deployed: function(client: table, input: table, options: table): table, table
    wait_until_signal_map_updated: function(client: table, input: table, options: table): table, table
end

return M
