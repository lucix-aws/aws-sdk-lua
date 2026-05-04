local types = require("autoscaling.types")

local record M
    wait_until_group_exists: function(client: table, input: table, options: table): table, table
    wait_until_group_in_service: function(client: table, input: table, options: table): table, table
    wait_until_group_not_exists: function(client: table, input: table, options: table): table, table
end

return M
