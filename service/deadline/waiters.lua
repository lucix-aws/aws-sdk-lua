local waiter = require("smithy.waiter")

local M = {}

--- Wait until FleetActive.
function M.wait_until_fleet_active(client, input, options)
    return waiter.wait(client, "getFleet", input, {
        min_delay = 5,
        max_delay = 900,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "ACTIVE",
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
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "UPDATE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until JobComplete.
function M.wait_until_job_complete(client, input, options)
    return waiter.wait(client, "getJob", input, {
        min_delay = 15,
        max_delay = 3600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "taskRunStatus",
                        expected = "SUCCEEDED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "taskRunStatus",
                        expected = "FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "taskRunStatus",
                        expected = "CANCELED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "taskRunStatus",
                        expected = "SUSPENDED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "taskRunStatus",
                        expected = "NOT_COMPATIBLE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "lifecycleStatus",
                        expected = "ARCHIVED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until JobCreateComplete.
function M.wait_until_job_create_complete(client, input, options)
    return waiter.wait(client, "getJob", input, {
        min_delay = 1,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "lifecycleStatus",
                        expected = "CREATE_COMPLETE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "lifecycleStatus",
                        expected = "UPDATE_IN_PROGRESS",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "lifecycleStatus",
                        expected = "UPDATE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "lifecycleStatus",
                        expected = "UPDATE_SUCCEEDED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "lifecycleStatus",
                        expected = "UPLOAD_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "lifecycleStatus",
                        expected = "CREATE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until JobSucceeded.
function M.wait_until_job_succeeded(client, input, options)
    return waiter.wait(client, "getJob", input, {
        min_delay = 15,
        max_delay = 3600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "taskRunStatus",
                        expected = "SUCCEEDED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "taskRunStatus",
                        expected = "FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "taskRunStatus",
                        expected = "CANCELED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "taskRunStatus",
                        expected = "SUSPENDED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "taskRunStatus",
                        expected = "NOT_COMPATIBLE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "lifecycleStatus",
                        expected = "ARCHIVED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until LicenseEndpointDeleted.
function M.wait_until_license_endpoint_deleted(client, input, options)
    return waiter.wait(client, "getLicenseEndpoint", input, {
        min_delay = 10,
        max_delay = 2340,
        acceptors = {
            {
                state = "success",
                matcher = {
                    errorType = "ResourceNotFoundException",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "NOT_READY",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until LicenseEndpointValid.
function M.wait_until_license_endpoint_valid(client, input, options)
    return waiter.wait(client, "getLicenseEndpoint", input, {
        min_delay = 10,
        max_delay = 1140,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "READY",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "status",
                        expected = "NOT_READY",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until QueueFleetAssociationStopped.
function M.wait_until_queue_fleet_association_stopped(client, input, options)
    return waiter.wait(client, "getQueueFleetAssociation", input, {
        min_delay = 10,
        max_delay = 600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "STOPPED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until QueueLimitAssociationStopped.
function M.wait_until_queue_limit_association_stopped(client, input, options)
    return waiter.wait(client, "getQueueLimitAssociation", input, {
        min_delay = 10,
        max_delay = 600,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "STOPPED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until QueueScheduling.
function M.wait_until_queue_scheduling(client, input, options)
    return waiter.wait(client, "getQueue", input, {
        min_delay = 10,
        max_delay = 700,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "SCHEDULING",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until QueueSchedulingBlocked.
function M.wait_until_queue_scheduling_blocked(client, input, options)
    return waiter.wait(client, "getQueue", input, {
        min_delay = 10,
        max_delay = 300,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "status",
                        expected = "SCHEDULING_BLOCKED",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
