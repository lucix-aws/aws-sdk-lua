local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.docdb"

local M = {}

M.AddSourceIdentifierToSubscriptionInput = schema.new({
    id = id.from(_N, "AddSourceIdentifierToSubscriptionMessage"),
    type = "structure",
    members = {
        SubscriptionName = schema.new({
            id = id.from(_N, "AddSourceIdentifierToSubscriptionInput", "SubscriptionName"),
            type = "string",
            name = "SubscriptionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceIdentifier = schema.new({
            id = id.from(_N, "AddSourceIdentifierToSubscriptionInput", "SourceIdentifier"),
            type = "string",
            name = "SourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EventSubscription = schema.new({
    id = id.from(_N, "EventSubscription"),
    type = "structure",
    members = {
        CustomerAwsId = schema.new({
            id = id.from(_N, "EventSubscription", "CustomerAwsId"),
            type = "string",
            name = "CustomerAwsId",
            target_id = prelude.String.id,
        }),
        CustSubscriptionId = schema.new({
            id = id.from(_N, "EventSubscription", "CustSubscriptionId"),
            type = "string",
            name = "CustSubscriptionId",
            target_id = prelude.String.id,
        }),
        SnsTopicArn = schema.new({
            id = id.from(_N, "EventSubscription", "SnsTopicArn"),
            type = "string",
            name = "SnsTopicArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "EventSubscription", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        SubscriptionCreationTime = schema.new({
            id = id.from(_N, "EventSubscription", "SubscriptionCreationTime"),
            type = "string",
            name = "SubscriptionCreationTime",
            target_id = prelude.String.id,
        }),
        SourceType = schema.new({
            id = id.from(_N, "EventSubscription", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
        SourceIdsList = schema.new({
            id = id.from(_N, "EventSubscription", "SourceIdsList"),
            type = "list",
            name = "SourceIdsList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SourceId" } } }),
        }),
        EventCategoriesList = schema.new({
            id = id.from(_N, "EventSubscription", "EventCategoriesList"),
            type = "list",
            name = "EventCategoriesList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "EventCategory" } } }),
        }),
        Enabled = schema.new({
            id = id.from(_N, "EventSubscription", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
        EventSubscriptionArn = schema.new({
            id = id.from(_N, "EventSubscription", "EventSubscriptionArn"),
            type = "string",
            name = "EventSubscriptionArn",
            target_id = prelude.String.id,
        }),
    },
})

M.AddSourceIdentifierToSubscriptionOutput = schema.new({
    id = id.from(_N, "AddSourceIdentifierToSubscriptionResult"),
    type = "structure",
    members = {
        EventSubscription = schema.new({
            id = id.from(_N, "AddSourceIdentifierToSubscriptionOutput", "EventSubscription"),
            type = "structure",
            name = "EventSubscription",
            target_id = id.from(_N, "EventSubscription"),
            target = M.EventSubscription,
        }),
    },
})

M.SourceNotFoundFault = schema.new({
    id = id.from(_N, "SourceNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SourceNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SubscriptionNotFoundFault = schema.new({
    id = id.from(_N, "SubscriptionNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SubscriptionNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.AddTagsToResourceInput = schema.new({
    id = id.from(_N, "AddTagsToResourceMessage"),
    type = "structure",
    members = {
        ResourceName = schema.new({
            id = id.from(_N, "AddTagsToResourceInput", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "AddTagsToResourceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddTagsToResourceOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DBClusterNotFoundFault = schema.new({
    id = id.from(_N, "DBClusterNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBClusterNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DBInstanceNotFoundFault = schema.new({
    id = id.from(_N, "DBInstanceNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBInstanceNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DBSnapshotNotFoundFault = schema.new({
    id = id.from(_N, "DBSnapshotNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBSnapshotNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ApplyPendingMaintenanceActionInput = schema.new({
    id = id.from(_N, "ApplyPendingMaintenanceActionMessage"),
    type = "structure",
    members = {
        ResourceIdentifier = schema.new({
            id = id.from(_N, "ApplyPendingMaintenanceActionInput", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplyAction = schema.new({
            id = id.from(_N, "ApplyPendingMaintenanceActionInput", "ApplyAction"),
            type = "string",
            name = "ApplyAction",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OptInType = schema.new({
            id = id.from(_N, "ApplyPendingMaintenanceActionInput", "OptInType"),
            type = "string",
            name = "OptInType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PendingMaintenanceAction = schema.new({
    id = id.from(_N, "PendingMaintenanceAction"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "PendingMaintenanceAction", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
        }),
        AutoAppliedAfterDate = schema.new({
            id = id.from(_N, "PendingMaintenanceAction", "AutoAppliedAfterDate"),
            type = "timestamp",
            name = "AutoAppliedAfterDate",
            target_id = prelude.Timestamp.id,
        }),
        ForcedApplyDate = schema.new({
            id = id.from(_N, "PendingMaintenanceAction", "ForcedApplyDate"),
            type = "timestamp",
            name = "ForcedApplyDate",
            target_id = prelude.Timestamp.id,
        }),
        OptInStatus = schema.new({
            id = id.from(_N, "PendingMaintenanceAction", "OptInStatus"),
            type = "string",
            name = "OptInStatus",
            target_id = prelude.String.id,
        }),
        CurrentApplyDate = schema.new({
            id = id.from(_N, "PendingMaintenanceAction", "CurrentApplyDate"),
            type = "timestamp",
            name = "CurrentApplyDate",
            target_id = prelude.Timestamp.id,
        }),
        Description = schema.new({
            id = id.from(_N, "PendingMaintenanceAction", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourcePendingMaintenanceActions = schema.new({
    id = id.from(_N, "ResourcePendingMaintenanceActions"),
    type = "structure",
    members = {
        ResourceIdentifier = schema.new({
            id = id.from(_N, "ResourcePendingMaintenanceActions", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
        }),
        PendingMaintenanceActionDetails = schema.new({
            id = id.from(_N, "ResourcePendingMaintenanceActions", "PendingMaintenanceActionDetails"),
            type = "list",
            name = "PendingMaintenanceActionDetails",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.PendingMaintenanceAction, traits = { [traits.XML_NAME] = { name = "PendingMaintenanceAction" } } }),
        }),
    },
})

M.ApplyPendingMaintenanceActionOutput = schema.new({
    id = id.from(_N, "ApplyPendingMaintenanceActionResult"),
    type = "structure",
    members = {
        ResourcePendingMaintenanceActions = schema.new({
            id = id.from(_N, "ApplyPendingMaintenanceActionOutput", "ResourcePendingMaintenanceActions"),
            type = "structure",
            name = "ResourcePendingMaintenanceActions",
            target_id = id.from(_N, "ResourcePendingMaintenanceActions"),
            target = M.ResourcePendingMaintenanceActions,
        }),
    },
})

M.InvalidDBClusterStateFault = schema.new({
    id = id.from(_N, "InvalidDBClusterStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidDBClusterStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidDBInstanceStateFault = schema.new({
    id = id.from(_N, "InvalidDBInstanceStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidDBInstanceStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceNotFoundFault = schema.new({
    id = id.from(_N, "ResourceNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CopyDBClusterParameterGroupInput = schema.new({
    id = id.from(_N, "CopyDBClusterParameterGroupMessage"),
    type = "structure",
    members = {
        SourceDBClusterParameterGroupIdentifier = schema.new({
            id = id.from(_N, "CopyDBClusterParameterGroupInput", "SourceDBClusterParameterGroupIdentifier"),
            type = "string",
            name = "SourceDBClusterParameterGroupIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetDBClusterParameterGroupIdentifier = schema.new({
            id = id.from(_N, "CopyDBClusterParameterGroupInput", "TargetDBClusterParameterGroupIdentifier"),
            type = "string",
            name = "TargetDBClusterParameterGroupIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetDBClusterParameterGroupDescription = schema.new({
            id = id.from(_N, "CopyDBClusterParameterGroupInput", "TargetDBClusterParameterGroupDescription"),
            type = "string",
            name = "TargetDBClusterParameterGroupDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CopyDBClusterParameterGroupInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.DBClusterParameterGroup = schema.new({
    id = id.from(_N, "DBClusterParameterGroup"),
    type = "structure",
    members = {
        DBClusterParameterGroupName = schema.new({
            id = id.from(_N, "DBClusterParameterGroup", "DBClusterParameterGroupName"),
            type = "string",
            name = "DBClusterParameterGroupName",
            target_id = prelude.String.id,
        }),
        DBParameterGroupFamily = schema.new({
            id = id.from(_N, "DBClusterParameterGroup", "DBParameterGroupFamily"),
            type = "string",
            name = "DBParameterGroupFamily",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "DBClusterParameterGroup", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        DBClusterParameterGroupArn = schema.new({
            id = id.from(_N, "DBClusterParameterGroup", "DBClusterParameterGroupArn"),
            type = "string",
            name = "DBClusterParameterGroupArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CopyDBClusterParameterGroupOutput = schema.new({
    id = id.from(_N, "CopyDBClusterParameterGroupResult"),
    type = "structure",
    members = {
        DBClusterParameterGroup = schema.new({
            id = id.from(_N, "CopyDBClusterParameterGroupOutput", "DBClusterParameterGroup"),
            type = "structure",
            name = "DBClusterParameterGroup",
            target_id = id.from(_N, "DBClusterParameterGroup"),
            target = M.DBClusterParameterGroup,
        }),
    },
})

M.DBParameterGroupAlreadyExistsFault = schema.new({
    id = id.from(_N, "DBParameterGroupAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBParameterGroupAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DBParameterGroupNotFoundFault = schema.new({
    id = id.from(_N, "DBParameterGroupNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBParameterGroupNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DBParameterGroupQuotaExceededFault = schema.new({
    id = id.from(_N, "DBParameterGroupQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBParameterGroupQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CopyDBClusterSnapshotInput = schema.new({
    id = id.from(_N, "CopyDBClusterSnapshotMessage"),
    type = "structure",
    members = {
        SourceDBClusterSnapshotIdentifier = schema.new({
            id = id.from(_N, "CopyDBClusterSnapshotInput", "SourceDBClusterSnapshotIdentifier"),
            type = "string",
            name = "SourceDBClusterSnapshotIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetDBClusterSnapshotIdentifier = schema.new({
            id = id.from(_N, "CopyDBClusterSnapshotInput", "TargetDBClusterSnapshotIdentifier"),
            type = "string",
            name = "TargetDBClusterSnapshotIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "CopyDBClusterSnapshotInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        PreSignedUrl = schema.new({
            id = id.from(_N, "CopyDBClusterSnapshotInput", "PreSignedUrl"),
            type = "string",
            name = "PreSignedUrl",
            target_id = prelude.String.id,
        }),
        CopyTags = schema.new({
            id = id.from(_N, "CopyDBClusterSnapshotInput", "CopyTags"),
            type = "boolean",
            name = "CopyTags",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CopyDBClusterSnapshotInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.DBClusterSnapshot = schema.new({
    id = id.from(_N, "DBClusterSnapshot"),
    type = "structure",
    members = {
        AvailabilityZones = schema.new({
            id = id.from(_N, "DBClusterSnapshot", "AvailabilityZones"),
            type = "list",
            name = "AvailabilityZones",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "AvailabilityZone" } } }),
        }),
        DBClusterSnapshotIdentifier = schema.new({
            id = id.from(_N, "DBClusterSnapshot", "DBClusterSnapshotIdentifier"),
            type = "string",
            name = "DBClusterSnapshotIdentifier",
            target_id = prelude.String.id,
        }),
        DBClusterIdentifier = schema.new({
            id = id.from(_N, "DBClusterSnapshot", "DBClusterIdentifier"),
            type = "string",
            name = "DBClusterIdentifier",
            target_id = prelude.String.id,
        }),
        SnapshotCreateTime = schema.new({
            id = id.from(_N, "DBClusterSnapshot", "SnapshotCreateTime"),
            type = "timestamp",
            name = "SnapshotCreateTime",
            target_id = prelude.Timestamp.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "DBClusterSnapshot", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DBClusterSnapshot", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "DBClusterSnapshot", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "DBClusterSnapshot", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        ClusterCreateTime = schema.new({
            id = id.from(_N, "DBClusterSnapshot", "ClusterCreateTime"),
            type = "timestamp",
            name = "ClusterCreateTime",
            target_id = prelude.Timestamp.id,
        }),
        MasterUsername = schema.new({
            id = id.from(_N, "DBClusterSnapshot", "MasterUsername"),
            type = "string",
            name = "MasterUsername",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "DBClusterSnapshot", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        SnapshotType = schema.new({
            id = id.from(_N, "DBClusterSnapshot", "SnapshotType"),
            type = "string",
            name = "SnapshotType",
            target_id = prelude.String.id,
        }),
        PercentProgress = schema.new({
            id = id.from(_N, "DBClusterSnapshot", "PercentProgress"),
            type = "integer",
            name = "PercentProgress",
            target_id = prelude.Integer.id,
        }),
        StorageEncrypted = schema.new({
            id = id.from(_N, "DBClusterSnapshot", "StorageEncrypted"),
            type = "boolean",
            name = "StorageEncrypted",
            target_id = prelude.Boolean.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "DBClusterSnapshot", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        DBClusterSnapshotArn = schema.new({
            id = id.from(_N, "DBClusterSnapshot", "DBClusterSnapshotArn"),
            type = "string",
            name = "DBClusterSnapshotArn",
            target_id = prelude.String.id,
        }),
        SourceDBClusterSnapshotArn = schema.new({
            id = id.from(_N, "DBClusterSnapshot", "SourceDBClusterSnapshotArn"),
            type = "string",
            name = "SourceDBClusterSnapshotArn",
            target_id = prelude.String.id,
        }),
        StorageType = schema.new({
            id = id.from(_N, "DBClusterSnapshot", "StorageType"),
            type = "string",
            name = "StorageType",
            target_id = prelude.String.id,
        }),
    },
})

M.CopyDBClusterSnapshotOutput = schema.new({
    id = id.from(_N, "CopyDBClusterSnapshotResult"),
    type = "structure",
    members = {
        DBClusterSnapshot = schema.new({
            id = id.from(_N, "CopyDBClusterSnapshotOutput", "DBClusterSnapshot"),
            type = "structure",
            name = "DBClusterSnapshot",
            target_id = id.from(_N, "DBClusterSnapshot"),
            target = M.DBClusterSnapshot,
        }),
    },
})

M.DBClusterSnapshotAlreadyExistsFault = schema.new({
    id = id.from(_N, "DBClusterSnapshotAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBClusterSnapshotAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DBClusterSnapshotNotFoundFault = schema.new({
    id = id.from(_N, "DBClusterSnapshotNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBClusterSnapshotNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidDBClusterSnapshotStateFault = schema.new({
    id = id.from(_N, "InvalidDBClusterSnapshotStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidDBClusterSnapshotStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.KMSKeyNotAccessibleFault = schema.new({
    id = id.from(_N, "KMSKeyNotAccessibleFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "KMSKeyNotAccessibleFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SnapshotQuotaExceededFault = schema.new({
    id = id.from(_N, "SnapshotQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SnapshotQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServerlessV2ScalingConfiguration = schema.new({
    id = id.from(_N, "ServerlessV2ScalingConfiguration"),
    type = "structure",
    members = {
        MinCapacity = schema.new({
            id = id.from(_N, "ServerlessV2ScalingConfiguration", "MinCapacity"),
            type = "double",
            name = "MinCapacity",
            target_id = prelude.Double.id,
        }),
        MaxCapacity = schema.new({
            id = id.from(_N, "ServerlessV2ScalingConfiguration", "MaxCapacity"),
            type = "double",
            name = "MaxCapacity",
            target_id = prelude.Double.id,
        }),
    },
})

M.CreateDBClusterInput = schema.new({
    id = id.from(_N, "CreateDBClusterMessage"),
    type = "structure",
    members = {
        AvailabilityZones = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "AvailabilityZones"),
            type = "list",
            name = "AvailabilityZones",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "AvailabilityZone" } } }),
        }),
        BackupRetentionPeriod = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "BackupRetentionPeriod"),
            type = "integer",
            name = "BackupRetentionPeriod",
            target_id = prelude.Integer.id,
        }),
        DBClusterIdentifier = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "DBClusterIdentifier"),
            type = "string",
            name = "DBClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DBClusterParameterGroupName = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "DBClusterParameterGroupName"),
            type = "string",
            name = "DBClusterParameterGroupName",
            target_id = prelude.String.id,
        }),
        VpcSecurityGroupIds = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "VpcSecurityGroupIds"),
            type = "list",
            name = "VpcSecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "VpcSecurityGroupId" } } }),
        }),
        DBSubnetGroupName = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "DBSubnetGroupName"),
            type = "string",
            name = "DBSubnetGroupName",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        MasterUsername = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "MasterUsername"),
            type = "string",
            name = "MasterUsername",
            target_id = prelude.String.id,
        }),
        MasterUserPassword = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "MasterUserPassword"),
            type = "string",
            name = "MasterUserPassword",
            target_id = prelude.String.id,
        }),
        PreferredBackupWindow = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "PreferredBackupWindow"),
            type = "string",
            name = "PreferredBackupWindow",
            target_id = prelude.String.id,
        }),
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
        StorageEncrypted = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "StorageEncrypted"),
            type = "boolean",
            name = "StorageEncrypted",
            target_id = prelude.Boolean.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        PreSignedUrl = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "PreSignedUrl"),
            type = "string",
            name = "PreSignedUrl",
            target_id = prelude.String.id,
        }),
        EnableCloudwatchLogsExports = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "EnableCloudwatchLogsExports"),
            type = "list",
            name = "EnableCloudwatchLogsExports",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DeletionProtection = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "DeletionProtection"),
            type = "boolean",
            name = "DeletionProtection",
            target_id = prelude.Boolean.id,
        }),
        GlobalClusterIdentifier = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "GlobalClusterIdentifier"),
            type = "string",
            name = "GlobalClusterIdentifier",
            target_id = prelude.String.id,
        }),
        StorageType = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "StorageType"),
            type = "string",
            name = "StorageType",
            target_id = prelude.String.id,
        }),
        ServerlessV2ScalingConfiguration = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "ServerlessV2ScalingConfiguration"),
            type = "structure",
            name = "ServerlessV2ScalingConfiguration",
            target_id = id.from(_N, "ServerlessV2ScalingConfiguration"),
            target = M.ServerlessV2ScalingConfiguration,
        }),
        ManageMasterUserPassword = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "ManageMasterUserPassword"),
            type = "boolean",
            name = "ManageMasterUserPassword",
            target_id = prelude.Boolean.id,
        }),
        MasterUserSecretKmsKeyId = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "MasterUserSecretKmsKeyId"),
            type = "string",
            name = "MasterUserSecretKmsKeyId",
            target_id = prelude.String.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "CreateDBClusterInput", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
    },
})

M.DBClusterRole = schema.new({
    id = id.from(_N, "DBClusterRole"),
    type = "structure",
    members = {
        RoleArn = schema.new({
            id = id.from(_N, "DBClusterRole", "RoleArn"),
            type = "string",
            name = "RoleArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DBClusterRole", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.DBClusterMember = schema.new({
    id = id.from(_N, "DBClusterMember"),
    type = "structure",
    members = {
        DBInstanceIdentifier = schema.new({
            id = id.from(_N, "DBClusterMember", "DBInstanceIdentifier"),
            type = "string",
            name = "DBInstanceIdentifier",
            target_id = prelude.String.id,
        }),
        IsClusterWriter = schema.new({
            id = id.from(_N, "DBClusterMember", "IsClusterWriter"),
            type = "boolean",
            name = "IsClusterWriter",
            target_id = prelude.Boolean.id,
        }),
        DBClusterParameterGroupStatus = schema.new({
            id = id.from(_N, "DBClusterMember", "DBClusterParameterGroupStatus"),
            type = "string",
            name = "DBClusterParameterGroupStatus",
            target_id = prelude.String.id,
        }),
        PromotionTier = schema.new({
            id = id.from(_N, "DBClusterMember", "PromotionTier"),
            type = "integer",
            name = "PromotionTier",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ClusterMasterUserSecret = schema.new({
    id = id.from(_N, "ClusterMasterUserSecret"),
    type = "structure",
    members = {
        SecretArn = schema.new({
            id = id.from(_N, "ClusterMasterUserSecret", "SecretArn"),
            type = "string",
            name = "SecretArn",
            target_id = prelude.String.id,
        }),
        SecretStatus = schema.new({
            id = id.from(_N, "ClusterMasterUserSecret", "SecretStatus"),
            type = "string",
            name = "SecretStatus",
            target_id = prelude.String.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "ClusterMasterUserSecret", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.ServerlessV2ScalingConfigurationInfo = schema.new({
    id = id.from(_N, "ServerlessV2ScalingConfigurationInfo"),
    type = "structure",
    members = {
        MinCapacity = schema.new({
            id = id.from(_N, "ServerlessV2ScalingConfigurationInfo", "MinCapacity"),
            type = "double",
            name = "MinCapacity",
            target_id = prelude.Double.id,
        }),
        MaxCapacity = schema.new({
            id = id.from(_N, "ServerlessV2ScalingConfigurationInfo", "MaxCapacity"),
            type = "double",
            name = "MaxCapacity",
            target_id = prelude.Double.id,
        }),
    },
})

M.VpcSecurityGroupMembership = schema.new({
    id = id.from(_N, "VpcSecurityGroupMembership"),
    type = "structure",
    members = {
        VpcSecurityGroupId = schema.new({
            id = id.from(_N, "VpcSecurityGroupMembership", "VpcSecurityGroupId"),
            type = "string",
            name = "VpcSecurityGroupId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "VpcSecurityGroupMembership", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.DBCluster = schema.new({
    id = id.from(_N, "DBCluster"),
    type = "structure",
    members = {
        AvailabilityZones = schema.new({
            id = id.from(_N, "DBCluster", "AvailabilityZones"),
            type = "list",
            name = "AvailabilityZones",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "AvailabilityZone" } } }),
        }),
        BackupRetentionPeriod = schema.new({
            id = id.from(_N, "DBCluster", "BackupRetentionPeriod"),
            type = "integer",
            name = "BackupRetentionPeriod",
            target_id = prelude.Integer.id,
        }),
        DBClusterIdentifier = schema.new({
            id = id.from(_N, "DBCluster", "DBClusterIdentifier"),
            type = "string",
            name = "DBClusterIdentifier",
            target_id = prelude.String.id,
        }),
        DBClusterParameterGroup = schema.new({
            id = id.from(_N, "DBCluster", "DBClusterParameterGroup"),
            type = "string",
            name = "DBClusterParameterGroup",
            target_id = prelude.String.id,
        }),
        DBSubnetGroup = schema.new({
            id = id.from(_N, "DBCluster", "DBSubnetGroup"),
            type = "string",
            name = "DBSubnetGroup",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DBCluster", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        PercentProgress = schema.new({
            id = id.from(_N, "DBCluster", "PercentProgress"),
            type = "string",
            name = "PercentProgress",
            target_id = prelude.String.id,
        }),
        EarliestRestorableTime = schema.new({
            id = id.from(_N, "DBCluster", "EarliestRestorableTime"),
            type = "timestamp",
            name = "EarliestRestorableTime",
            target_id = prelude.Timestamp.id,
        }),
        Endpoint = schema.new({
            id = id.from(_N, "DBCluster", "Endpoint"),
            type = "string",
            name = "Endpoint",
            target_id = prelude.String.id,
        }),
        ReaderEndpoint = schema.new({
            id = id.from(_N, "DBCluster", "ReaderEndpoint"),
            type = "string",
            name = "ReaderEndpoint",
            target_id = prelude.String.id,
        }),
        MultiAZ = schema.new({
            id = id.from(_N, "DBCluster", "MultiAZ"),
            type = "boolean",
            name = "MultiAZ",
            target_id = prelude.Boolean.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "DBCluster", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "DBCluster", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        LatestRestorableTime = schema.new({
            id = id.from(_N, "DBCluster", "LatestRestorableTime"),
            type = "timestamp",
            name = "LatestRestorableTime",
            target_id = prelude.Timestamp.id,
        }),
        Port = schema.new({
            id = id.from(_N, "DBCluster", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        MasterUsername = schema.new({
            id = id.from(_N, "DBCluster", "MasterUsername"),
            type = "string",
            name = "MasterUsername",
            target_id = prelude.String.id,
        }),
        PreferredBackupWindow = schema.new({
            id = id.from(_N, "DBCluster", "PreferredBackupWindow"),
            type = "string",
            name = "PreferredBackupWindow",
            target_id = prelude.String.id,
        }),
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "DBCluster", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        ReplicationSourceIdentifier = schema.new({
            id = id.from(_N, "DBCluster", "ReplicationSourceIdentifier"),
            type = "string",
            name = "ReplicationSourceIdentifier",
            target_id = prelude.String.id,
        }),
        ReadReplicaIdentifiers = schema.new({
            id = id.from(_N, "DBCluster", "ReadReplicaIdentifiers"),
            type = "list",
            name = "ReadReplicaIdentifiers",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "ReadReplicaIdentifier" } } }),
        }),
        DBClusterMembers = schema.new({
            id = id.from(_N, "DBCluster", "DBClusterMembers"),
            type = "list",
            name = "DBClusterMembers",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DBClusterMember, traits = { [traits.XML_NAME] = { name = "DBClusterMember" } } }),
        }),
        VpcSecurityGroups = schema.new({
            id = id.from(_N, "DBCluster", "VpcSecurityGroups"),
            type = "list",
            name = "VpcSecurityGroups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.VpcSecurityGroupMembership, traits = { [traits.XML_NAME] = { name = "VpcSecurityGroupMembership" } } }),
        }),
        HostedZoneId = schema.new({
            id = id.from(_N, "DBCluster", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
        }),
        StorageEncrypted = schema.new({
            id = id.from(_N, "DBCluster", "StorageEncrypted"),
            type = "boolean",
            name = "StorageEncrypted",
            target_id = prelude.Boolean.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "DBCluster", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        DbClusterResourceId = schema.new({
            id = id.from(_N, "DBCluster", "DbClusterResourceId"),
            type = "string",
            name = "DbClusterResourceId",
            target_id = prelude.String.id,
        }),
        DBClusterArn = schema.new({
            id = id.from(_N, "DBCluster", "DBClusterArn"),
            type = "string",
            name = "DBClusterArn",
            target_id = prelude.String.id,
        }),
        AssociatedRoles = schema.new({
            id = id.from(_N, "DBCluster", "AssociatedRoles"),
            type = "list",
            name = "AssociatedRoles",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DBClusterRole, traits = { [traits.XML_NAME] = { name = "DBClusterRole" } } }),
        }),
        CloneGroupId = schema.new({
            id = id.from(_N, "DBCluster", "CloneGroupId"),
            type = "string",
            name = "CloneGroupId",
            target_id = prelude.String.id,
        }),
        ClusterCreateTime = schema.new({
            id = id.from(_N, "DBCluster", "ClusterCreateTime"),
            type = "timestamp",
            name = "ClusterCreateTime",
            target_id = prelude.Timestamp.id,
        }),
        EnabledCloudwatchLogsExports = schema.new({
            id = id.from(_N, "DBCluster", "EnabledCloudwatchLogsExports"),
            type = "list",
            name = "EnabledCloudwatchLogsExports",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DeletionProtection = schema.new({
            id = id.from(_N, "DBCluster", "DeletionProtection"),
            type = "boolean",
            name = "DeletionProtection",
            target_id = prelude.Boolean.id,
        }),
        IOOptimizedNextAllowedModificationTime = schema.new({
            id = id.from(_N, "DBCluster", "IOOptimizedNextAllowedModificationTime"),
            type = "timestamp",
            name = "IOOptimizedNextAllowedModificationTime",
            target_id = prelude.Timestamp.id,
        }),
        StorageType = schema.new({
            id = id.from(_N, "DBCluster", "StorageType"),
            type = "string",
            name = "StorageType",
            target_id = prelude.String.id,
        }),
        ServerlessV2ScalingConfiguration = schema.new({
            id = id.from(_N, "DBCluster", "ServerlessV2ScalingConfiguration"),
            type = "structure",
            name = "ServerlessV2ScalingConfiguration",
            target_id = id.from(_N, "ServerlessV2ScalingConfigurationInfo"),
            target = M.ServerlessV2ScalingConfigurationInfo,
        }),
        MasterUserSecret = schema.new({
            id = id.from(_N, "DBCluster", "MasterUserSecret"),
            type = "structure",
            name = "MasterUserSecret",
            target_id = id.from(_N, "ClusterMasterUserSecret"),
            target = M.ClusterMasterUserSecret,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "DBCluster", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDBClusterOutput = schema.new({
    id = id.from(_N, "CreateDBClusterResult"),
    type = "structure",
    members = {
        DBCluster = schema.new({
            id = id.from(_N, "CreateDBClusterOutput", "DBCluster"),
            type = "structure",
            name = "DBCluster",
            target_id = id.from(_N, "DBCluster"),
            target = M.DBCluster,
        }),
    },
})

M.DBClusterAlreadyExistsFault = schema.new({
    id = id.from(_N, "DBClusterAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBClusterAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DBClusterParameterGroupNotFoundFault = schema.new({
    id = id.from(_N, "DBClusterParameterGroupNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBClusterParameterGroupNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DBClusterQuotaExceededFault = schema.new({
    id = id.from(_N, "DBClusterQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBClusterQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DBSubnetGroupDoesNotCoverEnoughAZs = schema.new({
    id = id.from(_N, "DBSubnetGroupDoesNotCoverEnoughAZs"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBSubnetGroupDoesNotCoverEnoughAZs", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DBSubnetGroupNotFoundFault = schema.new({
    id = id.from(_N, "DBSubnetGroupNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBSubnetGroupNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GlobalClusterNotFoundFault = schema.new({
    id = id.from(_N, "GlobalClusterNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "GlobalClusterNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InsufficientStorageClusterCapacityFault = schema.new({
    id = id.from(_N, "InsufficientStorageClusterCapacityFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InsufficientStorageClusterCapacityFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidDBSubnetGroupStateFault = schema.new({
    id = id.from(_N, "InvalidDBSubnetGroupStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidDBSubnetGroupStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidGlobalClusterStateFault = schema.new({
    id = id.from(_N, "InvalidGlobalClusterStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidGlobalClusterStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidSubnet = schema.new({
    id = id.from(_N, "InvalidSubnet"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidSubnet", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidVPCNetworkStateFault = schema.new({
    id = id.from(_N, "InvalidVPCNetworkStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidVPCNetworkStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkTypeNotSupported = schema.new({
    id = id.from(_N, "NetworkTypeNotSupported"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NetworkTypeNotSupported", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.StorageQuotaExceededFault = schema.new({
    id = id.from(_N, "StorageQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "StorageQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDBClusterParameterGroupInput = schema.new({
    id = id.from(_N, "CreateDBClusterParameterGroupMessage"),
    type = "structure",
    members = {
        DBClusterParameterGroupName = schema.new({
            id = id.from(_N, "CreateDBClusterParameterGroupInput", "DBClusterParameterGroupName"),
            type = "string",
            name = "DBClusterParameterGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DBParameterGroupFamily = schema.new({
            id = id.from(_N, "CreateDBClusterParameterGroupInput", "DBParameterGroupFamily"),
            type = "string",
            name = "DBParameterGroupFamily",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Description = schema.new({
            id = id.from(_N, "CreateDBClusterParameterGroupInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDBClusterParameterGroupInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.CreateDBClusterParameterGroupOutput = schema.new({
    id = id.from(_N, "CreateDBClusterParameterGroupResult"),
    type = "structure",
    members = {
        DBClusterParameterGroup = schema.new({
            id = id.from(_N, "CreateDBClusterParameterGroupOutput", "DBClusterParameterGroup"),
            type = "structure",
            name = "DBClusterParameterGroup",
            target_id = id.from(_N, "DBClusterParameterGroup"),
            target = M.DBClusterParameterGroup,
        }),
    },
})

M.CreateDBClusterSnapshotInput = schema.new({
    id = id.from(_N, "CreateDBClusterSnapshotMessage"),
    type = "structure",
    members = {
        DBClusterSnapshotIdentifier = schema.new({
            id = id.from(_N, "CreateDBClusterSnapshotInput", "DBClusterSnapshotIdentifier"),
            type = "string",
            name = "DBClusterSnapshotIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DBClusterIdentifier = schema.new({
            id = id.from(_N, "CreateDBClusterSnapshotInput", "DBClusterIdentifier"),
            type = "string",
            name = "DBClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDBClusterSnapshotInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.CreateDBClusterSnapshotOutput = schema.new({
    id = id.from(_N, "CreateDBClusterSnapshotResult"),
    type = "structure",
    members = {
        DBClusterSnapshot = schema.new({
            id = id.from(_N, "CreateDBClusterSnapshotOutput", "DBClusterSnapshot"),
            type = "structure",
            name = "DBClusterSnapshot",
            target_id = id.from(_N, "DBClusterSnapshot"),
            target = M.DBClusterSnapshot,
        }),
    },
})

M.AuthorizationNotFoundFault = schema.new({
    id = id.from(_N, "AuthorizationNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AuthorizationNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDBInstanceInput = schema.new({
    id = id.from(_N, "CreateDBInstanceMessage"),
    type = "structure",
    members = {
        DBInstanceIdentifier = schema.new({
            id = id.from(_N, "CreateDBInstanceInput", "DBInstanceIdentifier"),
            type = "string",
            name = "DBInstanceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DBInstanceClass = schema.new({
            id = id.from(_N, "CreateDBInstanceInput", "DBInstanceClass"),
            type = "string",
            name = "DBInstanceClass",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Engine = schema.new({
            id = id.from(_N, "CreateDBInstanceInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "CreateDBInstanceInput", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "CreateDBInstanceInput", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "CreateDBInstanceInput", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDBInstanceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
        DBClusterIdentifier = schema.new({
            id = id.from(_N, "CreateDBInstanceInput", "DBClusterIdentifier"),
            type = "string",
            name = "DBClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CopyTagsToSnapshot = schema.new({
            id = id.from(_N, "CreateDBInstanceInput", "CopyTagsToSnapshot"),
            type = "boolean",
            name = "CopyTagsToSnapshot",
            target_id = prelude.Boolean.id,
        }),
        PromotionTier = schema.new({
            id = id.from(_N, "CreateDBInstanceInput", "PromotionTier"),
            type = "integer",
            name = "PromotionTier",
            target_id = prelude.Integer.id,
        }),
        EnablePerformanceInsights = schema.new({
            id = id.from(_N, "CreateDBInstanceInput", "EnablePerformanceInsights"),
            type = "boolean",
            name = "EnablePerformanceInsights",
            target_id = prelude.Boolean.id,
        }),
        PerformanceInsightsKMSKeyId = schema.new({
            id = id.from(_N, "CreateDBInstanceInput", "PerformanceInsightsKMSKeyId"),
            type = "string",
            name = "PerformanceInsightsKMSKeyId",
            target_id = prelude.String.id,
        }),
        CACertificateIdentifier = schema.new({
            id = id.from(_N, "CreateDBInstanceInput", "CACertificateIdentifier"),
            type = "string",
            name = "CACertificateIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.CertificateDetails = schema.new({
    id = id.from(_N, "CertificateDetails"),
    type = "structure",
    members = {
        CAIdentifier = schema.new({
            id = id.from(_N, "CertificateDetails", "CAIdentifier"),
            type = "string",
            name = "CAIdentifier",
            target_id = prelude.String.id,
        }),
        ValidTill = schema.new({
            id = id.from(_N, "CertificateDetails", "ValidTill"),
            type = "timestamp",
            name = "ValidTill",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.AvailabilityZone = schema.new({
    id = id.from(_N, "AvailabilityZone"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "AvailabilityZone", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
    },
})

M.Subnet = schema.new({
    id = id.from(_N, "Subnet"),
    type = "structure",
    members = {
        SubnetIdentifier = schema.new({
            id = id.from(_N, "Subnet", "SubnetIdentifier"),
            type = "string",
            name = "SubnetIdentifier",
            target_id = prelude.String.id,
        }),
        SubnetAvailabilityZone = schema.new({
            id = id.from(_N, "Subnet", "SubnetAvailabilityZone"),
            type = "structure",
            name = "SubnetAvailabilityZone",
            target_id = id.from(_N, "AvailabilityZone"),
            target = M.AvailabilityZone,
        }),
        SubnetStatus = schema.new({
            id = id.from(_N, "Subnet", "SubnetStatus"),
            type = "string",
            name = "SubnetStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.DBSubnetGroup = schema.new({
    id = id.from(_N, "DBSubnetGroup"),
    type = "structure",
    members = {
        DBSubnetGroupName = schema.new({
            id = id.from(_N, "DBSubnetGroup", "DBSubnetGroupName"),
            type = "string",
            name = "DBSubnetGroupName",
            target_id = prelude.String.id,
        }),
        DBSubnetGroupDescription = schema.new({
            id = id.from(_N, "DBSubnetGroup", "DBSubnetGroupDescription"),
            type = "string",
            name = "DBSubnetGroupDescription",
            target_id = prelude.String.id,
        }),
        VpcId = schema.new({
            id = id.from(_N, "DBSubnetGroup", "VpcId"),
            type = "string",
            name = "VpcId",
            target_id = prelude.String.id,
        }),
        SubnetGroupStatus = schema.new({
            id = id.from(_N, "DBSubnetGroup", "SubnetGroupStatus"),
            type = "string",
            name = "SubnetGroupStatus",
            target_id = prelude.String.id,
        }),
        Subnets = schema.new({
            id = id.from(_N, "DBSubnetGroup", "Subnets"),
            type = "list",
            name = "Subnets",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Subnet, traits = { [traits.XML_NAME] = { name = "Subnet" } } }),
        }),
        DBSubnetGroupArn = schema.new({
            id = id.from(_N, "DBSubnetGroup", "DBSubnetGroupArn"),
            type = "string",
            name = "DBSubnetGroupArn",
            target_id = prelude.String.id,
        }),
        SupportedNetworkTypes = schema.new({
            id = id.from(_N, "DBSubnetGroup", "SupportedNetworkTypes"),
            type = "list",
            name = "SupportedNetworkTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.Endpoint = schema.new({
    id = id.from(_N, "Endpoint"),
    type = "structure",
    members = {
        Address = schema.new({
            id = id.from(_N, "Endpoint", "Address"),
            type = "string",
            name = "Address",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "Endpoint", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        HostedZoneId = schema.new({
            id = id.from(_N, "Endpoint", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
        }),
    },
})

M.PendingCloudwatchLogsExports = schema.new({
    id = id.from(_N, "PendingCloudwatchLogsExports"),
    type = "structure",
    members = {
        LogTypesToEnable = schema.new({
            id = id.from(_N, "PendingCloudwatchLogsExports", "LogTypesToEnable"),
            type = "list",
            name = "LogTypesToEnable",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        LogTypesToDisable = schema.new({
            id = id.from(_N, "PendingCloudwatchLogsExports", "LogTypesToDisable"),
            type = "list",
            name = "LogTypesToDisable",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.PendingModifiedValues = schema.new({
    id = id.from(_N, "PendingModifiedValues"),
    type = "structure",
    members = {
        DBInstanceClass = schema.new({
            id = id.from(_N, "PendingModifiedValues", "DBInstanceClass"),
            type = "string",
            name = "DBInstanceClass",
            target_id = prelude.String.id,
        }),
        AllocatedStorage = schema.new({
            id = id.from(_N, "PendingModifiedValues", "AllocatedStorage"),
            type = "integer",
            name = "AllocatedStorage",
            target_id = prelude.Integer.id,
        }),
        MasterUserPassword = schema.new({
            id = id.from(_N, "PendingModifiedValues", "MasterUserPassword"),
            type = "string",
            name = "MasterUserPassword",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "PendingModifiedValues", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        BackupRetentionPeriod = schema.new({
            id = id.from(_N, "PendingModifiedValues", "BackupRetentionPeriod"),
            type = "integer",
            name = "BackupRetentionPeriod",
            target_id = prelude.Integer.id,
        }),
        MultiAZ = schema.new({
            id = id.from(_N, "PendingModifiedValues", "MultiAZ"),
            type = "boolean",
            name = "MultiAZ",
            target_id = prelude.Boolean.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "PendingModifiedValues", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        LicenseModel = schema.new({
            id = id.from(_N, "PendingModifiedValues", "LicenseModel"),
            type = "string",
            name = "LicenseModel",
            target_id = prelude.String.id,
        }),
        Iops = schema.new({
            id = id.from(_N, "PendingModifiedValues", "Iops"),
            type = "integer",
            name = "Iops",
            target_id = prelude.Integer.id,
        }),
        DBInstanceIdentifier = schema.new({
            id = id.from(_N, "PendingModifiedValues", "DBInstanceIdentifier"),
            type = "string",
            name = "DBInstanceIdentifier",
            target_id = prelude.String.id,
        }),
        StorageType = schema.new({
            id = id.from(_N, "PendingModifiedValues", "StorageType"),
            type = "string",
            name = "StorageType",
            target_id = prelude.String.id,
        }),
        CACertificateIdentifier = schema.new({
            id = id.from(_N, "PendingModifiedValues", "CACertificateIdentifier"),
            type = "string",
            name = "CACertificateIdentifier",
            target_id = prelude.String.id,
        }),
        DBSubnetGroupName = schema.new({
            id = id.from(_N, "PendingModifiedValues", "DBSubnetGroupName"),
            type = "string",
            name = "DBSubnetGroupName",
            target_id = prelude.String.id,
        }),
        PendingCloudwatchLogsExports = schema.new({
            id = id.from(_N, "PendingModifiedValues", "PendingCloudwatchLogsExports"),
            type = "structure",
            name = "PendingCloudwatchLogsExports",
            target_id = id.from(_N, "PendingCloudwatchLogsExports"),
            target = M.PendingCloudwatchLogsExports,
        }),
    },
})

M.DBInstanceStatusInfo = schema.new({
    id = id.from(_N, "DBInstanceStatusInfo"),
    type = "structure",
    members = {
        StatusType = schema.new({
            id = id.from(_N, "DBInstanceStatusInfo", "StatusType"),
            type = "string",
            name = "StatusType",
            target_id = prelude.String.id,
        }),
        Normal = schema.new({
            id = id.from(_N, "DBInstanceStatusInfo", "Normal"),
            type = "boolean",
            name = "Normal",
            target_id = prelude.Boolean.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DBInstanceStatusInfo", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "DBInstanceStatusInfo", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DBInstance = schema.new({
    id = id.from(_N, "DBInstance"),
    type = "structure",
    members = {
        DBInstanceIdentifier = schema.new({
            id = id.from(_N, "DBInstance", "DBInstanceIdentifier"),
            type = "string",
            name = "DBInstanceIdentifier",
            target_id = prelude.String.id,
        }),
        DBInstanceClass = schema.new({
            id = id.from(_N, "DBInstance", "DBInstanceClass"),
            type = "string",
            name = "DBInstanceClass",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "DBInstance", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        DBInstanceStatus = schema.new({
            id = id.from(_N, "DBInstance", "DBInstanceStatus"),
            type = "string",
            name = "DBInstanceStatus",
            target_id = prelude.String.id,
        }),
        Endpoint = schema.new({
            id = id.from(_N, "DBInstance", "Endpoint"),
            type = "structure",
            name = "Endpoint",
            target_id = id.from(_N, "Endpoint"),
            target = M.Endpoint,
        }),
        InstanceCreateTime = schema.new({
            id = id.from(_N, "DBInstance", "InstanceCreateTime"),
            type = "timestamp",
            name = "InstanceCreateTime",
            target_id = prelude.Timestamp.id,
        }),
        PreferredBackupWindow = schema.new({
            id = id.from(_N, "DBInstance", "PreferredBackupWindow"),
            type = "string",
            name = "PreferredBackupWindow",
            target_id = prelude.String.id,
        }),
        BackupRetentionPeriod = schema.new({
            id = id.from(_N, "DBInstance", "BackupRetentionPeriod"),
            type = "integer",
            name = "BackupRetentionPeriod",
            target_id = prelude.Integer.id,
        }),
        VpcSecurityGroups = schema.new({
            id = id.from(_N, "DBInstance", "VpcSecurityGroups"),
            type = "list",
            name = "VpcSecurityGroups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.VpcSecurityGroupMembership, traits = { [traits.XML_NAME] = { name = "VpcSecurityGroupMembership" } } }),
        }),
        AvailabilityZone = schema.new({
            id = id.from(_N, "DBInstance", "AvailabilityZone"),
            type = "string",
            name = "AvailabilityZone",
            target_id = prelude.String.id,
        }),
        DBSubnetGroup = schema.new({
            id = id.from(_N, "DBInstance", "DBSubnetGroup"),
            type = "structure",
            name = "DBSubnetGroup",
            target_id = id.from(_N, "DBSubnetGroup"),
            target = M.DBSubnetGroup,
        }),
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "DBInstance", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        PendingModifiedValues = schema.new({
            id = id.from(_N, "DBInstance", "PendingModifiedValues"),
            type = "structure",
            name = "PendingModifiedValues",
            target_id = id.from(_N, "PendingModifiedValues"),
            target = M.PendingModifiedValues,
        }),
        LatestRestorableTime = schema.new({
            id = id.from(_N, "DBInstance", "LatestRestorableTime"),
            type = "timestamp",
            name = "LatestRestorableTime",
            target_id = prelude.Timestamp.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "DBInstance", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "DBInstance", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
        }),
        PubliclyAccessible = schema.new({
            id = id.from(_N, "DBInstance", "PubliclyAccessible"),
            type = "boolean",
            name = "PubliclyAccessible",
            target_id = prelude.Boolean.id,
        }),
        StatusInfos = schema.new({
            id = id.from(_N, "DBInstance", "StatusInfos"),
            type = "list",
            name = "StatusInfos",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DBInstanceStatusInfo, traits = { [traits.XML_NAME] = { name = "DBInstanceStatusInfo" } } }),
        }),
        DBClusterIdentifier = schema.new({
            id = id.from(_N, "DBInstance", "DBClusterIdentifier"),
            type = "string",
            name = "DBClusterIdentifier",
            target_id = prelude.String.id,
        }),
        StorageEncrypted = schema.new({
            id = id.from(_N, "DBInstance", "StorageEncrypted"),
            type = "boolean",
            name = "StorageEncrypted",
            target_id = prelude.Boolean.id,
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "DBInstance", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        DbiResourceId = schema.new({
            id = id.from(_N, "DBInstance", "DbiResourceId"),
            type = "string",
            name = "DbiResourceId",
            target_id = prelude.String.id,
        }),
        CACertificateIdentifier = schema.new({
            id = id.from(_N, "DBInstance", "CACertificateIdentifier"),
            type = "string",
            name = "CACertificateIdentifier",
            target_id = prelude.String.id,
        }),
        CopyTagsToSnapshot = schema.new({
            id = id.from(_N, "DBInstance", "CopyTagsToSnapshot"),
            type = "boolean",
            name = "CopyTagsToSnapshot",
            target_id = prelude.Boolean.id,
        }),
        PromotionTier = schema.new({
            id = id.from(_N, "DBInstance", "PromotionTier"),
            type = "integer",
            name = "PromotionTier",
            target_id = prelude.Integer.id,
        }),
        DBInstanceArn = schema.new({
            id = id.from(_N, "DBInstance", "DBInstanceArn"),
            type = "string",
            name = "DBInstanceArn",
            target_id = prelude.String.id,
        }),
        EnabledCloudwatchLogsExports = schema.new({
            id = id.from(_N, "DBInstance", "EnabledCloudwatchLogsExports"),
            type = "list",
            name = "EnabledCloudwatchLogsExports",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CertificateDetails = schema.new({
            id = id.from(_N, "DBInstance", "CertificateDetails"),
            type = "structure",
            name = "CertificateDetails",
            target_id = id.from(_N, "CertificateDetails"),
            target = M.CertificateDetails,
        }),
        PerformanceInsightsEnabled = schema.new({
            id = id.from(_N, "DBInstance", "PerformanceInsightsEnabled"),
            type = "boolean",
            name = "PerformanceInsightsEnabled",
            target_id = prelude.Boolean.id,
        }),
        PerformanceInsightsKMSKeyId = schema.new({
            id = id.from(_N, "DBInstance", "PerformanceInsightsKMSKeyId"),
            type = "string",
            name = "PerformanceInsightsKMSKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDBInstanceOutput = schema.new({
    id = id.from(_N, "CreateDBInstanceResult"),
    type = "structure",
    members = {
        DBInstance = schema.new({
            id = id.from(_N, "CreateDBInstanceOutput", "DBInstance"),
            type = "structure",
            name = "DBInstance",
            target_id = id.from(_N, "DBInstance"),
            target = M.DBInstance,
        }),
    },
})

M.DBInstanceAlreadyExistsFault = schema.new({
    id = id.from(_N, "DBInstanceAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBInstanceAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DBSecurityGroupNotFoundFault = schema.new({
    id = id.from(_N, "DBSecurityGroupNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBSecurityGroupNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InstanceQuotaExceededFault = schema.new({
    id = id.from(_N, "InstanceQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InstanceQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InsufficientDBInstanceCapacityFault = schema.new({
    id = id.from(_N, "InsufficientDBInstanceCapacityFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InsufficientDBInstanceCapacityFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.StorageTypeNotSupportedFault = schema.new({
    id = id.from(_N, "StorageTypeNotSupportedFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "StorageTypeNotSupportedFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDBSubnetGroupInput = schema.new({
    id = id.from(_N, "CreateDBSubnetGroupMessage"),
    type = "structure",
    members = {
        DBSubnetGroupName = schema.new({
            id = id.from(_N, "CreateDBSubnetGroupInput", "DBSubnetGroupName"),
            type = "string",
            name = "DBSubnetGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DBSubnetGroupDescription = schema.new({
            id = id.from(_N, "CreateDBSubnetGroupInput", "DBSubnetGroupDescription"),
            type = "string",
            name = "DBSubnetGroupDescription",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "CreateDBSubnetGroupInput", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SubnetIdentifier" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDBSubnetGroupInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.CreateDBSubnetGroupOutput = schema.new({
    id = id.from(_N, "CreateDBSubnetGroupResult"),
    type = "structure",
    members = {
        DBSubnetGroup = schema.new({
            id = id.from(_N, "CreateDBSubnetGroupOutput", "DBSubnetGroup"),
            type = "structure",
            name = "DBSubnetGroup",
            target_id = id.from(_N, "DBSubnetGroup"),
            target = M.DBSubnetGroup,
        }),
    },
})

M.DBSubnetGroupAlreadyExistsFault = schema.new({
    id = id.from(_N, "DBSubnetGroupAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBSubnetGroupAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DBSubnetGroupQuotaExceededFault = schema.new({
    id = id.from(_N, "DBSubnetGroupQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBSubnetGroupQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DBSubnetQuotaExceededFault = schema.new({
    id = id.from(_N, "DBSubnetQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBSubnetQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateEventSubscriptionInput = schema.new({
    id = id.from(_N, "CreateEventSubscriptionMessage"),
    type = "structure",
    members = {
        SubscriptionName = schema.new({
            id = id.from(_N, "CreateEventSubscriptionInput", "SubscriptionName"),
            type = "string",
            name = "SubscriptionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnsTopicArn = schema.new({
            id = id.from(_N, "CreateEventSubscriptionInput", "SnsTopicArn"),
            type = "string",
            name = "SnsTopicArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceType = schema.new({
            id = id.from(_N, "CreateEventSubscriptionInput", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
        EventCategories = schema.new({
            id = id.from(_N, "CreateEventSubscriptionInput", "EventCategories"),
            type = "list",
            name = "EventCategories",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "EventCategory" } } }),
        }),
        SourceIds = schema.new({
            id = id.from(_N, "CreateEventSubscriptionInput", "SourceIds"),
            type = "list",
            name = "SourceIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SourceId" } } }),
        }),
        Enabled = schema.new({
            id = id.from(_N, "CreateEventSubscriptionInput", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateEventSubscriptionInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.CreateEventSubscriptionOutput = schema.new({
    id = id.from(_N, "CreateEventSubscriptionResult"),
    type = "structure",
    members = {
        EventSubscription = schema.new({
            id = id.from(_N, "CreateEventSubscriptionOutput", "EventSubscription"),
            type = "structure",
            name = "EventSubscription",
            target_id = id.from(_N, "EventSubscription"),
            target = M.EventSubscription,
        }),
    },
})

M.EventSubscriptionQuotaExceededFault = schema.new({
    id = id.from(_N, "EventSubscriptionQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "EventSubscriptionQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SNSInvalidTopicFault = schema.new({
    id = id.from(_N, "SNSInvalidTopicFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SNSInvalidTopicFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SNSNoAuthorizationFault = schema.new({
    id = id.from(_N, "SNSNoAuthorizationFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SNSNoAuthorizationFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SNSTopicArnNotFoundFault = schema.new({
    id = id.from(_N, "SNSTopicArnNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SNSTopicArnNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SubscriptionAlreadyExistFault = schema.new({
    id = id.from(_N, "SubscriptionAlreadyExistFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SubscriptionAlreadyExistFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.SubscriptionCategoryNotFoundFault = schema.new({
    id = id.from(_N, "SubscriptionCategoryNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SubscriptionCategoryNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateGlobalClusterInput = schema.new({
    id = id.from(_N, "CreateGlobalClusterMessage"),
    type = "structure",
    members = {
        GlobalClusterIdentifier = schema.new({
            id = id.from(_N, "CreateGlobalClusterInput", "GlobalClusterIdentifier"),
            type = "string",
            name = "GlobalClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceDBClusterIdentifier = schema.new({
            id = id.from(_N, "CreateGlobalClusterInput", "SourceDBClusterIdentifier"),
            type = "string",
            name = "SourceDBClusterIdentifier",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "CreateGlobalClusterInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "CreateGlobalClusterInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        DeletionProtection = schema.new({
            id = id.from(_N, "CreateGlobalClusterInput", "DeletionProtection"),
            type = "boolean",
            name = "DeletionProtection",
            target_id = prelude.Boolean.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "CreateGlobalClusterInput", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        StorageEncrypted = schema.new({
            id = id.from(_N, "CreateGlobalClusterInput", "StorageEncrypted"),
            type = "boolean",
            name = "StorageEncrypted",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.FailoverState = schema.new({
    id = id.from(_N, "FailoverState"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "FailoverState", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        FromDbClusterArn = schema.new({
            id = id.from(_N, "FailoverState", "FromDbClusterArn"),
            type = "string",
            name = "FromDbClusterArn",
            target_id = prelude.String.id,
        }),
        ToDbClusterArn = schema.new({
            id = id.from(_N, "FailoverState", "ToDbClusterArn"),
            type = "string",
            name = "ToDbClusterArn",
            target_id = prelude.String.id,
        }),
        IsDataLossAllowed = schema.new({
            id = id.from(_N, "FailoverState", "IsDataLossAllowed"),
            type = "boolean",
            name = "IsDataLossAllowed",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.GlobalClusterMember = schema.new({
    id = id.from(_N, "GlobalClusterMember"),
    type = "structure",
    members = {
        DBClusterArn = schema.new({
            id = id.from(_N, "GlobalClusterMember", "DBClusterArn"),
            type = "string",
            name = "DBClusterArn",
            target_id = prelude.String.id,
        }),
        Readers = schema.new({
            id = id.from(_N, "GlobalClusterMember", "Readers"),
            type = "list",
            name = "Readers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        IsWriter = schema.new({
            id = id.from(_N, "GlobalClusterMember", "IsWriter"),
            type = "boolean",
            name = "IsWriter",
            target_id = prelude.Boolean.id,
        }),
        SynchronizationStatus = schema.new({
            id = id.from(_N, "GlobalClusterMember", "SynchronizationStatus"),
            type = "string",
            name = "SynchronizationStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GlobalCluster = schema.new({
    id = id.from(_N, "GlobalCluster"),
    type = "structure",
    members = {
        GlobalClusterIdentifier = schema.new({
            id = id.from(_N, "GlobalCluster", "GlobalClusterIdentifier"),
            type = "string",
            name = "GlobalClusterIdentifier",
            target_id = prelude.String.id,
        }),
        GlobalClusterResourceId = schema.new({
            id = id.from(_N, "GlobalCluster", "GlobalClusterResourceId"),
            type = "string",
            name = "GlobalClusterResourceId",
            target_id = prelude.String.id,
        }),
        GlobalClusterArn = schema.new({
            id = id.from(_N, "GlobalCluster", "GlobalClusterArn"),
            type = "string",
            name = "GlobalClusterArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GlobalCluster", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Engine = schema.new({
            id = id.from(_N, "GlobalCluster", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "GlobalCluster", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        DatabaseName = schema.new({
            id = id.from(_N, "GlobalCluster", "DatabaseName"),
            type = "string",
            name = "DatabaseName",
            target_id = prelude.String.id,
        }),
        StorageEncrypted = schema.new({
            id = id.from(_N, "GlobalCluster", "StorageEncrypted"),
            type = "boolean",
            name = "StorageEncrypted",
            target_id = prelude.Boolean.id,
        }),
        DeletionProtection = schema.new({
            id = id.from(_N, "GlobalCluster", "DeletionProtection"),
            type = "boolean",
            name = "DeletionProtection",
            target_id = prelude.Boolean.id,
        }),
        GlobalClusterMembers = schema.new({
            id = id.from(_N, "GlobalCluster", "GlobalClusterMembers"),
            type = "list",
            name = "GlobalClusterMembers",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.GlobalClusterMember, traits = { [traits.XML_NAME] = { name = "GlobalClusterMember" } } }),
        }),
        FailoverState = schema.new({
            id = id.from(_N, "GlobalCluster", "FailoverState"),
            type = "structure",
            name = "FailoverState",
            target_id = id.from(_N, "FailoverState"),
            target = M.FailoverState,
        }),
        TagList = schema.new({
            id = id.from(_N, "GlobalCluster", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.CreateGlobalClusterOutput = schema.new({
    id = id.from(_N, "CreateGlobalClusterResult"),
    type = "structure",
    members = {
        GlobalCluster = schema.new({
            id = id.from(_N, "CreateGlobalClusterOutput", "GlobalCluster"),
            type = "structure",
            name = "GlobalCluster",
            target_id = id.from(_N, "GlobalCluster"),
            target = M.GlobalCluster,
        }),
    },
})

M.GlobalClusterAlreadyExistsFault = schema.new({
    id = id.from(_N, "GlobalClusterAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "GlobalClusterAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GlobalClusterQuotaExceededFault = schema.new({
    id = id.from(_N, "GlobalClusterQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "GlobalClusterQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteDBClusterInput = schema.new({
    id = id.from(_N, "DeleteDBClusterMessage"),
    type = "structure",
    members = {
        DBClusterIdentifier = schema.new({
            id = id.from(_N, "DeleteDBClusterInput", "DBClusterIdentifier"),
            type = "string",
            name = "DBClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SkipFinalSnapshot = schema.new({
            id = id.from(_N, "DeleteDBClusterInput", "SkipFinalSnapshot"),
            type = "boolean",
            name = "SkipFinalSnapshot",
            target_id = prelude.Boolean.id,
        }),
        FinalDBSnapshotIdentifier = schema.new({
            id = id.from(_N, "DeleteDBClusterInput", "FinalDBSnapshotIdentifier"),
            type = "string",
            name = "FinalDBSnapshotIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteDBClusterOutput = schema.new({
    id = id.from(_N, "DeleteDBClusterResult"),
    type = "structure",
    members = {
        DBCluster = schema.new({
            id = id.from(_N, "DeleteDBClusterOutput", "DBCluster"),
            type = "structure",
            name = "DBCluster",
            target_id = id.from(_N, "DBCluster"),
            target = M.DBCluster,
        }),
    },
})

M.DeleteDBClusterParameterGroupInput = schema.new({
    id = id.from(_N, "DeleteDBClusterParameterGroupMessage"),
    type = "structure",
    members = {
        DBClusterParameterGroupName = schema.new({
            id = id.from(_N, "DeleteDBClusterParameterGroupInput", "DBClusterParameterGroupName"),
            type = "string",
            name = "DBClusterParameterGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDBClusterParameterGroupOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.InvalidDBParameterGroupStateFault = schema.new({
    id = id.from(_N, "InvalidDBParameterGroupStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidDBParameterGroupStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteDBClusterSnapshotInput = schema.new({
    id = id.from(_N, "DeleteDBClusterSnapshotMessage"),
    type = "structure",
    members = {
        DBClusterSnapshotIdentifier = schema.new({
            id = id.from(_N, "DeleteDBClusterSnapshotInput", "DBClusterSnapshotIdentifier"),
            type = "string",
            name = "DBClusterSnapshotIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDBClusterSnapshotOutput = schema.new({
    id = id.from(_N, "DeleteDBClusterSnapshotResult"),
    type = "structure",
    members = {
        DBClusterSnapshot = schema.new({
            id = id.from(_N, "DeleteDBClusterSnapshotOutput", "DBClusterSnapshot"),
            type = "structure",
            name = "DBClusterSnapshot",
            target_id = id.from(_N, "DBClusterSnapshot"),
            target = M.DBClusterSnapshot,
        }),
    },
})

M.DBSnapshotAlreadyExistsFault = schema.new({
    id = id.from(_N, "DBSnapshotAlreadyExistsFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBSnapshotAlreadyExistsFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteDBInstanceInput = schema.new({
    id = id.from(_N, "DeleteDBInstanceMessage"),
    type = "structure",
    members = {
        DBInstanceIdentifier = schema.new({
            id = id.from(_N, "DeleteDBInstanceInput", "DBInstanceIdentifier"),
            type = "string",
            name = "DBInstanceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDBInstanceOutput = schema.new({
    id = id.from(_N, "DeleteDBInstanceResult"),
    type = "structure",
    members = {
        DBInstance = schema.new({
            id = id.from(_N, "DeleteDBInstanceOutput", "DBInstance"),
            type = "structure",
            name = "DBInstance",
            target_id = id.from(_N, "DBInstance"),
            target = M.DBInstance,
        }),
    },
})

M.DeleteDBSubnetGroupInput = schema.new({
    id = id.from(_N, "DeleteDBSubnetGroupMessage"),
    type = "structure",
    members = {
        DBSubnetGroupName = schema.new({
            id = id.from(_N, "DeleteDBSubnetGroupInput", "DBSubnetGroupName"),
            type = "string",
            name = "DBSubnetGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteDBSubnetGroupOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.InvalidDBSubnetStateFault = schema.new({
    id = id.from(_N, "InvalidDBSubnetStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidDBSubnetStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteEventSubscriptionInput = schema.new({
    id = id.from(_N, "DeleteEventSubscriptionMessage"),
    type = "structure",
    members = {
        SubscriptionName = schema.new({
            id = id.from(_N, "DeleteEventSubscriptionInput", "SubscriptionName"),
            type = "string",
            name = "SubscriptionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteEventSubscriptionOutput = schema.new({
    id = id.from(_N, "DeleteEventSubscriptionResult"),
    type = "structure",
    members = {
        EventSubscription = schema.new({
            id = id.from(_N, "DeleteEventSubscriptionOutput", "EventSubscription"),
            type = "structure",
            name = "EventSubscription",
            target_id = id.from(_N, "EventSubscription"),
            target = M.EventSubscription,
        }),
    },
})

M.InvalidEventSubscriptionStateFault = schema.new({
    id = id.from(_N, "InvalidEventSubscriptionStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidEventSubscriptionStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteGlobalClusterInput = schema.new({
    id = id.from(_N, "DeleteGlobalClusterMessage"),
    type = "structure",
    members = {
        GlobalClusterIdentifier = schema.new({
            id = id.from(_N, "DeleteGlobalClusterInput", "GlobalClusterIdentifier"),
            type = "string",
            name = "GlobalClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteGlobalClusterOutput = schema.new({
    id = id.from(_N, "DeleteGlobalClusterResult"),
    type = "structure",
    members = {
        GlobalCluster = schema.new({
            id = id.from(_N, "DeleteGlobalClusterOutput", "GlobalCluster"),
            type = "structure",
            name = "GlobalCluster",
            target_id = id.from(_N, "GlobalCluster"),
            target = M.GlobalCluster,
        }),
    },
})

M.CertificateNotFoundFault = schema.new({
    id = id.from(_N, "CertificateNotFoundFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "CertificateNotFoundFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.Filter = schema.new({
    id = id.from(_N, "Filter"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Filter", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "Filter", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Value" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeCertificatesInput = schema.new({
    id = id.from(_N, "DescribeCertificatesMessage"),
    type = "structure",
    members = {
        CertificateIdentifier = schema.new({
            id = id.from(_N, "DescribeCertificatesInput", "CertificateIdentifier"),
            type = "string",
            name = "CertificateIdentifier",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeCertificatesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeCertificatesInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeCertificatesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.Certificate = schema.new({
    id = id.from(_N, "Certificate"),
    type = "structure",
    members = {
        CertificateIdentifier = schema.new({
            id = id.from(_N, "Certificate", "CertificateIdentifier"),
            type = "string",
            name = "CertificateIdentifier",
            target_id = prelude.String.id,
        }),
        CertificateType = schema.new({
            id = id.from(_N, "Certificate", "CertificateType"),
            type = "string",
            name = "CertificateType",
            target_id = prelude.String.id,
        }),
        Thumbprint = schema.new({
            id = id.from(_N, "Certificate", "Thumbprint"),
            type = "string",
            name = "Thumbprint",
            target_id = prelude.String.id,
        }),
        ValidFrom = schema.new({
            id = id.from(_N, "Certificate", "ValidFrom"),
            type = "timestamp",
            name = "ValidFrom",
            target_id = prelude.Timestamp.id,
        }),
        ValidTill = schema.new({
            id = id.from(_N, "Certificate", "ValidTill"),
            type = "timestamp",
            name = "ValidTill",
            target_id = prelude.Timestamp.id,
        }),
        CertificateArn = schema.new({
            id = id.from(_N, "Certificate", "CertificateArn"),
            type = "string",
            name = "CertificateArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeCertificatesOutput = schema.new({
    id = id.from(_N, "CertificateMessage"),
    type = "structure",
    members = {
        Certificates = schema.new({
            id = id.from(_N, "DescribeCertificatesOutput", "Certificates"),
            type = "list",
            name = "Certificates",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Certificate, traits = { [traits.XML_NAME] = { name = "Certificate" } } }),
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeCertificatesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDBClusterParameterGroupsInput = schema.new({
    id = id.from(_N, "DescribeDBClusterParameterGroupsMessage"),
    type = "structure",
    members = {
        DBClusterParameterGroupName = schema.new({
            id = id.from(_N, "DescribeDBClusterParameterGroupsInput", "DBClusterParameterGroupName"),
            type = "string",
            name = "DBClusterParameterGroupName",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeDBClusterParameterGroupsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeDBClusterParameterGroupsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeDBClusterParameterGroupsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDBClusterParameterGroupsOutput = schema.new({
    id = id.from(_N, "DBClusterParameterGroupsMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeDBClusterParameterGroupsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        DBClusterParameterGroups = schema.new({
            id = id.from(_N, "DescribeDBClusterParameterGroupsOutput", "DBClusterParameterGroups"),
            type = "list",
            name = "DBClusterParameterGroups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DBClusterParameterGroup, traits = { [traits.XML_NAME] = { name = "DBClusterParameterGroup" } } }),
        }),
    },
})

M.DescribeDBClusterParametersInput = schema.new({
    id = id.from(_N, "DescribeDBClusterParametersMessage"),
    type = "structure",
    members = {
        DBClusterParameterGroupName = schema.new({
            id = id.from(_N, "DescribeDBClusterParametersInput", "DBClusterParameterGroupName"),
            type = "string",
            name = "DBClusterParameterGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Source = schema.new({
            id = id.from(_N, "DescribeDBClusterParametersInput", "Source"),
            type = "string",
            name = "Source",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeDBClusterParametersInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeDBClusterParametersInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeDBClusterParametersInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.Parameter = schema.new({
    id = id.from(_N, "Parameter"),
    type = "structure",
    members = {
        ParameterName = schema.new({
            id = id.from(_N, "Parameter", "ParameterName"),
            type = "string",
            name = "ParameterName",
            target_id = prelude.String.id,
        }),
        ParameterValue = schema.new({
            id = id.from(_N, "Parameter", "ParameterValue"),
            type = "string",
            name = "ParameterValue",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "Parameter", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Source = schema.new({
            id = id.from(_N, "Parameter", "Source"),
            type = "string",
            name = "Source",
            target_id = prelude.String.id,
        }),
        ApplyType = schema.new({
            id = id.from(_N, "Parameter", "ApplyType"),
            type = "string",
            name = "ApplyType",
            target_id = prelude.String.id,
        }),
        DataType = schema.new({
            id = id.from(_N, "Parameter", "DataType"),
            type = "string",
            name = "DataType",
            target_id = prelude.String.id,
        }),
        AllowedValues = schema.new({
            id = id.from(_N, "Parameter", "AllowedValues"),
            type = "string",
            name = "AllowedValues",
            target_id = prelude.String.id,
        }),
        IsModifiable = schema.new({
            id = id.from(_N, "Parameter", "IsModifiable"),
            type = "boolean",
            name = "IsModifiable",
            target_id = prelude.Boolean.id,
        }),
        MinimumEngineVersion = schema.new({
            id = id.from(_N, "Parameter", "MinimumEngineVersion"),
            type = "string",
            name = "MinimumEngineVersion",
            target_id = prelude.String.id,
        }),
        ApplyMethod = schema.new({
            id = id.from(_N, "Parameter", "ApplyMethod"),
            type = "string",
            name = "ApplyMethod",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDBClusterParametersOutput = schema.new({
    id = id.from(_N, "DBClusterParameterGroupDetails"),
    type = "structure",
    members = {
        Parameters = schema.new({
            id = id.from(_N, "DescribeDBClusterParametersOutput", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Parameter, traits = { [traits.XML_NAME] = { name = "Parameter" } } }),
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeDBClusterParametersOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDBClustersInput = schema.new({
    id = id.from(_N, "DescribeDBClustersMessage"),
    type = "structure",
    members = {
        DBClusterIdentifier = schema.new({
            id = id.from(_N, "DescribeDBClustersInput", "DBClusterIdentifier"),
            type = "string",
            name = "DBClusterIdentifier",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeDBClustersInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeDBClustersInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeDBClustersInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDBClustersOutput = schema.new({
    id = id.from(_N, "DBClusterMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeDBClustersOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        DBClusters = schema.new({
            id = id.from(_N, "DescribeDBClustersOutput", "DBClusters"),
            type = "list",
            name = "DBClusters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DBCluster, traits = { [traits.XML_NAME] = { name = "DBCluster" } } }),
        }),
    },
})

M.DescribeDBClusterSnapshotAttributesInput = schema.new({
    id = id.from(_N, "DescribeDBClusterSnapshotAttributesMessage"),
    type = "structure",
    members = {
        DBClusterSnapshotIdentifier = schema.new({
            id = id.from(_N, "DescribeDBClusterSnapshotAttributesInput", "DBClusterSnapshotIdentifier"),
            type = "string",
            name = "DBClusterSnapshotIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DBClusterSnapshotAttribute = schema.new({
    id = id.from(_N, "DBClusterSnapshotAttribute"),
    type = "structure",
    members = {
        AttributeName = schema.new({
            id = id.from(_N, "DBClusterSnapshotAttribute", "AttributeName"),
            type = "string",
            name = "AttributeName",
            target_id = prelude.String.id,
        }),
        AttributeValues = schema.new({
            id = id.from(_N, "DBClusterSnapshotAttribute", "AttributeValues"),
            type = "list",
            name = "AttributeValues",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "AttributeValue" } } }),
        }),
    },
})

M.DBClusterSnapshotAttributesResult = schema.new({
    id = id.from(_N, "DBClusterSnapshotAttributesResult"),
    type = "structure",
    members = {
        DBClusterSnapshotIdentifier = schema.new({
            id = id.from(_N, "DBClusterSnapshotAttributesResult", "DBClusterSnapshotIdentifier"),
            type = "string",
            name = "DBClusterSnapshotIdentifier",
            target_id = prelude.String.id,
        }),
        DBClusterSnapshotAttributes = schema.new({
            id = id.from(_N, "DBClusterSnapshotAttributesResult", "DBClusterSnapshotAttributes"),
            type = "list",
            name = "DBClusterSnapshotAttributes",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DBClusterSnapshotAttribute, traits = { [traits.XML_NAME] = { name = "DBClusterSnapshotAttribute" } } }),
        }),
    },
})

M.DescribeDBClusterSnapshotAttributesOutput = schema.new({
    id = id.from(_N, "DescribeDBClusterSnapshotAttributesResult"),
    type = "structure",
    members = {
        DBClusterSnapshotAttributesResult = schema.new({
            id = id.from(_N, "DescribeDBClusterSnapshotAttributesOutput", "DBClusterSnapshotAttributesResult"),
            type = "structure",
            name = "DBClusterSnapshotAttributesResult",
            target_id = id.from(_N, "DBClusterSnapshotAttributesResult"),
            target = M.DBClusterSnapshotAttributesResult,
        }),
    },
})

M.DescribeDBClusterSnapshotsInput = schema.new({
    id = id.from(_N, "DescribeDBClusterSnapshotsMessage"),
    type = "structure",
    members = {
        DBClusterIdentifier = schema.new({
            id = id.from(_N, "DescribeDBClusterSnapshotsInput", "DBClusterIdentifier"),
            type = "string",
            name = "DBClusterIdentifier",
            target_id = prelude.String.id,
        }),
        DBClusterSnapshotIdentifier = schema.new({
            id = id.from(_N, "DescribeDBClusterSnapshotsInput", "DBClusterSnapshotIdentifier"),
            type = "string",
            name = "DBClusterSnapshotIdentifier",
            target_id = prelude.String.id,
        }),
        SnapshotType = schema.new({
            id = id.from(_N, "DescribeDBClusterSnapshotsInput", "SnapshotType"),
            type = "string",
            name = "SnapshotType",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeDBClusterSnapshotsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeDBClusterSnapshotsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeDBClusterSnapshotsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        IncludeShared = schema.new({
            id = id.from(_N, "DescribeDBClusterSnapshotsInput", "IncludeShared"),
            type = "boolean",
            name = "IncludeShared",
            target_id = prelude.Boolean.id,
        }),
        IncludePublic = schema.new({
            id = id.from(_N, "DescribeDBClusterSnapshotsInput", "IncludePublic"),
            type = "boolean",
            name = "IncludePublic",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeDBClusterSnapshotsOutput = schema.new({
    id = id.from(_N, "DBClusterSnapshotMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeDBClusterSnapshotsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        DBClusterSnapshots = schema.new({
            id = id.from(_N, "DescribeDBClusterSnapshotsOutput", "DBClusterSnapshots"),
            type = "list",
            name = "DBClusterSnapshots",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DBClusterSnapshot, traits = { [traits.XML_NAME] = { name = "DBClusterSnapshot" } } }),
        }),
    },
})

M.DescribeDBEngineVersionsInput = schema.new({
    id = id.from(_N, "DescribeDBEngineVersionsMessage"),
    type = "structure",
    members = {
        Engine = schema.new({
            id = id.from(_N, "DescribeDBEngineVersionsInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "DescribeDBEngineVersionsInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        DBParameterGroupFamily = schema.new({
            id = id.from(_N, "DescribeDBEngineVersionsInput", "DBParameterGroupFamily"),
            type = "string",
            name = "DBParameterGroupFamily",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeDBEngineVersionsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeDBEngineVersionsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeDBEngineVersionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        DefaultOnly = schema.new({
            id = id.from(_N, "DescribeDBEngineVersionsInput", "DefaultOnly"),
            type = "boolean",
            name = "DefaultOnly",
            target_id = prelude.Boolean.id,
        }),
        ListSupportedCharacterSets = schema.new({
            id = id.from(_N, "DescribeDBEngineVersionsInput", "ListSupportedCharacterSets"),
            type = "boolean",
            name = "ListSupportedCharacterSets",
            target_id = prelude.Boolean.id,
        }),
        ListSupportedTimezones = schema.new({
            id = id.from(_N, "DescribeDBEngineVersionsInput", "ListSupportedTimezones"),
            type = "boolean",
            name = "ListSupportedTimezones",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ServerlessV2FeaturesSupport = schema.new({
    id = id.from(_N, "ServerlessV2FeaturesSupport"),
    type = "structure",
    members = {
        MinCapacity = schema.new({
            id = id.from(_N, "ServerlessV2FeaturesSupport", "MinCapacity"),
            type = "double",
            name = "MinCapacity",
            target_id = prelude.Double.id,
        }),
        MaxCapacity = schema.new({
            id = id.from(_N, "ServerlessV2FeaturesSupport", "MaxCapacity"),
            type = "double",
            name = "MaxCapacity",
            target_id = prelude.Double.id,
        }),
    },
})

M.UpgradeTarget = schema.new({
    id = id.from(_N, "UpgradeTarget"),
    type = "structure",
    members = {
        Engine = schema.new({
            id = id.from(_N, "UpgradeTarget", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "UpgradeTarget", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpgradeTarget", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        AutoUpgrade = schema.new({
            id = id.from(_N, "UpgradeTarget", "AutoUpgrade"),
            type = "boolean",
            name = "AutoUpgrade",
            target_id = prelude.Boolean.id,
        }),
        IsMajorVersionUpgrade = schema.new({
            id = id.from(_N, "UpgradeTarget", "IsMajorVersionUpgrade"),
            type = "boolean",
            name = "IsMajorVersionUpgrade",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DBEngineVersion = schema.new({
    id = id.from(_N, "DBEngineVersion"),
    type = "structure",
    members = {
        Engine = schema.new({
            id = id.from(_N, "DBEngineVersion", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "DBEngineVersion", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        DBParameterGroupFamily = schema.new({
            id = id.from(_N, "DBEngineVersion", "DBParameterGroupFamily"),
            type = "string",
            name = "DBParameterGroupFamily",
            target_id = prelude.String.id,
        }),
        DBEngineDescription = schema.new({
            id = id.from(_N, "DBEngineVersion", "DBEngineDescription"),
            type = "string",
            name = "DBEngineDescription",
            target_id = prelude.String.id,
        }),
        DBEngineVersionDescription = schema.new({
            id = id.from(_N, "DBEngineVersion", "DBEngineVersionDescription"),
            type = "string",
            name = "DBEngineVersionDescription",
            target_id = prelude.String.id,
        }),
        ValidUpgradeTarget = schema.new({
            id = id.from(_N, "DBEngineVersion", "ValidUpgradeTarget"),
            type = "list",
            name = "ValidUpgradeTarget",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.UpgradeTarget, traits = { [traits.XML_NAME] = { name = "UpgradeTarget" } } }),
        }),
        ExportableLogTypes = schema.new({
            id = id.from(_N, "DBEngineVersion", "ExportableLogTypes"),
            type = "list",
            name = "ExportableLogTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SupportsLogExportsToCloudwatchLogs = schema.new({
            id = id.from(_N, "DBEngineVersion", "SupportsLogExportsToCloudwatchLogs"),
            type = "boolean",
            name = "SupportsLogExportsToCloudwatchLogs",
            target_id = prelude.Boolean.id,
        }),
        SupportedCACertificateIdentifiers = schema.new({
            id = id.from(_N, "DBEngineVersion", "SupportedCACertificateIdentifiers"),
            type = "list",
            name = "SupportedCACertificateIdentifiers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        SupportsCertificateRotationWithoutRestart = schema.new({
            id = id.from(_N, "DBEngineVersion", "SupportsCertificateRotationWithoutRestart"),
            type = "boolean",
            name = "SupportsCertificateRotationWithoutRestart",
            target_id = prelude.Boolean.id,
        }),
        ServerlessV2FeaturesSupport = schema.new({
            id = id.from(_N, "DBEngineVersion", "ServerlessV2FeaturesSupport"),
            type = "structure",
            name = "ServerlessV2FeaturesSupport",
            target_id = id.from(_N, "ServerlessV2FeaturesSupport"),
            target = M.ServerlessV2FeaturesSupport,
        }),
    },
})

M.DescribeDBEngineVersionsOutput = schema.new({
    id = id.from(_N, "DBEngineVersionMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeDBEngineVersionsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        DBEngineVersions = schema.new({
            id = id.from(_N, "DescribeDBEngineVersionsOutput", "DBEngineVersions"),
            type = "list",
            name = "DBEngineVersions",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DBEngineVersion, traits = { [traits.XML_NAME] = { name = "DBEngineVersion" } } }),
        }),
    },
})

M.DescribeDBInstancesInput = schema.new({
    id = id.from(_N, "DescribeDBInstancesMessage"),
    type = "structure",
    members = {
        DBInstanceIdentifier = schema.new({
            id = id.from(_N, "DescribeDBInstancesInput", "DBInstanceIdentifier"),
            type = "string",
            name = "DBInstanceIdentifier",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeDBInstancesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeDBInstancesInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeDBInstancesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDBInstancesOutput = schema.new({
    id = id.from(_N, "DBInstanceMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeDBInstancesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        DBInstances = schema.new({
            id = id.from(_N, "DescribeDBInstancesOutput", "DBInstances"),
            type = "list",
            name = "DBInstances",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DBInstance, traits = { [traits.XML_NAME] = { name = "DBInstance" } } }),
        }),
    },
})

M.DescribeDBSubnetGroupsInput = schema.new({
    id = id.from(_N, "DescribeDBSubnetGroupsMessage"),
    type = "structure",
    members = {
        DBSubnetGroupName = schema.new({
            id = id.from(_N, "DescribeDBSubnetGroupsInput", "DBSubnetGroupName"),
            type = "string",
            name = "DBSubnetGroupName",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeDBSubnetGroupsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeDBSubnetGroupsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeDBSubnetGroupsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeDBSubnetGroupsOutput = schema.new({
    id = id.from(_N, "DBSubnetGroupMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeDBSubnetGroupsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        DBSubnetGroups = schema.new({
            id = id.from(_N, "DescribeDBSubnetGroupsOutput", "DBSubnetGroups"),
            type = "list",
            name = "DBSubnetGroups",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DBSubnetGroup, traits = { [traits.XML_NAME] = { name = "DBSubnetGroup" } } }),
        }),
    },
})

M.DescribeEngineDefaultClusterParametersInput = schema.new({
    id = id.from(_N, "DescribeEngineDefaultClusterParametersMessage"),
    type = "structure",
    members = {
        DBParameterGroupFamily = schema.new({
            id = id.from(_N, "DescribeEngineDefaultClusterParametersInput", "DBParameterGroupFamily"),
            type = "string",
            name = "DBParameterGroupFamily",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeEngineDefaultClusterParametersInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeEngineDefaultClusterParametersInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeEngineDefaultClusterParametersInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.EngineDefaults = schema.new({
    id = id.from(_N, "EngineDefaults"),
    type = "structure",
    members = {
        DBParameterGroupFamily = schema.new({
            id = id.from(_N, "EngineDefaults", "DBParameterGroupFamily"),
            type = "string",
            name = "DBParameterGroupFamily",
            target_id = prelude.String.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "EngineDefaults", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "EngineDefaults", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Parameter, traits = { [traits.XML_NAME] = { name = "Parameter" } } }),
        }),
    },
})

M.DescribeEngineDefaultClusterParametersOutput = schema.new({
    id = id.from(_N, "DescribeEngineDefaultClusterParametersResult"),
    type = "structure",
    members = {
        EngineDefaults = schema.new({
            id = id.from(_N, "DescribeEngineDefaultClusterParametersOutput", "EngineDefaults"),
            type = "structure",
            name = "EngineDefaults",
            target_id = id.from(_N, "EngineDefaults"),
            target = M.EngineDefaults,
        }),
    },
})

M.DescribeEventCategoriesInput = schema.new({
    id = id.from(_N, "DescribeEventCategoriesMessage"),
    type = "structure",
    members = {
        SourceType = schema.new({
            id = id.from(_N, "DescribeEventCategoriesInput", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeEventCategoriesInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
    },
})

M.EventCategoriesMap = schema.new({
    id = id.from(_N, "EventCategoriesMap"),
    type = "structure",
    members = {
        SourceType = schema.new({
            id = id.from(_N, "EventCategoriesMap", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
        EventCategories = schema.new({
            id = id.from(_N, "EventCategoriesMap", "EventCategories"),
            type = "list",
            name = "EventCategories",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "EventCategory" } } }),
        }),
    },
})

M.DescribeEventCategoriesOutput = schema.new({
    id = id.from(_N, "EventCategoriesMessage"),
    type = "structure",
    members = {
        EventCategoriesMapList = schema.new({
            id = id.from(_N, "DescribeEventCategoriesOutput", "EventCategoriesMapList"),
            type = "list",
            name = "EventCategoriesMapList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.EventCategoriesMap, traits = { [traits.XML_NAME] = { name = "EventCategoriesMap" } } }),
        }),
    },
})

M.DescribeEventsInput = schema.new({
    id = id.from(_N, "DescribeEventsMessage"),
    type = "structure",
    members = {
        SourceIdentifier = schema.new({
            id = id.from(_N, "DescribeEventsInput", "SourceIdentifier"),
            type = "string",
            name = "SourceIdentifier",
            target_id = prelude.String.id,
        }),
        SourceType = schema.new({
            id = id.from(_N, "DescribeEventsInput", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "DescribeEventsInput", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "DescribeEventsInput", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        Duration = schema.new({
            id = id.from(_N, "DescribeEventsInput", "Duration"),
            type = "integer",
            name = "Duration",
            target_id = prelude.Integer.id,
        }),
        EventCategories = schema.new({
            id = id.from(_N, "DescribeEventsInput", "EventCategories"),
            type = "list",
            name = "EventCategories",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "EventCategory" } } }),
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeEventsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeEventsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeEventsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.Event = schema.new({
    id = id.from(_N, "Event"),
    type = "structure",
    members = {
        SourceIdentifier = schema.new({
            id = id.from(_N, "Event", "SourceIdentifier"),
            type = "string",
            name = "SourceIdentifier",
            target_id = prelude.String.id,
        }),
        SourceType = schema.new({
            id = id.from(_N, "Event", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "Event", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        EventCategories = schema.new({
            id = id.from(_N, "Event", "EventCategories"),
            type = "list",
            name = "EventCategories",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "EventCategory" } } }),
        }),
        Date = schema.new({
            id = id.from(_N, "Event", "Date"),
            type = "timestamp",
            name = "Date",
            target_id = prelude.Timestamp.id,
        }),
        SourceArn = schema.new({
            id = id.from(_N, "Event", "SourceArn"),
            type = "string",
            name = "SourceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeEventsOutput = schema.new({
    id = id.from(_N, "EventsMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeEventsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        Events = schema.new({
            id = id.from(_N, "DescribeEventsOutput", "Events"),
            type = "list",
            name = "Events",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Event, traits = { [traits.XML_NAME] = { name = "Event" } } }),
        }),
    },
})

M.DescribeEventSubscriptionsInput = schema.new({
    id = id.from(_N, "DescribeEventSubscriptionsMessage"),
    type = "structure",
    members = {
        SubscriptionName = schema.new({
            id = id.from(_N, "DescribeEventSubscriptionsInput", "SubscriptionName"),
            type = "string",
            name = "SubscriptionName",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeEventSubscriptionsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeEventSubscriptionsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeEventSubscriptionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeEventSubscriptionsOutput = schema.new({
    id = id.from(_N, "EventSubscriptionsMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeEventSubscriptionsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        EventSubscriptionsList = schema.new({
            id = id.from(_N, "DescribeEventSubscriptionsOutput", "EventSubscriptionsList"),
            type = "list",
            name = "EventSubscriptionsList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.EventSubscription, traits = { [traits.XML_NAME] = { name = "EventSubscription" } } }),
        }),
    },
})

M.DescribeGlobalClustersInput = schema.new({
    id = id.from(_N, "DescribeGlobalClustersMessage"),
    type = "structure",
    members = {
        GlobalClusterIdentifier = schema.new({
            id = id.from(_N, "DescribeGlobalClustersInput", "GlobalClusterIdentifier"),
            type = "string",
            name = "GlobalClusterIdentifier",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeGlobalClustersInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeGlobalClustersInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeGlobalClustersInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeGlobalClustersOutput = schema.new({
    id = id.from(_N, "GlobalClustersMessage"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "DescribeGlobalClustersOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        GlobalClusters = schema.new({
            id = id.from(_N, "DescribeGlobalClustersOutput", "GlobalClusters"),
            type = "list",
            name = "GlobalClusters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.GlobalCluster, traits = { [traits.XML_NAME] = { name = "GlobalClusterMember" } } }),
        }),
    },
})

M.DescribeOrderableDBInstanceOptionsInput = schema.new({
    id = id.from(_N, "DescribeOrderableDBInstanceOptionsMessage"),
    type = "structure",
    members = {
        Engine = schema.new({
            id = id.from(_N, "DescribeOrderableDBInstanceOptionsInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "DescribeOrderableDBInstanceOptionsInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        DBInstanceClass = schema.new({
            id = id.from(_N, "DescribeOrderableDBInstanceOptionsInput", "DBInstanceClass"),
            type = "string",
            name = "DBInstanceClass",
            target_id = prelude.String.id,
        }),
        LicenseModel = schema.new({
            id = id.from(_N, "DescribeOrderableDBInstanceOptionsInput", "LicenseModel"),
            type = "string",
            name = "LicenseModel",
            target_id = prelude.String.id,
        }),
        Vpc = schema.new({
            id = id.from(_N, "DescribeOrderableDBInstanceOptionsInput", "Vpc"),
            type = "boolean",
            name = "Vpc",
            target_id = prelude.Boolean.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribeOrderableDBInstanceOptionsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribeOrderableDBInstanceOptionsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeOrderableDBInstanceOptionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.OrderableDBInstanceOption = schema.new({
    id = id.from(_N, "OrderableDBInstanceOption"),
    type = "structure",
    members = {
        Engine = schema.new({
            id = id.from(_N, "OrderableDBInstanceOption", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "OrderableDBInstanceOption", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        DBInstanceClass = schema.new({
            id = id.from(_N, "OrderableDBInstanceOption", "DBInstanceClass"),
            type = "string",
            name = "DBInstanceClass",
            target_id = prelude.String.id,
        }),
        LicenseModel = schema.new({
            id = id.from(_N, "OrderableDBInstanceOption", "LicenseModel"),
            type = "string",
            name = "LicenseModel",
            target_id = prelude.String.id,
        }),
        AvailabilityZones = schema.new({
            id = id.from(_N, "OrderableDBInstanceOption", "AvailabilityZones"),
            type = "list",
            name = "AvailabilityZones",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.AvailabilityZone, traits = { [traits.XML_NAME] = { name = "AvailabilityZone" } } }),
        }),
        Vpc = schema.new({
            id = id.from(_N, "OrderableDBInstanceOption", "Vpc"),
            type = "boolean",
            name = "Vpc",
            target_id = prelude.Boolean.id,
        }),
        StorageType = schema.new({
            id = id.from(_N, "OrderableDBInstanceOption", "StorageType"),
            type = "string",
            name = "StorageType",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeOrderableDBInstanceOptionsOutput = schema.new({
    id = id.from(_N, "OrderableDBInstanceOptionsMessage"),
    type = "structure",
    members = {
        OrderableDBInstanceOptions = schema.new({
            id = id.from(_N, "DescribeOrderableDBInstanceOptionsOutput", "OrderableDBInstanceOptions"),
            type = "list",
            name = "OrderableDBInstanceOptions",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.OrderableDBInstanceOption, traits = { [traits.XML_NAME] = { name = "OrderableDBInstanceOption" } } }),
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribeOrderableDBInstanceOptionsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribePendingMaintenanceActionsInput = schema.new({
    id = id.from(_N, "DescribePendingMaintenanceActionsMessage"),
    type = "structure",
    members = {
        ResourceIdentifier = schema.new({
            id = id.from(_N, "DescribePendingMaintenanceActionsInput", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "DescribePendingMaintenanceActionsInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribePendingMaintenanceActionsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
        MaxRecords = schema.new({
            id = id.from(_N, "DescribePendingMaintenanceActionsInput", "MaxRecords"),
            type = "integer",
            name = "MaxRecords",
            target_id = prelude.Integer.id,
        }),
    },
})

M.DescribePendingMaintenanceActionsOutput = schema.new({
    id = id.from(_N, "PendingMaintenanceActionsMessage"),
    type = "structure",
    members = {
        PendingMaintenanceActions = schema.new({
            id = id.from(_N, "DescribePendingMaintenanceActionsOutput", "PendingMaintenanceActions"),
            type = "list",
            name = "PendingMaintenanceActions",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ResourcePendingMaintenanceActions, traits = { [traits.XML_NAME] = { name = "ResourcePendingMaintenanceActions" } } }),
        }),
        Marker = schema.new({
            id = id.from(_N, "DescribePendingMaintenanceActionsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
        }),
    },
})

M.FailoverDBClusterInput = schema.new({
    id = id.from(_N, "FailoverDBClusterMessage"),
    type = "structure",
    members = {
        DBClusterIdentifier = schema.new({
            id = id.from(_N, "FailoverDBClusterInput", "DBClusterIdentifier"),
            type = "string",
            name = "DBClusterIdentifier",
            target_id = prelude.String.id,
        }),
        TargetDBInstanceIdentifier = schema.new({
            id = id.from(_N, "FailoverDBClusterInput", "TargetDBInstanceIdentifier"),
            type = "string",
            name = "TargetDBInstanceIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.FailoverDBClusterOutput = schema.new({
    id = id.from(_N, "FailoverDBClusterResult"),
    type = "structure",
    members = {
        DBCluster = schema.new({
            id = id.from(_N, "FailoverDBClusterOutput", "DBCluster"),
            type = "structure",
            name = "DBCluster",
            target_id = id.from(_N, "DBCluster"),
            target = M.DBCluster,
        }),
    },
})

M.FailoverGlobalClusterInput = schema.new({
    id = id.from(_N, "FailoverGlobalClusterMessage"),
    type = "structure",
    members = {
        GlobalClusterIdentifier = schema.new({
            id = id.from(_N, "FailoverGlobalClusterInput", "GlobalClusterIdentifier"),
            type = "string",
            name = "GlobalClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetDbClusterIdentifier = schema.new({
            id = id.from(_N, "FailoverGlobalClusterInput", "TargetDbClusterIdentifier"),
            type = "string",
            name = "TargetDbClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AllowDataLoss = schema.new({
            id = id.from(_N, "FailoverGlobalClusterInput", "AllowDataLoss"),
            type = "boolean",
            name = "AllowDataLoss",
            target_id = prelude.Boolean.id,
        }),
        Switchover = schema.new({
            id = id.from(_N, "FailoverGlobalClusterInput", "Switchover"),
            type = "boolean",
            name = "Switchover",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.FailoverGlobalClusterOutput = schema.new({
    id = id.from(_N, "FailoverGlobalClusterResult"),
    type = "structure",
    members = {
        GlobalCluster = schema.new({
            id = id.from(_N, "FailoverGlobalClusterOutput", "GlobalCluster"),
            type = "structure",
            name = "GlobalCluster",
            target_id = id.from(_N, "GlobalCluster"),
            target = M.GlobalCluster,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceMessage"),
    type = "structure",
    members = {
        ResourceName = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "Filters"),
            type = "list",
            name = "Filters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Filter, traits = { [traits.XML_NAME] = { name = "Filter" } } }),
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "TagListMessage"),
    type = "structure",
    members = {
        TagList = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.InvalidDBSecurityGroupStateFault = schema.new({
    id = id.from(_N, "InvalidDBSecurityGroupStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidDBSecurityGroupStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudwatchLogsExportConfiguration = schema.new({
    id = id.from(_N, "CloudwatchLogsExportConfiguration"),
    type = "structure",
    members = {
        EnableLogTypes = schema.new({
            id = id.from(_N, "CloudwatchLogsExportConfiguration", "EnableLogTypes"),
            type = "list",
            name = "EnableLogTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DisableLogTypes = schema.new({
            id = id.from(_N, "CloudwatchLogsExportConfiguration", "DisableLogTypes"),
            type = "list",
            name = "DisableLogTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ModifyDBClusterInput = schema.new({
    id = id.from(_N, "ModifyDBClusterMessage"),
    type = "structure",
    members = {
        DBClusterIdentifier = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "DBClusterIdentifier"),
            type = "string",
            name = "DBClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewDBClusterIdentifier = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "NewDBClusterIdentifier"),
            type = "string",
            name = "NewDBClusterIdentifier",
            target_id = prelude.String.id,
        }),
        ApplyImmediately = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "ApplyImmediately"),
            type = "boolean",
            name = "ApplyImmediately",
            target_id = prelude.Boolean.id,
        }),
        BackupRetentionPeriod = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "BackupRetentionPeriod"),
            type = "integer",
            name = "BackupRetentionPeriod",
            target_id = prelude.Integer.id,
        }),
        DBClusterParameterGroupName = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "DBClusterParameterGroupName"),
            type = "string",
            name = "DBClusterParameterGroupName",
            target_id = prelude.String.id,
        }),
        VpcSecurityGroupIds = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "VpcSecurityGroupIds"),
            type = "list",
            name = "VpcSecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "VpcSecurityGroupId" } } }),
        }),
        Port = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        MasterUserPassword = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "MasterUserPassword"),
            type = "string",
            name = "MasterUserPassword",
            target_id = prelude.String.id,
        }),
        PreferredBackupWindow = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "PreferredBackupWindow"),
            type = "string",
            name = "PreferredBackupWindow",
            target_id = prelude.String.id,
        }),
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        CloudwatchLogsExportConfiguration = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "CloudwatchLogsExportConfiguration"),
            type = "structure",
            name = "CloudwatchLogsExportConfiguration",
            target_id = id.from(_N, "CloudwatchLogsExportConfiguration"),
            target = M.CloudwatchLogsExportConfiguration,
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        AllowMajorVersionUpgrade = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "AllowMajorVersionUpgrade"),
            type = "boolean",
            name = "AllowMajorVersionUpgrade",
            target_id = prelude.Boolean.id,
        }),
        DeletionProtection = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "DeletionProtection"),
            type = "boolean",
            name = "DeletionProtection",
            target_id = prelude.Boolean.id,
        }),
        StorageType = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "StorageType"),
            type = "string",
            name = "StorageType",
            target_id = prelude.String.id,
        }),
        ServerlessV2ScalingConfiguration = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "ServerlessV2ScalingConfiguration"),
            type = "structure",
            name = "ServerlessV2ScalingConfiguration",
            target_id = id.from(_N, "ServerlessV2ScalingConfiguration"),
            target = M.ServerlessV2ScalingConfiguration,
        }),
        ManageMasterUserPassword = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "ManageMasterUserPassword"),
            type = "boolean",
            name = "ManageMasterUserPassword",
            target_id = prelude.Boolean.id,
        }),
        MasterUserSecretKmsKeyId = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "MasterUserSecretKmsKeyId"),
            type = "string",
            name = "MasterUserSecretKmsKeyId",
            target_id = prelude.String.id,
        }),
        RotateMasterUserPassword = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "RotateMasterUserPassword"),
            type = "boolean",
            name = "RotateMasterUserPassword",
            target_id = prelude.Boolean.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "ModifyDBClusterInput", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyDBClusterOutput = schema.new({
    id = id.from(_N, "ModifyDBClusterResult"),
    type = "structure",
    members = {
        DBCluster = schema.new({
            id = id.from(_N, "ModifyDBClusterOutput", "DBCluster"),
            type = "structure",
            name = "DBCluster",
            target_id = id.from(_N, "DBCluster"),
            target = M.DBCluster,
        }),
    },
})

M.ModifyDBClusterParameterGroupInput = schema.new({
    id = id.from(_N, "ModifyDBClusterParameterGroupMessage"),
    type = "structure",
    members = {
        DBClusterParameterGroupName = schema.new({
            id = id.from(_N, "ModifyDBClusterParameterGroupInput", "DBClusterParameterGroupName"),
            type = "string",
            name = "DBClusterParameterGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Parameters = schema.new({
            id = id.from(_N, "ModifyDBClusterParameterGroupInput", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Parameter, traits = { [traits.XML_NAME] = { name = "Parameter" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ModifyDBClusterParameterGroupOutput = schema.new({
    id = id.from(_N, "DBClusterParameterGroupNameMessage"),
    type = "structure",
    members = {
        DBClusterParameterGroupName = schema.new({
            id = id.from(_N, "ModifyDBClusterParameterGroupOutput", "DBClusterParameterGroupName"),
            type = "string",
            name = "DBClusterParameterGroupName",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyDBClusterSnapshotAttributeInput = schema.new({
    id = id.from(_N, "ModifyDBClusterSnapshotAttributeMessage"),
    type = "structure",
    members = {
        DBClusterSnapshotIdentifier = schema.new({
            id = id.from(_N, "ModifyDBClusterSnapshotAttributeInput", "DBClusterSnapshotIdentifier"),
            type = "string",
            name = "DBClusterSnapshotIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttributeName = schema.new({
            id = id.from(_N, "ModifyDBClusterSnapshotAttributeInput", "AttributeName"),
            type = "string",
            name = "AttributeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ValuesToAdd = schema.new({
            id = id.from(_N, "ModifyDBClusterSnapshotAttributeInput", "ValuesToAdd"),
            type = "list",
            name = "ValuesToAdd",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "AttributeValue" } } }),
        }),
        ValuesToRemove = schema.new({
            id = id.from(_N, "ModifyDBClusterSnapshotAttributeInput", "ValuesToRemove"),
            type = "list",
            name = "ValuesToRemove",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "AttributeValue" } } }),
        }),
    },
})

M.ModifyDBClusterSnapshotAttributeOutput = schema.new({
    id = id.from(_N, "ModifyDBClusterSnapshotAttributeResult"),
    type = "structure",
    members = {
        DBClusterSnapshotAttributesResult = schema.new({
            id = id.from(_N, "ModifyDBClusterSnapshotAttributeOutput", "DBClusterSnapshotAttributesResult"),
            type = "structure",
            name = "DBClusterSnapshotAttributesResult",
            target_id = id.from(_N, "DBClusterSnapshotAttributesResult"),
            target = M.DBClusterSnapshotAttributesResult,
        }),
    },
})

M.SharedSnapshotQuotaExceededFault = schema.new({
    id = id.from(_N, "SharedSnapshotQuotaExceededFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SharedSnapshotQuotaExceededFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DBUpgradeDependencyFailureFault = schema.new({
    id = id.from(_N, "DBUpgradeDependencyFailureFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DBUpgradeDependencyFailureFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyDBInstanceInput = schema.new({
    id = id.from(_N, "ModifyDBInstanceMessage"),
    type = "structure",
    members = {
        DBInstanceIdentifier = schema.new({
            id = id.from(_N, "ModifyDBInstanceInput", "DBInstanceIdentifier"),
            type = "string",
            name = "DBInstanceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DBInstanceClass = schema.new({
            id = id.from(_N, "ModifyDBInstanceInput", "DBInstanceClass"),
            type = "string",
            name = "DBInstanceClass",
            target_id = prelude.String.id,
        }),
        ApplyImmediately = schema.new({
            id = id.from(_N, "ModifyDBInstanceInput", "ApplyImmediately"),
            type = "boolean",
            name = "ApplyImmediately",
            target_id = prelude.Boolean.id,
        }),
        PreferredMaintenanceWindow = schema.new({
            id = id.from(_N, "ModifyDBInstanceInput", "PreferredMaintenanceWindow"),
            type = "string",
            name = "PreferredMaintenanceWindow",
            target_id = prelude.String.id,
        }),
        AutoMinorVersionUpgrade = schema.new({
            id = id.from(_N, "ModifyDBInstanceInput", "AutoMinorVersionUpgrade"),
            type = "boolean",
            name = "AutoMinorVersionUpgrade",
            target_id = prelude.Boolean.id,
        }),
        NewDBInstanceIdentifier = schema.new({
            id = id.from(_N, "ModifyDBInstanceInput", "NewDBInstanceIdentifier"),
            type = "string",
            name = "NewDBInstanceIdentifier",
            target_id = prelude.String.id,
        }),
        CACertificateIdentifier = schema.new({
            id = id.from(_N, "ModifyDBInstanceInput", "CACertificateIdentifier"),
            type = "string",
            name = "CACertificateIdentifier",
            target_id = prelude.String.id,
        }),
        CopyTagsToSnapshot = schema.new({
            id = id.from(_N, "ModifyDBInstanceInput", "CopyTagsToSnapshot"),
            type = "boolean",
            name = "CopyTagsToSnapshot",
            target_id = prelude.Boolean.id,
        }),
        PromotionTier = schema.new({
            id = id.from(_N, "ModifyDBInstanceInput", "PromotionTier"),
            type = "integer",
            name = "PromotionTier",
            target_id = prelude.Integer.id,
        }),
        EnablePerformanceInsights = schema.new({
            id = id.from(_N, "ModifyDBInstanceInput", "EnablePerformanceInsights"),
            type = "boolean",
            name = "EnablePerformanceInsights",
            target_id = prelude.Boolean.id,
        }),
        PerformanceInsightsKMSKeyId = schema.new({
            id = id.from(_N, "ModifyDBInstanceInput", "PerformanceInsightsKMSKeyId"),
            type = "string",
            name = "PerformanceInsightsKMSKeyId",
            target_id = prelude.String.id,
        }),
        CertificateRotationRestart = schema.new({
            id = id.from(_N, "ModifyDBInstanceInput", "CertificateRotationRestart"),
            type = "boolean",
            name = "CertificateRotationRestart",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ModifyDBInstanceOutput = schema.new({
    id = id.from(_N, "ModifyDBInstanceResult"),
    type = "structure",
    members = {
        DBInstance = schema.new({
            id = id.from(_N, "ModifyDBInstanceOutput", "DBInstance"),
            type = "structure",
            name = "DBInstance",
            target_id = id.from(_N, "DBInstance"),
            target = M.DBInstance,
        }),
    },
})

M.ModifyDBSubnetGroupInput = schema.new({
    id = id.from(_N, "ModifyDBSubnetGroupMessage"),
    type = "structure",
    members = {
        DBSubnetGroupName = schema.new({
            id = id.from(_N, "ModifyDBSubnetGroupInput", "DBSubnetGroupName"),
            type = "string",
            name = "DBSubnetGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DBSubnetGroupDescription = schema.new({
            id = id.from(_N, "ModifyDBSubnetGroupInput", "DBSubnetGroupDescription"),
            type = "string",
            name = "DBSubnetGroupDescription",
            target_id = prelude.String.id,
        }),
        SubnetIds = schema.new({
            id = id.from(_N, "ModifyDBSubnetGroupInput", "SubnetIds"),
            type = "list",
            name = "SubnetIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "SubnetIdentifier" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ModifyDBSubnetGroupOutput = schema.new({
    id = id.from(_N, "ModifyDBSubnetGroupResult"),
    type = "structure",
    members = {
        DBSubnetGroup = schema.new({
            id = id.from(_N, "ModifyDBSubnetGroupOutput", "DBSubnetGroup"),
            type = "structure",
            name = "DBSubnetGroup",
            target_id = id.from(_N, "DBSubnetGroup"),
            target = M.DBSubnetGroup,
        }),
    },
})

M.SubnetAlreadyInUse = schema.new({
    id = id.from(_N, "SubnetAlreadyInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "SubnetAlreadyInUse", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifyEventSubscriptionInput = schema.new({
    id = id.from(_N, "ModifyEventSubscriptionMessage"),
    type = "structure",
    members = {
        SubscriptionName = schema.new({
            id = id.from(_N, "ModifyEventSubscriptionInput", "SubscriptionName"),
            type = "string",
            name = "SubscriptionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnsTopicArn = schema.new({
            id = id.from(_N, "ModifyEventSubscriptionInput", "SnsTopicArn"),
            type = "string",
            name = "SnsTopicArn",
            target_id = prelude.String.id,
        }),
        SourceType = schema.new({
            id = id.from(_N, "ModifyEventSubscriptionInput", "SourceType"),
            type = "string",
            name = "SourceType",
            target_id = prelude.String.id,
        }),
        EventCategories = schema.new({
            id = id.from(_N, "ModifyEventSubscriptionInput", "EventCategories"),
            type = "list",
            name = "EventCategories",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "EventCategory" } } }),
        }),
        Enabled = schema.new({
            id = id.from(_N, "ModifyEventSubscriptionInput", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ModifyEventSubscriptionOutput = schema.new({
    id = id.from(_N, "ModifyEventSubscriptionResult"),
    type = "structure",
    members = {
        EventSubscription = schema.new({
            id = id.from(_N, "ModifyEventSubscriptionOutput", "EventSubscription"),
            type = "structure",
            name = "EventSubscription",
            target_id = id.from(_N, "EventSubscription"),
            target = M.EventSubscription,
        }),
    },
})

M.ModifyGlobalClusterInput = schema.new({
    id = id.from(_N, "ModifyGlobalClusterMessage"),
    type = "structure",
    members = {
        GlobalClusterIdentifier = schema.new({
            id = id.from(_N, "ModifyGlobalClusterInput", "GlobalClusterIdentifier"),
            type = "string",
            name = "GlobalClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewGlobalClusterIdentifier = schema.new({
            id = id.from(_N, "ModifyGlobalClusterInput", "NewGlobalClusterIdentifier"),
            type = "string",
            name = "NewGlobalClusterIdentifier",
            target_id = prelude.String.id,
        }),
        DeletionProtection = schema.new({
            id = id.from(_N, "ModifyGlobalClusterInput", "DeletionProtection"),
            type = "boolean",
            name = "DeletionProtection",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ModifyGlobalClusterOutput = schema.new({
    id = id.from(_N, "ModifyGlobalClusterResult"),
    type = "structure",
    members = {
        GlobalCluster = schema.new({
            id = id.from(_N, "ModifyGlobalClusterOutput", "GlobalCluster"),
            type = "structure",
            name = "GlobalCluster",
            target_id = id.from(_N, "GlobalCluster"),
            target = M.GlobalCluster,
        }),
    },
})

M.RebootDBInstanceInput = schema.new({
    id = id.from(_N, "RebootDBInstanceMessage"),
    type = "structure",
    members = {
        DBInstanceIdentifier = schema.new({
            id = id.from(_N, "RebootDBInstanceInput", "DBInstanceIdentifier"),
            type = "string",
            name = "DBInstanceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ForceFailover = schema.new({
            id = id.from(_N, "RebootDBInstanceInput", "ForceFailover"),
            type = "boolean",
            name = "ForceFailover",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.RebootDBInstanceOutput = schema.new({
    id = id.from(_N, "RebootDBInstanceResult"),
    type = "structure",
    members = {
        DBInstance = schema.new({
            id = id.from(_N, "RebootDBInstanceOutput", "DBInstance"),
            type = "structure",
            name = "DBInstance",
            target_id = id.from(_N, "DBInstance"),
            target = M.DBInstance,
        }),
    },
})

M.RemoveFromGlobalClusterInput = schema.new({
    id = id.from(_N, "RemoveFromGlobalClusterMessage"),
    type = "structure",
    members = {
        GlobalClusterIdentifier = schema.new({
            id = id.from(_N, "RemoveFromGlobalClusterInput", "GlobalClusterIdentifier"),
            type = "string",
            name = "GlobalClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DbClusterIdentifier = schema.new({
            id = id.from(_N, "RemoveFromGlobalClusterInput", "DbClusterIdentifier"),
            type = "string",
            name = "DbClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RemoveFromGlobalClusterOutput = schema.new({
    id = id.from(_N, "RemoveFromGlobalClusterResult"),
    type = "structure",
    members = {
        GlobalCluster = schema.new({
            id = id.from(_N, "RemoveFromGlobalClusterOutput", "GlobalCluster"),
            type = "structure",
            name = "GlobalCluster",
            target_id = id.from(_N, "GlobalCluster"),
            target = M.GlobalCluster,
        }),
    },
})

M.RemoveSourceIdentifierFromSubscriptionInput = schema.new({
    id = id.from(_N, "RemoveSourceIdentifierFromSubscriptionMessage"),
    type = "structure",
    members = {
        SubscriptionName = schema.new({
            id = id.from(_N, "RemoveSourceIdentifierFromSubscriptionInput", "SubscriptionName"),
            type = "string",
            name = "SubscriptionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SourceIdentifier = schema.new({
            id = id.from(_N, "RemoveSourceIdentifierFromSubscriptionInput", "SourceIdentifier"),
            type = "string",
            name = "SourceIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RemoveSourceIdentifierFromSubscriptionOutput = schema.new({
    id = id.from(_N, "RemoveSourceIdentifierFromSubscriptionResult"),
    type = "structure",
    members = {
        EventSubscription = schema.new({
            id = id.from(_N, "RemoveSourceIdentifierFromSubscriptionOutput", "EventSubscription"),
            type = "structure",
            name = "EventSubscription",
            target_id = id.from(_N, "EventSubscription"),
            target = M.EventSubscription,
        }),
    },
})

M.RemoveTagsFromResourceInput = schema.new({
    id = id.from(_N, "RemoveTagsFromResourceMessage"),
    type = "structure",
    members = {
        ResourceName = schema.new({
            id = id.from(_N, "RemoveTagsFromResourceInput", "ResourceName"),
            type = "string",
            name = "ResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "RemoveTagsFromResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RemoveTagsFromResourceOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.ResetDBClusterParameterGroupInput = schema.new({
    id = id.from(_N, "ResetDBClusterParameterGroupMessage"),
    type = "structure",
    members = {
        DBClusterParameterGroupName = schema.new({
            id = id.from(_N, "ResetDBClusterParameterGroupInput", "DBClusterParameterGroupName"),
            type = "string",
            name = "DBClusterParameterGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResetAllParameters = schema.new({
            id = id.from(_N, "ResetDBClusterParameterGroupInput", "ResetAllParameters"),
            type = "boolean",
            name = "ResetAllParameters",
            target_id = prelude.Boolean.id,
        }),
        Parameters = schema.new({
            id = id.from(_N, "ResetDBClusterParameterGroupInput", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Parameter, traits = { [traits.XML_NAME] = { name = "Parameter" } } }),
        }),
    },
})

M.ResetDBClusterParameterGroupOutput = schema.new({
    id = id.from(_N, "DBClusterParameterGroupNameMessage"),
    type = "structure",
    members = {
        DBClusterParameterGroupName = schema.new({
            id = id.from(_N, "ResetDBClusterParameterGroupOutput", "DBClusterParameterGroupName"),
            type = "string",
            name = "DBClusterParameterGroupName",
            target_id = prelude.String.id,
        }),
    },
})

M.InsufficientDBClusterCapacityFault = schema.new({
    id = id.from(_N, "InsufficientDBClusterCapacityFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InsufficientDBClusterCapacityFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidDBSnapshotStateFault = schema.new({
    id = id.from(_N, "InvalidDBSnapshotStateFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidDBSnapshotStateFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRestoreFault = schema.new({
    id = id.from(_N, "InvalidRestoreFault"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRestoreFault", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RestoreDBClusterFromSnapshotInput = schema.new({
    id = id.from(_N, "RestoreDBClusterFromSnapshotMessage"),
    type = "structure",
    members = {
        AvailabilityZones = schema.new({
            id = id.from(_N, "RestoreDBClusterFromSnapshotInput", "AvailabilityZones"),
            type = "list",
            name = "AvailabilityZones",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "AvailabilityZone" } } }),
        }),
        DBClusterIdentifier = schema.new({
            id = id.from(_N, "RestoreDBClusterFromSnapshotInput", "DBClusterIdentifier"),
            type = "string",
            name = "DBClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SnapshotIdentifier = schema.new({
            id = id.from(_N, "RestoreDBClusterFromSnapshotInput", "SnapshotIdentifier"),
            type = "string",
            name = "SnapshotIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Engine = schema.new({
            id = id.from(_N, "RestoreDBClusterFromSnapshotInput", "Engine"),
            type = "string",
            name = "Engine",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EngineVersion = schema.new({
            id = id.from(_N, "RestoreDBClusterFromSnapshotInput", "EngineVersion"),
            type = "string",
            name = "EngineVersion",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "RestoreDBClusterFromSnapshotInput", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        DBSubnetGroupName = schema.new({
            id = id.from(_N, "RestoreDBClusterFromSnapshotInput", "DBSubnetGroupName"),
            type = "string",
            name = "DBSubnetGroupName",
            target_id = prelude.String.id,
        }),
        VpcSecurityGroupIds = schema.new({
            id = id.from(_N, "RestoreDBClusterFromSnapshotInput", "VpcSecurityGroupIds"),
            type = "list",
            name = "VpcSecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "VpcSecurityGroupId" } } }),
        }),
        Tags = schema.new({
            id = id.from(_N, "RestoreDBClusterFromSnapshotInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "RestoreDBClusterFromSnapshotInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        EnableCloudwatchLogsExports = schema.new({
            id = id.from(_N, "RestoreDBClusterFromSnapshotInput", "EnableCloudwatchLogsExports"),
            type = "list",
            name = "EnableCloudwatchLogsExports",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DeletionProtection = schema.new({
            id = id.from(_N, "RestoreDBClusterFromSnapshotInput", "DeletionProtection"),
            type = "boolean",
            name = "DeletionProtection",
            target_id = prelude.Boolean.id,
        }),
        DBClusterParameterGroupName = schema.new({
            id = id.from(_N, "RestoreDBClusterFromSnapshotInput", "DBClusterParameterGroupName"),
            type = "string",
            name = "DBClusterParameterGroupName",
            target_id = prelude.String.id,
        }),
        ServerlessV2ScalingConfiguration = schema.new({
            id = id.from(_N, "RestoreDBClusterFromSnapshotInput", "ServerlessV2ScalingConfiguration"),
            type = "structure",
            name = "ServerlessV2ScalingConfiguration",
            target_id = id.from(_N, "ServerlessV2ScalingConfiguration"),
            target = M.ServerlessV2ScalingConfiguration,
        }),
        StorageType = schema.new({
            id = id.from(_N, "RestoreDBClusterFromSnapshotInput", "StorageType"),
            type = "string",
            name = "StorageType",
            target_id = prelude.String.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "RestoreDBClusterFromSnapshotInput", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
    },
})

M.RestoreDBClusterFromSnapshotOutput = schema.new({
    id = id.from(_N, "RestoreDBClusterFromSnapshotResult"),
    type = "structure",
    members = {
        DBCluster = schema.new({
            id = id.from(_N, "RestoreDBClusterFromSnapshotOutput", "DBCluster"),
            type = "structure",
            name = "DBCluster",
            target_id = id.from(_N, "DBCluster"),
            target = M.DBCluster,
        }),
    },
})

M.RestoreDBClusterToPointInTimeInput = schema.new({
    id = id.from(_N, "RestoreDBClusterToPointInTimeMessage"),
    type = "structure",
    members = {
        DBClusterIdentifier = schema.new({
            id = id.from(_N, "RestoreDBClusterToPointInTimeInput", "DBClusterIdentifier"),
            type = "string",
            name = "DBClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RestoreType = schema.new({
            id = id.from(_N, "RestoreDBClusterToPointInTimeInput", "RestoreType"),
            type = "string",
            name = "RestoreType",
            target_id = prelude.String.id,
        }),
        SourceDBClusterIdentifier = schema.new({
            id = id.from(_N, "RestoreDBClusterToPointInTimeInput", "SourceDBClusterIdentifier"),
            type = "string",
            name = "SourceDBClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RestoreToTime = schema.new({
            id = id.from(_N, "RestoreDBClusterToPointInTimeInput", "RestoreToTime"),
            type = "timestamp",
            name = "RestoreToTime",
            target_id = prelude.Timestamp.id,
        }),
        UseLatestRestorableTime = schema.new({
            id = id.from(_N, "RestoreDBClusterToPointInTimeInput", "UseLatestRestorableTime"),
            type = "boolean",
            name = "UseLatestRestorableTime",
            target_id = prelude.Boolean.id,
        }),
        Port = schema.new({
            id = id.from(_N, "RestoreDBClusterToPointInTimeInput", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        DBSubnetGroupName = schema.new({
            id = id.from(_N, "RestoreDBClusterToPointInTimeInput", "DBSubnetGroupName"),
            type = "string",
            name = "DBSubnetGroupName",
            target_id = prelude.String.id,
        }),
        VpcSecurityGroupIds = schema.new({
            id = id.from(_N, "RestoreDBClusterToPointInTimeInput", "VpcSecurityGroupIds"),
            type = "list",
            name = "VpcSecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "VpcSecurityGroupId" } } }),
        }),
        Tags = schema.new({
            id = id.from(_N, "RestoreDBClusterToPointInTimeInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
        KmsKeyId = schema.new({
            id = id.from(_N, "RestoreDBClusterToPointInTimeInput", "KmsKeyId"),
            type = "string",
            name = "KmsKeyId",
            target_id = prelude.String.id,
        }),
        EnableCloudwatchLogsExports = schema.new({
            id = id.from(_N, "RestoreDBClusterToPointInTimeInput", "EnableCloudwatchLogsExports"),
            type = "list",
            name = "EnableCloudwatchLogsExports",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        DeletionProtection = schema.new({
            id = id.from(_N, "RestoreDBClusterToPointInTimeInput", "DeletionProtection"),
            type = "boolean",
            name = "DeletionProtection",
            target_id = prelude.Boolean.id,
        }),
        ServerlessV2ScalingConfiguration = schema.new({
            id = id.from(_N, "RestoreDBClusterToPointInTimeInput", "ServerlessV2ScalingConfiguration"),
            type = "structure",
            name = "ServerlessV2ScalingConfiguration",
            target_id = id.from(_N, "ServerlessV2ScalingConfiguration"),
            target = M.ServerlessV2ScalingConfiguration,
        }),
        StorageType = schema.new({
            id = id.from(_N, "RestoreDBClusterToPointInTimeInput", "StorageType"),
            type = "string",
            name = "StorageType",
            target_id = prelude.String.id,
        }),
        NetworkType = schema.new({
            id = id.from(_N, "RestoreDBClusterToPointInTimeInput", "NetworkType"),
            type = "string",
            name = "NetworkType",
            target_id = prelude.String.id,
        }),
    },
})

M.RestoreDBClusterToPointInTimeOutput = schema.new({
    id = id.from(_N, "RestoreDBClusterToPointInTimeResult"),
    type = "structure",
    members = {
        DBCluster = schema.new({
            id = id.from(_N, "RestoreDBClusterToPointInTimeOutput", "DBCluster"),
            type = "structure",
            name = "DBCluster",
            target_id = id.from(_N, "DBCluster"),
            target = M.DBCluster,
        }),
    },
})

M.StartDBClusterInput = schema.new({
    id = id.from(_N, "StartDBClusterMessage"),
    type = "structure",
    members = {
        DBClusterIdentifier = schema.new({
            id = id.from(_N, "StartDBClusterInput", "DBClusterIdentifier"),
            type = "string",
            name = "DBClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartDBClusterOutput = schema.new({
    id = id.from(_N, "StartDBClusterResult"),
    type = "structure",
    members = {
        DBCluster = schema.new({
            id = id.from(_N, "StartDBClusterOutput", "DBCluster"),
            type = "structure",
            name = "DBCluster",
            target_id = id.from(_N, "DBCluster"),
            target = M.DBCluster,
        }),
    },
})

M.StopDBClusterInput = schema.new({
    id = id.from(_N, "StopDBClusterMessage"),
    type = "structure",
    members = {
        DBClusterIdentifier = schema.new({
            id = id.from(_N, "StopDBClusterInput", "DBClusterIdentifier"),
            type = "string",
            name = "DBClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopDBClusterOutput = schema.new({
    id = id.from(_N, "StopDBClusterResult"),
    type = "structure",
    members = {
        DBCluster = schema.new({
            id = id.from(_N, "StopDBClusterOutput", "DBCluster"),
            type = "structure",
            name = "DBCluster",
            target_id = id.from(_N, "DBCluster"),
            target = M.DBCluster,
        }),
    },
})

M.SwitchoverGlobalClusterInput = schema.new({
    id = id.from(_N, "SwitchoverGlobalClusterMessage"),
    type = "structure",
    members = {
        GlobalClusterIdentifier = schema.new({
            id = id.from(_N, "SwitchoverGlobalClusterInput", "GlobalClusterIdentifier"),
            type = "string",
            name = "GlobalClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetDbClusterIdentifier = schema.new({
            id = id.from(_N, "SwitchoverGlobalClusterInput", "TargetDbClusterIdentifier"),
            type = "string",
            name = "TargetDbClusterIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SwitchoverGlobalClusterOutput = schema.new({
    id = id.from(_N, "SwitchoverGlobalClusterResult"),
    type = "structure",
    members = {
        GlobalCluster = schema.new({
            id = id.from(_N, "SwitchoverGlobalClusterOutput", "GlobalCluster"),
            type = "structure",
            name = "GlobalCluster",
            target_id = id.from(_N, "GlobalCluster"),
            target = M.GlobalCluster,
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
