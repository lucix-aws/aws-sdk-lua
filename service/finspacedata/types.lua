local M = {}

M.ApiAccess = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ApplicationPermission = {
    CreateDataset = "CreateDataset",
    ManageClusters = "ManageClusters",
    ManageUsersAndGroups = "ManageUsersAndGroups",
    ManageAttributeSets = "ManageAttributeSets",
    ViewAuditData = "ViewAuditData",
    AccessNotebooks = "AccessNotebooks",
    GetTemporaryCredentials = "GetTemporaryCredentials",
}

M.ChangeType = {
    REPLACE = "REPLACE",
    APPEND = "APPEND",
    MODIFY = "MODIFY",
}

M.DatasetKind = {
    TABULAR = "TABULAR",
    NON_TABULAR = "NON_TABULAR",
}

M.ColumnDataType = {
    STRING = "STRING",
    CHAR = "CHAR",
    INTEGER = "INTEGER",
    TINYINT = "TINYINT",
    SMALLINT = "SMALLINT",
    BIGINT = "BIGINT",
    FLOAT = "FLOAT",
    DOUBLE = "DOUBLE",
    DATE = "DATE",
    DATETIME = "DATETIME",
    BOOLEAN = "BOOLEAN",
    BINARY = "BINARY",
}

M.ExportFileFormat = {
    PARQUET = "PARQUET",
    DELIMITED_TEXT = "DELIMITED_TEXT",
}

M.UserType = {
    SUPER_USER = "SUPER_USER",
    APP_USER = "APP_USER",
}

M.ErrorCategory = {
    VALIDATION = "VALIDATION",
    SERVICE_QUOTA_EXCEEDED = "SERVICE_QUOTA_EXCEEDED",
    ACCESS_DENIED = "ACCESS_DENIED",
    RESOURCE_NOT_FOUND = "RESOURCE_NOT_FOUND",
    THROTTLING = "THROTTLING",
    INTERNAL_SERVICE_EXCEPTION = "INTERNAL_SERVICE_EXCEPTION",
    CANCELLED = "CANCELLED",
    USER_RECOVERABLE = "USER_RECOVERABLE",
}

M.IngestionStatus = {
    PENDING = "PENDING",
    FAILED = "FAILED",
    SUCCESS = "SUCCESS",
    RUNNING = "RUNNING",
    STOP_REQUESTED = "STOP_REQUESTED",
}

M.DatasetStatus = {
    PENDING = "PENDING",
    FAILED = "FAILED",
    SUCCESS = "SUCCESS",
    RUNNING = "RUNNING",
}

M.DataViewStatus = {
    RUNNING = "RUNNING",
    STARTING = "STARTING",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
    TIMEOUT = "TIMEOUT",
    SUCCESS = "SUCCESS",
    PENDING = "PENDING",
    FAILED_CLEANUP_FAILED = "FAILED_CLEANUP_FAILED",
}

M.PermissionGroupMembershipStatus = {
    ADDITION_IN_PROGRESS = "ADDITION_IN_PROGRESS",
    ADDITION_SUCCESS = "ADDITION_SUCCESS",
    REMOVAL_IN_PROGRESS = "REMOVAL_IN_PROGRESS",
}

M.UserStatus = {
    CREATING = "CREATING",
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.locationType = {
    INGESTION = "INGESTION",
    SAGEMAKER = "SAGEMAKER",
}

return M
