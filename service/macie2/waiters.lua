local waiter = require("waiter")

local M = {}

--- Wait until FindingRevealed.
function M.wait_until_finding_revealed(client, input, options)
    return waiter.wait(client, "getSensitiveDataOccurrences", input, {
        min_delay = 2,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "SUCCESS",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "ERROR",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
