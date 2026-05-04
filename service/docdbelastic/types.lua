local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OptInType = {
    IMMEDIATE = "IMMEDIATE",
    NEXT_MAINTENANCE = "NEXT_MAINTENANCE",
    APPLY_ON = "APPLY_ON",
    UNDO_OPT_IN = "UNDO_OPT_IN",
}

M.ApplyPendingMaintenanceActionInput = {
    type = "structure",
    id = "ApplyPendingMaintenanceActionInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applyAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        optInType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applyOn = {
            type = "string",
        },
    },
}

M.PendingMaintenanceActionDetails = {
    type = "structure",
    id = "PendingMaintenanceActionDetails",
    members = {
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        autoAppliedAfterDate = {
            type = "string",
        },
        forcedApplyDate = {
            type = "string",
        },
        optInStatus = {
            type = "string",
        },
        currentApplyDate = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.ResourcePendingMaintenanceAction = {
    type = "structure",
    id = "ResourcePendingMaintenanceAction",
    members = {
        resourceArn = {
            type = "string",
        },
        pendingMaintenanceActionDetails = {
            type = "list",
            member = M.PendingMaintenanceActionDetails,
        },
    },
}

M.ApplyPendingMaintenanceActionOutput = {
    type = "structure",
    id = "ApplyPendingMaintenanceActionOutput",
    members = {
        resourcePendingMaintenanceAction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourcePendingMaintenanceAction }),
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.Auth = {
    PLAIN_TEXT = "PLAIN_TEXT",
    SECRET_ARN = "SECRET_ARN",
}

M.CopyClusterSnapshotInput = {
    type = "structure",
    id = "CopyClusterSnapshotInput",
    members = {
        snapshotArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targetSnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyId = {
            type = "string",
        },
        copyTags = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SnapshotType = {
    MANUAL = "MANUAL",
    AUTOMATED = "AUTOMATED",
}

M.Status = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
    VPC_ENDPOINT_LIMIT_EXCEEDED = "VPC_ENDPOINT_LIMIT_EXCEEDED",
    IP_ADDRESS_LIMIT_EXCEEDED = "IP_ADDRESS_LIMIT_EXCEEDED",
    INVALID_SECURITY_GROUP_ID = "INVALID_SECURITY_GROUP_ID",
    INVALID_SUBNET_ID = "INVALID_SUBNET_ID",
    INACCESSIBLE_ENCRYPTION_CREDS = "INACCESSIBLE_ENCRYPTION_CREDS",
    INACCESSIBLE_SECRET_ARN = "INACCESSIBLE_SECRET_ARN",
    INACCESSIBLE_VPC_ENDPOINT = "INACCESSIBLE_VPC_ENDPOINT",
    INCOMPATIBLE_NETWORK = "INCOMPATIBLE_NETWORK",
    MERGING = "MERGING",
    MODIFYING = "MODIFYING",
    SPLITTING = "SPLITTING",
    COPYING = "COPYING",
    STARTING = "STARTING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    MAINTENANCE = "MAINTENANCE",
    INACCESSIBLE_ENCRYPTION_CREDENTIALS_RECOVERABLE = "INACCESSIBLE_ENCRYPTION_CREDENTIALS_RECOVERABLE",
}

M.ClusterSnapshot = {
    type = "structure",
    id = "ClusterSnapshot",
    members = {
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        snapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        snapshotArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        snapshotCreationTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterCreationTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        adminUserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        snapshotType = {
            type = "string",
        },
    },
}

M.CopyClusterSnapshotOutput = {
    type = "structure",
    id = "CopyClusterSnapshotOutput",
    members = {
        snapshot = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClusterSnapshot }),
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateClusterInput = {
    type = "structure",
    id = "CreateClusterInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        adminUserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        adminUserPassword = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shardCapacity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        shardCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        vpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        kmsKeyId = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        preferredMaintenanceWindow = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        backupRetentionPeriod = {
            type = "integer",
        },
        preferredBackupWindow = {
            type = "string",
        },
        shardInstanceCount = {
            type = "integer",
        },
    },
}

M.Shard = {
    type = "structure",
    id = "Shard",
    members = {
        shardId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Cluster = {
    type = "structure",
    id = "Cluster",
    members = {
        clusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        adminUserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shardCapacity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        shardCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        vpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        preferredMaintenanceWindow = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shards = {
            type = "list",
            member = M.Shard,
        },
        backupRetentionPeriod = {
            type = "integer",
        },
        preferredBackupWindow = {
            type = "string",
        },
        shardInstanceCount = {
            type = "integer",
        },
    },
}

M.CreateClusterOutput = {
    type = "structure",
    id = "CreateClusterOutput",
    members = {
        cluster = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Cluster }),
    },
}

M.CreateClusterSnapshotInput = {
    type = "structure",
    id = "CreateClusterSnapshotInput",
    members = {
        clusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        snapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateClusterSnapshotOutput = {
    type = "structure",
    id = "CreateClusterSnapshotOutput",
    members = {
        snapshot = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClusterSnapshot }),
    },
}

M.DeleteClusterInput = {
    type = "structure",
    id = "DeleteClusterInput",
    members = {
        clusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteClusterOutput = {
    type = "structure",
    id = "DeleteClusterOutput",
    members = {
        cluster = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Cluster }),
    },
}

M.DeleteClusterSnapshotInput = {
    type = "structure",
    id = "DeleteClusterSnapshotInput",
    members = {
        snapshotArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteClusterSnapshotOutput = {
    type = "structure",
    id = "DeleteClusterSnapshotOutput",
    members = {
        snapshot = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClusterSnapshot }),
    },
}

M.GetClusterInput = {
    type = "structure",
    id = "GetClusterInput",
    members = {
        clusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetClusterOutput = {
    type = "structure",
    id = "GetClusterOutput",
    members = {
        cluster = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Cluster }),
    },
}

M.GetClusterSnapshotInput = {
    type = "structure",
    id = "GetClusterSnapshotInput",
    members = {
        snapshotArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetClusterSnapshotOutput = {
    type = "structure",
    id = "GetClusterSnapshotOutput",
    members = {
        snapshot = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClusterSnapshot }),
    },
}

M.GetPendingMaintenanceActionInput = {
    type = "structure",
    id = "GetPendingMaintenanceActionInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPendingMaintenanceActionOutput = {
    type = "structure",
    id = "GetPendingMaintenanceActionOutput",
    members = {
        resourcePendingMaintenanceAction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourcePendingMaintenanceAction }),
    },
}

