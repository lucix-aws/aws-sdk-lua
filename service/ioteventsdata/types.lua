local M = {}

M.CustomerActionName = {
    SNOOZE = "SNOOZE",
    ENABLE = "ENABLE",
    DISABLE = "DISABLE",
    ACKNOWLEDGE = "ACKNOWLEDGE",
    RESET = "RESET",
}

M.ComparisonOperator = {
    GREATER = "GREATER",
    GREATER_OR_EQUAL = "GREATER_OR_EQUAL",
    LESS = "LESS",
    LESS_OR_EQUAL = "LESS_OR_EQUAL",
    EQUAL = "EQUAL",
    NOT_EQUAL = "NOT_EQUAL",
}

M.AlarmStateName = {
    DISABLED = "DISABLED",
    NORMAL = "NORMAL",
    ACTIVE = "ACTIVE",
    ACKNOWLEDGED = "ACKNOWLEDGED",
    SNOOZE_DISABLED = "SNOOZE_DISABLED",
    LATCHED = "LATCHED",
}

M.EventType = {
    STATE_CHANGE = "STATE_CHANGE",
}

M.TriggerType = {
    SNOOZE_TIMEOUT = "SNOOZE_TIMEOUT",
}

M.ErrorCode = {
    ResourceNotFoundException = "ResourceNotFoundException",
    InvalidRequestException = "InvalidRequestException",
    InternalFailureException = "InternalFailureException",
    ServiceUnavailableException = "ServiceUnavailableException",
    ThrottlingException = "ThrottlingException",
}

return M
