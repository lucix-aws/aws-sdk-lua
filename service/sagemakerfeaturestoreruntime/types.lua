local M = {}

M.ExpirationTimeResponse = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.DeletionMode = {
    SOFT_DELETE = "SoftDelete",
    HARD_DELETE = "HardDelete",
}

M.TargetStore = {
    ONLINE_STORE = "OnlineStore",
    OFFLINE_STORE = "OfflineStore",
}

M.TtlDurationUnit = {
    SECONDS = "Seconds",
    MINUTES = "Minutes",
    HOURS = "Hours",
    DAYS = "Days",
    WEEKS = "Weeks",
}

return M
