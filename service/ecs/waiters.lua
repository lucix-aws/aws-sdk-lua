local waiter = require("smithy.waiter")

local M = {}

--- Wait until DaemonActive.
function M.wait_until_daemon_active(client, input, options)
    return waiter.wait(client, "describeDaemon", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "daemon.status",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "daemon.status",
                        expected = "DELETE_IN_PROGRESS",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until DaemonDeploymentStopped.
function M.wait_until_daemon_deployment_stopped(client, input, options)
    return waiter.wait(client, "describeDaemonDeployments", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "daemonDeployments[].status",
                        expected = "STOPPED",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "failures[].reason",
                        expected = "MISSING",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until DaemonDeploymentSuccessful.
function M.wait_until_daemon_deployment_successful(client, input, options)
    return waiter.wait(client, "describeDaemonDeployments", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "daemonDeployments[].status",
                        expected = "SUCCESSFUL",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "daemonDeployments[].status",
                        expected = "STOPPED",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "daemonDeployments[].status",
                        expected = "ROLLBACK_FAILED",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "daemonDeployments[].status",
                        expected = "ROLLBACK_SUCCESSFUL",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "failures[].reason",
                        expected = "MISSING",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until DaemonTaskDefinitionActive.
function M.wait_until_daemon_task_definition_active(client, input, options)
    return waiter.wait(client, "describeDaemonTaskDefinition", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "daemonTaskDefinition.status",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "daemonTaskDefinition.status",
                        expected = "DELETE_IN_PROGRESS",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "daemonTaskDefinition.status",
                        expected = "DELETED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until DaemonTaskDefinitionDeleted.
function M.wait_until_daemon_task_definition_deleted(client, input, options)
    return waiter.wait(client, "describeDaemonTaskDefinition", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "daemonTaskDefinition.status",
                        expected = "DELETED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ServicesInactive.
function M.wait_until_services_inactive(client, input, options)
    return waiter.wait(client, "describeServices", input, {
        min_delay = 15,
        max_delay = 600,
        acceptors = {
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "failures[].reason",
                        expected = "MISSING",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "services[].status",
                        expected = "INACTIVE",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ServicesStable.
function M.wait_until_services_stable(client, input, options)
    return waiter.wait(client, "describeServices", input, {
        min_delay = 15,
        max_delay = 600,
        acceptors = {
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "failures[].reason",
                        expected = "MISSING",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "services[].status",
                        expected = "DRAINING",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "services[].status",
                        expected = "INACTIVE",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "length(services[?!(length(deployments) == `1` && runningCount == desiredCount)]) == `0`",
                        expected = "true",
                        comparator = "booleanEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until TasksRunning.
function M.wait_until_tasks_running(client, input, options)
    return waiter.wait(client, "describeTasks", input, {
        min_delay = 6,
        max_delay = 600,
        acceptors = {
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "tasks[].lastStatus",
                        expected = "STOPPED",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "failures[].reason",
                        expected = "MISSING",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "tasks[].lastStatus",
                        expected = "RUNNING",
                        comparator = "allStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until TasksStopped.
function M.wait_until_tasks_stopped(client, input, options)
    return waiter.wait(client, "describeTasks", input, {
        min_delay = 6,
        max_delay = 600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "tasks[].lastStatus",
                        expected = "STOPPED",
                        comparator = "allStringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
