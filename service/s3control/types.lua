local M = {}

M.OwnerOverride = {
    Destination = "Destination",
}

M.GranteeType = {
    DIRECTORY_USER = "DIRECTORY_USER",
    DIRECTORY_GROUP = "DIRECTORY_GROUP",
    IAM = "IAM",
}

M.Permission = {
    READ = "READ",
    WRITE = "WRITE",
    READWRITE = "READWRITE",
}

M.NetworkOrigin = {
    Internet = "Internet",
    VPC = "VPC",
}

M.AsyncOperationName = {
    CreateMultiRegionAccessPoint = "CreateMultiRegionAccessPoint",
    DeleteMultiRegionAccessPoint = "DeleteMultiRegionAccessPoint",
    PutMultiRegionAccessPointPolicy = "PutMultiRegionAccessPointPolicy",
}

M.S3PrefixType = {
    Object = "Object",
}

M.ScopePermission = {
    GetObject = "GetObject",
    GetObjectAttributes = "GetObjectAttributes",
    ListMultipartUploadParts = "ListMultipartUploadParts",
    ListBucket = "ListBucket",
    ListBucketMultipartUploads = "ListBucketMultipartUploads",
    PutObject = "PutObject",
    DeleteObject = "DeleteObject",
    AbortMultipartUpload = "AbortMultipartUpload",
}

M.ObjectLambdaAllowedFeature = {
    GetObjectRange = "GetObject-Range",
    GetObjectPartNumber = "GetObject-PartNumber",
    HeadObjectRange = "HeadObject-Range",
    HeadObjectPartNumber = "HeadObject-PartNumber",
}

M.ObjectLambdaTransformationConfigurationAction = {
    GetObject = "GetObject",
    HeadObject = "HeadObject",
    ListObjects = "ListObjects",
    ListObjectsV2 = "ListObjectsV2",
}

M.ObjectLambdaAccessPointAliasStatus = {
    PROVISIONING = "PROVISIONING",
    READY = "READY",
}

M.BucketCannedACL = {
    private = "private",
    public_read = "public-read",
    public_read_write = "public-read-write",
    authenticated_read = "authenticated-read",
}

M.BucketLocationConstraint = {
    EU = "EU",
    eu_west_1 = "eu-west-1",
    us_west_1 = "us-west-1",
    us_west_2 = "us-west-2",
    ap_south_1 = "ap-south-1",
    ap_southeast_1 = "ap-southeast-1",
    ap_southeast_2 = "ap-southeast-2",
    ap_northeast_1 = "ap-northeast-1",
    sa_east_1 = "sa-east-1",
    cn_north_1 = "cn-north-1",
    eu_central_1 = "eu-central-1",
}

M.JobManifestFieldName = {
    Ignore = "Ignore",
    Bucket = "Bucket",
    Key = "Key",
    VersionId = "VersionId",
}

M.JobManifestFormat = {
    S3BatchOperations_CSV_20180820 = "S3BatchOperations_CSV_20180820",
    S3InventoryReport_CSV_20161130 = "S3InventoryReport_CSV_20161130",
}

M.S3StorageClass = {
    STANDARD = "STANDARD",
    STANDARD_IA = "STANDARD_IA",
    ONEZONE_IA = "ONEZONE_IA",
    GLACIER = "GLACIER",
    INTELLIGENT_TIERING = "INTELLIGENT_TIERING",
    DEEP_ARCHIVE = "DEEP_ARCHIVE",
    GLACIER_IR = "GLACIER_IR",
}

M.ReplicationStatus = {
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    REPLICA = "REPLICA",
    NONE = "NONE",
}

M.GeneratedManifestFormat = {
    S3InventoryReport_CSV_20211130 = "S3InventoryReport_CSV_20211130",
}

M.ComputeObjectChecksumAlgorithm = {
    CRC32 = "CRC32",
    CRC32C = "CRC32C",
    CRC64NVME = "CRC64NVME",
    MD5 = "MD5",
    SHA1 = "SHA1",
    SHA256 = "SHA256",
    SHA512 = "SHA512",
    XXHASH64 = "XXHASH64",
    XXHASH3 = "XXHASH3",
    XXHASH128 = "XXHASH128",
}

M.ComputeObjectChecksumType = {
    FULL_OBJECT = "FULL_OBJECT",
    COMPOSITE = "COMPOSITE",
}

M.S3GlacierJobTier = {
    BULK = "BULK",
    STANDARD = "STANDARD",
}

M.S3GranteeTypeIdentifier = {
    CANONICAL = "id",
    EMAIL_ADDRESS = "emailAddress",
    GROUP = "uri",
}

M.S3Permission = {
    FULL_CONTROL = "FULL_CONTROL",
    READ = "READ",
    WRITE = "WRITE",
    READ_ACP = "READ_ACP",
    WRITE_ACP = "WRITE_ACP",
}

