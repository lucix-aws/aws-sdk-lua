local M = {}

M.ChannelRole = {
    ASKER = "ASKER",
    EXPERT = "EXPERT",
    MODERATOR = "MODERATOR",
    SUPPORTREQUESTOR = "SUPPORTREQUESTOR",
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
}

M.Role = {
    EXPERT = "EXPERT",
    MODERATOR = "MODERATOR",
    ADMINISTRATOR = "ADMINISTRATOR",
    SUPPORTREQUESTOR = "SUPPORTREQUESTOR",
}

M.ChannelStatus = {
    CREATED = "CREATED",
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    DELETED = "DELETED",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
}

M.ConfigurationStatus = {
    CONFIGURED = "CONFIGURED",
    UNCONFIGURED = "UNCONFIGURED",
}

M.FeatureEnableParameter = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TierLevel = {
    BASIC = "BASIC",
    STANDARD = "STANDARD",
}

M.FeatureEnableStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    NOT_ALLOWED = "NOT_ALLOWED",
}

M.VanityDomainStatus = {
    PENDING = "PENDING",
    APPROVED = "APPROVED",
    UNAPPROVED = "UNAPPROVED",
}

return M
