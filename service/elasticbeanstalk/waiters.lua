local waiter = require("smithy.waiter")

local M = {}

--- Wait until EnvironmentExists.
function M.wait_until_environment_exists(client, input, options)
    return waiter.wait(client, "describeEnvironments", input, {
        min_delay = 20,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Environments[].Status",
                        expected = "Ready",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "Environments[].Status",
                        expected = "Launching",
                        comparator = "allStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until EnvironmentTerminated.
function M.wait_until_environment_terminated(client, input, options)
    return waiter.wait(client, "describeEnvironments", input, {
        min_delay = 20,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Environments[].Status",
                        expected = "Terminated",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "Environments[].Status",
                        expected = "Terminating",
                        comparator = "allStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until EnvironmentUpdated.
function M.wait_until_environment_updated(client, input, options)
    return waiter.wait(client, "describeEnvironments", input, {
        min_delay = 20,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Environments[].Status",
                        expected = "Ready",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "Environments[].Status",
                        expected = "Updating",
                        comparator = "allStringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
