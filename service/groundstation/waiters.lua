local waiter = require("waiter")

local M = {}

--- Wait until ContactScheduled.
function M.wait_until_contact_scheduled(client, input, options)
    return waiter.wait(client, "describeContact", input, {
        min_delay = 5,
        max_delay = 900,
        acceptors = {
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "contactStatus",
                        expected = "FAILED_TO_SCHEDULE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "contactStatus",
                        expected = "SCHEDULED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ContactUpdated.
function M.wait_until_contact_updated(client, input, options)
    return waiter.wait(client, "describeContactVersion", input, {
        min_delay = 5,
        max_delay = 900,
        acceptors = {
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "version.status",
                        expected = "FAILED_TO_UPDATE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "version.status",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
