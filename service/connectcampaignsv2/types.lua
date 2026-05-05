local M = {}

M.AgentAction = {
    DISCARD = "DISCARD",
}

M.CommunicationLimitTimeUnit = {
    DAY = "DAY",
}

M.InstanceLimitsHandling = {
    OPT_IN = "OPT_IN",
    OPT_OUT = "OPT_OUT",
}

M.DayOfWeek = {
    MONDAY = "MONDAY",
    TUESDAY = "TUESDAY",
    WEDNESDAY = "WEDNESDAY",
    THURSDAY = "THURSDAY",
    FRIDAY = "FRIDAY",
    SATURDAY = "SATURDAY",
    SUNDAY = "SUNDAY",
}

M.LocalTimeZoneDetectionType = {
    ZIP_CODE = "ZIP_CODE",
    AREA_CODE = "AREA_CODE",
}

M.ExternalCampaignType = {
    MANAGED = "MANAGED",
    JOURNEY = "JOURNEY",
}

M.ChannelSubtype = {
    TELEPHONY = "TELEPHONY",
    SMS = "SMS",
    EMAIL = "EMAIL",
    WHATSAPP = "WHATSAPP",
}

M.CommunicationLimitsConfigType = {
    ALL_CHANNEL_SUBTYPES = "ALL_CHANNEL_SUBTYPES",
}

M.CampaignState = {
    INITIALIZED = "Initialized",
    RUNNING = "Running",
    PAUSED = "Paused",
    STOPPED = "Stopped",
    FAILED = "Failed",
    COMPLETED = "Completed",
}

M.CommunicationTimeConfigType = {
    TELEPHONY = "TELEPHONY",
    SMS = "SMS",
    EMAIL = "EMAIL",
    WHATSAPP = "WHATSAPP",
}

M.CampaignDeletionPolicy = {
    RETAIN_ALL = "RETAIN_ALL",
    DELETE_ALL = "DELETE_ALL",
}

M.GetCampaignStateBatchFailureCode = {
    RESOURCE_NOT_FOUND = "ResourceNotFound",
    UNKNOWN_ERROR = "UnknownError",
}

M.EncryptionType = {
    KMS = "KMS",
}

M.InstanceOnboardingJobFailureCode = {
    EVENT_BRIDGE_ACCESS_DENIED = "EVENT_BRIDGE_ACCESS_DENIED",
    EVENT_BRIDGE_MANAGED_RULE_LIMIT_EXCEEDED = "EVENT_BRIDGE_MANAGED_RULE_LIMIT_EXCEEDED",
    IAM_ACCESS_DENIED = "IAM_ACCESS_DENIED",
    KMS_ACCESS_DENIED = "KMS_ACCESS_DENIED",
    KMS_KEY_NOT_FOUND = "KMS_KEY_NOT_FOUND",
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
}

M.InstanceOnboardingJobStatusCode = {
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.InstanceIdFilterOperator = {
    EQ = "Eq",
}

M.EventType = {
    CAMPAIGN_EMAIL = "Campaign-Email",
    CAMPAIGN_SMS = "Campaign-SMS",
    CAMPAIGN_TELEPHONY = "Campaign-Telephony",
    CAMPAIGN_ORCHESTRATION = "Campaign-Orchestration",
    CAMPAIGN_WHATS_APP = "Campaign-WhatsApp",
}

M.FailureCode = {
    INVALID_INPUT = "InvalidInput",
    REQUEST_THROTTLED = "RequestThrottled",
    UNKNOWN_ERROR = "UnknownError",
    BUFFER_LIMIT_EXCEEDED = "BufferLimitExceeded",
}

M.ProfileOutboundRequestFailureCode = {
    UNKNOWN_ERROR = "UnknownError",
    RESOURCE_NOT_FOUND = "ResourceNotFound",
    CONFLICT = "Conflict",
    REQUEST_THROTTLED = "RequestThrottled",
    INVALID_INPUT = "InvalidInput",
}

return M
