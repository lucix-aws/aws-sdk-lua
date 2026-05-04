local types = require("elasticache.types")

local record M
    wait_until_cache_cluster_available: function(client: table, input: table, options: table): table, table
    wait_until_cache_cluster_deleted: function(client: table, input: table, options: table): table, table
    wait_until_replication_group_available: function(client: table, input: table, options: table): table, table
    wait_until_replication_group_deleted: function(client: table, input: table, options: table): table, table
end

return M
