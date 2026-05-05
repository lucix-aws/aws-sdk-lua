local M = {}

M.ErrorCode = {
    INTERNAL_SERVICE_EXCEPTION = "InternalServiceException",
    INVALID_PARAMETER_EXCEPTION = "InvalidParameterException",
}

M.GroupByAttribute = {
    TARGET_ID = "TARGET_ID",
    REGION = "REGION",
    RESOURCE_TYPE = "RESOURCE_TYPE",
}

M.TargetIdType = {
    ACCOUNT = "ACCOUNT",
    OU = "OU",
    ROOT = "ROOT",
}

return M
