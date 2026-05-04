local types = require("appconfig.types")

local record M
    wait_until_deployment_complete: function(client: table, input: table, options: table): table, table
    wait_until_environment_ready_for_deployment: function(client: table, input: table, options: table): table, table
end

return M
