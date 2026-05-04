local waiter = require("waiter")

local M = {}

--- Wait until ChannelCreated.
function M.wait_until_channel_created(client, input, options)
    return waiter.wait(client, "getChannel", input, {
        min_delay = 2,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "channelStatus",
                        expected = "CREATED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "channelStatus",
                        expected = "CREATE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "channelStatus",
                        expected = "CREATING",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ChannelDeleted.
function M.wait_until_channel_deleted(client, input, options)
    return waiter.wait(client, "getChannel", input, {
        min_delay = 2,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    errorType = "ResourceNotFoundException",
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "channelStatus",
                        expected = "DELETED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "channelStatus",
                        expected = "DELETE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "channelStatus",
                        expected = "DELETING",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until SpaceCreated.
function M.wait_until_space_created(client, input, options)
    return waiter.wait(client, "getSpace", input, {
        min_delay = 300,
        max_delay = 7200,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CREATED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CREATE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "CREATING",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until SpaceDeleted.
function M.wait_until_space_deleted(client, input, options)
    return waiter.wait(client, "getSpace", input, {
        min_delay = 300,
        max_delay = 7200,
        acceptors = {
            {
                state = "success",
                matcher = {
                    errorType = "ResourceNotFoundException",
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "DELETED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "DELETE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "status",
                        expected = "DELETING",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
