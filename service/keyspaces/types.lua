local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TargetTrackingScalingPolicyConfiguration = {
    type = "structure",
    id = "TargetTrackingScalingPolicyConfiguration",
    members = {
        disableScaleIn = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        scaleInCooldown = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        scaleOutCooldown = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        targetValue = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.AutoScalingPolicy = {
    type = "structure",
    id = "AutoScalingPolicy",
    members = {
        targetTrackingScalingPolicyConfiguration = M.TargetTrackingScalingPolicyConfiguration,
    },
}

M.AutoScalingSettings = {
    type = "structure",
    id = "AutoScalingSettings",
    members = {
        autoScalingDisabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        minimumUnits = {
            type = "long",
        },
        maximumUnits = {
            type = "long",
        },
        scalingPolicy = M.AutoScalingPolicy,
    },
}

M.AutoScalingSpecification = {
    type = "structure",
    id = "AutoScalingSpecification",
    members = {
        writeCapacityAutoScaling = M.AutoScalingSettings,
        readCapacityAutoScaling = M.AutoScalingSettings,
    },
}

M.ThroughputMode = {
    PAY_PER_REQUEST = "PAY_PER_REQUEST",
    PROVISIONED = "PROVISIONED",
}

M.CapacitySpecification = {
    type = "structure",
    id = "CapacitySpecification",
    members = {
        throughputMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        readCapacityUnits = {
            type = "long",
        },
        writeCapacityUnits = {
            type = "long",
        },
    },
}

M.CapacitySpecificationSummary = {
    type = "structure",
    id = "CapacitySpecificationSummary",
    members = {
        throughputMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        readCapacityUnits = {
            type = "long",
        },
        writeCapacityUnits = {
            type = "long",
        },
        lastUpdateToPayPerRequestTimestamp = {
            type = "timestamp",
        },
    },
}

M.CdcPropagateTags = {
    TABLE = "TABLE",
    NONE = "NONE",
}

M.CdcStatus = {
    ENABLED = "ENABLED",
    ENABLING = "ENABLING",
    DISABLED = "DISABLED",
    DISABLING = "DISABLING",
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ViewType = {
    NEW_IMAGE = "NEW_IMAGE",
    OLD_IMAGE = "OLD_IMAGE",
    KEYS_ONLY = "KEYS_ONLY",
    NEW_AND_OLD_IMAGES = "NEW_AND_OLD_IMAGES",
}

M.CdcSpecification = {
    type = "structure",
    id = "CdcSpecification",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        viewType = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        propagateTags = {
            type = "string",
        },
    },
}

M.CdcSpecificationSummary = {
    type = "structure",
    id = "CdcSpecificationSummary",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        viewType = {
            type = "string",
        },
    },
}

M.ClientSideTimestampsStatus = {
    ENABLED = "ENABLED",
}

M.ClientSideTimestamps = {
    type = "structure",
    id = "ClientSideTimestamps",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.ClusteringKey = {
    type = "structure",
    id = "ClusteringKey",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        orderBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ColumnDefinition = {
    type = "structure",
    id = "ColumnDefinition",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Comment = {
    type = "structure",
    id = "Comment",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.rs = {
    SINGLE_REGION = "SINGLE_REGION",
    MULTI_REGION = "MULTI_REGION",
}

M.ReplicationSpecification = {
    type = "structure",
    id = "ReplicationSpecification",
    members = {
        replicationStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        regionList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateKeyspaceInput = {
    type = "structure",
    id = "CreateKeyspaceInput",
    members = {
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        replicationSpecification = M.ReplicationSpecification,
    },
}

M.CreateKeyspaceOutput = {
    type = "structure",
    id = "CreateKeyspaceOutput",
    members = {
        resourceArn = {
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
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EncryptionType = {
    CUSTOMER_MANAGED_KMS_KEY = "CUSTOMER_MANAGED_KMS_KEY",
    AWS_OWNED_KMS_KEY = "AWS_OWNED_KMS_KEY",
}

M.EncryptionSpecification = {
    type = "structure",
    id = "EncryptionSpecification",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyIdentifier = {
            type = "string",
        },
    },
}

M.PointInTimeRecoveryStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.PointInTimeRecovery = {
    type = "structure",
    id = "PointInTimeRecovery",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReplicaSpecification = {
    type = "structure",
    id = "ReplicaSpecification",
    members = {
        region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        readCapacityUnits = {
            type = "long",
        },
        readCapacityAutoScaling = M.AutoScalingSettings,
    },
}

M.PartitionKey = {
    type = "structure",
    id = "PartitionKey",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StaticColumn = {
    type = "structure",
    id = "StaticColumn",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SchemaDefinition = {
    type = "structure",
    id = "SchemaDefinition",
    members = {
        allColumns = {
            type = "list",
            member = M.ColumnDefinition,
            traits = {
                required = true,
            },
        },
        partitionKeys = {
            type = "list",
            member = M.PartitionKey,
            traits = {
                required = true,
            },
        },
        clusteringKeys = {
            type = "list",
            member = M.ClusteringKey,
        },
        staticColumns = {
            type = "list",
            member = M.StaticColumn,
        },
    },
}

M.TimeToLiveStatus = {
    ENABLED = "ENABLED",
}

M.TimeToLive = {
    type = "structure",
    id = "TimeToLive",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WarmThroughputSpecification = {
    type = "structure",
    id = "WarmThroughputSpecification",
    members = {
        readUnitsPerSecond = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        writeUnitsPerSecond = {
            type = "long",
            traits = {
                default = nil,
            },
        },
    },
}

M.CreateTableInput = {
    type = "structure",
    id = "CreateTableInput",
    members = {
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schemaDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaDefinition }),
        comment = M.Comment,
        capacitySpecification = M.CapacitySpecification,
        encryptionSpecification = M.EncryptionSpecification,
        pointInTimeRecovery = M.PointInTimeRecovery,
        ttl = M.TimeToLive,
        defaultTimeToLive = {
            type = "integer",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        clientSideTimestamps = M.ClientSideTimestamps,
        autoScalingSpecification = M.AutoScalingSpecification,
        replicaSpecifications = {
            type = "list",
            member = M.ReplicaSpecification,
        },
        cdcSpecification = M.CdcSpecification,
        warmThroughputSpecification = M.WarmThroughputSpecification,
    },
}

M.CreateTableOutput = {
    type = "structure",
    id = "CreateTableOutput",
    members = {
        resourceArn = {
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
        },
        resourceArn = {
            type = "string",
        },
    },
}

M.FieldDefinition = {
    type = "structure",
    id = "FieldDefinition",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTypeInput = {
    type = "structure",
    id = "CreateTypeInput",
    members = {
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldDefinitions = {
            type = "list",
            member = M.FieldDefinition,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTypeOutput = {
    type = "structure",
    id = "CreateTypeOutput",
    members = {
        keyspaceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteKeyspaceInput = {
    type = "structure",
    id = "DeleteKeyspaceInput",
    members = {
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteKeyspaceOutput = {
    type = "structure",
    id = "DeleteKeyspaceOutput",
}

M.DeleteTableInput = {
    type = "structure",
    id = "DeleteTableInput",
    members = {
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTableOutput = {
    type = "structure",
    id = "DeleteTableOutput",
}

M.DeleteTypeInput = {
    type = "structure",
    id = "DeleteTypeInput",
    members = {
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTypeOutput = {
    type = "structure",
    id = "DeleteTypeOutput",
    members = {
        keyspaceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetKeyspaceInput = {
    type = "structure",
    id = "GetKeyspaceInput",
    members = {
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KeyspaceStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
}

M.ReplicationGroupStatus = {
    type = "structure",
    id = "ReplicationGroupStatus",
    members = {
        region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyspaceStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tablesReplicationProgress = {
            type = "string",
        },
    },
}

M.GetKeyspaceOutput = {
    type = "structure",
    id = "GetKeyspaceOutput",
    members = {
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        replicationStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        replicationRegions = {
            type = "list",
            member = { type = "string" },
        },
        replicationGroupStatuses = {
            type = "list",
            member = M.ReplicationGroupStatus,
        },
    },
}

M.GetTableInput = {
    type = "structure",
    id = "GetTableInput",
    members = {
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PointInTimeRecoverySummary = {
    type = "structure",
    id = "PointInTimeRecoverySummary",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        earliestRestorableTimestamp = {
            type = "timestamp",
        },
    },
}

M.TableStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DELETED = "DELETED",
    RESTORING = "RESTORING",
    INACCESSIBLE_ENCRYPTION_CREDENTIALS = "INACCESSIBLE_ENCRYPTION_CREDENTIALS",
}

M.WarmThroughputStatus = {
    AVAILABLE = "AVAILABLE",
    UPDATING = "UPDATING",
}

M.WarmThroughputSpecificationSummary = {
    type = "structure",
    id = "WarmThroughputSpecificationSummary",
    members = {
        readUnitsPerSecond = {
            type = "long",
            traits = {
                required = true,
            },
        },
        writeUnitsPerSecond = {
            type = "long",
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

M.ReplicaSpecificationSummary = {
    type = "structure",
    id = "ReplicaSpecificationSummary",
    members = {
        region = {
            type = "string",
        },
        status = {
            type = "string",
        },
        capacitySpecification = M.CapacitySpecificationSummary,
        warmThroughputSpecification = M.WarmThroughputSpecificationSummary,
    },
}

M.GetTableOutput = {
    type = "structure",
    id = "GetTableOutput",
    members = {
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTimestamp = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        schemaDefinition = M.SchemaDefinition,
        capacitySpecification = M.CapacitySpecificationSummary,
        encryptionSpecification = M.EncryptionSpecification,
        pointInTimeRecovery = M.PointInTimeRecoverySummary,
        ttl = M.TimeToLive,
        defaultTimeToLive = {
            type = "integer",
        },
        comment = M.Comment,
        clientSideTimestamps = M.ClientSideTimestamps,
        replicaSpecifications = {
            type = "list",
            member = M.ReplicaSpecificationSummary,
        },
        latestStreamArn = {
            type = "string",
        },
        cdcSpecification = M.CdcSpecificationSummary,
        warmThroughputSpecification = M.WarmThroughputSpecificationSummary,
    },
}

M.GetTableAutoScalingSettingsInput = {
    type = "structure",
    id = "GetTableAutoScalingSettingsInput",
    members = {
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReplicaAutoScalingSpecification = {
    type = "structure",
    id = "ReplicaAutoScalingSpecification",
    members = {
        region = {
            type = "string",
        },
        autoScalingSpecification = M.AutoScalingSpecification,
    },
}

M.GetTableAutoScalingSettingsOutput = {
    type = "structure",
    id = "GetTableAutoScalingSettingsOutput",
    members = {
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        autoScalingSpecification = M.AutoScalingSpecification,
        replicaSpecifications = {
            type = "list",
            member = M.ReplicaAutoScalingSpecification,
        },
    },
}

M.GetTypeInput = {
    type = "structure",
    id = "GetTypeInput",
    members = {
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TypeStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    DELETING = "DELETING",
    RESTORING = "RESTORING",
}

M.GetTypeOutput = {
    type = "structure",
    id = "GetTypeOutput",
    members = {
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        typeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldDefinitions = {
            type = "list",
            member = M.FieldDefinition,
        },
        lastModifiedTimestamp = {
            type = "timestamp",
        },
        status = {
            type = "string",
        },
        directReferringTables = {
            type = "list",
            member = { type = "string" },
        },
        directParentTypes = {
            type = "list",
            member = { type = "string" },
        },
        maxNestingDepth = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        keyspaceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListKeyspacesInput = {
    type = "structure",
    id = "ListKeyspacesInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.KeyspaceSummary = {
    type = "structure",
    id = "KeyspaceSummary",
    members = {
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        replicationStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        replicationRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListKeyspacesOutput = {
    type = "structure",
    id = "ListKeyspacesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        keyspaces = {
            type = "list",
            member = M.KeyspaceSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.ListTablesInput = {
    type = "structure",
    id = "ListTablesInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TableSummary = {
    type = "structure",
    id = "TableSummary",
    members = {
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTablesOutput = {
    type = "structure",
    id = "ListTablesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        tables = {
            type = "list",
            member = M.TableSummary,
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
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        nextToken = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListTypesInput = {
    type = "structure",
    id = "ListTypesInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTypesOutput = {
    type = "structure",
    id = "ListTypesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        types = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RestoreTableInput = {
    type = "structure",
    id = "RestoreTableInput",
    members = {
        sourceKeyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourceTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetKeyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        restoreTimestamp = {
            type = "timestamp",
        },
        capacitySpecificationOverride = M.CapacitySpecification,
        encryptionSpecificationOverride = M.EncryptionSpecification,
        pointInTimeRecoveryOverride = M.PointInTimeRecovery,
        tagsOverride = {
            type = "list",
            member = M.Tag,
        },
        autoScalingSpecification = M.AutoScalingSpecification,
        replicaSpecifications = {
            type = "list",
            member = M.ReplicaSpecification,
        },
    },
}

M.RestoreTableOutput = {
    type = "structure",
    id = "RestoreTableOutput",
    members = {
        restoredTableARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
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
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateKeyspaceInput = {
    type = "structure",
    id = "UpdateKeyspaceInput",
    members = {
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        replicationSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReplicationSpecification }),
        clientSideTimestamps = M.ClientSideTimestamps,
    },
}

M.UpdateKeyspaceOutput = {
    type = "structure",
    id = "UpdateKeyspaceOutput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTableInput = {
    type = "structure",
    id = "UpdateTableInput",
    members = {
        keyspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        addColumns = {
            type = "list",
            member = M.ColumnDefinition,
        },
        capacitySpecification = M.CapacitySpecification,
        encryptionSpecification = M.EncryptionSpecification,
        pointInTimeRecovery = M.PointInTimeRecovery,
        ttl = M.TimeToLive,
        defaultTimeToLive = {
            type = "integer",
        },
        clientSideTimestamps = M.ClientSideTimestamps,
        autoScalingSpecification = M.AutoScalingSpecification,
        replicaSpecifications = {
            type = "list",
            member = M.ReplicaSpecification,
        },
        cdcSpecification = M.CdcSpecification,
        warmThroughputSpecification = M.WarmThroughputSpecification,
    },
}

M.UpdateTableOutput = {
    type = "structure",
    id = "UpdateTableOutput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

return M
