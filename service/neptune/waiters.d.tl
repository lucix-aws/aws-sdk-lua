local types = require("neptune.types")

local record M
    wait_until_d_b_instance_available: function(client: table, input: table, options: table): table, table
    wait_until_d_b_instance_deleted: function(client: table, input: table, options: table): table, table
end

return M
