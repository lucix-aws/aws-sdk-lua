local M = {}

M.LifeCycleState = {
    available = "available",
    creating = "creating",
    deleting = "deleting",
    deleted = "deleted",
    error = "error",
    updating = "updating",
}

M.IpAddressType = {
    IPV4_ONLY = "IPV4_ONLY",
    IPV6_ONLY = "IPV6_ONLY",
    DUAL_STACK = "DUAL_STACK",
}

M.ImportTrigger = {
    ON_DIRECTORY_FIRST_ACCESS = "ON_DIRECTORY_FIRST_ACCESS",
    ON_FILE_ACCESS = "ON_FILE_ACCESS",
}

return M
