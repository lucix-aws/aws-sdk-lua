local M = {}

M.ApproximateCreationDateTimePrecision = {
    MILLISECOND = "MILLISECOND",
    MICROSECOND = "MICROSECOND",
}

M.ArchivalSummary = {
    type = "structure",
    members = {
        ArchivalDateTime = {
            type = "timestamp",
        },
        ArchivalReason = {
            type = "string",
        },
        ArchivalBackupArn = {
            type = "string",
        },
    },
}

M.AttributeAction = {
    ADD = "ADD",
    PUT = "PUT",
    DELETE = "DELETE",
}

M.ScalarAttributeType = {
    S = "S",
    N = "N",
    B = "B",
}

M.AttributeDefinition = {
    type = "structure",
    members = {
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AutoScalingTargetTrackingScalingPolicyConfigurationDescription = {
    type = "structure",
    members = {
        DisableScaleIn = {
            type = "boolean",
        },
        ScaleInCooldown = {
            type = "integer",
        },
        ScaleOutCooldown = {
            type = "integer",
        },
        TargetValue = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.AutoScalingPolicyDescription = {
    type = "structure",
    members = {
        PolicyName = {
            type = "string",
        },
        TargetTrackingScalingPolicyConfiguration = M.AutoScalingTargetTrackingScalingPolicyConfigurationDescription,
    },
}

M.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate = {
    type = "structure",
    members = {
        DisableScaleIn = {
            type = "boolean",
        },
        ScaleInCooldown = {
            type = "integer",
        },
        ScaleOutCooldown = {
            type = "integer",
        },
        TargetValue = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.AutoScalingPolicyUpdate = {
    type = "structure",
    members = {
        PolicyName = {
            type = "string",
        },
        TargetTrackingScalingPolicyConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate }),
    },
}

M.AutoScalingSettingsDescription = {
    type = "structure",
    members = {
        MinimumUnits = {
            type = "long",
        },
        MaximumUnits = {
            type = "long",
        },
        AutoScalingDisabled = {
            type = "boolean",
        },
        AutoScalingRoleArn = {
            type = "string",
        },
        ScalingPolicies = {
            type = "list",
            member = M.AutoScalingPolicyDescription,
        },
    },
}

M.AutoScalingSettingsUpdate = {
    type = "structure",
    members = {
        MinimumUnits = {
            type = "long",
        },
        MaximumUnits = {
            type = "long",
        },
        AutoScalingDisabled = {
            type = "boolean",
        },
        AutoScalingRoleArn = {
            type = "string",
        },
        ScalingPolicyUpdate = M.AutoScalingPolicyUpdate,
    },
}

M.BackupStatus = {
    CREATING = "CREATING",
    DELETED = "DELETED",
    AVAILABLE = "AVAILABLE",
}

M.BackupType = {
    USER = "USER",
    SYSTEM = "SYSTEM",
    AWS_BACKUP = "AWS_BACKUP",
}

M.BackupDetails = {
    type = "structure",
    members = {
        BackupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupSizeBytes = {
            type = "long",
        },
        BackupStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupCreationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        BackupExpiryDateTime = {
            type = "timestamp",
        },
    },
}

M.BillingMode = {
    PROVISIONED = "PROVISIONED",
    PAY_PER_REQUEST = "PAY_PER_REQUEST",
}

M.KeyType = {
    HASH = "HASH",
    RANGE = "RANGE",
}

M.KeySchemaElement = {
    type = "structure",
    members = {
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OnDemandThroughput = {
    type = "structure",
    members = {
        MaxReadRequestUnits = {
            type = "long",
        },
        MaxWriteRequestUnits = {
            type = "long",
        },
    },
}

M.ProvisionedThroughput = {
    type = "structure",
    members = {
        ReadCapacityUnits = {
            type = "long",
            traits = {
                required = true,
            },
        },
        WriteCapacityUnits = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.SourceTableDetails = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableArn = {
            type = "string",
        },
        TableSizeBytes = {
            type = "long",
        },
        KeySchema = {
            type = "list",
            member = M.KeySchemaElement,
            traits = {
                required = true,
            },
        },
        TableCreationDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ProvisionedThroughput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProvisionedThroughput }),
        OnDemandThroughput = M.OnDemandThroughput,
        ItemCount = {
            type = "long",
        },
        BillingMode = {
            type = "string",
        },
    },
}

M.ProjectionType = {
    ALL = "ALL",
    KEYS_ONLY = "KEYS_ONLY",
    INCLUDE = "INCLUDE",
}

M.Projection = {
    type = "structure",
    members = {
        ProjectionType = {
            type = "string",
        },
        NonKeyAttributes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GlobalSecondaryIndexInfo = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
        },
        KeySchema = {
            type = "list",
            member = M.KeySchemaElement,
        },
        Projection = M.Projection,
        ProvisionedThroughput = M.ProvisionedThroughput,
        OnDemandThroughput = M.OnDemandThroughput,
    },
}

M.LocalSecondaryIndexInfo = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
        },
        KeySchema = {
            type = "list",
            member = M.KeySchemaElement,
        },
        Projection = M.Projection,
    },
}

M.SSEType = {
    AES256 = "AES256",
    KMS = "KMS",
}

M.SSEStatus = {
    ENABLING = "ENABLING",
    ENABLED = "ENABLED",
    DISABLING = "DISABLING",
    DISABLED = "DISABLED",
    UPDATING = "UPDATING",
}

M.SSEDescription = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        SSEType = {
            type = "string",
        },
        KMSMasterKeyArn = {
            type = "string",
        },
        InaccessibleEncryptionDateTime = {
            type = "timestamp",
        },
    },
}

M.StreamViewType = {
    NEW_IMAGE = "NEW_IMAGE",
    OLD_IMAGE = "OLD_IMAGE",
    NEW_AND_OLD_IMAGES = "NEW_AND_OLD_IMAGES",
    KEYS_ONLY = "KEYS_ONLY",
}

M.StreamSpecification = {
    type = "structure",
    members = {
        StreamEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        StreamViewType = {
            type = "string",
        },
    },
}

M.TimeToLiveStatus = {
    ENABLING = "ENABLING",
    DISABLING = "DISABLING",
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TimeToLiveDescription = {
    type = "structure",
    members = {
        TimeToLiveStatus = {
            type = "string",
        },
        AttributeName = {
            type = "string",
        },
    },
}

M.SourceTableFeatureDetails = {
    type = "structure",
    members = {
        LocalSecondaryIndexes = {
            type = "list",
            member = M.LocalSecondaryIndexInfo,
        },
        GlobalSecondaryIndexes = {
            type = "list",
            member = M.GlobalSecondaryIndexInfo,
        },
        StreamDescription = M.StreamSpecification,
        TimeToLiveDescription = M.TimeToLiveDescription,
        SSEDescription = M.SSEDescription,
    },
}

M.BackupDescription = {
    type = "structure",
    members = {
        BackupDetails = M.BackupDetails,
        SourceTableDetails = M.SourceTableDetails,
        SourceTableFeatureDetails = M.SourceTableFeatureDetails,
    },
}

M.BackupInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BackupNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BackupSummary = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
        },
        TableId = {
            type = "string",
        },
        TableArn = {
            type = "string",
        },
        BackupArn = {
            type = "string",
        },
        BackupName = {
            type = "string",
        },
        BackupCreationDateTime = {
            type = "timestamp",
        },
        BackupExpiryDateTime = {
            type = "timestamp",
        },
        BackupStatus = {
            type = "string",
        },
        BackupType = {
            type = "string",
        },
        BackupSizeBytes = {
            type = "long",
        },
    },
}

M.BackupTypeFilter = {
    USER = "USER",
    SYSTEM = "SYSTEM",
    AWS_BACKUP = "AWS_BACKUP",
    ALL = "ALL",
}

M.ReturnConsumedCapacity = {
    INDEXES = "INDEXES",
    TOTAL = "TOTAL",
    NONE = "NONE",
}

M.ReturnValuesOnConditionCheckFailure = {
    ALL_OLD = "ALL_OLD",
    NONE = "NONE",
}

