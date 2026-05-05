local M = {}

M.HandlerErrorCode = {
    NOT_UPDATABLE = "NotUpdatable",
    INVALID_REQUEST = "InvalidRequest",
    ACCESS_DENIED = "AccessDenied",
    UNAUTHORIZED_TAGGING_OPERATION = "UnauthorizedTaggingOperation",
    INVALID_CREDENTIALS = "InvalidCredentials",
    ALREADY_EXISTS = "AlreadyExists",
    NOT_FOUND = "NotFound",
    RESOURCE_CONFLICT = "ResourceConflict",
    THROTTLING = "Throttling",
    SERVICE_LIMIT_EXCEEDED = "ServiceLimitExceeded",
    NOT_STABILIZED = "NotStabilized",
    GENERAL_SERVICE_EXCEPTION = "GeneralServiceException",
    SERVICE_INTERNAL_ERROR = "ServiceInternalError",
    SERVICE_TIMEOUT = "ServiceTimeout",
    NETWORK_FAILURE = "NetworkFailure",
    INTERNAL_FAILURE = "InternalFailure",
}

M.Operation = {
    CREATE = "CREATE",
    DELETE = "DELETE",
    UPDATE = "UPDATE",
}

M.OperationStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    CANCEL_IN_PROGRESS = "CANCEL_IN_PROGRESS",
    CANCEL_COMPLETE = "CANCEL_COMPLETE",
}

return M
