local M = {}

M.ClientVersion = {
    FIVE_ONE = "5.1",
    FIVE_THREE = "5.3",
}

M.SubscriptionType = {
    PRODUCTION = "PRODUCTION",
}

M.CloudHsmObjectState = {
    READY = "READY",
    UPDATING = "UPDATING",
    DEGRADED = "DEGRADED",
}

M.HsmStatus = {
    PENDING = "PENDING",
    RUNNING = "RUNNING",
    UPDATING = "UPDATING",
    SUSPENDED = "SUSPENDED",
    TERMINATING = "TERMINATING",
    TERMINATED = "TERMINATED",
    DEGRADED = "DEGRADED",
}

return M