M.Capacity = {
    type = "structure",
    members = {
        ReadCapacityUnits = {
            type = "double",
        },
        WriteCapacityUnits = {
            type = "double",
        },
        CapacityUnits = {
            type = "double",
        },
    },
}

M.ConsumedCapacity = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
        },
        CapacityUnits = {
            type = "double",
        },
        ReadCapacityUnits = {
            type = "double",
        },
        WriteCapacityUnits = {
            type = "double",
        },
        Table = M.Capacity,
        LocalSecondaryIndexes = {
            type = "map",
            key = { type = "string" },
            value = M.Capacity,
        },
        GlobalSecondaryIndexes = {
            type = "map",
            key = { type = "string" },
            value = M.Capacity,
        },
    },
}

M.BatchStatementErrorCodeEnum = {
    ConditionalCheckFailed = "ConditionalCheckFailed",
    ItemCollectionSizeLimitExceeded = "ItemCollectionSizeLimitExceeded",
    RequestLimitExceeded = "RequestLimitExceeded",
    ValidationError = "ValidationError",
    ProvisionedThroughputExceeded = "ProvisionedThroughputExceeded",
    TransactionConflict = "TransactionConflict",
    ThrottlingError = "ThrottlingError",
    InternalServerError = "InternalServerError",
    ResourceNotFound = "ResourceNotFound",
    AccessDenied = "AccessDenied",
    DuplicateItem = "DuplicateItem",
}

M.InternalServerError = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingReason = {
    type = "structure",
    members = {
        reason = {
            type = "string",
        },
        resource = {
            type = "string",
        },
    },
}

M.RequestLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        ThrottlingReasons = {
            type = "list",
            member = M.ThrottlingReason,
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        throttlingReasons = {
            type = "list",
            member = M.ThrottlingReason,
        },
    },
}

M.InvalidEndpointException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ProvisionedThroughputExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        ThrottlingReasons = {
            type = "list",
            member = M.ThrottlingReason,
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
    },
}

M.ReturnItemCollectionMetrics = {
    SIZE = "SIZE",
    NONE = "NONE",
}

M.ItemCollectionSizeLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReplicatedWriteConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BillingModeSummary = {
    type = "structure",
    members = {
        BillingMode = {
            type = "string",
        },
        LastUpdateToPayPerRequestDateTime = {
            type = "timestamp",
        },
    },
}

M.ComparisonOperator = {
    EQ = "EQ",
    NE = "NE",
    IN = "IN",
    LE = "LE",
    LT = "LT",
    GE = "GE",
    GT = "GT",
    BETWEEN = "BETWEEN",
    NOT_NULL = "NOT_NULL",
    NULL = "NULL",
    CONTAINS = "CONTAINS",
    NOT_CONTAINS = "NOT_CONTAINS",
    BEGINS_WITH = "BEGINS_WITH",
}

M.ConditionalOperator = {
    AND = "AND",
    OR = "OR",
}

M.ContinuousBackupsStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.PointInTimeRecoveryStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.PointInTimeRecoveryDescription = {
    type = "structure",
    members = {
        PointInTimeRecoveryStatus = {
            type = "string",
        },
        RecoveryPeriodInDays = {
            type = "integer",
        },
        EarliestRestorableDateTime = {
            type = "timestamp",
        },
        LatestRestorableDateTime = {
            type = "timestamp",
        },
    },
}

M.ContinuousBackupsDescription = {
    type = "structure",
    members = {
        ContinuousBackupsStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PointInTimeRecoveryDescription = M.PointInTimeRecoveryDescription,
    },
}

M.ContinuousBackupsUnavailableException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ContributorInsightsAction = {
    ENABLE = "ENABLE",
    DISABLE = "DISABLE",
}

M.ContributorInsightsMode = {
    ACCESSED_AND_THROTTLED_KEYS = "ACCESSED_AND_THROTTLED_KEYS",
    THROTTLED_KEYS = "THROTTLED_KEYS",
}

M.ContributorInsightsStatus = {
    ENABLING = "ENABLING",
    ENABLED = "ENABLED",
    DISABLING = "DISABLING",
    DISABLED = "DISABLED",
    FAILED = "FAILED",
}

M.ContributorInsightsSummary = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
        },
        IndexName = {
            type = "string",
        },
        ContributorInsightsStatus = {
            type = "string",
        },
        ContributorInsightsMode = {
            type = "string",
        },
    },
}

M.CreateBackupInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateBackupOutput = {
    type = "structure",
    members = {
        BackupDetails = M.BackupDetails,
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TableInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TableNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.WarmThroughput = {
    type = "structure",
    members = {
        ReadUnitsPerSecond = {
            type = "long",
        },
        WriteUnitsPerSecond = {
            type = "long",
        },
    },
}

M.CreateGlobalSecondaryIndexAction = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeySchema = {
            type = "list",
            member = M.KeySchemaElement,
            traits = {
                required = true,
            },
        },
        Projection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Projection }),
        ProvisionedThroughput = M.ProvisionedThroughput,
        OnDemandThroughput = M.OnDemandThroughput,
        WarmThroughput = M.WarmThroughput,
    },
}

M.Replica = {
    type = "structure",
    members = {
        RegionName = {
            type = "string",
        },
    },
}

M.CreateGlobalTableInput = {
    type = "structure",
    members = {
        GlobalTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationGroup = {
            type = "list",
            member = M.Replica,
            traits = {
                required = true,
            },
        },
    },
}

M.GlobalTableStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
}

M.OnDemandThroughputOverride = {
    type = "structure",
    members = {
        MaxReadRequestUnits = {
            type = "long",
        },
    },
}

M.ProvisionedThroughputOverride = {
    type = "structure",
    members = {
        ReadCapacityUnits = {
            type = "long",
        },
    },
}

M.IndexStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
}

M.GlobalSecondaryIndexWarmThroughputDescription = {
    type = "structure",
    members = {
        ReadUnitsPerSecond = {
            type = "long",
        },
        WriteUnitsPerSecond = {
            type = "long",
        },
        Status = {
            type = "string",
        },
    },
}

M.ReplicaGlobalSecondaryIndexDescription = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
        },
        ProvisionedThroughputOverride = M.ProvisionedThroughputOverride,
        OnDemandThroughputOverride = M.OnDemandThroughputOverride,
        WarmThroughput = M.GlobalSecondaryIndexWarmThroughputDescription,
    },
}

M.GlobalTableSettingsReplicationMode = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    ENABLED_WITH_OVERRIDES = "ENABLED_WITH_OVERRIDES",
}

M.ReplicaStatus = {
    CREATING = "CREATING",
    CREATION_FAILED = "CREATION_FAILED",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
    REGION_DISABLED = "REGION_DISABLED",
    INACCESSIBLE_ENCRYPTION_CREDENTIALS = "INACCESSIBLE_ENCRYPTION_CREDENTIALS",
    ARCHIVING = "ARCHIVING",
    ARCHIVED = "ARCHIVED",
    REPLICATION_NOT_AUTHORIZED = "REPLICATION_NOT_AUTHORIZED",
}

M.TableClass = {
    STANDARD = "STANDARD",
    STANDARD_INFREQUENT_ACCESS = "STANDARD_INFREQUENT_ACCESS",
}

M.TableClassSummary = {
    type = "structure",
    members = {
        TableClass = {
            type = "string",
        },
        LastUpdateDateTime = {
            type = "timestamp",
        },
    },
}

M.TableStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
    INACCESSIBLE_ENCRYPTION_CREDENTIALS = "INACCESSIBLE_ENCRYPTION_CREDENTIALS",
    ARCHIVING = "ARCHIVING",
    ARCHIVED = "ARCHIVED",
    REPLICATION_NOT_AUTHORIZED = "REPLICATION_NOT_AUTHORIZED",
}

M.TableWarmThroughputDescription = {
    type = "structure",
    members = {
        ReadUnitsPerSecond = {
            type = "long",
        },
        WriteUnitsPerSecond = {
            type = "long",
        },
        Status = {
            type = "string",
        },
    },
}

