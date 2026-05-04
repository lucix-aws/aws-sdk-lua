local types = require("emr.types")

local record M
    wait_until_cluster_running: function(client: table, input: table, options: table): table, table
    wait_until_cluster_terminated: function(client: table, input: table, options: table): table, table
    wait_until_step_complete: function(client: table, input: table, options: table): table, table
end

return M
