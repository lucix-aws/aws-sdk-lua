local waiter = require("smithy.waiter")

local M = {}

--- Wait until DBClusterAvailable.
function M.wait_until_d_b_cluster_available(client, input, options)
    return waiter.wait(client, "describeDBClusters", input, {
        min_delay = 30,
        max_delay = 1800,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "DBClusters[].Status",
                        expected = "available",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBClusters[].Status",
                        expected = "deleted",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBClusters[].Status",
                        expected = "deleting",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBClusters[].Status",
                        expected = "failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBClusters[].Status",
                        expected = "incompatible-restore",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBClusters[].Status",
                        expected = "incompatible-parameters",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until DBClusterDeleted.
function M.wait_until_d_b_cluster_deleted(client, input, options)
    return waiter.wait(client, "describeDBClusters", input, {
        min_delay = 30,
        max_delay = 1800,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "length(DBClusters) == `0`",
                        expected = "true",
                        comparator = "booleanEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "DBClusterNotFoundFault",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBClusters[].Status",
                        expected = "creating",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBClusters[].Status",
                        expected = "modifying",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBClusters[].Status",
                        expected = "rebooting",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBClusters[].Status",
                        expected = "resetting-master-credentials",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until DBClusterSnapshotAvailable.
function M.wait_until_d_b_cluster_snapshot_available(client, input, options)
    return waiter.wait(client, "describeDBClusterSnapshots", input, {
        min_delay = 30,
        max_delay = 1800,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "DBClusterSnapshots[].Status",
                        expected = "available",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBClusterSnapshots[].Status",
                        expected = "deleted",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBClusterSnapshots[].Status",
                        expected = "deleting",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBClusterSnapshots[].Status",
                        expected = "failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBClusterSnapshots[].Status",
                        expected = "incompatible-restore",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBClusterSnapshots[].Status",
                        expected = "incompatible-parameters",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until DBClusterSnapshotDeleted.
function M.wait_until_d_b_cluster_snapshot_deleted(client, input, options)
    return waiter.wait(client, "describeDBClusterSnapshots", input, {
        min_delay = 30,
        max_delay = 1800,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "length(DBClusterSnapshots) == `0`",
                        expected = "true",
                        comparator = "booleanEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "DBClusterSnapshotNotFoundFault",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBClusterSnapshots[].Status",
                        expected = "creating",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBClusterSnapshots[].Status",
                        expected = "modifying",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBClusterSnapshots[].Status",
                        expected = "rebooting",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBClusterSnapshots[].Status",
                        expected = "resetting-master-credentials",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until DBInstanceAvailable.
function M.wait_until_d_b_instance_available(client, input, options)
    return waiter.wait(client, "describeDBInstances", input, {
        min_delay = 30,
        max_delay = 1800,
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
        max_delay = 1800,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "length(DBInstances) == `0`",
                        expected = "true",
                        comparator = "booleanEquals",
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

--- Wait until DBSnapshotAvailable.
function M.wait_until_d_b_snapshot_available(client, input, options)
    return waiter.wait(client, "describeDBSnapshots", input, {
        min_delay = 30,
        max_delay = 1800,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "DBSnapshots[].Status",
                        expected = "available",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBSnapshots[].Status",
                        expected = "deleted",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBSnapshots[].Status",
                        expected = "deleting",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBSnapshots[].Status",
                        expected = "failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBSnapshots[].Status",
                        expected = "incompatible-restore",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBSnapshots[].Status",
                        expected = "incompatible-parameters",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until DBSnapshotDeleted.
function M.wait_until_d_b_snapshot_deleted(client, input, options)
    return waiter.wait(client, "describeDBSnapshots", input, {
        min_delay = 30,
        max_delay = 1800,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "length(DBSnapshots) == `0`",
                        expected = "true",
                        comparator = "booleanEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "DBSnapshotNotFound",
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBSnapshots[].Status",
                        expected = "creating",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBSnapshots[].Status",
                        expected = "modifying",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBSnapshots[].Status",
                        expected = "rebooting",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "DBSnapshots[].Status",
                        expected = "resetting-master-credentials",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until TenantDatabaseAvailable.
function M.wait_until_tenant_database_available(client, input, options)
    return waiter.wait(client, "describeTenantDatabases", input, {
        min_delay = 30,
        max_delay = 1800,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "TenantDatabases[].Status",
                        expected = "available",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "TenantDatabases[].Status",
                        expected = "deleted",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "TenantDatabases[].Status",
                        expected = "incompatible-parameters",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "TenantDatabases[].Status",
                        expected = "incompatible-restore",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until TenantDatabaseDeleted.
function M.wait_until_tenant_database_deleted(client, input, options)
    return waiter.wait(client, "describeTenantDatabases", input, {
        min_delay = 30,
        max_delay = 1800,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "length(TenantDatabases) == `0`",
                        expected = "true",
                        comparator = "booleanEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "DBInstanceNotFoundFault",
                },
            },
        },
    }, options)
end

return M
