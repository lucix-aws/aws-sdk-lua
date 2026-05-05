local M = {}

M.BucketAbacStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.RequestPayer = {
    requester = "requester",
}

M.RequestCharged = {
    requester = "requester",
}

M.BucketAccelerateStatus = {
    Enabled = "Enabled",
    Suspended = "Suspended",
}

M.Type = {
    CanonicalUser = "CanonicalUser",
    AmazonCustomerByEmail = "AmazonCustomerByEmail",
    Group = "Group",
}

M.Permission = {
    FULL_CONTROL = "FULL_CONTROL",
    WRITE = "WRITE",
    WRITE_ACP = "WRITE_ACP",
    READ = "READ",
    READ_ACP = "READ_ACP",
}

M.OwnerOverride = {
    Destination = "Destination",
}

M.ChecksumType = {
    COMPOSITE = "COMPOSITE",
    FULL_OBJECT = "FULL_OBJECT",
}

M.ServerSideEncryption = {
    AES256 = "AES256",
    aws_fsx = "aws:fsx",
    aws_kms = "aws:kms",
    aws_kms_dsse = "aws:kms:dsse",
}

M.ObjectCannedACL = {
    private = "private",
    public_read = "public-read",
    public_read_write = "public-read-write",
    authenticated_read = "authenticated-read",
    aws_exec_read = "aws-exec-read",
    bucket_owner_read = "bucket-owner-read",
    bucket_owner_full_control = "bucket-owner-full-control",
}

