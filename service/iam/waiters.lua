local waiter = require("waiter")

local M = {}

--- Wait until InstanceProfileExists.
function M.wait_until_instance_profile_exists(client, input, options)
    return waiter.wait(client, "getInstanceProfile", input, {
        min_delay = 1,
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
                    errorType = "NoSuchEntityException",
                },
            },
        },
    }, options)
end

--- Wait until PolicyExists.
function M.wait_until_policy_exists(client, input, options)
    return waiter.wait(client, "getPolicy", input, {
        min_delay = 1,
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
                    errorType = "NoSuchEntity",
                },
            },
        },
    }, options)
end

--- Wait until RoleExists.
function M.wait_until_role_exists(client, input, options)
    return waiter.wait(client, "getRole", input, {
        min_delay = 1,
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
                    errorType = "NoSuchEntity",
                },
            },
        },
    }, options)
end

--- Wait until UserExists.
function M.wait_until_user_exists(client, input, options)
    return waiter.wait(client, "getUser", input, {
        min_delay = 1,
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
                    errorType = "NoSuchEntity",
                },
            },
        },
    }, options)
end

return M
