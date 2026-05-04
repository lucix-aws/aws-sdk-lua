local types = require("dsql.types")

local record M
    wait_until_cluster_active: function(client: table, input: table, options: table): table, table
    wait_until_cluster_not_exists: function(client: table, input: table, options: table): table, table
end

return M
