local M = {}

M.ApproximateCreationDateTimePrecision = {
    MILLISECOND = "MILLISECOND",
    MICROSECOND = "MICROSECOND",
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

M.BillingMode = {
    PROVISIONED = "PROVISIONED",
    PAY_PER_REQUEST = "PAY_PER_REQUEST",
}

M.KeyType = {
    HASH = "HASH",
    RANGE = "RANGE",
}

M.ProjectionType = {
    ALL = "ALL",
    KEYS_ONLY = "KEYS_ONLY",
    INCLUDE = "INCLUDE",
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

M.StreamViewType = {
    NEW_IMAGE = "NEW_IMAGE",
    OLD_IMAGE = "OLD_IMAGE",
    NEW_AND_OLD_IMAGES = "NEW_AND_OLD_IMAGES",
    KEYS_ONLY = "KEYS_ONLY",
}

M.TimeToLiveStatus = {
    ENABLING = "ENABLING",
    DISABLING = "DISABLING",
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
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

M.ReturnItemCollectionMetrics = {
    SIZE = "SIZE",
    NONE = "NONE",
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

M.GlobalTableStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
}

M.IndexStatus = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
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

M.WitnessStatus = {
    CREATING = "CREATING",
    DELETING = "DELETING",
    ACTIVE = "ACTIVE",
}

M.MultiRegionConsistency = {
    EVENTUAL = "EVENTUAL",
    STRONG = "STRONG",
}

M.ReturnValue = {
    NONE = "NONE",
    ALL_OLD = "ALL_OLD",
    UPDATED_OLD = "UPDATED_OLD",
    ALL_NEW = "ALL_NEW",
    UPDATED_NEW = "UPDATED_NEW",
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

M.S3SseAlgorithm = {
    AES256 = "AES256",
    KMS = "KMS",
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

M.DestinationStatus = {
    ENABLING = "ENABLING",
    ACTIVE = "ACTIVE",
    DISABLING = "DISABLING",
    DISABLED = "DISABLED",
    ENABLE_FAILED = "ENABLE_FAILED",
    UPDATING = "UPDATING",
}

M.Select = {
    ALL_ATTRIBUTES = "ALL_ATTRIBUTES",
    ALL_PROJECTED_ATTRIBUTES = "ALL_PROJECTED_ATTRIBUTES",
    SPECIFIC_ATTRIBUTES = "SPECIFIC_ATTRIBUTES",
    COUNT = "COUNT",
}

return M
