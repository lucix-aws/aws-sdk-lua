local record AbortMultipartUploadInput
    Bucket: string
    Key: string
    UploadId: string
    RequestPayer: string
    ExpectedBucketOwner: string
    IfMatchInitiatedTime: number
end

local record AbortMultipartUploadOutput
    RequestCharged: string
end

local record CompleteMultipartUploadInput
    Bucket: string
    Key: string
    MultipartUpload: CompletedMultipartUpload
    UploadId: string
    ChecksumCRC32: string
    ChecksumCRC32C: string
    ChecksumCRC64NVME: string
    ChecksumSHA1: string
    ChecksumSHA256: string
    ChecksumSHA512: string
    ChecksumMD5: string
    ChecksumXXHASH64: string
    ChecksumXXHASH3: string
    ChecksumXXHASH128: string
    ChecksumType: string
    MpuObjectSize: number
    RequestPayer: string
    ExpectedBucketOwner: string
    IfMatch: string
    IfNoneMatch: string
    SSECustomerAlgorithm: string
    SSECustomerKey: string
    SSECustomerKeyMD5: string
end

local record CompleteMultipartUploadOutput
    Location: string
    Bucket: string
    Key: string
    Expiration: string
    ETag: string
    ChecksumCRC32: string
    ChecksumCRC32C: string
    ChecksumCRC64NVME: string
    ChecksumSHA1: string
    ChecksumSHA256: string
    ChecksumSHA512: string
    ChecksumMD5: string
    ChecksumXXHASH64: string
    ChecksumXXHASH3: string
    ChecksumXXHASH128: string
    ChecksumType: string
    ServerSideEncryption: string
    VersionId: string
    SSEKMSKeyId: string
    BucketKeyEnabled: boolean
    RequestCharged: string
end

local record CopyObjectInput
    ACL: string
    Bucket: string
    CacheControl: string
    ChecksumAlgorithm: string
    ContentDisposition: string
    ContentEncoding: string
    ContentLanguage: string
    ContentType: string
    CopySource: string
    CopySourceIfMatch: string
    CopySourceIfModifiedSince: number
    CopySourceIfNoneMatch: string
    CopySourceIfUnmodifiedSince: number
    Expires: string
    GrantFullControl: string
    GrantRead: string
    GrantReadACP: string
    GrantWriteACP: string
    IfMatch: string
    IfNoneMatch: string
    Key: string
    Metadata: {string : string}
    MetadataDirective: string
    TaggingDirective: string
    ServerSideEncryption: string
    StorageClass: string
    WebsiteRedirectLocation: string
    SSECustomerAlgorithm: string
    SSECustomerKey: string
    SSECustomerKeyMD5: string
    SSEKMSKeyId: string
    SSEKMSEncryptionContext: string
    BucketKeyEnabled: boolean
    CopySourceSSECustomerAlgorithm: string
    CopySourceSSECustomerKey: string
    CopySourceSSECustomerKeyMD5: string
    RequestPayer: string
    Tagging: string
    ObjectLockMode: string
    ObjectLockRetainUntilDate: number
    ObjectLockLegalHoldStatus: string
    ExpectedBucketOwner: string
    ExpectedSourceBucketOwner: string
end

local record CopyObjectOutput
    CopyObjectResult: CopyObjectResult
    Expiration: string
    CopySourceVersionId: string
    VersionId: string
    ServerSideEncryption: string
    SSECustomerAlgorithm: string
    SSECustomerKeyMD5: string
    SSEKMSKeyId: string
    SSEKMSEncryptionContext: string
    BucketKeyEnabled: boolean
    RequestCharged: string
end

local record CreateBucketInput
    ACL: string
    Bucket: string
    CreateBucketConfiguration: CreateBucketConfiguration
    GrantFullControl: string
    GrantRead: string
    GrantReadACP: string
    GrantWrite: string
    GrantWriteACP: string
    ObjectLockEnabledForBucket: boolean
    ObjectOwnership: string
    BucketNamespace: string
end

local record CreateBucketOutput
    Location: string
    BucketArn: string
end

local record CreateBucketMetadataConfigurationInput
    Bucket: string
    ContentMD5: string
    ChecksumAlgorithm: string
    MetadataConfiguration: MetadataConfiguration
    ExpectedBucketOwner: string
end

local record CreateBucketMetadataConfigurationOutput
end

local record CreateBucketMetadataTableConfigurationInput
    Bucket: string
    ContentMD5: string
    ChecksumAlgorithm: string
    MetadataTableConfiguration: MetadataTableConfiguration
    ExpectedBucketOwner: string
end

local record CreateBucketMetadataTableConfigurationOutput
end

local record CreateMultipartUploadInput
    ACL: string
    Bucket: string
    CacheControl: string
    ContentDisposition: string
    ContentEncoding: string
    ContentLanguage: string
    ContentType: string
    Expires: string
    GrantFullControl: string
    GrantRead: string
    GrantReadACP: string
    GrantWriteACP: string
    Key: string
    Metadata: {string : string}
    ServerSideEncryption: string
    StorageClass: string
    WebsiteRedirectLocation: string
    SSECustomerAlgorithm: string
    SSECustomerKey: string
    SSECustomerKeyMD5: string
    SSEKMSKeyId: string
    SSEKMSEncryptionContext: string
    BucketKeyEnabled: boolean
    RequestPayer: string
    Tagging: string
    ObjectLockMode: string
    ObjectLockRetainUntilDate: number
    ObjectLockLegalHoldStatus: string
    ExpectedBucketOwner: string
    ChecksumAlgorithm: string
    ChecksumType: string
end

local record CreateMultipartUploadOutput
    AbortDate: number
    AbortRuleId: string
    Bucket: string
    Key: string
    UploadId: string
    ServerSideEncryption: string
    SSECustomerAlgorithm: string
    SSECustomerKeyMD5: string
    SSEKMSKeyId: string
    SSEKMSEncryptionContext: string
    BucketKeyEnabled: boolean
    RequestCharged: string
    ChecksumAlgorithm: string
    ChecksumType: string
end

local record CreateSessionInput
    SessionMode: string
    Bucket: string
    ServerSideEncryption: string
    SSEKMSKeyId: string
    SSEKMSEncryptionContext: string
    BucketKeyEnabled: boolean
end

local record CreateSessionOutput
    ServerSideEncryption: string
    SSEKMSKeyId: string
    SSEKMSEncryptionContext: string
    BucketKeyEnabled: boolean
    Credentials: SessionCredentials
end

local record DeleteBucketInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record DeleteBucketOutput
end

local record DeleteBucketAnalyticsConfigurationInput
    Bucket: string
    Id: string
    ExpectedBucketOwner: string
end

local record DeleteBucketAnalyticsConfigurationOutput
end

local record DeleteBucketCorsInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record DeleteBucketCorsOutput
end

local record DeleteBucketEncryptionInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record DeleteBucketEncryptionOutput
end

local record DeleteBucketIntelligentTieringConfigurationInput
    Bucket: string
    Id: string
    ExpectedBucketOwner: string
end

local record DeleteBucketIntelligentTieringConfigurationOutput
end

local record DeleteBucketInventoryConfigurationInput
    Bucket: string
    Id: string
    ExpectedBucketOwner: string
end

local record DeleteBucketInventoryConfigurationOutput
end

local record DeleteBucketLifecycleInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record DeleteBucketLifecycleOutput
end

local record DeleteBucketMetadataConfigurationInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record DeleteBucketMetadataConfigurationOutput
end

local record DeleteBucketMetadataTableConfigurationInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record DeleteBucketMetadataTableConfigurationOutput
end

