local M = {}

M.AccessType = {
    LAKEFORMATION = "LAKEFORMATION",
    S3 = "S3",
}

M.AwsLogSourceName = {
    ROUTE53 = "ROUTE53",
    VPC_FLOW = "VPC_FLOW",
    SH_FINDINGS = "SH_FINDINGS",
    CLOUD_TRAIL_MGMT = "CLOUD_TRAIL_MGMT",
    LAMBDA_EXECUTION = "LAMBDA_EXECUTION",
    S3_DATA = "S3_DATA",
    EKS_AUDIT = "EKS_AUDIT",
    WAF = "WAF",
}

M.DataLakeStatus = {
    INITIALIZED = "INITIALIZED",
    PENDING = "PENDING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.SubscriberStatus = {
    ACTIVE = "ACTIVE",
    DEACTIVATED = "DEACTIVATED",
    PENDING = "PENDING",
    READY = "READY",
}

M.HttpMethod = {
    POST = "POST",
    PUT = "PUT",
}

M.SourceCollectionStatus = {
    COLLECTING = "COLLECTING",
    MISCONFIGURED = "MISCONFIGURED",
    NOT_COLLECTING = "NOT_COLLECTING",
}

return M
