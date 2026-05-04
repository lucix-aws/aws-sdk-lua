local types = require("cloudfront.types")

local record M
    wait_until_distribution_deployed: function(client: table, input: table, options: table): table, table
    wait_until_invalidation_completed: function(client: table, input: table, options: table): table, table
    wait_until_invalidation_for_distribution_tenant_completed: function(client: table, input: table, options: table): table, table
    wait_until_streaming_distribution_deployed: function(client: table, input: table, options: table): table, table
end

return M
