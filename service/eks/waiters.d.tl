local types = require("eks.types")

local record M
    wait_until_addon_active: function(client: table, input: table, options: table): table, table
    wait_until_addon_deleted: function(client: table, input: table, options: table): table, table
    wait_until_cluster_active: function(client: table, input: table, options: table): table, table
    wait_until_cluster_deleted: function(client: table, input: table, options: table): table, table
    wait_until_fargate_profile_active: function(client: table, input: table, options: table): table, table
    wait_until_fargate_profile_deleted: function(client: table, input: table, options: table): table, table
    wait_until_nodegroup_active: function(client: table, input: table, options: table): table, table
    wait_until_nodegroup_deleted: function(client: table, input: table, options: table): table, table
end

return M