local record DeleteBucketMetricsConfigurationInput
    Bucket: string
    Id: string
    ExpectedBucketOwner: string
end

local record DeleteBucketMetricsConfigurationOutput
end

local record DeleteBucketOwnershipControlsInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record DeleteBucketOwnershipControlsOutput
end

local record DeleteBucketPolicyInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record DeleteBucketPolicyOutput
end

local record DeleteBucketReplicationInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record DeleteBucketReplicationOutput
end

local record DeleteBucketTaggingInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record DeleteBucketTaggingOutput
end

local record DeleteBucketWebsiteInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record DeleteBucketWebsiteOutput
end

local record DeleteObjectInput
    Bucket: string
    Key: string
    MFA: string
    VersionId: string
    RequestPayer: string
    BypassGovernanceRetention: boolean
    ExpectedBucketOwner: string
    IfMatch: string
    IfMatchLastModifiedTime: number
    IfMatchSize: number
end

local record DeleteObjectOutput
    DeleteMarker: boolean
    VersionId: string
    RequestCharged: string
end

local record DeleteObjectsInput
    Bucket: string
    Delete: Delete
    MFA: string
    RequestPayer: string
    BypassGovernanceRetention: boolean
    ExpectedBucketOwner: string
    ChecksumAlgorithm: string
end

local record DeleteObjectsOutput
    Deleted: {DeletedObject}
    RequestCharged: string
    Errors: {Error}
end

local record DeleteObjectTaggingInput
    Bucket: string
    Key: string
    VersionId: string
    ExpectedBucketOwner: string
end

local record DeleteObjectTaggingOutput
    VersionId: string
end

local record DeletePublicAccessBlockInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record DeletePublicAccessBlockOutput
end

local record GetBucketAbacInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetBucketAbacOutput
    AbacStatus: AbacStatus
end

local record GetBucketAccelerateConfigurationInput
    Bucket: string
    ExpectedBucketOwner: string
    RequestPayer: string
end

local record GetBucketAccelerateConfigurationOutput
    Status: string
    RequestCharged: string
end

local record GetBucketAclInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetBucketAclOutput
    Owner: Owner
    Grants: {Grant}
end

local record GetBucketAnalyticsConfigurationInput
    Bucket: string
    Id: string
    ExpectedBucketOwner: string
end

local record GetBucketAnalyticsConfigurationOutput
    AnalyticsConfiguration: AnalyticsConfiguration
end

local record GetBucketCorsInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetBucketCorsOutput
    CORSRules: {CORSRule}
end

local record GetBucketEncryptionInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetBucketEncryptionOutput
    ServerSideEncryptionConfiguration: ServerSideEncryptionConfiguration
end

local record GetBucketIntelligentTieringConfigurationInput
    Bucket: string
    Id: string
    ExpectedBucketOwner: string
end

local record GetBucketIntelligentTieringConfigurationOutput
    IntelligentTieringConfiguration: IntelligentTieringConfiguration
end

local record GetBucketInventoryConfigurationInput
    Bucket: string
    Id: string
    ExpectedBucketOwner: string
end

local record GetBucketInventoryConfigurationOutput
    InventoryConfiguration: InventoryConfiguration
end

local record GetBucketLifecycleConfigurationInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetBucketLifecycleConfigurationOutput
    Rules: {LifecycleRule}
    TransitionDefaultMinimumObjectSize: string
end

local record GetBucketLocationInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetBucketLocationOutput
    LocationConstraint: string
end

local record GetBucketLoggingInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetBucketLoggingOutput
    LoggingEnabled: LoggingEnabled
end

local record GetBucketMetadataConfigurationInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetBucketMetadataConfigurationOutput
    GetBucketMetadataConfigurationResult: GetBucketMetadataConfigurationResult
end

local record GetBucketMetadataTableConfigurationInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetBucketMetadataTableConfigurationOutput
    GetBucketMetadataTableConfigurationResult: GetBucketMetadataTableConfigurationResult
end

local record GetBucketMetricsConfigurationInput
    Bucket: string
    Id: string
    ExpectedBucketOwner: string
end

local record GetBucketMetricsConfigurationOutput
    MetricsConfiguration: MetricsConfiguration
end

local record GetBucketNotificationConfigurationInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetBucketNotificationConfigurationOutput
    TopicConfigurations: {TopicConfiguration}
    QueueConfigurations: {QueueConfiguration}
    LambdaFunctionConfigurations: {LambdaFunctionConfiguration}
    EventBridgeConfiguration: EventBridgeConfiguration
end

local record GetBucketOwnershipControlsInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetBucketOwnershipControlsOutput
    OwnershipControls: OwnershipControls
end

local record GetBucketPolicyInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetBucketPolicyOutput
    Policy: string
end

local record GetBucketPolicyStatusInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetBucketPolicyStatusOutput
    PolicyStatus: PolicyStatus
end

local record GetBucketReplicationInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetBucketReplicationOutput
    ReplicationConfiguration: ReplicationConfiguration
end

local record GetBucketRequestPaymentInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetBucketRequestPaymentOutput
    Payer: string
end

local record GetBucketTaggingInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetBucketTaggingOutput
    TagSet: {Tag}
end

local record GetBucketVersioningInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetBucketVersioningOutput
    Status: string
    MFADelete: string
end

local record GetBucketWebsiteInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetBucketWebsiteOutput
    RedirectAllRequestsTo: RedirectAllRequestsTo
    IndexDocument: IndexDocument
    ErrorDocument: ErrorDocument
    RoutingRules: {RoutingRule}
end

local record GetObjectInput
    Bucket: string
    IfMatch: string
    IfModifiedSince: number
    IfNoneMatch: string
    IfUnmodifiedSince: number
    Key: string
    Range: string
    ResponseCacheControl: string
    ResponseContentDisposition: string
    ResponseContentEncoding: string
    ResponseContentLanguage: string
    ResponseContentType: string
    ResponseExpires: number
    VersionId: string
    SSECustomerAlgorithm: string
    SSECustomerKey: string
    SSECustomerKeyMD5: string
    RequestPayer: string
    PartNumber: number
    ExpectedBucketOwner: string
    ChecksumMode: string
end

local record GetObjectOutput
    Body: string
    DeleteMarker: boolean
    AcceptRanges: string
    Expiration: string
    Restore: string
    LastModified: number
    ContentLength: number
    ETag: string
    ChecksumCRC32: string
    ChecksumCRC32C: string
    ChecksumCRC64NVME: string
    ChecksumSHA1: string
    ChecksumSHA256: string
    ChecksumSHA512: string
    ChecksumMD5: string
    ChecksumXXHASH64: string
    ChecksumXXHASH3: string
    ChecksumXXHASH128: string
    ChecksumType: string
    MissingMeta: number
    VersionId: string
    CacheControl: string
    ContentDisposition: string
    ContentEncoding: string
    ContentLanguage: string
    ContentRange: string
    ContentType: string
    Expires: string
    WebsiteRedirectLocation: string
    ServerSideEncryption: string
    Metadata: {string : string}
    SSECustomerAlgorithm: string
    SSECustomerKeyMD5: string
    SSEKMSKeyId: string
    BucketKeyEnabled: boolean
    StorageClass: string
    RequestCharged: string
    ReplicationStatus: string
    PartsCount: number
    TagCount: number
    ObjectLockMode: string
    ObjectLockRetainUntilDate: number
    ObjectLockLegalHoldStatus: string
end

local record GetObjectAclInput
    Bucket: string
    Key: string
    VersionId: string
    RequestPayer: string
    ExpectedBucketOwner: string
