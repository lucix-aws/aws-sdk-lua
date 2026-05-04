local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TargetTrackingScalingPolicyConfiguration = {
    type = "structure",
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
    members = {
        targetTrackingScalingPolicyConfiguration = M.TargetTrackingScalingPolicyConfiguration,
    },
}

M.AutoScalingSettings = {
    type = "structure",
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
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
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
}

M.DeleteTableInput = {
    type = "structure",
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
}

M.DeleteTypeInput = {
    type = "structure",
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
    members = {
        region = {
            type = "string",
        },
        autoScalingSpecification = M.AutoScalingSpecification,
    },
}

M.GetTableAutoScalingSettingsOutput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.UpdateKeyspaceInput = {
    type = "structure",
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
