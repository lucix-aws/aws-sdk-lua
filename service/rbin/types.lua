local M = {}

M.UnlockDelayUnit = {
    DAYS = "DAYS",
}

M.ResourceType = {
    EBS_SNAPSHOT = "EBS_SNAPSHOT",
    EC2_IMAGE = "EC2_IMAGE",
    EBS_VOLUME = "EBS_VOLUME",
}

M.RetentionPeriodUnit = {
    DAYS = "DAYS",
}

M.LockState = {
    LOCKED = "locked",
    PENDING_UNLOCK = "pending_unlock",
    UNLOCKED = "unlocked",
}

M.RuleStatus = {
    PENDING = "pending",
    AVAILABLE = "available",
}

M.ServiceQuotaExceededExceptionReason = {
    SERVICE_QUOTA_EXCEEDED = "SERVICE_QUOTA_EXCEEDED",
}

M.ValidationExceptionReason = {
    INVALID_PAGE_TOKEN = "INVALID_PAGE_TOKEN",
    INVALID_PARAMETER_VALUE = "INVALID_PARAMETER_VALUE",
}

M.ConflictExceptionReason = {
    INVALID_RULE_STATE = "INVALID_RULE_STATE",
}

M.ResourceNotFoundExceptionReason = {
    RULE_NOT_FOUND = "RULE_NOT_FOUND",
}

return M
