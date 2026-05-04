local M = {}

M.AbortIncompleteMultipartUpload = {
    type = "structure",
    members = {
        DaysAfterInitiation = {
            type = "number",
        },
    },
}

M.OwnerOverride = {
    Destination = "Destination",
}

M.AccessControlTranslation = {
    type = "structure",
    members = {
        Owner = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAccessGrantsInstanceEntry = {
    type = "structure",
    members = {
        AccessGrantsInstanceId = {
            type = "string",
        },
        AccessGrantsInstanceArn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        IdentityCenterArn = {
            type = "string",
        },
        IdentityCenterInstanceArn = {
            type = "string",
        },
        IdentityCenterApplicationArn = {
            type = "string",
        },
    },
}

M.AccessGrantsLocationConfiguration = {
    type = "structure",
    members = {
        S3SubPrefix = {
            type = "string",
        },
    },
}

M.GranteeType = {
    DIRECTORY_USER = "DIRECTORY_USER",
    DIRECTORY_GROUP = "DIRECTORY_GROUP",
    IAM = "IAM",
}

M.Grantee = {
    type = "structure",
    members = {
        GranteeType = {
            type = "string",
        },
        GranteeIdentifier = {
            type = "string",
        },
    },
}

M.Permission = {
    READ = "READ",
    WRITE = "WRITE",
    READWRITE = "READWRITE",
}

M.ListAccessGrantEntry = {
    type = "structure",
    members = {
        CreatedAt = {
            type = "timestamp",
        },
        AccessGrantId = {
            type = "string",
        },
        AccessGrantArn = {
            type = "string",
        },
        Grantee = {
            type = "structure",
        },
        Permission = {
            type = "string",
        },
        AccessGrantsLocationId = {
            type = "string",
        },
        AccessGrantsLocationConfiguration = {
            type = "structure",
        },
        GrantScope = {
            type = "string",
        },
        ApplicationArn = {
            type = "string",
        },
    },
}

M.ListAccessGrantsLocationsEntry = {
    type = "structure",
    members = {
        CreatedAt = {
            type = "timestamp",
        },
        AccessGrantsLocationId = {
            type = "string",
        },
        AccessGrantsLocationArn = {
            type = "string",
        },
        LocationScope = {
            type = "string",
        },
        IAMRoleArn = {
            type = "string",
        },
    },
}

M.NetworkOrigin = {
    Internet = "Internet",
    VPC = "VPC",
}

M.VpcConfiguration = {
    type = "structure",
    members = {
        VpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccessPoint = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NetworkOrigin = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcConfiguration = {
            type = "structure",
        },
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccessPointArn = {
            type = "string",
        },
        Alias = {
            type = "string",
        },
        BucketAccountId = {
            type = "string",
        },
        DataSourceId = {
            type = "string",
        },
        DataSourceType = {
            type = "string",
        },
    },
}

M.ActivityMetrics = {
    type = "structure",
    members = {
        IsEnabled = {
            type = "boolean",
        },
    },
}

M.AdvancedCostOptimizationMetrics = {
    type = "structure",
    members = {
        IsEnabled = {
            type = "boolean",
        },
    },
}

M.AdvancedDataProtectionMetrics = {
    type = "structure",
    members = {
        IsEnabled = {
            type = "boolean",
        },
    },
}

M.AdvancedPerformanceMetrics = {
    type = "structure",
    members = {
        IsEnabled = {
            type = "boolean",
        },
    },
}

M.DetailedStatusCodesMetrics = {
    type = "structure",
    members = {
        IsEnabled = {
            type = "boolean",
        },
    },
}

M.SelectionCriteria = {
    type = "structure",
    members = {
        Delimiter = {
            type = "string",
        },
        MaxDepth = {
            type = "number",
        },
        MinStorageBytesPercentage = {
            type = "number",
        },
    },
}

M.PrefixLevelStorageMetrics = {
    type = "structure",
    members = {
        IsEnabled = {
            type = "boolean",
        },
        SelectionCriteria = {
            type = "structure",
        },
    },
}

M.PrefixLevel = {
    type = "structure",
    members = {
        StorageMetrics = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BucketLevel = {
    type = "structure",
    members = {
        ActivityMetrics = {
            type = "structure",
        },
        PrefixLevel = {
            type = "structure",
        },
        AdvancedCostOptimizationMetrics = {
            type = "structure",
        },
        AdvancedDataProtectionMetrics = {
            type = "structure",
        },
        DetailedStatusCodesMetrics = {
            type = "structure",
        },
        AdvancedPerformanceMetrics = {
            type = "structure",
        },
    },
}

M.StorageLensGroupLevelSelectionCriteria = {
    type = "structure",
    members = {
        Include = {
            type = "list",
            member_type = "string",
        },
        Exclude = {
            type = "list",
            member_type = "string",
        },
    },
}

M.StorageLensGroupLevel = {
    type = "structure",
    members = {
        SelectionCriteria = {
            type = "structure",
        },
    },
}

M.AccountLevel = {
    type = "structure",
    members = {
        ActivityMetrics = {
            type = "structure",
        },
        BucketLevel = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AdvancedCostOptimizationMetrics = {
            type = "structure",
        },
        AdvancedDataProtectionMetrics = {
            type = "structure",
        },
        DetailedStatusCodesMetrics = {
            type = "structure",
        },
        AdvancedPerformanceMetrics = {
            type = "structure",
        },
        StorageLensGroupLevel = {
            type = "structure",
        },
    },
}

M.AssociateAccessGrantsIdentityCenterInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        IdentityCenterArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateAccessGrantsIdentityCenterOutput = {
    type = "structure",
}

M.AsyncErrorDetails = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Message = {
            type = "string",
        },
        Resource = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.AsyncOperationName = {
    CreateMultiRegionAccessPoint = "CreateMultiRegionAccessPoint",
    DeleteMultiRegionAccessPoint = "DeleteMultiRegionAccessPoint",
    PutMultiRegionAccessPointPolicy = "PutMultiRegionAccessPointPolicy",
}

M.PublicAccessBlockConfiguration = {
    type = "structure",
    members = {
        BlockPublicAcls = {
            type = "boolean",
            traits = {
                xml_name = "BlockPublicAcls",
            },
        },
        IgnorePublicAcls = {
            type = "boolean",
            traits = {
                xml_name = "IgnorePublicAcls",
            },
        },
        BlockPublicPolicy = {
            type = "boolean",
            traits = {
                xml_name = "BlockPublicPolicy",
            },
        },
        RestrictPublicBuckets = {
            type = "boolean",
            traits = {
                xml_name = "RestrictPublicBuckets",
            },
        },
    },
}

M.Region = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketAccountId = {
            type = "string",
        },
    },
}

M.CreateMultiRegionAccessPointInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublicAccessBlock = {
            type = "structure",
        },
        Regions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMultiRegionAccessPointInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutMultiRegionAccessPointPolicyInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AsyncRequestParameters = {
    type = "structure",
    members = {
        CreateMultiRegionAccessPointRequest = {
            type = "structure",
        },
        DeleteMultiRegionAccessPointRequest = {
            type = "structure",
        },
        PutMultiRegionAccessPointPolicyRequest = {
            type = "structure",
        },
    },
}

M.MultiRegionAccessPointRegionalResponse = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        RequestStatus = {
            type = "string",
        },
    },
}

