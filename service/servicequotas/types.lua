local M = {}

M.AppliedLevelEnum = {
    ACCOUNT = "ACCOUNT",
    RESOURCE = "RESOURCE",
    ALL = "ALL",
}

M.ErrorCode = {
    DEPENDENCY_ACCESS_DENIED_ERROR = "DEPENDENCY_ACCESS_DENIED_ERROR",
    DEPENDENCY_THROTTLING_ERROR = "DEPENDENCY_THROTTLING_ERROR",
    DEPENDENCY_SERVICE_ERROR = "DEPENDENCY_SERVICE_ERROR",
    SERVICE_QUOTA_NOT_AVAILABLE_ERROR = "SERVICE_QUOTA_NOT_AVAILABLE_ERROR",
}

M.ServiceQuotaTemplateAssociationStatus = {
    ASSOCIATED = "ASSOCIATED",
    DISASSOCIATED = "DISASSOCIATED",
}

M.OptInLevel = {
    ACCOUNT = "ACCOUNT",
}

M.OptInStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.OptInType = {
    NotifyOnly = "NotifyOnly",
    NotifyAndAdjust = "NotifyAndAdjust",
}

M.PeriodUnit = {
    MICROSECOND = "MICROSECOND",
    MILLISECOND = "MILLISECOND",
    SECOND = "SECOND",
    MINUTE = "MINUTE",
    HOUR = "HOUR",
    DAY = "DAY",
    WEEK = "WEEK",
}

M.QuotaContextScope = {
    RESOURCE = "RESOURCE",
    ACCOUNT = "ACCOUNT",
}

M.ReportStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.RequestType = {
    AutomaticManagement = "AutomaticManagement",
}

M.RequestStatus = {
    PENDING = "PENDING",
    CASE_OPENED = "CASE_OPENED",
    APPROVED = "APPROVED",
    DENIED = "DENIED",
    CASE_CLOSED = "CASE_CLOSED",
    NOT_APPROVED = "NOT_APPROVED",
    INVALID_REQUEST = "INVALID_REQUEST",
}

return M
