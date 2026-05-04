local waiter = require("waiter")

local M = {}

--- Wait until ServerOffline.
function M.wait_until_server_offline(client, input, options)
    return waiter.wait(client, "describeServer", input, {
        min_delay = 30,
        max_delay = 3600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Server.State",
                        expected = "OFFLINE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Server.State",
                        expected = "STOP_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ServerOnline.
function M.wait_until_server_online(client, input, options)
    return waiter.wait(client, "describeServer", input, {
        min_delay = 30,
        max_delay = 3600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Server.State",
                        expected = "ONLINE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Server.State",
                        expected = "START_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
