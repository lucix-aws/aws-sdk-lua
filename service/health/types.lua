local M = {}

M.entityStatusCode = {
    IMPAIRED = "IMPAIRED",
    UNIMPAIRED = "UNIMPAIRED",
    UNKNOWN = "UNKNOWN",
    PENDING = "PENDING",
    RESOLVED = "RESOLVED",
}

M.eventScopeCode = {
    PUBLIC = "PUBLIC",
    ACCOUNT_SPECIFIC = "ACCOUNT_SPECIFIC",
    NONE = "NONE",
}

M.eventAggregateField = {
    EventTypeCategory = "eventTypeCategory",
}

M.EventActionability = {
    ACTION_REQUIRED = "ACTION_REQUIRED",
    ACTION_MAY_BE_REQUIRED = "ACTION_MAY_BE_REQUIRED",
    INFORMATIONAL = "INFORMATIONAL",
}

M.eventStatusCode = {
    OPEN = "open",
    CLOSED = "closed",
    UPCOMING = "upcoming",
}

M.eventTypeCategory = {
    ISSUE = "issue",
    ACCOUNT_NOTIFICATION = "accountNotification",
    SCHEDULED_CHANGE = "scheduledChange",
    INVESTIGATION = "investigation",
}

M.EventPersona = {
    OPERATIONS = "OPERATIONS",
    SECURITY = "SECURITY",
    BILLING = "BILLING",
}

M.EventTypeActionability = {
    ACTION_REQUIRED = "ACTION_REQUIRED",
    ACTION_MAY_BE_REQUIRED = "ACTION_MAY_BE_REQUIRED",
    INFORMATIONAL = "INFORMATIONAL",
}

M.EventTypePersona = {
    OPERATIONS = "OPERATIONS",
    SECURITY = "SECURITY",
    BILLING = "BILLING",
}

return M