M.ChecksumAlgorithm = {
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

M.MetadataDirective = {
    COPY = "COPY",
    REPLACE = "REPLACE",
}

M.ObjectLockLegalHoldStatus = {
    ON = "ON",
    OFF = "OFF",
}

M.ObjectLockMode = {
    GOVERNANCE = "GOVERNANCE",
    COMPLIANCE = "COMPLIANCE",
}

M.StorageClass = {
    STANDARD = "STANDARD",
    REDUCED_REDUNDANCY = "REDUCED_REDUNDANCY",
    STANDARD_IA = "STANDARD_IA",
    ONEZONE_IA = "ONEZONE_IA",
    INTELLIGENT_TIERING = "INTELLIGENT_TIERING",
    GLACIER = "GLACIER",
    DEEP_ARCHIVE = "DEEP_ARCHIVE",
    OUTPOSTS = "OUTPOSTS",
    GLACIER_IR = "GLACIER_IR",
    SNOW = "SNOW",
    EXPRESS_ONEZONE = "EXPRESS_ONEZONE",
    FSX_OPENZFS = "FSX_OPENZFS",
    FSX_ONTAP = "FSX_ONTAP",
}

M.TaggingDirective = {
    COPY = "COPY",
    REPLACE = "REPLACE",
}

M.BucketCannedACL = {
    private = "private",
    public_read = "public-read",
    public_read_write = "public-read-write",
    authenticated_read = "authenticated-read",
}

M.BucketNamespace = {
    ACCOUNT_REGIONAL = "account-regional",
    GLOBAL = "global",
}

M.DataRedundancy = {
    SingleAvailabilityZone = "SingleAvailabilityZone",
    SingleLocalZone = "SingleLocalZone",
}

M.BucketType = {
    Directory = "Directory",
}

M.LocationType = {
    AvailabilityZone = "AvailabilityZone",
    LocalZone = "LocalZone",
}

M.BucketLocationConstraint = {
    af_south_1 = "af-south-1",
    ap_east_1 = "ap-east-1",
    ap_east_2 = "ap-east-2",
    ap_northeast_1 = "ap-northeast-1",
    ap_northeast_2 = "ap-northeast-2",
    ap_northeast_3 = "ap-northeast-3",
    ap_south_1 = "ap-south-1",
    ap_south_2 = "ap-south-2",
    ap_southeast_1 = "ap-southeast-1",
    ap_southeast_2 = "ap-southeast-2",
    ap_southeast_3 = "ap-southeast-3",
    ap_southeast_4 = "ap-southeast-4",
    ap_southeast_5 = "ap-southeast-5",
    ap_southeast_6 = "ap-southeast-6",
    ap_southeast_7 = "ap-southeast-7",
    ca_central_1 = "ca-central-1",
    ca_west_1 = "ca-west-1",
    cn_north_1 = "cn-north-1",
    cn_northwest_1 = "cn-northwest-1",
    EU = "EU",
    eu_central_1 = "eu-central-1",
    eu_central_2 = "eu-central-2",
    eu_north_1 = "eu-north-1",
    eu_south_1 = "eu-south-1",
    eu_south_2 = "eu-south-2",
    eu_west_1 = "eu-west-1",
    eu_west_2 = "eu-west-2",
    eu_west_3 = "eu-west-3",
    il_central_1 = "il-central-1",
    me_central_1 = "me-central-1",
    me_south_1 = "me-south-1",
    mx_central_1 = "mx-central-1",
    sa_east_1 = "sa-east-1",
    us_east_2 = "us-east-2",
    us_gov_east_1 = "us-gov-east-1",
    us_gov_west_1 = "us-gov-west-1",
    us_west_1 = "us-west-1",
    us_west_2 = "us-west-2",
}

M.ObjectOwnership = {
    BucketOwnerPreferred = "BucketOwnerPreferred",
    ObjectWriter = "ObjectWriter",
    BucketOwnerEnforced = "BucketOwnerEnforced",
}

M.InventoryConfigurationState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TableSseAlgorithm = {
    aws_kms = "aws:kms",
    AES256 = "AES256",
}

M.ExpirationState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.SessionMode = {
    ReadOnly = "ReadOnly",
    ReadWrite = "ReadWrite",
}

M.AnalyticsS3ExportFileFormat = {
    CSV = "CSV",
}

M.StorageClassAnalysisSchemaVersion = {
    V_1 = "V_1",
}

M.EncryptionType = {
    NONE = "NONE",
    SSE_C = "SSE-C",
}

M.IntelligentTieringStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.IntelligentTieringAccessTier = {
    ARCHIVE_ACCESS = "ARCHIVE_ACCESS",
    DEEP_ARCHIVE_ACCESS = "DEEP_ARCHIVE_ACCESS",
}

M.InventoryFormat = {
    CSV = "CSV",
    ORC = "ORC",
    Parquet = "Parquet",
}

M.InventoryIncludedObjectVersions = {
    All = "All",
    Current = "Current",
}

M.InventoryOptionalField = {
    Size = "Size",
    LastModifiedDate = "LastModifiedDate",
    StorageClass = "StorageClass",
    ETag = "ETag",
    IsMultipartUploaded = "IsMultipartUploaded",
    ReplicationStatus = "ReplicationStatus",
    EncryptionStatus = "EncryptionStatus",
    ObjectLockRetainUntilDate = "ObjectLockRetainUntilDate",
    ObjectLockMode = "ObjectLockMode",
    ObjectLockLegalHoldStatus = "ObjectLockLegalHoldStatus",
    IntelligentTieringAccessTier = "IntelligentTieringAccessTier",
    BucketKeyStatus = "BucketKeyStatus",
    ChecksumAlgorithm = "ChecksumAlgorithm",
    ObjectAccessControlList = "ObjectAccessControlList",
    ObjectOwner = "ObjectOwner",
    LifecycleExpirationDate = "LifecycleExpirationDate",
}

M.InventoryFrequency = {
    Daily = "Daily",
    Weekly = "Weekly",
}

M.TransitionStorageClass = {
    GLACIER = "GLACIER",
    STANDARD_IA = "STANDARD_IA",
    ONEZONE_IA = "ONEZONE_IA",
    INTELLIGENT_TIERING = "INTELLIGENT_TIERING",
    DEEP_ARCHIVE = "DEEP_ARCHIVE",
    GLACIER_IR = "GLACIER_IR",
}

M.ExpirationStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.TransitionDefaultMinimumObjectSize = {
    varies_by_storage_class = "varies_by_storage_class",
    all_storage_classes_128K = "all_storage_classes_128K",
}

M.BucketLogsPermission = {
    FULL_CONTROL = "FULL_CONTROL",
    READ = "READ",
    WRITE = "WRITE",
}

M.PartitionDateSource = {
    EventTime = "EventTime",
    DeliveryTime = "DeliveryTime",
}

M.S3TablesBucketType = {
    aws = "aws",
    customer = "customer",
}

M.Event = {
    s3_ReducedRedundancyLostObject = "s3:ReducedRedundancyLostObject",
    s3_ObjectCreated_ = "s3:ObjectCreated:*",
    s3_ObjectCreated_Put = "s3:ObjectCreated:Put",
    s3_ObjectCreated_Post = "s3:ObjectCreated:Post",
    s3_ObjectCreated_Copy = "s3:ObjectCreated:Copy",
    s3_ObjectCreated_CompleteMultipartUpload = "s3:ObjectCreated:CompleteMultipartUpload",
    s3_ObjectRemoved_ = "s3:ObjectRemoved:*",
    s3_ObjectRemoved_Delete = "s3:ObjectRemoved:Delete",
    s3_ObjectRemoved_DeleteMarkerCreated = "s3:ObjectRemoved:DeleteMarkerCreated",
    s3_ObjectRestore_ = "s3:ObjectRestore:*",
    s3_ObjectRestore_Post = "s3:ObjectRestore:Post",
    s3_ObjectRestore_Completed = "s3:ObjectRestore:Completed",
    s3_Replication_ = "s3:Replication:*",
    s3_Replication_OperationFailedReplication = "s3:Replication:OperationFailedReplication",
    s3_Replication_OperationNotTracked = "s3:Replication:OperationNotTracked",
    s3_Replication_OperationMissedThreshold = "s3:Replication:OperationMissedThreshold",
    s3_Replication_OperationReplicatedAfterThreshold = "s3:Replication:OperationReplicatedAfterThreshold",
    s3_ObjectRestore_Delete = "s3:ObjectRestore:Delete",
    s3_LifecycleTransition = "s3:LifecycleTransition",
    s3_IntelligentTiering = "s3:IntelligentTiering",
    s3_ObjectAcl_Put = "s3:ObjectAcl:Put",
    s3_LifecycleExpiration_ = "s3:LifecycleExpiration:*",
    s3_LifecycleExpiration_Delete = "s3:LifecycleExpiration:Delete",
    s3_LifecycleExpiration_DeleteMarkerCreated = "s3:LifecycleExpiration:DeleteMarkerCreated",
    s3_ObjectTagging_ = "s3:ObjectTagging:*",
    s3_ObjectTagging_Put = "s3:ObjectTagging:Put",
    s3_ObjectTagging_Delete = "s3:ObjectTagging:Delete",
}

M.FilterRuleName = {
    prefix = "prefix",
    suffix = "suffix",
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

M.Payer = {
    Requester = "Requester",
    BucketOwner = "BucketOwner",
}

M.MFADeleteStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.BucketVersioningStatus = {
    Enabled = "Enabled",
    Suspended = "Suspended",
}

M.Protocol = {
    http = "http",
    https = "https",
}

M.ChecksumMode = {
    ENABLED = "ENABLED",
}

M.ReplicationStatus = {
    COMPLETE = "COMPLETE",
    PENDING = "PENDING",
    FAILED = "FAILED",
    REPLICA = "REPLICA",
    COMPLETED = "COMPLETED",
}

M.ObjectAttributes = {
    ETAG = "ETag",
    CHECKSUM = "Checksum",
    OBJECT_PARTS = "ObjectParts",
    STORAGE_CLASS = "StorageClass",
    OBJECT_SIZE = "ObjectSize",
}

M.ObjectLockEnabled = {
    Enabled = "Enabled",
}

M.ObjectLockRetentionMode = {
    GOVERNANCE = "GOVERNANCE",
    COMPLIANCE = "COMPLIANCE",
}

M.ArchiveStatus = {
    ARCHIVE_ACCESS = "ARCHIVE_ACCESS",
    DEEP_ARCHIVE_ACCESS = "DEEP_ARCHIVE_ACCESS",
}

M.EncodingType = {
    url = "url",
}

M.OptionalObjectAttributes = {
    RESTORE_STATUS = "RestoreStatus",
}

M.ObjectStorageClass = {
    STANDARD = "STANDARD",
    REDUCED_REDUNDANCY = "REDUCED_REDUNDANCY",
    GLACIER = "GLACIER",
    STANDARD_IA = "STANDARD_IA",
    ONEZONE_IA = "ONEZONE_IA",
    INTELLIGENT_TIERING = "INTELLIGENT_TIERING",
    DEEP_ARCHIVE = "DEEP_ARCHIVE",
    OUTPOSTS = "OUTPOSTS",
    GLACIER_IR = "GLACIER_IR",
    SNOW = "SNOW",
    EXPRESS_ONEZONE = "EXPRESS_ONEZONE",
    FSX_OPENZFS = "FSX_OPENZFS",
    FSX_ONTAP = "FSX_ONTAP",
}

M.ObjectVersionStorageClass = {
    STANDARD = "STANDARD",
}

M.MFADelete = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.Tier = {
    Standard = "Standard",
    Bulk = "Bulk",
    Expedited = "Expedited",
}

M.ExpressionType = {
    SQL = "SQL",
}

M.CompressionType = {
    NONE = "NONE",
    GZIP = "GZIP",
    BZIP2 = "BZIP2",
}

M.FileHeaderInfo = {
    USE = "USE",
    IGNORE = "IGNORE",
    NONE = "NONE",
}

M.JSONType = {
    DOCUMENT = "DOCUMENT",
    LINES = "LINES",
}

M.QuoteFields = {
    ALWAYS = "ALWAYS",
    ASNEEDED = "ASNEEDED",
}

M.RestoreRequestType = {
    SELECT = "SELECT",
}

return M