M.ReplicaDescription = {
    type = "structure",
    members = {
        RegionName = {
            type = "string",
        },
        ReplicaStatus = {
            type = "string",
        },
        ReplicaArn = {
            type = "string",
        },
        ReplicaStatusDescription = {
            type = "string",
        },
        ReplicaStatusPercentProgress = {
            type = "string",
        },
        KMSMasterKeyId = {
            type = "string",
        },
        ProvisionedThroughputOverride = M.ProvisionedThroughputOverride,
        OnDemandThroughputOverride = M.OnDemandThroughputOverride,
        WarmThroughput = M.TableWarmThroughputDescription,
        GlobalSecondaryIndexes = {
            type = "list",
            member = M.ReplicaGlobalSecondaryIndexDescription,
        },
        ReplicaInaccessibleDateTime = {
            type = "timestamp",
        },
        ReplicaTableClassSummary = M.TableClassSummary,
        GlobalTableSettingsReplicationMode = {
            type = "string",
        },
    },
}

M.GlobalTableDescription = {
    type = "structure",
    members = {
        ReplicationGroup = {
            type = "list",
            member = M.ReplicaDescription,
        },
        GlobalTableArn = {
            type = "string",
        },
        CreationDateTime = {
            type = "timestamp",
        },
        GlobalTableStatus = {
            type = "string",
        },
        GlobalTableName = {
            type = "string",
        },
    },
}

M.CreateGlobalTableOutput = {
    type = "structure",
    members = {
        GlobalTableDescription = M.GlobalTableDescription,
    },
}

M.GlobalTableAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateGlobalTableWitnessGroupMemberAction = {
    type = "structure",
    members = {
        RegionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateReplicaAction = {
    type = "structure",
    members = {
        RegionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReplicaGlobalSecondaryIndex = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisionedThroughputOverride = M.ProvisionedThroughputOverride,
        OnDemandThroughputOverride = M.OnDemandThroughputOverride,
    },
}

M.CreateReplicationGroupMemberAction = {
    type = "structure",
    members = {
        RegionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KMSMasterKeyId = {
            type = "string",
        },
        ProvisionedThroughputOverride = M.ProvisionedThroughputOverride,
        OnDemandThroughputOverride = M.OnDemandThroughputOverride,
        GlobalSecondaryIndexes = {
            type = "list",
            member = M.ReplicaGlobalSecondaryIndex,
        },
        TableClassOverride = {
            type = "string",
        },
    },
}

M.GlobalSecondaryIndex = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeySchema = {
            type = "list",
            member = M.KeySchemaElement,
            traits = {
                required = true,
            },
        },
        Projection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Projection }),
        ProvisionedThroughput = M.ProvisionedThroughput,
        OnDemandThroughput = M.OnDemandThroughput,
        WarmThroughput = M.WarmThroughput,
    },
}

M.LocalSecondaryIndex = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeySchema = {
            type = "list",
            member = M.KeySchemaElement,
            traits = {
                required = true,
            },
        },
        Projection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Projection }),
    },
}

M.SSESpecification = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        SSEType = {
            type = "string",
        },
        KMSMasterKeyId = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTableInput = {
    type = "structure",
    members = {
        AttributeDefinitions = {
            type = "list",
            member = M.AttributeDefinition,
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeySchema = {
            type = "list",
            member = M.KeySchemaElement,
        },
        LocalSecondaryIndexes = {
            type = "list",
            member = M.LocalSecondaryIndex,
        },
        GlobalSecondaryIndexes = {
            type = "list",
            member = M.GlobalSecondaryIndex,
        },
        BillingMode = {
            type = "string",
        },
        ProvisionedThroughput = M.ProvisionedThroughput,
        StreamSpecification = M.StreamSpecification,
        SSESpecification = M.SSESpecification,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        TableClass = {
            type = "string",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        WarmThroughput = M.WarmThroughput,
        ResourcePolicy = {
            type = "string",
        },
        OnDemandThroughput = M.OnDemandThroughput,
        GlobalTableSourceArn = {
            type = "string",
        },
        GlobalTableSettingsReplicationMode = {
            type = "string",
        },
    },
}

M.ProvisionedThroughputDescription = {
    type = "structure",
    members = {
        LastIncreaseDateTime = {
            type = "timestamp",
        },
        LastDecreaseDateTime = {
            type = "timestamp",
        },
        NumberOfDecreasesToday = {
            type = "long",
        },
        ReadCapacityUnits = {
            type = "long",
        },
        WriteCapacityUnits = {
            type = "long",
        },
    },
}

M.GlobalSecondaryIndexDescription = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
        },
        KeySchema = {
            type = "list",
            member = M.KeySchemaElement,
        },
        Projection = M.Projection,
        IndexStatus = {
            type = "string",
        },
        Backfilling = {
            type = "boolean",
        },
        ProvisionedThroughput = M.ProvisionedThroughputDescription,
        IndexSizeBytes = {
            type = "long",
        },
        ItemCount = {
            type = "long",
        },
        IndexArn = {
            type = "string",
        },
        OnDemandThroughput = M.OnDemandThroughput,
        WarmThroughput = M.GlobalSecondaryIndexWarmThroughputDescription,
    },
}

M.WitnessStatus = {
    CREATING = "CREATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
}

M.GlobalTableWitnessDescription = {
    type = "structure",
    members = {
        RegionName = {
            type = "string",
        },
        WitnessStatus = {
            type = "string",
        },
    },
}

M.LocalSecondaryIndexDescription = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
        },
        KeySchema = {
            type = "list",
            member = M.KeySchemaElement,
        },
        Projection = M.Projection,
        IndexSizeBytes = {
            type = "long",
        },
        ItemCount = {
            type = "long",
        },
        IndexArn = {
            type = "string",
        },
    },
}

M.MultiRegionConsistency = {
    EVENTUAL = "EVENTUAL",
    STRONG = "STRONG",
}

