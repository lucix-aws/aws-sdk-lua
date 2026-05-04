local types = require("elasticbeanstalk.types")

local record M
    wait_until_environment_exists: function(client: table, input: table, options: table): table, table
    wait_until_environment_terminated: function(client: table, input: table, options: table): table, table
    wait_until_environment_updated: function(client: table, input: table, options: table): table, table
end

return M
