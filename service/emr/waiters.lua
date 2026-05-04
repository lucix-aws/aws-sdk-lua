local waiter = require("waiter")

local M = {}

--- Wait until ClusterRunning.
function M.wait_until_cluster_running(client, input, options)
    return waiter.wait(client, "describeCluster", input, {
        min_delay = 30,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Cluster.Status.State",
                        expected = "RUNNING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Cluster.Status.State",
                        expected = "WAITING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Cluster.Status.State",
                        expected = "TERMINATING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Cluster.Status.State",
                        expected = "TERMINATED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Cluster.Status.State",
                        expected = "TERMINATED_WITH_ERRORS",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ClusterTerminated.
function M.wait_until_cluster_terminated(client, input, options)
    return waiter.wait(client, "describeCluster", input, {
        min_delay = 30,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Cluster.Status.State",
                        expected = "TERMINATED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Cluster.Status.State",
                        expected = "TERMINATED_WITH_ERRORS",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until StepComplete.
function M.wait_until_step_complete(client, input, options)
    return waiter.wait(client, "describeStep", input, {
        min_delay = 30,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Step.Status.State",
                        expected = "COMPLETED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Step.Status.State",
                        expected = "FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Step.Status.State",
                        expected = "CANCELLED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
