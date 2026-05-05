local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.keyspaces"

local M = {}

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.ReplicaSpecificationList = schema.new({ type = "list", list_member = M.ReplicaSpecification })

M.FieldList = schema.new({ type = "list", list_member = M.FieldDefinition })

M.RegionList = schema.new({ type = "list", list_member = prelude.String })

M.ReplicationGroupStatusList = schema.new({ type = "list", list_member = M.ReplicationGroupStatus })

M.ReplicaSpecificationSummaryList = schema.new({ type = "list", list_member = M.ReplicaSpecificationSummary })

M.ReplicaAutoScalingSpecificationList = schema.new({ type = "list", list_member = M.ReplicaAutoScalingSpecification })

M.TableNameList = schema.new({ type = "list", list_member = prelude.String })

M.TypeNameList = schema.new({ type = "list", list_member = prelude.String })

M.KeyspaceSummaryList = schema.new({ type = "list", list_member = M.KeyspaceSummary })

M.TableSummaryList = schema.new({ type = "list", list_member = M.TableSummary })

M.ColumnDefinitionList = schema.new({ type = "list", list_member = M.ColumnDefinition })

M.PartitionKeyList = schema.new({ type = "list", list_member = M.PartitionKey })

M.ClusteringKeyList = schema.new({ type = "list", list_member = M.ClusteringKey })

M.StaticColumnList = schema.new({ type = "list", list_member = M.StaticColumn })

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
        }),
    },
})

