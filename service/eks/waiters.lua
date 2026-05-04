local waiter = require("waiter")

local M = {}

--- Wait until AddonActive.
function M.wait_until_addon_active(client, input, options)
    return waiter.wait(client, "describeAddon", input, {
        min_delay = 10,
        max_delay = 120,
        acceptors = {
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "addon.status",
                        expected = "CREATE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "addon.status",
                        expected = "DEGRADED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "addon.status",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until AddonDeleted.
function M.wait_until_addon_deleted(client, input, options)
    return waiter.wait(client, "describeAddon", input, {
        min_delay = 10,
        max_delay = 120,
        acceptors = {
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "addon.status",
                        expected = "DELETE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "ResourceNotFoundException",
                },
            },
        },
    }, options)
end

--- Wait until ClusterActive.
function M.wait_until_cluster_active(client, input, options)
    return waiter.wait(client, "describeCluster", input, {
        min_delay = 30,
        max_delay = 120,
        acceptors = {
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "cluster.status",
                        expected = "DELETING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "cluster.status",
                        expected = "FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "cluster.status",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ClusterDeleted.
function M.wait_until_cluster_deleted(client, input, options)
    return waiter.wait(client, "describeCluster", input, {
        min_delay = 30,
        max_delay = 120,
        acceptors = {
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "cluster.status",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "cluster.status",
                        expected = "CREATING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "cluster.status",
                        expected = "PENDING",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "ResourceNotFoundException",
                },
            },
        },
    }, options)
end

--- Wait until FargateProfileActive.
function M.wait_until_fargate_profile_active(client, input, options)
    return waiter.wait(client, "describeFargateProfile", input, {
        min_delay = 10,
        max_delay = 120,
        acceptors = {
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "fargateProfile.status",
                        expected = "CREATE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "fargateProfile.status",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until FargateProfileDeleted.
function M.wait_until_fargate_profile_deleted(client, input, options)
    return waiter.wait(client, "describeFargateProfile", input, {
        min_delay = 30,
        max_delay = 120,
        acceptors = {
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "fargateProfile.status",
                        expected = "DELETE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "ResourceNotFoundException",
                },
            },
        },
    }, options)
end

--- Wait until NodegroupActive.
function M.wait_until_nodegroup_active(client, input, options)
    return waiter.wait(client, "describeNodegroup", input, {
        min_delay = 30,
        max_delay = 120,
        acceptors = {
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "nodegroup.status",
                        expected = "CREATE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "nodegroup.status",
                        expected = "ACTIVE",
                        comparator = "stringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until NodegroupDeleted.
function M.wait_until_nodegroup_deleted(client, input, options)
    return waiter.wait(client, "describeNodegroup", input, {
        min_delay = 30,
        max_delay = 120,
        acceptors = {
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "nodegroup.status",
                        expected = "DELETE_FAILED",
                        comparator = "stringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "ResourceNotFoundException",
                },
            },
        },
    }, options)
end

return M
