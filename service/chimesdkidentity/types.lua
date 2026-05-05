local M = {}

M.AllowMessages = {
    ALL = "ALL",
    NONE = "NONE",
}

M.StandardMessages = {
    AUTO = "AUTO",
    ALL = "ALL",
    MENTIONS = "MENTIONS",
    NONE = "NONE",
}

M.TargetedMessages = {
    ALL = "ALL",
    NONE = "NONE",
}

M.RespondsTo = {
    STANDARD_MESSAGES = "STANDARD_MESSAGES",
}

M.ExpirationCriterion = {
    CREATED_TIMESTAMP = "CREATED_TIMESTAMP",
}

M.EndpointStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.EndpointStatusReason = {
    INVALID_DEVICE_TOKEN = "INVALID_DEVICE_TOKEN",
    INVALID_PINPOINT_ARN = "INVALID_PINPOINT_ARN",
}

M.AppInstanceUserEndpointType = {
    APNS = "APNS",
    APNS_SANDBOX = "APNS_SANDBOX",
    GCM = "GCM",
}

M.ErrorCode = {
    BadRequest = "BadRequest",
    Conflict = "Conflict",
    Forbidden = "Forbidden",
    NotFound = "NotFound",
    PreconditionFailed = "PreconditionFailed",
    ResourceLimitExceeded = "ResourceLimitExceeded",
    ServiceFailure = "ServiceFailure",
    AccessDenied = "AccessDenied",
    ServiceUnavailable = "ServiceUnavailable",
    Throttled = "Throttled",
    Throttling = "Throttling",
    Unauthorized = "Unauthorized",
    Unprocessable = "Unprocessable",
    VoiceConnectorGroupAssociationsExist = "VoiceConnectorGroupAssociationsExist",
    PhoneNumberAssociationsExist = "PhoneNumberAssociationsExist",
}

return M
