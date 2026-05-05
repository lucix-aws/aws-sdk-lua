local waiter = require("smithy.waiter")

local M = {}

--- Wait until LoadBalancerAvailable.
function M.wait_until_load_balancer_available(client, input, options)
    return waiter.wait(client, "describeLoadBalancers", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "LoadBalancers[].State.Code",
                        expected = "active",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "LoadBalancers[].State.Code",
                        expected = "provisioning",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "LoadBalancerNotFound",
                },
            },
        },
    }, options)
end

--- Wait until LoadBalancerExists.
function M.wait_until_load_balancer_exists(client, input, options)
    return waiter.wait(client, "describeLoadBalancers", input, {
        min_delay = 15,
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
                    errorType = "LoadBalancerNotFound",
                },
            },
        },
    }, options)
end

--- Wait until LoadBalancersDeleted.
function M.wait_until_load_balancers_deleted(client, input, options)
    return waiter.wait(client, "describeLoadBalancers", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "LoadBalancers[].State.Code",
                        expected = "active",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "LoadBalancerNotFound",
                },
            },
        },
    }, options)
end

--- Wait until TargetDeregistered.
function M.wait_until_target_deregistered(client, input, options)
    return waiter.wait(client, "describeTargetHealth", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    errorType = "InvalidTarget",
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "TargetHealthDescriptions[].TargetHealth.State",
                        expected = "unused",
                        comparator = "allStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until TargetInService.
function M.wait_until_target_in_service(client, input, options)
    return waiter.wait(client, "describeTargetHealth", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "TargetHealthDescriptions[].TargetHealth.State",
                        expected = "healthy",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InvalidInstance",
                },
            },
        },
    }, options)
end

return M
