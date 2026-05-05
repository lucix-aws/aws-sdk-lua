local M = {}

M.AutomationJobStatus = {
    CREATED = "Created",
    IN_PROGRESS = "InProgress",
    SUCCESS = "Success",
    SERVICE_ERROR = "ServiceError",
    CLIENT_ERROR = "ClientError",
}

M.BlueprintStage = {
    DEVELOPMENT = "DEVELOPMENT",
    LIVE = "LIVE",
}

M.DataAutomationStage = {
    LIVE = "LIVE",
    DEVELOPMENT = "DEVELOPMENT",
}

M.CustomOutputStatus = {
    MATCH = "MATCH",
    NO_MATCH = "NO_MATCH",
}

M.SemanticModality = {
    DOCUMENT = "DOCUMENT",
    IMAGE = "IMAGE",
    AUDIO = "AUDIO",
    VIDEO = "VIDEO",
}

return M
