local M = {}

M.DiscovererState = {
    STARTED = "STARTED",
    STOPPED = "STOPPED",
}

M.Type = {
    OpenApi3 = "OpenApi3",
    JSONSchemaDraft4 = "JSONSchemaDraft4",
}

M.CodeGenerationStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_COMPLETE = "CREATE_COMPLETE",
    CREATE_FAILED = "CREATE_FAILED",
}

return M
