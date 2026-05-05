local M = {}

M.BehaviorOnMXFailure = {
    UseDefaultValue = "UseDefaultValue",
    RejectMessage = "RejectMessage",
}

M.BounceType = {
    DoesNotExist = "DoesNotExist",
    MessageTooLarge = "MessageTooLarge",
    ExceededQuota = "ExceededQuota",
    ContentRejected = "ContentRejected",
    Undefined = "Undefined",
    TemporaryFailure = "TemporaryFailure",
}

M.DsnAction = {
    FAILED = "failed",
    DELAYED = "delayed",
    DELIVERED = "delivered",
    RELAYED = "relayed",
    EXPANDED = "expanded",
}

M.BulkEmailStatus = {
    Success = "Success",
    MessageRejected = "MessageRejected",
    MailFromDomainNotVerified = "MailFromDomainNotVerified",
    ConfigurationSetDoesNotExist = "ConfigurationSetDoesNotExist",
    TemplateDoesNotExist = "TemplateDoesNotExist",
    AccountSuspended = "AccountSuspended",
    AccountThrottled = "AccountThrottled",
    AccountDailyQuotaExceeded = "AccountDailyQuotaExceeded",
    InvalidSendingPoolName = "InvalidSendingPoolName",
    AccountSendingPaused = "AccountSendingPaused",
    ConfigurationSetSendingPaused = "ConfigurationSetSendingPaused",
    InvalidParameterValue = "InvalidParameterValue",
    TransientFailure = "TransientFailure",
    Failed = "Failed",
}

M.DimensionValueSource = {
    MESSAGE_TAG = "messageTag",
    EMAIL_HEADER = "emailHeader",
    LINK_TAG = "linkTag",
}

M.ConfigurationSetAttribute = {
    EVENT_DESTINATIONS = "eventDestinations",
    TRACKING_OPTIONS = "trackingOptions",
    DELIVERY_OPTIONS = "deliveryOptions",
    REPUTATION_OPTIONS = "reputationOptions",
}

M.EventType = {
    SEND = "send",
    REJECT = "reject",
    BOUNCE = "bounce",
    COMPLAINT = "complaint",
    DELIVERY = "delivery",
    OPEN = "open",
    CLICK = "click",
    RENDERING_FAILURE = "renderingFailure",
}

M.ReceiptFilterPolicy = {
    Block = "Block",
    Allow = "Allow",
}

M.InvocationType = {
    Event = "Event",
    RequestResponse = "RequestResponse",
}

M.SNSActionEncoding = {
    UTF8 = "UTF-8",
    Base64 = "Base64",
}

M.StopScope = {
    RULE_SET = "RuleSet",
}

M.TlsPolicy = {
    Require = "Require",
    Optional = "Optional",
}

M.CustomMailFromStatus = {
    Pending = "Pending",
    Success = "Success",
    Failed = "Failed",
    TemporaryFailure = "TemporaryFailure",
}

M.VerificationStatus = {
    Pending = "Pending",
    Success = "Success",
    Failed = "Failed",
    TemporaryFailure = "TemporaryFailure",
    NotStarted = "NotStarted",
}

M.IdentityType = {
    EmailAddress = "EmailAddress",
    Domain = "Domain",
}

M.NotificationType = {
    Bounce = "Bounce",
    Complaint = "Complaint",
    Delivery = "Delivery",
}

return M
