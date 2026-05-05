local M = {}

M.FilterNameStringType = {
    description = "description",
    name = "name",
    tag_key = "tag-key",
    tag_value = "tag-value",
    primary_region = "primary-region",
    owning_service = "owning-service",
    all = "all",
}

M.StatusType = {
    InSync = "InSync",
    Failed = "Failed",
    InProgress = "InProgress",
}

M.SortByType = {
    created_date = "created-date",
    last_accessed_date = "last-accessed-date",
    last_changed_date = "last-changed-date",
    name = "name",
}

M.SortOrderType = {
    asc = "asc",
    desc = "desc",
}

return M
