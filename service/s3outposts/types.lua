local M = {}

M.EndpointAccessType = {
    PRIVATE = "Private",
    CUSTOMER_OWNED_IP = "CustomerOwnedIp",
}

M.EndpointStatus = {
    PENDING = "Pending",
    AVAILABLE = "Available",
    DELETING = "Deleting",
    CREATE_FAILED = "Create_Failed",
    DELETE_FAILED = "Delete_Failed",
}

return M
