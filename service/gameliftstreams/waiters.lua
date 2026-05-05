local waiter = require("smithy.waiter")

local M = {}

--- Wait until ApplicationDeleted.
function M.wait_until_application_deleted(client, input, options)
    return waiter.wait(client, "getApplication", input, {
        min_delay = 2,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    errorType = "ResourceNotFoundException",
                },
            },
        },
    }, options)
end

--- Wait until ApplicationReady.
function M.wait_until_application_ready(client, input, options)
    return waiter.wait(client, "getApplication", input, {
        min_delay = 2,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Status",
                        expected = "READY",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Status",
                        expected = "ERROR",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until StreamGroupActive.
function M.wait_until_stream_group_active(client, input, options)
    return waiter.wait(client, "getStreamGroup", input, {
        min_delay = 30,
        max_delay = 3600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Status",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Status",
                        expected = "ERROR",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Status",
                        expected = "ACTIVE_WITH_ERRORS",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Status",
                        expected = "DELETING",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until StreamGroupDeleted.
function M.wait_until_stream_group_deleted(client, input, options)
    return waiter.wait(client, "getStreamGroup", input, {
        min_delay = 30,
        max_delay = 1800,
        acceptors = {
            {
                state = "success",
                matcher = {
                    errorType = "ResourceNotFoundException",
                },
            },
        },
    }, options)
end

--- Wait until StreamSessionActive.
function M.wait_until_stream_session_active(client, input, options)
    return waiter.wait(client, "getStreamSession", input, {
        min_delay = 2,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Status",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Status",
                        expected = "ERROR",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
