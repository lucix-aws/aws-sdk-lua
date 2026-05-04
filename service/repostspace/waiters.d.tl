local types = require("repostspace.types")

local record M
    wait_until_channel_created: function(client: table, input: table, options: table): table, table
    wait_until_channel_deleted: function(client: table, input: table, options: table): table, table
    wait_until_space_created: function(client: table, input: table, options: table): table, table
    wait_until_space_deleted: function(client: table, input: table, options: table): table, table
end

return M