M.RestoreSummary = {
    type = "structure",
    members = {
        SourceBackupArn = {
            type = "string",
        },
        SourceTableArn = {
            type = "string",
        },
        RestoreDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        RestoreInProgress = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.TableDescription = {
    type = "structure",
    members = {
        AttributeDefinitions = {
            type = "list",
            member = M.AttributeDefinition,
        },
        TableName = {
            type = "string",
        },
        KeySchema = {
            type = "list",
            member = M.KeySchemaElement,
        },
        TableStatus = {
            type = "string",
        },
        CreationDateTime = {
            type = "timestamp",
        },
        ProvisionedThroughput = M.ProvisionedThroughputDescription,
        TableSizeBytes = {
            type = "long",
        },
        ItemCount = {
            type = "long",
        },
        TableArn = {
            type = "string",
        },
        TableId = {
            type = "string",
        },
        BillingModeSummary = M.BillingModeSummary,
        LocalSecondaryIndexes = {
            type = "list",
            member = M.LocalSecondaryIndexDescription,
        },
        GlobalSecondaryIndexes = {
            type = "list",
            member = M.GlobalSecondaryIndexDescription,
        },
        StreamSpecification = M.StreamSpecification,
        LatestStreamLabel = {
            type = "string",
        },
        LatestStreamArn = {
            type = "string",
        },
        GlobalTableVersion = {
            type = "string",
        },
        Replicas = {
            type = "list",
            member = M.ReplicaDescription,
        },
        GlobalTableWitnesses = {
            type = "list",
            member = M.GlobalTableWitnessDescription,
        },
        GlobalTableSettingsReplicationMode = {
            type = "string",
        },
        RestoreSummary = M.RestoreSummary,
        SSEDescription = M.SSEDescription,
        ArchivalSummary = M.ArchivalSummary,
        TableClassSummary = M.TableClassSummary,
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        OnDemandThroughput = M.OnDemandThroughput,
        WarmThroughput = M.TableWarmThroughputDescription,
        MultiRegionConsistency = {
            type = "string",
        },
    },
}

M.CreateTableOutput = {
    type = "structure",
    members = {
        TableDescription = M.TableDescription,
    },
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CsvOptions = {
    type = "structure",
    members = {
        Delimiter = {
            type = "string",
        },
        HeaderList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DeleteBackupInput = {
    type = "structure",
    members = {
        BackupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBackupOutput = {
    type = "structure",
    members = {
        BackupDescription = M.BackupDescription,
    },
}

M.DeleteGlobalSecondaryIndexAction = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteGlobalTableWitnessGroupMemberAction = {
    type = "structure",
    members = {
        RegionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReturnValue = {
    NONE = "NONE",
    ALL_OLD = "ALL_OLD",
    UPDATED_OLD = "UPDATED_OLD",
    ALL_NEW = "ALL_NEW",
    UPDATED_NEW = "UPDATED_NEW",
}

M.TransactionConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteReplicaAction = {
    type = "structure",
    members = {
        RegionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteReplicationGroupMemberAction = {
    type = "structure",
    members = {
        RegionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpectedRevisionId = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
    members = {
        RevisionId = {
            type = "string",
        },
    },
}

M.PolicyNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteTableInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTableOutput = {
    type = "structure",
    members = {
        TableDescription = M.TableDescription,
    },
}

M.DescribeBackupInput = {
    type = "structure",
    members = {
        BackupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeBackupOutput = {
    type = "structure",
    members = {
        BackupDescription = M.BackupDescription,
    },
}

M.DescribeContinuousBackupsInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeContinuousBackupsOutput = {
    type = "structure",
    members = {
        ContinuousBackupsDescription = M.ContinuousBackupsDescription,
    },
}

M.DescribeContributorInsightsInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexName = {
            type = "string",
        },
    },
}

M.FailureException = {
    type = "structure",
    members = {
        ExceptionName = {
            type = "string",
        },
        ExceptionDescription = {
            type = "string",
        },
    },
}

M.DescribeContributorInsightsOutput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
        },
        IndexName = {
            type = "string",
        },
        ContributorInsightsRuleList = {
            type = "list",
            member = { type = "string" },
        },
        ContributorInsightsStatus = {
            type = "string",
        },
        LastUpdateDateTime = {
            type = "timestamp",
        },
        FailureException = M.FailureException,
        ContributorInsightsMode = {
            type = "string",
        },
    },
}

M.DescribeEndpointsInput = {
    type = "structure",
}

M.Endpoint = {
    type = "structure",
    members = {
        Address = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CachePeriodInMinutes = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.DescribeEndpointsOutput = {
    type = "structure",
    members = {
        Endpoints = {
            type = "list",
            member = M.Endpoint,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeExportInput = {
    type = "structure",
    members = {
        ExportArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportFormat = {
    DYNAMODB_JSON = "DYNAMODB_JSON",
    ION = "ION",
}

M.ExportStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.ExportType = {
    FULL_EXPORT = "FULL_EXPORT",
    INCREMENTAL_EXPORT = "INCREMENTAL_EXPORT",
}

M.ExportViewType = {
    NEW_IMAGE = "NEW_IMAGE",
    NEW_AND_OLD_IMAGES = "NEW_AND_OLD_IMAGES",
}

M.IncrementalExportSpecification = {
    type = "structure",
    members = {
        ExportFromTime = {
            type = "timestamp",
        },
        ExportToTime = {
            type = "timestamp",
        },
        ExportViewType = {
            type = "string",
        },
    },
}

M.S3SseAlgorithm = {
    AES256 = "AES256",
    KMS = "KMS",
}

M.ExportDescription = {
    type = "structure",
    members = {
        ExportArn = {
            type = "string",
        },
        ExportStatus = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        ExportManifest = {
            type = "string",
        },
        TableArn = {
            type = "string",
        },
        TableId = {
            type = "string",
        },
        ExportTime = {
            type = "timestamp",
        },
        ClientToken = {
            type = "string",
        },
        S3Bucket = {
            type = "string",
        },
        S3BucketOwner = {
            type = "string",
        },
        S3Prefix = {
            type = "string",
        },
        S3SseAlgorithm = {
            type = "string",
        },
        S3SseKmsKeyId = {
            type = "string",
        },
        FailureCode = {
            type = "string",
        },
        FailureMessage = {
            type = "string",
        },
        ExportFormat = {
            type = "string",
        },
        BilledSizeBytes = {
            type = "long",
        },
        ItemCount = {
            type = "long",
        },
        ExportType = {
            type = "string",
        },
        IncrementalExportSpecification = M.IncrementalExportSpecification,
    },
}

M.DescribeExportOutput = {
    type = "structure",
    members = {
        ExportDescription = M.ExportDescription,
    },
}

M.ExportNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeGlobalTableInput = {
    type = "structure",
    members = {
        GlobalTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeGlobalTableOutput = {
    type = "structure",
    members = {
        GlobalTableDescription = M.GlobalTableDescription,
    },
}

M.GlobalTableNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeGlobalTableSettingsInput = {
    type = "structure",
    members = {
        GlobalTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReplicaGlobalSecondaryIndexSettingsDescription = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexStatus = {
            type = "string",
        },
        ProvisionedReadCapacityUnits = {
            type = "long",
        },
        ProvisionedReadCapacityAutoScalingSettings = M.AutoScalingSettingsDescription,
        ProvisionedWriteCapacityUnits = {
            type = "long",
        },
        ProvisionedWriteCapacityAutoScalingSettings = M.AutoScalingSettingsDescription,
    },
}

M.ReplicaSettingsDescription = {
    type = "structure",
    members = {
        RegionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicaStatus = {
            type = "string",
        },
        ReplicaBillingModeSummary = M.BillingModeSummary,
        ReplicaProvisionedReadCapacityUnits = {
            type = "long",
        },
        ReplicaProvisionedReadCapacityAutoScalingSettings = M.AutoScalingSettingsDescription,
        ReplicaProvisionedWriteCapacityUnits = {
            type = "long",
        },
        ReplicaProvisionedWriteCapacityAutoScalingSettings = M.AutoScalingSettingsDescription,
        ReplicaGlobalSecondaryIndexSettings = {
            type = "list",
            member = M.ReplicaGlobalSecondaryIndexSettingsDescription,
        },
        ReplicaTableClassSummary = M.TableClassSummary,
    },
}

M.DescribeGlobalTableSettingsOutput = {
    type = "structure",
    members = {
        GlobalTableName = {
            type = "string",
        },
        ReplicaSettings = {
            type = "list",
            member = M.ReplicaSettingsDescription,
        },
    },
}

M.DescribeImportInput = {
    type = "structure",
    members = {
        ImportArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    CANCELLING = "CANCELLING",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
}

M.InputCompressionType = {
    GZIP = "GZIP",
    ZSTD = "ZSTD",
    NONE = "NONE",
}

M.InputFormat = {
    DYNAMODB_JSON = "DYNAMODB_JSON",
    ION = "ION",
    CSV = "CSV",
}

M.InputFormatOptions = {
    type = "structure",
    members = {
        Csv = M.CsvOptions,
    },
}

M.S3BucketSource = {
    type = "structure",
    members = {
        S3BucketOwner = {
            type = "string",
        },
        S3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3KeyPrefix = {
            type = "string",
        },
    },
}

M.TableCreationParameters = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeDefinitions = {
            type = "list",
            member = M.AttributeDefinition,
            traits = {
                required = true,
            },
        },
        KeySchema = {
            type = "list",
            member = M.KeySchemaElement,
            traits = {
                required = true,
            },
        },
        BillingMode = {
            type = "string",
        },
        ProvisionedThroughput = M.ProvisionedThroughput,
        OnDemandThroughput = M.OnDemandThroughput,
        SSESpecification = M.SSESpecification,
        GlobalSecondaryIndexes = {
            type = "list",
            member = M.GlobalSecondaryIndex,
        },
    },
}

M.ImportTableDescription = {
    type = "structure",
    members = {
        ImportArn = {
            type = "string",
        },
        ImportStatus = {
            type = "string",
        },
        TableArn = {
            type = "string",
        },
        TableId = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
        S3BucketSource = M.S3BucketSource,
        ErrorCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        CloudWatchLogGroupArn = {
            type = "string",
        },
        InputFormat = {
            type = "string",
        },
        InputFormatOptions = M.InputFormatOptions,
        InputCompressionType = {
            type = "string",
        },
        TableCreationParameters = M.TableCreationParameters,
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        ProcessedSizeBytes = {
            type = "long",
        },
        ProcessedItemCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        ImportedItemCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        FailureCode = {
            type = "string",
        },
        FailureMessage = {
            type = "string",
        },
    },
}

M.DescribeImportOutput = {
    type = "structure",
    members = {
        ImportTableDescription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImportTableDescription }),
    },
}

M.ImportNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeKinesisStreamingDestinationInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DestinationStatus = {
    ENABLING = "ENABLING",
    ACTIVE = "ACTIVE",
    DISABLING = "DISABLING",
    DISABLED = "DISABLED",
    ENABLE_FAILED = "ENABLE_FAILED",
    UPDATING = "UPDATING",
}

M.KinesisDataStreamDestination = {
    type = "structure",
    members = {
        StreamArn = {
            type = "string",
        },
        DestinationStatus = {
            type = "string",
        },
        DestinationStatusDescription = {
            type = "string",
        },
        ApproximateCreationDateTimePrecision = {
            type = "string",
        },
    },
}

M.DescribeKinesisStreamingDestinationOutput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
        },
        KinesisDataStreamDestinations = {
            type = "list",
            member = M.KinesisDataStreamDestination,
        },
    },
}

M.DescribeLimitsInput = {
    type = "structure",
}

M.DescribeLimitsOutput = {
    type = "structure",
    members = {
        AccountMaxReadCapacityUnits = {
            type = "long",
        },
        AccountMaxWriteCapacityUnits = {
            type = "long",
        },
        TableMaxReadCapacityUnits = {
            type = "long",
        },
        TableMaxWriteCapacityUnits = {
            type = "long",
        },
    },
}

M.DescribeTableInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeTableOutput = {
    type = "structure",
    members = {
        Table = M.TableDescription,
    },
}

M.DescribeTableReplicaAutoScalingInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReplicaGlobalSecondaryIndexAutoScalingDescription = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
        },
        IndexStatus = {
            type = "string",
        },
        ProvisionedReadCapacityAutoScalingSettings = M.AutoScalingSettingsDescription,
        ProvisionedWriteCapacityAutoScalingSettings = M.AutoScalingSettingsDescription,
    },
}

M.ReplicaAutoScalingDescription = {
    type = "structure",
    members = {
        RegionName = {
            type = "string",
        },
        GlobalSecondaryIndexes = {
            type = "list",
            member = M.ReplicaGlobalSecondaryIndexAutoScalingDescription,
        },
        ReplicaProvisionedReadCapacityAutoScalingSettings = M.AutoScalingSettingsDescription,
        ReplicaProvisionedWriteCapacityAutoScalingSettings = M.AutoScalingSettingsDescription,
        ReplicaStatus = {
            type = "string",
        },
    },
}

M.TableAutoScalingDescription = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
        },
        TableStatus = {
            type = "string",
        },
        Replicas = {
            type = "list",
            member = M.ReplicaAutoScalingDescription,
        },
    },
}

M.DescribeTableReplicaAutoScalingOutput = {
    type = "structure",
    members = {
        TableAutoScalingDescription = M.TableAutoScalingDescription,
    },
}

M.DescribeTimeToLiveInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeTimeToLiveOutput = {
    type = "structure",
    members = {
        TimeToLiveDescription = M.TimeToLiveDescription,
    },
}

M.EnableKinesisStreamingConfiguration = {
    type = "structure",
    members = {
        ApproximateCreationDateTimePrecision = {
            type = "string",
        },
    },
}

M.DisableKinesisStreamingDestinationInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnableKinesisStreamingConfiguration = M.EnableKinesisStreamingConfiguration,
    },
}

M.DisableKinesisStreamingDestinationOutput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
        },
        StreamArn = {
            type = "string",
        },
        DestinationStatus = {
            type = "string",
        },
        EnableKinesisStreamingConfiguration = M.EnableKinesisStreamingConfiguration,
    },
}

M.DuplicateItemException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EnableKinesisStreamingDestinationInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnableKinesisStreamingConfiguration = M.EnableKinesisStreamingConfiguration,
    },
}