end

local record GetObjectAclOutput
    Owner: Owner
    Grants: {Grant}
    RequestCharged: string
end

local record GetObjectAttributesInput
    Bucket: string
    Key: string
    VersionId: string
    MaxParts: number
    PartNumberMarker: string
    SSECustomerAlgorithm: string
    SSECustomerKey: string
    SSECustomerKeyMD5: string
    RequestPayer: string
    ExpectedBucketOwner: string
    ObjectAttributes: {string}
end

local record GetObjectAttributesOutput
    DeleteMarker: boolean
    LastModified: number
    VersionId: string
    RequestCharged: string
    ETag: string
    Checksum: Checksum
    ObjectParts: GetObjectAttributesParts
    StorageClass: string
    ObjectSize: number
end

local record GetObjectLegalHoldInput
    Bucket: string
    Key: string
    VersionId: string
    RequestPayer: string
    ExpectedBucketOwner: string
end

local record GetObjectLegalHoldOutput
    LegalHold: ObjectLockLegalHold
end

local record GetObjectLockConfigurationInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetObjectLockConfigurationOutput
    ObjectLockConfiguration: ObjectLockConfiguration
end

local record GetObjectRetentionInput
    Bucket: string
    Key: string
    VersionId: string
    RequestPayer: string
    ExpectedBucketOwner: string
end

local record GetObjectRetentionOutput
    Retention: ObjectLockRetention
end

local record GetObjectTaggingInput
    Bucket: string
    Key: string
    VersionId: string
    ExpectedBucketOwner: string
    RequestPayer: string
end

local record GetObjectTaggingOutput
    VersionId: string
    TagSet: {Tag}
end

local record GetObjectTorrentInput
    Bucket: string
    Key: string
    RequestPayer: string
    ExpectedBucketOwner: string
end

local record GetObjectTorrentOutput
    Body: string
    RequestCharged: string
end

local record GetPublicAccessBlockInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record GetPublicAccessBlockOutput
    PublicAccessBlockConfiguration: PublicAccessBlockConfiguration
end

local record HeadBucketInput
    Bucket: string
    ExpectedBucketOwner: string
end

local record HeadBucketOutput
    BucketArn: string
    BucketLocationType: string
    BucketLocationName: string
    BucketRegion: string
    AccessPointAlias: boolean
end

local record HeadObjectInput
    Bucket: string
    IfMatch: string
    IfModifiedSince: number
    IfNoneMatch: string
    IfUnmodifiedSince: number
    Key: string
    Range: string
    ResponseCacheControl: string
    ResponseContentDisposition: string
    ResponseContentEncoding: string
    ResponseContentLanguage: string
    ResponseContentType: string
    ResponseExpires: number
    VersionId: string
    SSECustomerAlgorithm: string
    SSECustomerKey: string
    SSECustomerKeyMD5: string
    RequestPayer: string
    PartNumber: number
    ExpectedBucketOwner: string
    ChecksumMode: string
end

local record HeadObjectOutput
    DeleteMarker: boolean
    AcceptRanges: string
    Expiration: string
    Restore: string
    ArchiveStatus: string
    LastModified: number
    ContentLength: number
    ChecksumCRC32: string
    ChecksumCRC32C: string
    ChecksumCRC64NVME: string
    ChecksumSHA1: string
    ChecksumSHA256: string
    ChecksumSHA512: string
    ChecksumMD5: string
    ChecksumXXHASH64: string
    ChecksumXXHASH3: string
    ChecksumXXHASH128: string
    ChecksumType: string
    ETag: string
    MissingMeta: number
    VersionId: string
    CacheControl: string
    ContentDisposition: string
    ContentEncoding: string
    ContentLanguage: string
    ContentType: string
    ContentRange: string
    Expires: string
    WebsiteRedirectLocation: string
    ServerSideEncryption: string
    Metadata: {string : string}
    SSECustomerAlgorithm: string
    SSECustomerKeyMD5: string
    SSEKMSKeyId: string
    BucketKeyEnabled: boolean
    StorageClass: string
    RequestCharged: string
    ReplicationStatus: string
    PartsCount: number
    TagCount: number
    ObjectLockMode: string
    ObjectLockRetainUntilDate: number
    ObjectLockLegalHoldStatus: string
end

local record ListBucketAnalyticsConfigurationsInput
    Bucket: string
    ContinuationToken: string
    ExpectedBucketOwner: string
end

local record ListBucketAnalyticsConfigurationsOutput
    IsTruncated: boolean
    ContinuationToken: string
    NextContinuationToken: string
    AnalyticsConfigurationList: {AnalyticsConfiguration}
end

local record ListBucketIntelligentTieringConfigurationsInput
    Bucket: string
    ContinuationToken: string
    ExpectedBucketOwner: string
end

local record ListBucketIntelligentTieringConfigurationsOutput
    IsTruncated: boolean
    ContinuationToken: string
    NextContinuationToken: string
    IntelligentTieringConfigurationList: {IntelligentTieringConfiguration}
end

local record ListBucketInventoryConfigurationsInput
    Bucket: string
    ContinuationToken: string
    ExpectedBucketOwner: string
end

local record ListBucketInventoryConfigurationsOutput
    ContinuationToken: string
    InventoryConfigurationList: {InventoryConfiguration}
    IsTruncated: boolean
    NextContinuationToken: string
end

local record ListBucketMetricsConfigurationsInput
    Bucket: string
    ContinuationToken: string
    ExpectedBucketOwner: string
end

local record ListBucketMetricsConfigurationsOutput
    IsTruncated: boolean
    ContinuationToken: string
    NextContinuationToken: string
    MetricsConfigurationList: {MetricsConfiguration}
end

local record ListBucketsInput
    MaxBuckets: number
    ContinuationToken: string
    Prefix: string
    BucketRegion: string
end

local record ListBucketsOutput
    Buckets: {Bucket}
    Owner: Owner
    ContinuationToken: string
    Prefix: string
end

local record ListDirectoryBucketsInput
    ContinuationToken: string
    MaxDirectoryBuckets: number
end

local record ListDirectoryBucketsOutput
    Buckets: {Bucket}
    ContinuationToken: string
end

local record ListMultipartUploadsInput
    Bucket: string
    Delimiter: string
    EncodingType: string
    KeyMarker: string
    MaxUploads: number
    Prefix: string
    UploadIdMarker: string
    ExpectedBucketOwner: string
    RequestPayer: string
end

local record ListMultipartUploadsOutput
    Bucket: string
    KeyMarker: string
    UploadIdMarker: string
    NextKeyMarker: string
    Prefix: string
    Delimiter: string
    NextUploadIdMarker: string
    MaxUploads: number
    IsTruncated: boolean
    Uploads: {MultipartUpload}
    CommonPrefixes: {CommonPrefix}
    EncodingType: string
    RequestCharged: string
end

local record ListObjectsInput
    Bucket: string
    Delimiter: string
    EncodingType: string
    Marker: string
    MaxKeys: number
    Prefix: string
    RequestPayer: string
    ExpectedBucketOwner: string
    OptionalObjectAttributes: {string}
end

local record ListObjectsOutput
    IsTruncated: boolean
    Marker: string
    NextMarker: string
    Contents: {Object}
    Name: string
    Prefix: string
    Delimiter: string
    MaxKeys: number
    CommonPrefixes: {CommonPrefix}
    EncodingType: string
    RequestCharged: string
end

