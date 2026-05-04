local waiter = require("waiter")

local M = {}

--- Wait until TransformerJobSucceeded.
function M.wait_until_transformer_job_succeeded(client, input, options)
    return waiter.wait(client, "getTransformerJob", input, {
        min_delay = 10,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "succeeded",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "failed",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
