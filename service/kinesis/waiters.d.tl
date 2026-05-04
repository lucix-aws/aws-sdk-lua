local types = require("kinesis.types")

local record M
    wait_until_stream_exists: function(client: table, input: table, options: table): table, table
    wait_until_stream_not_exists: function(client: table, input: table, options: table): table, table
end

return M
