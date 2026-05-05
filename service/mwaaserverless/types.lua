local M = {}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
}

M.TaskInstanceStatus = {
    QUEUED = "QUEUED",
    FAILED = "FAILED",
    SCHEDULED = "SCHEDULED",
    RUNNING = "RUNNING",
    SUCCESS = "SUCCESS",
    UP_FOR_RESCHEDULE = "UP_FOR_RESCHEDULE",
    UP_FOR_RETRY = "UP_FOR_RETRY",
    UPSTREAM_FAILED = "UPSTREAM_FAILED",
    REMOVED = "REMOVED",
    RESTARTING = "RESTARTING",
    DEFERRED = "DEFERRED",
    NONE = "NONE",
    CANCELLED = "CANCELLED",
    TIMEOUT = "TIMEOUT",
}

M.EncryptionType = {
    AWS_MANAGED_KEY = "AWS_MANAGED_KEY",
    CUSTOMER_MANAGED_KEY = "CUSTOMER_MANAGED_KEY",
}

M.EngineVersion = {
    ONE = 1,
}

M.WorkflowStatus = {
    READY = "READY",
    DELETING = "DELETING",
}

M.WorkflowRunStatus = {
    STARTING = "STARTING",
    QUEUED = "QUEUED",
    RUNNING = "RUNNING",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    TIMEOUT = "TIMEOUT",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
}

M.RunType = {
    ON_DEMAND = "ON_DEMAND",
    SCHEDULED = "SCHEDULED",
}

return M
