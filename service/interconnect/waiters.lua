local waiter = require("waiter")

local M = {}

--- Wait until ConnectionAvailable.
function M.wait_until_connection_available(client, input, options)
    return waiter.wait(client, "getConnection", input, {
        min_delay = 30,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "connection.state",
                        expected = "available",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "connection.state",
                        expected = "deleted",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "connection.state",
                        expected = "down",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ConnectionDeleted.
function M.wait_until_connection_deleted(client, input, options)
    return waiter.wait(client, "getConnection", input, {
        min_delay = 30,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "connection.state",
                        expected = "deleted",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
