local M = {}

M.HumanLoopStatus = {
    IN_PROGRESS = "InProgress",
    FAILED = "Failed",
    COMPLETED = "Completed",
    STOPPED = "Stopped",
    STOPPING = "Stopping",
}

M.SortOrder = {
    ASCENDING = "Ascending",
    DESCENDING = "Descending",
}

M.ContentClassifier = {
    FREE_OF_PERSONALLY_IDENTIFIABLE_INFORMATION = "FreeOfPersonallyIdentifiableInformation",
    FREE_OF_ADULT_CONTENT = "FreeOfAdultContent",
}

return M