M.S3CannedAccessControlList = {
    PRIVATE = "private",
    PUBLIC_READ = "public-read",
    PUBLIC_READ_WRITE = "public-read-write",
    AWS_EXEC_READ = "aws-exec-read",
    AUTHENTICATED_READ = "authenticated-read",
    BUCKET_OWNER_READ = "bucket-owner-read",
    BUCKET_OWNER_FULL_CONTROL = "bucket-owner-full-control",
}

M.S3ChecksumAlgorithm = {
    CRC32 = "CRC32",
    CRC32C = "CRC32C",
    SHA1 = "SHA1",
    SHA256 = "SHA256",
    CRC64NVME = "CRC64NVME",
    SHA512 = "SHA512",
    MD5 = "MD5",
    XXHASH64 = "XXHASH64",
    XXHASH3 = "XXHASH3",
    XXHASH128 = "XXHASH128",
}

M.S3MetadataDirective = {
    COPY = "COPY",
    REPLACE = "REPLACE",
}

M.S3SSEAlgorithm = {
    AES256 = "AES256",
    KMS = "KMS",
}

M.S3ObjectLockLegalHoldStatus = {
    OFF = "OFF",
    ON = "ON",
}

M.S3ObjectLockMode = {
    COMPLIANCE = "COMPLIANCE",
    GOVERNANCE = "GOVERNANCE",
}

M.S3ObjectLockRetentionMode = {
    COMPLIANCE = "COMPLIANCE",
    GOVERNANCE = "GOVERNANCE",
}

M.JobReportFormat = {
    Report_CSV_20180820 = "Report_CSV_20180820",
}

M.JobReportScope = {
    AllTasks = "AllTasks",
    FailedTasksOnly = "FailedTasksOnly",
}

M.JobStatus = {
    Active = "Active",
    Cancelled = "Cancelled",
    Cancelling = "Cancelling",
    Complete = "Complete",
    Completing = "Completing",
    Failed = "Failed",
    Failing = "Failing",
    New = "New",
    Paused = "Paused",
    Pausing = "Pausing",
    Preparing = "Preparing",
    Ready = "Ready",
    Suspended = "Suspended",
}

M.TransitionStorageClass = {
    GLACIER = "GLACIER",
    STANDARD_IA = "STANDARD_IA",
    ONEZONE_IA = "ONEZONE_IA",
    INTELLIGENT_TIERING = "INTELLIGENT_TIERING",
    DEEP_ARCHIVE = "DEEP_ARCHIVE",
}

M.ExpirationStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.DeleteMarkerReplicationStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.MetricsStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.ReplicationTimeStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.ReplicationStorageClass = {
    STANDARD = "STANDARD",
    REDUCED_REDUNDANCY = "REDUCED_REDUNDANCY",
    STANDARD_IA = "STANDARD_IA",
    ONEZONE_IA = "ONEZONE_IA",
    INTELLIGENT_TIERING = "INTELLIGENT_TIERING",
    GLACIER = "GLACIER",
    DEEP_ARCHIVE = "DEEP_ARCHIVE",
    OUTPOSTS = "OUTPOSTS",
    GLACIER_IR = "GLACIER_IR",
}

M.ExistingObjectReplicationStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.ReplicaModificationsStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.SseKmsEncryptedObjectsStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.ReplicationRuleStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.MFADeleteStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.BucketVersioningStatus = {
    Enabled = "Enabled",
    Suspended = "Suspended",
}

M.Privilege = {
    Minimal = "Minimal",
    Default = "Default",
}

M.MultiRegionAccessPointStatus = {
    READY = "READY",
    INCONSISTENT_ACROSS_REGIONS = "INCONSISTENT_ACROSS_REGIONS",
    CREATING = "CREATING",
    PARTIALLY_CREATED = "PARTIALLY_CREATED",
    PARTIALLY_DELETED = "PARTIALLY_DELETED",
    DELETING = "DELETING",
}

M.Format = {
    CSV = "CSV",
    Parquet = "Parquet",
}

M.OutputSchemaVersion = {
    V_1 = "V_1",
}

M.OperationName = {
    LambdaInvoke = "LambdaInvoke",
    S3PutObjectCopy = "S3PutObjectCopy",
    S3PutObjectAcl = "S3PutObjectAcl",
    S3PutObjectTagging = "S3PutObjectTagging",
    S3DeleteObjectTagging = "S3DeleteObjectTagging",
    S3InitiateRestoreObject = "S3InitiateRestoreObject",
    S3PutObjectLegalHold = "S3PutObjectLegalHold",
    S3PutObjectRetention = "S3PutObjectRetention",
    S3ReplicateObject = "S3ReplicateObject",
    S3ComputeObjectChecksum = "S3ComputeObjectChecksum",
    S3UpdateObjectEncryption = "S3UpdateObjectEncryption",
}

M.MFADelete = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.RequestedJobStatus = {
    Cancelled = "Cancelled",
    Ready = "Ready",
}

return M