M.EnableKinesisStreamingDestinationOutput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
        },
        StreamArn = {
            type = "string",
        },
        DestinationStatus = {
            type = "string",
        },
        EnableKinesisStreamingConfiguration = M.EnableKinesisStreamingConfiguration,
    },
}

M.IdempotentParameterMismatchException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TransactionInProgressException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ExportConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ExportTableToPointInTimeInput = {
    type = "structure",
    members = {
        TableArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExportTime = {
            type = "timestamp",
        },
        ClientToken = {
            type = "string",
        },
        S3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3BucketOwner = {
            type = "string",
        },
        S3Prefix = {
            type = "string",
        },
        S3SseAlgorithm = {
            type = "string",
        },
        S3SseKmsKeyId = {
            type = "string",
        },
        ExportFormat = {
            type = "string",
        },
        ExportType = {
            type = "string",
        },
        IncrementalExportSpecification = M.IncrementalExportSpecification,
    },
}

M.ExportTableToPointInTimeOutput = {
    type = "structure",
    members = {
        ExportDescription = M.ExportDescription,
    },
}

M.InvalidExportTimeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PointInTimeRecoveryUnavailableException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
        RevisionId = {
            type = "string",
        },
    },
}

M.ImportConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ImportTableInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
        },
        S3BucketSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3BucketSource }),
        InputFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputFormatOptions = M.InputFormatOptions,
        InputCompressionType = {
            type = "string",
        },
        TableCreationParameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TableCreationParameters }),
    },
}

M.ImportTableOutput = {
    type = "structure",
    members = {
        ImportTableDescription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImportTableDescription }),
    },
}

M.ListBackupsInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        TimeRangeLowerBound = {
            type = "timestamp",
        },
        TimeRangeUpperBound = {
            type = "timestamp",
        },
        ExclusiveStartBackupArn = {
            type = "string",
        },
        BackupType = {
            type = "string",
        },
    },
}

M.ListBackupsOutput = {
    type = "structure",
    members = {
        BackupSummaries = {
            type = "list",
            member = M.BackupSummary,
        },
        LastEvaluatedBackupArn = {
            type = "string",
        },
    },
}

