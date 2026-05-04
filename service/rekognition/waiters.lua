local waiter = require("waiter")

local M = {}

--- Wait until ProjectVersionRunning.
function M.wait_until_project_version_running(client, input, options)
    return waiter.wait(client, "describeProjectVersions", input, {
        min_delay = 30,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ProjectVersionDescriptions[].Status",
                        expected = "RUNNING",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ProjectVersionDescriptions[].Status",
                        expected = "FAILED",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ProjectVersionTrainingCompleted.
function M.wait_until_project_version_training_completed(client, input, options)
    return waiter.wait(client, "describeProjectVersions", input, {
        min_delay = 120,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ProjectVersionDescriptions[].Status",
                        expected = "TRAINING_COMPLETED",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ProjectVersionDescriptions[].Status",
                        expected = "TRAINING_FAILED",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