M.MultiRegionAccessPointsAsyncResponse = {
    type = "structure",
    members = {
        Regions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AsyncResponseDetails = {
    type = "structure",
    members = {
        MultiRegionAccessPointDetails = {
            type = "structure",
        },
        ErrorDetails = {
            type = "structure",
        },
    },
}

M.AsyncOperation = {
    type = "structure",
    members = {
        CreationTime = {
            type = "timestamp",
        },
        Operation = {
            type = "string",
        },
        RequestTokenARN = {
            type = "string",
        },
        RequestParameters = {
            type = "structure",
        },
        RequestStatus = {
            type = "string",
        },
        ResponseDetails = {
            type = "structure",
        },
    },
}

M.AwsLambdaTransformation = {
    type = "structure",
    members = {
        FunctionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionPayload = {
            type = "string",
        },
    },
}

M.S3PrefixType = {
    Object = "Object",
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAccessGrantInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        AccessGrantsLocationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccessGrantsLocationConfiguration = {
            type = "structure",
        },
        Grantee = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Permission = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationArn = {
            type = "string",
        },
        S3PrefixType = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateAccessGrantOutput = {
    type = "structure",
    members = {
        CreatedAt = {
            type = "timestamp",
        },
        AccessGrantId = {
            type = "string",
        },
        AccessGrantArn = {
            type = "string",
        },
        Grantee = {
            type = "structure",
        },
        AccessGrantsLocationId = {
            type = "string",
        },
        AccessGrantsLocationConfiguration = {
            type = "structure",
        },
        Permission = {
            type = "string",
        },
        ApplicationArn = {
            type = "string",
        },
        GrantScope = {
            type = "string",
        },
    },
}

M.CreateAccessGrantsInstanceInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        IdentityCenterArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateAccessGrantsInstanceOutput = {
    type = "structure",
    members = {
        CreatedAt = {
            type = "timestamp",
        },
        AccessGrantsInstanceId = {
            type = "string",
        },
        AccessGrantsInstanceArn = {
            type = "string",
        },
        IdentityCenterArn = {
            type = "string",
        },
        IdentityCenterInstanceArn = {
            type = "string",
        },
        IdentityCenterApplicationArn = {
            type = "string",
        },
    },
}

M.CreateAccessGrantsLocationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        LocationScope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IAMRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateAccessGrantsLocationOutput = {
    type = "structure",
    members = {
        CreatedAt = {
            type = "timestamp",
        },
        AccessGrantsLocationId = {
            type = "string",
        },
        AccessGrantsLocationArn = {
            type = "string",
        },
        LocationScope = {
            type = "string",
        },
        IAMRoleArn = {
            type = "string",
        },
    },
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

M.Scope = {
    type = "structure",
    members = {
        Prefixes = {
            type = "list",
            member_type = "string",
            traits = {
                xml_name = "Prefixes",
            },
        },
        Permissions = {
            type = "list",
            member_type = "string",
            traits = {
                xml_name = "Permissions",
            },
        },
    },
}

M.CreateAccessPointInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcConfiguration = {
            type = "structure",
        },
        PublicAccessBlockConfiguration = {
            type = "structure",
        },
        BucketAccountId = {
            type = "string",
        },
        Scope = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateAccessPointOutput = {
    type = "structure",
    members = {
        AccessPointArn = {
            type = "string",
        },
        Alias = {
            type = "string",
        },
    },
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

M.ObjectLambdaContentTransformation = {
    type = "union",
    members = {
        AwsLambda = {
            type = "structure",
        },
    },
}

M.ObjectLambdaTransformationConfiguration = {
    type = "structure",
    members = {
        Actions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ContentTransformation = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ObjectLambdaConfiguration = {
    type = "structure",
    members = {
        SupportingAccessPoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CloudWatchMetricsEnabled = {
            type = "boolean",
        },
        AllowedFeatures = {
            type = "list",
            member_type = "string",
        },
        TransformationConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAccessPointForObjectLambdaInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ObjectLambdaAccessPointAliasStatus = {
    PROVISIONING = "PROVISIONING",
    READY = "READY",
}

M.ObjectLambdaAccessPointAlias = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.CreateAccessPointForObjectLambdaOutput = {
    type = "structure",
    members = {
        ObjectLambdaAccessPointArn = {
            type = "string",
        },
        Alias = {
            type = "structure",
        },
    },
}

M.BucketAlreadyExists = {
    type = "structure",
    error = "client",
}

M.BucketAlreadyOwnedByYou = {
    type = "structure",
    error = "client",
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

M.CreateBucketConfiguration = {
    type = "structure",
    members = {
        LocationConstraint = {
            type = "string",
        },
    },
}

M.CreateBucketInput = {
    type = "structure",
    members = {
        ACL = {
            type = "string",
            traits = {
                http_header = "x-amz-acl",
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CreateBucketConfiguration = {
            type = "structure",
            traits = {
                http_payload = true,
                xml_name = "CreateBucketConfiguration",
            },
        },
        GrantFullControl = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-full-control",
            },
        },
        GrantRead = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-read",
            },
        },
        GrantReadACP = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-read-acp",
            },
        },
        GrantWrite = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-write",
            },
        },
        GrantWriteACP = {
            type = "string",
            traits = {
                http_header = "x-amz-grant-write-acp",
            },
        },
        ObjectLockEnabledForBucket = {
            type = "boolean",
            traits = {
                http_header = "x-amz-bucket-object-lock-enabled",
            },
        },
        OutpostId = {
            type = "string",
            traits = {
                http_header = "x-amz-outpost-id",
            },
        },
    },
}

M.CreateBucketOutput = {
    type = "structure",
    members = {
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        BucketArn = {
            type = "string",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.JobManifestLocation = {
    type = "structure",
    members = {
        ObjectArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectVersionId = {
            type = "string",
        },
        ETag = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
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

M.JobManifestSpec = {
    type = "structure",
    members = {
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Fields = {
            type = "list",
            member_type = "string",
        },
    },
}

M.JobManifest = {
    type = "structure",
    members = {
        Spec = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.KeyNameConstraint = {
    type = "structure",
    members = {
        MatchAnyPrefix = {
            type = "list",
            member_type = "string",
        },
        MatchAnySuffix = {
            type = "list",
            member_type = "string",
        },
        MatchAnySubstring = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DSSEKMSFilter = {
    type = "structure",
    members = {
        KmsKeyArn = {
            type = "string",
        },
    },
}

M.NotSSEFilter = {
    type = "structure",
}

M.SSECFilter = {
    type = "structure",
}

M.SSEKMSFilter = {
    type = "structure",
    members = {
        KmsKeyArn = {
            type = "string",
        },
        BucketKeyEnabled = {
            type = "boolean",
        },
    },
}

M.SSES3Filter = {
    type = "structure",
}

M.ObjectEncryptionFilter = {
    type = "union",
    members = {
        SSES3 = {
            type = "structure",
            traits = {
                xml_name = "SSE-S3",
            },
        },
        SSEKMS = {
            type = "structure",
            traits = {
                xml_name = "SSE-KMS",
            },
        },
        DSSEKMS = {
            type = "structure",
            traits = {
                xml_name = "DSSE-KMS",
            },
        },
        SSEC = {
            type = "structure",
            traits = {
                xml_name = "SSE-C",
            },
        },
        NOTSSE = {
            type = "structure",
            traits = {
                xml_name = "NOT-SSE",
            },
        },
    },
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

M.JobManifestGeneratorFilter = {
    type = "structure",
    members = {
        EligibleForReplication = {
            type = "boolean",
        },
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        ObjectReplicationStatuses = {
            type = "list",
            member_type = "string",
        },
        KeyNameConstraint = {
            type = "structure",
        },
        ObjectSizeGreaterThanBytes = {
            type = "number",
        },
        ObjectSizeLessThanBytes = {
            type = "number",
        },
        MatchAnyStorageClass = {
            type = "list",
            member_type = "string",
        },
        MatchAnyObjectEncryption = {
            type = "list",
            member_type = "union",
        },
    },
}

M.SSEKMSEncryption = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SSES3Encryption = {
    type = "structure",
}

M.GeneratedManifestEncryption = {
    type = "structure",
    members = {
        SSES3 = {
            type = "structure",
            traits = {
                xml_name = "SSE-S3",
            },
        },
        SSEKMS = {
            type = "structure",
            traits = {
                xml_name = "SSE-KMS",
            },
        },
    },
}

M.GeneratedManifestFormat = {
    S3InventoryReport_CSV_20211130 = "S3InventoryReport_CSV_20211130",
}

M.S3ManifestOutputLocation = {
    type = "structure",
    members = {
        ExpectedManifestBucketOwner = {
            type = "string",
        },
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManifestPrefix = {
            type = "string",
        },
        ManifestEncryption = {
            type = "structure",
        },
        ManifestFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3JobManifestGenerator = {
    type = "structure",
    members = {
        ExpectedBucketOwner = {
            type = "string",
        },
        SourceBucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManifestOutputLocation = {
            type = "structure",
        },
        Filter = {
            type = "structure",
        },
        EnableManifestOutput = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.JobManifestGenerator = {
    type = "union",
    members = {
        S3JobManifestGenerator = {
            type = "structure",
        },
    },
}

M.LambdaInvokeOperation = {
    type = "structure",
    members = {
        FunctionArn = {
            type = "string",
        },
        InvocationSchemaVersion = {
            type = "string",
        },
        UserArguments = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
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

M.S3ComputeObjectChecksumOperation = {
    type = "structure",
    members = {
        ChecksumAlgorithm = {
            type = "string",
        },
        ChecksumType = {
            type = "string",
        },
    },
}

M.S3DeleteObjectTaggingOperation = {
    type = "structure",
}

M.S3GlacierJobTier = {
    BULK = "BULK",
    STANDARD = "STANDARD",
}

M.S3InitiateRestoreObjectOperation = {
    type = "structure",
    members = {
        ExpirationInDays = {
            type = "number",
        },
        GlacierJobTier = {
            type = "string",
        },
    },
}

M.S3GranteeTypeIdentifier = {
    CANONICAL = "id",
    EMAIL_ADDRESS = "emailAddress",
    GROUP = "uri",
}

M.S3Grantee = {
    type = "structure",
    members = {
        TypeIdentifier = {
            type = "string",
        },
        Identifier = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
    },
}

M.S3Permission = {
    FULL_CONTROL = "FULL_CONTROL",
    READ = "READ",
    WRITE = "WRITE",
    READ_ACP = "READ_ACP",
    WRITE_ACP = "WRITE_ACP",
}

M.S3Grant = {
    type = "structure",
    members = {
        Grantee = {
            type = "structure",
        },
        Permission = {
            type = "string",
        },
    },
}

M.S3ObjectOwner = {
    type = "structure",
    members = {
        ID = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
    },
}

M.S3AccessControlList = {
    type = "structure",
    members = {
        Owner = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Grants = {
            type = "list",
            member_type = "structure",
        },
    },
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

M.S3AccessControlPolicy = {
    type = "structure",
    members = {
        AccessControlList = {
            type = "structure",
        },
        CannedAccessControlList = {
            type = "string",
        },
    },
}

M.S3SetObjectAclOperation = {
    type = "structure",
    members = {
        AccessControlPolicy = {
            type = "structure",
        },
    },
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

M.S3ObjectMetadata = {
    type = "structure",
    members = {
        CacheControl = {
            type = "string",
        },
        ContentDisposition = {
            type = "string",
        },
        ContentEncoding = {
            type = "string",
        },
        ContentLanguage = {
            type = "string",
        },
        UserMetadata = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ContentLength = {
            type = "number",
        },
        ContentMD5 = {
            type = "string",
        },
        ContentType = {
            type = "string",
        },
        HttpExpiresDate = {
            type = "timestamp",
        },
        RequesterCharged = {
            type = "boolean",
        },
        SSEAlgorithm = {
            type = "string",
        },
    },
}

M.S3Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3ObjectLockLegalHoldStatus = {
    OFF = "OFF",
    ON = "ON",
}

M.S3ObjectLockMode = {
    COMPLIANCE = "COMPLIANCE",
    GOVERNANCE = "GOVERNANCE",
}

M.S3CopyObjectOperation = {
    type = "structure",
    members = {
        TargetResource = {
            type = "string",
        },
        CannedAccessControlList = {
            type = "string",
        },
        AccessControlGrants = {
            type = "list",
            member_type = "structure",
        },
        MetadataDirective = {
            type = "string",
        },
        ModifiedSinceConstraint = {
            type = "timestamp",
        },
        NewObjectMetadata = {
            type = "structure",
        },
        NewObjectTagging = {
            type = "list",
            member_type = "structure",
        },
        RedirectLocation = {
            type = "string",
        },
        RequesterPays = {
            type = "boolean",
        },
        StorageClass = {
            type = "string",
        },
        UnModifiedSinceConstraint = {
            type = "timestamp",
        },
        SSEAwsKmsKeyId = {
            type = "string",
        },
        TargetKeyPrefix = {
            type = "string",
        },
        ObjectLockLegalHoldStatus = {
            type = "string",
        },
        ObjectLockMode = {
            type = "string",
        },
        ObjectLockRetainUntilDate = {
            type = "timestamp",
        },
        BucketKeyEnabled = {
            type = "boolean",
        },
        ChecksumAlgorithm = {
            type = "string",
        },
    },
}

M.S3ObjectLockLegalHold = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3SetObjectLegalHoldOperation = {
    type = "structure",
    members = {
        LegalHold = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.S3ObjectLockRetentionMode = {
    COMPLIANCE = "COMPLIANCE",
    GOVERNANCE = "GOVERNANCE",
}

M.S3Retention = {
    type = "structure",
    members = {
        RetainUntilDate = {
            type = "timestamp",
        },
        Mode = {
            type = "string",
        },
    },
}

M.S3SetObjectRetentionOperation = {
    type = "structure",
    members = {
        BypassGovernanceRetention = {
            type = "boolean",
        },
        Retention = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.S3SetObjectTaggingOperation = {
    type = "structure",
    members = {
        TagSet = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.S3ReplicateObjectOperation = {
    type = "structure",
}

M.S3UpdateObjectEncryptionSSEKMS = {
    type = "structure",
    members = {
        KMSKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketKeyEnabled = {
            type = "boolean",
        },
    },
}

M.ObjectEncryption = {
    type = "structure",
    members = {
        SSEKMS = {
            type = "structure",
            traits = {
                xml_name = "SSE-KMS",
            },
        },
    },
}

M.S3UpdateObjectEncryptionOperation = {
    type = "structure",
    members = {
        ObjectEncryption = {
            type = "structure",
        },
    },
}

M.JobOperation = {
    type = "structure",
    members = {
        LambdaInvoke = {
            type = "structure",
        },
        S3PutObjectCopy = {
            type = "structure",
        },
        S3PutObjectAcl = {
            type = "structure",
        },
        S3PutObjectTagging = {
            type = "structure",
        },
        S3DeleteObjectTagging = {
            type = "structure",
        },
        S3InitiateRestoreObject = {
            type = "structure",
        },
        S3PutObjectLegalHold = {
            type = "structure",
        },
        S3PutObjectRetention = {
            type = "structure",
        },
        S3ReplicateObject = {
            type = "structure",
        },
        S3ComputeObjectChecksum = {
            type = "structure",
        },
        S3UpdateObjectEncryption = {
            type = "structure",
        },
    },
}

M.JobReportFormat = {
    Report_CSV_20180820 = "Report_CSV_20180820",
}

M.JobReportScope = {
    AllTasks = "AllTasks",
    FailedTasksOnly = "FailedTasksOnly",
}

M.JobReport = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
        },
        Format = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Prefix = {
            type = "string",
        },
        ReportScope = {
            type = "string",
        },
        ExpectedBucketOwner = {
            type = "string",
        },
    },
}

M.CreateJobInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        ConfirmationRequired = {
            type = "boolean",
        },
        Operation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Report = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientRequestToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Manifest = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        Priority = {
            type = "number",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ManifestGenerator = {
            type = "union",
        },
    },
}

M.CreateJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.IdempotencyException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateMultiRegionAccessPointOperationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Details = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMultiRegionAccessPointOutput = {
    type = "structure",
    members = {
        RequestTokenARN = {
            type = "string",
        },
    },
}

M.MatchObjectAge = {
    type = "structure",
    members = {
        DaysGreaterThan = {
            type = "number",
        },
        DaysLessThan = {
            type = "number",
        },
    },
}

M.MatchObjectSize = {
    type = "structure",
    members = {
        BytesGreaterThan = {
            type = "number",
        },
        BytesLessThan = {
            type = "number",
        },
    },
}

M.StorageLensGroupAndOperator = {
    type = "structure",
    members = {
        MatchAnyPrefix = {
            type = "list",
            member_type = "string",
        },
        MatchAnySuffix = {
            type = "list",
            member_type = "string",
        },
        MatchAnyTag = {
            type = "list",
            member_type = "structure",
        },
        MatchObjectAge = {
            type = "structure",
        },
        MatchObjectSize = {
            type = "structure",
        },
    },
}

M.StorageLensGroupOrOperator = {
    type = "structure",
    members = {
        MatchAnyPrefix = {
            type = "list",
            member_type = "string",
        },
        MatchAnySuffix = {
            type = "list",
            member_type = "string",
        },
        MatchAnyTag = {
            type = "list",
            member_type = "structure",
        },
        MatchObjectAge = {
            type = "structure",
        },
        MatchObjectSize = {
            type = "structure",
        },
    },
}

M.StorageLensGroupFilter = {
    type = "structure",
    members = {
        MatchAnyPrefix = {
            type = "list",
            member_type = "string",
        },
        MatchAnySuffix = {
            type = "list",
            member_type = "string",
        },
        MatchAnyTag = {
            type = "list",
            member_type = "structure",
        },
        MatchObjectAge = {
            type = "structure",
        },
        MatchObjectSize = {
            type = "structure",
        },
        And = {
            type = "structure",
        },
        Or = {
            type = "structure",
        },
    },
}

M.StorageLensGroup = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        StorageLensGroupArn = {
            type = "string",
        },
    },
}

M.CreateStorageLensGroupInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        StorageLensGroup = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateStorageLensGroupOutput = {
    type = "structure",
}

M.DeleteAccessGrantInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        AccessGrantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccessGrantOutput = {
    type = "structure",
}

M.DeleteAccessGrantsInstanceInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
    },
}

M.DeleteAccessGrantsInstanceOutput = {
    type = "structure",
}

M.DeleteAccessGrantsInstanceResourcePolicyInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
    },
}

M.DeleteAccessGrantsInstanceResourcePolicyOutput = {
    type = "structure",
}

M.DeleteAccessGrantsLocationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        AccessGrantsLocationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccessGrantsLocationOutput = {
    type = "structure",
}

M.DeleteAccessPointInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccessPointOutput = {
    type = "structure",
}

M.DeleteAccessPointForObjectLambdaInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccessPointForObjectLambdaOutput = {
    type = "structure",
}

M.DeleteAccessPointPolicyInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccessPointPolicyOutput = {
    type = "structure",
}

M.DeleteAccessPointPolicyForObjectLambdaInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccessPointPolicyForObjectLambdaOutput = {
    type = "structure",
}

M.DeleteAccessPointScopeInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAccessPointScopeOutput = {
    type = "structure",
}

M.DeleteBucketInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBucketOutput = {
    type = "structure",
}

M.DeleteBucketLifecycleConfigurationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBucketLifecycleConfigurationOutput = {
    type = "structure",
}

M.DeleteBucketPolicyInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBucketPolicyOutput = {
    type = "structure",
}

M.DeleteBucketReplicationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBucketReplicationOutput = {
    type = "structure",
}

M.DeleteBucketTaggingInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBucketTaggingOutput = {
    type = "structure",
}

M.DeleteJobTaggingInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteJobTaggingOutput = {
    type = "structure",
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteMultiRegionAccessPointOperationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Details = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMultiRegionAccessPointOutput = {
    type = "structure",
    members = {
        RequestTokenARN = {
            type = "string",
        },
    },
}

M.DeletePublicAccessBlockInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
    },
}

M.DeletePublicAccessBlockOutput = {
    type = "structure",
}

M.DeleteStorageLensConfigurationInput = {
    type = "structure",
    members = {
        ConfigId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
    },
}

M.DeleteStorageLensConfigurationOutput = {
    type = "structure",
}

M.DeleteStorageLensConfigurationTaggingInput = {
    type = "structure",
    members = {
        ConfigId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
    },
}

M.DeleteStorageLensConfigurationTaggingOutput = {
    type = "structure",
}

M.DeleteStorageLensGroupInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
    },
}

M.DeleteStorageLensGroupOutput = {
    type = "structure",
}

M.DescribeJobInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.JobFailure = {
    type = "structure",
    members = {
        FailureCode = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.S3GeneratedManifestDescriptor = {
    type = "structure",
    members = {
        Format = {
            type = "string",
        },
        Location = {
            type = "structure",
        },
    },
}

M.JobTimers = {
    type = "structure",
    members = {
        ElapsedTimeInActiveSeconds = {
            type = "number",
        },
    },
}

M.JobProgressSummary = {
    type = "structure",
    members = {
        TotalNumberOfTasks = {
            type = "number",
        },
        NumberOfTasksSucceeded = {
            type = "number",
        },
        NumberOfTasksFailed = {
            type = "number",
        },
        Timers = {
            type = "structure",
        },
    },
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

M.JobDescriptor = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        ConfirmationRequired = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
        JobArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Manifest = {
            type = "structure",
        },
        Operation = {
            type = "structure",
        },
        Priority = {
            type = "number",
        },
        ProgressSummary = {
            type = "structure",
        },
        StatusUpdateReason = {
            type = "string",
        },
        FailureReasons = {
            type = "list",
            member_type = "structure",
        },
        Report = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
        TerminationDate = {
            type = "timestamp",
        },
        RoleArn = {
            type = "string",
        },
        SuspendedDate = {
            type = "timestamp",
        },
        SuspendedCause = {
            type = "string",
        },
        ManifestGenerator = {
            type = "union",
        },
        GeneratedManifestDescriptor = {
            type = "structure",
        },
    },
}

M.DescribeJobOutput = {
    type = "structure",
    members = {
        Job = {
            type = "structure",
        },
    },
}

M.DescribeMultiRegionAccessPointOperationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        RequestTokenARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeMultiRegionAccessPointOperationOutput = {
    type = "structure",
    members = {
        AsyncOperation = {
            type = "structure",
        },
    },
}

M.DissociateAccessGrantsIdentityCenterInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
    },
}

M.DissociateAccessGrantsIdentityCenterOutput = {
    type = "structure",
}

M.GetAccessGrantInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        AccessGrantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccessGrantOutput = {
    type = "structure",
    members = {
        CreatedAt = {
            type = "timestamp",
        },
        AccessGrantId = {
            type = "string",
        },
        AccessGrantArn = {
            type = "string",
        },
        Grantee = {
            type = "structure",
        },
        Permission = {
            type = "string",
        },
        AccessGrantsLocationId = {
            type = "string",
        },
        AccessGrantsLocationConfiguration = {
            type = "structure",
        },
        GrantScope = {
            type = "string",
        },
        ApplicationArn = {
            type = "string",
        },
    },
}

M.GetAccessGrantsInstanceInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
    },
}

M.GetAccessGrantsInstanceOutput = {
    type = "structure",
    members = {
        AccessGrantsInstanceArn = {
            type = "string",
        },
        AccessGrantsInstanceId = {
            type = "string",
        },
        IdentityCenterArn = {
            type = "string",
        },
        IdentityCenterInstanceArn = {
            type = "string",
        },
        IdentityCenterApplicationArn = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
    },
}

M.GetAccessGrantsInstanceForPrefixInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        S3Prefix = {
            type = "string",
            traits = {
                http_query = "s3prefix",
                required = true,
            },
        },
    },
}

M.GetAccessGrantsInstanceForPrefixOutput = {
    type = "structure",
    members = {
        AccessGrantsInstanceArn = {
            type = "string",
        },
        AccessGrantsInstanceId = {
            type = "string",
        },
    },
}

M.GetAccessGrantsInstanceResourcePolicyInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
    },
}

M.GetAccessGrantsInstanceResourcePolicyOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
        Organization = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
    },
}

M.GetAccessGrantsLocationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        AccessGrantsLocationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccessGrantsLocationOutput = {
    type = "structure",
    members = {
        CreatedAt = {
            type = "timestamp",
        },
        AccessGrantsLocationId = {
            type = "string",
        },
        AccessGrantsLocationArn = {
            type = "string",
        },
        LocationScope = {
            type = "string",
        },
        IAMRoleArn = {
            type = "string",
        },
    },
}

M.GetAccessPointInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccessPointOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Bucket = {
            type = "string",
        },
        NetworkOrigin = {
            type = "string",
        },
        VpcConfiguration = {
            type = "structure",
        },
        PublicAccessBlockConfiguration = {
            type = "structure",
        },
        CreationDate = {
            type = "timestamp",
        },
        Alias = {
            type = "string",
        },
        AccessPointArn = {
            type = "string",
        },
        Endpoints = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        BucketAccountId = {
            type = "string",
        },
        DataSourceId = {
            type = "string",
        },
        DataSourceType = {
            type = "string",
        },
    },
}

M.GetAccessPointConfigurationForObjectLambdaInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccessPointConfigurationForObjectLambdaOutput = {
    type = "structure",
    members = {
        Configuration = {
            type = "structure",
        },
    },
}

M.GetAccessPointForObjectLambdaInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccessPointForObjectLambdaOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        PublicAccessBlockConfiguration = {
            type = "structure",
        },
        CreationDate = {
            type = "timestamp",
        },
        Alias = {
            type = "structure",
        },
    },
}

M.GetAccessPointPolicyInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccessPointPolicyOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.GetAccessPointPolicyForObjectLambdaInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccessPointPolicyForObjectLambdaOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.GetAccessPointPolicyStatusInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PolicyStatus = {
    type = "structure",
    members = {
        IsPublic = {
            type = "boolean",
            traits = {
                xml_name = "IsPublic",
            },
        },
    },
}

M.GetAccessPointPolicyStatusOutput = {
    type = "structure",
    members = {
        PolicyStatus = {
            type = "structure",
        },
    },
}

M.GetAccessPointPolicyStatusForObjectLambdaInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccessPointPolicyStatusForObjectLambdaOutput = {
    type = "structure",
    members = {
        PolicyStatus = {
            type = "structure",
        },
    },
}

M.GetAccessPointScopeInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAccessPointScopeOutput = {
    type = "structure",
    members = {
        Scope = {
            type = "structure",
        },
    },
}

M.GetBucketInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBucketOutput = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
        },
        PublicAccessBlockEnabled = {
            type = "boolean",
        },
        CreationDate = {
            type = "timestamp",
        },
    },
}

M.GetBucketLifecycleConfigurationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LifecycleExpiration = {
    type = "structure",
    members = {
        Date = {
            type = "timestamp",
        },
        Days = {
            type = "number",
        },
        ExpiredObjectDeleteMarker = {
            type = "boolean",
        },
    },
}

M.LifecycleRuleAndOperator = {
    type = "structure",
    members = {
        Prefix = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ObjectSizeGreaterThan = {
            type = "number",
        },
        ObjectSizeLessThan = {
            type = "number",
        },
    },
}

M.LifecycleRuleFilter = {
    type = "structure",
    members = {
        Prefix = {
            type = "string",
        },
        Tag = {
            type = "structure",
        },
        And = {
            type = "structure",
        },
        ObjectSizeGreaterThan = {
            type = "number",
        },
        ObjectSizeLessThan = {
            type = "number",
        },
    },
}

M.NoncurrentVersionExpiration = {
    type = "structure",
    members = {
        NoncurrentDays = {
            type = "number",
        },
        NewerNoncurrentVersions = {
            type = "number",
        },
    },
}

M.TransitionStorageClass = {
    GLACIER = "GLACIER",
    STANDARD_IA = "STANDARD_IA",
    ONEZONE_IA = "ONEZONE_IA",
    INTELLIGENT_TIERING = "INTELLIGENT_TIERING",
    DEEP_ARCHIVE = "DEEP_ARCHIVE",
}

