local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.docdbelastic"

local M = {}

M.ValidationExceptionFieldList = schema.new({ type = "list", list_member = M.ValidationExceptionField })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.StringList = schema.new({ type = "list", list_member = prelude.String })

M.ClusterList = schema.new({ type = "list", list_member = M.ClusterInList })

M.ClusterSnapshotList = schema.new({ type = "list", list_member = M.ClusterSnapshotInList })

M.ResourcePendingMaintenanceActionList = schema.new({ type = "list", list_member = M.ResourcePendingMaintenanceAction })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.PendingMaintenanceActionDetailsList = schema.new({ type = "list", list_member = M.PendingMaintenanceActionDetails })

M.ShardList = schema.new({ type = "list", list_member = M.Shard })

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ApplyPendingMaintenanceActionInput = schema.new({
    id = id.from(_N, "ApplyPendingMaintenanceActionInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ApplyPendingMaintenanceActionInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        applyAction = schema.new({
            id = id.from(_N, "ApplyPendingMaintenanceActionInput", "applyAction"),
            type = "string",
            name = "applyAction",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        optInType = schema.new({
            id = id.from(_N, "ApplyPendingMaintenanceActionInput", "optInType"),
            type = "string",
            name = "optInType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        applyOn = schema.new({
            id = id.from(_N, "ApplyPendingMaintenanceActionInput", "applyOn"),
            type = "string",
            name = "applyOn",
            target_id = prelude.String.id,
        }),
    },
})

