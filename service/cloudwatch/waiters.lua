local waiter = require("smithy.waiter")

local M = {}

--- Wait until AlarmExists.
function M.wait_until_alarm_exists(client, input, options)
    return waiter.wait(client, "describeAlarms", input, {
        min_delay = 5,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "length(MetricAlarms[]) > `0`",
                        expected = "true",
                        comparator = "booleanEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until AlarmMuteRuleExists.
function M.wait_until_alarm_mute_rule_exists(client, input, options)
    return waiter.wait(client, "getAlarmMuteRule", input, {
        min_delay = 5,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    success = true,
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "ResourceNotFoundException",
                },
            },
        },
    }, options)
end

--- Wait until CompositeAlarmExists.
function M.wait_until_composite_alarm_exists(client, input, options)
    return waiter.wait(client, "describeAlarms", input, {
        min_delay = 5,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "length(CompositeAlarms[]) > `0`",
                        expected = "true",
                        comparator = "booleanEquals",
                    },
                },
            },
        },
    }, options)
end

return M
