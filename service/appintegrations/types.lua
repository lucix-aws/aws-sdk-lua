local M = {}

M.ContactHandlingScope = {
    CROSS_CONTACTS = "CROSS_CONTACTS",
    PER_CONTACT = "PER_CONTACT",
}

M.ApplicationType = {
    STANDARD = "STANDARD",
    SERVICE = "SERVICE",
    MCP_SERVER = "MCP_SERVER",
}

M.ExecutionMode = {
    ON_DEMAND = "ON_DEMAND",
    SCHEDULED = "SCHEDULED",
}

M.ExecutionStatus = {
    COMPLETED = "COMPLETED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
}

return M
