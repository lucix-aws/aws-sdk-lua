local types = require("route53recoverycontrolconfig.types")

local record M
    wait_until_cluster_created: function(client: table, input: table, options: table): table, table
    wait_until_cluster_deleted: function(client: table, input: table, options: table): table, table
    wait_until_control_panel_created: function(client: table, input: table, options: table): table, table
    wait_until_control_panel_deleted: function(client: table, input: table, options: table): table, table
    wait_until_routing_control_created: function(client: table, input: table, options: table): table, table
    wait_until_routing_control_deleted: function(client: table, input: table, options: table): table, table
end

return M