M.NoncurrentVersionTransition = {
    type = "structure",
    members = {
        NoncurrentDays = {
            type = "number",
        },
        StorageClass = {
            type = "string",
        },
    },
}

M.ExpirationStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.Transition = {
    type = "structure",
    members = {
        Date = {
            type = "timestamp",
        },
        Days = {
            type = "number",
        },
        StorageClass = {
            type = "string",
        },
    },
}

M.LifecycleRule = {
    type = "structure",
    members = {
        Expiration = {
            type = "structure",
        },
        ID = {
            type = "string",
        },
        Filter = {
            type = "structure",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Transitions = {
            type = "list",
            member_type = "structure",
        },
        NoncurrentVersionTransitions = {
            type = "list",
            member_type = "structure",
        },
        NoncurrentVersionExpiration = {
            type = "structure",
        },
        AbortIncompleteMultipartUpload = {
            type = "structure",
        },
    },
}

M.GetBucketLifecycleConfigurationOutput = {
    type = "structure",
    members = {
        Rules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetBucketPolicyInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBucketPolicyOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.GetBucketReplicationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMarkerReplicationStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.DeleteMarkerReplication = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EncryptionConfiguration = {
    type = "structure",
    members = {
        ReplicaKmsKeyID = {
            type = "string",
        },
    },
}

M.ReplicationTimeValue = {
    type = "structure",
    members = {
        Minutes = {
            type = "number",
        },
    },
}

M.MetricsStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.Metrics = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventThreshold = {
            type = "structure",
        },
    },
}

M.ReplicationTimeStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.ReplicationTime = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Time = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
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

M.Destination = {
    type = "structure",
    members = {
        Account = {
            type = "string",
        },
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReplicationTime = {
            type = "structure",
        },
        AccessControlTranslation = {
            type = "structure",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
        Metrics = {
            type = "structure",
        },
        StorageClass = {
            type = "string",
        },
    },
}

M.ExistingObjectReplicationStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.ExistingObjectReplication = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReplicationRuleAndOperator = {
    type = "structure",
    members = {
        Prefix = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ReplicationRuleFilter = {
    type = "structure",
    members = {
        Prefix = {
            type = "string",
        },
        Tag = {
            type = "structure",
        },
        And = {
            type = "structure",
        },
    },
}

M.ReplicaModificationsStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.ReplicaModifications = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SseKmsEncryptedObjectsStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.SseKmsEncryptedObjects = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SourceSelectionCriteria = {
    type = "structure",
    members = {
        SseKmsEncryptedObjects = {
            type = "structure",
        },
        ReplicaModifications = {
            type = "structure",
        },
    },
}

M.ReplicationRuleStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.ReplicationRule = {
    type = "structure",
    members = {
        ID = {
            type = "string",
        },
        Priority = {
            type = "number",
        },
        Prefix = {
            type = "string",
        },
        Filter = {
            type = "structure",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceSelectionCriteria = {
            type = "structure",
        },
        ExistingObjectReplication = {
            type = "structure",
        },
        Destination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DeleteMarkerReplication = {
            type = "structure",
        },
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReplicationConfiguration = {
    type = "structure",
    members = {
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rules = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetBucketReplicationOutput = {
    type = "structure",
    members = {
        ReplicationConfiguration = {
            type = "structure",
        },
    },
}

M.GetBucketTaggingInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBucketTaggingOutput = {
    type = "structure",
    members = {
        TagSet = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetBucketVersioningInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MFADeleteStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.BucketVersioningStatus = {
    Enabled = "Enabled",
    Suspended = "Suspended",
}

M.GetBucketVersioningOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        MFADelete = {
            type = "string",
            traits = {
                xml_name = "MfaDelete",
            },
        },
    },
}

M.Privilege = {
    Minimal = "Minimal",
    Default = "Default",
}

M.GetDataAccessInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Target = {
            type = "string",
            traits = {
                http_query = "target",
                required = true,
            },
        },
        Permission = {
            type = "string",
            traits = {
                http_query = "permission",
                required = true,
            },
        },
        DurationSeconds = {
            type = "number",
            traits = {
                http_query = "durationSeconds",
            },
        },
        Privilege = {
            type = "string",
            traits = {
                http_query = "privilege",
            },
        },
        TargetType = {
            type = "string",
            traits = {
                http_query = "targetType",
            },
        },
        AuditContext = {
            type = "string",
            traits = {
                http_query = "auditContext",
            },
        },
    },
}

M.Credentials = {
    type = "structure",
    members = {
        AccessKeyId = {
            type = "string",
        },
        SecretAccessKey = {
            type = "string",
        },
        SessionToken = {
            type = "string",
        },
        Expiration = {
            type = "timestamp",
        },
    },
}

M.GetDataAccessOutput = {
    type = "structure",
    members = {
        Credentials = {
            type = "structure",
        },
        MatchedGrantTarget = {
            type = "string",
        },
        Grantee = {
            type = "structure",
        },
    },
}

M.GetJobTaggingInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetJobTaggingOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetMultiRegionAccessPointInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RegionReport = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        BucketAccountId = {
            type = "string",
        },
    },
}

M.MultiRegionAccessPointStatus = {
    READY = "READY",
    INCONSISTENT_ACROSS_REGIONS = "INCONSISTENT_ACROSS_REGIONS",
    CREATING = "CREATING",
    PARTIALLY_CREATED = "PARTIALLY_CREATED",
    PARTIALLY_DELETED = "PARTIALLY_DELETED",
    DELETING = "DELETING",
}

M.MultiRegionAccessPointReport = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Alias = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
        PublicAccessBlock = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        Regions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetMultiRegionAccessPointOutput = {
    type = "structure",
    members = {
        AccessPoint = {
            type = "structure",
        },
    },
}

M.GetMultiRegionAccessPointPolicyInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EstablishedMultiRegionAccessPointPolicy = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.ProposedMultiRegionAccessPointPolicy = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.MultiRegionAccessPointPolicyDocument = {
    type = "structure",
    members = {
        Established = {
            type = "structure",
        },
        Proposed = {
            type = "structure",
        },
    },
}

M.GetMultiRegionAccessPointPolicyOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "structure",
        },
    },
}

M.GetMultiRegionAccessPointPolicyStatusInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMultiRegionAccessPointPolicyStatusOutput = {
    type = "structure",
    members = {
        Established = {
            type = "structure",
        },
    },
}

M.GetMultiRegionAccessPointRoutesInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Mrap = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MultiRegionAccessPointRoute = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        TrafficDialPercentage = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMultiRegionAccessPointRoutesOutput = {
    type = "structure",
    members = {
        Mrap = {
            type = "string",
        },
        Routes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetPublicAccessBlockInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
    },
}

M.GetPublicAccessBlockOutput = {
    type = "structure",
    members = {
        PublicAccessBlockConfiguration = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.NoSuchPublicAccessBlockConfiguration = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetStorageLensConfigurationInput = {
    type = "structure",
    members = {
        ConfigId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
    },
}

M.StorageLensAwsOrg = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CloudWatchMetrics = {
    type = "structure",
    members = {
        IsEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.SSEKMS = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SSES3 = {
    type = "structure",
}

M.StorageLensDataExportEncryption = {
    type = "structure",
    members = {
        SSES3 = {
            type = "structure",
            traits = {
                xml_name = "SSE-S3",
            },
        },
        SSEKMS = {
            type = "structure",
            traits = {
                xml_name = "SSE-KMS",
            },
        },
    },
}

M.Format = {
    CSV = "CSV",
    Parquet = "Parquet",
}

M.OutputSchemaVersion = {
    V_1 = "V_1",
}

M.S3BucketDestination = {
    type = "structure",
    members = {
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputSchemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Prefix = {
            type = "string",
        },
        Encryption = {
            type = "structure",
        },
    },
}

M.StorageLensTableDestination = {
    type = "structure",
    members = {
        IsEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Encryption = {
            type = "structure",
        },
    },
}

M.StorageLensDataExport = {
    type = "structure",
    members = {
        S3BucketDestination = {
            type = "structure",
        },
        CloudWatchMetrics = {
            type = "structure",
        },
        StorageLensTableDestination = {
            type = "structure",
        },
    },
}

M.Exclude = {
    type = "structure",
    members = {
        Buckets = {
            type = "list",
            member_type = "string",
        },
        Regions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.StorageLensExpandedPrefixesDataExport = {
    type = "structure",
    members = {
        S3BucketDestination = {
            type = "structure",
        },
        StorageLensTableDestination = {
            type = "structure",
        },
    },
}

M.Include = {
    type = "structure",
    members = {
        Buckets = {
            type = "list",
            member_type = "string",
        },
        Regions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.StorageLensConfiguration = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountLevel = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Include = {
            type = "structure",
        },
        Exclude = {
            type = "structure",
        },
        DataExport = {
            type = "structure",
        },
        ExpandedPrefixesDataExport = {
            type = "structure",
        },
        IsEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        AwsOrg = {
            type = "structure",
        },
        StorageLensArn = {
            type = "string",
        },
        PrefixDelimiter = {
            type = "string",
        },
    },
}

M.GetStorageLensConfigurationOutput = {
    type = "structure",
    members = {
        StorageLensConfiguration = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.GetStorageLensConfigurationTaggingInput = {
    type = "structure",
    members = {
        ConfigId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
    },
}

M.StorageLensTag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetStorageLensConfigurationTaggingOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetStorageLensGroupInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
    },
}

M.GetStorageLensGroupOutput = {
    type = "structure",
    members = {
        StorageLensGroup = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.ListAccessGrantsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        GranteeType = {
            type = "string",
            traits = {
                http_query = "granteetype",
            },
        },
        GranteeIdentifier = {
            type = "string",
            traits = {
                http_query = "granteeidentifier",
            },
        },
        Permission = {
            type = "string",
            traits = {
                http_query = "permission",
            },
        },
        GrantScope = {
            type = "string",
            traits = {
                http_query = "grantscope",
            },
        },
        ApplicationArn = {
            type = "string",
            traits = {
                http_query = "application_arn",
            },
        },
    },
}

M.ListAccessGrantsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        AccessGrantsList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListAccessGrantsInstancesInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAccessGrantsInstancesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        AccessGrantsInstancesList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListAccessGrantsLocationsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        LocationScope = {
            type = "string",
            traits = {
                http_query = "locationscope",
            },
        },
    },
}

M.ListAccessGrantsLocationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        AccessGrantsLocationsList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListAccessPointsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_query = "bucket",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        DataSourceId = {
            type = "string",
            traits = {
                http_query = "dataSourceId",
            },
        },
        DataSourceType = {
            type = "string",
            traits = {
                http_query = "dataSourceType",
            },
        },
    },
}

M.ListAccessPointsOutput = {
    type = "structure",
    members = {
        AccessPointList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAccessPointsForDirectoryBucketsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        DirectoryBucket = {
            type = "string",
            traits = {
                http_query = "directoryBucket",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAccessPointsForDirectoryBucketsOutput = {
    type = "structure",
    members = {
        AccessPointList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAccessPointsForObjectLambdaInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ObjectLambdaAccessPoint = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectLambdaAccessPointArn = {
            type = "string",
        },
        Alias = {
            type = "structure",
        },
    },
}

M.ListAccessPointsForObjectLambdaOutput = {
    type = "structure",
    members = {
        ObjectLambdaAccessPointList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCallerAccessGrantsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        GrantScope = {
            type = "string",
            traits = {
                http_query = "grantscope",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        AllowedByApplication = {
            type = "boolean",
            traits = {
                http_query = "allowedByApplication",
            },
        },
    },
}

M.ListCallerAccessGrantsEntry = {
    type = "structure",
    members = {
        Permission = {
            type = "string",
        },
        GrantScope = {
            type = "string",
        },
        ApplicationArn = {
            type = "string",
        },
    },
}

M.ListCallerAccessGrantsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        CallerAccessGrantsList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListJobsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        JobStatuses = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "jobStatuses",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
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

M.JobListDescriptor = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Operation = {
            type = "string",
        },
        Priority = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        TerminationDate = {
            type = "timestamp",
        },
        ProgressSummary = {
            type = "structure",
        },
    },
}

M.ListJobsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Jobs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListMultiRegionAccessPointsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListMultiRegionAccessPointsOutput = {
    type = "structure",
    members = {
        AccessPoints = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRegionalBucketsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        OutpostId = {
            type = "string",
            traits = {
                http_header = "x-amz-outpost-id",
            },
        },
    },
}

M.RegionalBucket = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketArn = {
            type = "string",
        },
        PublicAccessBlockEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        CreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        OutpostId = {
            type = "string",
        },
    },
}

M.ListRegionalBucketsOutput = {
    type = "structure",
    members = {
        RegionalBucketList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStorageLensConfigurationsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListStorageLensConfigurationEntry = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StorageLensArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HomeRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsEnabled = {
            type = "boolean",
        },
    },
}

M.ListStorageLensConfigurationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        StorageLensConfigurationList = {
            type = "list",
            member_type = "structure",
            traits = {
                xml_name = "StorageLensConfiguration",
            },
        },
    },
}

M.ListStorageLensGroupsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ListStorageLensGroupEntry = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StorageLensGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HomeRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListStorageLensGroupsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        StorageLensGroupList = {
            type = "list",
            member_type = "structure",
            traits = {
                xml_name = "StorageLensGroup",
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutAccessGrantsInstanceResourcePolicyInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Organization = {
            type = "string",
        },
    },
}

M.PutAccessGrantsInstanceResourcePolicyOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
        Organization = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
        },
    },
}

M.PutAccessPointConfigurationForObjectLambdaInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutAccessPointConfigurationForObjectLambdaOutput = {
    type = "structure",
}

M.PutAccessPointPolicyInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutAccessPointPolicyOutput = {
    type = "structure",
}

M.PutAccessPointPolicyForObjectLambdaInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutAccessPointPolicyForObjectLambdaOutput = {
    type = "structure",
}

M.PutAccessPointScopeInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Scope = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutAccessPointScopeOutput = {
    type = "structure",
}

M.LifecycleConfiguration = {
    type = "structure",
    members = {
        Rules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutBucketLifecycleConfigurationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LifecycleConfiguration = {
            type = "structure",
            traits = {
                http_payload = true,
                xml_name = "LifecycleConfiguration",
            },
        },
    },
}

M.PutBucketLifecycleConfigurationOutput = {
    type = "structure",
}

M.PutBucketPolicyInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConfirmRemoveSelfBucketAccess = {
            type = "boolean",
            traits = {
                http_header = "x-amz-confirm-remove-self-bucket-access",
            },
        },
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutBucketPolicyOutput = {
    type = "structure",
}

M.PutBucketReplicationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ReplicationConfiguration = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "ReplicationConfiguration",
            },
        },
    },
}

