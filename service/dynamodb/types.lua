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
            type = "number",
        },
        ScaleOutCooldown = {
            type = "number",
        },
        TargetValue = {
            type = "number",
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
        TargetTrackingScalingPolicyConfiguration = {
            type = "structure",
        },
    },
}

M.AutoScalingTargetTrackingScalingPolicyConfigurationUpdate = {
    type = "structure",
    members = {
        DisableScaleIn = {
            type = "boolean",
        },
        ScaleInCooldown = {
            type = "number",
        },
        ScaleOutCooldown = {
            type = "number",
        },
        TargetValue = {
            type = "number",
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
        TargetTrackingScalingPolicyConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AutoScalingSettingsDescription = {
    type = "structure",
    members = {
        MinimumUnits = {
            type = "number",
        },
        MaximumUnits = {
            type = "number",
        },
        AutoScalingDisabled = {
            type = "boolean",
        },
        AutoScalingRoleArn = {
            type = "string",
        },
        ScalingPolicies = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AutoScalingSettingsUpdate = {
    type = "structure",
    members = {
        MinimumUnits = {
            type = "number",
        },
        MaximumUnits = {
            type = "number",
        },
        AutoScalingDisabled = {
            type = "boolean",
        },
        AutoScalingRoleArn = {
            type = "string",
        },
        ScalingPolicyUpdate = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        MaxWriteRequestUnits = {
            type = "number",
        },
    },
}

M.ProvisionedThroughput = {
    type = "structure",
    members = {
        ReadCapacityUnits = {
            type = "number",
            traits = {
                required = true,
            },
        },
        WriteCapacityUnits = {
            type = "number",
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
            type = "number",
        },
        KeySchema = {
            type = "list",
            member_type = "structure",
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
        ProvisionedThroughput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OnDemandThroughput = {
            type = "structure",
        },
        ItemCount = {
            type = "number",
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
            member_type = "string",
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
            member_type = "structure",
        },
        Projection = {
            type = "structure",
        },
        ProvisionedThroughput = {
            type = "structure",
        },
        OnDemandThroughput = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Projection = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        GlobalSecondaryIndexes = {
            type = "list",
            member_type = "structure",
        },
        StreamDescription = {
            type = "structure",
        },
        TimeToLiveDescription = {
            type = "structure",
        },
        SSEDescription = {
            type = "structure",
        },
    },
}

M.BackupDescription = {
    type = "structure",
    members = {
        BackupDetails = {
            type = "structure",
        },
        SourceTableDetails = {
            type = "structure",
        },
        SourceTableFeatureDetails = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
        },
        WriteCapacityUnits = {
            type = "number",
        },
        CapacityUnits = {
            type = "number",
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
            type = "number",
        },
        ReadCapacityUnits = {
            type = "number",
        },
        WriteCapacityUnits = {
            type = "number",
        },
        Table = {
            type = "structure",
        },
        LocalSecondaryIndexes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        GlobalSecondaryIndexes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
        PointInTimeRecoveryDescription = {
            type = "structure",
        },
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
        BackupDetails = {
            type = "structure",
        },
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
            type = "number",
        },
        WriteUnitsPerSecond = {
            type = "number",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Projection = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ProvisionedThroughput = {
            type = "structure",
        },
        OnDemandThroughput = {
            type = "structure",
        },
        WarmThroughput = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ProvisionedThroughputOverride = {
    type = "structure",
    members = {
        ReadCapacityUnits = {
            type = "number",
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
            type = "number",
        },
        WriteUnitsPerSecond = {
            type = "number",
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
        ProvisionedThroughputOverride = {
            type = "structure",
        },
        OnDemandThroughputOverride = {
            type = "structure",
        },
        WarmThroughput = {
            type = "structure",
        },
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
            type = "number",
        },
        WriteUnitsPerSecond = {
            type = "number",
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
        ProvisionedThroughputOverride = {
            type = "structure",
        },
        OnDemandThroughputOverride = {
            type = "structure",
        },
        WarmThroughput = {
            type = "structure",
        },
        GlobalSecondaryIndexes = {
            type = "list",
            member_type = "structure",
        },
        ReplicaInaccessibleDateTime = {
            type = "timestamp",
        },
        ReplicaTableClassSummary = {
            type = "structure",
        },
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
            member_type = "structure",
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
        GlobalTableDescription = {
            type = "structure",
        },
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
        ProvisionedThroughputOverride = {
            type = "structure",
        },
        OnDemandThroughputOverride = {
            type = "structure",
        },
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
        ProvisionedThroughputOverride = {
            type = "structure",
        },
        OnDemandThroughputOverride = {
            type = "structure",
        },
        GlobalSecondaryIndexes = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Projection = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ProvisionedThroughput = {
            type = "structure",
        },
        OnDemandThroughput = {
            type = "structure",
        },
        WarmThroughput = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Projection = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeySchema = {
            type = "list",
            member_type = "structure",
        },
        LocalSecondaryIndexes = {
            type = "list",
            member_type = "structure",
        },
        GlobalSecondaryIndexes = {
            type = "list",
            member_type = "structure",
        },
        BillingMode = {
            type = "string",
        },
        ProvisionedThroughput = {
            type = "structure",
        },
        StreamSpecification = {
            type = "structure",
        },
        SSESpecification = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        TableClass = {
            type = "string",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        WarmThroughput = {
            type = "structure",
        },
        ResourcePolicy = {
            type = "string",
        },
        OnDemandThroughput = {
            type = "structure",
        },
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
            type = "number",
        },
        ReadCapacityUnits = {
            type = "number",
        },
        WriteCapacityUnits = {
            type = "number",
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
            member_type = "structure",
        },
        Projection = {
            type = "structure",
        },
        IndexStatus = {
            type = "string",
        },
        Backfilling = {
            type = "boolean",
        },
        ProvisionedThroughput = {
            type = "structure",
        },
        IndexSizeBytes = {
            type = "number",
        },
        ItemCount = {
            type = "number",
        },
        IndexArn = {
            type = "string",
        },
        OnDemandThroughput = {
            type = "structure",
        },
        WarmThroughput = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Projection = {
            type = "structure",
        },
        IndexSizeBytes = {
            type = "number",
        },
        ItemCount = {
            type = "number",
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
            member_type = "structure",
        },
        TableName = {
            type = "string",
        },
        KeySchema = {
            type = "list",
            member_type = "structure",
        },
        TableStatus = {
            type = "string",
        },
        CreationDateTime = {
            type = "timestamp",
        },
        ProvisionedThroughput = {
            type = "structure",
        },
        TableSizeBytes = {
            type = "number",
        },
        ItemCount = {
            type = "number",
        },
        TableArn = {
            type = "string",
        },
        TableId = {
            type = "string",
        },
        BillingModeSummary = {
            type = "structure",
        },
        LocalSecondaryIndexes = {
            type = "list",
            member_type = "structure",
        },
        GlobalSecondaryIndexes = {
            type = "list",
            member_type = "structure",
        },
        StreamSpecification = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        GlobalTableWitnesses = {
            type = "list",
            member_type = "structure",
        },
        GlobalTableSettingsReplicationMode = {
            type = "string",
        },
        RestoreSummary = {
            type = "structure",
        },
        SSEDescription = {
            type = "structure",
        },
        ArchivalSummary = {
            type = "structure",
        },
        TableClassSummary = {
            type = "structure",
        },
        DeletionProtectionEnabled = {
            type = "boolean",
        },
        OnDemandThroughput = {
            type = "structure",
        },
        WarmThroughput = {
            type = "structure",
        },
        MultiRegionConsistency = {
            type = "string",
        },
    },
}

M.CreateTableOutput = {
    type = "structure",
    members = {
        TableDescription = {
            type = "structure",
        },
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
            member_type = "string",
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
        BackupDescription = {
            type = "structure",
        },
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
        TableDescription = {
            type = "structure",
        },
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
        BackupDescription = {
            type = "structure",
        },
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
        ContinuousBackupsDescription = {
            type = "structure",
        },
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
            member_type = "string",
        },
        ContributorInsightsStatus = {
            type = "string",
        },
        LastUpdateDateTime = {
            type = "timestamp",
        },
        FailureException = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
            type = "number",
        },
        ItemCount = {
            type = "number",
        },
        ExportType = {
            type = "string",
        },
        IncrementalExportSpecification = {
            type = "structure",
        },
    },
}

M.DescribeExportOutput = {
    type = "structure",
    members = {
        ExportDescription = {
            type = "structure",
        },
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
        GlobalTableDescription = {
            type = "structure",
        },
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
            type = "number",
        },
        ProvisionedReadCapacityAutoScalingSettings = {
            type = "structure",
        },
        ProvisionedWriteCapacityUnits = {
            type = "number",
        },
        ProvisionedWriteCapacityAutoScalingSettings = {
            type = "structure",
        },
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
        ReplicaBillingModeSummary = {
            type = "structure",
        },
        ReplicaProvisionedReadCapacityUnits = {
            type = "number",
        },
        ReplicaProvisionedReadCapacityAutoScalingSettings = {
            type = "structure",
        },
        ReplicaProvisionedWriteCapacityUnits = {
            type = "number",
        },
        ReplicaProvisionedWriteCapacityAutoScalingSettings = {
            type = "structure",
        },
        ReplicaGlobalSecondaryIndexSettings = {
            type = "list",
            member_type = "structure",
        },
        ReplicaTableClassSummary = {
            type = "structure",
        },
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
            member_type = "structure",
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
        Csv = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        KeySchema = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        BillingMode = {
            type = "string",
        },
        ProvisionedThroughput = {
            type = "structure",
        },
        OnDemandThroughput = {
            type = "structure",
        },
        SSESpecification = {
            type = "structure",
        },
        GlobalSecondaryIndexes = {
            type = "list",
            member_type = "structure",
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
        S3BucketSource = {
            type = "structure",
        },
        ErrorCount = {
            type = "number",
        },
        CloudWatchLogGroupArn = {
            type = "string",
        },
        InputFormat = {
            type = "string",
        },
        InputFormatOptions = {
            type = "structure",
        },
        InputCompressionType = {
            type = "string",
        },
        TableCreationParameters = {
            type = "structure",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        ProcessedSizeBytes = {
            type = "number",
        },
        ProcessedItemCount = {
            type = "number",
        },
        ImportedItemCount = {
            type = "number",
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
        ImportTableDescription = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
            type = "number",
        },
        AccountMaxWriteCapacityUnits = {
            type = "number",
        },
        TableMaxReadCapacityUnits = {
            type = "number",
        },
        TableMaxWriteCapacityUnits = {
            type = "number",
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
        Table = {
            type = "structure",
        },
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
        ProvisionedReadCapacityAutoScalingSettings = {
            type = "structure",
        },
        ProvisionedWriteCapacityAutoScalingSettings = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ReplicaProvisionedReadCapacityAutoScalingSettings = {
            type = "structure",
        },
        ReplicaProvisionedWriteCapacityAutoScalingSettings = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.DescribeTableReplicaAutoScalingOutput = {
    type = "structure",
    members = {
        TableAutoScalingDescription = {
            type = "structure",
        },
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
        TimeToLiveDescription = {
            type = "structure",
        },
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
        EnableKinesisStreamingConfiguration = {
            type = "structure",
        },
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
        EnableKinesisStreamingConfiguration = {
            type = "structure",
        },
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
        EnableKinesisStreamingConfiguration = {
            type = "structure",
        },
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
        EnableKinesisStreamingConfiguration = {
            type = "structure",
        },
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
        IncrementalExportSpecification = {
            type = "structure",
        },
    },
}

M.ExportTableToPointInTimeOutput = {
    type = "structure",
    members = {
        ExportDescription = {
            type = "structure",
        },
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
        S3BucketSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        InputFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputFormatOptions = {
            type = "structure",
        },
        InputCompressionType = {
            type = "string",
        },
        TableCreationParameters = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportTableOutput = {
    type = "structure",
    members = {
        ImportTableDescription = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListBackupsInput = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
        },
        Limit = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListContributorInsightsOutput = {
    type = "structure",
    members = {
        ContributorInsightsSummaries = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.ListGlobalTablesOutput = {
    type = "structure",
    members = {
        GlobalTables = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        S3BucketSource = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListTablesOutput = {
    type = "structure",
    members = {
        TableNames = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        LocalSecondaryIndexOverride = {
            type = "list",
            member_type = "structure",
        },
        ProvisionedThroughputOverride = {
            type = "structure",
        },
        OnDemandThroughputOverride = {
            type = "structure",
        },
        SSESpecificationOverride = {
            type = "structure",
        },
    },
}

M.RestoreTableFromBackupOutput = {
    type = "structure",
    members = {
        TableDescription = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        LocalSecondaryIndexOverride = {
            type = "list",
            member_type = "structure",
        },
        ProvisionedThroughputOverride = {
            type = "structure",
        },
        OnDemandThroughputOverride = {
            type = "structure",
        },
        SSESpecificationOverride = {
            type = "structure",
        },
    },
}

M.RestoreTableToPointInTimeOutput = {
    type = "structure",
    members = {
        TableDescription = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
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
        PointInTimeRecoverySpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateContinuousBackupsOutput = {
    type = "structure",
    members = {
        ContinuousBackupsDescription = {
            type = "structure",
        },
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
        Create = {
            type = "structure",
        },
        Delete = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateGlobalTableOutput = {
    type = "structure",
    members = {
        GlobalTableDescription = {
            type = "structure",
        },
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
            type = "number",
        },
        ProvisionedWriteCapacityAutoScalingSettingsUpdate = {
            type = "structure",
        },
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
            type = "number",
        },
        ProvisionedReadCapacityAutoScalingSettingsUpdate = {
            type = "structure",
        },
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
            type = "number",
        },
        ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate = {
            type = "structure",
        },
        ReplicaGlobalSecondaryIndexSettingsUpdate = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate = {
            type = "structure",
        },
        GlobalTableGlobalSecondaryIndexSettingsUpdate = {
            type = "list",
            member_type = "structure",
        },
        ReplicaSettingsUpdate = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
        UpdateKinesisStreamingConfiguration = {
            type = "structure",
        },
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
        UpdateKinesisStreamingConfiguration = {
            type = "structure",
        },
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
        ProvisionedThroughput = {
            type = "structure",
        },
        OnDemandThroughput = {
            type = "structure",
        },
        WarmThroughput = {
            type = "structure",
        },
    },
}

M.GlobalSecondaryIndexUpdate = {
    type = "structure",
    members = {
        Update = {
            type = "structure",
        },
        Create = {
            type = "structure",
        },
        Delete = {
            type = "structure",
        },
    },
}

M.GlobalTableWitnessGroupUpdate = {
    type = "structure",
    members = {
        Create = {
            type = "structure",
        },
        Delete = {
            type = "structure",
        },
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
        ProvisionedThroughputOverride = {
            type = "structure",
        },
        OnDemandThroughputOverride = {
            type = "structure",
        },
        GlobalSecondaryIndexes = {
            type = "list",
            member_type = "structure",
        },
        TableClassOverride = {
            type = "string",
        },
    },
}

M.ReplicationGroupUpdate = {
    type = "structure",
    members = {
        Create = {
            type = "structure",
        },
        Update = {
            type = "structure",
        },
        Delete = {
            type = "structure",
        },
    },
}

M.UpdateTableInput = {
    type = "structure",
    members = {
        AttributeDefinitions = {
            type = "list",
            member_type = "structure",
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
        ProvisionedThroughput = {
            type = "structure",
        },
        GlobalSecondaryIndexUpdates = {
            type = "list",
            member_type = "structure",
        },
        StreamSpecification = {
            type = "structure",
        },
        SSESpecification = {
            type = "structure",
        },
        ReplicaUpdates = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        OnDemandThroughput = {
            type = "structure",
        },
        WarmThroughput = {
            type = "structure",
        },
        GlobalTableSettingsReplicationMode = {
            type = "string",
        },
    },
}

M.UpdateTableOutput = {
    type = "structure",
    members = {
        TableDescription = {
            type = "structure",
        },
    },
}

M.GlobalSecondaryIndexAutoScalingUpdate = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
        },
        ProvisionedWriteCapacityAutoScalingUpdate = {
            type = "structure",
        },
    },
}

M.ReplicaGlobalSecondaryIndexAutoScalingUpdate = {
    type = "structure",
    members = {
        IndexName = {
            type = "string",
        },
        ProvisionedReadCapacityAutoScalingUpdate = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        ReplicaProvisionedReadCapacityAutoScalingUpdate = {
            type = "structure",
        },
    },
}

M.UpdateTableReplicaAutoScalingInput = {
    type = "structure",
    members = {
        GlobalSecondaryIndexUpdates = {
            type = "list",
            member_type = "structure",
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisionedWriteCapacityAutoScalingUpdate = {
            type = "structure",
        },
        ReplicaUpdates = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateTableReplicaAutoScalingOutput = {
    type = "structure",
    members = {
        TableAutoScalingDescription = {
            type = "structure",
        },
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
        TimeToLiveSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTimeToLiveOutput = {
    type = "structure",
    members = {
        TimeToLiveSpecification = {
            type = "structure",
        },
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
            member_type = "string",
        },
        NS = {
            type = "list",
            member_type = "string",
        },
        BS = {
            type = "list",
            member_type = "blob",
        },
        M = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        L = {
            type = "list",
            member_type = "union",
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
        Value = {
            type = "union",
        },
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
            key_type = "string",
            value_type = "union",
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
            member_type = "union",
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
            key_type = "string",
            value_type = "union",
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
            member_type = "union",
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
            key_type = "string",
            value_type = "union",
        },
    },
}

M.DeleteRequest = {
    type = "structure",
    members = {
        Key = {
            type = "map",
            key_type = "string",
            value_type = "union",
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
            member_type = "union",
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
            type = "number",
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
            key_type = "string",
            value_type = "union",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "union",
            traits = {
                required = true,
            },
        },
        AttributesToGet = {
            type = "list",
            member_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetItemOutput = {
    type = "structure",
    members = {
        Item = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        ConsumedCapacity = {
            type = "structure",
        },
    },
}

M.ItemCollectionMetrics = {
    type = "structure",
    members = {
        ItemCollectionKey = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        SizeEstimateRangeGB = {
            type = "list",
            member_type = "number",
        },
    },
}

M.ItemResponse = {
    type = "structure",
    members = {
        Item = {
            type = "map",
            key_type = "string",
            value_type = "union",
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
            member_type = "union",
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
            key_type = "string",
            value_type = "union",
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
            member_type = "map",
            traits = {
                required = true,
            },
        },
        AttributesToGet = {
            type = "list",
            member_type = "string",
        },
        ConsistentRead = {
            type = "boolean",
        },
        ProjectionExpression = {
            type = "string",
        },
        ExpressionAttributeNames = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.TransactGetItem = {
    type = "structure",
    members = {
        Get = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchExecuteStatementInput = {
    type = "structure",
    members = {
        Statements = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        ConsumedCapacity = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TransactGetItemsOutput = {
    type = "structure",
    members = {
        ConsumedCapacity = {
            type = "list",
            member_type = "structure",
        },
        Responses = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.BatchGetItemInput = {
    type = "structure",
    members = {
        RequestItems = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
        Value = {
            type = "union",
        },
        Exists = {
            type = "boolean",
        },
        ComparisonOperator = {
            type = "string",
        },
        AttributeValueList = {
            type = "list",
            member_type = "union",
        },
    },
}

M.TransactGetItemsInput = {
    type = "structure",
    members = {
        TransactItems = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        ItemCollectionMetrics = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.ConditionCheck = {
    type = "structure",
    members = {
        Key = {
            type = "map",
            key_type = "string",
            value_type = "union",
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
            key_type = "string",
            value_type = "string",
        },
        ExpressionAttributeValues = {
            type = "map",
            key_type = "string",
            value_type = "union",
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
            key_type = "string",
            value_type = "union",
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
            key_type = "string",
            value_type = "string",
        },
        ExpressionAttributeValues = {
            type = "map",
            key_type = "string",
            value_type = "union",
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
            key_type = "string",
            value_type = "union",
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
            key_type = "string",
            value_type = "string",
        },
        ExpressionAttributeValues = {
            type = "map",
            key_type = "string",
            value_type = "union",
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
            key_type = "string",
            value_type = "union",
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
            key_type = "string",
            value_type = "string",
        },
        ExpressionAttributeValues = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        ReturnValuesOnConditionCheckFailure = {
            type = "string",
        },
    },
}

M.BatchStatementResponse = {
    type = "structure",
    members = {
        Error = {
            type = "structure",
        },
        TableName = {
            type = "string",
        },
        Item = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
    },
}

M.DeleteItemOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        ConsumedCapacity = {
            type = "structure",
        },
        ItemCollectionMetrics = {
            type = "structure",
        },
    },
}

M.ExecuteStatementOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "map",
        },
        NextToken = {
            type = "string",
        },
        ConsumedCapacity = {
            type = "structure",
        },
        LastEvaluatedKey = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
    },
}

M.PutItemOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        ConsumedCapacity = {
            type = "structure",
        },
        ItemCollectionMetrics = {
            type = "structure",
        },
    },
}

M.QueryOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "map",
        },
        Count = {
            type = "number",
        },
        ScannedCount = {
            type = "number",
        },
        LastEvaluatedKey = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        ConsumedCapacity = {
            type = "structure",
        },
    },
}

M.ScanOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "map",
        },
        Count = {
            type = "number",
        },
        ScannedCount = {
            type = "number",
        },
        LastEvaluatedKey = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        ConsumedCapacity = {
            type = "structure",
        },
    },
}

M.UpdateItemOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        ConsumedCapacity = {
            type = "structure",
        },
        ItemCollectionMetrics = {
            type = "structure",
        },
    },
}

M.WriteRequest = {
    type = "structure",
    members = {
        PutRequest = {
            type = "structure",
        },
        DeleteRequest = {
            type = "structure",
        },
    },
}

M.BatchExecuteStatementOutput = {
    type = "structure",
    members = {
        Responses = {
            type = "list",
            member_type = "structure",
        },
        ConsumedCapacity = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetItemOutput = {
    type = "structure",
    members = {
        Responses = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        UnprocessedKeys = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        ConsumedCapacity = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        Limit = {
            type = "number",
        },
        Select = {
            type = "string",
        },
        ScanFilter = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        ConditionalOperator = {
            type = "string",
        },
        ExclusiveStartKey = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        ReturnConsumedCapacity = {
            type = "string",
        },
        TotalSegments = {
            type = "number",
        },
        Segment = {
            type = "number",
        },
        ProjectionExpression = {
            type = "string",
        },
        FilterExpression = {
            type = "string",
        },
        ExpressionAttributeNames = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ExpressionAttributeValues = {
            type = "map",
            key_type = "string",
            value_type = "union",
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
            key_type = "string",
            value_type = "list",
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
            key_type = "string",
            value_type = "union",
            traits = {
                required = true,
            },
        },
        Expected = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        ExpressionAttributeValues = {
            type = "map",
            key_type = "string",
            value_type = "union",
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
            key_type = "string",
            value_type = "union",
            traits = {
                required = true,
            },
        },
        Expected = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        ExpressionAttributeValues = {
            type = "map",
            key_type = "string",
            value_type = "union",
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
            member_type = "string",
        },
        Limit = {
            type = "number",
        },
        ConsistentRead = {
            type = "boolean",
        },
        KeyConditions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        QueryFilter = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        ConditionalOperator = {
            type = "string",
        },
        ScanIndexForward = {
            type = "boolean",
        },
        ExclusiveStartKey = {
            type = "map",
            key_type = "string",
            value_type = "union",
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
            key_type = "string",
            value_type = "string",
        },
        ExpressionAttributeValues = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
    },
}

M.BatchWriteItemOutput = {
    type = "structure",
    members = {
        UnprocessedItems = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        ItemCollectionMetrics = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        ConsumedCapacity = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "union",
            traits = {
                required = true,
            },
        },
        AttributeUpdates = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        Expected = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        ExpressionAttributeValues = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        ReturnValuesOnConditionCheckFailure = {
            type = "string",
        },
    },
}

M.TransactWriteItem = {
    type = "structure",
    members = {
        ConditionCheck = {
            type = "structure",
        },
        Put = {
            type = "structure",
        },
        Delete = {
            type = "structure",
        },
        Update = {
            type = "structure",
        },
    },
}

M.TransactWriteItemsInput = {
    type = "structure",
    members = {
        TransactItems = {
            type = "list",
            member_type = "structure",
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
