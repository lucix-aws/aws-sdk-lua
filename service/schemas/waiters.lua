local waiter = require("smithy.waiter")

local M = {}

--- Wait until CodeBindingExists.
function M.wait_until_code_binding_exists(client, input, options)
    return waiter.wait(client, "describeCodeBinding", input, {
        min_delay = 2,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Status",
                        expected = "CREATE_COMPLETE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "Status",
                        expected = "CREATE_IN_PROGRESS",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Status",
                        expected = "CREATE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    errorType = "NotFoundException",
                },
            },
        },
    }, options)
end

return M
