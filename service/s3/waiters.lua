local waiter = require("waiter")

local M = {}

--- Wait until BucketExists.
function M.wait_until_bucket_exists(client, input, options)
    return waiter.wait(client, "headBucket", input, {
        min_delay = 5,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    success = true,
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "NotFound",
                },
            },
        },
    }, options)
end

--- Wait until BucketNotExists.
function M.wait_until_bucket_not_exists(client, input, options)
    return waiter.wait(client, "headBucket", input, {
        min_delay = 5,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    errorType = "NotFound",
                },
            },
        },
    }, options)
end

--- Wait until ObjectExists.
function M.wait_until_object_exists(client, input, options)
    return waiter.wait(client, "headObject", input, {
        min_delay = 5,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    success = true,
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "NotFound",
                },
            },
        },
    }, options)
end

--- Wait until ObjectNotExists.
function M.wait_until_object_not_exists(client, input, options)
    return waiter.wait(client, "headObject", input, {
        min_delay = 5,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    errorType = "NotFound",
                },
            },
        },
    }, options)
end

return M
