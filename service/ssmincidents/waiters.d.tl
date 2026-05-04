local types = require("ssmincidents.types")

local record M
    wait_until_wait_for_replication_set_active: function(client: table, input: table, options: table): table, table
    wait_until_wait_for_replication_set_deleted: function(client: table, input: table, options: table): table, table
end

return M
