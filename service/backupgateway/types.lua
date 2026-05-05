local M = {}

M.GatewayType = {
    BACKUP_VM = "BACKUP_VM",
}

M.SyncMetadataStatus = {
    CREATED = "CREATED",
    RUNNING = "RUNNING",
    FAILED = "FAILED",
    PARTIALLY_FAILED = "PARTIALLY_FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.HypervisorState = {
    PENDING = "PENDING",
    ONLINE = "ONLINE",
    OFFLINE = "OFFLINE",
    ERROR = "ERROR",
}

return M
