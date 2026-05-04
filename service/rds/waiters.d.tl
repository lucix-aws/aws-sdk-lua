local types = require("rds.types")

local record M
    wait_until_d_b_cluster_available: function(client: table, input: table, options: table): table, table
    wait_until_d_b_cluster_deleted: function(client: table, input: table, options: table): table, table
    wait_until_d_b_cluster_snapshot_available: function(client: table, input: table, options: table): table, table
    wait_until_d_b_cluster_snapshot_deleted: function(client: table, input: table, options: table): table, table
    wait_until_d_b_instance_available: function(client: table, input: table, options: table): table, table
    wait_until_d_b_instance_deleted: function(client: table, input: table, options: table): table, table
    wait_until_d_b_snapshot_available: function(client: table, input: table, options: table): table, table
    wait_until_d_b_snapshot_deleted: function(client: table, input: table, options: table): table, table
    wait_until_tenant_database_available: function(client: table, input: table, options: table): table, table
    wait_until_tenant_database_deleted: function(client: table, input: table, options: table): table, table
end

return M