M.PutBucketReplicationOutput = {
    type = "structure",
}

M.Tagging = {
    type = "structure",
    members = {
        TagSet = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutBucketTaggingInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tagging = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "Tagging",
            },
        },
    },
}

M.PutBucketTaggingOutput = {
    type = "structure",
}

M.MFADelete = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.VersioningConfiguration = {
    type = "structure",
    members = {
        MFADelete = {
            type = "string",
            traits = {
                xml_name = "MfaDelete",
            },
        },
        Status = {
            type = "string",
        },
    },
}

M.PutBucketVersioningInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MFA = {
            type = "string",
            traits = {
                http_header = "x-amz-mfa",
            },
        },
        VersioningConfiguration = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "VersioningConfiguration",
            },
        },
    },
}

M.PutBucketVersioningOutput = {
    type = "structure",
}

M.PutJobTaggingInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutJobTaggingOutput = {
    type = "structure",
}

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutMultiRegionAccessPointPolicyOperationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Details = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutMultiRegionAccessPointPolicyOutput = {
    type = "structure",
    members = {
        RequestTokenARN = {
            type = "string",
        },
    },
}

M.PutPublicAccessBlockInput = {
    type = "structure",
    members = {
        PublicAccessBlockConfiguration = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "PublicAccessBlockConfiguration",
            },
        },
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
    },
}