local record ListObjectsV2Input
    Bucket: string
    Delimiter: string
    EncodingType: string
    MaxKeys: number
    Prefix: string
    ContinuationToken: string
    FetchOwner: boolean
    StartAfter: string
    RequestPayer: string
    ExpectedBucketOwner: string
    OptionalObjectAttributes: {string}
end

local record ListObjectsV2Output
    IsTruncated: boolean
    Contents: {Object}
    Name: string
    Prefix: string
    Delimiter: string
    MaxKeys: number
    CommonPrefixes: {CommonPrefix}
    EncodingType: string
    KeyCount: number
    ContinuationToken: string
    NextContinuationToken: string
    StartAfter: string
    RequestCharged: string
end

local record ListObjectVersionsInput
    Bucket: string
    Delimiter: string
    EncodingType: string
    KeyMarker: string
    MaxKeys: number
    Prefix: string
    VersionIdMarker: string
    ExpectedBucketOwner: string
    RequestPayer: string
    OptionalObjectAttributes: {string}
end

local record ListObjectVersionsOutput
    IsTruncated: boolean
    KeyMarker: string
    VersionIdMarker: string
    NextKeyMarker: string
    NextVersionIdMarker: string
    Versions: {ObjectVersion}
    DeleteMarkers: {DeleteMarkerEntry}
    Name: string
    Prefix: string
    Delimiter: string
    MaxKeys: number
    CommonPrefixes: {CommonPrefix}
    EncodingType: string
    RequestCharged: string
end

local record ListPartsInput
    Bucket: string
    Key: string
    MaxParts: number
    PartNumberMarker: string
    UploadId: string
    RequestPayer: string
    ExpectedBucketOwner: string
    SSECustomerAlgorithm: string
    SSECustomerKey: string
    SSECustomerKeyMD5: string
end

local record ListPartsOutput
    AbortDate: number
    AbortRuleId: string
    Bucket: string
    Key: string
    UploadId: string
    PartNumberMarker: string
    NextPartNumberMarker: string
    MaxParts: number
    IsTruncated: boolean
    Parts: {Part}
    Initiator: Initiator
    Owner: Owner
    StorageClass: string
    RequestCharged: string
    ChecksumAlgorithm: string
    ChecksumType: string
end

local record PutBucketAbacInput
    Bucket: string
    ContentMD5: string
    ChecksumAlgorithm: string
    ExpectedBucketOwner: string
    AbacStatus: AbacStatus
end

local record PutBucketAbacOutput
end

local record PutBucketAccelerateConfigurationInput
    Bucket: string
    AccelerateConfiguration: AccelerateConfiguration
    ExpectedBucketOwner: string
    ChecksumAlgorithm: string
end

local record PutBucketAccelerateConfigurationOutput
end

local record PutBucketAclInput
    ACL: string
    AccessControlPolicy: AccessControlPolicy
    Bucket: string
    ContentMD5: string
    ChecksumAlgorithm: string
    GrantFullControl: string
    GrantRead: string
    GrantReadACP: string
    GrantWrite: string
    GrantWriteACP: string
    ExpectedBucketOwner: string
end

local record PutBucketAclOutput
end

local record PutBucketAnalyticsConfigurationInput
    Bucket: string
    Id: string
    AnalyticsConfiguration: AnalyticsConfiguration
    ExpectedBucketOwner: string
end

local record PutBucketAnalyticsConfigurationOutput
end

local record PutBucketCorsInput
    Bucket: string
    CORSConfiguration: CORSConfiguration
    ContentMD5: string
    ChecksumAlgorithm: string
    ExpectedBucketOwner: string
end

local record PutBucketCorsOutput
end

local record PutBucketEncryptionInput
    Bucket: string
    ContentMD5: string
    ChecksumAlgorithm: string
    ServerSideEncryptionConfiguration: ServerSideEncryptionConfiguration
    ExpectedBucketOwner: string
end

local record PutBucketEncryptionOutput
end

local record PutBucketIntelligentTieringConfigurationInput
    Bucket: string
    Id: string
    ExpectedBucketOwner: string
    IntelligentTieringConfiguration: IntelligentTieringConfiguration
end

local record PutBucketIntelligentTieringConfigurationOutput
end

local record PutBucketInventoryConfigurationInput
    Bucket: string
    Id: string
    InventoryConfiguration: InventoryConfiguration
    ExpectedBucketOwner: string
end

local record PutBucketInventoryConfigurationOutput
end

local record PutBucketLifecycleConfigurationInput
    Bucket: string
    ChecksumAlgorithm: string
    LifecycleConfiguration: BucketLifecycleConfiguration
    ExpectedBucketOwner: string
    TransitionDefaultMinimumObjectSize: string
end

local record PutBucketLifecycleConfigurationOutput
    TransitionDefaultMinimumObjectSize: string
end

local record PutBucketLoggingInput
    Bucket: string
    BucketLoggingStatus: BucketLoggingStatus
    ContentMD5: string
    ChecksumAlgorithm: string
    ExpectedBucketOwner: string
end

local record PutBucketLoggingOutput
end

local record PutBucketMetricsConfigurationInput
    Bucket: string
    Id: string
    MetricsConfiguration: MetricsConfiguration
    ExpectedBucketOwner: string
end

local record PutBucketMetricsConfigurationOutput
end

local record PutBucketNotificationConfigurationInput
    Bucket: string
    NotificationConfiguration: NotificationConfiguration
    ExpectedBucketOwner: string
    SkipDestinationValidation: boolean
end

local record PutBucketNotificationConfigurationOutput
end

local record PutBucketOwnershipControlsInput
    Bucket: string
    ContentMD5: string
    ExpectedBucketOwner: string
    OwnershipControls: OwnershipControls
    ChecksumAlgorithm: string
end

local record PutBucketOwnershipControlsOutput
end

local record PutBucketPolicyInput
    Bucket: string
    ContentMD5: string
    ChecksumAlgorithm: string
    ConfirmRemoveSelfBucketAccess: boolean
    Policy: string
    ExpectedBucketOwner: string
end

local record PutBucketPolicyOutput
end

local record PutBucketReplicationInput
    Bucket: string
    ContentMD5: string
    ChecksumAlgorithm: string
    ReplicationConfiguration: ReplicationConfiguration
    Token: string
    ExpectedBucketOwner: string
end

local record PutBucketReplicationOutput
end

local record PutBucketRequestPaymentInput
    Bucket: string
    ContentMD5: string
    ChecksumAlgorithm: string
    RequestPaymentConfiguration: RequestPaymentConfiguration
    ExpectedBucketOwner: string
end

local record PutBucketRequestPaymentOutput
end

local record PutBucketTaggingInput
    Bucket: string
    ContentMD5: string
    ChecksumAlgorithm: string
    Tagging: Tagging
    ExpectedBucketOwner: string
end

local record PutBucketTaggingOutput
end

local record PutBucketVersioningInput
    Bucket: string
    ContentMD5: string
    ChecksumAlgorithm: string
    MFA: string
    VersioningConfiguration: VersioningConfiguration
    ExpectedBucketOwner: string
end

local record PutBucketVersioningOutput
end

local record PutBucketWebsiteInput
    Bucket: string
    ContentMD5: string
    ChecksumAlgorithm: string
    WebsiteConfiguration: WebsiteConfiguration
    ExpectedBucketOwner: string
end

local record PutBucketWebsiteOutput
end

