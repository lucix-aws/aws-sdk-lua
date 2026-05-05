local M = {}

M.Type = {
    AmazonCustomerByEmail = "AmazonCustomerByEmail",
    CanonicalUser = "CanonicalUser",
    Group = "Group",
}

M.Permission = {
    FULL_CONTROL = "FULL_CONTROL",
    WRITE = "WRITE",
    WRITE_ACP = "WRITE_ACP",
    READ = "READ",
    READ_ACP = "READ_ACP",
}

M.ActionCode = {
    ArchiveRetrieval = "ArchiveRetrieval",
    InventoryRetrieval = "InventoryRetrieval",
    Select = "Select",
}

M.CannedACL = {
    Private = "private",
    PublicRead = "public-read",
    PublicReadWrite = "public-read-write",
    AwsExecRead = "aws-exec-read",
    AuthenticatedRead = "authenticated-read",
    BucketOwnerRead = "bucket-owner-read",
    BucketOwnerFullControl = "bucket-owner-full-control",
}

M.FileHeaderInfo = {
    Use = "USE",
    Ignore = "IGNORE",
    None = "NONE",
}

M.QuoteFields = {
    Always = "ALWAYS",
    AsNeeded = "ASNEEDED",
}

M.EncryptionType = {
    KMS = "aws:kms",
    S3 = "AES256",
}

M.StorageClass = {
    Standard = "STANDARD",
    ReducedRedundancy = "REDUCED_REDUNDANCY",
    StandardInfrequentAccess = "STANDARD_IA",
}

M.ExpressionType = {
    SQL = "SQL",
}

M.StatusCode = {
    InProgress = "InProgress",
    Succeeded = "Succeeded",
    Failed = "Failed",
}

return M
