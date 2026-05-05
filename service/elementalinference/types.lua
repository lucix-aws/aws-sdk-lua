local M = {}

M.OutputStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.FeedStatus = {
    CREATING = "CREATING",
    AVAILABLE = "AVAILABLE",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DELETED = "DELETED",
    ARCHIVED = "ARCHIVED",
}

return M