M.PendingMaintenanceActionDetails = schema.new({
    id = id.from(_N, "PendingMaintenanceActionDetails"),
    type = "structure",
    members = {
        action = schema.new({
            id = id.from(_N, "PendingMaintenanceActionDetails", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        autoAppliedAfterDate = schema.new({
            id = id.from(_N, "PendingMaintenanceActionDetails", "autoAppliedAfterDate"),
            type = "string",
            name = "autoAppliedAfterDate",
            target_id = prelude.String.id,
        }),
        forcedApplyDate = schema.new({
            id = id.from(_N, "PendingMaintenanceActionDetails", "forcedApplyDate"),
            type = "string",
            name = "forcedApplyDate",
            target_id = prelude.String.id,
        }),
        optInStatus = schema.new({
            id = id.from(_N, "PendingMaintenanceActionDetails", "optInStatus"),
            type = "string",
            name = "optInStatus",
            target_id = prelude.String.id,
        }),
        currentApplyDate = schema.new({
            id = id.from(_N, "PendingMaintenanceActionDetails", "currentApplyDate"),
            type = "string",
            name = "currentApplyDate",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "PendingMaintenanceActionDetails", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourcePendingMaintenanceAction = schema.new({
    id = id.from(_N, "ResourcePendingMaintenanceAction"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ResourcePendingMaintenanceAction", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
        }),
        pendingMaintenanceActionDetails = schema.new({
            id = id.from(_N, "ResourcePendingMaintenanceAction", "pendingMaintenanceActionDetails"),
            type = "list",
            name = "pendingMaintenanceActionDetails",
            target_id = prelude.Document.id,
            list_member = M.PendingMaintenanceActionDetails,
        }),
    },
})

M.ApplyPendingMaintenanceActionOutput = schema.new({
    id = id.from(_N, "ApplyPendingMaintenanceActionOutput"),
    type = "structure",
    members = {
        resourcePendingMaintenanceAction = schema.new({
            id = id.from(_N, "ApplyPendingMaintenanceActionOutput", "resourcePendingMaintenanceAction"),
            type = "structure",
            name = "resourcePendingMaintenanceAction",
            target_id = id.from(_N, "ResourcePendingMaintenanceAction"),
            target = M.ResourcePendingMaintenanceAction,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ConflictException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ConflictException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "resourceId"),
            type = "string",
            name = "resourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        retryAfterSeconds = schema.new({
            id = id.from(_N, "ThrottlingException", "retryAfterSeconds"),
            type = "integer",
            name = "retryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
    },
})

M.ValidationExceptionField = schema.new({
    id = id.from(_N, "ValidationExceptionField"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ValidationExceptionField", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "ValidationExceptionField", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reason = schema.new({
            id = id.from(_N, "ValidationException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fieldList = schema.new({
            id = id.from(_N, "ValidationException", "fieldList"),
            type = "list",
            name = "fieldList",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.CopyClusterSnapshotInput = schema.new({
    id = id.from(_N, "CopyClusterSnapshotInput"),
    type = "structure",
    members = {
        snapshotArn = schema.new({
            id = id.from(_N, "CopyClusterSnapshotInput", "snapshotArn"),
            type = "string",
            name = "snapshotArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        targetSnapshotName = schema.new({
            id = id.from(_N, "CopyClusterSnapshotInput", "targetSnapshotName"),
            type = "string",
            name = "targetSnapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "CopyClusterSnapshotInput", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
        copyTags = schema.new({
            id = id.from(_N, "CopyClusterSnapshotInput", "copyTags"),
            type = "boolean",
            name = "copyTags",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CopyClusterSnapshotInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ClusterSnapshot = schema.new({
    id = id.from(_N, "ClusterSnapshot"),
    type = "structure",
    members = {
        subnetIds = schema.new({
            id = id.from(_N, "ClusterSnapshot", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        snapshotName = schema.new({
            id = id.from(_N, "ClusterSnapshot", "snapshotName"),
            type = "string",
            name = "snapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        snapshotArn = schema.new({
            id = id.from(_N, "ClusterSnapshot", "snapshotArn"),
            type = "string",
            name = "snapshotArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        snapshotCreationTime = schema.new({
            id = id.from(_N, "ClusterSnapshot", "snapshotCreationTime"),
            type = "string",
            name = "snapshotCreationTime",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clusterArn = schema.new({
            id = id.from(_N, "ClusterSnapshot", "clusterArn"),
            type = "string",
            name = "clusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clusterCreationTime = schema.new({
            id = id.from(_N, "ClusterSnapshot", "clusterCreationTime"),
            type = "string",
            name = "clusterCreationTime",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ClusterSnapshot", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vpcSecurityGroupIds = schema.new({
            id = id.from(_N, "ClusterSnapshot", "vpcSecurityGroupIds"),
            type = "list",
            name = "vpcSecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        adminUserName = schema.new({
            id = id.from(_N, "ClusterSnapshot", "adminUserName"),
            type = "string",
            name = "adminUserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "ClusterSnapshot", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        snapshotType = schema.new({
            id = id.from(_N, "ClusterSnapshot", "snapshotType"),
            type = "string",
            name = "snapshotType",
            target_id = prelude.String.id,
        }),
    },
})

M.CopyClusterSnapshotOutput = schema.new({
    id = id.from(_N, "CopyClusterSnapshotOutput"),
    type = "structure",
    members = {
        snapshot = schema.new({
            id = id.from(_N, "CopyClusterSnapshotOutput", "snapshot"),
            type = "structure",
            name = "snapshot",
            target_id = id.from(_N, "ClusterSnapshot"),
            target = M.ClusterSnapshot,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateClusterInput = schema.new({
    id = id.from(_N, "CreateClusterInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "CreateClusterInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authType = schema.new({
            id = id.from(_N, "CreateClusterInput", "authType"),
            type = "string",
            name = "authType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        adminUserName = schema.new({
            id = id.from(_N, "CreateClusterInput", "adminUserName"),
            type = "string",
            name = "adminUserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        adminUserPassword = schema.new({
            id = id.from(_N, "CreateClusterInput", "adminUserPassword"),
            type = "string",
            name = "adminUserPassword",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        shardCapacity = schema.new({
            id = id.from(_N, "CreateClusterInput", "shardCapacity"),
            type = "integer",
            name = "shardCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        shardCount = schema.new({
            id = id.from(_N, "CreateClusterInput", "shardCount"),
            type = "integer",
            name = "shardCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vpcSecurityGroupIds = schema.new({
            id = id.from(_N, "CreateClusterInput", "vpcSecurityGroupIds"),
            type = "list",
            name = "vpcSecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        subnetIds = schema.new({
            id = id.from(_N, "CreateClusterInput", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "CreateClusterInput", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateClusterInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        preferredMaintenanceWindow = schema.new({
            id = id.from(_N, "CreateClusterInput", "preferredMaintenanceWindow"),
            type = "string",
            name = "preferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateClusterInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        backupRetentionPeriod = schema.new({
            id = id.from(_N, "CreateClusterInput", "backupRetentionPeriod"),
            type = "integer",
            name = "backupRetentionPeriod",
            target_id = prelude.Integer.id,
        }),
        preferredBackupWindow = schema.new({
            id = id.from(_N, "CreateClusterInput", "preferredBackupWindow"),
            type = "string",
            name = "preferredBackupWindow",
            target_id = prelude.String.id,
        }),
        shardInstanceCount = schema.new({
            id = id.from(_N, "CreateClusterInput", "shardInstanceCount"),
            type = "integer",
            name = "shardInstanceCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Shard = schema.new({
    id = id.from(_N, "Shard"),
    type = "structure",
    members = {
        shardId = schema.new({
            id = id.from(_N, "Shard", "shardId"),
            type = "string",
            name = "shardId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createTime = schema.new({
            id = id.from(_N, "Shard", "createTime"),
            type = "string",
            name = "createTime",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "Shard", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Cluster = schema.new({
    id = id.from(_N, "Cluster"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "Cluster", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clusterArn = schema.new({
            id = id.from(_N, "Cluster", "clusterArn"),
            type = "string",
            name = "clusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "Cluster", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clusterEndpoint = schema.new({
            id = id.from(_N, "Cluster", "clusterEndpoint"),
            type = "string",
            name = "clusterEndpoint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createTime = schema.new({
            id = id.from(_N, "Cluster", "createTime"),
            type = "string",
            name = "createTime",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        adminUserName = schema.new({
            id = id.from(_N, "Cluster", "adminUserName"),
            type = "string",
            name = "adminUserName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authType = schema.new({
            id = id.from(_N, "Cluster", "authType"),
            type = "string",
            name = "authType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        shardCapacity = schema.new({
            id = id.from(_N, "Cluster", "shardCapacity"),
            type = "integer",
            name = "shardCapacity",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        shardCount = schema.new({
            id = id.from(_N, "Cluster", "shardCount"),
            type = "integer",
            name = "shardCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        vpcSecurityGroupIds = schema.new({
            id = id.from(_N, "Cluster", "vpcSecurityGroupIds"),
            type = "list",
            name = "vpcSecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subnetIds = schema.new({
            id = id.from(_N, "Cluster", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        preferredMaintenanceWindow = schema.new({
            id = id.from(_N, "Cluster", "preferredMaintenanceWindow"),
            type = "string",
            name = "preferredMaintenanceWindow",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "Cluster", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        shards = schema.new({
            id = id.from(_N, "Cluster", "shards"),
            type = "list",
            name = "shards",
            target_id = prelude.Document.id,
            list_member = M.Shard,
        }),
        backupRetentionPeriod = schema.new({
            id = id.from(_N, "Cluster", "backupRetentionPeriod"),
            type = "integer",
            name = "backupRetentionPeriod",
            target_id = prelude.Integer.id,
        }),
        preferredBackupWindow = schema.new({
            id = id.from(_N, "Cluster", "preferredBackupWindow"),
            type = "string",
            name = "preferredBackupWindow",
            target_id = prelude.String.id,
        }),
        shardInstanceCount = schema.new({
            id = id.from(_N, "Cluster", "shardInstanceCount"),
            type = "integer",
            name = "shardInstanceCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CreateClusterOutput = schema.new({
    id = id.from(_N, "CreateClusterOutput"),
    type = "structure",
    members = {
        cluster = schema.new({
            id = id.from(_N, "CreateClusterOutput", "cluster"),
            type = "structure",
            name = "cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateClusterSnapshotInput = schema.new({
    id = id.from(_N, "CreateClusterSnapshotInput"),
    type = "structure",
    members = {
        clusterArn = schema.new({
            id = id.from(_N, "CreateClusterSnapshotInput", "clusterArn"),
            type = "string",
            name = "clusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        snapshotName = schema.new({
            id = id.from(_N, "CreateClusterSnapshotInput", "snapshotName"),
            type = "string",
            name = "snapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateClusterSnapshotInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateClusterSnapshotOutput = schema.new({
    id = id.from(_N, "CreateClusterSnapshotOutput"),
    type = "structure",
    members = {
        snapshot = schema.new({
            id = id.from(_N, "CreateClusterSnapshotOutput", "snapshot"),
            type = "structure",
            name = "snapshot",
            target_id = id.from(_N, "ClusterSnapshot"),
            target = M.ClusterSnapshot,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteClusterInput = schema.new({
    id = id.from(_N, "DeleteClusterInput"),
    type = "structure",
    members = {
        clusterArn = schema.new({
            id = id.from(_N, "DeleteClusterInput", "clusterArn"),
            type = "string",
            name = "clusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteClusterOutput = schema.new({
    id = id.from(_N, "DeleteClusterOutput"),
    type = "structure",
    members = {
        cluster = schema.new({
            id = id.from(_N, "DeleteClusterOutput", "cluster"),
            type = "structure",
            name = "cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteClusterSnapshotInput = schema.new({
    id = id.from(_N, "DeleteClusterSnapshotInput"),
    type = "structure",
    members = {
        snapshotArn = schema.new({
            id = id.from(_N, "DeleteClusterSnapshotInput", "snapshotArn"),
            type = "string",
            name = "snapshotArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteClusterSnapshotOutput = schema.new({
    id = id.from(_N, "DeleteClusterSnapshotOutput"),
    type = "structure",
    members = {
        snapshot = schema.new({
            id = id.from(_N, "DeleteClusterSnapshotOutput", "snapshot"),
            type = "structure",
            name = "snapshot",
            target_id = id.from(_N, "ClusterSnapshot"),
            target = M.ClusterSnapshot,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetClusterInput = schema.new({
    id = id.from(_N, "GetClusterInput"),
    type = "structure",
    members = {
        clusterArn = schema.new({
            id = id.from(_N, "GetClusterInput", "clusterArn"),
            type = "string",
            name = "clusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetClusterOutput = schema.new({
    id = id.from(_N, "GetClusterOutput"),
    type = "structure",
    members = {
        cluster = schema.new({
            id = id.from(_N, "GetClusterOutput", "cluster"),
            type = "structure",
            name = "cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetClusterSnapshotInput = schema.new({
    id = id.from(_N, "GetClusterSnapshotInput"),
    type = "structure",
    members = {
        snapshotArn = schema.new({
            id = id.from(_N, "GetClusterSnapshotInput", "snapshotArn"),
            type = "string",
            name = "snapshotArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetClusterSnapshotOutput = schema.new({
    id = id.from(_N, "GetClusterSnapshotOutput"),
    type = "structure",
    members = {
        snapshot = schema.new({
            id = id.from(_N, "GetClusterSnapshotOutput", "snapshot"),
            type = "structure",
            name = "snapshot",
            target_id = id.from(_N, "ClusterSnapshot"),
            target = M.ClusterSnapshot,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPendingMaintenanceActionInput = schema.new({
    id = id.from(_N, "GetPendingMaintenanceActionInput"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "GetPendingMaintenanceActionInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetPendingMaintenanceActionOutput = schema.new({
    id = id.from(_N, "GetPendingMaintenanceActionOutput"),
    type = "structure",
    members = {
        resourcePendingMaintenanceAction = schema.new({
            id = id.from(_N, "GetPendingMaintenanceActionOutput", "resourcePendingMaintenanceAction"),
            type = "structure",
            name = "resourcePendingMaintenanceAction",
            target_id = id.from(_N, "ResourcePendingMaintenanceAction"),
            target = M.ResourcePendingMaintenanceAction,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListClustersInput = schema.new({
    id = id.from(_N, "ListClustersInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListClustersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListClustersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ClusterInList = schema.new({
    id = id.from(_N, "ClusterInList"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "ClusterInList", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clusterArn = schema.new({
            id = id.from(_N, "ClusterInList", "clusterArn"),
            type = "string",
            name = "clusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ClusterInList", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListClustersOutput = schema.new({
    id = id.from(_N, "ListClustersOutput"),
    type = "structure",
    members = {
        clusters = schema.new({
            id = id.from(_N, "ListClustersOutput", "clusters"),
            type = "list",
            name = "clusters",
            target_id = prelude.Document.id,
            list_member = M.ClusterInList,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListClustersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListClusterSnapshotsInput = schema.new({
    id = id.from(_N, "ListClusterSnapshotsInput"),
    type = "structure",
    members = {
        clusterArn = schema.new({
            id = id.from(_N, "ListClusterSnapshotsInput", "clusterArn"),
            type = "string",
            name = "clusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clusterArn" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListClusterSnapshotsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListClusterSnapshotsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        snapshotType = schema.new({
            id = id.from(_N, "ListClusterSnapshotsInput", "snapshotType"),
            type = "string",
            name = "snapshotType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "snapshotType" },
            },
        }),
    },
})

M.ClusterSnapshotInList = schema.new({
    id = id.from(_N, "ClusterSnapshotInList"),
    type = "structure",
    members = {
        snapshotName = schema.new({
            id = id.from(_N, "ClusterSnapshotInList", "snapshotName"),
            type = "string",
            name = "snapshotName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        snapshotArn = schema.new({
            id = id.from(_N, "ClusterSnapshotInList", "snapshotArn"),
            type = "string",
            name = "snapshotArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clusterArn = schema.new({
            id = id.from(_N, "ClusterSnapshotInList", "clusterArn"),
            type = "string",
            name = "clusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ClusterSnapshotInList", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        snapshotCreationTime = schema.new({
            id = id.from(_N, "ClusterSnapshotInList", "snapshotCreationTime"),
            type = "string",
            name = "snapshotCreationTime",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListClusterSnapshotsOutput = schema.new({
    id = id.from(_N, "ListClusterSnapshotsOutput"),
    type = "structure",
    members = {
        snapshots = schema.new({
            id = id.from(_N, "ListClusterSnapshotsOutput", "snapshots"),
            type = "list",
            name = "snapshots",
            target_id = prelude.Document.id,
            list_member = M.ClusterSnapshotInList,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListClusterSnapshotsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPendingMaintenanceActionsInput = schema.new({
    id = id.from(_N, "ListPendingMaintenanceActionsInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPendingMaintenanceActionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPendingMaintenanceActionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListPendingMaintenanceActionsOutput = schema.new({
    id = id.from(_N, "ListPendingMaintenanceActionsOutput"),
    type = "structure",
    members = {
        resourcePendingMaintenanceActions = schema.new({
            id = id.from(_N, "ListPendingMaintenanceActionsOutput", "resourcePendingMaintenanceActions"),
            type = "list",
            name = "resourcePendingMaintenanceActions",
            target_id = prelude.Document.id,
            list_member = M.ResourcePendingMaintenanceAction,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPendingMaintenanceActionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.RestoreClusterFromSnapshotInput = schema.new({
    id = id.from(_N, "RestoreClusterFromSnapshotInput"),
    type = "structure",
    members = {
        clusterName = schema.new({
            id = id.from(_N, "RestoreClusterFromSnapshotInput", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        snapshotArn = schema.new({
            id = id.from(_N, "RestoreClusterFromSnapshotInput", "snapshotArn"),
            type = "string",
            name = "snapshotArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        vpcSecurityGroupIds = schema.new({
            id = id.from(_N, "RestoreClusterFromSnapshotInput", "vpcSecurityGroupIds"),
            type = "list",
            name = "vpcSecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        subnetIds = schema.new({
            id = id.from(_N, "RestoreClusterFromSnapshotInput", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "RestoreClusterFromSnapshotInput", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "RestoreClusterFromSnapshotInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        shardCapacity = schema.new({
            id = id.from(_N, "RestoreClusterFromSnapshotInput", "shardCapacity"),
            type = "integer",
            name = "shardCapacity",
            target_id = prelude.Integer.id,
        }),
        shardInstanceCount = schema.new({
            id = id.from(_N, "RestoreClusterFromSnapshotInput", "shardInstanceCount"),
            type = "integer",
            name = "shardInstanceCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.RestoreClusterFromSnapshotOutput = schema.new({
    id = id.from(_N, "RestoreClusterFromSnapshotOutput"),
    type = "structure",
    members = {
        cluster = schema.new({
            id = id.from(_N, "RestoreClusterFromSnapshotOutput", "cluster"),
            type = "structure",
            name = "cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartClusterInput = schema.new({
    id = id.from(_N, "StartClusterInput"),
    type = "structure",
    members = {
        clusterArn = schema.new({
            id = id.from(_N, "StartClusterInput", "clusterArn"),
            type = "string",
            name = "clusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StartClusterOutput = schema.new({
    id = id.from(_N, "StartClusterOutput"),
    type = "structure",
    members = {
        cluster = schema.new({
            id = id.from(_N, "StartClusterOutput", "cluster"),
            type = "structure",
            name = "cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopClusterInput = schema.new({
    id = id.from(_N, "StopClusterInput"),
    type = "structure",
    members = {
        clusterArn = schema.new({
            id = id.from(_N, "StopClusterInput", "clusterArn"),
            type = "string",
            name = "clusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StopClusterOutput = schema.new({
    id = id.from(_N, "StopClusterOutput"),
    type = "structure",
    members = {
        cluster = schema.new({
            id = id.from(_N, "StopClusterOutput", "cluster"),
            type = "structure",
            name = "cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateClusterInput = schema.new({
    id = id.from(_N, "UpdateClusterInput"),
    type = "structure",
    members = {
        clusterArn = schema.new({
            id = id.from(_N, "UpdateClusterInput", "clusterArn"),
            type = "string",
            name = "clusterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        authType = schema.new({
            id = id.from(_N, "UpdateClusterInput", "authType"),
            type = "string",
            name = "authType",
            target_id = prelude.String.id,
        }),
        shardCapacity = schema.new({
            id = id.from(_N, "UpdateClusterInput", "shardCapacity"),
            type = "integer",
            name = "shardCapacity",
            target_id = prelude.Integer.id,
        }),
        shardCount = schema.new({
            id = id.from(_N, "UpdateClusterInput", "shardCount"),
            type = "integer",
            name = "shardCount",
            target_id = prelude.Integer.id,
        }),
        vpcSecurityGroupIds = schema.new({
            id = id.from(_N, "UpdateClusterInput", "vpcSecurityGroupIds"),
            type = "list",
            name = "vpcSecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        subnetIds = schema.new({
            id = id.from(_N, "UpdateClusterInput", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        adminUserPassword = schema.new({
            id = id.from(_N, "UpdateClusterInput", "adminUserPassword"),
            type = "string",
            name = "adminUserPassword",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateClusterInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        preferredMaintenanceWindow = schema.new({
            id = id.from(_N, "UpdateClusterInput", "preferredMaintenanceWindow"),
            type = "string",
            name = "preferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        backupRetentionPeriod = schema.new({
            id = id.from(_N, "UpdateClusterInput", "backupRetentionPeriod"),
            type = "integer",
            name = "backupRetentionPeriod",
            target_id = prelude.Integer.id,
        }),
        preferredBackupWindow = schema.new({
            id = id.from(_N, "UpdateClusterInput", "preferredBackupWindow"),
            type = "string",
            name = "preferredBackupWindow",
            target_id = prelude.String.id,
        }),
        shardInstanceCount = schema.new({
            id = id.from(_N, "UpdateClusterInput", "shardInstanceCount"),
            type = "integer",
            name = "shardInstanceCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.UpdateClusterOutput = schema.new({
    id = id.from(_N, "UpdateClusterOutput"),
    type = "structure",
    members = {
        cluster = schema.new({
            id = id.from(_N, "UpdateClusterOutput", "cluster"),
            type = "structure",
            name = "cluster",
            target_id = id.from(_N, "Cluster"),
            target = M.Cluster,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