M.PutPublicAccessBlockOutput = {
    type = "structure",
}

M.PutStorageLensConfigurationInput = {
    type = "structure",
    members = {
        ConfigId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        StorageLensConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutStorageLensConfigurationOutput = {
    type = "structure",
}

M.PutStorageLensConfigurationTaggingInput = {
    type = "structure",
    members = {
        ConfigId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutStorageLensConfigurationTaggingOutput = {
    type = "structure",
}

M.SubmitMultiRegionAccessPointRoutesInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        Mrap = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RouteUpdates = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SubmitMultiRegionAccessPointRoutesOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateAccessGrantsLocationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        AccessGrantsLocationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IAMRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAccessGrantsLocationOutput = {
    type = "structure",
    members = {
        CreatedAt = {
            type = "timestamp",
        },
        AccessGrantsLocationId = {
            type = "string",
        },
        AccessGrantsLocationArn = {
            type = "string",
        },
        LocationScope = {
            type = "string",
        },
        IAMRoleArn = {
            type = "string",
        },
    },
}

M.UpdateJobPriorityInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Priority = {
            type = "number",
            traits = {
                http_query = "priority",
                required = true,
            },
        },
    },
}

M.UpdateJobPriorityOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Priority = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.JobStatusException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RequestedJobStatus = {
    Cancelled = "Cancelled",
    Ready = "Ready",
}

M.UpdateJobStatusInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RequestedJobStatus = {
            type = "string",
            traits = {
                http_query = "requestedJobStatus",
                required = true,
            },
        },
        StatusUpdateReason = {
            type = "string",
            traits = {
                http_query = "statusUpdateReason",
            },
        },
    },
}

M.UpdateJobStatusOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusUpdateReason = {
            type = "string",
        },
    },
}

M.UpdateStorageLensGroupInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        StorageLensGroup = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateStorageLensGroupOutput = {
    type = "structure",
}

return M
