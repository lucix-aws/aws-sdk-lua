local M = {}

M.AccessDeniedExceptionReason = {
    KMS_ACCESS_DENIED = "KMS_AccessDeniedException",
}

M.InvalidRequestExceptionReason = {
    KMS_KEY_NOT_FOUND = "KMS_NotFoundException",
    KMS_INVALID_KEY_USAGE = "KMS_InvalidKeyUsageException",
    KMS_INVALID_STATE = "KMS_InvalidStateException",
    KMS_DISABLED_KEY = "KMS_DisabledException",
}

return M