local record PutObjectInput
    ACL: string
    Body: string
    Bucket: string
    CacheControl: string
    ContentDisposition: string
    ContentEncoding: string
    ContentLanguage: string
    ContentLength: number
    ContentMD5: string
    ContentType: string
    ChecksumAlgorithm: string
    ChecksumCRC32: string
    ChecksumCRC32C: string
    ChecksumCRC64NVME: string
    ChecksumSHA1: string
    ChecksumSHA256: string
    ChecksumSHA512: string
    ChecksumMD5: string
    ChecksumXXHASH64: string
    ChecksumXXHASH3: string
    ChecksumXXHASH128: string
    Expires: string
    IfMatch: string
    IfNoneMatch: string
    GrantFullControl: string
    GrantRead: string
    GrantReadACP: string
    GrantWriteACP: string
    Key: string
    WriteOffsetBytes: number
    Metadata: {string : string}
    ServerSideEncryption: string
    StorageClass: string
    WebsiteRedirectLocation: string
    SSECustomerAlgorithm: string
    SSECustomerKey: string
    SSECustomerKeyMD5: string
    SSEKMSKeyId: string
    SSEKMSEncryptionContext: string
    BucketKeyEnabled: boolean
    RequestPayer: string
    Tagging: string
    ObjectLockMode: string
    ObjectLockRetainUntilDate: number
    ObjectLockLegalHoldStatus: string
    ExpectedBucketOwner: string
end

local record PutObjectOutput
    Expiration: string
    ETag: string
    ChecksumCRC32: string
    ChecksumCRC32C: string
    ChecksumCRC64NVME: string
    ChecksumSHA1: string
    ChecksumSHA256: string
    ChecksumSHA512: string
    ChecksumMD5: string
    ChecksumXXHASH64: string
    ChecksumXXHASH3: string
    ChecksumXXHASH128: string
    ChecksumType: string
    ServerSideEncryption: string
    VersionId: string
    SSECustomerAlgorithm: string
    SSECustomerKeyMD5: string
    SSEKMSKeyId: string
    SSEKMSEncryptionContext: string
    BucketKeyEnabled: boolean
    Size: number
    RequestCharged: string
end

local record PutObjectAclInput
    ACL: string
    AccessControlPolicy: AccessControlPolicy
    Bucket: string
    ContentMD5: string
    ChecksumAlgorithm: string
    GrantFullControl: string
    GrantRead: string
    GrantReadACP: string
    GrantWrite: string
    GrantWriteACP: string
    Key: string
    RequestPayer: string
    VersionId: string
    ExpectedBucketOwner: string
end

local record PutObjectAclOutput
    RequestCharged: string
end

local record PutObjectLegalHoldInput
    Bucket: string
    Key: string
    LegalHold: ObjectLockLegalHold
    RequestPayer: string
    VersionId: string
    ContentMD5: string
    ChecksumAlgorithm: string
    ExpectedBucketOwner: string
end

local record PutObjectLegalHoldOutput
    RequestCharged: string
end

local record PutObjectLockConfigurationInput
    Bucket: string
    ObjectLockConfiguration: ObjectLockConfiguration
    RequestPayer: string
    Token: string
    ContentMD5: string
    ChecksumAlgorithm: string
    ExpectedBucketOwner: string
end

local record PutObjectLockConfigurationOutput
    RequestCharged: string
end

local record PutObjectRetentionInput
    Bucket: string
    Key: string
    Retention: ObjectLockRetention
    RequestPayer: string
    VersionId: string
    BypassGovernanceRetention: boolean
    ContentMD5: string
    ChecksumAlgorithm: string
    ExpectedBucketOwner: string
end

local record PutObjectRetentionOutput
    RequestCharged: string
end

local record PutObjectTaggingInput
    Bucket: string
    Key: string
    VersionId: string
    ContentMD5: string
    ChecksumAlgorithm: string
    Tagging: Tagging
    ExpectedBucketOwner: string
    RequestPayer: string
end

local record PutObjectTaggingOutput
    VersionId: string
end

local record PutPublicAccessBlockInput
    Bucket: string
    ContentMD5: string
    ChecksumAlgorithm: string
    PublicAccessBlockConfiguration: PublicAccessBlockConfiguration
    ExpectedBucketOwner: string
end

local record PutPublicAccessBlockOutput
end

local record RenameObjectInput
    Bucket: string
    Key: string
    RenameSource: string
    DestinationIfMatch: string
    DestinationIfNoneMatch: string
    DestinationIfModifiedSince: number
    DestinationIfUnmodifiedSince: number
    SourceIfMatch: string
    SourceIfNoneMatch: string
    SourceIfModifiedSince: number
    SourceIfUnmodifiedSince: number
    ClientToken: string
end

local record RenameObjectOutput
end

local record RestoreObjectInput
    Bucket: string
    Key: string
    VersionId: string
    RestoreRequest: RestoreRequest
    RequestPayer: string
    ChecksumAlgorithm: string
    ExpectedBucketOwner: string
end

local record RestoreObjectOutput
    RequestCharged: string
    RestoreOutputPath: string
end

local record SelectObjectContentInput
    Bucket: string
    Key: string
    SSECustomerAlgorithm: string
    SSECustomerKey: string
    SSECustomerKeyMD5: string
    Expression: string
    ExpressionType: string
    RequestProgress: RequestProgress
    InputSerialization: InputSerialization
    OutputSerialization: OutputSerialization
    ScanRange: ScanRange
    ExpectedBucketOwner: string
end

local record SelectObjectContentOutput
    Payload: SelectObjectContentEventStream
end

local record UpdateBucketMetadataInventoryTableConfigurationInput
    Bucket: string
    ContentMD5: string
    ChecksumAlgorithm: string
    InventoryTableConfiguration: InventoryTableConfigurationUpdates
    ExpectedBucketOwner: string
end

local record UpdateBucketMetadataInventoryTableConfigurationOutput
end

local record UpdateBucketMetadataJournalTableConfigurationInput
    Bucket: string
    ContentMD5: string
    ChecksumAlgorithm: string
    JournalTableConfiguration: JournalTableConfigurationUpdates
    ExpectedBucketOwner: string
end

local record UpdateBucketMetadataJournalTableConfigurationOutput
end

local record UpdateObjectEncryptionInput
    Bucket: string
    Key: string
    VersionId: string
    ObjectEncryption: ObjectEncryption
    RequestPayer: string
    ExpectedBucketOwner: string
    ContentMD5: string
    ChecksumAlgorithm: string
end

local record UpdateObjectEncryptionOutput
    RequestCharged: string
end

local record UploadPartInput
    Body: string
    Bucket: string
    ContentLength: number
    ContentMD5: string
    ChecksumAlgorithm: string
    ChecksumCRC32: string
    ChecksumCRC32C: string
    ChecksumCRC64NVME: string
    ChecksumSHA1: string
    ChecksumSHA256: string
    ChecksumSHA512: string
    ChecksumMD5: string
    ChecksumXXHASH64: string
    ChecksumXXHASH3: string
    ChecksumXXHASH128: string
    Key: string
    PartNumber: number
    UploadId: string
    SSECustomerAlgorithm: string
    SSECustomerKey: string
    SSECustomerKeyMD5: string
    RequestPayer: string
    ExpectedBucketOwner: string
end

local record UploadPartOutput
    ServerSideEncryption: string
    ETag: string
    ChecksumCRC32: string
    ChecksumCRC32C: string
    ChecksumCRC64NVME: string
    ChecksumSHA1: string
    ChecksumSHA256: string
    ChecksumSHA512: string
    ChecksumMD5: string
    ChecksumXXHASH64: string
    ChecksumXXHASH3: string
    ChecksumXXHASH128: string
    SSECustomerAlgorithm: string
    SSECustomerKeyMD5: string
    SSEKMSKeyId: string
    BucketKeyEnabled: boolean
    RequestCharged: string
end