M.ListContributorInsightsInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ListContributorInsightsOutput = {
    type = "structure",
    members = {
        ContributorInsightsSummaries = {
            type = "list",
            member = M.ContributorInsightsSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListExportsInput = {
    type = "structure",
    members = {
        TableArn = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ExportSummary = {
    type = "structure",
    members = {
        ExportArn = {
            type = "string",
        },
        ExportStatus = {
            type = "string",
        },
        ExportType = {
            type = "string",
        },
    },
}

M.ListExportsOutput = {
    type = "structure",
    members = {
        ExportSummaries = {
            type = "list",
            member = M.ExportSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGlobalTablesInput = {
    type = "structure",
    members = {
        ExclusiveStartGlobalTableName = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        RegionName = {
            type = "string",
        },
    },
}

M.GlobalTable = {
    type = "structure",
    members = {
        GlobalTableName = {
            type = "string",
        },
        ReplicationGroup = {
            type = "list",
            member = M.Replica,
        },
    },
}

M.ListGlobalTablesOutput = {
    type = "structure",
    members = {
        GlobalTables = {
            type = "list",
            member = M.GlobalTable,
        },
        LastEvaluatedGlobalTableName = {
            type = "string",
        },
    },
}

M.ListImportsInput = {
    type = "structure",
    members = {
        TableArn = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ImportSummary = {
    type = "structure",
    members = {
        ImportArn = {
            type = "string",
        },
        ImportStatus = {
            type = "string",
        },
        TableArn = {
            type = "string",
        },
        S3BucketSource = M.S3BucketSource,
        CloudWatchLogGroupArn = {
            type = "string",
        },
        InputFormat = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.ListImportsOutput = {
    type = "structure",
    members = {
        ImportSummaryList = {
            type = "list",
            member = M.ImportSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTablesInput = {
    type = "structure",
    members = {
        ExclusiveStartTableName = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.ListTablesOutput = {
    type = "structure",
    members = {
        TableNames = {
            type = "list",
            member = { type = "string" },
        },
        LastEvaluatedTableName = {
            type = "string",
        },
    },
}

M.ListTagsOfResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsOfResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpectedRevisionId = {
            type = "string",
        },
        ConfirmRemoveSelfResourceAccess = {
            type = "boolean",
            traits = {
                default = false,
                http_header = "x-amz-confirm-remove-self-resource-access",
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    members = {
        RevisionId = {
            type = "string",
        },
    },
}

M.Select = {
    ALL_ATTRIBUTES = "ALL_ATTRIBUTES",
    ALL_PROJECTED_ATTRIBUTES = "ALL_PROJECTED_ATTRIBUTES",
    SPECIFIC_ATTRIBUTES = "SPECIFIC_ATTRIBUTES",
    COUNT = "COUNT",
}

M.RestoreTableFromBackupInput = {
    type = "structure",
    members = {
        TargetTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BackupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BillingModeOverride = {
            type = "string",
        },
        GlobalSecondaryIndexOverride = {
            type = "list",
            member = M.GlobalSecondaryIndex,
        },
        LocalSecondaryIndexOverride = {
            type = "list",
            member = M.LocalSecondaryIndex,
        },
        ProvisionedThroughputOverride = M.ProvisionedThroughput,
        OnDemandThroughputOverride = M.OnDemandThroughput,
        SSESpecificationOverride = M.SSESpecification,
    },
}

M.RestoreTableFromBackupOutput = {
    type = "structure",
    members = {
        TableDescription = M.TableDescription,
    },
}

M.TableAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRestoreTimeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RestoreTableToPointInTimeInput = {
    type = "structure",
    members = {
        SourceTableArn = {
            type = "string",
        },
        SourceTableName = {
            type = "string",
        },
        TargetTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UseLatestRestorableTime = {
            type = "boolean",
        },
        RestoreDateTime = {
            type = "timestamp",
        },
        BillingModeOverride = {
            type = "string",
        },
        GlobalSecondaryIndexOverride = {
            type = "list",
            member = M.GlobalSecondaryIndex,
        },
        LocalSecondaryIndexOverride = {
            type = "list",
            member = M.LocalSecondaryIndex,
        },
        ProvisionedThroughputOverride = M.ProvisionedThroughput,
        OnDemandThroughputOverride = M.OnDemandThroughput,
        SSESpecificationOverride = M.SSESpecification,
    },
}

M.RestoreTableToPointInTimeOutput = {
    type = "structure",
    members = {
        TableDescription = M.TableDescription,
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
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
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.PointInTimeRecoverySpecification = {
    type = "structure",
    members = {
        PointInTimeRecoveryEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        RecoveryPeriodInDays = {
            type = "integer",
        },
    },
}

M.UpdateContinuousBackupsInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PointInTimeRecoverySpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PointInTimeRecoverySpecification }),
    },
}

M.UpdateContinuousBackupsOutput = {
    type = "structure",
    members = {
        ContinuousBackupsDescription = M.ContinuousBackupsDescription,
    },
}

M.UpdateContributorInsightsInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexName = {
            type = "string",
        },
        ContributorInsightsAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContributorInsightsMode = {
            type = "string",
        },
    },
}

M.UpdateContributorInsightsOutput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
        },
        IndexName = {
            type = "string",
        },
        ContributorInsightsStatus = {
            type = "string",
        },
        ContributorInsightsMode = {
            type = "string",
        },
    },
}

M.ReplicaAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReplicaNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ReplicaUpdate = {
    type = "structure",
    members = {
        Create = M.CreateReplicaAction,
        Delete = M.DeleteReplicaAction,
    },
}

M.UpdateGlobalTableInput = {
    type = "structure",
    members = {
        GlobalTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicaUpdates = {
            type = "list",
            member = M.ReplicaUpdate,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateGlobalTableOutput = {
    type = "structure",
    members = {
        GlobalTableDescription = M.GlobalTableDescription,
    },
}

M.IndexNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GlobalTableGlobalSecondaryIndexSettingsUpdate = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisionedWriteCapacityUnits = {
            type = "long",
        },
        ProvisionedWriteCapacityAutoScalingSettingsUpdate = M.AutoScalingSettingsUpdate,
    },
}

M.ReplicaGlobalSecondaryIndexSettingsUpdate = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisionedReadCapacityUnits = {
            type = "long",
        },
        ProvisionedReadCapacityAutoScalingSettingsUpdate = M.AutoScalingSettingsUpdate,
    },
}

M.ReplicaSettingsUpdate = {
    type = "structure",
    members = {
        RegionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicaProvisionedReadCapacityUnits = {
            type = "long",
        },
        ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate = M.AutoScalingSettingsUpdate,
        ReplicaGlobalSecondaryIndexSettingsUpdate = {
            type = "list",
            member = M.ReplicaGlobalSecondaryIndexSettingsUpdate,
        },
        ReplicaTableClass = {
            type = "string",
        },
    },
}

M.UpdateGlobalTableSettingsInput = {
    type = "structure",
    members = {
        GlobalTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GlobalTableBillingMode = {
            type = "string",
        },
        GlobalTableProvisionedWriteCapacityUnits = {
            type = "long",
        },
        GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate = M.AutoScalingSettingsUpdate,
        GlobalTableGlobalSecondaryIndexSettingsUpdate = {
            type = "list",
            member = M.GlobalTableGlobalSecondaryIndexSettingsUpdate,
        },
        ReplicaSettingsUpdate = {
            type = "list",
            member = M.ReplicaSettingsUpdate,
        },
    },
}

M.UpdateGlobalTableSettingsOutput = {
    type = "structure",
    members = {
        GlobalTableName = {
            type = "string",
        },
        ReplicaSettings = {
            type = "list",
            member = M.ReplicaSettingsDescription,
        },
    },
}

M.UpdateKinesisStreamingConfiguration = {
    type = "structure",
    members = {
        ApproximateCreationDateTimePrecision = {
            type = "string",
        },
    },
}

M.UpdateKinesisStreamingDestinationInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateKinesisStreamingConfiguration = M.UpdateKinesisStreamingConfiguration,
    },
}

M.UpdateKinesisStreamingDestinationOutput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
        },
        StreamArn = {
            type = "string",
        },
        DestinationStatus = {
            type = "string",
        },
        UpdateKinesisStreamingConfiguration = M.UpdateKinesisStreamingConfiguration,
    },
}

M.UpdateGlobalSecondaryIndexAction = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisionedThroughput = M.ProvisionedThroughput,
        OnDemandThroughput = M.OnDemandThroughput,
        WarmThroughput = M.WarmThroughput,
    },
}

M.GlobalSecondaryIndexUpdate = {
    type = "structure",
    members = {
        Update = M.UpdateGlobalSecondaryIndexAction,
        Create = M.CreateGlobalSecondaryIndexAction,
        Delete = M.DeleteGlobalSecondaryIndexAction,
    },
}

M.GlobalTableWitnessGroupUpdate = {
    type = "structure",
    members = {
        Create = M.CreateGlobalTableWitnessGroupMemberAction,
        Delete = M.DeleteGlobalTableWitnessGroupMemberAction,
    },
}

M.UpdateReplicationGroupMemberAction = {
    type = "structure",
    members = {
        RegionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KMSMasterKeyId = {
            type = "string",
        },
        ProvisionedThroughputOverride = M.ProvisionedThroughputOverride,
        OnDemandThroughputOverride = M.OnDemandThroughputOverride,
        GlobalSecondaryIndexes = {
            type = "list",
            member = M.ReplicaGlobalSecondaryIndex,
        },
        TableClassOverride = {
            type = "string",
        },
    },
}

M.ReplicationGroupUpdate = {
    type = "structure",
    members = {
        Create = M.CreateReplicationGroupMemberAction,
        Update = M.UpdateReplicationGroupMemberAction,
        Delete = M.DeleteReplicationGroupMemberAction,
    },
}

M.UpdateTableInput = {
    type = "structure",
    members = {
        AttributeDefinitions = {
            type = "list",
            member = M.AttributeDefinition,
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BillingMode = {
            type = "string",
        },
        ProvisionedThroughput = M.ProvisionedThroughput,
        GlobalSecondaryIndexUpdates = {
            type = "list",
            member = M.GlobalSecondaryIndexUpdate,
        },
        StreamSpecification = M.StreamSpecification,
        SSESpecification = M.SSESpecification,
        ReplicaUpdates = {
            type = "list",
            member = M.ReplicationGroupUpdate,
        },
        TableClass = {
            type = "string",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        MultiRegionConsistency = {
            type = "string",
        },
        GlobalTableWitnessUpdates = {
            type = "list",
            member = M.GlobalTableWitnessGroupUpdate,
        },
        OnDemandThroughput = M.OnDemandThroughput,
        WarmThroughput = M.WarmThroughput,
        GlobalTableSettingsReplicationMode = {
            type = "string",
        },
    },
}

M.UpdateTableOutput = {
    type = "structure",
    members = {
        TableDescription = M.TableDescription,
    },
}

M.GlobalSecondaryIndexAutoScalingUpdate = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
        },
        ProvisionedWriteCapacityAutoScalingUpdate = M.AutoScalingSettingsUpdate,
    },
}

M.ReplicaGlobalSecondaryIndexAutoScalingUpdate = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
        },
        ProvisionedReadCapacityAutoScalingUpdate = M.AutoScalingSettingsUpdate,
    },
}