M.TargetTrackingScalingPolicyConfiguration = schema.new({
    id = id.from(_N, "TargetTrackingScalingPolicyConfiguration"),
    type = "structure",
    members = {
        disableScaleIn = schema.new({
            id = id.from(_N, "TargetTrackingScalingPolicyConfiguration", "disableScaleIn"),
            type = "boolean",
            name = "disableScaleIn",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        scaleInCooldown = schema.new({
            id = id.from(_N, "TargetTrackingScalingPolicyConfiguration", "scaleInCooldown"),
            type = "integer",
            name = "scaleInCooldown",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        scaleOutCooldown = schema.new({
            id = id.from(_N, "TargetTrackingScalingPolicyConfiguration", "scaleOutCooldown"),
            type = "integer",
            name = "scaleOutCooldown",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        targetValue = schema.new({
            id = id.from(_N, "TargetTrackingScalingPolicyConfiguration", "targetValue"),
            type = "double",
            name = "targetValue",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.AutoScalingPolicy = schema.new({
    id = id.from(_N, "AutoScalingPolicy"),
    type = "structure",
    members = {
        targetTrackingScalingPolicyConfiguration = schema.new({
            id = id.from(_N, "AutoScalingPolicy", "targetTrackingScalingPolicyConfiguration"),
            type = "structure",
            name = "targetTrackingScalingPolicyConfiguration",
            target_id = id.from(_N, "TargetTrackingScalingPolicyConfiguration"),
            target = M.TargetTrackingScalingPolicyConfiguration,
        }),
    },
})

M.AutoScalingSettings = schema.new({
    id = id.from(_N, "AutoScalingSettings"),
    type = "structure",
    members = {
        autoScalingDisabled = schema.new({
            id = id.from(_N, "AutoScalingSettings", "autoScalingDisabled"),
            type = "boolean",
            name = "autoScalingDisabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        minimumUnits = schema.new({
            id = id.from(_N, "AutoScalingSettings", "minimumUnits"),
            type = "long",
            name = "minimumUnits",
            target_id = prelude.Long.id,
        }),
        maximumUnits = schema.new({
            id = id.from(_N, "AutoScalingSettings", "maximumUnits"),
            type = "long",
            name = "maximumUnits",
            target_id = prelude.Long.id,
        }),
        scalingPolicy = schema.new({
            id = id.from(_N, "AutoScalingSettings", "scalingPolicy"),
            type = "structure",
            name = "scalingPolicy",
            target_id = id.from(_N, "AutoScalingPolicy"),
            target = M.AutoScalingPolicy,
        }),
    },
})

M.AutoScalingSpecification = schema.new({
    id = id.from(_N, "AutoScalingSpecification"),
    type = "structure",
    members = {
        writeCapacityAutoScaling = schema.new({
            id = id.from(_N, "AutoScalingSpecification", "writeCapacityAutoScaling"),
            type = "structure",
            name = "writeCapacityAutoScaling",
            target_id = id.from(_N, "AutoScalingSettings"),
            target = M.AutoScalingSettings,
        }),
        readCapacityAutoScaling = schema.new({
            id = id.from(_N, "AutoScalingSpecification", "readCapacityAutoScaling"),
            type = "structure",
            name = "readCapacityAutoScaling",
            target_id = id.from(_N, "AutoScalingSettings"),
            target = M.AutoScalingSettings,
        }),
    },
})

M.CapacitySpecification = schema.new({
    id = id.from(_N, "CapacitySpecification"),
    type = "structure",
    members = {
        throughputMode = schema.new({
            id = id.from(_N, "CapacitySpecification", "throughputMode"),
            type = "string",
            name = "throughputMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        readCapacityUnits = schema.new({
            id = id.from(_N, "CapacitySpecification", "readCapacityUnits"),
            type = "long",
            name = "readCapacityUnits",
            target_id = prelude.Long.id,
        }),
        writeCapacityUnits = schema.new({
            id = id.from(_N, "CapacitySpecification", "writeCapacityUnits"),
            type = "long",
            name = "writeCapacityUnits",
            target_id = prelude.Long.id,
        }),
    },
})

M.CapacitySpecificationSummary = schema.new({
    id = id.from(_N, "CapacitySpecificationSummary"),
    type = "structure",
    members = {
        throughputMode = schema.new({
            id = id.from(_N, "CapacitySpecificationSummary", "throughputMode"),
            type = "string",
            name = "throughputMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        readCapacityUnits = schema.new({
            id = id.from(_N, "CapacitySpecificationSummary", "readCapacityUnits"),
            type = "long",
            name = "readCapacityUnits",
            target_id = prelude.Long.id,
        }),
        writeCapacityUnits = schema.new({
            id = id.from(_N, "CapacitySpecificationSummary", "writeCapacityUnits"),
            type = "long",
            name = "writeCapacityUnits",
            target_id = prelude.Long.id,
        }),
        lastUpdateToPayPerRequestTimestamp = schema.new({
            id = id.from(_N, "CapacitySpecificationSummary", "lastUpdateToPayPerRequestTimestamp"),
            type = "timestamp",
            name = "lastUpdateToPayPerRequestTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "Tag", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "Tag", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CdcSpecification = schema.new({
    id = id.from(_N, "CdcSpecification"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "CdcSpecification", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        viewType = schema.new({
            id = id.from(_N, "CdcSpecification", "viewType"),
            type = "string",
            name = "viewType",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CdcSpecification", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        propagateTags = schema.new({
            id = id.from(_N, "CdcSpecification", "propagateTags"),
            type = "string",
            name = "propagateTags",
            target_id = prelude.String.id,
        }),
    },
})

M.CdcSpecificationSummary = schema.new({
    id = id.from(_N, "CdcSpecificationSummary"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "CdcSpecificationSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        viewType = schema.new({
            id = id.from(_N, "CdcSpecificationSummary", "viewType"),
            type = "string",
            name = "viewType",
            target_id = prelude.String.id,
        }),
    },
})

M.ClientSideTimestamps = schema.new({
    id = id.from(_N, "ClientSideTimestamps"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "ClientSideTimestamps", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ClusteringKey = schema.new({
    id = id.from(_N, "ClusteringKey"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ClusteringKey", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        orderBy = schema.new({
            id = id.from(_N, "ClusteringKey", "orderBy"),
            type = "string",
            name = "orderBy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ColumnDefinition = schema.new({
    id = id.from(_N, "ColumnDefinition"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ColumnDefinition", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "ColumnDefinition", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Comment = schema.new({
    id = id.from(_N, "Comment"),
    type = "structure",
    members = {
        message = schema.new({
            id = id.from(_N, "Comment", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
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
        }),
    },
})

M.ReplicationSpecification = schema.new({
    id = id.from(_N, "ReplicationSpecification"),
    type = "structure",
    members = {
        replicationStrategy = schema.new({
            id = id.from(_N, "ReplicationSpecification", "replicationStrategy"),
            type = "string",
            name = "replicationStrategy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        regionList = schema.new({
            id = id.from(_N, "ReplicationSpecification", "regionList"),
            type = "list",
            name = "regionList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateKeyspaceInput = schema.new({
    id = id.from(_N, "CreateKeyspaceRequest"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "CreateKeyspaceInput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateKeyspaceInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        replicationSpecification = schema.new({
            id = id.from(_N, "CreateKeyspaceInput", "replicationSpecification"),
            type = "structure",
            name = "replicationSpecification",
            target_id = id.from(_N, "ReplicationSpecification"),
            target = M.ReplicationSpecification,
        }),
    },
})

M.CreateKeyspaceOutput = schema.new({
    id = id.from(_N, "CreateKeyspaceResponse"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "CreateKeyspaceOutput", "resourceArn"),
            type = "string",
            name = "resourceArn",
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
        }),
    },
})

M.EncryptionSpecification = schema.new({
    id = id.from(_N, "EncryptionSpecification"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "EncryptionSpecification", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsKeyIdentifier = schema.new({
            id = id.from(_N, "EncryptionSpecification", "kmsKeyIdentifier"),
            type = "string",
            name = "kmsKeyIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.PointInTimeRecovery = schema.new({
    id = id.from(_N, "PointInTimeRecovery"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "PointInTimeRecovery", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReplicaSpecification = schema.new({
    id = id.from(_N, "ReplicaSpecification"),
    type = "structure",
    members = {
        region = schema.new({
            id = id.from(_N, "ReplicaSpecification", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        readCapacityUnits = schema.new({
            id = id.from(_N, "ReplicaSpecification", "readCapacityUnits"),
            type = "long",
            name = "readCapacityUnits",
            target_id = prelude.Long.id,
        }),
        readCapacityAutoScaling = schema.new({
            id = id.from(_N, "ReplicaSpecification", "readCapacityAutoScaling"),
            type = "structure",
            name = "readCapacityAutoScaling",
            target_id = id.from(_N, "AutoScalingSettings"),
            target = M.AutoScalingSettings,
        }),
    },
})

M.PartitionKey = schema.new({
    id = id.from(_N, "PartitionKey"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "PartitionKey", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StaticColumn = schema.new({
    id = id.from(_N, "StaticColumn"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "StaticColumn", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SchemaDefinition = schema.new({
    id = id.from(_N, "SchemaDefinition"),
    type = "structure",
    members = {
        allColumns = schema.new({
            id = id.from(_N, "SchemaDefinition", "allColumns"),
            type = "list",
            name = "allColumns",
            target_id = prelude.Document.id,
            list_member = M.ColumnDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        partitionKeys = schema.new({
            id = id.from(_N, "SchemaDefinition", "partitionKeys"),
            type = "list",
            name = "partitionKeys",
            target_id = prelude.Document.id,
            list_member = M.PartitionKey,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clusteringKeys = schema.new({
            id = id.from(_N, "SchemaDefinition", "clusteringKeys"),
            type = "list",
            name = "clusteringKeys",
            target_id = prelude.Document.id,
            list_member = M.ClusteringKey,
        }),
        staticColumns = schema.new({
            id = id.from(_N, "SchemaDefinition", "staticColumns"),
            type = "list",
            name = "staticColumns",
            target_id = prelude.Document.id,
            list_member = M.StaticColumn,
        }),
    },
})

M.TimeToLive = schema.new({
    id = id.from(_N, "TimeToLive"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "TimeToLive", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WarmThroughputSpecification = schema.new({
    id = id.from(_N, "WarmThroughputSpecification"),
    type = "structure",
    members = {
        readUnitsPerSecond = schema.new({
            id = id.from(_N, "WarmThroughputSpecification", "readUnitsPerSecond"),
            type = "long",
            name = "readUnitsPerSecond",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
        writeUnitsPerSecond = schema.new({
            id = id.from(_N, "WarmThroughputSpecification", "writeUnitsPerSecond"),
            type = "long",
            name = "writeUnitsPerSecond",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = nil },
            },
        }),
    },
})

M.CreateTableInput = schema.new({
    id = id.from(_N, "CreateTableRequest"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "CreateTableInput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tableName = schema.new({
            id = id.from(_N, "CreateTableInput", "tableName"),
            type = "string",
            name = "tableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        schemaDefinition = schema.new({
            id = id.from(_N, "CreateTableInput", "schemaDefinition"),
            type = "structure",
            name = "schemaDefinition",
            target_id = id.from(_N, "SchemaDefinition"),
            target = M.SchemaDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        comment = schema.new({
            id = id.from(_N, "CreateTableInput", "comment"),
            type = "structure",
            name = "comment",
            target_id = id.from(_N, "Comment"),
            target = M.Comment,
        }),
        capacitySpecification = schema.new({
            id = id.from(_N, "CreateTableInput", "capacitySpecification"),
            type = "structure",
            name = "capacitySpecification",
            target_id = id.from(_N, "CapacitySpecification"),
            target = M.CapacitySpecification,
        }),
        encryptionSpecification = schema.new({
            id = id.from(_N, "CreateTableInput", "encryptionSpecification"),
            type = "structure",
            name = "encryptionSpecification",
            target_id = id.from(_N, "EncryptionSpecification"),
            target = M.EncryptionSpecification,
        }),
        pointInTimeRecovery = schema.new({
            id = id.from(_N, "CreateTableInput", "pointInTimeRecovery"),
            type = "structure",
            name = "pointInTimeRecovery",
            target_id = id.from(_N, "PointInTimeRecovery"),
            target = M.PointInTimeRecovery,
        }),
        ttl = schema.new({
            id = id.from(_N, "CreateTableInput", "ttl"),
            type = "structure",
            name = "ttl",
            target_id = id.from(_N, "TimeToLive"),
            target = M.TimeToLive,
        }),
        defaultTimeToLive = schema.new({
            id = id.from(_N, "CreateTableInput", "defaultTimeToLive"),
            type = "integer",
            name = "defaultTimeToLive",
            target_id = prelude.Integer.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateTableInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        clientSideTimestamps = schema.new({
            id = id.from(_N, "CreateTableInput", "clientSideTimestamps"),
            type = "structure",
            name = "clientSideTimestamps",
            target_id = id.from(_N, "ClientSideTimestamps"),
            target = M.ClientSideTimestamps,
        }),
        autoScalingSpecification = schema.new({
            id = id.from(_N, "CreateTableInput", "autoScalingSpecification"),
            type = "structure",
            name = "autoScalingSpecification",
            target_id = id.from(_N, "AutoScalingSpecification"),
            target = M.AutoScalingSpecification,
        }),
        replicaSpecifications = schema.new({
            id = id.from(_N, "CreateTableInput", "replicaSpecifications"),
            type = "list",
            name = "replicaSpecifications",
            target_id = prelude.Document.id,
            list_member = M.ReplicaSpecification,
        }),
        cdcSpecification = schema.new({
            id = id.from(_N, "CreateTableInput", "cdcSpecification"),
            type = "structure",
            name = "cdcSpecification",
            target_id = id.from(_N, "CdcSpecification"),
            target = M.CdcSpecification,
        }),
        warmThroughputSpecification = schema.new({
            id = id.from(_N, "CreateTableInput", "warmThroughputSpecification"),
            type = "structure",
            name = "warmThroughputSpecification",
            target_id = id.from(_N, "WarmThroughputSpecification"),
            target = M.WarmThroughputSpecification,
        }),
    },
})

M.CreateTableOutput = schema.new({
    id = id.from(_N, "CreateTableResponse"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "CreateTableOutput", "resourceArn"),
            type = "string",
            name = "resourceArn",
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
        }),
        resourceArn = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.FieldDefinition = schema.new({
    id = id.from(_N, "FieldDefinition"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "FieldDefinition", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "FieldDefinition", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateTypeInput = schema.new({
    id = id.from(_N, "CreateTypeRequest"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "CreateTypeInput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        typeName = schema.new({
            id = id.from(_N, "CreateTypeInput", "typeName"),
            type = "string",
            name = "typeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fieldDefinitions = schema.new({
            id = id.from(_N, "CreateTypeInput", "fieldDefinitions"),
            type = "list",
            name = "fieldDefinitions",
            target_id = prelude.Document.id,
            list_member = M.FieldDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateTypeOutput = schema.new({
    id = id.from(_N, "CreateTypeResponse"),
    type = "structure",
    members = {
        keyspaceArn = schema.new({
            id = id.from(_N, "CreateTypeOutput", "keyspaceArn"),
            type = "string",
            name = "keyspaceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        typeName = schema.new({
            id = id.from(_N, "CreateTypeOutput", "typeName"),
            type = "string",
            name = "typeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteKeyspaceInput = schema.new({
    id = id.from(_N, "DeleteKeyspaceRequest"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "DeleteKeyspaceInput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteKeyspaceOutput = schema.new({
    id = id.from(_N, "DeleteKeyspaceResponse"),
    type = "structure",
})

M.DeleteTableInput = schema.new({
    id = id.from(_N, "DeleteTableRequest"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "DeleteTableInput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tableName = schema.new({
            id = id.from(_N, "DeleteTableInput", "tableName"),
            type = "string",
            name = "tableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteTableOutput = schema.new({
    id = id.from(_N, "DeleteTableResponse"),
    type = "structure",
})

M.DeleteTypeInput = schema.new({
    id = id.from(_N, "DeleteTypeRequest"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "DeleteTypeInput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        typeName = schema.new({
            id = id.from(_N, "DeleteTypeInput", "typeName"),
            type = "string",
            name = "typeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteTypeOutput = schema.new({
    id = id.from(_N, "DeleteTypeResponse"),
    type = "structure",
    members = {
        keyspaceArn = schema.new({
            id = id.from(_N, "DeleteTypeOutput", "keyspaceArn"),
            type = "string",
            name = "keyspaceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        typeName = schema.new({
            id = id.from(_N, "DeleteTypeOutput", "typeName"),
            type = "string",
            name = "typeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetKeyspaceInput = schema.new({
    id = id.from(_N, "GetKeyspaceRequest"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "GetKeyspaceInput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReplicationGroupStatus = schema.new({
    id = id.from(_N, "ReplicationGroupStatus"),
    type = "structure",
    members = {
        region = schema.new({
            id = id.from(_N, "ReplicationGroupStatus", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        keyspaceStatus = schema.new({
            id = id.from(_N, "ReplicationGroupStatus", "keyspaceStatus"),
            type = "string",
            name = "keyspaceStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tablesReplicationProgress = schema.new({
            id = id.from(_N, "ReplicationGroupStatus", "tablesReplicationProgress"),
            type = "string",
            name = "tablesReplicationProgress",
            target_id = prelude.String.id,
        }),
    },
})

M.GetKeyspaceOutput = schema.new({
    id = id.from(_N, "GetKeyspaceResponse"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "GetKeyspaceOutput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "GetKeyspaceOutput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        replicationStrategy = schema.new({
            id = id.from(_N, "GetKeyspaceOutput", "replicationStrategy"),
            type = "string",
            name = "replicationStrategy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        replicationRegions = schema.new({
            id = id.from(_N, "GetKeyspaceOutput", "replicationRegions"),
            type = "list",
            name = "replicationRegions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        replicationGroupStatuses = schema.new({
            id = id.from(_N, "GetKeyspaceOutput", "replicationGroupStatuses"),
            type = "list",
            name = "replicationGroupStatuses",
            target_id = prelude.Document.id,
            list_member = M.ReplicationGroupStatus,
        }),
    },
})

M.GetTableInput = schema.new({
    id = id.from(_N, "GetTableRequest"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "GetTableInput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tableName = schema.new({
            id = id.from(_N, "GetTableInput", "tableName"),
            type = "string",
            name = "tableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PointInTimeRecoverySummary = schema.new({
    id = id.from(_N, "PointInTimeRecoverySummary"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "PointInTimeRecoverySummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        earliestRestorableTimestamp = schema.new({
            id = id.from(_N, "PointInTimeRecoverySummary", "earliestRestorableTimestamp"),
            type = "timestamp",
            name = "earliestRestorableTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.WarmThroughputSpecificationSummary = schema.new({
    id = id.from(_N, "WarmThroughputSpecificationSummary"),
    type = "structure",
    members = {
        readUnitsPerSecond = schema.new({
            id = id.from(_N, "WarmThroughputSpecificationSummary", "readUnitsPerSecond"),
            type = "long",
            name = "readUnitsPerSecond",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        writeUnitsPerSecond = schema.new({
            id = id.from(_N, "WarmThroughputSpecificationSummary", "writeUnitsPerSecond"),
            type = "long",
            name = "writeUnitsPerSecond",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "WarmThroughputSpecificationSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReplicaSpecificationSummary = schema.new({
    id = id.from(_N, "ReplicaSpecificationSummary"),
    type = "structure",
    members = {
        region = schema.new({
            id = id.from(_N, "ReplicaSpecificationSummary", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ReplicaSpecificationSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        capacitySpecification = schema.new({
            id = id.from(_N, "ReplicaSpecificationSummary", "capacitySpecification"),
            type = "structure",
            name = "capacitySpecification",
            target_id = id.from(_N, "CapacitySpecificationSummary"),
            target = M.CapacitySpecificationSummary,
        }),
        warmThroughputSpecification = schema.new({
            id = id.from(_N, "ReplicaSpecificationSummary", "warmThroughputSpecification"),
            type = "structure",
            name = "warmThroughputSpecification",
            target_id = id.from(_N, "WarmThroughputSpecificationSummary"),
            target = M.WarmThroughputSpecificationSummary,
        }),
    },
})

M.GetTableOutput = schema.new({
    id = id.from(_N, "GetTableResponse"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "GetTableOutput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tableName = schema.new({
            id = id.from(_N, "GetTableOutput", "tableName"),
            type = "string",
            name = "tableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "GetTableOutput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        creationTimestamp = schema.new({
            id = id.from(_N, "GetTableOutput", "creationTimestamp"),
            type = "timestamp",
            name = "creationTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetTableOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        schemaDefinition = schema.new({
            id = id.from(_N, "GetTableOutput", "schemaDefinition"),
            type = "structure",
            name = "schemaDefinition",
            target_id = id.from(_N, "SchemaDefinition"),
            target = M.SchemaDefinition,
        }),
        capacitySpecification = schema.new({
            id = id.from(_N, "GetTableOutput", "capacitySpecification"),
            type = "structure",
            name = "capacitySpecification",
            target_id = id.from(_N, "CapacitySpecificationSummary"),
            target = M.CapacitySpecificationSummary,
        }),
        encryptionSpecification = schema.new({
            id = id.from(_N, "GetTableOutput", "encryptionSpecification"),
            type = "structure",
            name = "encryptionSpecification",
            target_id = id.from(_N, "EncryptionSpecification"),
            target = M.EncryptionSpecification,
        }),
        pointInTimeRecovery = schema.new({
            id = id.from(_N, "GetTableOutput", "pointInTimeRecovery"),
            type = "structure",
            name = "pointInTimeRecovery",
            target_id = id.from(_N, "PointInTimeRecoverySummary"),
            target = M.PointInTimeRecoverySummary,
        }),
        ttl = schema.new({
            id = id.from(_N, "GetTableOutput", "ttl"),
            type = "structure",
            name = "ttl",
            target_id = id.from(_N, "TimeToLive"),
            target = M.TimeToLive,
        }),
        defaultTimeToLive = schema.new({
            id = id.from(_N, "GetTableOutput", "defaultTimeToLive"),
            type = "integer",
            name = "defaultTimeToLive",
            target_id = prelude.Integer.id,
        }),
        comment = schema.new({
            id = id.from(_N, "GetTableOutput", "comment"),
            type = "structure",
            name = "comment",
            target_id = id.from(_N, "Comment"),
            target = M.Comment,
        }),
        clientSideTimestamps = schema.new({
            id = id.from(_N, "GetTableOutput", "clientSideTimestamps"),
            type = "structure",
            name = "clientSideTimestamps",
            target_id = id.from(_N, "ClientSideTimestamps"),
            target = M.ClientSideTimestamps,
        }),
        replicaSpecifications = schema.new({
            id = id.from(_N, "GetTableOutput", "replicaSpecifications"),
            type = "list",
            name = "replicaSpecifications",
            target_id = prelude.Document.id,
            list_member = M.ReplicaSpecificationSummary,
        }),
        latestStreamArn = schema.new({
            id = id.from(_N, "GetTableOutput", "latestStreamArn"),
            type = "string",
            name = "latestStreamArn",
            target_id = prelude.String.id,
        }),
        cdcSpecification = schema.new({
            id = id.from(_N, "GetTableOutput", "cdcSpecification"),
            type = "structure",
            name = "cdcSpecification",
            target_id = id.from(_N, "CdcSpecificationSummary"),
            target = M.CdcSpecificationSummary,
        }),
        warmThroughputSpecification = schema.new({
            id = id.from(_N, "GetTableOutput", "warmThroughputSpecification"),
            type = "structure",
            name = "warmThroughputSpecification",
            target_id = id.from(_N, "WarmThroughputSpecificationSummary"),
            target = M.WarmThroughputSpecificationSummary,
        }),
    },
})

M.GetTableAutoScalingSettingsInput = schema.new({
    id = id.from(_N, "GetTableAutoScalingSettingsRequest"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "GetTableAutoScalingSettingsInput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tableName = schema.new({
            id = id.from(_N, "GetTableAutoScalingSettingsInput", "tableName"),
            type = "string",
            name = "tableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ReplicaAutoScalingSpecification = schema.new({
    id = id.from(_N, "ReplicaAutoScalingSpecification"),
    type = "structure",
    members = {
        region = schema.new({
            id = id.from(_N, "ReplicaAutoScalingSpecification", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
        autoScalingSpecification = schema.new({
            id = id.from(_N, "ReplicaAutoScalingSpecification", "autoScalingSpecification"),
            type = "structure",
            name = "autoScalingSpecification",
            target_id = id.from(_N, "AutoScalingSpecification"),
            target = M.AutoScalingSpecification,
        }),
    },
})

M.GetTableAutoScalingSettingsOutput = schema.new({
    id = id.from(_N, "GetTableAutoScalingSettingsResponse"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "GetTableAutoScalingSettingsOutput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tableName = schema.new({
            id = id.from(_N, "GetTableAutoScalingSettingsOutput", "tableName"),
            type = "string",
            name = "tableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "GetTableAutoScalingSettingsOutput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        autoScalingSpecification = schema.new({
            id = id.from(_N, "GetTableAutoScalingSettingsOutput", "autoScalingSpecification"),
            type = "structure",
            name = "autoScalingSpecification",
            target_id = id.from(_N, "AutoScalingSpecification"),
            target = M.AutoScalingSpecification,
        }),
        replicaSpecifications = schema.new({
            id = id.from(_N, "GetTableAutoScalingSettingsOutput", "replicaSpecifications"),
            type = "list",
            name = "replicaSpecifications",
            target_id = prelude.Document.id,
            list_member = M.ReplicaAutoScalingSpecification,
        }),
    },
})

M.GetTypeInput = schema.new({
    id = id.from(_N, "GetTypeRequest"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "GetTypeInput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        typeName = schema.new({
            id = id.from(_N, "GetTypeInput", "typeName"),
            type = "string",
            name = "typeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetTypeOutput = schema.new({
    id = id.from(_N, "GetTypeResponse"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "GetTypeOutput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        typeName = schema.new({
            id = id.from(_N, "GetTypeOutput", "typeName"),
            type = "string",
            name = "typeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fieldDefinitions = schema.new({
            id = id.from(_N, "GetTypeOutput", "fieldDefinitions"),
            type = "list",
            name = "fieldDefinitions",
            target_id = prelude.Document.id,
            list_member = M.FieldDefinition,
        }),
        lastModifiedTimestamp = schema.new({
            id = id.from(_N, "GetTypeOutput", "lastModifiedTimestamp"),
            type = "timestamp",
            name = "lastModifiedTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetTypeOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        directReferringTables = schema.new({
            id = id.from(_N, "GetTypeOutput", "directReferringTables"),
            type = "list",
            name = "directReferringTables",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        directParentTypes = schema.new({
            id = id.from(_N, "GetTypeOutput", "directParentTypes"),
            type = "list",
            name = "directParentTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        maxNestingDepth = schema.new({
            id = id.from(_N, "GetTypeOutput", "maxNestingDepth"),
            type = "integer",
            name = "maxNestingDepth",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        keyspaceArn = schema.new({
            id = id.from(_N, "GetTypeOutput", "keyspaceArn"),
            type = "string",
            name = "keyspaceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListKeyspacesInput = schema.new({
    id = id.from(_N, "ListKeyspacesRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListKeyspacesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListKeyspacesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.KeyspaceSummary = schema.new({
    id = id.from(_N, "KeyspaceSummary"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "KeyspaceSummary", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "KeyspaceSummary", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        replicationStrategy = schema.new({
            id = id.from(_N, "KeyspaceSummary", "replicationStrategy"),
            type = "string",
            name = "replicationStrategy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        replicationRegions = schema.new({
            id = id.from(_N, "KeyspaceSummary", "replicationRegions"),
            type = "list",
            name = "replicationRegions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListKeyspacesOutput = schema.new({
    id = id.from(_N, "ListKeyspacesResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListKeyspacesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        keyspaces = schema.new({
            id = id.from(_N, "ListKeyspacesOutput", "keyspaces"),
            type = "list",
            name = "keyspaces",
            target_id = prelude.Document.id,
            list_member = M.KeyspaceSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTablesInput = schema.new({
    id = id.from(_N, "ListTablesRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListTablesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListTablesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        keyspaceName = schema.new({
            id = id.from(_N, "ListTablesInput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TableSummary = schema.new({
    id = id.from(_N, "TableSummary"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "TableSummary", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tableName = schema.new({
            id = id.from(_N, "TableSummary", "tableName"),
            type = "string",
            name = "tableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourceArn = schema.new({
            id = id.from(_N, "TableSummary", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTablesOutput = schema.new({
    id = id.from(_N, "ListTablesResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListTablesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        tables = schema.new({
            id = id.from(_N, "ListTablesOutput", "tables"),
            type = "list",
            name = "tables",
            target_id = prelude.Document.id,
            list_member = M.TableSummary,
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
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.ListTypesInput = schema.new({
    id = id.from(_N, "ListTypesRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListTypesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListTypesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        keyspaceName = schema.new({
            id = id.from(_N, "ListTypesInput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTypesOutput = schema.new({
    id = id.from(_N, "ListTypesResponse"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListTypesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        types = schema.new({
            id = id.from(_N, "ListTypesOutput", "types"),
            type = "list",
            name = "types",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RestoreTableInput = schema.new({
    id = id.from(_N, "RestoreTableRequest"),
    type = "structure",
    members = {
        sourceKeyspaceName = schema.new({
            id = id.from(_N, "RestoreTableInput", "sourceKeyspaceName"),
            type = "string",
            name = "sourceKeyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sourceTableName = schema.new({
            id = id.from(_N, "RestoreTableInput", "sourceTableName"),
            type = "string",
            name = "sourceTableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        targetKeyspaceName = schema.new({
            id = id.from(_N, "RestoreTableInput", "targetKeyspaceName"),
            type = "string",
            name = "targetKeyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        targetTableName = schema.new({
            id = id.from(_N, "RestoreTableInput", "targetTableName"),
            type = "string",
            name = "targetTableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        restoreTimestamp = schema.new({
            id = id.from(_N, "RestoreTableInput", "restoreTimestamp"),
            type = "timestamp",
            name = "restoreTimestamp",
            target_id = prelude.Timestamp.id,
        }),
        capacitySpecificationOverride = schema.new({
            id = id.from(_N, "RestoreTableInput", "capacitySpecificationOverride"),
            type = "structure",
            name = "capacitySpecificationOverride",
            target_id = id.from(_N, "CapacitySpecification"),
            target = M.CapacitySpecification,
        }),
        encryptionSpecificationOverride = schema.new({
            id = id.from(_N, "RestoreTableInput", "encryptionSpecificationOverride"),
            type = "structure",
            name = "encryptionSpecificationOverride",
            target_id = id.from(_N, "EncryptionSpecification"),
            target = M.EncryptionSpecification,
        }),
        pointInTimeRecoveryOverride = schema.new({
            id = id.from(_N, "RestoreTableInput", "pointInTimeRecoveryOverride"),
            type = "structure",
            name = "pointInTimeRecoveryOverride",
            target_id = id.from(_N, "PointInTimeRecovery"),
            target = M.PointInTimeRecovery,
        }),
        tagsOverride = schema.new({
            id = id.from(_N, "RestoreTableInput", "tagsOverride"),
            type = "list",
            name = "tagsOverride",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        autoScalingSpecification = schema.new({
            id = id.from(_N, "RestoreTableInput", "autoScalingSpecification"),
            type = "structure",
            name = "autoScalingSpecification",
            target_id = id.from(_N, "AutoScalingSpecification"),
            target = M.AutoScalingSpecification,
        }),
        replicaSpecifications = schema.new({
            id = id.from(_N, "RestoreTableInput", "replicaSpecifications"),
            type = "list",
            name = "replicaSpecifications",
            target_id = prelude.Document.id,
            list_member = M.ReplicaSpecification,
        }),
    },
})

M.RestoreTableOutput = schema.new({
    id = id.from(_N, "RestoreTableResponse"),
    type = "structure",
    members = {
        restoredTableARN = schema.new({
            id = id.from(_N, "RestoreTableOutput", "restoredTableARN"),
            type = "string",
            name = "restoredTableARN",
            target_id = prelude.String.id,
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
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
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
            },
        }),
        tags = schema.new({
            id = id.from(_N, "UntagResourceInput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateKeyspaceInput = schema.new({
    id = id.from(_N, "UpdateKeyspaceRequest"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "UpdateKeyspaceInput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        replicationSpecification = schema.new({
            id = id.from(_N, "UpdateKeyspaceInput", "replicationSpecification"),
            type = "structure",
            name = "replicationSpecification",
            target_id = id.from(_N, "ReplicationSpecification"),
            target = M.ReplicationSpecification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientSideTimestamps = schema.new({
            id = id.from(_N, "UpdateKeyspaceInput", "clientSideTimestamps"),
            type = "structure",
            name = "clientSideTimestamps",
            target_id = id.from(_N, "ClientSideTimestamps"),
            target = M.ClientSideTimestamps,
        }),
    },
})

M.UpdateKeyspaceOutput = schema.new({
    id = id.from(_N, "UpdateKeyspaceResponse"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UpdateKeyspaceOutput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateTableInput = schema.new({
    id = id.from(_N, "UpdateTableRequest"),
    type = "structure",
    members = {
        keyspaceName = schema.new({
            id = id.from(_N, "UpdateTableInput", "keyspaceName"),
            type = "string",
            name = "keyspaceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tableName = schema.new({
            id = id.from(_N, "UpdateTableInput", "tableName"),
            type = "string",
            name = "tableName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        addColumns = schema.new({
            id = id.from(_N, "UpdateTableInput", "addColumns"),
            type = "list",
            name = "addColumns",
            target_id = prelude.Document.id,
            list_member = M.ColumnDefinition,
        }),
        capacitySpecification = schema.new({
            id = id.from(_N, "UpdateTableInput", "capacitySpecification"),
            type = "structure",
            name = "capacitySpecification",
            target_id = id.from(_N, "CapacitySpecification"),
            target = M.CapacitySpecification,
        }),
        encryptionSpecification = schema.new({
            id = id.from(_N, "UpdateTableInput", "encryptionSpecification"),
            type = "structure",
            name = "encryptionSpecification",
            target_id = id.from(_N, "EncryptionSpecification"),
            target = M.EncryptionSpecification,
        }),
        pointInTimeRecovery = schema.new({
            id = id.from(_N, "UpdateTableInput", "pointInTimeRecovery"),
            type = "structure",
            name = "pointInTimeRecovery",
            target_id = id.from(_N, "PointInTimeRecovery"),
            target = M.PointInTimeRecovery,
        }),
        ttl = schema.new({
            id = id.from(_N, "UpdateTableInput", "ttl"),
            type = "structure",
            name = "ttl",
            target_id = id.from(_N, "TimeToLive"),
            target = M.TimeToLive,
        }),
        defaultTimeToLive = schema.new({
            id = id.from(_N, "UpdateTableInput", "defaultTimeToLive"),
            type = "integer",
            name = "defaultTimeToLive",
            target_id = prelude.Integer.id,
        }),
        clientSideTimestamps = schema.new({
            id = id.from(_N, "UpdateTableInput", "clientSideTimestamps"),
            type = "structure",
            name = "clientSideTimestamps",
            target_id = id.from(_N, "ClientSideTimestamps"),
            target = M.ClientSideTimestamps,
        }),
        autoScalingSpecification = schema.new({
            id = id.from(_N, "UpdateTableInput", "autoScalingSpecification"),
            type = "structure",
            name = "autoScalingSpecification",
            target_id = id.from(_N, "AutoScalingSpecification"),
            target = M.AutoScalingSpecification,
        }),
        replicaSpecifications = schema.new({
            id = id.from(_N, "UpdateTableInput", "replicaSpecifications"),
            type = "list",
            name = "replicaSpecifications",
            target_id = prelude.Document.id,
            list_member = M.ReplicaSpecification,
        }),
        cdcSpecification = schema.new({
            id = id.from(_N, "UpdateTableInput", "cdcSpecification"),
            type = "structure",
            name = "cdcSpecification",
            target_id = id.from(_N, "CdcSpecification"),
            target = M.CdcSpecification,
        }),
        warmThroughputSpecification = schema.new({
            id = id.from(_N, "UpdateTableInput", "warmThroughputSpecification"),
            type = "structure",
            name = "warmThroughputSpecification",
            target_id = id.from(_N, "WarmThroughputSpecification"),
            target = M.WarmThroughputSpecification,
        }),
    },
})

M.UpdateTableOutput = schema.new({
    id = id.from(_N, "UpdateTableResponse"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UpdateTableOutput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
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
