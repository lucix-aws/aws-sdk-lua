local waiter = require("waiter")

local M = {}

--- Wait until CacheClusterAvailable.
function M.wait_until_cache_cluster_available(client, input, options)
    return waiter.wait(client, "describeCacheClusters", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "CacheClusters[].CacheClusterStatus",
                        expected = "available",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "CacheClusters[].CacheClusterStatus",
                        expected = "deleted",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "CacheClusters[].CacheClusterStatus",
                        expected = "deleting",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "CacheClusters[].CacheClusterStatus",
                        expected = "incompatible-network",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "CacheClusters[].CacheClusterStatus",
                        expected = "restore-failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until CacheClusterDeleted.
function M.wait_until_cache_cluster_deleted(client, input, options)
    return waiter.wait(client, "describeCacheClusters", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "CacheClusters[].CacheClusterStatus",
                        expected = "deleted",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "CacheClusterNotFound",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "CacheClusters[].CacheClusterStatus",
                        expected = "available",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "CacheClusters[].CacheClusterStatus",
                        expected = "creating",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "CacheClusters[].CacheClusterStatus",
                        expected = "incompatible-network",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "CacheClusters[].CacheClusterStatus",
                        expected = "modifying",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "CacheClusters[].CacheClusterStatus",
                        expected = "restore-failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "CacheClusters[].CacheClusterStatus",
                        expected = "snapshotting",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ReplicationGroupAvailable.
function M.wait_until_replication_group_available(client, input, options)
    return waiter.wait(client, "describeReplicationGroups", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ReplicationGroups[].Status",
                        expected = "available",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationGroups[].Status",
                        expected = "deleted",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ReplicationGroupDeleted.
function M.wait_until_replication_group_deleted(client, input, options)
    return waiter.wait(client, "describeReplicationGroups", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ReplicationGroups[].Status",
                        expected = "deleted",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ReplicationGroups[].Status",
                        expected = "available",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "ReplicationGroupNotFoundFault",
                },
            },
        },
    }, options)
end

return M
