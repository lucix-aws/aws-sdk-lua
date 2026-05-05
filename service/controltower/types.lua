local M = {}

M.BaselineOperationType = {
    ENABLE_BASELINE = "ENABLE_BASELINE",
    DISABLE_BASELINE = "DISABLE_BASELINE",
    UPDATE_ENABLED_BASELINE = "UPDATE_ENABLED_BASELINE",
    RESET_ENABLED_BASELINE = "RESET_ENABLED_BASELINE",
}

M.BaselineOperationStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.ControlOperationType = {
    ENABLE_CONTROL = "ENABLE_CONTROL",
    DISABLE_CONTROL = "DISABLE_CONTROL",
    UPDATE_ENABLED_CONTROL = "UPDATE_ENABLED_CONTROL",
    RESET_ENABLED_CONTROL = "RESET_ENABLED_CONTROL",
}

M.ControlOperationStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.EnabledBaselineDriftStatus = {
    IN_SYNC = "IN_SYNC",
    DRIFTED = "DRIFTED",
}

M.EnablementStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    UNDER_CHANGE = "UNDER_CHANGE",
}

M.DriftStatus = {
    DRIFTED = "DRIFTED",
    IN_SYNC = "IN_SYNC",
    NOT_CHECKING = "NOT_CHECKING",
    UNKNOWN = "UNKNOWN",
}

M.LandingZoneOperationType = {
    DELETE = "DELETE",
    CREATE = "CREATE",
    UPDATE = "UPDATE",
    RESET = "RESET",
}

M.LandingZoneOperationStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
}

M.RemediationType = {
    INHERITANCE_DRIFT = "INHERITANCE_DRIFT",
}

M.LandingZoneDriftStatus = {
    DRIFTED = "DRIFTED",
    IN_SYNC = "IN_SYNC",
}

M.LandingZoneStatus = {
    ACTIVE = "ACTIVE",
    PROCESSING = "PROCESSING",
    FAILED = "FAILED",
}

return M
