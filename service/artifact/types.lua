local M = {}

M.AcceptanceType = {
    PASSTHROUGH = "PASSTHROUGH",
    EXPLICIT = "EXPLICIT",
}

M.NotificationSubscriptionStatus = {
    SUBSCRIBED = "SUBSCRIBED",
    NOT_SUBSCRIBED = "NOT_SUBSCRIBED",
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    INVALID_TOKEN = "invalidToken",
    OTHER = "other",
}

M.AgreementType = {
    CUSTOM = "CUSTOM",
    DEFAULT = "DEFAULT",
    MODIFIED = "MODIFIED",
}

M.CustomerAgreementState = {
    ACTIVE = "ACTIVE",
    CUSTOMER_TERMINATED = "CUSTOMER_TERMINATED",
    AWS_TERMINATED = "AWS_TERMINATED",
}

M.PublishedState = {
    PUBLISHED = "PUBLISHED",
    UNPUBLISHED = "UNPUBLISHED",
}

M.UploadState = {
    PROCESSING = "PROCESSING",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
    FAULT = "FAULT",
}

return M
