local waiter = require("smithy.waiter")

local M = {}

--- Wait until FlowActive.
function M.wait_until_flow_active(client, input, options)
    return waiter.wait(client, "describeFlow", input, {
        min_delay = 3,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Flow.Status",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "Flow.Status",
                        expected = "STARTING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "Flow.Status",
                        expected = "UPDATING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InternalServerErrorException",
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "ServiceUnavailableException",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Flow.Status",
                        expected = "STANDBY",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Flow.Status",
                        expected = "ERROR",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until FlowDeleted.
function M.wait_until_flow_deleted(client, input, options)
    return waiter.wait(client, "describeFlow", input, {
        min_delay = 3,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    errorType = "NotFoundException",
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "Flow.Status",
                        expected = "DELETING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InternalServerErrorException",
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "ServiceUnavailableException",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Flow.Status",
                        expected = "ERROR",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until FlowStandby.
function M.wait_until_flow_standby(client, input, options)
    return waiter.wait(client, "describeFlow", input, {
        min_delay = 3,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Flow.Status",
                        expected = "STANDBY",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "Flow.Status",
                        expected = "STOPPING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InternalServerErrorException",
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "ServiceUnavailableException",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Flow.Status",
                        expected = "ERROR",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until InputActive.
function M.wait_until_input_active(client, input, options)
    return waiter.wait(client, "getRouterInput", input, {
        min_delay = 3,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "RouterInput.State",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "RouterInput.State",
                        expected = "STARTING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "RouterInput.State",
                        expected = "UPDATING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "RouterInput.State",
                        expected = "MIGRATING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InternalServerErrorException",
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "ServiceUnavailableException",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "RouterInput.State",
                        expected = "ERROR",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until InputDeleted.
function M.wait_until_input_deleted(client, input, options)
    return waiter.wait(client, "getRouterInput", input, {
        min_delay = 3,
        max_delay = 120,
        acceptors = {
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "RouterInput.State",
                        expected = "DELETING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InternalServerErrorException",
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "ServiceUnavailableException",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "RouterInput.State",
                        expected = "ERROR",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "NotFoundException",
                },
            },
        },
    }, options)
end

--- Wait until InputStandby.
function M.wait_until_input_standby(client, input, options)
    return waiter.wait(client, "getRouterInput", input, {
        min_delay = 3,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "RouterInput.State",
                        expected = "STANDBY",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "RouterInput.State",
                        expected = "STOPPING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InternalServerErrorException",
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "ServiceUnavailableException",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "RouterInput.State",
                        expected = "ERROR",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until OutputActive.
function M.wait_until_output_active(client, input, options)
    return waiter.wait(client, "getRouterOutput", input, {
        min_delay = 3,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "RouterOutput.State",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "RouterOutput.State",
                        expected = "STARTING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "RouterOutput.State",
                        expected = "UPDATING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "RouterOutput.State",
                        expected = "MIGRATING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InternalServerErrorException",
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "ServiceUnavailableException",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "RouterOutput.State",
                        expected = "ERROR",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until OutputDeleted.
function M.wait_until_output_deleted(client, input, options)
    return waiter.wait(client, "getRouterOutput", input, {
        min_delay = 3,
        max_delay = 120,
        acceptors = {
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "RouterOutput.State",
                        expected = "DELETING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InternalServerErrorException",
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "ServiceUnavailableException",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "RouterOutput.State",
                        expected = "ERROR",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "NotFoundException",
                },
            },
        },
    }, options)
end

--- Wait until OutputRouted.
function M.wait_until_output_routed(client, input, options)
    return waiter.wait(client, "getRouterOutput", input, {
        min_delay = 3,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "RouterOutput.RoutedState",
                        expected = "ROUTED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "RouterOutput.RoutedState",
                        expected = "ROUTING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InternalServerErrorException",
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "ServiceUnavailableException",
                },
            },
        },
    }, options)
end

--- Wait until OutputStandby.
function M.wait_until_output_standby(client, input, options)
    return waiter.wait(client, "getRouterOutput", input, {
        min_delay = 3,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "RouterOutput.State",
                        expected = "STANDBY",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "RouterOutput.State",
                        expected = "STOPPING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InternalServerErrorException",
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "ServiceUnavailableException",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "RouterOutput.State",
                        expected = "ERROR",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until OutputUnrouted.
function M.wait_until_output_unrouted(client, input, options)
    return waiter.wait(client, "getRouterOutput", input, {
        min_delay = 3,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "RouterOutput.RoutedState",
                        expected = "UNROUTED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "RouterOutput.RoutedState",
                        expected = "ROUTING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InternalServerErrorException",
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "ServiceUnavailableException",
                },
            },
        },
    }, options)
end

return M
