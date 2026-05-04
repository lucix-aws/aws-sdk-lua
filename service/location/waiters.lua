local waiter = require("waiter")

local M = {}

--- Wait until JobCompleted.
function M.wait_until_job_completed(client, input, options)
    return waiter.wait(client, "getJob", input, {
        min_delay = 60,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Status",
                        expected = "Completed",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Status",
                        expected = "Failed",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Status",
                        expected = "Cancelled",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
