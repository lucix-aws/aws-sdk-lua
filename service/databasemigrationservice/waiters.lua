local waiter = require("waiter")

local M = {}

--- Wait until EndpointDeleted.
function M.wait_until_endpoint_deleted(client, input, options)
    return waiter.wait(client, "describeEndpoints", input, {
        min_delay = 5,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    errorType = "ResourceNotFoundFault",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Endpoints[].Status",
                        expected = "active",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Endpoints[].Status",
                        expected = "creating",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ReplicationInstanceAvailable.
function M.wait_until_replication_instance_available(client, input, options)
    return waiter.wait(client, "describeReplicationInstances", input, {
        min_delay = 60,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ReplicationInstances[].ReplicationInstanceStatus",
                        expected = "available",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationInstances[].ReplicationInstanceStatus",
                        expected = "deleting",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationInstances[].ReplicationInstanceStatus",
                        expected = "incompatible-credentials",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationInstances[].ReplicationInstanceStatus",
                        expected = "incompatible-network",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationInstances[].ReplicationInstanceStatus",
                        expected = "inaccessible-encryption-credentials",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ReplicationInstanceDeleted.
function M.wait_until_replication_instance_deleted(client, input, options)
    return waiter.wait(client, "describeReplicationInstances", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationInstances[].ReplicationInstanceStatus",
                        expected = "available",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "ResourceNotFoundFault",
                },
            },
        },
    }, options)
end

--- Wait until ReplicationTaskDeleted.
function M.wait_until_replication_task_deleted(client, input, options)
    return waiter.wait(client, "describeReplicationTasks", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "ready",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "creating",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "stopped",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "running",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "ResourceNotFoundFault",
                },
            },
        },
    }, options)
end

--- Wait until ReplicationTaskReady.
function M.wait_until_replication_task_ready(client, input, options)
    return waiter.wait(client, "describeReplicationTasks", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "ready",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "starting",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "running",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "stopping",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "stopped",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "modifying",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "testing",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "deleting",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ReplicationTaskRunning.
function M.wait_until_replication_task_running(client, input, options)
    return waiter.wait(client, "describeReplicationTasks", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "running",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "ready",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "creating",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "stopping",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "stopped",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "modifying",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "testing",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "deleting",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ReplicationTaskStopped.
function M.wait_until_replication_task_stopped(client, input, options)
    return waiter.wait(client, "describeReplicationTasks", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "stopped",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "ready",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "creating",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "starting",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "modifying",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "testing",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationTasks[].Status",
                        expected = "deleting",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until TestConnectionSucceeds.
function M.wait_until_test_connection_succeeds(client, input, options)
    return waiter.wait(client, "describeConnections", input, {
        min_delay = 5,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Connections[].Status",
                        expected = "successful",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Connections[].Status",
                        expected = "failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
