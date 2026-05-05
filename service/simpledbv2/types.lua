local M = {}

M.ExportStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.S3SseAlgorithm = {
    AES256 = "AES256",
    KMS = "KMS",
}

return M