M.ListClustersInput = {
    type = "structure",
    id = "ListClustersInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
    },
}

M.ClusterInList = {
    type = "structure",
    id = "ClusterInList",
    members = {
        clusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListClustersOutput = {
    type = "structure",
    id = "ListClustersOutput",
    members = {
        clusters = {
            type = "list",
            member = M.ClusterInList,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListClusterSnapshotsInput = {
    type = "structure",
    id = "ListClusterSnapshotsInput",
    members = {
        clusterArn = {
            type = "string",
            traits = {
                http_query = "clusterArn",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
        snapshotType = {
            type = "string",
            traits = {
                http_query = "snapshotType",
            },
        },
    },
}

M.ClusterSnapshotInList = {
    type = "structure",
    id = "ClusterSnapshotInList",
    members = {
        snapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        snapshotArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clusterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        snapshotCreationTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListClusterSnapshotsOutput = {
    type = "structure",
    id = "ListClusterSnapshotsOutput",
    members = {
        snapshots = {
            type = "list",
            member = M.ClusterSnapshotInList,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListPendingMaintenanceActionsInput = {
    type = "structure",
    id = "ListPendingMaintenanceActionsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
    },
}

M.ListPendingMaintenanceActionsOutput = {
    type = "structure",
    id = "ListPendingMaintenanceActionsOutput",
    members = {
        resourcePendingMaintenanceActions = {
            type = "list",
            member = M.ResourcePendingMaintenanceAction,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RestoreClusterFromSnapshotInput = {
    type = "structure",
    id = "RestoreClusterFromSnapshotInput",
    members = {
        clusterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        snapshotArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        vpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        kmsKeyId = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        shardCapacity = {
            type = "integer",
        },
        shardInstanceCount = {
            type = "integer",
        },
    },
}

M.RestoreClusterFromSnapshotOutput = {
    type = "structure",
    id = "RestoreClusterFromSnapshotOutput",
    members = {
        cluster = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Cluster }),
    },
}

M.StartClusterInput = {
    type = "structure",
    id = "StartClusterInput",
    members = {
        clusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartClusterOutput = {
    type = "structure",
    id = "StartClusterOutput",
    members = {
        cluster = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Cluster }),
    },
}

M.StopClusterInput = {
    type = "structure",
    id = "StopClusterInput",
    members = {
        clusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopClusterOutput = {
    type = "structure",
    id = "StopClusterOutput",
    members = {
        cluster = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Cluster }),
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateClusterInput = {
    type = "structure",
    id = "UpdateClusterInput",
    members = {
        clusterArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        authType = {
            type = "string",
        },
        shardCapacity = {
            type = "integer",
        },
        shardCount = {
            type = "integer",
        },
        vpcSecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        adminUserPassword = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        preferredMaintenanceWindow = {
            type = "string",
        },
        backupRetentionPeriod = {
            type = "integer",
        },
        preferredBackupWindow = {
            type = "string",
        },
        shardInstanceCount = {
            type = "integer",
        },
    },
}

M.UpdateClusterOutput = {
    type = "structure",
    id = "UpdateClusterOutput",
    members = {
        cluster = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Cluster }),
    },
}

return M
