local types = require("arcregionswitch.types")

local record M
    wait_until_plan_evaluation_status_passed: function(client: table, input: table, options: table): table, table
    wait_until_plan_execution_completed: function(client: table, input: table, options: table): table, table
end

return M
