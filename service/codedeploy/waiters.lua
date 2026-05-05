local waiter = require("smithy.waiter")

local M = {}

--- Wait until DeploymentSuccessful.
function M.wait_until_deployment_successful(client, input, options)
    return waiter.wait(client, "getDeployment", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "deploymentInfo.status",
                        expected = "Succeeded",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "deploymentInfo.status",
                        expected = "Failed",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "deploymentInfo.status",
                        expected = "Stopped",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
