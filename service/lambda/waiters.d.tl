local types = require("lambda.types")

local record M
    wait_until_function_active: function(client: table, input: table, options: table): table, table
    wait_until_function_active_v2: function(client: table, input: table, options: table): table, table
    wait_until_function_exists: function(client: table, input: table, options: table): table, table
    wait_until_function_updated: function(client: table, input: table, options: table): table, table
    wait_until_function_updated_v2: function(client: table, input: table, options: table): table, table
    wait_until_published_version_active: function(client: table, input: table, options: table): table, table
end

return M
