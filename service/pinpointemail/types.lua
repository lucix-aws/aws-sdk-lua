local M = {}

M.TlsPolicy = {
    REQUIRE = "REQUIRE",
    OPTIONAL = "OPTIONAL",
}

M.DimensionValueSource = {
    MESSAGE_TAG = "MESSAGE_TAG",
    EMAIL_HEADER = "EMAIL_HEADER",
    LINK_TAG = "LINK_TAG",
}

M.EventType = {
    SEND = "SEND",
    REJECT = "REJECT",
    BOUNCE = "BOUNCE",
    COMPLAINT = "COMPLAINT",
    DELIVERY = "DELIVERY",
    OPEN = "OPEN",
    CLICK = "CLICK",
    RENDERING_FAILURE = "RENDERING_FAILURE",
}

M.DeliverabilityTestStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
}

M.DkimStatus = {
    PENDING = "PENDING",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    TEMPORARY_FAILURE = "TEMPORARY_FAILURE",
    NOT_STARTED = "NOT_STARTED",
}

M.IdentityType = {
    EMAIL_ADDRESS = "EMAIL_ADDRESS",
    DOMAIN = "DOMAIN",
    MANAGED_DOMAIN = "MANAGED_DOMAIN",
}

M.WarmupStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    DONE = "DONE",
}

M.DeliverabilityDashboardAccountStatus = {
    ACTIVE = "ACTIVE",
    PENDING_EXPIRATION = "PENDING_EXPIRATION",
    DISABLED = "DISABLED",
}

M.BehaviorOnMxFailure = {
    USE_DEFAULT_VALUE = "USE_DEFAULT_VALUE",
    REJECT_MESSAGE = "REJECT_MESSAGE",
}

M.MailFromDomainStatus = {
    PENDING = "PENDING",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    TEMPORARY_FAILURE = "TEMPORARY_FAILURE",
}

return M
