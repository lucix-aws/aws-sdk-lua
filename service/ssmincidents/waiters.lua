local waiter = require("smithy.waiter")

local M = {}

--- Wait until WaitForReplicationSetActive.
function M.wait_until_wait_for_replication_set_active(client, input, options)
    return waiter.wait(client, "getReplicationSet", input, {
        min_delay = 30,
        max_delay = 30,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "replicationSet.status",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "replicationSet.status",
                        expected = "CREATING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "replicationSet.status",
                        expected = "UPDATING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "replicationSet.status",
                        expected = "FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until WaitForReplicationSetDeleted.
function M.wait_until_wait_for_replication_set_deleted(client, input, options)
    return waiter.wait(client, "getReplicationSet", input, {
        min_delay = 30,
        max_delay = 30,
        acceptors = {
            {
                state = "success",
                matcher = {
                    errorType = "ResourceNotFoundException",
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "replicationSet.status",
                        expected = "DELETING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "replicationSet.status",
                        expected = "FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