M.ReplicaAutoScalingUpdate = {
    type = "structure",
    members = {
        RegionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicaGlobalSecondaryIndexUpdates = {
            type = "list",
            member = M.ReplicaGlobalSecondaryIndexAutoScalingUpdate,
        },
        ReplicaProvisionedReadCapacityAutoScalingUpdate = M.AutoScalingSettingsUpdate,
    },
}

M.UpdateTableReplicaAutoScalingInput = {
    type = "structure",
    members = {
        GlobalSecondaryIndexUpdates = {
            type = "list",
            member = M.GlobalSecondaryIndexAutoScalingUpdate,
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisionedWriteCapacityAutoScalingUpdate = M.AutoScalingSettingsUpdate,
        ReplicaUpdates = {
            type = "list",
            member = M.ReplicaAutoScalingUpdate,
        },
    },
}

M.UpdateTableReplicaAutoScalingOutput = {
    type = "structure",
    members = {
        TableAutoScalingDescription = M.TableAutoScalingDescription,
    },
}

M.TimeToLiveSpecification = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        AttributeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTimeToLiveInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimeToLiveSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimeToLiveSpecification }),
    },
}

M.UpdateTimeToLiveOutput = {
    type = "structure",
    members = {
        TimeToLiveSpecification = M.TimeToLiveSpecification,
    },
}

M.AttributeValue = {
    type = "union",
    members = {
        S = {
            type = "string",
        },
        N = {
            type = "string",
        },
        B = {
            type = "blob",
        },
        SS = {
            type = "list",
            member = { type = "string" },
        },
        NS = {
            type = "list",
            member = { type = "string" },
        },
        BS = {
            type = "list",
            member = { type = "blob" },
        },
        M = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        L = {
            type = "list",
            member = M.AttributeValue,
        },
        NULL = {
            type = "boolean",
        },
        BOOL = {
            type = "boolean",
        },
    },
}

M.AttributeValueUpdate = {
    type = "structure",
    members = {
        Value = M.AttributeValue,
        Action = {
            type = "string",
        },
    },
}

M.BatchStatementError = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        Item = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
    },
}

M.BatchStatementRequest = {
    type = "structure",
    members = {
        Statement = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "list",
            member = M.AttributeValue,
        },
        ConsistentRead = {
            type = "boolean",
        },
        ReturnValuesOnConditionCheckFailure = {
            type = "string",
        },
    },
}

M.CancellationReason = {
    type = "structure",
    members = {
        Item = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.Condition = {
    type = "structure",
    members = {
        AttributeValueList = {
            type = "list",
            member = M.AttributeValue,
        },
        ComparisonOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConditionalCheckFailedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        Item = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
    },
}

M.DeleteRequest = {
    type = "structure",
    members = {
        Key = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
            traits = {
                required = true,
            },
        },
    },
}

M.ExecuteStatementInput = {
    type = "structure",
    members = {
        Statement = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "list",
            member = M.AttributeValue,
        },
        ConsistentRead = {
            type = "boolean",
        },
        NextToken = {
            type = "string",
        },
        ReturnConsumedCapacity = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
        ReturnValuesOnConditionCheckFailure = {
            type = "string",
        },
    },
}

M.Get = {
    type = "structure",
    members = {
        Key = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProjectionExpression = {
            type = "string",
        },
        ExpressionAttributeNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetItemInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Key = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
            traits = {
                required = true,
            },
        },
        AttributesToGet = {
            type = "list",
            member = { type = "string" },
        },
        ConsistentRead = {
            type = "boolean",
        },
        ReturnConsumedCapacity = {
            type = "string",
        },
        ProjectionExpression = {
            type = "string",
        },
        ExpressionAttributeNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetItemOutput = {
    type = "structure",
    members = {
        Item = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ConsumedCapacity = M.ConsumedCapacity,
    },
}

M.ItemCollectionMetrics = {
    type = "structure",
    members = {
        ItemCollectionKey = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        SizeEstimateRangeGB = {
            type = "list",
            member = { type = "double" },
        },
    },
}

M.ItemResponse = {
    type = "structure",
    members = {
        Item = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
    },
}

M.ParameterizedStatement = {
    type = "structure",
    members = {
        Statement = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "list",
            member = M.AttributeValue,
        },
        ReturnValuesOnConditionCheckFailure = {
            type = "string",
        },
    },
}

M.PutRequest = {
    type = "structure",
    members = {
        Item = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
            traits = {
                required = true,
            },
        },
    },
}

M.KeysAndAttributes = {
    type = "structure",
    members = {
        Keys = {
            type = "list",
            member = { type = "map" },
            traits = {
                required = true,
            },
        },
        AttributesToGet = {
            type = "list",
            member = { type = "string" },
        },
        ConsistentRead = {
            type = "boolean",
        },
        ProjectionExpression = {
            type = "string",
        },
        ExpressionAttributeNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TransactGetItem = {
    type = "structure",
    members = {
        Get = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Get }),
    },
}

M.BatchExecuteStatementInput = {
    type = "structure",
    members = {
        Statements = {
            type = "list",
            member = M.BatchStatementRequest,
            traits = {
                required = true,
            },
        },
        ReturnConsumedCapacity = {
            type = "string",
        },
    },
}

M.ExecuteTransactionInput = {
    type = "structure",
    members = {
        TransactStatements = {
            type = "list",
            member = M.ParameterizedStatement,
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
        },
        ReturnConsumedCapacity = {
            type = "string",
        },
    },
}

M.ExecuteTransactionOutput = {
    type = "structure",
    members = {
        Responses = {
            type = "list",
            member = M.ItemResponse,
        },
        ConsumedCapacity = {
            type = "list",
            member = M.ConsumedCapacity,
        },
    },
}

M.TransactGetItemsOutput = {
    type = "structure",
    members = {
        ConsumedCapacity = {
            type = "list",
            member = M.ConsumedCapacity,
        },
        Responses = {
            type = "list",
            member = M.ItemResponse,
        },
    },
}

M.TransactionCanceledException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        CancellationReasons = {
            type = "list",
            member = M.CancellationReason,
        },
    },
}

M.BatchGetItemInput = {
    type = "structure",
    members = {
        RequestItems = {
            type = "map",
            key = { type = "string" },
            value = M.KeysAndAttributes,
            traits = {
                required = true,
            },
        },
        ReturnConsumedCapacity = {
            type = "string",
        },
    },
}

M.ExpectedAttributeValue = {
    type = "structure",
    members = {
        Value = M.AttributeValue,
        Exists = {
            type = "boolean",
        },
        ComparisonOperator = {
            type = "string",
        },
        AttributeValueList = {
            type = "list",
            member = M.AttributeValue,
        },
    },
}

