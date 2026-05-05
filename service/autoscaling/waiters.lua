local waiter = require("smithy.waiter")

local M = {}

--- Wait until GroupExists.
function M.wait_until_group_exists(client, input, options)
    return waiter.wait(client, "describeAutoScalingGroups", input, {
        min_delay = 5,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "length(AutoScalingGroups) > `0`",
                        expected = "true",
                        comparator = "booleanEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "length(AutoScalingGroups) > `0`",
                        expected = "false",
                        comparator = "booleanEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until GroupInService.
function M.wait_until_group_in_service(client, input, options)
    return waiter.wait(client, "describeAutoScalingGroups", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "contains(AutoScalingGroups[].[length(Instances[?LifecycleState=='InService']) >= MinSize][], `false`)",
                        expected = "false",
                        comparator = "booleanEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "contains(AutoScalingGroups[].[length(Instances[?LifecycleState=='InService']) >= MinSize][], `false`)",
                        expected = "true",
                        comparator = "booleanEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until GroupNotExists.
function M.wait_until_group_not_exists(client, input, options)
    return waiter.wait(client, "describeAutoScalingGroups", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "length(AutoScalingGroups) > `0`",
                        expected = "false",
                        comparator = "booleanEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "length(AutoScalingGroups) > `0`",
                        expected = "true",
                        comparator = "booleanEquals",
                    },
                },
            },
        },
    }, options)
end

return M
