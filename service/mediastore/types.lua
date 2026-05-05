local M = {}

M.MethodName = {
    PUT = "PUT",
    GET = "GET",
    DELETE = "DELETE",
    HEAD = "HEAD",
}

M.ContainerStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    DELETING = "DELETING",
}

M.ContainerLevelMetrics = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

return M