M.TransactGetItemsInput = {
    type = "structure",
    members = {
        TransactItems = {
            type = "list",
            member = M.TransactGetItem,
            traits = {
                required = true,
            },
        },
        ReturnConsumedCapacity = {
            type = "string",
        },
    },
}

M.TransactWriteItemsOutput = {
    type = "structure",
    members = {
        ConsumedCapacity = {
            type = "list",
            member = M.ConsumedCapacity,
        },
        ItemCollectionMetrics = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.ConditionCheck = {
    type = "structure",
    members = {
        Key = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConditionExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExpressionAttributeNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ExpressionAttributeValues = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ReturnValuesOnConditionCheckFailure = {
            type = "string",
        },
    },
}

M.Delete = {
    type = "structure",
    members = {
        Key = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConditionExpression = {
            type = "string",
        },
        ExpressionAttributeNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ExpressionAttributeValues = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ReturnValuesOnConditionCheckFailure = {
            type = "string",
        },
    },
}

M.Put = {
    type = "structure",
    members = {
        Item = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConditionExpression = {
            type = "string",
        },
        ExpressionAttributeNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ExpressionAttributeValues = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ReturnValuesOnConditionCheckFailure = {
            type = "string",
        },
    },
}

M.Update = {
    type = "structure",
    members = {
        Key = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
            traits = {
                required = true,
            },
        },
        UpdateExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConditionExpression = {
            type = "string",
        },
        ExpressionAttributeNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ExpressionAttributeValues = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ReturnValuesOnConditionCheckFailure = {
            type = "string",
        },
    },
}

M.BatchStatementResponse = {
    type = "structure",
    members = {
        Error = M.BatchStatementError,
        TableName = {
            type = "string",
        },
        Item = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
    },
}

M.DeleteItemOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ConsumedCapacity = M.ConsumedCapacity,
        ItemCollectionMetrics = M.ItemCollectionMetrics,
    },
}

M.ExecuteStatementOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = { type = "map" },
        },
        NextToken = {
            type = "string",
        },
        ConsumedCapacity = M.ConsumedCapacity,
        LastEvaluatedKey = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
    },
}

M.PutItemOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ConsumedCapacity = M.ConsumedCapacity,
        ItemCollectionMetrics = M.ItemCollectionMetrics,
    },
}

M.QueryOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = { type = "map" },
        },
        Count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ScannedCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        LastEvaluatedKey = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ConsumedCapacity = M.ConsumedCapacity,
    },
}

M.ScanOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = { type = "map" },
        },
        Count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ScannedCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        LastEvaluatedKey = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ConsumedCapacity = M.ConsumedCapacity,
    },
}

M.UpdateItemOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ConsumedCapacity = M.ConsumedCapacity,
        ItemCollectionMetrics = M.ItemCollectionMetrics,
    },
}

M.WriteRequest = {
    type = "structure",
    members = {
        PutRequest = M.PutRequest,
        DeleteRequest = M.DeleteRequest,
    },
}

M.BatchExecuteStatementOutput = {
    type = "structure",
    members = {
        Responses = {
            type = "list",
            member = M.BatchStatementResponse,
        },
        ConsumedCapacity = {
            type = "list",
            member = M.ConsumedCapacity,
        },
    },
}

M.BatchGetItemOutput = {
    type = "structure",
    members = {
        Responses = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        UnprocessedKeys = {
            type = "map",
            key = { type = "string" },
            value = M.KeysAndAttributes,
        },
        ConsumedCapacity = {
            type = "list",
            member = M.ConsumedCapacity,
        },
    },
}

M.ScanInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexName = {
            type = "string",
        },
        AttributesToGet = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
        },
        Select = {
            type = "string",
        },
        ScanFilter = {
            type = "map",
            key = { type = "string" },
            value = M.Condition,
        },
        ConditionalOperator = {
            type = "string",
        },
        ExclusiveStartKey = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ReturnConsumedCapacity = {
            type = "string",
        },
        TotalSegments = {
            type = "integer",
        },
        Segment = {
            type = "integer",
        },
        ProjectionExpression = {
            type = "string",
        },
        FilterExpression = {
            type = "string",
        },
        ExpressionAttributeNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ExpressionAttributeValues = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ConsistentRead = {
            type = "boolean",
        },
    },
}

M.BatchWriteItemInput = {
    type = "structure",
    members = {
        RequestItems = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                required = true,
            },
        },
        ReturnConsumedCapacity = {
            type = "string",
        },
        ReturnItemCollectionMetrics = {
            type = "string",
        },
    },
}

M.DeleteItemInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Key = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
            traits = {
                required = true,
            },
        },
        Expected = {
            type = "map",
            key = { type = "string" },
            value = M.ExpectedAttributeValue,
        },
        ConditionalOperator = {
            type = "string",
        },
        ReturnValues = {
            type = "string",
        },
        ReturnConsumedCapacity = {
            type = "string",
        },
        ReturnItemCollectionMetrics = {
            type = "string",
        },
        ConditionExpression = {
            type = "string",
        },
        ExpressionAttributeNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ExpressionAttributeValues = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ReturnValuesOnConditionCheckFailure = {
            type = "string",
        },
    },
}

M.PutItemInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Item = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
            traits = {
                required = true,
            },
        },
        Expected = {
            type = "map",
            key = { type = "string" },
            value = M.ExpectedAttributeValue,
        },
        ReturnValues = {
            type = "string",
        },
        ReturnConsumedCapacity = {
            type = "string",
        },
        ReturnItemCollectionMetrics = {
            type = "string",
        },
        ConditionalOperator = {
            type = "string",
        },
        ConditionExpression = {
            type = "string",
        },
        ExpressionAttributeNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ExpressionAttributeValues = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ReturnValuesOnConditionCheckFailure = {
            type = "string",
        },
    },
}

M.QueryInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IndexName = {
            type = "string",
        },
        Select = {
            type = "string",
        },
        AttributesToGet = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
        },
        ConsistentRead = {
            type = "boolean",
        },
        KeyConditions = {
            type = "map",
            key = { type = "string" },
            value = M.Condition,
        },
        QueryFilter = {
            type = "map",
            key = { type = "string" },
            value = M.Condition,
        },
        ConditionalOperator = {
            type = "string",
        },
        ScanIndexForward = {
            type = "boolean",
        },
        ExclusiveStartKey = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ReturnConsumedCapacity = {
            type = "string",
        },
        ProjectionExpression = {
            type = "string",
        },
        FilterExpression = {
            type = "string",
        },
        KeyConditionExpression = {
            type = "string",
        },
        ExpressionAttributeNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ExpressionAttributeValues = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
    },
}

M.BatchWriteItemOutput = {
    type = "structure",
    members = {
        UnprocessedItems = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        ItemCollectionMetrics = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        ConsumedCapacity = {
            type = "list",
            member = M.ConsumedCapacity,
        },
    },
}

M.UpdateItemInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Key = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
            traits = {
                required = true,
            },
        },
        AttributeUpdates = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValueUpdate,
        },
        Expected = {
            type = "map",
            key = { type = "string" },
            value = M.ExpectedAttributeValue,
        },
        ConditionalOperator = {
            type = "string",
        },
        ReturnValues = {
            type = "string",
        },
        ReturnConsumedCapacity = {
            type = "string",
        },
        ReturnItemCollectionMetrics = {
            type = "string",
        },
        UpdateExpression = {
            type = "string",
        },
        ConditionExpression = {
            type = "string",
        },
        ExpressionAttributeNames = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ExpressionAttributeValues = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ReturnValuesOnConditionCheckFailure = {
            type = "string",
        },
    },
}

M.TransactWriteItem = {
    type = "structure",
    members = {
        ConditionCheck = M.ConditionCheck,
        Put = M.Put,
        Delete = M.Delete,
        Update = M.Update,
    },
}

M.TransactWriteItemsInput = {
    type = "structure",
    members = {
        TransactItems = {
            type = "list",
            member = M.TransactWriteItem,
            traits = {
                required = true,
            },
        },
        ReturnConsumedCapacity = {
            type = "string",
        },
        ReturnItemCollectionMetrics = {
            type = "string",
        },
        ClientRequestToken = {
            type = "string",
        },
    },
}

return M