local record UploadPartCopyInput
    Bucket: string
    CopySource: string
    CopySourceIfMatch: string
    CopySourceIfModifiedSince: number
    CopySourceIfNoneMatch: string
    CopySourceIfUnmodifiedSince: number
    CopySourceRange: string
    Key: string
    PartNumber: number
    UploadId: string
    SSECustomerAlgorithm: string
    SSECustomerKey: string
    SSECustomerKeyMD5: string
    CopySourceSSECustomerAlgorithm: string
    CopySourceSSECustomerKey: string
    CopySourceSSECustomerKeyMD5: string
    RequestPayer: string
    ExpectedBucketOwner: string
    ExpectedSourceBucketOwner: string
end

local record UploadPartCopyOutput
    CopySourceVersionId: string
    CopyPartResult: CopyPartResult
    ServerSideEncryption: string
    SSECustomerAlgorithm: string
    SSECustomerKeyMD5: string
    SSEKMSKeyId: string
    BucketKeyEnabled: boolean
    RequestCharged: string
end

local record WriteGetObjectResponseInput
    RequestRoute: string
    RequestToken: string
    Body: string
    StatusCode: number
    ErrorCode: string
    ErrorMessage: string
    AcceptRanges: string
    CacheControl: string
    ContentDisposition: string
    ContentEncoding: string
    ContentLanguage: string
    ContentLength: number
    ContentRange: string
    ContentType: string
    ChecksumCRC32: string
    ChecksumCRC32C: string
    ChecksumCRC64NVME: string
    ChecksumSHA1: string
    ChecksumSHA256: string
    ChecksumSHA512: string
    ChecksumMD5: string
    ChecksumXXHASH64: string
    ChecksumXXHASH3: string
    ChecksumXXHASH128: string
    DeleteMarker: boolean
    ETag: string
    Expires: string
    Expiration: string
    LastModified: number
    MissingMeta: number
    Metadata: {string : string}
    ObjectLockMode: string
    ObjectLockLegalHoldStatus: string
    ObjectLockRetainUntilDate: number
    PartsCount: number
    ReplicationStatus: string
    RequestCharged: string
    Restore: string
    ServerSideEncryption: string
    SSECustomerAlgorithm: string
    SSEKMSKeyId: string
    SSECustomerKeyMD5: string
    StorageClass: string
    TagCount: number
    VersionId: string
    BucketKeyEnabled: boolean
end

local record WriteGetObjectResponseOutput
end

local record NoSuchUpload
end

local record ObjectNotInActiveTierError
end

local record BucketAlreadyExists
end

local record BucketAlreadyOwnedByYou
end

local record NoSuchBucket
end

local record InvalidObjectState
    StorageClass: string
    AccessTier: string
end

local record NoSuchKey
end

local record NoSuchKey
end

local record NoSuchKey
end

local record NotFound
end

local record NotFound
end

local record NoSuchBucket
end

local record NoSuchBucket
end

local record EncryptionTypeMismatch
end

local record InvalidRequest
end

local record InvalidWriteOffset
end

local record TooManyParts
end

local record NoSuchKey
end

local record IdempotencyParameterMismatch
end

local record ObjectAlreadyInActiveTierError
end

local record AccessDenied
end

local record InvalidRequest
end

local record NoSuchKey
end

local type ChecksumAlgorithm = "CRC32" | "CRC32C" | "SHA1" | "SHA256" | "CRC64NVME" | "SHA512" | "MD5" | "XXHASH64" | "XXHASH3" | "XXHASH128"

local type RequestCharged = "requester"

local type ChecksumMode = "ENABLED"

local type BucketAccelerateStatus = "Enabled" | "Suspended"

local type ObjectOwnership = "BucketOwnerPreferred" | "ObjectWriter" | "BucketOwnerEnforced"

local type BucketLocationConstraint = "af-south-1" | "ap-east-1" | "ap-east-2" | "ap-northeast-1" | "ap-northeast-2" | "ap-northeast-3" | "ap-south-1" | "ap-south-2" | "ap-southeast-1" | "ap-southeast-2" | "ap-southeast-3" | "ap-southeast-4" | "ap-southeast-5" | "ap-southeast-6" | "ap-southeast-7" | "ca-central-1" | "ca-west-1" | "cn-north-1" | "cn-northwest-1" | "EU" | "eu-central-1" | "eu-central-2" | "eu-north-1" | "eu-south-1" | "eu-south-2" | "eu-west-1" | "eu-west-2" | "eu-west-3" | "il-central-1" | "me-central-1" | "me-south-1" | "mx-central-1" | "sa-east-1" | "us-east-2" | "us-gov-east-1" | "us-gov-west-1" | "us-west-1" | "us-west-2"

local type RequestPayer = "requester"

local type Payer = "Requester" | "BucketOwner"

local type ObjectLockLegalHoldStatus = "ON" | "OFF"

local type ServerSideEncryption = "AES256" | "aws:fsx" | "aws:kms" | "aws:kms:dsse"

local type TaggingDirective = "COPY" | "REPLACE"

local type ArchiveStatus = "ARCHIVE_ACCESS" | "DEEP_ARCHIVE_ACCESS"

local type BucketCannedACL = "private" | "public-read" | "public-read-write" | "authenticated-read"

local type ExpressionType = "SQL"

local type ChecksumType = "COMPOSITE" | "FULL_OBJECT"

local type MetadataDirective = "COPY" | "REPLACE"

local type SessionMode = "ReadOnly" | "ReadWrite"

local type StorageClass = "STANDARD" | "REDUCED_REDUNDANCY" | "STANDARD_IA" | "ONEZONE_IA" | "INTELLIGENT_TIERING" | "GLACIER" | "DEEP_ARCHIVE" | "OUTPOSTS" | "GLACIER_IR" | "SNOW" | "EXPRESS_ONEZONE" | "FSX_OPENZFS" | "FSX_ONTAP"

local type BucketVersioningStatus = "Enabled" | "Suspended"

local type ObjectLockMode = "GOVERNANCE" | "COMPLIANCE"

local type ReplicationStatus = "COMPLETE" | "PENDING" | "FAILED" | "REPLICA" | "COMPLETED"

local type MFADeleteStatus = "Enabled" | "Disabled"

local type TransitionDefaultMinimumObjectSize = "varies_by_storage_class" | "all_storage_classes_128K"

local type EncodingType = "url"

local type BucketNamespace = "account-regional" | "global"

local type ObjectCannedACL = "private" | "public-read" | "public-read-write" | "authenticated-read" | "aws-exec-read" | "bucket-owner-read" | "bucket-owner-full-control"

local type LocationType = "AvailabilityZone" | "LocalZone"

