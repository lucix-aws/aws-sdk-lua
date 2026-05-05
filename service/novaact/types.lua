local M = {}

M.ActStatus = {
    RUNNING = "RUNNING",
    PENDING_CLIENT_ACTION = "PENDING_CLIENT_ACTION",
    PENDING_HUMAN_ACTION = "PENDING_HUMAN_ACTION",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
}

M.InternalServerExceptionReason = {
    INVALID_MODEL_GENERATION = "InvalidModelGeneration",
    TOKEN_LIMIT_EXCEEDED = "RequestTokenLimitExceeded",
}

M.ValidationExceptionReason = {
    FIELD_VALIDATION_FAILED = "FieldValidationFailed",
    INVALID_STATUS = "InvalidStatus",
    GUARDRAIL_INTERVENED = "GuardrailIntervened",
}

M.SortOrder = {
    ASC = "Ascending",
    DESC = "Descending",
}

M.TraceLocationType = {
    S3 = "S3",
}

M.ModelStatus = {
    ACTIVE = "ACTIVE",
    LEGACY = "LEGACY",
    DEPRECATED = "DEPRECATED",
    PREVIEW = "PREVIEW",
}

M.WorkflowDefinitionStatus = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
}

M.WorkflowRunStatus = {
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
    DELETING = "DELETING",
}

return M
