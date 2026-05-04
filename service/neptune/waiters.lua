local waiter = require("waiter")

local M = {}

--- Wait until DBInstanceAvailable.
function M.wait_until_d_b_instance_available(client, input, options)
    return waiter.wait(client, "describeDBInstances", input, {
        min_delay = 30,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "DBInstances[].DBInstanceStatus",
                        expected = "available",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBInstances[].DBInstanceStatus",
                        expected = "deleted",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBInstances[].DBInstanceStatus",
                        expected = "deleting",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBInstances[].DBInstanceStatus",
                        expected = "failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBInstances[].DBInstanceStatus",
                        expected = "incompatible-restore",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBInstances[].DBInstanceStatus",
                        expected = "incompatible-parameters",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until DBInstanceDeleted.
function M.wait_until_d_b_instance_deleted(client, input, options)
    return waiter.wait(client, "describeDBInstances", input, {
        min_delay = 30,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "DBInstances[].DBInstanceStatus",
                        expected = "deleted",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "DBInstanceNotFound",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBInstances[].DBInstanceStatus",
                        expected = "creating",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBInstances[].DBInstanceStatus",
                        expected = "modifying",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBInstances[].DBInstanceStatus",
                        expected = "rebooting",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBInstances[].DBInstanceStatus",
                        expected = "resetting-master-credentials",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
