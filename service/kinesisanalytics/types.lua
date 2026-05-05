local M = {}

M.RecordFormatType = {
    JSON = "JSON",
    CSV = "CSV",
}

M.ApplicationStatus = {
    DELETING = "DELETING",
    STARTING = "STARTING",
    STOPPING = "STOPPING",
    READY = "READY",
    RUNNING = "RUNNING",
    UPDATING = "UPDATING",
}

M.InputStartingPosition = {
    NOW = "NOW",
    TRIM_HORIZON = "TRIM_HORIZON",
    LAST_STOPPED_POINT = "LAST_STOPPED_POINT",
}

return M
