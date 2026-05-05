local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.dynamodb"

local M = {}

M.ArchivalSummary = schema.new({
    id = id.from(_N, "ArchivalSummary"),
    type = "structure",
    members = {
        ArchivalDateTime = schema.new({
            id = id.from(_N, "ArchivalSummary", "ArchivalDateTime"),
            type = "timestamp",
            name = "ArchivalDateTime",
            target_id = prelude.Timestamp.id,
        }),
        ArchivalReason = schema.new({
            id = id.from(_N, "ArchivalSummary", "ArchivalReason"),
            type = "string",
            name = "ArchivalReason",
            target_id = prelude.String.id,
        }),
        ArchivalBackupArn = schema.new({
            id = id.from(_N, "ArchivalSummary", "ArchivalBackupArn"),
            type = "string",
            name = "ArchivalBackupArn",
            target_id = prelude.String.id,
        }),
    },
})

M.AttributeDefinition = schema.new({
    id = id.from(_N, "AttributeDefinition"),
    type = "structure",
    members = {
        AttributeName = schema.new({
            id = id.from(_N, "AttributeDefinition", "AttributeName"),
            type = "string",
            name = "AttributeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttributeType = schema.new({
            id = id.from(_N, "AttributeDefinition", "AttributeType"),
            type = "string",
            name = "AttributeType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AutoScalingTargetTrackingScalingPolicyConfigurationDescription = schema.new({
    id = id.from(_N, "AutoScalingTargetTrackingScalingPolicyConfigurationDescription"),
    type = "structure",
    members = {
        DisableScaleIn = schema.new({
            id = id.from(_N, "AutoScalingTargetTrackingScalingPolicyConfigurationDescription", "DisableScaleIn"),
            type = "boolean",
            name = "DisableScaleIn",
            target_id = prelude.Boolean.id,
        }),
        ScaleInCooldown = schema.new({
            id = id.from(_N, "AutoScalingTargetTrackingScalingPolicyConfigurationDescription", "ScaleInCooldown"),
            type = "integer",
            name = "ScaleInCooldown",
            target_id = prelude.Integer.id,
        }),
        ScaleOutCooldown = schema.new({
            id = id.from(_N, "AutoScalingTargetTrackingScalingPolicyConfigurationDescription", "ScaleOutCooldown"),
            type = "integer",
            name = "ScaleOutCooldown",
            target_id = prelude.Integer.id,
        }),
        TargetValue = schema.new({
            id = id.from(_N, "AutoScalingTargetTrackingScalingPolicyConfigurationDescription", "TargetValue"),
            type = "double",
            name = "TargetValue",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AutoScalingPolicyDescription = schema.new({
    id = id.from(_N, "AutoScalingPolicyDescription"),
    type = "structure",
    members = {
        PolicyName = schema.new({
            id = id.from(_N, "AutoScalingPolicyDescription", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
        }),
        TargetTrackingScalingPolicyConfiguration = schema.new({
            id = id.from(_N, "AutoScalingPolicyDescription", "TargetTrackingScalingPolicyConfiguration"),
            type = "structure",
            name = "TargetTrackingScalingPolicyConfiguration",
            target_id = id.from(_N, "AutoScalingTargetTrackingScalingPolicyConfigurationDescription"),
            target = M.AutoScalingTargetTrackingScalingPolicyConfigurationDescription,
        }),
    },
})

M.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate = schema.new({
    id = id.from(_N, "AutoScalingTargetTrackingScalingPolicyConfigurationUpdate"),
    type = "structure",
    members = {
        DisableScaleIn = schema.new({
            id = id.from(_N, "AutoScalingTargetTrackingScalingPolicyConfigurationUpdate", "DisableScaleIn"),
            type = "boolean",
            name = "DisableScaleIn",
            target_id = prelude.Boolean.id,
        }),
        ScaleInCooldown = schema.new({
            id = id.from(_N, "AutoScalingTargetTrackingScalingPolicyConfigurationUpdate", "ScaleInCooldown"),
            type = "integer",
            name = "ScaleInCooldown",
            target_id = prelude.Integer.id,
        }),
        ScaleOutCooldown = schema.new({
            id = id.from(_N, "AutoScalingTargetTrackingScalingPolicyConfigurationUpdate", "ScaleOutCooldown"),
            type = "integer",
            name = "ScaleOutCooldown",
            target_id = prelude.Integer.id,
        }),
        TargetValue = schema.new({
            id = id.from(_N, "AutoScalingTargetTrackingScalingPolicyConfigurationUpdate", "TargetValue"),
            type = "double",
            name = "TargetValue",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AutoScalingPolicyUpdate = schema.new({
    id = id.from(_N, "AutoScalingPolicyUpdate"),
    type = "structure",
    members = {
        PolicyName = schema.new({
            id = id.from(_N, "AutoScalingPolicyUpdate", "PolicyName"),
            type = "string",
            name = "PolicyName",
            target_id = prelude.String.id,
        }),
        TargetTrackingScalingPolicyConfiguration = schema.new({
            id = id.from(_N, "AutoScalingPolicyUpdate", "TargetTrackingScalingPolicyConfiguration"),
            type = "structure",
            name = "TargetTrackingScalingPolicyConfiguration",
            target_id = id.from(_N, "AutoScalingTargetTrackingScalingPolicyConfigurationUpdate"),
            target = M.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AutoScalingSettingsDescription = schema.new({
    id = id.from(_N, "AutoScalingSettingsDescription"),
    type = "structure",
    members = {
        MinimumUnits = schema.new({
            id = id.from(_N, "AutoScalingSettingsDescription", "MinimumUnits"),
            type = "long",
            name = "MinimumUnits",
            target_id = prelude.Long.id,
        }),
        MaximumUnits = schema.new({
            id = id.from(_N, "AutoScalingSettingsDescription", "MaximumUnits"),
            type = "long",
            name = "MaximumUnits",
            target_id = prelude.Long.id,
        }),
        AutoScalingDisabled = schema.new({
            id = id.from(_N, "AutoScalingSettingsDescription", "AutoScalingDisabled"),
            type = "boolean",
            name = "AutoScalingDisabled",
            target_id = prelude.Boolean.id,
        }),
        AutoScalingRoleArn = schema.new({
            id = id.from(_N, "AutoScalingSettingsDescription", "AutoScalingRoleArn"),
            type = "string",
            name = "AutoScalingRoleArn",
            target_id = prelude.String.id,
        }),
        ScalingPolicies = schema.new({
            id = id.from(_N, "AutoScalingSettingsDescription", "ScalingPolicies"),
            type = "list",
            name = "ScalingPolicies",
            target_id = prelude.Document.id,
            list_member = M.AutoScalingPolicyDescription,
        }),
    },
})

M.AutoScalingSettingsUpdate = schema.new({
    id = id.from(_N, "AutoScalingSettingsUpdate"),
    type = "structure",
    members = {
        MinimumUnits = schema.new({
            id = id.from(_N, "AutoScalingSettingsUpdate", "MinimumUnits"),
            type = "long",
            name = "MinimumUnits",
            target_id = prelude.Long.id,
        }),
        MaximumUnits = schema.new({
            id = id.from(_N, "AutoScalingSettingsUpdate", "MaximumUnits"),
            type = "long",
            name = "MaximumUnits",
            target_id = prelude.Long.id,
        }),
        AutoScalingDisabled = schema.new({
            id = id.from(_N, "AutoScalingSettingsUpdate", "AutoScalingDisabled"),
            type = "boolean",
            name = "AutoScalingDisabled",
            target_id = prelude.Boolean.id,
        }),
        AutoScalingRoleArn = schema.new({
            id = id.from(_N, "AutoScalingSettingsUpdate", "AutoScalingRoleArn"),
            type = "string",
            name = "AutoScalingRoleArn",
            target_id = prelude.String.id,
        }),
        ScalingPolicyUpdate = schema.new({
            id = id.from(_N, "AutoScalingSettingsUpdate", "ScalingPolicyUpdate"),
            type = "structure",
            name = "ScalingPolicyUpdate",
            target_id = id.from(_N, "AutoScalingPolicyUpdate"),
            target = M.AutoScalingPolicyUpdate,
        }),
    },
})

M.BackupDetails = schema.new({
    id = id.from(_N, "BackupDetails"),
    type = "structure",
    members = {
        BackupArn = schema.new({
            id = id.from(_N, "BackupDetails", "BackupArn"),
            type = "string",
            name = "BackupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BackupName = schema.new({
            id = id.from(_N, "BackupDetails", "BackupName"),
            type = "string",
            name = "BackupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BackupSizeBytes = schema.new({
            id = id.from(_N, "BackupDetails", "BackupSizeBytes"),
            type = "long",
            name = "BackupSizeBytes",
            target_id = prelude.Long.id,
        }),
        BackupStatus = schema.new({
            id = id.from(_N, "BackupDetails", "BackupStatus"),
            type = "string",
            name = "BackupStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BackupType = schema.new({
            id = id.from(_N, "BackupDetails", "BackupType"),
            type = "string",
            name = "BackupType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BackupCreationDateTime = schema.new({
            id = id.from(_N, "BackupDetails", "BackupCreationDateTime"),
            type = "timestamp",
            name = "BackupCreationDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BackupExpiryDateTime = schema.new({
            id = id.from(_N, "BackupDetails", "BackupExpiryDateTime"),
            type = "timestamp",
            name = "BackupExpiryDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.KeySchemaElement = schema.new({
    id = id.from(_N, "KeySchemaElement"),
    type = "structure",
    members = {
        AttributeName = schema.new({
            id = id.from(_N, "KeySchemaElement", "AttributeName"),
            type = "string",
            name = "AttributeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeyType = schema.new({
            id = id.from(_N, "KeySchemaElement", "KeyType"),
            type = "string",
            name = "KeyType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OnDemandThroughput = schema.new({
    id = id.from(_N, "OnDemandThroughput"),
    type = "structure",
    members = {
        MaxReadRequestUnits = schema.new({
            id = id.from(_N, "OnDemandThroughput", "MaxReadRequestUnits"),
            type = "long",
            name = "MaxReadRequestUnits",
            target_id = prelude.Long.id,
        }),
        MaxWriteRequestUnits = schema.new({
            id = id.from(_N, "OnDemandThroughput", "MaxWriteRequestUnits"),
            type = "long",
            name = "MaxWriteRequestUnits",
            target_id = prelude.Long.id,
        }),
    },
})

M.ProvisionedThroughput = schema.new({
    id = id.from(_N, "ProvisionedThroughput"),
    type = "structure",
    members = {
        ReadCapacityUnits = schema.new({
            id = id.from(_N, "ProvisionedThroughput", "ReadCapacityUnits"),
            type = "long",
            name = "ReadCapacityUnits",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WriteCapacityUnits = schema.new({
            id = id.from(_N, "ProvisionedThroughput", "WriteCapacityUnits"),
            type = "long",
            name = "WriteCapacityUnits",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SourceTableDetails = schema.new({
    id = id.from(_N, "SourceTableDetails"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "SourceTableDetails", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableId = schema.new({
            id = id.from(_N, "SourceTableDetails", "TableId"),
            type = "string",
            name = "TableId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableArn = schema.new({
            id = id.from(_N, "SourceTableDetails", "TableArn"),
            type = "string",
            name = "TableArn",
            target_id = prelude.String.id,
        }),
        TableSizeBytes = schema.new({
            id = id.from(_N, "SourceTableDetails", "TableSizeBytes"),
            type = "long",
            name = "TableSizeBytes",
            target_id = prelude.Long.id,
        }),
        KeySchema = schema.new({
            id = id.from(_N, "SourceTableDetails", "KeySchema"),
            type = "list",
            name = "KeySchema",
            target_id = prelude.Document.id,
            list_member = M.KeySchemaElement,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableCreationDateTime = schema.new({
            id = id.from(_N, "SourceTableDetails", "TableCreationDateTime"),
            type = "timestamp",
            name = "TableCreationDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisionedThroughput = schema.new({
            id = id.from(_N, "SourceTableDetails", "ProvisionedThroughput"),
            type = "structure",
            name = "ProvisionedThroughput",
            target_id = id.from(_N, "ProvisionedThroughput"),
            target = M.ProvisionedThroughput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OnDemandThroughput = schema.new({
            id = id.from(_N, "SourceTableDetails", "OnDemandThroughput"),
            type = "structure",
            name = "OnDemandThroughput",
            target_id = id.from(_N, "OnDemandThroughput"),
            target = M.OnDemandThroughput,
        }),
        ItemCount = schema.new({
            id = id.from(_N, "SourceTableDetails", "ItemCount"),
            type = "long",
            name = "ItemCount",
            target_id = prelude.Long.id,
        }),
        BillingMode = schema.new({
            id = id.from(_N, "SourceTableDetails", "BillingMode"),
            type = "string",
            name = "BillingMode",
            target_id = prelude.String.id,
        }),
    },
})

M.Projection = schema.new({
    id = id.from(_N, "Projection"),
    type = "structure",
    members = {
        ProjectionType = schema.new({
            id = id.from(_N, "Projection", "ProjectionType"),
            type = "string",
            name = "ProjectionType",
            target_id = prelude.String.id,
        }),
        NonKeyAttributes = schema.new({
            id = id.from(_N, "Projection", "NonKeyAttributes"),
            type = "list",
            name = "NonKeyAttributes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GlobalSecondaryIndexInfo = schema.new({
    id = id.from(_N, "GlobalSecondaryIndexInfo"),
    type = "structure",
    members = {
        IndexName = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexInfo", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
        }),
        KeySchema = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexInfo", "KeySchema"),
            type = "list",
            name = "KeySchema",
            target_id = prelude.Document.id,
            list_member = M.KeySchemaElement,
        }),
        Projection = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexInfo", "Projection"),
            type = "structure",
            name = "Projection",
            target_id = id.from(_N, "Projection"),
            target = M.Projection,
        }),
        ProvisionedThroughput = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexInfo", "ProvisionedThroughput"),
            type = "structure",
            name = "ProvisionedThroughput",
            target_id = id.from(_N, "ProvisionedThroughput"),
            target = M.ProvisionedThroughput,
        }),
        OnDemandThroughput = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexInfo", "OnDemandThroughput"),
            type = "structure",
            name = "OnDemandThroughput",
            target_id = id.from(_N, "OnDemandThroughput"),
            target = M.OnDemandThroughput,
        }),
    },
})

M.LocalSecondaryIndexInfo = schema.new({
    id = id.from(_N, "LocalSecondaryIndexInfo"),
    type = "structure",
    members = {
        IndexName = schema.new({
            id = id.from(_N, "LocalSecondaryIndexInfo", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
        }),
        KeySchema = schema.new({
            id = id.from(_N, "LocalSecondaryIndexInfo", "KeySchema"),
            type = "list",
            name = "KeySchema",
            target_id = prelude.Document.id,
            list_member = M.KeySchemaElement,
        }),
        Projection = schema.new({
            id = id.from(_N, "LocalSecondaryIndexInfo", "Projection"),
            type = "structure",
            name = "Projection",
            target_id = id.from(_N, "Projection"),
            target = M.Projection,
        }),
    },
})

M.SSEDescription = schema.new({
    id = id.from(_N, "SSEDescription"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "SSEDescription", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        SSEType = schema.new({
            id = id.from(_N, "SSEDescription", "SSEType"),
            type = "string",
            name = "SSEType",
            target_id = prelude.String.id,
        }),
        KMSMasterKeyArn = schema.new({
            id = id.from(_N, "SSEDescription", "KMSMasterKeyArn"),
            type = "string",
            name = "KMSMasterKeyArn",
            target_id = prelude.String.id,
        }),
        InaccessibleEncryptionDateTime = schema.new({
            id = id.from(_N, "SSEDescription", "InaccessibleEncryptionDateTime"),
            type = "timestamp",
            name = "InaccessibleEncryptionDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.StreamSpecification = schema.new({
    id = id.from(_N, "StreamSpecification"),
    type = "structure",
    members = {
        StreamEnabled = schema.new({
            id = id.from(_N, "StreamSpecification", "StreamEnabled"),
            type = "boolean",
            name = "StreamEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StreamViewType = schema.new({
            id = id.from(_N, "StreamSpecification", "StreamViewType"),
            type = "string",
            name = "StreamViewType",
            target_id = prelude.String.id,
        }),
    },
})

M.TimeToLiveDescription = schema.new({
    id = id.from(_N, "TimeToLiveDescription"),
    type = "structure",
    members = {
        TimeToLiveStatus = schema.new({
            id = id.from(_N, "TimeToLiveDescription", "TimeToLiveStatus"),
            type = "string",
            name = "TimeToLiveStatus",
            target_id = prelude.String.id,
        }),
        AttributeName = schema.new({
            id = id.from(_N, "TimeToLiveDescription", "AttributeName"),
            type = "string",
            name = "AttributeName",
            target_id = prelude.String.id,
        }),
    },
})

M.SourceTableFeatureDetails = schema.new({
    id = id.from(_N, "SourceTableFeatureDetails"),
    type = "structure",
    members = {
        LocalSecondaryIndexes = schema.new({
            id = id.from(_N, "SourceTableFeatureDetails", "LocalSecondaryIndexes"),
            type = "list",
            name = "LocalSecondaryIndexes",
            target_id = prelude.Document.id,
            list_member = M.LocalSecondaryIndexInfo,
        }),
        GlobalSecondaryIndexes = schema.new({
            id = id.from(_N, "SourceTableFeatureDetails", "GlobalSecondaryIndexes"),
            type = "list",
            name = "GlobalSecondaryIndexes",
            target_id = prelude.Document.id,
            list_member = M.GlobalSecondaryIndexInfo,
        }),
        StreamDescription = schema.new({
            id = id.from(_N, "SourceTableFeatureDetails", "StreamDescription"),
            type = "structure",
            name = "StreamDescription",
            target_id = id.from(_N, "StreamSpecification"),
            target = M.StreamSpecification,
        }),
        TimeToLiveDescription = schema.new({
            id = id.from(_N, "SourceTableFeatureDetails", "TimeToLiveDescription"),
            type = "structure",
            name = "TimeToLiveDescription",
            target_id = id.from(_N, "TimeToLiveDescription"),
            target = M.TimeToLiveDescription,
        }),
        SSEDescription = schema.new({
            id = id.from(_N, "SourceTableFeatureDetails", "SSEDescription"),
            type = "structure",
            name = "SSEDescription",
            target_id = id.from(_N, "SSEDescription"),
            target = M.SSEDescription,
        }),
    },
})

M.BackupDescription = schema.new({
    id = id.from(_N, "BackupDescription"),
    type = "structure",
    members = {
        BackupDetails = schema.new({
            id = id.from(_N, "BackupDescription", "BackupDetails"),
            type = "structure",
            name = "BackupDetails",
            target_id = id.from(_N, "BackupDetails"),
            target = M.BackupDetails,
        }),
        SourceTableDetails = schema.new({
            id = id.from(_N, "BackupDescription", "SourceTableDetails"),
            type = "structure",
            name = "SourceTableDetails",
            target_id = id.from(_N, "SourceTableDetails"),
            target = M.SourceTableDetails,
        }),
        SourceTableFeatureDetails = schema.new({
            id = id.from(_N, "BackupDescription", "SourceTableFeatureDetails"),
            type = "structure",
            name = "SourceTableFeatureDetails",
            target_id = id.from(_N, "SourceTableFeatureDetails"),
            target = M.SourceTableFeatureDetails,
        }),
    },
})

M.BackupInUseException = schema.new({
    id = id.from(_N, "BackupInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "BackupInUseException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BackupNotFoundException = schema.new({
    id = id.from(_N, "BackupNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "BackupNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BackupSummary = schema.new({
    id = id.from(_N, "BackupSummary"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "BackupSummary", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        TableId = schema.new({
            id = id.from(_N, "BackupSummary", "TableId"),
            type = "string",
            name = "TableId",
            target_id = prelude.String.id,
        }),
        TableArn = schema.new({
            id = id.from(_N, "BackupSummary", "TableArn"),
            type = "string",
            name = "TableArn",
            target_id = prelude.String.id,
        }),
        BackupArn = schema.new({
            id = id.from(_N, "BackupSummary", "BackupArn"),
            type = "string",
            name = "BackupArn",
            target_id = prelude.String.id,
        }),
        BackupName = schema.new({
            id = id.from(_N, "BackupSummary", "BackupName"),
            type = "string",
            name = "BackupName",
            target_id = prelude.String.id,
        }),
        BackupCreationDateTime = schema.new({
            id = id.from(_N, "BackupSummary", "BackupCreationDateTime"),
            type = "timestamp",
            name = "BackupCreationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        BackupExpiryDateTime = schema.new({
            id = id.from(_N, "BackupSummary", "BackupExpiryDateTime"),
            type = "timestamp",
            name = "BackupExpiryDateTime",
            target_id = prelude.Timestamp.id,
        }),
        BackupStatus = schema.new({
            id = id.from(_N, "BackupSummary", "BackupStatus"),
            type = "string",
            name = "BackupStatus",
            target_id = prelude.String.id,
        }),
        BackupType = schema.new({
            id = id.from(_N, "BackupSummary", "BackupType"),
            type = "string",
            name = "BackupType",
            target_id = prelude.String.id,
        }),
        BackupSizeBytes = schema.new({
            id = id.from(_N, "BackupSummary", "BackupSizeBytes"),
            type = "long",
            name = "BackupSizeBytes",
            target_id = prelude.Long.id,
        }),
    },
})

M.Capacity = schema.new({
    id = id.from(_N, "Capacity"),
    type = "structure",
    members = {
        ReadCapacityUnits = schema.new({
            id = id.from(_N, "Capacity", "ReadCapacityUnits"),
            type = "double",
            name = "ReadCapacityUnits",
            target_id = prelude.Double.id,
        }),
        WriteCapacityUnits = schema.new({
            id = id.from(_N, "Capacity", "WriteCapacityUnits"),
            type = "double",
            name = "WriteCapacityUnits",
            target_id = prelude.Double.id,
        }),
        CapacityUnits = schema.new({
            id = id.from(_N, "Capacity", "CapacityUnits"),
            type = "double",
            name = "CapacityUnits",
            target_id = prelude.Double.id,
        }),
    },
})

M.ConsumedCapacity = schema.new({
    id = id.from(_N, "ConsumedCapacity"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "ConsumedCapacity", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        CapacityUnits = schema.new({
            id = id.from(_N, "ConsumedCapacity", "CapacityUnits"),
            type = "double",
            name = "CapacityUnits",
            target_id = prelude.Double.id,
        }),
        ReadCapacityUnits = schema.new({
            id = id.from(_N, "ConsumedCapacity", "ReadCapacityUnits"),
            type = "double",
            name = "ReadCapacityUnits",
            target_id = prelude.Double.id,
        }),
        WriteCapacityUnits = schema.new({
            id = id.from(_N, "ConsumedCapacity", "WriteCapacityUnits"),
            type = "double",
            name = "WriteCapacityUnits",
            target_id = prelude.Double.id,
        }),
        Table = schema.new({
            id = id.from(_N, "ConsumedCapacity", "Table"),
            type = "structure",
            name = "Table",
            target_id = id.from(_N, "Capacity"),
            target = M.Capacity,
        }),
        LocalSecondaryIndexes = schema.new({
            id = id.from(_N, "ConsumedCapacity", "LocalSecondaryIndexes"),
            type = "map",
            name = "LocalSecondaryIndexes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Capacity,
        }),
        GlobalSecondaryIndexes = schema.new({
            id = id.from(_N, "ConsumedCapacity", "GlobalSecondaryIndexes"),
            type = "map",
            name = "GlobalSecondaryIndexes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Capacity,
        }),
    },
})

M.InternalServerError = schema.new({
    id = id.from(_N, "InternalServerError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerError", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottlingReason = schema.new({
    id = id.from(_N, "ThrottlingReason"),
    type = "structure",
    members = {
        reason = schema.new({
            id = id.from(_N, "ThrottlingReason", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
        resource = schema.new({
            id = id.from(_N, "ThrottlingReason", "resource"),
            type = "string",
            name = "resource",
            target_id = prelude.String.id,
        }),
    },
})

M.RequestLimitExceeded = schema.new({
    id = id.from(_N, "RequestLimitExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RequestLimitExceeded", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        ThrottlingReasons = schema.new({
            id = id.from(_N, "RequestLimitExceeded", "ThrottlingReasons"),
            type = "list",
            name = "ThrottlingReasons",
            target_id = prelude.Document.id,
            list_member = M.ThrottlingReason,
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
        }),
        throttlingReasons = schema.new({
            id = id.from(_N, "ThrottlingException", "throttlingReasons"),
            type = "list",
            name = "throttlingReasons",
            target_id = prelude.Document.id,
            list_member = M.ThrottlingReason,
        }),
    },
})

M.InvalidEndpointException = schema.new({
    id = id.from(_N, "InvalidEndpointException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidEndpointException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ProvisionedThroughputExceededException = schema.new({
    id = id.from(_N, "ProvisionedThroughputExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ProvisionedThroughputExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        ThrottlingReasons = schema.new({
            id = id.from(_N, "ProvisionedThroughputExceededException", "ThrottlingReasons"),
            type = "list",
            name = "ThrottlingReasons",
            target_id = prelude.Document.id,
            list_member = M.ThrottlingReason,
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
        }),
    },
})

M.ItemCollectionSizeLimitExceededException = schema.new({
    id = id.from(_N, "ItemCollectionSizeLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ItemCollectionSizeLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicatedWriteConflictException = schema.new({
    id = id.from(_N, "ReplicatedWriteConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReplicatedWriteConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.BillingModeSummary = schema.new({
    id = id.from(_N, "BillingModeSummary"),
    type = "structure",
    members = {
        BillingMode = schema.new({
            id = id.from(_N, "BillingModeSummary", "BillingMode"),
            type = "string",
            name = "BillingMode",
            target_id = prelude.String.id,
        }),
        LastUpdateToPayPerRequestDateTime = schema.new({
            id = id.from(_N, "BillingModeSummary", "LastUpdateToPayPerRequestDateTime"),
            type = "timestamp",
            name = "LastUpdateToPayPerRequestDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.PointInTimeRecoveryDescription = schema.new({
    id = id.from(_N, "PointInTimeRecoveryDescription"),
    type = "structure",
    members = {
        PointInTimeRecoveryStatus = schema.new({
            id = id.from(_N, "PointInTimeRecoveryDescription", "PointInTimeRecoveryStatus"),
            type = "string",
            name = "PointInTimeRecoveryStatus",
            target_id = prelude.String.id,
        }),
        RecoveryPeriodInDays = schema.new({
            id = id.from(_N, "PointInTimeRecoveryDescription", "RecoveryPeriodInDays"),
            type = "integer",
            name = "RecoveryPeriodInDays",
            target_id = prelude.Integer.id,
        }),
        EarliestRestorableDateTime = schema.new({
            id = id.from(_N, "PointInTimeRecoveryDescription", "EarliestRestorableDateTime"),
            type = "timestamp",
            name = "EarliestRestorableDateTime",
            target_id = prelude.Timestamp.id,
        }),
        LatestRestorableDateTime = schema.new({
            id = id.from(_N, "PointInTimeRecoveryDescription", "LatestRestorableDateTime"),
            type = "timestamp",
            name = "LatestRestorableDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ContinuousBackupsDescription = schema.new({
    id = id.from(_N, "ContinuousBackupsDescription"),
    type = "structure",
    members = {
        ContinuousBackupsStatus = schema.new({
            id = id.from(_N, "ContinuousBackupsDescription", "ContinuousBackupsStatus"),
            type = "string",
            name = "ContinuousBackupsStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PointInTimeRecoveryDescription = schema.new({
            id = id.from(_N, "ContinuousBackupsDescription", "PointInTimeRecoveryDescription"),
            type = "structure",
            name = "PointInTimeRecoveryDescription",
            target_id = id.from(_N, "PointInTimeRecoveryDescription"),
            target = M.PointInTimeRecoveryDescription,
        }),
    },
})

M.ContinuousBackupsUnavailableException = schema.new({
    id = id.from(_N, "ContinuousBackupsUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ContinuousBackupsUnavailableException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ContributorInsightsSummary = schema.new({
    id = id.from(_N, "ContributorInsightsSummary"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "ContributorInsightsSummary", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        IndexName = schema.new({
            id = id.from(_N, "ContributorInsightsSummary", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
        }),
        ContributorInsightsStatus = schema.new({
            id = id.from(_N, "ContributorInsightsSummary", "ContributorInsightsStatus"),
            type = "string",
            name = "ContributorInsightsStatus",
            target_id = prelude.String.id,
        }),
        ContributorInsightsMode = schema.new({
            id = id.from(_N, "ContributorInsightsSummary", "ContributorInsightsMode"),
            type = "string",
            name = "ContributorInsightsMode",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateBackupInput = schema.new({
    id = id.from(_N, "CreateBackupInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "CreateBackupInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BackupName = schema.new({
            id = id.from(_N, "CreateBackupInput", "BackupName"),
            type = "string",
            name = "BackupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateBackupOutput = schema.new({
    id = id.from(_N, "CreateBackupOutput"),
    type = "structure",
    members = {
        BackupDetails = schema.new({
            id = id.from(_N, "CreateBackupOutput", "BackupDetails"),
            type = "structure",
            name = "BackupDetails",
            target_id = id.from(_N, "BackupDetails"),
            target = M.BackupDetails,
        }),
    },
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "LimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TableInUseException = schema.new({
    id = id.from(_N, "TableInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TableInUseException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TableNotFoundException = schema.new({
    id = id.from(_N, "TableNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TableNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.WarmThroughput = schema.new({
    id = id.from(_N, "WarmThroughput"),
    type = "structure",
    members = {
        ReadUnitsPerSecond = schema.new({
            id = id.from(_N, "WarmThroughput", "ReadUnitsPerSecond"),
            type = "long",
            name = "ReadUnitsPerSecond",
            target_id = prelude.Long.id,
        }),
        WriteUnitsPerSecond = schema.new({
            id = id.from(_N, "WarmThroughput", "WriteUnitsPerSecond"),
            type = "long",
            name = "WriteUnitsPerSecond",
            target_id = prelude.Long.id,
        }),
    },
})

M.CreateGlobalSecondaryIndexAction = schema.new({
    id = id.from(_N, "CreateGlobalSecondaryIndexAction"),
    type = "structure",
    members = {
        IndexName = schema.new({
            id = id.from(_N, "CreateGlobalSecondaryIndexAction", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeySchema = schema.new({
            id = id.from(_N, "CreateGlobalSecondaryIndexAction", "KeySchema"),
            type = "list",
            name = "KeySchema",
            target_id = prelude.Document.id,
            list_member = M.KeySchemaElement,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Projection = schema.new({
            id = id.from(_N, "CreateGlobalSecondaryIndexAction", "Projection"),
            type = "structure",
            name = "Projection",
            target_id = id.from(_N, "Projection"),
            target = M.Projection,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisionedThroughput = schema.new({
            id = id.from(_N, "CreateGlobalSecondaryIndexAction", "ProvisionedThroughput"),
            type = "structure",
            name = "ProvisionedThroughput",
            target_id = id.from(_N, "ProvisionedThroughput"),
            target = M.ProvisionedThroughput,
        }),
        OnDemandThroughput = schema.new({
            id = id.from(_N, "CreateGlobalSecondaryIndexAction", "OnDemandThroughput"),
            type = "structure",
            name = "OnDemandThroughput",
            target_id = id.from(_N, "OnDemandThroughput"),
            target = M.OnDemandThroughput,
        }),
        WarmThroughput = schema.new({
            id = id.from(_N, "CreateGlobalSecondaryIndexAction", "WarmThroughput"),
            type = "structure",
            name = "WarmThroughput",
            target_id = id.from(_N, "WarmThroughput"),
            target = M.WarmThroughput,
        }),
    },
})

M.Replica = schema.new({
    id = id.from(_N, "Replica"),
    type = "structure",
    members = {
        RegionName = schema.new({
            id = id.from(_N, "Replica", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateGlobalTableInput = schema.new({
    id = id.from(_N, "CreateGlobalTableInput"),
    type = "structure",
    members = {
        GlobalTableName = schema.new({
            id = id.from(_N, "CreateGlobalTableInput", "GlobalTableName"),
            type = "string",
            name = "GlobalTableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicationGroup = schema.new({
            id = id.from(_N, "CreateGlobalTableInput", "ReplicationGroup"),
            type = "list",
            name = "ReplicationGroup",
            target_id = prelude.Document.id,
            list_member = M.Replica,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OnDemandThroughputOverride = schema.new({
    id = id.from(_N, "OnDemandThroughputOverride"),
    type = "structure",
    members = {
        MaxReadRequestUnits = schema.new({
            id = id.from(_N, "OnDemandThroughputOverride", "MaxReadRequestUnits"),
            type = "long",
            name = "MaxReadRequestUnits",
            target_id = prelude.Long.id,
        }),
    },
})

M.ProvisionedThroughputOverride = schema.new({
    id = id.from(_N, "ProvisionedThroughputOverride"),
    type = "structure",
    members = {
        ReadCapacityUnits = schema.new({
            id = id.from(_N, "ProvisionedThroughputOverride", "ReadCapacityUnits"),
            type = "long",
            name = "ReadCapacityUnits",
            target_id = prelude.Long.id,
        }),
    },
})

M.GlobalSecondaryIndexWarmThroughputDescription = schema.new({
    id = id.from(_N, "GlobalSecondaryIndexWarmThroughputDescription"),
    type = "structure",
    members = {
        ReadUnitsPerSecond = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexWarmThroughputDescription", "ReadUnitsPerSecond"),
            type = "long",
            name = "ReadUnitsPerSecond",
            target_id = prelude.Long.id,
        }),
        WriteUnitsPerSecond = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexWarmThroughputDescription", "WriteUnitsPerSecond"),
            type = "long",
            name = "WriteUnitsPerSecond",
            target_id = prelude.Long.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexWarmThroughputDescription", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicaGlobalSecondaryIndexDescription = schema.new({
    id = id.from(_N, "ReplicaGlobalSecondaryIndexDescription"),
    type = "structure",
    members = {
        IndexName = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexDescription", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
        }),
        ProvisionedThroughputOverride = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexDescription", "ProvisionedThroughputOverride"),
            type = "structure",
            name = "ProvisionedThroughputOverride",
            target_id = id.from(_N, "ProvisionedThroughputOverride"),
            target = M.ProvisionedThroughputOverride,
        }),
        OnDemandThroughputOverride = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexDescription", "OnDemandThroughputOverride"),
            type = "structure",
            name = "OnDemandThroughputOverride",
            target_id = id.from(_N, "OnDemandThroughputOverride"),
            target = M.OnDemandThroughputOverride,
        }),
        WarmThroughput = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexDescription", "WarmThroughput"),
            type = "structure",
            name = "WarmThroughput",
            target_id = id.from(_N, "GlobalSecondaryIndexWarmThroughputDescription"),
            target = M.GlobalSecondaryIndexWarmThroughputDescription,
        }),
    },
})

M.TableClassSummary = schema.new({
    id = id.from(_N, "TableClassSummary"),
    type = "structure",
    members = {
        TableClass = schema.new({
            id = id.from(_N, "TableClassSummary", "TableClass"),
            type = "string",
            name = "TableClass",
            target_id = prelude.String.id,
        }),
        LastUpdateDateTime = schema.new({
            id = id.from(_N, "TableClassSummary", "LastUpdateDateTime"),
            type = "timestamp",
            name = "LastUpdateDateTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.TableWarmThroughputDescription = schema.new({
    id = id.from(_N, "TableWarmThroughputDescription"),
    type = "structure",
    members = {
        ReadUnitsPerSecond = schema.new({
            id = id.from(_N, "TableWarmThroughputDescription", "ReadUnitsPerSecond"),
            type = "long",
            name = "ReadUnitsPerSecond",
            target_id = prelude.Long.id,
        }),
        WriteUnitsPerSecond = schema.new({
            id = id.from(_N, "TableWarmThroughputDescription", "WriteUnitsPerSecond"),
            type = "long",
            name = "WriteUnitsPerSecond",
            target_id = prelude.Long.id,
        }),
        Status = schema.new({
            id = id.from(_N, "TableWarmThroughputDescription", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicaDescription = schema.new({
    id = id.from(_N, "ReplicaDescription"),
    type = "structure",
    members = {
        RegionName = schema.new({
            id = id.from(_N, "ReplicaDescription", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
        }),
        ReplicaStatus = schema.new({
            id = id.from(_N, "ReplicaDescription", "ReplicaStatus"),
            type = "string",
            name = "ReplicaStatus",
            target_id = prelude.String.id,
        }),
        ReplicaArn = schema.new({
            id = id.from(_N, "ReplicaDescription", "ReplicaArn"),
            type = "string",
            name = "ReplicaArn",
            target_id = prelude.String.id,
        }),
        ReplicaStatusDescription = schema.new({
            id = id.from(_N, "ReplicaDescription", "ReplicaStatusDescription"),
            type = "string",
            name = "ReplicaStatusDescription",
            target_id = prelude.String.id,
        }),
        ReplicaStatusPercentProgress = schema.new({
            id = id.from(_N, "ReplicaDescription", "ReplicaStatusPercentProgress"),
            type = "string",
            name = "ReplicaStatusPercentProgress",
            target_id = prelude.String.id,
        }),
        KMSMasterKeyId = schema.new({
            id = id.from(_N, "ReplicaDescription", "KMSMasterKeyId"),
            type = "string",
            name = "KMSMasterKeyId",
            target_id = prelude.String.id,
        }),
        ProvisionedThroughputOverride = schema.new({
            id = id.from(_N, "ReplicaDescription", "ProvisionedThroughputOverride"),
            type = "structure",
            name = "ProvisionedThroughputOverride",
            target_id = id.from(_N, "ProvisionedThroughputOverride"),
            target = M.ProvisionedThroughputOverride,
        }),
        OnDemandThroughputOverride = schema.new({
            id = id.from(_N, "ReplicaDescription", "OnDemandThroughputOverride"),
            type = "structure",
            name = "OnDemandThroughputOverride",
            target_id = id.from(_N, "OnDemandThroughputOverride"),
            target = M.OnDemandThroughputOverride,
        }),
        WarmThroughput = schema.new({
            id = id.from(_N, "ReplicaDescription", "WarmThroughput"),
            type = "structure",
            name = "WarmThroughput",
            target_id = id.from(_N, "TableWarmThroughputDescription"),
            target = M.TableWarmThroughputDescription,
        }),
        GlobalSecondaryIndexes = schema.new({
            id = id.from(_N, "ReplicaDescription", "GlobalSecondaryIndexes"),
            type = "list",
            name = "GlobalSecondaryIndexes",
            target_id = prelude.Document.id,
            list_member = M.ReplicaGlobalSecondaryIndexDescription,
        }),
        ReplicaInaccessibleDateTime = schema.new({
            id = id.from(_N, "ReplicaDescription", "ReplicaInaccessibleDateTime"),
            type = "timestamp",
            name = "ReplicaInaccessibleDateTime",
            target_id = prelude.Timestamp.id,
        }),
        ReplicaTableClassSummary = schema.new({
            id = id.from(_N, "ReplicaDescription", "ReplicaTableClassSummary"),
            type = "structure",
            name = "ReplicaTableClassSummary",
            target_id = id.from(_N, "TableClassSummary"),
            target = M.TableClassSummary,
        }),
        GlobalTableSettingsReplicationMode = schema.new({
            id = id.from(_N, "ReplicaDescription", "GlobalTableSettingsReplicationMode"),
            type = "string",
            name = "GlobalTableSettingsReplicationMode",
            target_id = prelude.String.id,
        }),
    },
})

M.GlobalTableDescription = schema.new({
    id = id.from(_N, "GlobalTableDescription"),
    type = "structure",
    members = {
        ReplicationGroup = schema.new({
            id = id.from(_N, "GlobalTableDescription", "ReplicationGroup"),
            type = "list",
            name = "ReplicationGroup",
            target_id = prelude.Document.id,
            list_member = M.ReplicaDescription,
        }),
        GlobalTableArn = schema.new({
            id = id.from(_N, "GlobalTableDescription", "GlobalTableArn"),
            type = "string",
            name = "GlobalTableArn",
            target_id = prelude.String.id,
        }),
        CreationDateTime = schema.new({
            id = id.from(_N, "GlobalTableDescription", "CreationDateTime"),
            type = "timestamp",
            name = "CreationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        GlobalTableStatus = schema.new({
            id = id.from(_N, "GlobalTableDescription", "GlobalTableStatus"),
            type = "string",
            name = "GlobalTableStatus",
            target_id = prelude.String.id,
        }),
        GlobalTableName = schema.new({
            id = id.from(_N, "GlobalTableDescription", "GlobalTableName"),
            type = "string",
            name = "GlobalTableName",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateGlobalTableOutput = schema.new({
    id = id.from(_N, "CreateGlobalTableOutput"),
    type = "structure",
    members = {
        GlobalTableDescription = schema.new({
            id = id.from(_N, "CreateGlobalTableOutput", "GlobalTableDescription"),
            type = "structure",
            name = "GlobalTableDescription",
            target_id = id.from(_N, "GlobalTableDescription"),
            target = M.GlobalTableDescription,
        }),
    },
})

M.GlobalTableAlreadyExistsException = schema.new({
    id = id.from(_N, "GlobalTableAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "GlobalTableAlreadyExistsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateGlobalTableWitnessGroupMemberAction = schema.new({
    id = id.from(_N, "CreateGlobalTableWitnessGroupMemberAction"),
    type = "structure",
    members = {
        RegionName = schema.new({
            id = id.from(_N, "CreateGlobalTableWitnessGroupMemberAction", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateReplicaAction = schema.new({
    id = id.from(_N, "CreateReplicaAction"),
    type = "structure",
    members = {
        RegionName = schema.new({
            id = id.from(_N, "CreateReplicaAction", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReplicaGlobalSecondaryIndex = schema.new({
    id = id.from(_N, "ReplicaGlobalSecondaryIndex"),
    type = "structure",
    members = {
        IndexName = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndex", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisionedThroughputOverride = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndex", "ProvisionedThroughputOverride"),
            type = "structure",
            name = "ProvisionedThroughputOverride",
            target_id = id.from(_N, "ProvisionedThroughputOverride"),
            target = M.ProvisionedThroughputOverride,
        }),
        OnDemandThroughputOverride = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndex", "OnDemandThroughputOverride"),
            type = "structure",
            name = "OnDemandThroughputOverride",
            target_id = id.from(_N, "OnDemandThroughputOverride"),
            target = M.OnDemandThroughputOverride,
        }),
    },
})

M.CreateReplicationGroupMemberAction = schema.new({
    id = id.from(_N, "CreateReplicationGroupMemberAction"),
    type = "structure",
    members = {
        RegionName = schema.new({
            id = id.from(_N, "CreateReplicationGroupMemberAction", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KMSMasterKeyId = schema.new({
            id = id.from(_N, "CreateReplicationGroupMemberAction", "KMSMasterKeyId"),
            type = "string",
            name = "KMSMasterKeyId",
            target_id = prelude.String.id,
        }),
        ProvisionedThroughputOverride = schema.new({
            id = id.from(_N, "CreateReplicationGroupMemberAction", "ProvisionedThroughputOverride"),
            type = "structure",
            name = "ProvisionedThroughputOverride",
            target_id = id.from(_N, "ProvisionedThroughputOverride"),
            target = M.ProvisionedThroughputOverride,
        }),
        OnDemandThroughputOverride = schema.new({
            id = id.from(_N, "CreateReplicationGroupMemberAction", "OnDemandThroughputOverride"),
            type = "structure",
            name = "OnDemandThroughputOverride",
            target_id = id.from(_N, "OnDemandThroughputOverride"),
            target = M.OnDemandThroughputOverride,
        }),
        GlobalSecondaryIndexes = schema.new({
            id = id.from(_N, "CreateReplicationGroupMemberAction", "GlobalSecondaryIndexes"),
            type = "list",
            name = "GlobalSecondaryIndexes",
            target_id = prelude.Document.id,
            list_member = M.ReplicaGlobalSecondaryIndex,
        }),
        TableClassOverride = schema.new({
            id = id.from(_N, "CreateReplicationGroupMemberAction", "TableClassOverride"),
            type = "string",
            name = "TableClassOverride",
            target_id = prelude.String.id,
        }),
    },
})

M.GlobalSecondaryIndex = schema.new({
    id = id.from(_N, "GlobalSecondaryIndex"),
    type = "structure",
    members = {
        IndexName = schema.new({
            id = id.from(_N, "GlobalSecondaryIndex", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeySchema = schema.new({
            id = id.from(_N, "GlobalSecondaryIndex", "KeySchema"),
            type = "list",
            name = "KeySchema",
            target_id = prelude.Document.id,
            list_member = M.KeySchemaElement,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Projection = schema.new({
            id = id.from(_N, "GlobalSecondaryIndex", "Projection"),
            type = "structure",
            name = "Projection",
            target_id = id.from(_N, "Projection"),
            target = M.Projection,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisionedThroughput = schema.new({
            id = id.from(_N, "GlobalSecondaryIndex", "ProvisionedThroughput"),
            type = "structure",
            name = "ProvisionedThroughput",
            target_id = id.from(_N, "ProvisionedThroughput"),
            target = M.ProvisionedThroughput,
        }),
        OnDemandThroughput = schema.new({
            id = id.from(_N, "GlobalSecondaryIndex", "OnDemandThroughput"),
            type = "structure",
            name = "OnDemandThroughput",
            target_id = id.from(_N, "OnDemandThroughput"),
            target = M.OnDemandThroughput,
        }),
        WarmThroughput = schema.new({
            id = id.from(_N, "GlobalSecondaryIndex", "WarmThroughput"),
            type = "structure",
            name = "WarmThroughput",
            target_id = id.from(_N, "WarmThroughput"),
            target = M.WarmThroughput,
        }),
    },
})

M.LocalSecondaryIndex = schema.new({
    id = id.from(_N, "LocalSecondaryIndex"),
    type = "structure",
    members = {
        IndexName = schema.new({
            id = id.from(_N, "LocalSecondaryIndex", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeySchema = schema.new({
            id = id.from(_N, "LocalSecondaryIndex", "KeySchema"),
            type = "list",
            name = "KeySchema",
            target_id = prelude.Document.id,
            list_member = M.KeySchemaElement,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Projection = schema.new({
            id = id.from(_N, "LocalSecondaryIndex", "Projection"),
            type = "structure",
            name = "Projection",
            target_id = id.from(_N, "Projection"),
            target = M.Projection,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SSESpecification = schema.new({
    id = id.from(_N, "SSESpecification"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "SSESpecification", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
        }),
        SSEType = schema.new({
            id = id.from(_N, "SSESpecification", "SSEType"),
            type = "string",
            name = "SSEType",
            target_id = prelude.String.id,
        }),
        KMSMasterKeyId = schema.new({
            id = id.from(_N, "SSESpecification", "KMSMasterKeyId"),
            type = "string",
            name = "KMSMasterKeyId",
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateTableInput = schema.new({
    id = id.from(_N, "CreateTableInput"),
    type = "structure",
    members = {
        AttributeDefinitions = schema.new({
            id = id.from(_N, "CreateTableInput", "AttributeDefinitions"),
            type = "list",
            name = "AttributeDefinitions",
            target_id = prelude.Document.id,
            list_member = M.AttributeDefinition,
        }),
        TableName = schema.new({
            id = id.from(_N, "CreateTableInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeySchema = schema.new({
            id = id.from(_N, "CreateTableInput", "KeySchema"),
            type = "list",
            name = "KeySchema",
            target_id = prelude.Document.id,
            list_member = M.KeySchemaElement,
        }),
        LocalSecondaryIndexes = schema.new({
            id = id.from(_N, "CreateTableInput", "LocalSecondaryIndexes"),
            type = "list",
            name = "LocalSecondaryIndexes",
            target_id = prelude.Document.id,
            list_member = M.LocalSecondaryIndex,
        }),
        GlobalSecondaryIndexes = schema.new({
            id = id.from(_N, "CreateTableInput", "GlobalSecondaryIndexes"),
            type = "list",
            name = "GlobalSecondaryIndexes",
            target_id = prelude.Document.id,
            list_member = M.GlobalSecondaryIndex,
        }),
        BillingMode = schema.new({
            id = id.from(_N, "CreateTableInput", "BillingMode"),
            type = "string",
            name = "BillingMode",
            target_id = prelude.String.id,
        }),
        ProvisionedThroughput = schema.new({
            id = id.from(_N, "CreateTableInput", "ProvisionedThroughput"),
            type = "structure",
            name = "ProvisionedThroughput",
            target_id = id.from(_N, "ProvisionedThroughput"),
            target = M.ProvisionedThroughput,
        }),
        StreamSpecification = schema.new({
            id = id.from(_N, "CreateTableInput", "StreamSpecification"),
            type = "structure",
            name = "StreamSpecification",
            target_id = id.from(_N, "StreamSpecification"),
            target = M.StreamSpecification,
        }),
        SSESpecification = schema.new({
            id = id.from(_N, "CreateTableInput", "SSESpecification"),
            type = "structure",
            name = "SSESpecification",
            target_id = id.from(_N, "SSESpecification"),
            target = M.SSESpecification,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateTableInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        TableClass = schema.new({
            id = id.from(_N, "CreateTableInput", "TableClass"),
            type = "string",
            name = "TableClass",
            target_id = prelude.String.id,
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "CreateTableInput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
        }),
        WarmThroughput = schema.new({
            id = id.from(_N, "CreateTableInput", "WarmThroughput"),
            type = "structure",
            name = "WarmThroughput",
            target_id = id.from(_N, "WarmThroughput"),
            target = M.WarmThroughput,
        }),
        ResourcePolicy = schema.new({
            id = id.from(_N, "CreateTableInput", "ResourcePolicy"),
            type = "string",
            name = "ResourcePolicy",
            target_id = prelude.String.id,
        }),
        OnDemandThroughput = schema.new({
            id = id.from(_N, "CreateTableInput", "OnDemandThroughput"),
            type = "structure",
            name = "OnDemandThroughput",
            target_id = id.from(_N, "OnDemandThroughput"),
            target = M.OnDemandThroughput,
        }),
        GlobalTableSourceArn = schema.new({
            id = id.from(_N, "CreateTableInput", "GlobalTableSourceArn"),
            type = "string",
            name = "GlobalTableSourceArn",
            target_id = prelude.String.id,
        }),
        GlobalTableSettingsReplicationMode = schema.new({
            id = id.from(_N, "CreateTableInput", "GlobalTableSettingsReplicationMode"),
            type = "string",
            name = "GlobalTableSettingsReplicationMode",
            target_id = prelude.String.id,
        }),
    },
})

M.ProvisionedThroughputDescription = schema.new({
    id = id.from(_N, "ProvisionedThroughputDescription"),
    type = "structure",
    members = {
        LastIncreaseDateTime = schema.new({
            id = id.from(_N, "ProvisionedThroughputDescription", "LastIncreaseDateTime"),
            type = "timestamp",
            name = "LastIncreaseDateTime",
            target_id = prelude.Timestamp.id,
        }),
        LastDecreaseDateTime = schema.new({
            id = id.from(_N, "ProvisionedThroughputDescription", "LastDecreaseDateTime"),
            type = "timestamp",
            name = "LastDecreaseDateTime",
            target_id = prelude.Timestamp.id,
        }),
        NumberOfDecreasesToday = schema.new({
            id = id.from(_N, "ProvisionedThroughputDescription", "NumberOfDecreasesToday"),
            type = "long",
            name = "NumberOfDecreasesToday",
            target_id = prelude.Long.id,
        }),
        ReadCapacityUnits = schema.new({
            id = id.from(_N, "ProvisionedThroughputDescription", "ReadCapacityUnits"),
            type = "long",
            name = "ReadCapacityUnits",
            target_id = prelude.Long.id,
        }),
        WriteCapacityUnits = schema.new({
            id = id.from(_N, "ProvisionedThroughputDescription", "WriteCapacityUnits"),
            type = "long",
            name = "WriteCapacityUnits",
            target_id = prelude.Long.id,
        }),
    },
})

M.GlobalSecondaryIndexDescription = schema.new({
    id = id.from(_N, "GlobalSecondaryIndexDescription"),
    type = "structure",
    members = {
        IndexName = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexDescription", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
        }),
        KeySchema = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexDescription", "KeySchema"),
            type = "list",
            name = "KeySchema",
            target_id = prelude.Document.id,
            list_member = M.KeySchemaElement,
        }),
        Projection = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexDescription", "Projection"),
            type = "structure",
            name = "Projection",
            target_id = id.from(_N, "Projection"),
            target = M.Projection,
        }),
        IndexStatus = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexDescription", "IndexStatus"),
            type = "string",
            name = "IndexStatus",
            target_id = prelude.String.id,
        }),
        Backfilling = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexDescription", "Backfilling"),
            type = "boolean",
            name = "Backfilling",
            target_id = prelude.Boolean.id,
        }),
        ProvisionedThroughput = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexDescription", "ProvisionedThroughput"),
            type = "structure",
            name = "ProvisionedThroughput",
            target_id = id.from(_N, "ProvisionedThroughputDescription"),
            target = M.ProvisionedThroughputDescription,
        }),
        IndexSizeBytes = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexDescription", "IndexSizeBytes"),
            type = "long",
            name = "IndexSizeBytes",
            target_id = prelude.Long.id,
        }),
        ItemCount = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexDescription", "ItemCount"),
            type = "long",
            name = "ItemCount",
            target_id = prelude.Long.id,
        }),
        IndexArn = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexDescription", "IndexArn"),
            type = "string",
            name = "IndexArn",
            target_id = prelude.String.id,
        }),
        OnDemandThroughput = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexDescription", "OnDemandThroughput"),
            type = "structure",
            name = "OnDemandThroughput",
            target_id = id.from(_N, "OnDemandThroughput"),
            target = M.OnDemandThroughput,
        }),
        WarmThroughput = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexDescription", "WarmThroughput"),
            type = "structure",
            name = "WarmThroughput",
            target_id = id.from(_N, "GlobalSecondaryIndexWarmThroughputDescription"),
            target = M.GlobalSecondaryIndexWarmThroughputDescription,
        }),
    },
})

M.GlobalTableWitnessDescription = schema.new({
    id = id.from(_N, "GlobalTableWitnessDescription"),
    type = "structure",
    members = {
        RegionName = schema.new({
            id = id.from(_N, "GlobalTableWitnessDescription", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
        }),
        WitnessStatus = schema.new({
            id = id.from(_N, "GlobalTableWitnessDescription", "WitnessStatus"),
            type = "string",
            name = "WitnessStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.LocalSecondaryIndexDescription = schema.new({
    id = id.from(_N, "LocalSecondaryIndexDescription"),
    type = "structure",
    members = {
        IndexName = schema.new({
            id = id.from(_N, "LocalSecondaryIndexDescription", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
        }),
        KeySchema = schema.new({
            id = id.from(_N, "LocalSecondaryIndexDescription", "KeySchema"),
            type = "list",
            name = "KeySchema",
            target_id = prelude.Document.id,
            list_member = M.KeySchemaElement,
        }),
        Projection = schema.new({
            id = id.from(_N, "LocalSecondaryIndexDescription", "Projection"),
            type = "structure",
            name = "Projection",
            target_id = id.from(_N, "Projection"),
            target = M.Projection,
        }),
        IndexSizeBytes = schema.new({
            id = id.from(_N, "LocalSecondaryIndexDescription", "IndexSizeBytes"),
            type = "long",
            name = "IndexSizeBytes",
            target_id = prelude.Long.id,
        }),
        ItemCount = schema.new({
            id = id.from(_N, "LocalSecondaryIndexDescription", "ItemCount"),
            type = "long",
            name = "ItemCount",
            target_id = prelude.Long.id,
        }),
        IndexArn = schema.new({
            id = id.from(_N, "LocalSecondaryIndexDescription", "IndexArn"),
            type = "string",
            name = "IndexArn",
            target_id = prelude.String.id,
        }),
    },
})

M.RestoreSummary = schema.new({
    id = id.from(_N, "RestoreSummary"),
    type = "structure",
    members = {
        SourceBackupArn = schema.new({
            id = id.from(_N, "RestoreSummary", "SourceBackupArn"),
            type = "string",
            name = "SourceBackupArn",
            target_id = prelude.String.id,
        }),
        SourceTableArn = schema.new({
            id = id.from(_N, "RestoreSummary", "SourceTableArn"),
            type = "string",
            name = "SourceTableArn",
            target_id = prelude.String.id,
        }),
        RestoreDateTime = schema.new({
            id = id.from(_N, "RestoreSummary", "RestoreDateTime"),
            type = "timestamp",
            name = "RestoreDateTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RestoreInProgress = schema.new({
            id = id.from(_N, "RestoreSummary", "RestoreInProgress"),
            type = "boolean",
            name = "RestoreInProgress",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TableDescription = schema.new({
    id = id.from(_N, "TableDescription"),
    type = "structure",
    members = {
        AttributeDefinitions = schema.new({
            id = id.from(_N, "TableDescription", "AttributeDefinitions"),
            type = "list",
            name = "AttributeDefinitions",
            target_id = prelude.Document.id,
            list_member = M.AttributeDefinition,
        }),
        TableName = schema.new({
            id = id.from(_N, "TableDescription", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        KeySchema = schema.new({
            id = id.from(_N, "TableDescription", "KeySchema"),
            type = "list",
            name = "KeySchema",
            target_id = prelude.Document.id,
            list_member = M.KeySchemaElement,
        }),
        TableStatus = schema.new({
            id = id.from(_N, "TableDescription", "TableStatus"),
            type = "string",
            name = "TableStatus",
            target_id = prelude.String.id,
        }),
        CreationDateTime = schema.new({
            id = id.from(_N, "TableDescription", "CreationDateTime"),
            type = "timestamp",
            name = "CreationDateTime",
            target_id = prelude.Timestamp.id,
        }),
        ProvisionedThroughput = schema.new({
            id = id.from(_N, "TableDescription", "ProvisionedThroughput"),
            type = "structure",
            name = "ProvisionedThroughput",
            target_id = id.from(_N, "ProvisionedThroughputDescription"),
            target = M.ProvisionedThroughputDescription,
        }),
        TableSizeBytes = schema.new({
            id = id.from(_N, "TableDescription", "TableSizeBytes"),
            type = "long",
            name = "TableSizeBytes",
            target_id = prelude.Long.id,
        }),
        ItemCount = schema.new({
            id = id.from(_N, "TableDescription", "ItemCount"),
            type = "long",
            name = "ItemCount",
            target_id = prelude.Long.id,
        }),
        TableArn = schema.new({
            id = id.from(_N, "TableDescription", "TableArn"),
            type = "string",
            name = "TableArn",
            target_id = prelude.String.id,
        }),
        TableId = schema.new({
            id = id.from(_N, "TableDescription", "TableId"),
            type = "string",
            name = "TableId",
            target_id = prelude.String.id,
        }),
        BillingModeSummary = schema.new({
            id = id.from(_N, "TableDescription", "BillingModeSummary"),
            type = "structure",
            name = "BillingModeSummary",
            target_id = id.from(_N, "BillingModeSummary"),
            target = M.BillingModeSummary,
        }),
        LocalSecondaryIndexes = schema.new({
            id = id.from(_N, "TableDescription", "LocalSecondaryIndexes"),
            type = "list",
            name = "LocalSecondaryIndexes",
            target_id = prelude.Document.id,
            list_member = M.LocalSecondaryIndexDescription,
        }),
        GlobalSecondaryIndexes = schema.new({
            id = id.from(_N, "TableDescription", "GlobalSecondaryIndexes"),
            type = "list",
            name = "GlobalSecondaryIndexes",
            target_id = prelude.Document.id,
            list_member = M.GlobalSecondaryIndexDescription,
        }),
        StreamSpecification = schema.new({
            id = id.from(_N, "TableDescription", "StreamSpecification"),
            type = "structure",
            name = "StreamSpecification",
            target_id = id.from(_N, "StreamSpecification"),
            target = M.StreamSpecification,
        }),
        LatestStreamLabel = schema.new({
            id = id.from(_N, "TableDescription", "LatestStreamLabel"),
            type = "string",
            name = "LatestStreamLabel",
            target_id = prelude.String.id,
        }),
        LatestStreamArn = schema.new({
            id = id.from(_N, "TableDescription", "LatestStreamArn"),
            type = "string",
            name = "LatestStreamArn",
            target_id = prelude.String.id,
        }),
        GlobalTableVersion = schema.new({
            id = id.from(_N, "TableDescription", "GlobalTableVersion"),
            type = "string",
            name = "GlobalTableVersion",
            target_id = prelude.String.id,
        }),
        Replicas = schema.new({
            id = id.from(_N, "TableDescription", "Replicas"),
            type = "list",
            name = "Replicas",
            target_id = prelude.Document.id,
            list_member = M.ReplicaDescription,
        }),
        GlobalTableWitnesses = schema.new({
            id = id.from(_N, "TableDescription", "GlobalTableWitnesses"),
            type = "list",
            name = "GlobalTableWitnesses",
            target_id = prelude.Document.id,
            list_member = M.GlobalTableWitnessDescription,
        }),
        GlobalTableSettingsReplicationMode = schema.new({
            id = id.from(_N, "TableDescription", "GlobalTableSettingsReplicationMode"),
            type = "string",
            name = "GlobalTableSettingsReplicationMode",
            target_id = prelude.String.id,
        }),
        RestoreSummary = schema.new({
            id = id.from(_N, "TableDescription", "RestoreSummary"),
            type = "structure",
            name = "RestoreSummary",
            target_id = id.from(_N, "RestoreSummary"),
            target = M.RestoreSummary,
        }),
        SSEDescription = schema.new({
            id = id.from(_N, "TableDescription", "SSEDescription"),
            type = "structure",
            name = "SSEDescription",
            target_id = id.from(_N, "SSEDescription"),
            target = M.SSEDescription,
        }),
        ArchivalSummary = schema.new({
            id = id.from(_N, "TableDescription", "ArchivalSummary"),
            type = "structure",
            name = "ArchivalSummary",
            target_id = id.from(_N, "ArchivalSummary"),
            target = M.ArchivalSummary,
        }),
        TableClassSummary = schema.new({
            id = id.from(_N, "TableDescription", "TableClassSummary"),
            type = "structure",
            name = "TableClassSummary",
            target_id = id.from(_N, "TableClassSummary"),
            target = M.TableClassSummary,
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "TableDescription", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
        }),
        OnDemandThroughput = schema.new({
            id = id.from(_N, "TableDescription", "OnDemandThroughput"),
            type = "structure",
            name = "OnDemandThroughput",
            target_id = id.from(_N, "OnDemandThroughput"),
            target = M.OnDemandThroughput,
        }),
        WarmThroughput = schema.new({
            id = id.from(_N, "TableDescription", "WarmThroughput"),
            type = "structure",
            name = "WarmThroughput",
            target_id = id.from(_N, "TableWarmThroughputDescription"),
            target = M.TableWarmThroughputDescription,
        }),
        MultiRegionConsistency = schema.new({
            id = id.from(_N, "TableDescription", "MultiRegionConsistency"),
            type = "string",
            name = "MultiRegionConsistency",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTableOutput = schema.new({
    id = id.from(_N, "CreateTableOutput"),
    type = "structure",
    members = {
        TableDescription = schema.new({
            id = id.from(_N, "CreateTableOutput", "TableDescription"),
            type = "structure",
            name = "TableDescription",
            target_id = id.from(_N, "TableDescription"),
            target = M.TableDescription,
        }),
    },
})

M.ResourceInUseException = schema.new({
    id = id.from(_N, "ResourceInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceInUseException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CsvOptions = schema.new({
    id = id.from(_N, "CsvOptions"),
    type = "structure",
    members = {
        Delimiter = schema.new({
            id = id.from(_N, "CsvOptions", "Delimiter"),
            type = "string",
            name = "Delimiter",
            target_id = prelude.String.id,
        }),
        HeaderList = schema.new({
            id = id.from(_N, "CsvOptions", "HeaderList"),
            type = "list",
            name = "HeaderList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DeleteBackupInput = schema.new({
    id = id.from(_N, "DeleteBackupInput"),
    type = "structure",
    members = {
        BackupArn = schema.new({
            id = id.from(_N, "DeleteBackupInput", "BackupArn"),
            type = "string",
            name = "BackupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteBackupOutput = schema.new({
    id = id.from(_N, "DeleteBackupOutput"),
    type = "structure",
    members = {
        BackupDescription = schema.new({
            id = id.from(_N, "DeleteBackupOutput", "BackupDescription"),
            type = "structure",
            name = "BackupDescription",
            target_id = id.from(_N, "BackupDescription"),
            target = M.BackupDescription,
        }),
    },
})

M.DeleteGlobalSecondaryIndexAction = schema.new({
    id = id.from(_N, "DeleteGlobalSecondaryIndexAction"),
    type = "structure",
    members = {
        IndexName = schema.new({
            id = id.from(_N, "DeleteGlobalSecondaryIndexAction", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteGlobalTableWitnessGroupMemberAction = schema.new({
    id = id.from(_N, "DeleteGlobalTableWitnessGroupMemberAction"),
    type = "structure",
    members = {
        RegionName = schema.new({
            id = id.from(_N, "DeleteGlobalTableWitnessGroupMemberAction", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TransactionConflictException = schema.new({
    id = id.from(_N, "TransactionConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TransactionConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteReplicaAction = schema.new({
    id = id.from(_N, "DeleteReplicaAction"),
    type = "structure",
    members = {
        RegionName = schema.new({
            id = id.from(_N, "DeleteReplicaAction", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteReplicationGroupMemberAction = schema.new({
    id = id.from(_N, "DeleteReplicationGroupMemberAction"),
    type = "structure",
    members = {
        RegionName = schema.new({
            id = id.from(_N, "DeleteReplicationGroupMemberAction", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteResourcePolicyInput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "DeleteResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExpectedRevisionId = schema.new({
            id = id.from(_N, "DeleteResourcePolicyInput", "ExpectedRevisionId"),
            type = "string",
            name = "ExpectedRevisionId",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteResourcePolicyOutput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyOutput"),
    type = "structure",
    members = {
        RevisionId = schema.new({
            id = id.from(_N, "DeleteResourcePolicyOutput", "RevisionId"),
            type = "string",
            name = "RevisionId",
            target_id = prelude.String.id,
        }),
    },
})

M.PolicyNotFoundException = schema.new({
    id = id.from(_N, "PolicyNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PolicyNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteTableInput = schema.new({
    id = id.from(_N, "DeleteTableInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "DeleteTableInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteTableOutput = schema.new({
    id = id.from(_N, "DeleteTableOutput"),
    type = "structure",
    members = {
        TableDescription = schema.new({
            id = id.from(_N, "DeleteTableOutput", "TableDescription"),
            type = "structure",
            name = "TableDescription",
            target_id = id.from(_N, "TableDescription"),
            target = M.TableDescription,
        }),
    },
})

M.DescribeBackupInput = schema.new({
    id = id.from(_N, "DescribeBackupInput"),
    type = "structure",
    members = {
        BackupArn = schema.new({
            id = id.from(_N, "DescribeBackupInput", "BackupArn"),
            type = "string",
            name = "BackupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeBackupOutput = schema.new({
    id = id.from(_N, "DescribeBackupOutput"),
    type = "structure",
    members = {
        BackupDescription = schema.new({
            id = id.from(_N, "DescribeBackupOutput", "BackupDescription"),
            type = "structure",
            name = "BackupDescription",
            target_id = id.from(_N, "BackupDescription"),
            target = M.BackupDescription,
        }),
    },
})

M.DescribeContinuousBackupsInput = schema.new({
    id = id.from(_N, "DescribeContinuousBackupsInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "DescribeContinuousBackupsInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeContinuousBackupsOutput = schema.new({
    id = id.from(_N, "DescribeContinuousBackupsOutput"),
    type = "structure",
    members = {
        ContinuousBackupsDescription = schema.new({
            id = id.from(_N, "DescribeContinuousBackupsOutput", "ContinuousBackupsDescription"),
            type = "structure",
            name = "ContinuousBackupsDescription",
            target_id = id.from(_N, "ContinuousBackupsDescription"),
            target = M.ContinuousBackupsDescription,
        }),
    },
})

M.DescribeContributorInsightsInput = schema.new({
    id = id.from(_N, "DescribeContributorInsightsInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "DescribeContributorInsightsInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IndexName = schema.new({
            id = id.from(_N, "DescribeContributorInsightsInput", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
        }),
    },
})

M.FailureException = schema.new({
    id = id.from(_N, "FailureException"),
    type = "structure",
    members = {
        ExceptionName = schema.new({
            id = id.from(_N, "FailureException", "ExceptionName"),
            type = "string",
            name = "ExceptionName",
            target_id = prelude.String.id,
        }),
        ExceptionDescription = schema.new({
            id = id.from(_N, "FailureException", "ExceptionDescription"),
            type = "string",
            name = "ExceptionDescription",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeContributorInsightsOutput = schema.new({
    id = id.from(_N, "DescribeContributorInsightsOutput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "DescribeContributorInsightsOutput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        IndexName = schema.new({
            id = id.from(_N, "DescribeContributorInsightsOutput", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
        }),
        ContributorInsightsRuleList = schema.new({
            id = id.from(_N, "DescribeContributorInsightsOutput", "ContributorInsightsRuleList"),
            type = "list",
            name = "ContributorInsightsRuleList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ContributorInsightsStatus = schema.new({
            id = id.from(_N, "DescribeContributorInsightsOutput", "ContributorInsightsStatus"),
            type = "string",
            name = "ContributorInsightsStatus",
            target_id = prelude.String.id,
        }),
        LastUpdateDateTime = schema.new({
            id = id.from(_N, "DescribeContributorInsightsOutput", "LastUpdateDateTime"),
            type = "timestamp",
            name = "LastUpdateDateTime",
            target_id = prelude.Timestamp.id,
        }),
        FailureException = schema.new({
            id = id.from(_N, "DescribeContributorInsightsOutput", "FailureException"),
            type = "structure",
            name = "FailureException",
            target_id = id.from(_N, "FailureException"),
            target = M.FailureException,
        }),
        ContributorInsightsMode = schema.new({
            id = id.from(_N, "DescribeContributorInsightsOutput", "ContributorInsightsMode"),
            type = "string",
            name = "ContributorInsightsMode",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeEndpointsInput = schema.new({
    id = id.from(_N, "DescribeEndpointsRequest"),
    type = "structure",
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CachePeriodInMinutes = schema.new({
            id = id.from(_N, "Endpoint", "CachePeriodInMinutes"),
            type = "long",
            name = "CachePeriodInMinutes",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.DescribeEndpointsOutput = schema.new({
    id = id.from(_N, "DescribeEndpointsResponse"),
    type = "structure",
    members = {
        Endpoints = schema.new({
            id = id.from(_N, "DescribeEndpointsOutput", "Endpoints"),
            type = "list",
            name = "Endpoints",
            target_id = prelude.Document.id,
            list_member = M.Endpoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeExportInput = schema.new({
    id = id.from(_N, "DescribeExportInput"),
    type = "structure",
    members = {
        ExportArn = schema.new({
            id = id.from(_N, "DescribeExportInput", "ExportArn"),
            type = "string",
            name = "ExportArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IncrementalExportSpecification = schema.new({
    id = id.from(_N, "IncrementalExportSpecification"),
    type = "structure",
    members = {
        ExportFromTime = schema.new({
            id = id.from(_N, "IncrementalExportSpecification", "ExportFromTime"),
            type = "timestamp",
            name = "ExportFromTime",
            target_id = prelude.Timestamp.id,
        }),
        ExportToTime = schema.new({
            id = id.from(_N, "IncrementalExportSpecification", "ExportToTime"),
            type = "timestamp",
            name = "ExportToTime",
            target_id = prelude.Timestamp.id,
        }),
        ExportViewType = schema.new({
            id = id.from(_N, "IncrementalExportSpecification", "ExportViewType"),
            type = "string",
            name = "ExportViewType",
            target_id = prelude.String.id,
        }),
    },
})

M.ExportDescription = schema.new({
    id = id.from(_N, "ExportDescription"),
    type = "structure",
    members = {
        ExportArn = schema.new({
            id = id.from(_N, "ExportDescription", "ExportArn"),
            type = "string",
            name = "ExportArn",
            target_id = prelude.String.id,
        }),
        ExportStatus = schema.new({
            id = id.from(_N, "ExportDescription", "ExportStatus"),
            type = "string",
            name = "ExportStatus",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "ExportDescription", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "ExportDescription", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        ExportManifest = schema.new({
            id = id.from(_N, "ExportDescription", "ExportManifest"),
            type = "string",
            name = "ExportManifest",
            target_id = prelude.String.id,
        }),
        TableArn = schema.new({
            id = id.from(_N, "ExportDescription", "TableArn"),
            type = "string",
            name = "TableArn",
            target_id = prelude.String.id,
        }),
        TableId = schema.new({
            id = id.from(_N, "ExportDescription", "TableId"),
            type = "string",
            name = "TableId",
            target_id = prelude.String.id,
        }),
        ExportTime = schema.new({
            id = id.from(_N, "ExportDescription", "ExportTime"),
            type = "timestamp",
            name = "ExportTime",
            target_id = prelude.Timestamp.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "ExportDescription", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
        }),
        S3Bucket = schema.new({
            id = id.from(_N, "ExportDescription", "S3Bucket"),
            type = "string",
            name = "S3Bucket",
            target_id = prelude.String.id,
        }),
        S3BucketOwner = schema.new({
            id = id.from(_N, "ExportDescription", "S3BucketOwner"),
            type = "string",
            name = "S3BucketOwner",
            target_id = prelude.String.id,
        }),
        S3Prefix = schema.new({
            id = id.from(_N, "ExportDescription", "S3Prefix"),
            type = "string",
            name = "S3Prefix",
            target_id = prelude.String.id,
        }),
        S3SseAlgorithm = schema.new({
            id = id.from(_N, "ExportDescription", "S3SseAlgorithm"),
            type = "string",
            name = "S3SseAlgorithm",
            target_id = prelude.String.id,
        }),
        S3SseKmsKeyId = schema.new({
            id = id.from(_N, "ExportDescription", "S3SseKmsKeyId"),
            type = "string",
            name = "S3SseKmsKeyId",
            target_id = prelude.String.id,
        }),
        FailureCode = schema.new({
            id = id.from(_N, "ExportDescription", "FailureCode"),
            type = "string",
            name = "FailureCode",
            target_id = prelude.String.id,
        }),
        FailureMessage = schema.new({
            id = id.from(_N, "ExportDescription", "FailureMessage"),
            type = "string",
            name = "FailureMessage",
            target_id = prelude.String.id,
        }),
        ExportFormat = schema.new({
            id = id.from(_N, "ExportDescription", "ExportFormat"),
            type = "string",
            name = "ExportFormat",
            target_id = prelude.String.id,
        }),
        BilledSizeBytes = schema.new({
            id = id.from(_N, "ExportDescription", "BilledSizeBytes"),
            type = "long",
            name = "BilledSizeBytes",
            target_id = prelude.Long.id,
        }),
        ItemCount = schema.new({
            id = id.from(_N, "ExportDescription", "ItemCount"),
            type = "long",
            name = "ItemCount",
            target_id = prelude.Long.id,
        }),
        ExportType = schema.new({
            id = id.from(_N, "ExportDescription", "ExportType"),
            type = "string",
            name = "ExportType",
            target_id = prelude.String.id,
        }),
        IncrementalExportSpecification = schema.new({
            id = id.from(_N, "ExportDescription", "IncrementalExportSpecification"),
            type = "structure",
            name = "IncrementalExportSpecification",
            target_id = id.from(_N, "IncrementalExportSpecification"),
            target = M.IncrementalExportSpecification,
        }),
    },
})

M.DescribeExportOutput = schema.new({
    id = id.from(_N, "DescribeExportOutput"),
    type = "structure",
    members = {
        ExportDescription = schema.new({
            id = id.from(_N, "DescribeExportOutput", "ExportDescription"),
            type = "structure",
            name = "ExportDescription",
            target_id = id.from(_N, "ExportDescription"),
            target = M.ExportDescription,
        }),
    },
})

M.ExportNotFoundException = schema.new({
    id = id.from(_N, "ExportNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ExportNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeGlobalTableInput = schema.new({
    id = id.from(_N, "DescribeGlobalTableInput"),
    type = "structure",
    members = {
        GlobalTableName = schema.new({
            id = id.from(_N, "DescribeGlobalTableInput", "GlobalTableName"),
            type = "string",
            name = "GlobalTableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeGlobalTableOutput = schema.new({
    id = id.from(_N, "DescribeGlobalTableOutput"),
    type = "structure",
    members = {
        GlobalTableDescription = schema.new({
            id = id.from(_N, "DescribeGlobalTableOutput", "GlobalTableDescription"),
            type = "structure",
            name = "GlobalTableDescription",
            target_id = id.from(_N, "GlobalTableDescription"),
            target = M.GlobalTableDescription,
        }),
    },
})

M.GlobalTableNotFoundException = schema.new({
    id = id.from(_N, "GlobalTableNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "GlobalTableNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeGlobalTableSettingsInput = schema.new({
    id = id.from(_N, "DescribeGlobalTableSettingsInput"),
    type = "structure",
    members = {
        GlobalTableName = schema.new({
            id = id.from(_N, "DescribeGlobalTableSettingsInput", "GlobalTableName"),
            type = "string",
            name = "GlobalTableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReplicaGlobalSecondaryIndexSettingsDescription = schema.new({
    id = id.from(_N, "ReplicaGlobalSecondaryIndexSettingsDescription"),
    type = "structure",
    members = {
        IndexName = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexSettingsDescription", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IndexStatus = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexSettingsDescription", "IndexStatus"),
            type = "string",
            name = "IndexStatus",
            target_id = prelude.String.id,
        }),
        ProvisionedReadCapacityUnits = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexSettingsDescription", "ProvisionedReadCapacityUnits"),
            type = "long",
            name = "ProvisionedReadCapacityUnits",
            target_id = prelude.Long.id,
        }),
        ProvisionedReadCapacityAutoScalingSettings = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexSettingsDescription", "ProvisionedReadCapacityAutoScalingSettings"),
            type = "structure",
            name = "ProvisionedReadCapacityAutoScalingSettings",
            target_id = id.from(_N, "AutoScalingSettingsDescription"),
            target = M.AutoScalingSettingsDescription,
        }),
        ProvisionedWriteCapacityUnits = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexSettingsDescription", "ProvisionedWriteCapacityUnits"),
            type = "long",
            name = "ProvisionedWriteCapacityUnits",
            target_id = prelude.Long.id,
        }),
        ProvisionedWriteCapacityAutoScalingSettings = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexSettingsDescription", "ProvisionedWriteCapacityAutoScalingSettings"),
            type = "structure",
            name = "ProvisionedWriteCapacityAutoScalingSettings",
            target_id = id.from(_N, "AutoScalingSettingsDescription"),
            target = M.AutoScalingSettingsDescription,
        }),
    },
})

M.ReplicaSettingsDescription = schema.new({
    id = id.from(_N, "ReplicaSettingsDescription"),
    type = "structure",
    members = {
        RegionName = schema.new({
            id = id.from(_N, "ReplicaSettingsDescription", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicaStatus = schema.new({
            id = id.from(_N, "ReplicaSettingsDescription", "ReplicaStatus"),
            type = "string",
            name = "ReplicaStatus",
            target_id = prelude.String.id,
        }),
        ReplicaBillingModeSummary = schema.new({
            id = id.from(_N, "ReplicaSettingsDescription", "ReplicaBillingModeSummary"),
            type = "structure",
            name = "ReplicaBillingModeSummary",
            target_id = id.from(_N, "BillingModeSummary"),
            target = M.BillingModeSummary,
        }),
        ReplicaProvisionedReadCapacityUnits = schema.new({
            id = id.from(_N, "ReplicaSettingsDescription", "ReplicaProvisionedReadCapacityUnits"),
            type = "long",
            name = "ReplicaProvisionedReadCapacityUnits",
            target_id = prelude.Long.id,
        }),
        ReplicaProvisionedReadCapacityAutoScalingSettings = schema.new({
            id = id.from(_N, "ReplicaSettingsDescription", "ReplicaProvisionedReadCapacityAutoScalingSettings"),
            type = "structure",
            name = "ReplicaProvisionedReadCapacityAutoScalingSettings",
            target_id = id.from(_N, "AutoScalingSettingsDescription"),
            target = M.AutoScalingSettingsDescription,
        }),
        ReplicaProvisionedWriteCapacityUnits = schema.new({
            id = id.from(_N, "ReplicaSettingsDescription", "ReplicaProvisionedWriteCapacityUnits"),
            type = "long",
            name = "ReplicaProvisionedWriteCapacityUnits",
            target_id = prelude.Long.id,
        }),
        ReplicaProvisionedWriteCapacityAutoScalingSettings = schema.new({
            id = id.from(_N, "ReplicaSettingsDescription", "ReplicaProvisionedWriteCapacityAutoScalingSettings"),
            type = "structure",
            name = "ReplicaProvisionedWriteCapacityAutoScalingSettings",
            target_id = id.from(_N, "AutoScalingSettingsDescription"),
            target = M.AutoScalingSettingsDescription,
        }),
        ReplicaGlobalSecondaryIndexSettings = schema.new({
            id = id.from(_N, "ReplicaSettingsDescription", "ReplicaGlobalSecondaryIndexSettings"),
            type = "list",
            name = "ReplicaGlobalSecondaryIndexSettings",
            target_id = prelude.Document.id,
            list_member = M.ReplicaGlobalSecondaryIndexSettingsDescription,
        }),
        ReplicaTableClassSummary = schema.new({
            id = id.from(_N, "ReplicaSettingsDescription", "ReplicaTableClassSummary"),
            type = "structure",
            name = "ReplicaTableClassSummary",
            target_id = id.from(_N, "TableClassSummary"),
            target = M.TableClassSummary,
        }),
    },
})

M.DescribeGlobalTableSettingsOutput = schema.new({
    id = id.from(_N, "DescribeGlobalTableSettingsOutput"),
    type = "structure",
    members = {
        GlobalTableName = schema.new({
            id = id.from(_N, "DescribeGlobalTableSettingsOutput", "GlobalTableName"),
            type = "string",
            name = "GlobalTableName",
            target_id = prelude.String.id,
        }),
        ReplicaSettings = schema.new({
            id = id.from(_N, "DescribeGlobalTableSettingsOutput", "ReplicaSettings"),
            type = "list",
            name = "ReplicaSettings",
            target_id = prelude.Document.id,
            list_member = M.ReplicaSettingsDescription,
        }),
    },
})

M.DescribeImportInput = schema.new({
    id = id.from(_N, "DescribeImportInput"),
    type = "structure",
    members = {
        ImportArn = schema.new({
            id = id.from(_N, "DescribeImportInput", "ImportArn"),
            type = "string",
            name = "ImportArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InputFormatOptions = schema.new({
    id = id.from(_N, "InputFormatOptions"),
    type = "structure",
    members = {
        Csv = schema.new({
            id = id.from(_N, "InputFormatOptions", "Csv"),
            type = "structure",
            name = "Csv",
            target_id = id.from(_N, "CsvOptions"),
            target = M.CsvOptions,
        }),
    },
})

M.S3BucketSource = schema.new({
    id = id.from(_N, "S3BucketSource"),
    type = "structure",
    members = {
        S3BucketOwner = schema.new({
            id = id.from(_N, "S3BucketSource", "S3BucketOwner"),
            type = "string",
            name = "S3BucketOwner",
            target_id = prelude.String.id,
        }),
        S3Bucket = schema.new({
            id = id.from(_N, "S3BucketSource", "S3Bucket"),
            type = "string",
            name = "S3Bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3KeyPrefix = schema.new({
            id = id.from(_N, "S3BucketSource", "S3KeyPrefix"),
            type = "string",
            name = "S3KeyPrefix",
            target_id = prelude.String.id,
        }),
    },
})

M.TableCreationParameters = schema.new({
    id = id.from(_N, "TableCreationParameters"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "TableCreationParameters", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttributeDefinitions = schema.new({
            id = id.from(_N, "TableCreationParameters", "AttributeDefinitions"),
            type = "list",
            name = "AttributeDefinitions",
            target_id = prelude.Document.id,
            list_member = M.AttributeDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeySchema = schema.new({
            id = id.from(_N, "TableCreationParameters", "KeySchema"),
            type = "list",
            name = "KeySchema",
            target_id = prelude.Document.id,
            list_member = M.KeySchemaElement,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BillingMode = schema.new({
            id = id.from(_N, "TableCreationParameters", "BillingMode"),
            type = "string",
            name = "BillingMode",
            target_id = prelude.String.id,
        }),
        ProvisionedThroughput = schema.new({
            id = id.from(_N, "TableCreationParameters", "ProvisionedThroughput"),
            type = "structure",
            name = "ProvisionedThroughput",
            target_id = id.from(_N, "ProvisionedThroughput"),
            target = M.ProvisionedThroughput,
        }),
        OnDemandThroughput = schema.new({
            id = id.from(_N, "TableCreationParameters", "OnDemandThroughput"),
            type = "structure",
            name = "OnDemandThroughput",
            target_id = id.from(_N, "OnDemandThroughput"),
            target = M.OnDemandThroughput,
        }),
        SSESpecification = schema.new({
            id = id.from(_N, "TableCreationParameters", "SSESpecification"),
            type = "structure",
            name = "SSESpecification",
            target_id = id.from(_N, "SSESpecification"),
            target = M.SSESpecification,
        }),
        GlobalSecondaryIndexes = schema.new({
            id = id.from(_N, "TableCreationParameters", "GlobalSecondaryIndexes"),
            type = "list",
            name = "GlobalSecondaryIndexes",
            target_id = prelude.Document.id,
            list_member = M.GlobalSecondaryIndex,
        }),
    },
})

M.ImportTableDescription = schema.new({
    id = id.from(_N, "ImportTableDescription"),
    type = "structure",
    members = {
        ImportArn = schema.new({
            id = id.from(_N, "ImportTableDescription", "ImportArn"),
            type = "string",
            name = "ImportArn",
            target_id = prelude.String.id,
        }),
        ImportStatus = schema.new({
            id = id.from(_N, "ImportTableDescription", "ImportStatus"),
            type = "string",
            name = "ImportStatus",
            target_id = prelude.String.id,
        }),
        TableArn = schema.new({
            id = id.from(_N, "ImportTableDescription", "TableArn"),
            type = "string",
            name = "TableArn",
            target_id = prelude.String.id,
        }),
        TableId = schema.new({
            id = id.from(_N, "ImportTableDescription", "TableId"),
            type = "string",
            name = "TableId",
            target_id = prelude.String.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "ImportTableDescription", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
        }),
        S3BucketSource = schema.new({
            id = id.from(_N, "ImportTableDescription", "S3BucketSource"),
            type = "structure",
            name = "S3BucketSource",
            target_id = id.from(_N, "S3BucketSource"),
            target = M.S3BucketSource,
        }),
        ErrorCount = schema.new({
            id = id.from(_N, "ImportTableDescription", "ErrorCount"),
            type = "long",
            name = "ErrorCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        CloudWatchLogGroupArn = schema.new({
            id = id.from(_N, "ImportTableDescription", "CloudWatchLogGroupArn"),
            type = "string",
            name = "CloudWatchLogGroupArn",
            target_id = prelude.String.id,
        }),
        InputFormat = schema.new({
            id = id.from(_N, "ImportTableDescription", "InputFormat"),
            type = "string",
            name = "InputFormat",
            target_id = prelude.String.id,
        }),
        InputFormatOptions = schema.new({
            id = id.from(_N, "ImportTableDescription", "InputFormatOptions"),
            type = "structure",
            name = "InputFormatOptions",
            target_id = id.from(_N, "InputFormatOptions"),
            target = M.InputFormatOptions,
        }),
        InputCompressionType = schema.new({
            id = id.from(_N, "ImportTableDescription", "InputCompressionType"),
            type = "string",
            name = "InputCompressionType",
            target_id = prelude.String.id,
        }),
        TableCreationParameters = schema.new({
            id = id.from(_N, "ImportTableDescription", "TableCreationParameters"),
            type = "structure",
            name = "TableCreationParameters",
            target_id = id.from(_N, "TableCreationParameters"),
            target = M.TableCreationParameters,
        }),
        StartTime = schema.new({
            id = id.from(_N, "ImportTableDescription", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "ImportTableDescription", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
        ProcessedSizeBytes = schema.new({
            id = id.from(_N, "ImportTableDescription", "ProcessedSizeBytes"),
            type = "long",
            name = "ProcessedSizeBytes",
            target_id = prelude.Long.id,
        }),
        ProcessedItemCount = schema.new({
            id = id.from(_N, "ImportTableDescription", "ProcessedItemCount"),
            type = "long",
            name = "ProcessedItemCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ImportedItemCount = schema.new({
            id = id.from(_N, "ImportTableDescription", "ImportedItemCount"),
            type = "long",
            name = "ImportedItemCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        FailureCode = schema.new({
            id = id.from(_N, "ImportTableDescription", "FailureCode"),
            type = "string",
            name = "FailureCode",
            target_id = prelude.String.id,
        }),
        FailureMessage = schema.new({
            id = id.from(_N, "ImportTableDescription", "FailureMessage"),
            type = "string",
            name = "FailureMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeImportOutput = schema.new({
    id = id.from(_N, "DescribeImportOutput"),
    type = "structure",
    members = {
        ImportTableDescription = schema.new({
            id = id.from(_N, "DescribeImportOutput", "ImportTableDescription"),
            type = "structure",
            name = "ImportTableDescription",
            target_id = id.from(_N, "ImportTableDescription"),
            target = M.ImportTableDescription,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ImportNotFoundException = schema.new({
    id = id.from(_N, "ImportNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ImportNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeKinesisStreamingDestinationInput = schema.new({
    id = id.from(_N, "DescribeKinesisStreamingDestinationInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "DescribeKinesisStreamingDestinationInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KinesisDataStreamDestination = schema.new({
    id = id.from(_N, "KinesisDataStreamDestination"),
    type = "structure",
    members = {
        StreamArn = schema.new({
            id = id.from(_N, "KinesisDataStreamDestination", "StreamArn"),
            type = "string",
            name = "StreamArn",
            target_id = prelude.String.id,
        }),
        DestinationStatus = schema.new({
            id = id.from(_N, "KinesisDataStreamDestination", "DestinationStatus"),
            type = "string",
            name = "DestinationStatus",
            target_id = prelude.String.id,
        }),
        DestinationStatusDescription = schema.new({
            id = id.from(_N, "KinesisDataStreamDestination", "DestinationStatusDescription"),
            type = "string",
            name = "DestinationStatusDescription",
            target_id = prelude.String.id,
        }),
        ApproximateCreationDateTimePrecision = schema.new({
            id = id.from(_N, "KinesisDataStreamDestination", "ApproximateCreationDateTimePrecision"),
            type = "string",
            name = "ApproximateCreationDateTimePrecision",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeKinesisStreamingDestinationOutput = schema.new({
    id = id.from(_N, "DescribeKinesisStreamingDestinationOutput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "DescribeKinesisStreamingDestinationOutput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        KinesisDataStreamDestinations = schema.new({
            id = id.from(_N, "DescribeKinesisStreamingDestinationOutput", "KinesisDataStreamDestinations"),
            type = "list",
            name = "KinesisDataStreamDestinations",
            target_id = prelude.Document.id,
            list_member = M.KinesisDataStreamDestination,
        }),
    },
})

M.DescribeLimitsInput = schema.new({
    id = id.from(_N, "DescribeLimitsInput"),
    type = "structure",
})

M.DescribeLimitsOutput = schema.new({
    id = id.from(_N, "DescribeLimitsOutput"),
    type = "structure",
    members = {
        AccountMaxReadCapacityUnits = schema.new({
            id = id.from(_N, "DescribeLimitsOutput", "AccountMaxReadCapacityUnits"),
            type = "long",
            name = "AccountMaxReadCapacityUnits",
            target_id = prelude.Long.id,
        }),
        AccountMaxWriteCapacityUnits = schema.new({
            id = id.from(_N, "DescribeLimitsOutput", "AccountMaxWriteCapacityUnits"),
            type = "long",
            name = "AccountMaxWriteCapacityUnits",
            target_id = prelude.Long.id,
        }),
        TableMaxReadCapacityUnits = schema.new({
            id = id.from(_N, "DescribeLimitsOutput", "TableMaxReadCapacityUnits"),
            type = "long",
            name = "TableMaxReadCapacityUnits",
            target_id = prelude.Long.id,
        }),
        TableMaxWriteCapacityUnits = schema.new({
            id = id.from(_N, "DescribeLimitsOutput", "TableMaxWriteCapacityUnits"),
            type = "long",
            name = "TableMaxWriteCapacityUnits",
            target_id = prelude.Long.id,
        }),
    },
})

M.DescribeTableInput = schema.new({
    id = id.from(_N, "DescribeTableInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "DescribeTableInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeTableOutput = schema.new({
    id = id.from(_N, "DescribeTableOutput"),
    type = "structure",
    members = {
        Table = schema.new({
            id = id.from(_N, "DescribeTableOutput", "Table"),
            type = "structure",
            name = "Table",
            target_id = id.from(_N, "TableDescription"),
            target = M.TableDescription,
        }),
    },
})

M.DescribeTableReplicaAutoScalingInput = schema.new({
    id = id.from(_N, "DescribeTableReplicaAutoScalingInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "DescribeTableReplicaAutoScalingInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReplicaGlobalSecondaryIndexAutoScalingDescription = schema.new({
    id = id.from(_N, "ReplicaGlobalSecondaryIndexAutoScalingDescription"),
    type = "structure",
    members = {
        IndexName = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexAutoScalingDescription", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
        }),
        IndexStatus = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexAutoScalingDescription", "IndexStatus"),
            type = "string",
            name = "IndexStatus",
            target_id = prelude.String.id,
        }),
        ProvisionedReadCapacityAutoScalingSettings = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexAutoScalingDescription", "ProvisionedReadCapacityAutoScalingSettings"),
            type = "structure",
            name = "ProvisionedReadCapacityAutoScalingSettings",
            target_id = id.from(_N, "AutoScalingSettingsDescription"),
            target = M.AutoScalingSettingsDescription,
        }),
        ProvisionedWriteCapacityAutoScalingSettings = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexAutoScalingDescription", "ProvisionedWriteCapacityAutoScalingSettings"),
            type = "structure",
            name = "ProvisionedWriteCapacityAutoScalingSettings",
            target_id = id.from(_N, "AutoScalingSettingsDescription"),
            target = M.AutoScalingSettingsDescription,
        }),
    },
})

M.ReplicaAutoScalingDescription = schema.new({
    id = id.from(_N, "ReplicaAutoScalingDescription"),
    type = "structure",
    members = {
        RegionName = schema.new({
            id = id.from(_N, "ReplicaAutoScalingDescription", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
        }),
        GlobalSecondaryIndexes = schema.new({
            id = id.from(_N, "ReplicaAutoScalingDescription", "GlobalSecondaryIndexes"),
            type = "list",
            name = "GlobalSecondaryIndexes",
            target_id = prelude.Document.id,
            list_member = M.ReplicaGlobalSecondaryIndexAutoScalingDescription,
        }),
        ReplicaProvisionedReadCapacityAutoScalingSettings = schema.new({
            id = id.from(_N, "ReplicaAutoScalingDescription", "ReplicaProvisionedReadCapacityAutoScalingSettings"),
            type = "structure",
            name = "ReplicaProvisionedReadCapacityAutoScalingSettings",
            target_id = id.from(_N, "AutoScalingSettingsDescription"),
            target = M.AutoScalingSettingsDescription,
        }),
        ReplicaProvisionedWriteCapacityAutoScalingSettings = schema.new({
            id = id.from(_N, "ReplicaAutoScalingDescription", "ReplicaProvisionedWriteCapacityAutoScalingSettings"),
            type = "structure",
            name = "ReplicaProvisionedWriteCapacityAutoScalingSettings",
            target_id = id.from(_N, "AutoScalingSettingsDescription"),
            target = M.AutoScalingSettingsDescription,
        }),
        ReplicaStatus = schema.new({
            id = id.from(_N, "ReplicaAutoScalingDescription", "ReplicaStatus"),
            type = "string",
            name = "ReplicaStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.TableAutoScalingDescription = schema.new({
    id = id.from(_N, "TableAutoScalingDescription"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "TableAutoScalingDescription", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        TableStatus = schema.new({
            id = id.from(_N, "TableAutoScalingDescription", "TableStatus"),
            type = "string",
            name = "TableStatus",
            target_id = prelude.String.id,
        }),
        Replicas = schema.new({
            id = id.from(_N, "TableAutoScalingDescription", "Replicas"),
            type = "list",
            name = "Replicas",
            target_id = prelude.Document.id,
            list_member = M.ReplicaAutoScalingDescription,
        }),
    },
})

M.DescribeTableReplicaAutoScalingOutput = schema.new({
    id = id.from(_N, "DescribeTableReplicaAutoScalingOutput"),
    type = "structure",
    members = {
        TableAutoScalingDescription = schema.new({
            id = id.from(_N, "DescribeTableReplicaAutoScalingOutput", "TableAutoScalingDescription"),
            type = "structure",
            name = "TableAutoScalingDescription",
            target_id = id.from(_N, "TableAutoScalingDescription"),
            target = M.TableAutoScalingDescription,
        }),
    },
})

M.DescribeTimeToLiveInput = schema.new({
    id = id.from(_N, "DescribeTimeToLiveInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "DescribeTimeToLiveInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeTimeToLiveOutput = schema.new({
    id = id.from(_N, "DescribeTimeToLiveOutput"),
    type = "structure",
    members = {
        TimeToLiveDescription = schema.new({
            id = id.from(_N, "DescribeTimeToLiveOutput", "TimeToLiveDescription"),
            type = "structure",
            name = "TimeToLiveDescription",
            target_id = id.from(_N, "TimeToLiveDescription"),
            target = M.TimeToLiveDescription,
        }),
    },
})

M.EnableKinesisStreamingConfiguration = schema.new({
    id = id.from(_N, "EnableKinesisStreamingConfiguration"),
    type = "structure",
    members = {
        ApproximateCreationDateTimePrecision = schema.new({
            id = id.from(_N, "EnableKinesisStreamingConfiguration", "ApproximateCreationDateTimePrecision"),
            type = "string",
            name = "ApproximateCreationDateTimePrecision",
            target_id = prelude.String.id,
        }),
    },
})

M.DisableKinesisStreamingDestinationInput = schema.new({
    id = id.from(_N, "KinesisStreamingDestinationInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "DisableKinesisStreamingDestinationInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StreamArn = schema.new({
            id = id.from(_N, "DisableKinesisStreamingDestinationInput", "StreamArn"),
            type = "string",
            name = "StreamArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EnableKinesisStreamingConfiguration = schema.new({
            id = id.from(_N, "DisableKinesisStreamingDestinationInput", "EnableKinesisStreamingConfiguration"),
            type = "structure",
            name = "EnableKinesisStreamingConfiguration",
            target_id = id.from(_N, "EnableKinesisStreamingConfiguration"),
            target = M.EnableKinesisStreamingConfiguration,
        }),
    },
})

M.DisableKinesisStreamingDestinationOutput = schema.new({
    id = id.from(_N, "KinesisStreamingDestinationOutput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "DisableKinesisStreamingDestinationOutput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        StreamArn = schema.new({
            id = id.from(_N, "DisableKinesisStreamingDestinationOutput", "StreamArn"),
            type = "string",
            name = "StreamArn",
            target_id = prelude.String.id,
        }),
        DestinationStatus = schema.new({
            id = id.from(_N, "DisableKinesisStreamingDestinationOutput", "DestinationStatus"),
            type = "string",
            name = "DestinationStatus",
            target_id = prelude.String.id,
        }),
        EnableKinesisStreamingConfiguration = schema.new({
            id = id.from(_N, "DisableKinesisStreamingDestinationOutput", "EnableKinesisStreamingConfiguration"),
            type = "structure",
            name = "EnableKinesisStreamingConfiguration",
            target_id = id.from(_N, "EnableKinesisStreamingConfiguration"),
            target = M.EnableKinesisStreamingConfiguration,
        }),
    },
})

M.DuplicateItemException = schema.new({
    id = id.from(_N, "DuplicateItemException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DuplicateItemException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.EnableKinesisStreamingDestinationInput = schema.new({
    id = id.from(_N, "KinesisStreamingDestinationInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "EnableKinesisStreamingDestinationInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StreamArn = schema.new({
            id = id.from(_N, "EnableKinesisStreamingDestinationInput", "StreamArn"),
            type = "string",
            name = "StreamArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EnableKinesisStreamingConfiguration = schema.new({
            id = id.from(_N, "EnableKinesisStreamingDestinationInput", "EnableKinesisStreamingConfiguration"),
            type = "structure",
            name = "EnableKinesisStreamingConfiguration",
            target_id = id.from(_N, "EnableKinesisStreamingConfiguration"),
            target = M.EnableKinesisStreamingConfiguration,
        }),
    },
})

M.EnableKinesisStreamingDestinationOutput = schema.new({
    id = id.from(_N, "KinesisStreamingDestinationOutput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "EnableKinesisStreamingDestinationOutput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        StreamArn = schema.new({
            id = id.from(_N, "EnableKinesisStreamingDestinationOutput", "StreamArn"),
            type = "string",
            name = "StreamArn",
            target_id = prelude.String.id,
        }),
        DestinationStatus = schema.new({
            id = id.from(_N, "EnableKinesisStreamingDestinationOutput", "DestinationStatus"),
            type = "string",
            name = "DestinationStatus",
            target_id = prelude.String.id,
        }),
        EnableKinesisStreamingConfiguration = schema.new({
            id = id.from(_N, "EnableKinesisStreamingDestinationOutput", "EnableKinesisStreamingConfiguration"),
            type = "structure",
            name = "EnableKinesisStreamingConfiguration",
            target_id = id.from(_N, "EnableKinesisStreamingConfiguration"),
            target = M.EnableKinesisStreamingConfiguration,
        }),
    },
})

M.IdempotentParameterMismatchException = schema.new({
    id = id.from(_N, "IdempotentParameterMismatchException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "IdempotentParameterMismatchException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TransactionInProgressException = schema.new({
    id = id.from(_N, "TransactionInProgressException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TransactionInProgressException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ExportConflictException = schema.new({
    id = id.from(_N, "ExportConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ExportConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ExportTableToPointInTimeInput = schema.new({
    id = id.from(_N, "ExportTableToPointInTimeInput"),
    type = "structure",
    members = {
        TableArn = schema.new({
            id = id.from(_N, "ExportTableToPointInTimeInput", "TableArn"),
            type = "string",
            name = "TableArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExportTime = schema.new({
            id = id.from(_N, "ExportTableToPointInTimeInput", "ExportTime"),
            type = "timestamp",
            name = "ExportTime",
            target_id = prelude.Timestamp.id,
        }),
        ClientToken = schema.new({
            id = id.from(_N, "ExportTableToPointInTimeInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        S3Bucket = schema.new({
            id = id.from(_N, "ExportTableToPointInTimeInput", "S3Bucket"),
            type = "string",
            name = "S3Bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3BucketOwner = schema.new({
            id = id.from(_N, "ExportTableToPointInTimeInput", "S3BucketOwner"),
            type = "string",
            name = "S3BucketOwner",
            target_id = prelude.String.id,
        }),
        S3Prefix = schema.new({
            id = id.from(_N, "ExportTableToPointInTimeInput", "S3Prefix"),
            type = "string",
            name = "S3Prefix",
            target_id = prelude.String.id,
        }),
        S3SseAlgorithm = schema.new({
            id = id.from(_N, "ExportTableToPointInTimeInput", "S3SseAlgorithm"),
            type = "string",
            name = "S3SseAlgorithm",
            target_id = prelude.String.id,
        }),
        S3SseKmsKeyId = schema.new({
            id = id.from(_N, "ExportTableToPointInTimeInput", "S3SseKmsKeyId"),
            type = "string",
            name = "S3SseKmsKeyId",
            target_id = prelude.String.id,
        }),
        ExportFormat = schema.new({
            id = id.from(_N, "ExportTableToPointInTimeInput", "ExportFormat"),
            type = "string",
            name = "ExportFormat",
            target_id = prelude.String.id,
        }),
        ExportType = schema.new({
            id = id.from(_N, "ExportTableToPointInTimeInput", "ExportType"),
            type = "string",
            name = "ExportType",
            target_id = prelude.String.id,
        }),
        IncrementalExportSpecification = schema.new({
            id = id.from(_N, "ExportTableToPointInTimeInput", "IncrementalExportSpecification"),
            type = "structure",
            name = "IncrementalExportSpecification",
            target_id = id.from(_N, "IncrementalExportSpecification"),
            target = M.IncrementalExportSpecification,
        }),
    },
})

M.ExportTableToPointInTimeOutput = schema.new({
    id = id.from(_N, "ExportTableToPointInTimeOutput"),
    type = "structure",
    members = {
        ExportDescription = schema.new({
            id = id.from(_N, "ExportTableToPointInTimeOutput", "ExportDescription"),
            type = "structure",
            name = "ExportDescription",
            target_id = id.from(_N, "ExportDescription"),
            target = M.ExportDescription,
        }),
    },
})

M.InvalidExportTimeException = schema.new({
    id = id.from(_N, "InvalidExportTimeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidExportTimeException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PointInTimeRecoveryUnavailableException = schema.new({
    id = id.from(_N, "PointInTimeRecoveryUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PointInTimeRecoveryUnavailableException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResourcePolicyInput = schema.new({
    id = id.from(_N, "GetResourcePolicyInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "GetResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResourcePolicyOutput = schema.new({
    id = id.from(_N, "GetResourcePolicyOutput"),
    type = "structure",
    members = {
        Policy = schema.new({
            id = id.from(_N, "GetResourcePolicyOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
        }),
        RevisionId = schema.new({
            id = id.from(_N, "GetResourcePolicyOutput", "RevisionId"),
            type = "string",
            name = "RevisionId",
            target_id = prelude.String.id,
        }),
    },
})

M.ImportConflictException = schema.new({
    id = id.from(_N, "ImportConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ImportConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ImportTableInput = schema.new({
    id = id.from(_N, "ImportTableInput"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "ImportTableInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        S3BucketSource = schema.new({
            id = id.from(_N, "ImportTableInput", "S3BucketSource"),
            type = "structure",
            name = "S3BucketSource",
            target_id = id.from(_N, "S3BucketSource"),
            target = M.S3BucketSource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InputFormat = schema.new({
            id = id.from(_N, "ImportTableInput", "InputFormat"),
            type = "string",
            name = "InputFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InputFormatOptions = schema.new({
            id = id.from(_N, "ImportTableInput", "InputFormatOptions"),
            type = "structure",
            name = "InputFormatOptions",
            target_id = id.from(_N, "InputFormatOptions"),
            target = M.InputFormatOptions,
        }),
        InputCompressionType = schema.new({
            id = id.from(_N, "ImportTableInput", "InputCompressionType"),
            type = "string",
            name = "InputCompressionType",
            target_id = prelude.String.id,
        }),
        TableCreationParameters = schema.new({
            id = id.from(_N, "ImportTableInput", "TableCreationParameters"),
            type = "structure",
            name = "TableCreationParameters",
            target_id = id.from(_N, "TableCreationParameters"),
            target = M.TableCreationParameters,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ImportTableOutput = schema.new({
    id = id.from(_N, "ImportTableOutput"),
    type = "structure",
    members = {
        ImportTableDescription = schema.new({
            id = id.from(_N, "ImportTableOutput", "ImportTableDescription"),
            type = "structure",
            name = "ImportTableDescription",
            target_id = id.from(_N, "ImportTableDescription"),
            target = M.ImportTableDescription,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListBackupsInput = schema.new({
    id = id.from(_N, "ListBackupsInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "ListBackupsInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListBackupsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
        TimeRangeLowerBound = schema.new({
            id = id.from(_N, "ListBackupsInput", "TimeRangeLowerBound"),
            type = "timestamp",
            name = "TimeRangeLowerBound",
            target_id = prelude.Timestamp.id,
        }),
        TimeRangeUpperBound = schema.new({
            id = id.from(_N, "ListBackupsInput", "TimeRangeUpperBound"),
            type = "timestamp",
            name = "TimeRangeUpperBound",
            target_id = prelude.Timestamp.id,
        }),
        ExclusiveStartBackupArn = schema.new({
            id = id.from(_N, "ListBackupsInput", "ExclusiveStartBackupArn"),
            type = "string",
            name = "ExclusiveStartBackupArn",
            target_id = prelude.String.id,
        }),
        BackupType = schema.new({
            id = id.from(_N, "ListBackupsInput", "BackupType"),
            type = "string",
            name = "BackupType",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBackupsOutput = schema.new({
    id = id.from(_N, "ListBackupsOutput"),
    type = "structure",
    members = {
        BackupSummaries = schema.new({
            id = id.from(_N, "ListBackupsOutput", "BackupSummaries"),
            type = "list",
            name = "BackupSummaries",
            target_id = prelude.Document.id,
            list_member = M.BackupSummary,
        }),
        LastEvaluatedBackupArn = schema.new({
            id = id.from(_N, "ListBackupsOutput", "LastEvaluatedBackupArn"),
            type = "string",
            name = "LastEvaluatedBackupArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListContributorInsightsInput = schema.new({
    id = id.from(_N, "ListContributorInsightsInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "ListContributorInsightsInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListContributorInsightsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListContributorInsightsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ListContributorInsightsOutput = schema.new({
    id = id.from(_N, "ListContributorInsightsOutput"),
    type = "structure",
    members = {
        ContributorInsightsSummaries = schema.new({
            id = id.from(_N, "ListContributorInsightsOutput", "ContributorInsightsSummaries"),
            type = "list",
            name = "ContributorInsightsSummaries",
            target_id = prelude.Document.id,
            list_member = M.ContributorInsightsSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListContributorInsightsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListExportsInput = schema.new({
    id = id.from(_N, "ListExportsInput"),
    type = "structure",
    members = {
        TableArn = schema.new({
            id = id.from(_N, "ListExportsInput", "TableArn"),
            type = "string",
            name = "TableArn",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListExportsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListExportsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ExportSummary = schema.new({
    id = id.from(_N, "ExportSummary"),
    type = "structure",
    members = {
        ExportArn = schema.new({
            id = id.from(_N, "ExportSummary", "ExportArn"),
            type = "string",
            name = "ExportArn",
            target_id = prelude.String.id,
        }),
        ExportStatus = schema.new({
            id = id.from(_N, "ExportSummary", "ExportStatus"),
            type = "string",
            name = "ExportStatus",
            target_id = prelude.String.id,
        }),
        ExportType = schema.new({
            id = id.from(_N, "ExportSummary", "ExportType"),
            type = "string",
            name = "ExportType",
            target_id = prelude.String.id,
        }),
    },
})

M.ListExportsOutput = schema.new({
    id = id.from(_N, "ListExportsOutput"),
    type = "structure",
    members = {
        ExportSummaries = schema.new({
            id = id.from(_N, "ListExportsOutput", "ExportSummaries"),
            type = "list",
            name = "ExportSummaries",
            target_id = prelude.Document.id,
            list_member = M.ExportSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListExportsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGlobalTablesInput = schema.new({
    id = id.from(_N, "ListGlobalTablesInput"),
    type = "structure",
    members = {
        ExclusiveStartGlobalTableName = schema.new({
            id = id.from(_N, "ListGlobalTablesInput", "ExclusiveStartGlobalTableName"),
            type = "string",
            name = "ExclusiveStartGlobalTableName",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListGlobalTablesInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
        RegionName = schema.new({
            id = id.from(_N, "ListGlobalTablesInput", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
        }),
    },
})

M.GlobalTable = schema.new({
    id = id.from(_N, "GlobalTable"),
    type = "structure",
    members = {
        GlobalTableName = schema.new({
            id = id.from(_N, "GlobalTable", "GlobalTableName"),
            type = "string",
            name = "GlobalTableName",
            target_id = prelude.String.id,
        }),
        ReplicationGroup = schema.new({
            id = id.from(_N, "GlobalTable", "ReplicationGroup"),
            type = "list",
            name = "ReplicationGroup",
            target_id = prelude.Document.id,
            list_member = M.Replica,
        }),
    },
})

M.ListGlobalTablesOutput = schema.new({
    id = id.from(_N, "ListGlobalTablesOutput"),
    type = "structure",
    members = {
        GlobalTables = schema.new({
            id = id.from(_N, "ListGlobalTablesOutput", "GlobalTables"),
            type = "list",
            name = "GlobalTables",
            target_id = prelude.Document.id,
            list_member = M.GlobalTable,
        }),
        LastEvaluatedGlobalTableName = schema.new({
            id = id.from(_N, "ListGlobalTablesOutput", "LastEvaluatedGlobalTableName"),
            type = "string",
            name = "LastEvaluatedGlobalTableName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListImportsInput = schema.new({
    id = id.from(_N, "ListImportsInput"),
    type = "structure",
    members = {
        TableArn = schema.new({
            id = id.from(_N, "ListImportsInput", "TableArn"),
            type = "string",
            name = "TableArn",
            target_id = prelude.String.id,
        }),
        PageSize = schema.new({
            id = id.from(_N, "ListImportsInput", "PageSize"),
            type = "integer",
            name = "PageSize",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListImportsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ImportSummary = schema.new({
    id = id.from(_N, "ImportSummary"),
    type = "structure",
    members = {
        ImportArn = schema.new({
            id = id.from(_N, "ImportSummary", "ImportArn"),
            type = "string",
            name = "ImportArn",
            target_id = prelude.String.id,
        }),
        ImportStatus = schema.new({
            id = id.from(_N, "ImportSummary", "ImportStatus"),
            type = "string",
            name = "ImportStatus",
            target_id = prelude.String.id,
        }),
        TableArn = schema.new({
            id = id.from(_N, "ImportSummary", "TableArn"),
            type = "string",
            name = "TableArn",
            target_id = prelude.String.id,
        }),
        S3BucketSource = schema.new({
            id = id.from(_N, "ImportSummary", "S3BucketSource"),
            type = "structure",
            name = "S3BucketSource",
            target_id = id.from(_N, "S3BucketSource"),
            target = M.S3BucketSource,
        }),
        CloudWatchLogGroupArn = schema.new({
            id = id.from(_N, "ImportSummary", "CloudWatchLogGroupArn"),
            type = "string",
            name = "CloudWatchLogGroupArn",
            target_id = prelude.String.id,
        }),
        InputFormat = schema.new({
            id = id.from(_N, "ImportSummary", "InputFormat"),
            type = "string",
            name = "InputFormat",
            target_id = prelude.String.id,
        }),
        StartTime = schema.new({
            id = id.from(_N, "ImportSummary", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "ImportSummary", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListImportsOutput = schema.new({
    id = id.from(_N, "ListImportsOutput"),
    type = "structure",
    members = {
        ImportSummaryList = schema.new({
            id = id.from(_N, "ListImportsOutput", "ImportSummaryList"),
            type = "list",
            name = "ImportSummaryList",
            target_id = prelude.Document.id,
            list_member = M.ImportSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListImportsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTablesInput = schema.new({
    id = id.from(_N, "ListTablesInput"),
    type = "structure",
    members = {
        ExclusiveStartTableName = schema.new({
            id = id.from(_N, "ListTablesInput", "ExclusiveStartTableName"),
            type = "string",
            name = "ExclusiveStartTableName",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListTablesInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListTablesOutput = schema.new({
    id = id.from(_N, "ListTablesOutput"),
    type = "structure",
    members = {
        TableNames = schema.new({
            id = id.from(_N, "ListTablesOutput", "TableNames"),
            type = "list",
            name = "TableNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        LastEvaluatedTableName = schema.new({
            id = id.from(_N, "ListTablesOutput", "LastEvaluatedTableName"),
            type = "string",
            name = "LastEvaluatedTableName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsOfResourceInput = schema.new({
    id = id.from(_N, "ListTagsOfResourceInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsOfResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTagsOfResourceInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsOfResourceOutput = schema.new({
    id = id.from(_N, "ListTagsOfResourceOutput"),
    type = "structure",
    members = {
        Tags = schema.new({
            id = id.from(_N, "ListTagsOfResourceOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTagsOfResourceOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PutResourcePolicyInput = schema.new({
    id = id.from(_N, "PutResourcePolicyInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Policy = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExpectedRevisionId = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "ExpectedRevisionId"),
            type = "string",
            name = "ExpectedRevisionId",
            target_id = prelude.String.id,
        }),
        ConfirmRemoveSelfResourceAccess = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "ConfirmRemoveSelfResourceAccess"),
            type = "boolean",
            name = "ConfirmRemoveSelfResourceAccess",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_HEADER] = { name = "x-amz-confirm-remove-self-resource-access" },
            },
        }),
    },
})

M.PutResourcePolicyOutput = schema.new({
    id = id.from(_N, "PutResourcePolicyOutput"),
    type = "structure",
    members = {
        RevisionId = schema.new({
            id = id.from(_N, "PutResourcePolicyOutput", "RevisionId"),
            type = "string",
            name = "RevisionId",
            target_id = prelude.String.id,
        }),
    },
})

M.RestoreTableFromBackupInput = schema.new({
    id = id.from(_N, "RestoreTableFromBackupInput"),
    type = "structure",
    members = {
        TargetTableName = schema.new({
            id = id.from(_N, "RestoreTableFromBackupInput", "TargetTableName"),
            type = "string",
            name = "TargetTableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BackupArn = schema.new({
            id = id.from(_N, "RestoreTableFromBackupInput", "BackupArn"),
            type = "string",
            name = "BackupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BillingModeOverride = schema.new({
            id = id.from(_N, "RestoreTableFromBackupInput", "BillingModeOverride"),
            type = "string",
            name = "BillingModeOverride",
            target_id = prelude.String.id,
        }),
        GlobalSecondaryIndexOverride = schema.new({
            id = id.from(_N, "RestoreTableFromBackupInput", "GlobalSecondaryIndexOverride"),
            type = "list",
            name = "GlobalSecondaryIndexOverride",
            target_id = prelude.Document.id,
            list_member = M.GlobalSecondaryIndex,
        }),
        LocalSecondaryIndexOverride = schema.new({
            id = id.from(_N, "RestoreTableFromBackupInput", "LocalSecondaryIndexOverride"),
            type = "list",
            name = "LocalSecondaryIndexOverride",
            target_id = prelude.Document.id,
            list_member = M.LocalSecondaryIndex,
        }),
        ProvisionedThroughputOverride = schema.new({
            id = id.from(_N, "RestoreTableFromBackupInput", "ProvisionedThroughputOverride"),
            type = "structure",
            name = "ProvisionedThroughputOverride",
            target_id = id.from(_N, "ProvisionedThroughput"),
            target = M.ProvisionedThroughput,
        }),
        OnDemandThroughputOverride = schema.new({
            id = id.from(_N, "RestoreTableFromBackupInput", "OnDemandThroughputOverride"),
            type = "structure",
            name = "OnDemandThroughputOverride",
            target_id = id.from(_N, "OnDemandThroughput"),
            target = M.OnDemandThroughput,
        }),
        SSESpecificationOverride = schema.new({
            id = id.from(_N, "RestoreTableFromBackupInput", "SSESpecificationOverride"),
            type = "structure",
            name = "SSESpecificationOverride",
            target_id = id.from(_N, "SSESpecification"),
            target = M.SSESpecification,
        }),
    },
})

M.RestoreTableFromBackupOutput = schema.new({
    id = id.from(_N, "RestoreTableFromBackupOutput"),
    type = "structure",
    members = {
        TableDescription = schema.new({
            id = id.from(_N, "RestoreTableFromBackupOutput", "TableDescription"),
            type = "structure",
            name = "TableDescription",
            target_id = id.from(_N, "TableDescription"),
            target = M.TableDescription,
        }),
    },
})

M.TableAlreadyExistsException = schema.new({
    id = id.from(_N, "TableAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TableAlreadyExistsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRestoreTimeException = schema.new({
    id = id.from(_N, "InvalidRestoreTimeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRestoreTimeException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.RestoreTableToPointInTimeInput = schema.new({
    id = id.from(_N, "RestoreTableToPointInTimeInput"),
    type = "structure",
    members = {
        SourceTableArn = schema.new({
            id = id.from(_N, "RestoreTableToPointInTimeInput", "SourceTableArn"),
            type = "string",
            name = "SourceTableArn",
            target_id = prelude.String.id,
        }),
        SourceTableName = schema.new({
            id = id.from(_N, "RestoreTableToPointInTimeInput", "SourceTableName"),
            type = "string",
            name = "SourceTableName",
            target_id = prelude.String.id,
        }),
        TargetTableName = schema.new({
            id = id.from(_N, "RestoreTableToPointInTimeInput", "TargetTableName"),
            type = "string",
            name = "TargetTableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UseLatestRestorableTime = schema.new({
            id = id.from(_N, "RestoreTableToPointInTimeInput", "UseLatestRestorableTime"),
            type = "boolean",
            name = "UseLatestRestorableTime",
            target_id = prelude.Boolean.id,
        }),
        RestoreDateTime = schema.new({
            id = id.from(_N, "RestoreTableToPointInTimeInput", "RestoreDateTime"),
            type = "timestamp",
            name = "RestoreDateTime",
            target_id = prelude.Timestamp.id,
        }),
        BillingModeOverride = schema.new({
            id = id.from(_N, "RestoreTableToPointInTimeInput", "BillingModeOverride"),
            type = "string",
            name = "BillingModeOverride",
            target_id = prelude.String.id,
        }),
        GlobalSecondaryIndexOverride = schema.new({
            id = id.from(_N, "RestoreTableToPointInTimeInput", "GlobalSecondaryIndexOverride"),
            type = "list",
            name = "GlobalSecondaryIndexOverride",
            target_id = prelude.Document.id,
            list_member = M.GlobalSecondaryIndex,
        }),
        LocalSecondaryIndexOverride = schema.new({
            id = id.from(_N, "RestoreTableToPointInTimeInput", "LocalSecondaryIndexOverride"),
            type = "list",
            name = "LocalSecondaryIndexOverride",
            target_id = prelude.Document.id,
            list_member = M.LocalSecondaryIndex,
        }),
        ProvisionedThroughputOverride = schema.new({
            id = id.from(_N, "RestoreTableToPointInTimeInput", "ProvisionedThroughputOverride"),
            type = "structure",
            name = "ProvisionedThroughputOverride",
            target_id = id.from(_N, "ProvisionedThroughput"),
            target = M.ProvisionedThroughput,
        }),
        OnDemandThroughputOverride = schema.new({
            id = id.from(_N, "RestoreTableToPointInTimeInput", "OnDemandThroughputOverride"),
            type = "structure",
            name = "OnDemandThroughputOverride",
            target_id = id.from(_N, "OnDemandThroughput"),
            target = M.OnDemandThroughput,
        }),
        SSESpecificationOverride = schema.new({
            id = id.from(_N, "RestoreTableToPointInTimeInput", "SSESpecificationOverride"),
            type = "structure",
            name = "SSESpecificationOverride",
            target_id = id.from(_N, "SSESpecification"),
            target = M.SSESpecification,
        }),
    },
})

M.RestoreTableToPointInTimeOutput = schema.new({
    id = id.from(_N, "RestoreTableToPointInTimeOutput"),
    type = "structure",
    members = {
        TableDescription = schema.new({
            id = id.from(_N, "RestoreTableToPointInTimeOutput", "TableDescription"),
            type = "structure",
            name = "TableDescription",
            target_id = id.from(_N, "TableDescription"),
            target = M.TableDescription,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
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

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.PointInTimeRecoverySpecification = schema.new({
    id = id.from(_N, "PointInTimeRecoverySpecification"),
    type = "structure",
    members = {
        PointInTimeRecoveryEnabled = schema.new({
            id = id.from(_N, "PointInTimeRecoverySpecification", "PointInTimeRecoveryEnabled"),
            type = "boolean",
            name = "PointInTimeRecoveryEnabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecoveryPeriodInDays = schema.new({
            id = id.from(_N, "PointInTimeRecoverySpecification", "RecoveryPeriodInDays"),
            type = "integer",
            name = "RecoveryPeriodInDays",
            target_id = prelude.Integer.id,
        }),
    },
})

M.UpdateContinuousBackupsInput = schema.new({
    id = id.from(_N, "UpdateContinuousBackupsInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "UpdateContinuousBackupsInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PointInTimeRecoverySpecification = schema.new({
            id = id.from(_N, "UpdateContinuousBackupsInput", "PointInTimeRecoverySpecification"),
            type = "structure",
            name = "PointInTimeRecoverySpecification",
            target_id = id.from(_N, "PointInTimeRecoverySpecification"),
            target = M.PointInTimeRecoverySpecification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateContinuousBackupsOutput = schema.new({
    id = id.from(_N, "UpdateContinuousBackupsOutput"),
    type = "structure",
    members = {
        ContinuousBackupsDescription = schema.new({
            id = id.from(_N, "UpdateContinuousBackupsOutput", "ContinuousBackupsDescription"),
            type = "structure",
            name = "ContinuousBackupsDescription",
            target_id = id.from(_N, "ContinuousBackupsDescription"),
            target = M.ContinuousBackupsDescription,
        }),
    },
})

M.UpdateContributorInsightsInput = schema.new({
    id = id.from(_N, "UpdateContributorInsightsInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "UpdateContributorInsightsInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IndexName = schema.new({
            id = id.from(_N, "UpdateContributorInsightsInput", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
        }),
        ContributorInsightsAction = schema.new({
            id = id.from(_N, "UpdateContributorInsightsInput", "ContributorInsightsAction"),
            type = "string",
            name = "ContributorInsightsAction",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContributorInsightsMode = schema.new({
            id = id.from(_N, "UpdateContributorInsightsInput", "ContributorInsightsMode"),
            type = "string",
            name = "ContributorInsightsMode",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateContributorInsightsOutput = schema.new({
    id = id.from(_N, "UpdateContributorInsightsOutput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "UpdateContributorInsightsOutput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        IndexName = schema.new({
            id = id.from(_N, "UpdateContributorInsightsOutput", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
        }),
        ContributorInsightsStatus = schema.new({
            id = id.from(_N, "UpdateContributorInsightsOutput", "ContributorInsightsStatus"),
            type = "string",
            name = "ContributorInsightsStatus",
            target_id = prelude.String.id,
        }),
        ContributorInsightsMode = schema.new({
            id = id.from(_N, "UpdateContributorInsightsOutput", "ContributorInsightsMode"),
            type = "string",
            name = "ContributorInsightsMode",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicaAlreadyExistsException = schema.new({
    id = id.from(_N, "ReplicaAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReplicaAlreadyExistsException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicaNotFoundException = schema.new({
    id = id.from(_N, "ReplicaNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ReplicaNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicaUpdate = schema.new({
    id = id.from(_N, "ReplicaUpdate"),
    type = "structure",
    members = {
        Create = schema.new({
            id = id.from(_N, "ReplicaUpdate", "Create"),
            type = "structure",
            name = "Create",
            target_id = id.from(_N, "CreateReplicaAction"),
            target = M.CreateReplicaAction,
        }),
        Delete = schema.new({
            id = id.from(_N, "ReplicaUpdate", "Delete"),
            type = "structure",
            name = "Delete",
            target_id = id.from(_N, "DeleteReplicaAction"),
            target = M.DeleteReplicaAction,
        }),
    },
})

M.UpdateGlobalTableInput = schema.new({
    id = id.from(_N, "UpdateGlobalTableInput"),
    type = "structure",
    members = {
        GlobalTableName = schema.new({
            id = id.from(_N, "UpdateGlobalTableInput", "GlobalTableName"),
            type = "string",
            name = "GlobalTableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicaUpdates = schema.new({
            id = id.from(_N, "UpdateGlobalTableInput", "ReplicaUpdates"),
            type = "list",
            name = "ReplicaUpdates",
            target_id = prelude.Document.id,
            list_member = M.ReplicaUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateGlobalTableOutput = schema.new({
    id = id.from(_N, "UpdateGlobalTableOutput"),
    type = "structure",
    members = {
        GlobalTableDescription = schema.new({
            id = id.from(_N, "UpdateGlobalTableOutput", "GlobalTableDescription"),
            type = "structure",
            name = "GlobalTableDescription",
            target_id = id.from(_N, "GlobalTableDescription"),
            target = M.GlobalTableDescription,
        }),
    },
})

M.IndexNotFoundException = schema.new({
    id = id.from(_N, "IndexNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "IndexNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GlobalTableGlobalSecondaryIndexSettingsUpdate = schema.new({
    id = id.from(_N, "GlobalTableGlobalSecondaryIndexSettingsUpdate"),
    type = "structure",
    members = {
        IndexName = schema.new({
            id = id.from(_N, "GlobalTableGlobalSecondaryIndexSettingsUpdate", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisionedWriteCapacityUnits = schema.new({
            id = id.from(_N, "GlobalTableGlobalSecondaryIndexSettingsUpdate", "ProvisionedWriteCapacityUnits"),
            type = "long",
            name = "ProvisionedWriteCapacityUnits",
            target_id = prelude.Long.id,
        }),
        ProvisionedWriteCapacityAutoScalingSettingsUpdate = schema.new({
            id = id.from(_N, "GlobalTableGlobalSecondaryIndexSettingsUpdate", "ProvisionedWriteCapacityAutoScalingSettingsUpdate"),
            type = "structure",
            name = "ProvisionedWriteCapacityAutoScalingSettingsUpdate",
            target_id = id.from(_N, "AutoScalingSettingsUpdate"),
            target = M.AutoScalingSettingsUpdate,
        }),
    },
})

M.ReplicaGlobalSecondaryIndexSettingsUpdate = schema.new({
    id = id.from(_N, "ReplicaGlobalSecondaryIndexSettingsUpdate"),
    type = "structure",
    members = {
        IndexName = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexSettingsUpdate", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisionedReadCapacityUnits = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexSettingsUpdate", "ProvisionedReadCapacityUnits"),
            type = "long",
            name = "ProvisionedReadCapacityUnits",
            target_id = prelude.Long.id,
        }),
        ProvisionedReadCapacityAutoScalingSettingsUpdate = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexSettingsUpdate", "ProvisionedReadCapacityAutoScalingSettingsUpdate"),
            type = "structure",
            name = "ProvisionedReadCapacityAutoScalingSettingsUpdate",
            target_id = id.from(_N, "AutoScalingSettingsUpdate"),
            target = M.AutoScalingSettingsUpdate,
        }),
    },
})

M.ReplicaSettingsUpdate = schema.new({
    id = id.from(_N, "ReplicaSettingsUpdate"),
    type = "structure",
    members = {
        RegionName = schema.new({
            id = id.from(_N, "ReplicaSettingsUpdate", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicaProvisionedReadCapacityUnits = schema.new({
            id = id.from(_N, "ReplicaSettingsUpdate", "ReplicaProvisionedReadCapacityUnits"),
            type = "long",
            name = "ReplicaProvisionedReadCapacityUnits",
            target_id = prelude.Long.id,
        }),
        ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate = schema.new({
            id = id.from(_N, "ReplicaSettingsUpdate", "ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate"),
            type = "structure",
            name = "ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate",
            target_id = id.from(_N, "AutoScalingSettingsUpdate"),
            target = M.AutoScalingSettingsUpdate,
        }),
        ReplicaGlobalSecondaryIndexSettingsUpdate = schema.new({
            id = id.from(_N, "ReplicaSettingsUpdate", "ReplicaGlobalSecondaryIndexSettingsUpdate"),
            type = "list",
            name = "ReplicaGlobalSecondaryIndexSettingsUpdate",
            target_id = prelude.Document.id,
            list_member = M.ReplicaGlobalSecondaryIndexSettingsUpdate,
        }),
        ReplicaTableClass = schema.new({
            id = id.from(_N, "ReplicaSettingsUpdate", "ReplicaTableClass"),
            type = "string",
            name = "ReplicaTableClass",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateGlobalTableSettingsInput = schema.new({
    id = id.from(_N, "UpdateGlobalTableSettingsInput"),
    type = "structure",
    members = {
        GlobalTableName = schema.new({
            id = id.from(_N, "UpdateGlobalTableSettingsInput", "GlobalTableName"),
            type = "string",
            name = "GlobalTableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GlobalTableBillingMode = schema.new({
            id = id.from(_N, "UpdateGlobalTableSettingsInput", "GlobalTableBillingMode"),
            type = "string",
            name = "GlobalTableBillingMode",
            target_id = prelude.String.id,
        }),
        GlobalTableProvisionedWriteCapacityUnits = schema.new({
            id = id.from(_N, "UpdateGlobalTableSettingsInput", "GlobalTableProvisionedWriteCapacityUnits"),
            type = "long",
            name = "GlobalTableProvisionedWriteCapacityUnits",
            target_id = prelude.Long.id,
        }),
        GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate = schema.new({
            id = id.from(_N, "UpdateGlobalTableSettingsInput", "GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate"),
            type = "structure",
            name = "GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate",
            target_id = id.from(_N, "AutoScalingSettingsUpdate"),
            target = M.AutoScalingSettingsUpdate,
        }),
        GlobalTableGlobalSecondaryIndexSettingsUpdate = schema.new({
            id = id.from(_N, "UpdateGlobalTableSettingsInput", "GlobalTableGlobalSecondaryIndexSettingsUpdate"),
            type = "list",
            name = "GlobalTableGlobalSecondaryIndexSettingsUpdate",
            target_id = prelude.Document.id,
            list_member = M.GlobalTableGlobalSecondaryIndexSettingsUpdate,
        }),
        ReplicaSettingsUpdate = schema.new({
            id = id.from(_N, "UpdateGlobalTableSettingsInput", "ReplicaSettingsUpdate"),
            type = "list",
            name = "ReplicaSettingsUpdate",
            target_id = prelude.Document.id,
            list_member = M.ReplicaSettingsUpdate,
        }),
    },
})

M.UpdateGlobalTableSettingsOutput = schema.new({
    id = id.from(_N, "UpdateGlobalTableSettingsOutput"),
    type = "structure",
    members = {
        GlobalTableName = schema.new({
            id = id.from(_N, "UpdateGlobalTableSettingsOutput", "GlobalTableName"),
            type = "string",
            name = "GlobalTableName",
            target_id = prelude.String.id,
        }),
        ReplicaSettings = schema.new({
            id = id.from(_N, "UpdateGlobalTableSettingsOutput", "ReplicaSettings"),
            type = "list",
            name = "ReplicaSettings",
            target_id = prelude.Document.id,
            list_member = M.ReplicaSettingsDescription,
        }),
    },
})

M.UpdateKinesisStreamingConfiguration = schema.new({
    id = id.from(_N, "UpdateKinesisStreamingConfiguration"),
    type = "structure",
    members = {
        ApproximateCreationDateTimePrecision = schema.new({
            id = id.from(_N, "UpdateKinesisStreamingConfiguration", "ApproximateCreationDateTimePrecision"),
            type = "string",
            name = "ApproximateCreationDateTimePrecision",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateKinesisStreamingDestinationInput = schema.new({
    id = id.from(_N, "UpdateKinesisStreamingDestinationInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "UpdateKinesisStreamingDestinationInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StreamArn = schema.new({
            id = id.from(_N, "UpdateKinesisStreamingDestinationInput", "StreamArn"),
            type = "string",
            name = "StreamArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpdateKinesisStreamingConfiguration = schema.new({
            id = id.from(_N, "UpdateKinesisStreamingDestinationInput", "UpdateKinesisStreamingConfiguration"),
            type = "structure",
            name = "UpdateKinesisStreamingConfiguration",
            target_id = id.from(_N, "UpdateKinesisStreamingConfiguration"),
            target = M.UpdateKinesisStreamingConfiguration,
        }),
    },
})

M.UpdateKinesisStreamingDestinationOutput = schema.new({
    id = id.from(_N, "UpdateKinesisStreamingDestinationOutput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "UpdateKinesisStreamingDestinationOutput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        StreamArn = schema.new({
            id = id.from(_N, "UpdateKinesisStreamingDestinationOutput", "StreamArn"),
            type = "string",
            name = "StreamArn",
            target_id = prelude.String.id,
        }),
        DestinationStatus = schema.new({
            id = id.from(_N, "UpdateKinesisStreamingDestinationOutput", "DestinationStatus"),
            type = "string",
            name = "DestinationStatus",
            target_id = prelude.String.id,
        }),
        UpdateKinesisStreamingConfiguration = schema.new({
            id = id.from(_N, "UpdateKinesisStreamingDestinationOutput", "UpdateKinesisStreamingConfiguration"),
            type = "structure",
            name = "UpdateKinesisStreamingConfiguration",
            target_id = id.from(_N, "UpdateKinesisStreamingConfiguration"),
            target = M.UpdateKinesisStreamingConfiguration,
        }),
    },
})

M.UpdateGlobalSecondaryIndexAction = schema.new({
    id = id.from(_N, "UpdateGlobalSecondaryIndexAction"),
    type = "structure",
    members = {
        IndexName = schema.new({
            id = id.from(_N, "UpdateGlobalSecondaryIndexAction", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisionedThroughput = schema.new({
            id = id.from(_N, "UpdateGlobalSecondaryIndexAction", "ProvisionedThroughput"),
            type = "structure",
            name = "ProvisionedThroughput",
            target_id = id.from(_N, "ProvisionedThroughput"),
            target = M.ProvisionedThroughput,
        }),
        OnDemandThroughput = schema.new({
            id = id.from(_N, "UpdateGlobalSecondaryIndexAction", "OnDemandThroughput"),
            type = "structure",
            name = "OnDemandThroughput",
            target_id = id.from(_N, "OnDemandThroughput"),
            target = M.OnDemandThroughput,
        }),
        WarmThroughput = schema.new({
            id = id.from(_N, "UpdateGlobalSecondaryIndexAction", "WarmThroughput"),
            type = "structure",
            name = "WarmThroughput",
            target_id = id.from(_N, "WarmThroughput"),
            target = M.WarmThroughput,
        }),
    },
})

M.GlobalSecondaryIndexUpdate = schema.new({
    id = id.from(_N, "GlobalSecondaryIndexUpdate"),
    type = "structure",
    members = {
        Update = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexUpdate", "Update"),
            type = "structure",
            name = "Update",
            target_id = id.from(_N, "UpdateGlobalSecondaryIndexAction"),
            target = M.UpdateGlobalSecondaryIndexAction,
        }),
        Create = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexUpdate", "Create"),
            type = "structure",
            name = "Create",
            target_id = id.from(_N, "CreateGlobalSecondaryIndexAction"),
            target = M.CreateGlobalSecondaryIndexAction,
        }),
        Delete = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexUpdate", "Delete"),
            type = "structure",
            name = "Delete",
            target_id = id.from(_N, "DeleteGlobalSecondaryIndexAction"),
            target = M.DeleteGlobalSecondaryIndexAction,
        }),
    },
})

M.GlobalTableWitnessGroupUpdate = schema.new({
    id = id.from(_N, "GlobalTableWitnessGroupUpdate"),
    type = "structure",
    members = {
        Create = schema.new({
            id = id.from(_N, "GlobalTableWitnessGroupUpdate", "Create"),
            type = "structure",
            name = "Create",
            target_id = id.from(_N, "CreateGlobalTableWitnessGroupMemberAction"),
            target = M.CreateGlobalTableWitnessGroupMemberAction,
        }),
        Delete = schema.new({
            id = id.from(_N, "GlobalTableWitnessGroupUpdate", "Delete"),
            type = "structure",
            name = "Delete",
            target_id = id.from(_N, "DeleteGlobalTableWitnessGroupMemberAction"),
            target = M.DeleteGlobalTableWitnessGroupMemberAction,
        }),
    },
})

M.UpdateReplicationGroupMemberAction = schema.new({
    id = id.from(_N, "UpdateReplicationGroupMemberAction"),
    type = "structure",
    members = {
        RegionName = schema.new({
            id = id.from(_N, "UpdateReplicationGroupMemberAction", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KMSMasterKeyId = schema.new({
            id = id.from(_N, "UpdateReplicationGroupMemberAction", "KMSMasterKeyId"),
            type = "string",
            name = "KMSMasterKeyId",
            target_id = prelude.String.id,
        }),
        ProvisionedThroughputOverride = schema.new({
            id = id.from(_N, "UpdateReplicationGroupMemberAction", "ProvisionedThroughputOverride"),
            type = "structure",
            name = "ProvisionedThroughputOverride",
            target_id = id.from(_N, "ProvisionedThroughputOverride"),
            target = M.ProvisionedThroughputOverride,
        }),
        OnDemandThroughputOverride = schema.new({
            id = id.from(_N, "UpdateReplicationGroupMemberAction", "OnDemandThroughputOverride"),
            type = "structure",
            name = "OnDemandThroughputOverride",
            target_id = id.from(_N, "OnDemandThroughputOverride"),
            target = M.OnDemandThroughputOverride,
        }),
        GlobalSecondaryIndexes = schema.new({
            id = id.from(_N, "UpdateReplicationGroupMemberAction", "GlobalSecondaryIndexes"),
            type = "list",
            name = "GlobalSecondaryIndexes",
            target_id = prelude.Document.id,
            list_member = M.ReplicaGlobalSecondaryIndex,
        }),
        TableClassOverride = schema.new({
            id = id.from(_N, "UpdateReplicationGroupMemberAction", "TableClassOverride"),
            type = "string",
            name = "TableClassOverride",
            target_id = prelude.String.id,
        }),
    },
})

M.ReplicationGroupUpdate = schema.new({
    id = id.from(_N, "ReplicationGroupUpdate"),
    type = "structure",
    members = {
        Create = schema.new({
            id = id.from(_N, "ReplicationGroupUpdate", "Create"),
            type = "structure",
            name = "Create",
            target_id = id.from(_N, "CreateReplicationGroupMemberAction"),
            target = M.CreateReplicationGroupMemberAction,
        }),
        Update = schema.new({
            id = id.from(_N, "ReplicationGroupUpdate", "Update"),
            type = "structure",
            name = "Update",
            target_id = id.from(_N, "UpdateReplicationGroupMemberAction"),
            target = M.UpdateReplicationGroupMemberAction,
        }),
        Delete = schema.new({
            id = id.from(_N, "ReplicationGroupUpdate", "Delete"),
            type = "structure",
            name = "Delete",
            target_id = id.from(_N, "DeleteReplicationGroupMemberAction"),
            target = M.DeleteReplicationGroupMemberAction,
        }),
    },
})

M.UpdateTableInput = schema.new({
    id = id.from(_N, "UpdateTableInput"),
    type = "structure",
    members = {
        AttributeDefinitions = schema.new({
            id = id.from(_N, "UpdateTableInput", "AttributeDefinitions"),
            type = "list",
            name = "AttributeDefinitions",
            target_id = prelude.Document.id,
            list_member = M.AttributeDefinition,
        }),
        TableName = schema.new({
            id = id.from(_N, "UpdateTableInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BillingMode = schema.new({
            id = id.from(_N, "UpdateTableInput", "BillingMode"),
            type = "string",
            name = "BillingMode",
            target_id = prelude.String.id,
        }),
        ProvisionedThroughput = schema.new({
            id = id.from(_N, "UpdateTableInput", "ProvisionedThroughput"),
            type = "structure",
            name = "ProvisionedThroughput",
            target_id = id.from(_N, "ProvisionedThroughput"),
            target = M.ProvisionedThroughput,
        }),
        GlobalSecondaryIndexUpdates = schema.new({
            id = id.from(_N, "UpdateTableInput", "GlobalSecondaryIndexUpdates"),
            type = "list",
            name = "GlobalSecondaryIndexUpdates",
            target_id = prelude.Document.id,
            list_member = M.GlobalSecondaryIndexUpdate,
        }),
        StreamSpecification = schema.new({
            id = id.from(_N, "UpdateTableInput", "StreamSpecification"),
            type = "structure",
            name = "StreamSpecification",
            target_id = id.from(_N, "StreamSpecification"),
            target = M.StreamSpecification,
        }),
        SSESpecification = schema.new({
            id = id.from(_N, "UpdateTableInput", "SSESpecification"),
            type = "structure",
            name = "SSESpecification",
            target_id = id.from(_N, "SSESpecification"),
            target = M.SSESpecification,
        }),
        ReplicaUpdates = schema.new({
            id = id.from(_N, "UpdateTableInput", "ReplicaUpdates"),
            type = "list",
            name = "ReplicaUpdates",
            target_id = prelude.Document.id,
            list_member = M.ReplicationGroupUpdate,
        }),
        TableClass = schema.new({
            id = id.from(_N, "UpdateTableInput", "TableClass"),
            type = "string",
            name = "TableClass",
            target_id = prelude.String.id,
        }),
        DeletionProtectionEnabled = schema.new({
            id = id.from(_N, "UpdateTableInput", "DeletionProtectionEnabled"),
            type = "boolean",
            name = "DeletionProtectionEnabled",
            target_id = prelude.Boolean.id,
        }),
        MultiRegionConsistency = schema.new({
            id = id.from(_N, "UpdateTableInput", "MultiRegionConsistency"),
            type = "string",
            name = "MultiRegionConsistency",
            target_id = prelude.String.id,
        }),
        GlobalTableWitnessUpdates = schema.new({
            id = id.from(_N, "UpdateTableInput", "GlobalTableWitnessUpdates"),
            type = "list",
            name = "GlobalTableWitnessUpdates",
            target_id = prelude.Document.id,
            list_member = M.GlobalTableWitnessGroupUpdate,
        }),
        OnDemandThroughput = schema.new({
            id = id.from(_N, "UpdateTableInput", "OnDemandThroughput"),
            type = "structure",
            name = "OnDemandThroughput",
            target_id = id.from(_N, "OnDemandThroughput"),
            target = M.OnDemandThroughput,
        }),
        WarmThroughput = schema.new({
            id = id.from(_N, "UpdateTableInput", "WarmThroughput"),
            type = "structure",
            name = "WarmThroughput",
            target_id = id.from(_N, "WarmThroughput"),
            target = M.WarmThroughput,
        }),
        GlobalTableSettingsReplicationMode = schema.new({
            id = id.from(_N, "UpdateTableInput", "GlobalTableSettingsReplicationMode"),
            type = "string",
            name = "GlobalTableSettingsReplicationMode",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateTableOutput = schema.new({
    id = id.from(_N, "UpdateTableOutput"),
    type = "structure",
    members = {
        TableDescription = schema.new({
            id = id.from(_N, "UpdateTableOutput", "TableDescription"),
            type = "structure",
            name = "TableDescription",
            target_id = id.from(_N, "TableDescription"),
            target = M.TableDescription,
        }),
    },
})

M.GlobalSecondaryIndexAutoScalingUpdate = schema.new({
    id = id.from(_N, "GlobalSecondaryIndexAutoScalingUpdate"),
    type = "structure",
    members = {
        IndexName = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexAutoScalingUpdate", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
        }),
        ProvisionedWriteCapacityAutoScalingUpdate = schema.new({
            id = id.from(_N, "GlobalSecondaryIndexAutoScalingUpdate", "ProvisionedWriteCapacityAutoScalingUpdate"),
            type = "structure",
            name = "ProvisionedWriteCapacityAutoScalingUpdate",
            target_id = id.from(_N, "AutoScalingSettingsUpdate"),
            target = M.AutoScalingSettingsUpdate,
        }),
    },
})

M.ReplicaGlobalSecondaryIndexAutoScalingUpdate = schema.new({
    id = id.from(_N, "ReplicaGlobalSecondaryIndexAutoScalingUpdate"),
    type = "structure",
    members = {
        IndexName = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexAutoScalingUpdate", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
        }),
        ProvisionedReadCapacityAutoScalingUpdate = schema.new({
            id = id.from(_N, "ReplicaGlobalSecondaryIndexAutoScalingUpdate", "ProvisionedReadCapacityAutoScalingUpdate"),
            type = "structure",
            name = "ProvisionedReadCapacityAutoScalingUpdate",
            target_id = id.from(_N, "AutoScalingSettingsUpdate"),
            target = M.AutoScalingSettingsUpdate,
        }),
    },
})

M.ReplicaAutoScalingUpdate = schema.new({
    id = id.from(_N, "ReplicaAutoScalingUpdate"),
    type = "structure",
    members = {
        RegionName = schema.new({
            id = id.from(_N, "ReplicaAutoScalingUpdate", "RegionName"),
            type = "string",
            name = "RegionName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReplicaGlobalSecondaryIndexUpdates = schema.new({
            id = id.from(_N, "ReplicaAutoScalingUpdate", "ReplicaGlobalSecondaryIndexUpdates"),
            type = "list",
            name = "ReplicaGlobalSecondaryIndexUpdates",
            target_id = prelude.Document.id,
            list_member = M.ReplicaGlobalSecondaryIndexAutoScalingUpdate,
        }),
        ReplicaProvisionedReadCapacityAutoScalingUpdate = schema.new({
            id = id.from(_N, "ReplicaAutoScalingUpdate", "ReplicaProvisionedReadCapacityAutoScalingUpdate"),
            type = "structure",
            name = "ReplicaProvisionedReadCapacityAutoScalingUpdate",
            target_id = id.from(_N, "AutoScalingSettingsUpdate"),
            target = M.AutoScalingSettingsUpdate,
        }),
    },
})

M.UpdateTableReplicaAutoScalingInput = schema.new({
    id = id.from(_N, "UpdateTableReplicaAutoScalingInput"),
    type = "structure",
    members = {
        GlobalSecondaryIndexUpdates = schema.new({
            id = id.from(_N, "UpdateTableReplicaAutoScalingInput", "GlobalSecondaryIndexUpdates"),
            type = "list",
            name = "GlobalSecondaryIndexUpdates",
            target_id = prelude.Document.id,
            list_member = M.GlobalSecondaryIndexAutoScalingUpdate,
        }),
        TableName = schema.new({
            id = id.from(_N, "UpdateTableReplicaAutoScalingInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProvisionedWriteCapacityAutoScalingUpdate = schema.new({
            id = id.from(_N, "UpdateTableReplicaAutoScalingInput", "ProvisionedWriteCapacityAutoScalingUpdate"),
            type = "structure",
            name = "ProvisionedWriteCapacityAutoScalingUpdate",
            target_id = id.from(_N, "AutoScalingSettingsUpdate"),
            target = M.AutoScalingSettingsUpdate,
        }),
        ReplicaUpdates = schema.new({
            id = id.from(_N, "UpdateTableReplicaAutoScalingInput", "ReplicaUpdates"),
            type = "list",
            name = "ReplicaUpdates",
            target_id = prelude.Document.id,
            list_member = M.ReplicaAutoScalingUpdate,
        }),
    },
})

M.UpdateTableReplicaAutoScalingOutput = schema.new({
    id = id.from(_N, "UpdateTableReplicaAutoScalingOutput"),
    type = "structure",
    members = {
        TableAutoScalingDescription = schema.new({
            id = id.from(_N, "UpdateTableReplicaAutoScalingOutput", "TableAutoScalingDescription"),
            type = "structure",
            name = "TableAutoScalingDescription",
            target_id = id.from(_N, "TableAutoScalingDescription"),
            target = M.TableAutoScalingDescription,
        }),
    },
})

M.TimeToLiveSpecification = schema.new({
    id = id.from(_N, "TimeToLiveSpecification"),
    type = "structure",
    members = {
        Enabled = schema.new({
            id = id.from(_N, "TimeToLiveSpecification", "Enabled"),
            type = "boolean",
            name = "Enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttributeName = schema.new({
            id = id.from(_N, "TimeToLiveSpecification", "AttributeName"),
            type = "string",
            name = "AttributeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateTimeToLiveInput = schema.new({
    id = id.from(_N, "UpdateTimeToLiveInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "UpdateTimeToLiveInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimeToLiveSpecification = schema.new({
            id = id.from(_N, "UpdateTimeToLiveInput", "TimeToLiveSpecification"),
            type = "structure",
            name = "TimeToLiveSpecification",
            target_id = id.from(_N, "TimeToLiveSpecification"),
            target = M.TimeToLiveSpecification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateTimeToLiveOutput = schema.new({
    id = id.from(_N, "UpdateTimeToLiveOutput"),
    type = "structure",
    members = {
        TimeToLiveSpecification = schema.new({
            id = id.from(_N, "UpdateTimeToLiveOutput", "TimeToLiveSpecification"),
            type = "structure",
            name = "TimeToLiveSpecification",
            target_id = id.from(_N, "TimeToLiveSpecification"),
            target = M.TimeToLiveSpecification,
        }),
    },
})

M.AttributeValue = schema.new({
    id = id.from(_N, "AttributeValue"),
    type = "union",
    members = {
        S = schema.new({
            id = id.from(_N, "AttributeValue", "S"),
            type = "string",
            name = "S",
            target_id = prelude.String.id,
        }),
        N = schema.new({
            id = id.from(_N, "AttributeValue", "N"),
            type = "string",
            name = "N",
            target_id = prelude.String.id,
        }),
        B = schema.new({
            id = id.from(_N, "AttributeValue", "B"),
            type = "blob",
            name = "B",
            target_id = prelude.Blob.id,
        }),
        SS = schema.new({
            id = id.from(_N, "AttributeValue", "SS"),
            type = "list",
            name = "SS",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NS = schema.new({
            id = id.from(_N, "AttributeValue", "NS"),
            type = "list",
            name = "NS",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        BS = schema.new({
            id = id.from(_N, "AttributeValue", "BS"),
            type = "list",
            name = "BS",
            target_id = prelude.Document.id,
            list_member = prelude.Blob,
        }),
        M = schema.new({
            id = id.from(_N, "AttributeValue", "M"),
            type = "map",
            name = "M",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        L = schema.new({
            id = id.from(_N, "AttributeValue", "L"),
            type = "list",
            name = "L",
            target_id = prelude.Document.id,
            list_member = M.AttributeValue,
        }),
        NULL = schema.new({
            id = id.from(_N, "AttributeValue", "NULL"),
            type = "boolean",
            name = "NULL",
            target_id = prelude.Boolean.id,
        }),
        BOOL = schema.new({
            id = id.from(_N, "AttributeValue", "BOOL"),
            type = "boolean",
            name = "BOOL",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.AttributeValueUpdate = schema.new({
    id = id.from(_N, "AttributeValueUpdate"),
    type = "structure",
    members = {
        Value = schema.new({
            id = id.from(_N, "AttributeValueUpdate", "Value"),
            type = "union",
            name = "Value",
            target_id = id.from(_N, "AttributeValue"),
            target = M.AttributeValue,
        }),
        Action = schema.new({
            id = id.from(_N, "AttributeValueUpdate", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchStatementError = schema.new({
    id = id.from(_N, "BatchStatementError"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "BatchStatementError", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "BatchStatementError", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        Item = schema.new({
            id = id.from(_N, "BatchStatementError", "Item"),
            type = "map",
            name = "Item",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
    },
})

M.BatchStatementRequest = schema.new({
    id = id.from(_N, "BatchStatementRequest"),
    type = "structure",
    members = {
        Statement = schema.new({
            id = id.from(_N, "BatchStatementRequest", "Statement"),
            type = "string",
            name = "Statement",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Parameters = schema.new({
            id = id.from(_N, "BatchStatementRequest", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = M.AttributeValue,
        }),
        ConsistentRead = schema.new({
            id = id.from(_N, "BatchStatementRequest", "ConsistentRead"),
            type = "boolean",
            name = "ConsistentRead",
            target_id = prelude.Boolean.id,
        }),
        ReturnValuesOnConditionCheckFailure = schema.new({
            id = id.from(_N, "BatchStatementRequest", "ReturnValuesOnConditionCheckFailure"),
            type = "string",
            name = "ReturnValuesOnConditionCheckFailure",
            target_id = prelude.String.id,
        }),
    },
})

M.CancellationReason = schema.new({
    id = id.from(_N, "CancellationReason"),
    type = "structure",
    members = {
        Item = schema.new({
            id = id.from(_N, "CancellationReason", "Item"),
            type = "map",
            name = "Item",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        Code = schema.new({
            id = id.from(_N, "CancellationReason", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "CancellationReason", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Condition = schema.new({
    id = id.from(_N, "Condition"),
    type = "structure",
    members = {
        AttributeValueList = schema.new({
            id = id.from(_N, "Condition", "AttributeValueList"),
            type = "list",
            name = "AttributeValueList",
            target_id = prelude.Document.id,
            list_member = M.AttributeValue,
        }),
        ComparisonOperator = schema.new({
            id = id.from(_N, "Condition", "ComparisonOperator"),
            type = "string",
            name = "ComparisonOperator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConditionalCheckFailedException = schema.new({
    id = id.from(_N, "ConditionalCheckFailedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConditionalCheckFailedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        Item = schema.new({
            id = id.from(_N, "ConditionalCheckFailedException", "Item"),
            type = "map",
            name = "Item",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
    },
})

M.DeleteRequest = schema.new({
    id = id.from(_N, "DeleteRequest"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "DeleteRequest", "Key"),
            type = "map",
            name = "Key",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExecuteStatementInput = schema.new({
    id = id.from(_N, "ExecuteStatementInput"),
    type = "structure",
    members = {
        Statement = schema.new({
            id = id.from(_N, "ExecuteStatementInput", "Statement"),
            type = "string",
            name = "Statement",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Parameters = schema.new({
            id = id.from(_N, "ExecuteStatementInput", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = M.AttributeValue,
        }),
        ConsistentRead = schema.new({
            id = id.from(_N, "ExecuteStatementInput", "ConsistentRead"),
            type = "boolean",
            name = "ConsistentRead",
            target_id = prelude.Boolean.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ExecuteStatementInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ReturnConsumedCapacity = schema.new({
            id = id.from(_N, "ExecuteStatementInput", "ReturnConsumedCapacity"),
            type = "string",
            name = "ReturnConsumedCapacity",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ExecuteStatementInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
        ReturnValuesOnConditionCheckFailure = schema.new({
            id = id.from(_N, "ExecuteStatementInput", "ReturnValuesOnConditionCheckFailure"),
            type = "string",
            name = "ReturnValuesOnConditionCheckFailure",
            target_id = prelude.String.id,
        }),
    },
})

M.Get = schema.new({
    id = id.from(_N, "Get"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Get", "Key"),
            type = "map",
            name = "Key",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableName = schema.new({
            id = id.from(_N, "Get", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ProjectionExpression = schema.new({
            id = id.from(_N, "Get", "ProjectionExpression"),
            type = "string",
            name = "ProjectionExpression",
            target_id = prelude.String.id,
        }),
        ExpressionAttributeNames = schema.new({
            id = id.from(_N, "Get", "ExpressionAttributeNames"),
            type = "map",
            name = "ExpressionAttributeNames",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetItemInput = schema.new({
    id = id.from(_N, "GetItemInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "GetItemInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Key = schema.new({
            id = id.from(_N, "GetItemInput", "Key"),
            type = "map",
            name = "Key",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttributesToGet = schema.new({
            id = id.from(_N, "GetItemInput", "AttributesToGet"),
            type = "list",
            name = "AttributesToGet",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ConsistentRead = schema.new({
            id = id.from(_N, "GetItemInput", "ConsistentRead"),
            type = "boolean",
            name = "ConsistentRead",
            target_id = prelude.Boolean.id,
        }),
        ReturnConsumedCapacity = schema.new({
            id = id.from(_N, "GetItemInput", "ReturnConsumedCapacity"),
            type = "string",
            name = "ReturnConsumedCapacity",
            target_id = prelude.String.id,
        }),
        ProjectionExpression = schema.new({
            id = id.from(_N, "GetItemInput", "ProjectionExpression"),
            type = "string",
            name = "ProjectionExpression",
            target_id = prelude.String.id,
        }),
        ExpressionAttributeNames = schema.new({
            id = id.from(_N, "GetItemInput", "ExpressionAttributeNames"),
            type = "map",
            name = "ExpressionAttributeNames",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.GetItemOutput = schema.new({
    id = id.from(_N, "GetItemOutput"),
    type = "structure",
    members = {
        Item = schema.new({
            id = id.from(_N, "GetItemOutput", "Item"),
            type = "map",
            name = "Item",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        ConsumedCapacity = schema.new({
            id = id.from(_N, "GetItemOutput", "ConsumedCapacity"),
            type = "structure",
            name = "ConsumedCapacity",
            target_id = id.from(_N, "ConsumedCapacity"),
            target = M.ConsumedCapacity,
        }),
    },
})

M.ItemCollectionMetrics = schema.new({
    id = id.from(_N, "ItemCollectionMetrics"),
    type = "structure",
    members = {
        ItemCollectionKey = schema.new({
            id = id.from(_N, "ItemCollectionMetrics", "ItemCollectionKey"),
            type = "map",
            name = "ItemCollectionKey",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        SizeEstimateRangeGB = schema.new({
            id = id.from(_N, "ItemCollectionMetrics", "SizeEstimateRangeGB"),
            type = "list",
            name = "SizeEstimateRangeGB",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
        }),
    },
})

M.ItemResponse = schema.new({
    id = id.from(_N, "ItemResponse"),
    type = "structure",
    members = {
        Item = schema.new({
            id = id.from(_N, "ItemResponse", "Item"),
            type = "map",
            name = "Item",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
    },
})

M.ParameterizedStatement = schema.new({
    id = id.from(_N, "ParameterizedStatement"),
    type = "structure",
    members = {
        Statement = schema.new({
            id = id.from(_N, "ParameterizedStatement", "Statement"),
            type = "string",
            name = "Statement",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Parameters = schema.new({
            id = id.from(_N, "ParameterizedStatement", "Parameters"),
            type = "list",
            name = "Parameters",
            target_id = prelude.Document.id,
            list_member = M.AttributeValue,
        }),
        ReturnValuesOnConditionCheckFailure = schema.new({
            id = id.from(_N, "ParameterizedStatement", "ReturnValuesOnConditionCheckFailure"),
            type = "string",
            name = "ReturnValuesOnConditionCheckFailure",
            target_id = prelude.String.id,
        }),
    },
})

M.PutRequest = schema.new({
    id = id.from(_N, "PutRequest"),
    type = "structure",
    members = {
        Item = schema.new({
            id = id.from(_N, "PutRequest", "Item"),
            type = "map",
            name = "Item",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KeysAndAttributes = schema.new({
    id = id.from(_N, "KeysAndAttributes"),
    type = "structure",
    members = {
        Keys = schema.new({
            id = id.from(_N, "KeysAndAttributes", "Keys"),
            type = "list",
            name = "Keys",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttributesToGet = schema.new({
            id = id.from(_N, "KeysAndAttributes", "AttributesToGet"),
            type = "list",
            name = "AttributesToGet",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ConsistentRead = schema.new({
            id = id.from(_N, "KeysAndAttributes", "ConsistentRead"),
            type = "boolean",
            name = "ConsistentRead",
            target_id = prelude.Boolean.id,
        }),
        ProjectionExpression = schema.new({
            id = id.from(_N, "KeysAndAttributes", "ProjectionExpression"),
            type = "string",
            name = "ProjectionExpression",
            target_id = prelude.String.id,
        }),
        ExpressionAttributeNames = schema.new({
            id = id.from(_N, "KeysAndAttributes", "ExpressionAttributeNames"),
            type = "map",
            name = "ExpressionAttributeNames",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.TransactGetItem = schema.new({
    id = id.from(_N, "TransactGetItem"),
    type = "structure",
    members = {
        Get = schema.new({
            id = id.from(_N, "TransactGetItem", "Get"),
            type = "structure",
            name = "Get",
            target_id = id.from(_N, "Get"),
            target = M.Get,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchExecuteStatementInput = schema.new({
    id = id.from(_N, "BatchExecuteStatementInput"),
    type = "structure",
    members = {
        Statements = schema.new({
            id = id.from(_N, "BatchExecuteStatementInput", "Statements"),
            type = "list",
            name = "Statements",
            target_id = prelude.Document.id,
            list_member = M.BatchStatementRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReturnConsumedCapacity = schema.new({
            id = id.from(_N, "BatchExecuteStatementInput", "ReturnConsumedCapacity"),
            type = "string",
            name = "ReturnConsumedCapacity",
            target_id = prelude.String.id,
        }),
    },
})

M.ExecuteTransactionInput = schema.new({
    id = id.from(_N, "ExecuteTransactionInput"),
    type = "structure",
    members = {
        TransactStatements = schema.new({
            id = id.from(_N, "ExecuteTransactionInput", "TransactStatements"),
            type = "list",
            name = "TransactStatements",
            target_id = prelude.Document.id,
            list_member = M.ParameterizedStatement,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "ExecuteTransactionInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        ReturnConsumedCapacity = schema.new({
            id = id.from(_N, "ExecuteTransactionInput", "ReturnConsumedCapacity"),
            type = "string",
            name = "ReturnConsumedCapacity",
            target_id = prelude.String.id,
        }),
    },
})

M.ExecuteTransactionOutput = schema.new({
    id = id.from(_N, "ExecuteTransactionOutput"),
    type = "structure",
    members = {
        Responses = schema.new({
            id = id.from(_N, "ExecuteTransactionOutput", "Responses"),
            type = "list",
            name = "Responses",
            target_id = prelude.Document.id,
            list_member = M.ItemResponse,
        }),
        ConsumedCapacity = schema.new({
            id = id.from(_N, "ExecuteTransactionOutput", "ConsumedCapacity"),
            type = "list",
            name = "ConsumedCapacity",
            target_id = prelude.Document.id,
            list_member = M.ConsumedCapacity,
        }),
    },
})

M.TransactGetItemsOutput = schema.new({
    id = id.from(_N, "TransactGetItemsOutput"),
    type = "structure",
    members = {
        ConsumedCapacity = schema.new({
            id = id.from(_N, "TransactGetItemsOutput", "ConsumedCapacity"),
            type = "list",
            name = "ConsumedCapacity",
            target_id = prelude.Document.id,
            list_member = M.ConsumedCapacity,
        }),
        Responses = schema.new({
            id = id.from(_N, "TransactGetItemsOutput", "Responses"),
            type = "list",
            name = "Responses",
            target_id = prelude.Document.id,
            list_member = M.ItemResponse,
        }),
    },
})

M.TransactionCanceledException = schema.new({
    id = id.from(_N, "TransactionCanceledException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TransactionCanceledException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        CancellationReasons = schema.new({
            id = id.from(_N, "TransactionCanceledException", "CancellationReasons"),
            type = "list",
            name = "CancellationReasons",
            target_id = prelude.Document.id,
            list_member = M.CancellationReason,
        }),
    },
})

M.BatchGetItemInput = schema.new({
    id = id.from(_N, "BatchGetItemInput"),
    type = "structure",
    members = {
        RequestItems = schema.new({
            id = id.from(_N, "BatchGetItemInput", "RequestItems"),
            type = "map",
            name = "RequestItems",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.KeysAndAttributes,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReturnConsumedCapacity = schema.new({
            id = id.from(_N, "BatchGetItemInput", "ReturnConsumedCapacity"),
            type = "string",
            name = "ReturnConsumedCapacity",
            target_id = prelude.String.id,
        }),
    },
})

M.ExpectedAttributeValue = schema.new({
    id = id.from(_N, "ExpectedAttributeValue"),
    type = "structure",
    members = {
        Value = schema.new({
            id = id.from(_N, "ExpectedAttributeValue", "Value"),
            type = "union",
            name = "Value",
            target_id = id.from(_N, "AttributeValue"),
            target = M.AttributeValue,
        }),
        Exists = schema.new({
            id = id.from(_N, "ExpectedAttributeValue", "Exists"),
            type = "boolean",
            name = "Exists",
            target_id = prelude.Boolean.id,
        }),
        ComparisonOperator = schema.new({
            id = id.from(_N, "ExpectedAttributeValue", "ComparisonOperator"),
            type = "string",
            name = "ComparisonOperator",
            target_id = prelude.String.id,
        }),
        AttributeValueList = schema.new({
            id = id.from(_N, "ExpectedAttributeValue", "AttributeValueList"),
            type = "list",
            name = "AttributeValueList",
            target_id = prelude.Document.id,
            list_member = M.AttributeValue,
        }),
    },
})

M.TransactGetItemsInput = schema.new({
    id = id.from(_N, "TransactGetItemsInput"),
    type = "structure",
    members = {
        TransactItems = schema.new({
            id = id.from(_N, "TransactGetItemsInput", "TransactItems"),
            type = "list",
            name = "TransactItems",
            target_id = prelude.Document.id,
            list_member = M.TransactGetItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReturnConsumedCapacity = schema.new({
            id = id.from(_N, "TransactGetItemsInput", "ReturnConsumedCapacity"),
            type = "string",
            name = "ReturnConsumedCapacity",
            target_id = prelude.String.id,
        }),
    },
})

M.TransactWriteItemsOutput = schema.new({
    id = id.from(_N, "TransactWriteItemsOutput"),
    type = "structure",
    members = {
        ConsumedCapacity = schema.new({
            id = id.from(_N, "TransactWriteItemsOutput", "ConsumedCapacity"),
            type = "list",
            name = "ConsumedCapacity",
            target_id = prelude.Document.id,
            list_member = M.ConsumedCapacity,
        }),
        ItemCollectionMetrics = schema.new({
            id = id.from(_N, "TransactWriteItemsOutput", "ItemCollectionMetrics"),
            type = "map",
            name = "ItemCollectionMetrics",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = M.ItemCollectionMetrics }),
        }),
    },
})

M.ConditionCheck = schema.new({
    id = id.from(_N, "ConditionCheck"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "ConditionCheck", "Key"),
            type = "map",
            name = "Key",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableName = schema.new({
            id = id.from(_N, "ConditionCheck", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConditionExpression = schema.new({
            id = id.from(_N, "ConditionCheck", "ConditionExpression"),
            type = "string",
            name = "ConditionExpression",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExpressionAttributeNames = schema.new({
            id = id.from(_N, "ConditionCheck", "ExpressionAttributeNames"),
            type = "map",
            name = "ExpressionAttributeNames",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ExpressionAttributeValues = schema.new({
            id = id.from(_N, "ConditionCheck", "ExpressionAttributeValues"),
            type = "map",
            name = "ExpressionAttributeValues",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        ReturnValuesOnConditionCheckFailure = schema.new({
            id = id.from(_N, "ConditionCheck", "ReturnValuesOnConditionCheckFailure"),
            type = "string",
            name = "ReturnValuesOnConditionCheckFailure",
            target_id = prelude.String.id,
        }),
    },
})

M.Delete = schema.new({
    id = id.from(_N, "Delete"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Delete", "Key"),
            type = "map",
            name = "Key",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableName = schema.new({
            id = id.from(_N, "Delete", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConditionExpression = schema.new({
            id = id.from(_N, "Delete", "ConditionExpression"),
            type = "string",
            name = "ConditionExpression",
            target_id = prelude.String.id,
        }),
        ExpressionAttributeNames = schema.new({
            id = id.from(_N, "Delete", "ExpressionAttributeNames"),
            type = "map",
            name = "ExpressionAttributeNames",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ExpressionAttributeValues = schema.new({
            id = id.from(_N, "Delete", "ExpressionAttributeValues"),
            type = "map",
            name = "ExpressionAttributeValues",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        ReturnValuesOnConditionCheckFailure = schema.new({
            id = id.from(_N, "Delete", "ReturnValuesOnConditionCheckFailure"),
            type = "string",
            name = "ReturnValuesOnConditionCheckFailure",
            target_id = prelude.String.id,
        }),
    },
})

M.Put = schema.new({
    id = id.from(_N, "Put"),
    type = "structure",
    members = {
        Item = schema.new({
            id = id.from(_N, "Put", "Item"),
            type = "map",
            name = "Item",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableName = schema.new({
            id = id.from(_N, "Put", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConditionExpression = schema.new({
            id = id.from(_N, "Put", "ConditionExpression"),
            type = "string",
            name = "ConditionExpression",
            target_id = prelude.String.id,
        }),
        ExpressionAttributeNames = schema.new({
            id = id.from(_N, "Put", "ExpressionAttributeNames"),
            type = "map",
            name = "ExpressionAttributeNames",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ExpressionAttributeValues = schema.new({
            id = id.from(_N, "Put", "ExpressionAttributeValues"),
            type = "map",
            name = "ExpressionAttributeValues",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        ReturnValuesOnConditionCheckFailure = schema.new({
            id = id.from(_N, "Put", "ReturnValuesOnConditionCheckFailure"),
            type = "string",
            name = "ReturnValuesOnConditionCheckFailure",
            target_id = prelude.String.id,
        }),
    },
})

M.Update = schema.new({
    id = id.from(_N, "Update"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Update", "Key"),
            type = "map",
            name = "Key",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        UpdateExpression = schema.new({
            id = id.from(_N, "Update", "UpdateExpression"),
            type = "string",
            name = "UpdateExpression",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TableName = schema.new({
            id = id.from(_N, "Update", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ConditionExpression = schema.new({
            id = id.from(_N, "Update", "ConditionExpression"),
            type = "string",
            name = "ConditionExpression",
            target_id = prelude.String.id,
        }),
        ExpressionAttributeNames = schema.new({
            id = id.from(_N, "Update", "ExpressionAttributeNames"),
            type = "map",
            name = "ExpressionAttributeNames",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ExpressionAttributeValues = schema.new({
            id = id.from(_N, "Update", "ExpressionAttributeValues"),
            type = "map",
            name = "ExpressionAttributeValues",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        ReturnValuesOnConditionCheckFailure = schema.new({
            id = id.from(_N, "Update", "ReturnValuesOnConditionCheckFailure"),
            type = "string",
            name = "ReturnValuesOnConditionCheckFailure",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchStatementResponse = schema.new({
    id = id.from(_N, "BatchStatementResponse"),
    type = "structure",
    members = {
        Error = schema.new({
            id = id.from(_N, "BatchStatementResponse", "Error"),
            type = "structure",
            name = "Error",
            target_id = id.from(_N, "BatchStatementError"),
            target = M.BatchStatementError,
        }),
        TableName = schema.new({
            id = id.from(_N, "BatchStatementResponse", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
        }),
        Item = schema.new({
            id = id.from(_N, "BatchStatementResponse", "Item"),
            type = "map",
            name = "Item",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
    },
})

M.DeleteItemOutput = schema.new({
    id = id.from(_N, "DeleteItemOutput"),
    type = "structure",
    members = {
        Attributes = schema.new({
            id = id.from(_N, "DeleteItemOutput", "Attributes"),
            type = "map",
            name = "Attributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        ConsumedCapacity = schema.new({
            id = id.from(_N, "DeleteItemOutput", "ConsumedCapacity"),
            type = "structure",
            name = "ConsumedCapacity",
            target_id = id.from(_N, "ConsumedCapacity"),
            target = M.ConsumedCapacity,
        }),
        ItemCollectionMetrics = schema.new({
            id = id.from(_N, "DeleteItemOutput", "ItemCollectionMetrics"),
            type = "structure",
            name = "ItemCollectionMetrics",
            target_id = id.from(_N, "ItemCollectionMetrics"),
            target = M.ItemCollectionMetrics,
        }),
    },
})

M.ExecuteStatementOutput = schema.new({
    id = id.from(_N, "ExecuteStatementOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ExecuteStatementOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ExecuteStatementOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ConsumedCapacity = schema.new({
            id = id.from(_N, "ExecuteStatementOutput", "ConsumedCapacity"),
            type = "structure",
            name = "ConsumedCapacity",
            target_id = id.from(_N, "ConsumedCapacity"),
            target = M.ConsumedCapacity,
        }),
        LastEvaluatedKey = schema.new({
            id = id.from(_N, "ExecuteStatementOutput", "LastEvaluatedKey"),
            type = "map",
            name = "LastEvaluatedKey",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
    },
})

M.PutItemOutput = schema.new({
    id = id.from(_N, "PutItemOutput"),
    type = "structure",
    members = {
        Attributes = schema.new({
            id = id.from(_N, "PutItemOutput", "Attributes"),
            type = "map",
            name = "Attributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        ConsumedCapacity = schema.new({
            id = id.from(_N, "PutItemOutput", "ConsumedCapacity"),
            type = "structure",
            name = "ConsumedCapacity",
            target_id = id.from(_N, "ConsumedCapacity"),
            target = M.ConsumedCapacity,
        }),
        ItemCollectionMetrics = schema.new({
            id = id.from(_N, "PutItemOutput", "ItemCollectionMetrics"),
            type = "structure",
            name = "ItemCollectionMetrics",
            target_id = id.from(_N, "ItemCollectionMetrics"),
            target = M.ItemCollectionMetrics,
        }),
    },
})

M.QueryOutput = schema.new({
    id = id.from(_N, "QueryOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "QueryOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        Count = schema.new({
            id = id.from(_N, "QueryOutput", "Count"),
            type = "integer",
            name = "Count",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ScannedCount = schema.new({
            id = id.from(_N, "QueryOutput", "ScannedCount"),
            type = "integer",
            name = "ScannedCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        LastEvaluatedKey = schema.new({
            id = id.from(_N, "QueryOutput", "LastEvaluatedKey"),
            type = "map",
            name = "LastEvaluatedKey",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        ConsumedCapacity = schema.new({
            id = id.from(_N, "QueryOutput", "ConsumedCapacity"),
            type = "structure",
            name = "ConsumedCapacity",
            target_id = id.from(_N, "ConsumedCapacity"),
            target = M.ConsumedCapacity,
        }),
    },
})

M.ScanOutput = schema.new({
    id = id.from(_N, "ScanOutput"),
    type = "structure",
    members = {
        Items = schema.new({
            id = id.from(_N, "ScanOutput", "Items"),
            type = "list",
            name = "Items",
            target_id = prelude.Document.id,
            list_member = prelude.Document,
        }),
        Count = schema.new({
            id = id.from(_N, "ScanOutput", "Count"),
            type = "integer",
            name = "Count",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ScannedCount = schema.new({
            id = id.from(_N, "ScanOutput", "ScannedCount"),
            type = "integer",
            name = "ScannedCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        LastEvaluatedKey = schema.new({
            id = id.from(_N, "ScanOutput", "LastEvaluatedKey"),
            type = "map",
            name = "LastEvaluatedKey",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        ConsumedCapacity = schema.new({
            id = id.from(_N, "ScanOutput", "ConsumedCapacity"),
            type = "structure",
            name = "ConsumedCapacity",
            target_id = id.from(_N, "ConsumedCapacity"),
            target = M.ConsumedCapacity,
        }),
    },
})

M.UpdateItemOutput = schema.new({
    id = id.from(_N, "UpdateItemOutput"),
    type = "structure",
    members = {
        Attributes = schema.new({
            id = id.from(_N, "UpdateItemOutput", "Attributes"),
            type = "map",
            name = "Attributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        ConsumedCapacity = schema.new({
            id = id.from(_N, "UpdateItemOutput", "ConsumedCapacity"),
            type = "structure",
            name = "ConsumedCapacity",
            target_id = id.from(_N, "ConsumedCapacity"),
            target = M.ConsumedCapacity,
        }),
        ItemCollectionMetrics = schema.new({
            id = id.from(_N, "UpdateItemOutput", "ItemCollectionMetrics"),
            type = "structure",
            name = "ItemCollectionMetrics",
            target_id = id.from(_N, "ItemCollectionMetrics"),
            target = M.ItemCollectionMetrics,
        }),
    },
})

M.WriteRequest = schema.new({
    id = id.from(_N, "WriteRequest"),
    type = "structure",
    members = {
        PutRequest = schema.new({
            id = id.from(_N, "WriteRequest", "PutRequest"),
            type = "structure",
            name = "PutRequest",
            target_id = id.from(_N, "PutRequest"),
            target = M.PutRequest,
        }),
        DeleteRequest = schema.new({
            id = id.from(_N, "WriteRequest", "DeleteRequest"),
            type = "structure",
            name = "DeleteRequest",
            target_id = id.from(_N, "DeleteRequest"),
            target = M.DeleteRequest,
        }),
    },
})

M.BatchExecuteStatementOutput = schema.new({
    id = id.from(_N, "BatchExecuteStatementOutput"),
    type = "structure",
    members = {
        Responses = schema.new({
            id = id.from(_N, "BatchExecuteStatementOutput", "Responses"),
            type = "list",
            name = "Responses",
            target_id = prelude.Document.id,
            list_member = M.BatchStatementResponse,
        }),
        ConsumedCapacity = schema.new({
            id = id.from(_N, "BatchExecuteStatementOutput", "ConsumedCapacity"),
            type = "list",
            name = "ConsumedCapacity",
            target_id = prelude.Document.id,
            list_member = M.ConsumedCapacity,
        }),
    },
})

M.BatchGetItemOutput = schema.new({
    id = id.from(_N, "BatchGetItemOutput"),
    type = "structure",
    members = {
        Responses = schema.new({
            id = id.from(_N, "BatchGetItemOutput", "Responses"),
            type = "map",
            name = "Responses",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.Document }),
        }),
        UnprocessedKeys = schema.new({
            id = id.from(_N, "BatchGetItemOutput", "UnprocessedKeys"),
            type = "map",
            name = "UnprocessedKeys",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.KeysAndAttributes,
        }),
        ConsumedCapacity = schema.new({
            id = id.from(_N, "BatchGetItemOutput", "ConsumedCapacity"),
            type = "list",
            name = "ConsumedCapacity",
            target_id = prelude.Document.id,
            list_member = M.ConsumedCapacity,
        }),
    },
})

M.ScanInput = schema.new({
    id = id.from(_N, "ScanInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "ScanInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IndexName = schema.new({
            id = id.from(_N, "ScanInput", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
        }),
        AttributesToGet = schema.new({
            id = id.from(_N, "ScanInput", "AttributesToGet"),
            type = "list",
            name = "AttributesToGet",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Limit = schema.new({
            id = id.from(_N, "ScanInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
        Select = schema.new({
            id = id.from(_N, "ScanInput", "Select"),
            type = "string",
            name = "Select",
            target_id = prelude.String.id,
        }),
        ScanFilter = schema.new({
            id = id.from(_N, "ScanInput", "ScanFilter"),
            type = "map",
            name = "ScanFilter",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Condition,
        }),
        ConditionalOperator = schema.new({
            id = id.from(_N, "ScanInput", "ConditionalOperator"),
            type = "string",
            name = "ConditionalOperator",
            target_id = prelude.String.id,
        }),
        ExclusiveStartKey = schema.new({
            id = id.from(_N, "ScanInput", "ExclusiveStartKey"),
            type = "map",
            name = "ExclusiveStartKey",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        ReturnConsumedCapacity = schema.new({
            id = id.from(_N, "ScanInput", "ReturnConsumedCapacity"),
            type = "string",
            name = "ReturnConsumedCapacity",
            target_id = prelude.String.id,
        }),
        TotalSegments = schema.new({
            id = id.from(_N, "ScanInput", "TotalSegments"),
            type = "integer",
            name = "TotalSegments",
            target_id = prelude.Integer.id,
        }),
        Segment = schema.new({
            id = id.from(_N, "ScanInput", "Segment"),
            type = "integer",
            name = "Segment",
            target_id = prelude.Integer.id,
        }),
        ProjectionExpression = schema.new({
            id = id.from(_N, "ScanInput", "ProjectionExpression"),
            type = "string",
            name = "ProjectionExpression",
            target_id = prelude.String.id,
        }),
        FilterExpression = schema.new({
            id = id.from(_N, "ScanInput", "FilterExpression"),
            type = "string",
            name = "FilterExpression",
            target_id = prelude.String.id,
        }),
        ExpressionAttributeNames = schema.new({
            id = id.from(_N, "ScanInput", "ExpressionAttributeNames"),
            type = "map",
            name = "ExpressionAttributeNames",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ExpressionAttributeValues = schema.new({
            id = id.from(_N, "ScanInput", "ExpressionAttributeValues"),
            type = "map",
            name = "ExpressionAttributeValues",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        ConsistentRead = schema.new({
            id = id.from(_N, "ScanInput", "ConsistentRead"),
            type = "boolean",
            name = "ConsistentRead",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.BatchWriteItemInput = schema.new({
    id = id.from(_N, "BatchWriteItemInput"),
    type = "structure",
    members = {
        RequestItems = schema.new({
            id = id.from(_N, "BatchWriteItemInput", "RequestItems"),
            type = "map",
            name = "RequestItems",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = M.WriteRequest }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReturnConsumedCapacity = schema.new({
            id = id.from(_N, "BatchWriteItemInput", "ReturnConsumedCapacity"),
            type = "string",
            name = "ReturnConsumedCapacity",
            target_id = prelude.String.id,
        }),
        ReturnItemCollectionMetrics = schema.new({
            id = id.from(_N, "BatchWriteItemInput", "ReturnItemCollectionMetrics"),
            type = "string",
            name = "ReturnItemCollectionMetrics",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteItemInput = schema.new({
    id = id.from(_N, "DeleteItemInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "DeleteItemInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Key = schema.new({
            id = id.from(_N, "DeleteItemInput", "Key"),
            type = "map",
            name = "Key",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Expected = schema.new({
            id = id.from(_N, "DeleteItemInput", "Expected"),
            type = "map",
            name = "Expected",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ExpectedAttributeValue,
        }),
        ConditionalOperator = schema.new({
            id = id.from(_N, "DeleteItemInput", "ConditionalOperator"),
            type = "string",
            name = "ConditionalOperator",
            target_id = prelude.String.id,
        }),
        ReturnValues = schema.new({
            id = id.from(_N, "DeleteItemInput", "ReturnValues"),
            type = "string",
            name = "ReturnValues",
            target_id = prelude.String.id,
        }),
        ReturnConsumedCapacity = schema.new({
            id = id.from(_N, "DeleteItemInput", "ReturnConsumedCapacity"),
            type = "string",
            name = "ReturnConsumedCapacity",
            target_id = prelude.String.id,
        }),
        ReturnItemCollectionMetrics = schema.new({
            id = id.from(_N, "DeleteItemInput", "ReturnItemCollectionMetrics"),
            type = "string",
            name = "ReturnItemCollectionMetrics",
            target_id = prelude.String.id,
        }),
        ConditionExpression = schema.new({
            id = id.from(_N, "DeleteItemInput", "ConditionExpression"),
            type = "string",
            name = "ConditionExpression",
            target_id = prelude.String.id,
        }),
        ExpressionAttributeNames = schema.new({
            id = id.from(_N, "DeleteItemInput", "ExpressionAttributeNames"),
            type = "map",
            name = "ExpressionAttributeNames",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ExpressionAttributeValues = schema.new({
            id = id.from(_N, "DeleteItemInput", "ExpressionAttributeValues"),
            type = "map",
            name = "ExpressionAttributeValues",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        ReturnValuesOnConditionCheckFailure = schema.new({
            id = id.from(_N, "DeleteItemInput", "ReturnValuesOnConditionCheckFailure"),
            type = "string",
            name = "ReturnValuesOnConditionCheckFailure",
            target_id = prelude.String.id,
        }),
    },
})

M.PutItemInput = schema.new({
    id = id.from(_N, "PutItemInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "PutItemInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Item = schema.new({
            id = id.from(_N, "PutItemInput", "Item"),
            type = "map",
            name = "Item",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Expected = schema.new({
            id = id.from(_N, "PutItemInput", "Expected"),
            type = "map",
            name = "Expected",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ExpectedAttributeValue,
        }),
        ReturnValues = schema.new({
            id = id.from(_N, "PutItemInput", "ReturnValues"),
            type = "string",
            name = "ReturnValues",
            target_id = prelude.String.id,
        }),
        ReturnConsumedCapacity = schema.new({
            id = id.from(_N, "PutItemInput", "ReturnConsumedCapacity"),
            type = "string",
            name = "ReturnConsumedCapacity",
            target_id = prelude.String.id,
        }),
        ReturnItemCollectionMetrics = schema.new({
            id = id.from(_N, "PutItemInput", "ReturnItemCollectionMetrics"),
            type = "string",
            name = "ReturnItemCollectionMetrics",
            target_id = prelude.String.id,
        }),
        ConditionalOperator = schema.new({
            id = id.from(_N, "PutItemInput", "ConditionalOperator"),
            type = "string",
            name = "ConditionalOperator",
            target_id = prelude.String.id,
        }),
        ConditionExpression = schema.new({
            id = id.from(_N, "PutItemInput", "ConditionExpression"),
            type = "string",
            name = "ConditionExpression",
            target_id = prelude.String.id,
        }),
        ExpressionAttributeNames = schema.new({
            id = id.from(_N, "PutItemInput", "ExpressionAttributeNames"),
            type = "map",
            name = "ExpressionAttributeNames",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ExpressionAttributeValues = schema.new({
            id = id.from(_N, "PutItemInput", "ExpressionAttributeValues"),
            type = "map",
            name = "ExpressionAttributeValues",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        ReturnValuesOnConditionCheckFailure = schema.new({
            id = id.from(_N, "PutItemInput", "ReturnValuesOnConditionCheckFailure"),
            type = "string",
            name = "ReturnValuesOnConditionCheckFailure",
            target_id = prelude.String.id,
        }),
    },
})

M.QueryInput = schema.new({
    id = id.from(_N, "QueryInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "QueryInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IndexName = schema.new({
            id = id.from(_N, "QueryInput", "IndexName"),
            type = "string",
            name = "IndexName",
            target_id = prelude.String.id,
        }),
        Select = schema.new({
            id = id.from(_N, "QueryInput", "Select"),
            type = "string",
            name = "Select",
            target_id = prelude.String.id,
        }),
        AttributesToGet = schema.new({
            id = id.from(_N, "QueryInput", "AttributesToGet"),
            type = "list",
            name = "AttributesToGet",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Limit = schema.new({
            id = id.from(_N, "QueryInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
        ConsistentRead = schema.new({
            id = id.from(_N, "QueryInput", "ConsistentRead"),
            type = "boolean",
            name = "ConsistentRead",
            target_id = prelude.Boolean.id,
        }),
        KeyConditions = schema.new({
            id = id.from(_N, "QueryInput", "KeyConditions"),
            type = "map",
            name = "KeyConditions",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Condition,
        }),
        QueryFilter = schema.new({
            id = id.from(_N, "QueryInput", "QueryFilter"),
            type = "map",
            name = "QueryFilter",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Condition,
        }),
        ConditionalOperator = schema.new({
            id = id.from(_N, "QueryInput", "ConditionalOperator"),
            type = "string",
            name = "ConditionalOperator",
            target_id = prelude.String.id,
        }),
        ScanIndexForward = schema.new({
            id = id.from(_N, "QueryInput", "ScanIndexForward"),
            type = "boolean",
            name = "ScanIndexForward",
            target_id = prelude.Boolean.id,
        }),
        ExclusiveStartKey = schema.new({
            id = id.from(_N, "QueryInput", "ExclusiveStartKey"),
            type = "map",
            name = "ExclusiveStartKey",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        ReturnConsumedCapacity = schema.new({
            id = id.from(_N, "QueryInput", "ReturnConsumedCapacity"),
            type = "string",
            name = "ReturnConsumedCapacity",
            target_id = prelude.String.id,
        }),
        ProjectionExpression = schema.new({
            id = id.from(_N, "QueryInput", "ProjectionExpression"),
            type = "string",
            name = "ProjectionExpression",
            target_id = prelude.String.id,
        }),
        FilterExpression = schema.new({
            id = id.from(_N, "QueryInput", "FilterExpression"),
            type = "string",
            name = "FilterExpression",
            target_id = prelude.String.id,
        }),
        KeyConditionExpression = schema.new({
            id = id.from(_N, "QueryInput", "KeyConditionExpression"),
            type = "string",
            name = "KeyConditionExpression",
            target_id = prelude.String.id,
        }),
        ExpressionAttributeNames = schema.new({
            id = id.from(_N, "QueryInput", "ExpressionAttributeNames"),
            type = "map",
            name = "ExpressionAttributeNames",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ExpressionAttributeValues = schema.new({
            id = id.from(_N, "QueryInput", "ExpressionAttributeValues"),
            type = "map",
            name = "ExpressionAttributeValues",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
    },
})

M.BatchWriteItemOutput = schema.new({
    id = id.from(_N, "BatchWriteItemOutput"),
    type = "structure",
    members = {
        UnprocessedItems = schema.new({
            id = id.from(_N, "BatchWriteItemOutput", "UnprocessedItems"),
            type = "map",
            name = "UnprocessedItems",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = M.WriteRequest }),
        }),
        ItemCollectionMetrics = schema.new({
            id = id.from(_N, "BatchWriteItemOutput", "ItemCollectionMetrics"),
            type = "map",
            name = "ItemCollectionMetrics",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = M.ItemCollectionMetrics }),
        }),
        ConsumedCapacity = schema.new({
            id = id.from(_N, "BatchWriteItemOutput", "ConsumedCapacity"),
            type = "list",
            name = "ConsumedCapacity",
            target_id = prelude.Document.id,
            list_member = M.ConsumedCapacity,
        }),
    },
})

M.UpdateItemInput = schema.new({
    id = id.from(_N, "UpdateItemInput"),
    type = "structure",
    members = {
        TableName = schema.new({
            id = id.from(_N, "UpdateItemInput", "TableName"),
            type = "string",
            name = "TableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Key = schema.new({
            id = id.from(_N, "UpdateItemInput", "Key"),
            type = "map",
            name = "Key",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AttributeUpdates = schema.new({
            id = id.from(_N, "UpdateItemInput", "AttributeUpdates"),
            type = "map",
            name = "AttributeUpdates",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValueUpdate,
        }),
        Expected = schema.new({
            id = id.from(_N, "UpdateItemInput", "Expected"),
            type = "map",
            name = "Expected",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ExpectedAttributeValue,
        }),
        ConditionalOperator = schema.new({
            id = id.from(_N, "UpdateItemInput", "ConditionalOperator"),
            type = "string",
            name = "ConditionalOperator",
            target_id = prelude.String.id,
        }),
        ReturnValues = schema.new({
            id = id.from(_N, "UpdateItemInput", "ReturnValues"),
            type = "string",
            name = "ReturnValues",
            target_id = prelude.String.id,
        }),
        ReturnConsumedCapacity = schema.new({
            id = id.from(_N, "UpdateItemInput", "ReturnConsumedCapacity"),
            type = "string",
            name = "ReturnConsumedCapacity",
            target_id = prelude.String.id,
        }),
        ReturnItemCollectionMetrics = schema.new({
            id = id.from(_N, "UpdateItemInput", "ReturnItemCollectionMetrics"),
            type = "string",
            name = "ReturnItemCollectionMetrics",
            target_id = prelude.String.id,
        }),
        UpdateExpression = schema.new({
            id = id.from(_N, "UpdateItemInput", "UpdateExpression"),
            type = "string",
            name = "UpdateExpression",
            target_id = prelude.String.id,
        }),
        ConditionExpression = schema.new({
            id = id.from(_N, "UpdateItemInput", "ConditionExpression"),
            type = "string",
            name = "ConditionExpression",
            target_id = prelude.String.id,
        }),
        ExpressionAttributeNames = schema.new({
            id = id.from(_N, "UpdateItemInput", "ExpressionAttributeNames"),
            type = "map",
            name = "ExpressionAttributeNames",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        ExpressionAttributeValues = schema.new({
            id = id.from(_N, "UpdateItemInput", "ExpressionAttributeValues"),
            type = "map",
            name = "ExpressionAttributeValues",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.AttributeValue,
        }),
        ReturnValuesOnConditionCheckFailure = schema.new({
            id = id.from(_N, "UpdateItemInput", "ReturnValuesOnConditionCheckFailure"),
            type = "string",
            name = "ReturnValuesOnConditionCheckFailure",
            target_id = prelude.String.id,
        }),
    },
})

M.TransactWriteItem = schema.new({
    id = id.from(_N, "TransactWriteItem"),
    type = "structure",
    members = {
        ConditionCheck = schema.new({
            id = id.from(_N, "TransactWriteItem", "ConditionCheck"),
            type = "structure",
            name = "ConditionCheck",
            target_id = id.from(_N, "ConditionCheck"),
            target = M.ConditionCheck,
        }),
        Put = schema.new({
            id = id.from(_N, "TransactWriteItem", "Put"),
            type = "structure",
            name = "Put",
            target_id = id.from(_N, "Put"),
            target = M.Put,
        }),
        Delete = schema.new({
            id = id.from(_N, "TransactWriteItem", "Delete"),
            type = "structure",
            name = "Delete",
            target_id = id.from(_N, "Delete"),
            target = M.Delete,
        }),
        Update = schema.new({
            id = id.from(_N, "TransactWriteItem", "Update"),
            type = "structure",
            name = "Update",
            target_id = id.from(_N, "Update"),
            target = M.Update,
        }),
    },
})

M.TransactWriteItemsInput = schema.new({
    id = id.from(_N, "TransactWriteItemsInput"),
    type = "structure",
    members = {
        TransactItems = schema.new({
            id = id.from(_N, "TransactWriteItemsInput", "TransactItems"),
            type = "list",
            name = "TransactItems",
            target_id = prelude.Document.id,
            list_member = M.TransactWriteItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ReturnConsumedCapacity = schema.new({
            id = id.from(_N, "TransactWriteItemsInput", "ReturnConsumedCapacity"),
            type = "string",
            name = "ReturnConsumedCapacity",
            target_id = prelude.String.id,
        }),
        ReturnItemCollectionMetrics = schema.new({
            id = id.from(_N, "TransactWriteItemsInput", "ReturnItemCollectionMetrics"),
            type = "string",
            name = "ReturnItemCollectionMetrics",
            target_id = prelude.String.id,
        }),
        ClientRequestToken = schema.new({
            id = id.from(_N, "TransactWriteItemsInput", "ClientRequestToken"),
            type = "string",
            name = "ClientRequestToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
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
