local types = require("redshift.types")

local record M
    wait_until_cluster_available: function(client: table, input: table, options: table): table, table
    wait_until_cluster_deleted: function(client: table, input: table, options: table): table, table
    wait_until_cluster_restored: function(client: table, input: table, options: table): table, table
    wait_until_snapshot_available: function(client: table, input: table, options: table): table, table
end

return M
