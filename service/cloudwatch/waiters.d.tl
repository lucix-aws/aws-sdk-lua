local types = require("cloudwatch.types")

local record M
    wait_until_alarm_exists: function(client: table, input: table, options: table): table, table
    wait_until_alarm_mute_rule_exists: function(client: table, input: table, options: table): table, table
    wait_until_composite_alarm_exists: function(client: table, input: table, options: table): table, table
end

return M