local record M
    AbortMultipartUploadInput: AbortMultipartUploadInput
    AbortMultipartUploadOutput: AbortMultipartUploadOutput
    CompleteMultipartUploadInput: CompleteMultipartUploadInput
    CompleteMultipartUploadOutput: CompleteMultipartUploadOutput
    CopyObjectInput: CopyObjectInput
    CopyObjectOutput: CopyObjectOutput
    CreateBucketInput: CreateBucketInput
    CreateBucketOutput: CreateBucketOutput
    CreateBucketMetadataConfigurationInput: CreateBucketMetadataConfigurationInput
    CreateBucketMetadataConfigurationOutput: CreateBucketMetadataConfigurationOutput
    CreateBucketMetadataTableConfigurationInput: CreateBucketMetadataTableConfigurationInput
    CreateBucketMetadataTableConfigurationOutput: CreateBucketMetadataTableConfigurationOutput
    CreateMultipartUploadInput: CreateMultipartUploadInput
    CreateMultipartUploadOutput: CreateMultipartUploadOutput
    CreateSessionInput: CreateSessionInput
    CreateSessionOutput: CreateSessionOutput
    DeleteBucketInput: DeleteBucketInput
    DeleteBucketOutput: DeleteBucketOutput
    DeleteBucketAnalyticsConfigurationInput: DeleteBucketAnalyticsConfigurationInput
    DeleteBucketAnalyticsConfigurationOutput: DeleteBucketAnalyticsConfigurationOutput
    DeleteBucketCorsInput: DeleteBucketCorsInput
    DeleteBucketCorsOutput: DeleteBucketCorsOutput
    DeleteBucketEncryptionInput: DeleteBucketEncryptionInput
    DeleteBucketEncryptionOutput: DeleteBucketEncryptionOutput
    DeleteBucketIntelligentTieringConfigurationInput: DeleteBucketIntelligentTieringConfigurationInput
    DeleteBucketIntelligentTieringConfigurationOutput: DeleteBucketIntelligentTieringConfigurationOutput
    DeleteBucketInventoryConfigurationInput: DeleteBucketInventoryConfigurationInput
    DeleteBucketInventoryConfigurationOutput: DeleteBucketInventoryConfigurationOutput
    DeleteBucketLifecycleInput: DeleteBucketLifecycleInput
    DeleteBucketLifecycleOutput: DeleteBucketLifecycleOutput
    DeleteBucketMetadataConfigurationInput: DeleteBucketMetadataConfigurationInput
    DeleteBucketMetadataConfigurationOutput: DeleteBucketMetadataConfigurationOutput
    DeleteBucketMetadataTableConfigurationInput: DeleteBucketMetadataTableConfigurationInput
    DeleteBucketMetadataTableConfigurationOutput: DeleteBucketMetadataTableConfigurationOutput
    DeleteBucketMetricsConfigurationInput: DeleteBucketMetricsConfigurationInput
    DeleteBucketMetricsConfigurationOutput: DeleteBucketMetricsConfigurationOutput
    DeleteBucketOwnershipControlsInput: DeleteBucketOwnershipControlsInput
    DeleteBucketOwnershipControlsOutput: DeleteBucketOwnershipControlsOutput
    DeleteBucketPolicyInput: DeleteBucketPolicyInput
    DeleteBucketPolicyOutput: DeleteBucketPolicyOutput
    DeleteBucketReplicationInput: DeleteBucketReplicationInput
    DeleteBucketReplicationOutput: DeleteBucketReplicationOutput
    DeleteBucketTaggingInput: DeleteBucketTaggingInput
    DeleteBucketTaggingOutput: DeleteBucketTaggingOutput
    DeleteBucketWebsiteInput: DeleteBucketWebsiteInput
    DeleteBucketWebsiteOutput: DeleteBucketWebsiteOutput
    DeleteObjectInput: DeleteObjectInput
    DeleteObjectOutput: DeleteObjectOutput
    DeleteObjectsInput: DeleteObjectsInput
    DeleteObjectsOutput: DeleteObjectsOutput
    DeleteObjectTaggingInput: DeleteObjectTaggingInput
    DeleteObjectTaggingOutput: DeleteObjectTaggingOutput
    DeletePublicAccessBlockInput: DeletePublicAccessBlockInput
    DeletePublicAccessBlockOutput: DeletePublicAccessBlockOutput
    GetBucketAbacInput: GetBucketAbacInput
    GetBucketAbacOutput: GetBucketAbacOutput
    GetBucketAccelerateConfigurationInput: GetBucketAccelerateConfigurationInput
    GetBucketAccelerateConfigurationOutput: GetBucketAccelerateConfigurationOutput
    GetBucketAclInput: GetBucketAclInput
    GetBucketAclOutput: GetBucketAclOutput
    GetBucketAnalyticsConfigurationInput: GetBucketAnalyticsConfigurationInput
    GetBucketAnalyticsConfigurationOutput: GetBucketAnalyticsConfigurationOutput
    GetBucketCorsInput: GetBucketCorsInput
    GetBucketCorsOutput: GetBucketCorsOutput
    GetBucketEncryptionInput: GetBucketEncryptionInput
    GetBucketEncryptionOutput: GetBucketEncryptionOutput
    GetBucketIntelligentTieringConfigurationInput: GetBucketIntelligentTieringConfigurationInput
    GetBucketIntelligentTieringConfigurationOutput: GetBucketIntelligentTieringConfigurationOutput
    GetBucketInventoryConfigurationInput: GetBucketInventoryConfigurationInput
    GetBucketInventoryConfigurationOutput: GetBucketInventoryConfigurationOutput
    GetBucketLifecycleConfigurationInput: GetBucketLifecycleConfigurationInput
    GetBucketLifecycleConfigurationOutput: GetBucketLifecycleConfigurationOutput
    GetBucketLocationInput: GetBucketLocationInput
    GetBucketLocationOutput: GetBucketLocationOutput
    GetBucketLoggingInput: GetBucketLoggingInput
    GetBucketLoggingOutput: GetBucketLoggingOutput
    GetBucketMetadataConfigurationInput: GetBucketMetadataConfigurationInput
    GetBucketMetadataConfigurationOutput: GetBucketMetadataConfigurationOutput
    GetBucketMetadataTableConfigurationInput: GetBucketMetadataTableConfigurationInput
    GetBucketMetadataTableConfigurationOutput: GetBucketMetadataTableConfigurationOutput
    GetBucketMetricsConfigurationInput: GetBucketMetricsConfigurationInput
    GetBucketMetricsConfigurationOutput: GetBucketMetricsConfigurationOutput
    GetBucketNotificationConfigurationInput: GetBucketNotificationConfigurationInput
    GetBucketNotificationConfigurationOutput: GetBucketNotificationConfigurationOutput
    GetBucketOwnershipControlsInput: GetBucketOwnershipControlsInput
    GetBucketOwnershipControlsOutput: GetBucketOwnershipControlsOutput
    GetBucketPolicyInput: GetBucketPolicyInput
    GetBucketPolicyOutput: GetBucketPolicyOutput
    GetBucketPolicyStatusInput: GetBucketPolicyStatusInput
    GetBucketPolicyStatusOutput: GetBucketPolicyStatusOutput
    GetBucketReplicationInput: GetBucketReplicationInput
    GetBucketReplicationOutput: GetBucketReplicationOutput
    GetBucketRequestPaymentInput: GetBucketRequestPaymentInput
    GetBucketRequestPaymentOutput: GetBucketRequestPaymentOutput
    GetBucketTaggingInput: GetBucketTaggingInput
    GetBucketTaggingOutput: GetBucketTaggingOutput
    GetBucketVersioningInput: GetBucketVersioningInput
    GetBucketVersioningOutput: GetBucketVersioningOutput
    GetBucketWebsiteInput: GetBucketWebsiteInput
    GetBucketWebsiteOutput: GetBucketWebsiteOutput
    GetObjectInput: GetObjectInput
    GetObjectOutput: GetObjectOutput
    GetObjectAclInput: GetObjectAclInput
    GetObjectAclOutput: GetObjectAclOutput
    GetObjectAttributesInput: GetObjectAttributesInput
    GetObjectAttributesOutput: GetObjectAttributesOutput
    GetObjectLegalHoldInput: GetObjectLegalHoldInput
    GetObjectLegalHoldOutput: GetObjectLegalHoldOutput
    GetObjectLockConfigurationInput: GetObjectLockConfigurationInput
    GetObjectLockConfigurationOutput: GetObjectLockConfigurationOutput
    GetObjectRetentionInput: GetObjectRetentionInput
    GetObjectRetentionOutput: GetObjectRetentionOutput
    GetObjectTaggingInput: GetObjectTaggingInput
    GetObjectTaggingOutput: GetObjectTaggingOutput
    GetObjectTorrentInput: GetObjectTorrentInput
    GetObjectTorrentOutput: GetObjectTorrentOutput
    GetPublicAccessBlockInput: GetPublicAccessBlockInput
    GetPublicAccessBlockOutput: GetPublicAccessBlockOutput
    HeadBucketInput: HeadBucketInput
    HeadBucketOutput: HeadBucketOutput
    HeadObjectInput: HeadObjectInput
    HeadObjectOutput: HeadObjectOutput
    ListBucketAnalyticsConfigurationsInput: ListBucketAnalyticsConfigurationsInput
    ListBucketAnalyticsConfigurationsOutput: ListBucketAnalyticsConfigurationsOutput
    ListBucketIntelligentTieringConfigurationsInput: ListBucketIntelligentTieringConfigurationsInput
    ListBucketIntelligentTieringConfigurationsOutput: ListBucketIntelligentTieringConfigurationsOutput
    ListBucketInventoryConfigurationsInput: ListBucketInventoryConfigurationsInput
    ListBucketInventoryConfigurationsOutput: ListBucketInventoryConfigurationsOutput
    ListBucketMetricsConfigurationsInput: ListBucketMetricsConfigurationsInput
    ListBucketMetricsConfigurationsOutput: ListBucketMetricsConfigurationsOutput
    ListBucketsInput: ListBucketsInput
    ListBucketsOutput: ListBucketsOutput
    ListDirectoryBucketsInput: ListDirectoryBucketsInput
    ListDirectoryBucketsOutput: ListDirectoryBucketsOutput
    ListMultipartUploadsInput: ListMultipartUploadsInput
    ListMultipartUploadsOutput: ListMultipartUploadsOutput
    ListObjectsInput: ListObjectsInput
    ListObjectsOutput: ListObjectsOutput
    ListObjectsV2Input: ListObjectsV2Input
    ListObjectsV2Output: ListObjectsV2Output
    ListObjectVersionsInput: ListObjectVersionsInput
    ListObjectVersionsOutput: ListObjectVersionsOutput
    ListPartsInput: ListPartsInput
    ListPartsOutput: ListPartsOutput
    PutBucketAbacInput: PutBucketAbacInput
    PutBucketAbacOutput: PutBucketAbacOutput
    PutBucketAccelerateConfigurationInput: PutBucketAccelerateConfigurationInput
    PutBucketAccelerateConfigurationOutput: PutBucketAccelerateConfigurationOutput
    PutBucketAclInput: PutBucketAclInput
    PutBucketAclOutput: PutBucketAclOutput
    PutBucketAnalyticsConfigurationInput: PutBucketAnalyticsConfigurationInput
    PutBucketAnalyticsConfigurationOutput: PutBucketAnalyticsConfigurationOutput
    PutBucketCorsInput: PutBucketCorsInput
    PutBucketCorsOutput: PutBucketCorsOutput
    PutBucketEncryptionInput: PutBucketEncryptionInput
    PutBucketEncryptionOutput: PutBucketEncryptionOutput
    PutBucketIntelligentTieringConfigurationInput: PutBucketIntelligentTieringConfigurationInput
    PutBucketIntelligentTieringConfigurationOutput: PutBucketIntelligentTieringConfigurationOutput
    PutBucketInventoryConfigurationInput: PutBucketInventoryConfigurationInput
    PutBucketInventoryConfigurationOutput: PutBucketInventoryConfigurationOutput
    PutBucketLifecycleConfigurationInput: PutBucketLifecycleConfigurationInput
    PutBucketLifecycleConfigurationOutput: PutBucketLifecycleConfigurationOutput
    PutBucketLoggingInput: PutBucketLoggingInput
    PutBucketLoggingOutput: PutBucketLoggingOutput
    PutBucketMetricsConfigurationInput: PutBucketMetricsConfigurationInput
    PutBucketMetricsConfigurationOutput: PutBucketMetricsConfigurationOutput
    PutBucketNotificationConfigurationInput: PutBucketNotificationConfigurationInput
    PutBucketNotificationConfigurationOutput: PutBucketNotificationConfigurationOutput
    PutBucketOwnershipControlsInput: PutBucketOwnershipControlsInput
    PutBucketOwnershipControlsOutput: PutBucketOwnershipControlsOutput
    PutBucketPolicyInput: PutBucketPolicyInput
    PutBucketPolicyOutput: PutBucketPolicyOutput
    PutBucketReplicationInput: PutBucketReplicationInput
    PutBucketReplicationOutput: PutBucketReplicationOutput
    PutBucketRequestPaymentInput: PutBucketRequestPaymentInput
    PutBucketRequestPaymentOutput: PutBucketRequestPaymentOutput
    PutBucketTaggingInput: PutBucketTaggingInput
    PutBucketTaggingOutput: PutBucketTaggingOutput
    PutBucketVersioningInput: PutBucketVersioningInput
    PutBucketVersioningOutput: PutBucketVersioningOutput
    PutBucketWebsiteInput: PutBucketWebsiteInput
    PutBucketWebsiteOutput: PutBucketWebsiteOutput
    PutObjectInput: PutObjectInput
    PutObjectOutput: PutObjectOutput
    PutObjectAclInput: PutObjectAclInput
    PutObjectAclOutput: PutObjectAclOutput
    PutObjectLegalHoldInput: PutObjectLegalHoldInput
    PutObjectLegalHoldOutput: PutObjectLegalHoldOutput
    PutObjectLockConfigurationInput: PutObjectLockConfigurationInput
    PutObjectLockConfigurationOutput: PutObjectLockConfigurationOutput
    PutObjectRetentionInput: PutObjectRetentionInput
    PutObjectRetentionOutput: PutObjectRetentionOutput
    PutObjectTaggingInput: PutObjectTaggingInput
    PutObjectTaggingOutput: PutObjectTaggingOutput
    PutPublicAccessBlockInput: PutPublicAccessBlockInput
    PutPublicAccessBlockOutput: PutPublicAccessBlockOutput
    RenameObjectInput: RenameObjectInput
    RenameObjectOutput: RenameObjectOutput
    RestoreObjectInput: RestoreObjectInput
    RestoreObjectOutput: RestoreObjectOutput
    SelectObjectContentInput: SelectObjectContentInput
    SelectObjectContentOutput: SelectObjectContentOutput
    UpdateBucketMetadataInventoryTableConfigurationInput: UpdateBucketMetadataInventoryTableConfigurationInput
    UpdateBucketMetadataInventoryTableConfigurationOutput: UpdateBucketMetadataInventoryTableConfigurationOutput
    UpdateBucketMetadataJournalTableConfigurationInput: UpdateBucketMetadataJournalTableConfigurationInput
    UpdateBucketMetadataJournalTableConfigurationOutput: UpdateBucketMetadataJournalTableConfigurationOutput
    UpdateObjectEncryptionInput: UpdateObjectEncryptionInput
    UpdateObjectEncryptionOutput: UpdateObjectEncryptionOutput
    UploadPartInput: UploadPartInput
    UploadPartOutput: UploadPartOutput
    UploadPartCopyInput: UploadPartCopyInput
    UploadPartCopyOutput: UploadPartCopyOutput
    WriteGetObjectResponseInput: WriteGetObjectResponseInput
    WriteGetObjectResponseOutput: WriteGetObjectResponseOutput
end

return M
