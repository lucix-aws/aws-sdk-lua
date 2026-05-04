local waiter = require("waiter")

local M = {}

--- Wait until DeploymentComplete.
function M.wait_until_deployment_complete(client, input, options)
    return waiter.wait(client, "getDeployment", input, {
        min_delay = 30,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "State",
                        expected = "COMPLETE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "State",
                        expected = "ROLLED_BACK",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "State",
                        expected = "REVERTED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until EnvironmentReadyForDeployment.
function M.wait_until_environment_ready_for_deployment(client, input, options)
    return waiter.wait(client, "getEnvironment", input, {
        min_delay = 30,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "State",
                        expected = "ReadyForDeployment",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "State",
                        expected = "RolledBack",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "State",
                        expected = "Reverted",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
