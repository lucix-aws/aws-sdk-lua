local types = require("interconnect.types")

local record M
    wait_until_connection_available: function(client: table, input: table, options: table): table, table
    wait_until_connection_deleted: function(client: table, input: table, options: table): table, table
end

return M
