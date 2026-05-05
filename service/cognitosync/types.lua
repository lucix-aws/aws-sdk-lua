local M = {}

M.BulkPublishStatus = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.StreamingStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Platform = {
    APNS = "APNS",
    APNS_SANDBOX = "APNS_SANDBOX",
    GCM = "GCM",
    ADM = "ADM",
}

M.Operation = {
    replace = "replace",
    remove = "remove",
}

return M
