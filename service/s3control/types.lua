local M = {}

M.AbortIncompleteMultipartUpload = {
    type = "structure",
    id = "AbortIncompleteMultipartUpload",
    members = {
        DaysAfterInitiation = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.OwnerOverride = {
    Destination = "Destination",
}

M.AccessControlTranslation = {
    type = "structure",
    id = "AccessControlTranslation",
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
    id = "ListAccessGrantsInstanceEntry",
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
    id = "AccessGrantsLocationConfiguration",
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
    id = "Grantee",
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
    id = "ListAccessGrantEntry",
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
        Grantee = M.Grantee,
        Permission = {
            type = "string",
        },
        AccessGrantsLocationId = {
            type = "string",
        },
        AccessGrantsLocationConfiguration = M.AccessGrantsLocationConfiguration,
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
    id = "ListAccessGrantsLocationsEntry",
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
    id = "VpcConfiguration",
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
    id = "AccessPoint",
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
        VpcConfiguration = M.VpcConfiguration,
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
    id = "ActivityMetrics",
    members = {
        IsEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AdvancedCostOptimizationMetrics = {
    type = "structure",
    id = "AdvancedCostOptimizationMetrics",
    members = {
        IsEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AdvancedDataProtectionMetrics = {
    type = "structure",
    id = "AdvancedDataProtectionMetrics",
    members = {
        IsEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AdvancedPerformanceMetrics = {
    type = "structure",
    id = "AdvancedPerformanceMetrics",
    members = {
        IsEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DetailedStatusCodesMetrics = {
    type = "structure",
    id = "DetailedStatusCodesMetrics",
    members = {
        IsEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.SelectionCriteria = {
    type = "structure",
    id = "SelectionCriteria",
    members = {
        Delimiter = {
            type = "string",
        },
        MaxDepth = {
            type = "integer",
        },
        MinStorageBytesPercentage = {
            type = "double",
        },
    },
}

M.PrefixLevelStorageMetrics = {
    type = "structure",
    id = "PrefixLevelStorageMetrics",
    members = {
        IsEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SelectionCriteria = M.SelectionCriteria,
    },
}

M.PrefixLevel = {
    type = "structure",
    id = "PrefixLevel",
    members = {
        StorageMetrics = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PrefixLevelStorageMetrics }),
    },
}

M.BucketLevel = {
    type = "structure",
    id = "BucketLevel",
    members = {
        ActivityMetrics = M.ActivityMetrics,
        PrefixLevel = M.PrefixLevel,
        AdvancedCostOptimizationMetrics = M.AdvancedCostOptimizationMetrics,
        AdvancedDataProtectionMetrics = M.AdvancedDataProtectionMetrics,
        DetailedStatusCodesMetrics = M.DetailedStatusCodesMetrics,
        AdvancedPerformanceMetrics = M.AdvancedPerformanceMetrics,
    },
}

M.StorageLensGroupLevelSelectionCriteria = {
    type = "structure",
    id = "StorageLensGroupLevelSelectionCriteria",
    members = {
        Include = {
            type = "list",
            member = { type = "string" },
        },
        Exclude = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StorageLensGroupLevel = {
    type = "structure",
    id = "StorageLensGroupLevel",
    members = {
        SelectionCriteria = M.StorageLensGroupLevelSelectionCriteria,
    },
}

M.AccountLevel = {
    type = "structure",
    id = "AccountLevel",
    members = {
        ActivityMetrics = M.ActivityMetrics,
        BucketLevel = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BucketLevel }),
        AdvancedCostOptimizationMetrics = M.AdvancedCostOptimizationMetrics,
        AdvancedDataProtectionMetrics = M.AdvancedDataProtectionMetrics,
        DetailedStatusCodesMetrics = M.DetailedStatusCodesMetrics,
        AdvancedPerformanceMetrics = M.AdvancedPerformanceMetrics,
        StorageLensGroupLevel = M.StorageLensGroupLevel,
    },
}

M.AssociateAccessGrantsIdentityCenterInput = {
    type = "structure",
    id = "AssociateAccessGrantsIdentityCenterInput",
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
    id = "AssociateAccessGrantsIdentityCenterOutput",
}

M.AsyncErrorDetails = {
    type = "structure",
    id = "AsyncErrorDetails",
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
    id = "PublicAccessBlockConfiguration",
    members = {
        BlockPublicAcls = {
            type = "boolean",
            traits = {
                default = false,
                xml_name = "BlockPublicAcls",
            },
        },
        IgnorePublicAcls = {
            type = "boolean",
            traits = {
                default = false,
                xml_name = "IgnorePublicAcls",
            },
        },
        BlockPublicPolicy = {
            type = "boolean",
            traits = {
                default = false,
                xml_name = "BlockPublicPolicy",
            },
        },
        RestrictPublicBuckets = {
            type = "boolean",
            traits = {
                default = false,
                xml_name = "RestrictPublicBuckets",
            },
        },
    },
}

M.Region = {
    type = "structure",
    id = "Region",
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
    id = "CreateMultiRegionAccessPointInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PublicAccessBlock = M.PublicAccessBlockConfiguration,
        Regions = {
            type = "list",
            member = M.Region,
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMultiRegionAccessPointInput = {
    type = "structure",
    id = "DeleteMultiRegionAccessPointInput",
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
    id = "PutMultiRegionAccessPointPolicyInput",
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
    id = "AsyncRequestParameters",
    members = {
        CreateMultiRegionAccessPointRequest = M.CreateMultiRegionAccessPointInput,
        DeleteMultiRegionAccessPointRequest = M.DeleteMultiRegionAccessPointInput,
        PutMultiRegionAccessPointPolicyRequest = M.PutMultiRegionAccessPointPolicyInput,
    },
}

M.MultiRegionAccessPointRegionalResponse = {
    type = "structure",
    id = "MultiRegionAccessPointRegionalResponse",
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
    id = "MultiRegionAccessPointsAsyncResponse",
    members = {
        Regions = {
            type = "list",
            member = M.MultiRegionAccessPointRegionalResponse,
        },
    },
}

M.AsyncResponseDetails = {
    type = "structure",
    id = "AsyncResponseDetails",
    members = {
        MultiRegionAccessPointDetails = M.MultiRegionAccessPointsAsyncResponse,
        ErrorDetails = M.AsyncErrorDetails,
    },
}

M.AsyncOperation = {
    type = "structure",
    id = "AsyncOperation",
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
        RequestParameters = M.AsyncRequestParameters,
        RequestStatus = {
            type = "string",
        },
        ResponseDetails = M.AsyncResponseDetails,
    },
}

M.AwsLambdaTransformation = {
    type = "structure",
    id = "AwsLambdaTransformation",
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
    id = "Tag",
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
    id = "CreateAccessGrantInput",
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
        AccessGrantsLocationConfiguration = M.AccessGrantsLocationConfiguration,
        Grantee = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Grantee }),
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
            member = M.Tag,
        },
    },
}

M.CreateAccessGrantOutput = {
    type = "structure",
    id = "CreateAccessGrantOutput",
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
        Grantee = M.Grantee,
        AccessGrantsLocationId = {
            type = "string",
        },
        AccessGrantsLocationConfiguration = M.AccessGrantsLocationConfiguration,
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
    id = "CreateAccessGrantsInstanceInput",
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
            member = M.Tag,
        },
    },
}

M.CreateAccessGrantsInstanceOutput = {
    type = "structure",
    id = "CreateAccessGrantsInstanceOutput",
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
    id = "CreateAccessGrantsLocationInput",
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
            member = M.Tag,
        },
    },
}

M.CreateAccessGrantsLocationOutput = {
    type = "structure",
    id = "CreateAccessGrantsLocationOutput",
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
    id = "Scope",
    members = {
        Prefixes = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_name = "Prefixes",
            },
        },
        Permissions = {
            type = "list",
            member = { type = "string" },
            traits = {
                xml_name = "Permissions",
            },
        },
    },
}

M.CreateAccessPointInput = {
    type = "structure",
    id = "CreateAccessPointInput",
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
        VpcConfiguration = M.VpcConfiguration,
        PublicAccessBlockConfiguration = M.PublicAccessBlockConfiguration,
        BucketAccountId = {
            type = "string",
        },
        Scope = M.Scope,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateAccessPointOutput = {
    type = "structure",
    id = "CreateAccessPointOutput",
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
    id = "ObjectLambdaContentTransformation",
    members = {
        AwsLambda = M.AwsLambdaTransformation,
    },
}

M.ObjectLambdaTransformationConfiguration = {
    type = "structure",
    id = "ObjectLambdaTransformationConfiguration",
    members = {
        Actions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ContentTransformation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectLambdaContentTransformation }),
    },
}

M.ObjectLambdaConfiguration = {
    type = "structure",
    id = "ObjectLambdaConfiguration",
    members = {
        SupportingAccessPoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CloudWatchMetricsEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AllowedFeatures = {
            type = "list",
            member = { type = "string" },
        },
        TransformationConfigurations = {
            type = "list",
            member = M.ObjectLambdaTransformationConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAccessPointForObjectLambdaInput = {
    type = "structure",
    id = "CreateAccessPointForObjectLambdaInput",
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
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectLambdaConfiguration }),
    },
}

M.ObjectLambdaAccessPointAliasStatus = {
    PROVISIONING = "PROVISIONING",
    READY = "READY",
}

M.ObjectLambdaAccessPointAlias = {
    type = "structure",
    id = "ObjectLambdaAccessPointAlias",
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
    id = "CreateAccessPointForObjectLambdaOutput",
    members = {
        ObjectLambdaAccessPointArn = {
            type = "string",
        },
        Alias = M.ObjectLambdaAccessPointAlias,
    },
}

M.BucketAlreadyExists = {
    type = "structure",
    id = "BucketAlreadyExists",
    error = "client",
}

M.BucketAlreadyOwnedByYou = {
    type = "structure",
    id = "BucketAlreadyOwnedByYou",
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
    id = "CreateBucketConfiguration",
    members = {
        LocationConstraint = {
            type = "string",
        },
    },
}

M.CreateBucketInput = {
    type = "structure",
    id = "CreateBucketInput",
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
        CreateBucketConfiguration = setmetatable({ traits = {
            http_payload = true,
            xml_name = "CreateBucketConfiguration",
        } }, { __index = M.CreateBucketConfiguration }),
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
                default = false,
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
    id = "CreateBucketOutput",
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
    id = "BadRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.JobManifestLocation = {
    type = "structure",
    id = "JobManifestLocation",
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
    id = "JobManifestSpec",
    members = {
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Fields = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.JobManifest = {
    type = "structure",
    id = "JobManifest",
    members = {
        Spec = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobManifestSpec }),
        Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobManifestLocation }),
    },
}

M.KeyNameConstraint = {
    type = "structure",
    id = "KeyNameConstraint",
    members = {
        MatchAnyPrefix = {
            type = "list",
            member = { type = "string" },
        },
        MatchAnySuffix = {
            type = "list",
            member = { type = "string" },
        },
        MatchAnySubstring = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DSSEKMSFilter = {
    type = "structure",
    id = "DSSEKMSFilter",
    members = {
        KmsKeyArn = {
            type = "string",
        },
    },
}

M.NotSSEFilter = {
    type = "structure",
    id = "NotSSEFilter",
}

M.SSECFilter = {
    type = "structure",
    id = "SSECFilter",
}

M.SSEKMSFilter = {
    type = "structure",
    id = "SSEKMSFilter",
    members = {
        KmsKeyArn = {
            type = "string",
        },
        BucketKeyEnabled = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.SSES3Filter = {
    type = "structure",
    id = "SSES3Filter",
}

M.ObjectEncryptionFilter = {
    type = "union",
    id = "ObjectEncryptionFilter",
    members = {
        SSES3 = setmetatable({ traits = {
            xml_name = "SSE-S3",
        } }, { __index = M.SSES3Filter }),
        SSEKMS = setmetatable({ traits = {
            xml_name = "SSE-KMS",
        } }, { __index = M.SSEKMSFilter }),
        DSSEKMS = setmetatable({ traits = {
            xml_name = "DSSE-KMS",
        } }, { __index = M.DSSEKMSFilter }),
        SSEC = setmetatable({ traits = {
            xml_name = "SSE-C",
        } }, { __index = M.SSECFilter }),
        NOTSSE = setmetatable({ traits = {
            xml_name = "NOT-SSE",
        } }, { __index = M.NotSSEFilter }),
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
    id = "JobManifestGeneratorFilter",
    members = {
        EligibleForReplication = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        CreatedAfter = {
            type = "timestamp",
        },
        CreatedBefore = {
            type = "timestamp",
        },
        ObjectReplicationStatuses = {
            type = "list",
            member = { type = "string" },
        },
        KeyNameConstraint = M.KeyNameConstraint,
        ObjectSizeGreaterThanBytes = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        ObjectSizeLessThanBytes = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        MatchAnyStorageClass = {
            type = "list",
            member = { type = "string" },
        },
        MatchAnyObjectEncryption = {
            type = "list",
            member = M.ObjectEncryptionFilter,
        },
    },
}

M.SSEKMSEncryption = {
    type = "structure",
    id = "SSEKMSEncryption",
    traits = {
        xml_name = "SSE-KMS",
    },
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
    id = "SSES3Encryption",
    traits = {
        xml_name = "SSE-S3",
    },
}

M.GeneratedManifestEncryption = {
    type = "structure",
    id = "GeneratedManifestEncryption",
    members = {
        SSES3 = setmetatable({ traits = {
            xml_name = "SSE-S3",
        } }, { __index = M.SSES3Encryption }),
        SSEKMS = setmetatable({ traits = {
            xml_name = "SSE-KMS",
        } }, { __index = M.SSEKMSEncryption }),
    },
}

M.GeneratedManifestFormat = {
    S3InventoryReport_CSV_20211130 = "S3InventoryReport_CSV_20211130",
}

M.S3ManifestOutputLocation = {
    type = "structure",
    id = "S3ManifestOutputLocation",
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
        ManifestEncryption = M.GeneratedManifestEncryption,
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
    id = "S3JobManifestGenerator",
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
        ManifestOutputLocation = M.S3ManifestOutputLocation,
        Filter = M.JobManifestGeneratorFilter,
        EnableManifestOutput = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.JobManifestGenerator = {
    type = "union",
    id = "JobManifestGenerator",
    members = {
        S3JobManifestGenerator = M.S3JobManifestGenerator,
    },
}

M.LambdaInvokeOperation = {
    type = "structure",
    id = "LambdaInvokeOperation",
    members = {
        FunctionArn = {
            type = "string",
        },
        InvocationSchemaVersion = {
            type = "string",
        },
        UserArguments = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "S3ComputeObjectChecksumOperation",
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
    id = "S3DeleteObjectTaggingOperation",
}

M.S3GlacierJobTier = {
    BULK = "BULK",
    STANDARD = "STANDARD",
}

M.S3InitiateRestoreObjectOperation = {
    type = "structure",
    id = "S3InitiateRestoreObjectOperation",
    members = {
        ExpirationInDays = {
            type = "integer",
            traits = {
                default = nil,
            },
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
    id = "S3Grantee",
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
    id = "S3Grant",
    members = {
        Grantee = M.S3Grantee,
        Permission = {
            type = "string",
        },
    },
}

M.S3ObjectOwner = {
    type = "structure",
    id = "S3ObjectOwner",
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
    id = "S3AccessControlList",
    members = {
        Owner = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3ObjectOwner }),
        Grants = {
            type = "list",
            member = M.S3Grant,
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
    id = "S3AccessControlPolicy",
    members = {
        AccessControlList = M.S3AccessControlList,
        CannedAccessControlList = {
            type = "string",
        },
    },
}

M.S3SetObjectAclOperation = {
    type = "structure",
    id = "S3SetObjectAclOperation",
    members = {
        AccessControlPolicy = M.S3AccessControlPolicy,
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
    id = "S3ObjectMetadata",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        ContentLength = {
            type = "long",
            traits = {
                default = nil,
            },
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
            traits = {
                default = false,
            },
        },
        SSEAlgorithm = {
            type = "string",
        },
    },
}

M.S3Tag = {
    type = "structure",
    id = "S3Tag",
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
    id = "S3CopyObjectOperation",
    members = {
        TargetResource = {
            type = "string",
        },
        CannedAccessControlList = {
            type = "string",
        },
        AccessControlGrants = {
            type = "list",
            member = M.S3Grant,
        },
        MetadataDirective = {
            type = "string",
        },
        ModifiedSinceConstraint = {
            type = "timestamp",
        },
        NewObjectMetadata = M.S3ObjectMetadata,
        NewObjectTagging = {
            type = "list",
            member = M.S3Tag,
        },
        RedirectLocation = {
            type = "string",
        },
        RequesterPays = {
            type = "boolean",
            traits = {
                default = false,
            },
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
            traits = {
                default = false,
            },
        },
        ChecksumAlgorithm = {
            type = "string",
        },
    },
}

M.S3ObjectLockLegalHold = {
    type = "structure",
    id = "S3ObjectLockLegalHold",
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
    id = "S3SetObjectLegalHoldOperation",
    members = {
        LegalHold = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3ObjectLockLegalHold }),
    },
}

M.S3ObjectLockRetentionMode = {
    COMPLIANCE = "COMPLIANCE",
    GOVERNANCE = "GOVERNANCE",
}

M.S3Retention = {
    type = "structure",
    id = "S3Retention",
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
    id = "S3SetObjectRetentionOperation",
    members = {
        BypassGovernanceRetention = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        Retention = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Retention }),
    },
}

M.S3SetObjectTaggingOperation = {
    type = "structure",
    id = "S3SetObjectTaggingOperation",
    members = {
        TagSet = {
            type = "list",
            member = M.S3Tag,
        },
    },
}

M.S3ReplicateObjectOperation = {
    type = "structure",
    id = "S3ReplicateObjectOperation",
}

M.S3UpdateObjectEncryptionSSEKMS = {
    type = "structure",
    id = "S3UpdateObjectEncryptionSSEKMS",
    traits = {
        xml_name = "SSE-KMS",
    },
    members = {
        KMSKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BucketKeyEnabled = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.ObjectEncryption = {
    type = "structure",
    id = "ObjectEncryption",
    members = {
        SSEKMS = setmetatable({ traits = {
            xml_name = "SSE-KMS",
        } }, { __index = M.S3UpdateObjectEncryptionSSEKMS }),
    },
}

M.S3UpdateObjectEncryptionOperation = {
    type = "structure",
    id = "S3UpdateObjectEncryptionOperation",
    members = {
        ObjectEncryption = M.ObjectEncryption,
    },
}

M.JobOperation = {
    type = "structure",
    id = "JobOperation",
    members = {
        LambdaInvoke = M.LambdaInvokeOperation,
        S3PutObjectCopy = M.S3CopyObjectOperation,
        S3PutObjectAcl = M.S3SetObjectAclOperation,
        S3PutObjectTagging = M.S3SetObjectTaggingOperation,
        S3DeleteObjectTagging = M.S3DeleteObjectTaggingOperation,
        S3InitiateRestoreObject = M.S3InitiateRestoreObjectOperation,
        S3PutObjectLegalHold = M.S3SetObjectLegalHoldOperation,
        S3PutObjectRetention = M.S3SetObjectRetentionOperation,
        S3ReplicateObject = M.S3ReplicateObjectOperation,
        S3ComputeObjectChecksum = M.S3ComputeObjectChecksumOperation,
        S3UpdateObjectEncryption = M.S3UpdateObjectEncryptionOperation,
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
    id = "JobReport",
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
                default = false,
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
    id = "CreateJobInput",
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
            traits = {
                default = nil,
            },
        },
        Operation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobOperation }),
        Report = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobReport }),
        ClientRequestToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        Manifest = M.JobManifest,
        Description = {
            type = "string",
        },
        Priority = {
            type = "integer",
            traits = {
                default = nil,
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
            member = M.S3Tag,
        },
        ManifestGenerator = M.JobManifestGenerator,
    },
}

M.CreateJobOutput = {
    type = "structure",
    id = "CreateJobOutput",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.IdempotencyException = {
    type = "structure",
    id = "IdempotencyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    id = "InternalServiceException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateMultiRegionAccessPointOperationInput = {
    type = "structure",
    id = "CreateMultiRegionAccessPointOperationInput",
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
                idempotency_token = true,
                required = true,
            },
        },
        Details = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CreateMultiRegionAccessPointInput }),
    },
}

M.CreateMultiRegionAccessPointOutput = {
    type = "structure",
    id = "CreateMultiRegionAccessPointOutput",
    members = {
        RequestTokenARN = {
            type = "string",
        },
    },
}

M.MatchObjectAge = {
    type = "structure",
    id = "MatchObjectAge",
    members = {
        DaysGreaterThan = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        DaysLessThan = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.MatchObjectSize = {
    type = "structure",
    id = "MatchObjectSize",
    members = {
        BytesGreaterThan = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        BytesLessThan = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.StorageLensGroupAndOperator = {
    type = "structure",
    id = "StorageLensGroupAndOperator",
    members = {
        MatchAnyPrefix = {
            type = "list",
            member = { type = "string" },
        },
        MatchAnySuffix = {
            type = "list",
            member = { type = "string" },
        },
        MatchAnyTag = {
            type = "list",
            member = M.S3Tag,
        },
        MatchObjectAge = M.MatchObjectAge,
        MatchObjectSize = M.MatchObjectSize,
    },
}

M.StorageLensGroupOrOperator = {
    type = "structure",
    id = "StorageLensGroupOrOperator",
    members = {
        MatchAnyPrefix = {
            type = "list",
            member = { type = "string" },
        },
        MatchAnySuffix = {
            type = "list",
            member = { type = "string" },
        },
        MatchAnyTag = {
            type = "list",
            member = M.S3Tag,
        },
        MatchObjectAge = M.MatchObjectAge,
        MatchObjectSize = M.MatchObjectSize,
    },
}

M.StorageLensGroupFilter = {
    type = "structure",
    id = "StorageLensGroupFilter",
    members = {
        MatchAnyPrefix = {
            type = "list",
            member = { type = "string" },
        },
        MatchAnySuffix = {
            type = "list",
            member = { type = "string" },
        },
        MatchAnyTag = {
            type = "list",
            member = M.S3Tag,
        },
        MatchObjectAge = M.MatchObjectAge,
        MatchObjectSize = M.MatchObjectSize,
        And = M.StorageLensGroupAndOperator,
        Or = M.StorageLensGroupOrOperator,
    },
}

M.StorageLensGroup = {
    type = "structure",
    id = "StorageLensGroup",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StorageLensGroupFilter }),
        StorageLensGroupArn = {
            type = "string",
        },
    },
}

M.CreateStorageLensGroupInput = {
    type = "structure",
    id = "CreateStorageLensGroupInput",
    members = {
        AccountId = {
            type = "string",
            traits = {
                http_header = "x-amz-account-id",
                required = true,
            },
        },
        StorageLensGroup = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StorageLensGroup }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateStorageLensGroupOutput = {
    type = "structure",
    id = "CreateStorageLensGroupOutput",
}

M.DeleteAccessGrantInput = {
    type = "structure",
    id = "DeleteAccessGrantInput",
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
    id = "DeleteAccessGrantOutput",
}

M.DeleteAccessGrantsInstanceInput = {
    type = "structure",
    id = "DeleteAccessGrantsInstanceInput",
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
    id = "DeleteAccessGrantsInstanceOutput",
}

M.DeleteAccessGrantsInstanceResourcePolicyInput = {
    type = "structure",
    id = "DeleteAccessGrantsInstanceResourcePolicyInput",
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
    id = "DeleteAccessGrantsInstanceResourcePolicyOutput",
}

M.DeleteAccessGrantsLocationInput = {
    type = "structure",
    id = "DeleteAccessGrantsLocationInput",
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
    id = "DeleteAccessGrantsLocationOutput",
}

M.DeleteAccessPointInput = {
    type = "structure",
    id = "DeleteAccessPointInput",
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
    id = "DeleteAccessPointOutput",
}

M.DeleteAccessPointForObjectLambdaInput = {
    type = "structure",
    id = "DeleteAccessPointForObjectLambdaInput",
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
    id = "DeleteAccessPointForObjectLambdaOutput",
}

M.DeleteAccessPointPolicyInput = {
    type = "structure",
    id = "DeleteAccessPointPolicyInput",
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
    id = "DeleteAccessPointPolicyOutput",
}

M.DeleteAccessPointPolicyForObjectLambdaInput = {
    type = "structure",
    id = "DeleteAccessPointPolicyForObjectLambdaInput",
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
    id = "DeleteAccessPointPolicyForObjectLambdaOutput",
}

M.DeleteAccessPointScopeInput = {
    type = "structure",
    id = "DeleteAccessPointScopeInput",
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
    id = "DeleteAccessPointScopeOutput",
}

M.DeleteBucketInput = {
    type = "structure",
    id = "DeleteBucketInput",
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
    id = "DeleteBucketOutput",
}

M.DeleteBucketLifecycleConfigurationInput = {
    type = "structure",
    id = "DeleteBucketLifecycleConfigurationInput",
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
    id = "DeleteBucketLifecycleConfigurationOutput",
}

M.DeleteBucketPolicyInput = {
    type = "structure",
    id = "DeleteBucketPolicyInput",
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
    id = "DeleteBucketPolicyOutput",
}

M.DeleteBucketReplicationInput = {
    type = "structure",
    id = "DeleteBucketReplicationInput",
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
    id = "DeleteBucketReplicationOutput",
}

M.DeleteBucketTaggingInput = {
    type = "structure",
    id = "DeleteBucketTaggingInput",
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
    id = "DeleteBucketTaggingOutput",
}

M.DeleteJobTaggingInput = {
    type = "structure",
    id = "DeleteJobTaggingInput",
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
    id = "DeleteJobTaggingOutput",
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteMultiRegionAccessPointOperationInput = {
    type = "structure",
    id = "DeleteMultiRegionAccessPointOperationInput",
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
                idempotency_token = true,
                required = true,
            },
        },
        Details = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DeleteMultiRegionAccessPointInput }),
    },
}

M.DeleteMultiRegionAccessPointOutput = {
    type = "structure",
    id = "DeleteMultiRegionAccessPointOutput",
    members = {
        RequestTokenARN = {
            type = "string",
        },
    },
}

M.DeletePublicAccessBlockInput = {
    type = "structure",
    id = "DeletePublicAccessBlockInput",
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
    id = "DeletePublicAccessBlockOutput",
}

M.DeleteStorageLensConfigurationInput = {
    type = "structure",
    id = "DeleteStorageLensConfigurationInput",
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
    id = "DeleteStorageLensConfigurationOutput",
}

M.DeleteStorageLensConfigurationTaggingInput = {
    type = "structure",
    id = "DeleteStorageLensConfigurationTaggingInput",
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
    id = "DeleteStorageLensConfigurationTaggingOutput",
}

M.DeleteStorageLensGroupInput = {
    type = "structure",
    id = "DeleteStorageLensGroupInput",
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
    id = "DeleteStorageLensGroupOutput",
}

M.DescribeJobInput = {
    type = "structure",
    id = "DescribeJobInput",
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
    id = "JobFailure",
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
    id = "S3GeneratedManifestDescriptor",
    members = {
        Format = {
            type = "string",
        },
        Location = M.JobManifestLocation,
    },
}

M.JobTimers = {
    type = "structure",
    id = "JobTimers",
    members = {
        ElapsedTimeInActiveSeconds = {
            type = "long",
            traits = {
                default = nil,
            },
        },
    },
}

M.JobProgressSummary = {
    type = "structure",
    id = "JobProgressSummary",
    members = {
        TotalNumberOfTasks = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        NumberOfTasksSucceeded = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        NumberOfTasksFailed = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        Timers = M.JobTimers,
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
    id = "JobDescriptor",
    members = {
        JobId = {
            type = "string",
        },
        ConfirmationRequired = {
            type = "boolean",
            traits = {
                default = nil,
            },
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
        Manifest = M.JobManifest,
        Operation = M.JobOperation,
        Priority = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ProgressSummary = M.JobProgressSummary,
        StatusUpdateReason = {
            type = "string",
        },
        FailureReasons = {
            type = "list",
            member = M.JobFailure,
        },
        Report = M.JobReport,
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
        ManifestGenerator = M.JobManifestGenerator,
        GeneratedManifestDescriptor = M.S3GeneratedManifestDescriptor,
    },
}

M.DescribeJobOutput = {
    type = "structure",
    id = "DescribeJobOutput",
    members = {
        Job = M.JobDescriptor,
    },
}

M.DescribeMultiRegionAccessPointOperationInput = {
    type = "structure",
    id = "DescribeMultiRegionAccessPointOperationInput",
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
    id = "DescribeMultiRegionAccessPointOperationOutput",
    members = {
        AsyncOperation = M.AsyncOperation,
    },
}

M.DissociateAccessGrantsIdentityCenterInput = {
    type = "structure",
    id = "DissociateAccessGrantsIdentityCenterInput",
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
    id = "DissociateAccessGrantsIdentityCenterOutput",
}

M.GetAccessGrantInput = {
    type = "structure",
    id = "GetAccessGrantInput",
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
    id = "GetAccessGrantOutput",
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
        Grantee = M.Grantee,
        Permission = {
            type = "string",
        },
        AccessGrantsLocationId = {
            type = "string",
        },
        AccessGrantsLocationConfiguration = M.AccessGrantsLocationConfiguration,
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
    id = "GetAccessGrantsInstanceInput",
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
    id = "GetAccessGrantsInstanceOutput",
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
    id = "GetAccessGrantsInstanceForPrefixInput",
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
    id = "GetAccessGrantsInstanceForPrefixOutput",
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
    id = "GetAccessGrantsInstanceResourcePolicyInput",
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
    id = "GetAccessGrantsInstanceResourcePolicyOutput",
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
    id = "GetAccessGrantsLocationInput",
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
    id = "GetAccessGrantsLocationOutput",
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
    id = "GetAccessPointInput",
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
    id = "GetAccessPointOutput",
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
        VpcConfiguration = M.VpcConfiguration,
        PublicAccessBlockConfiguration = M.PublicAccessBlockConfiguration,
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "GetAccessPointConfigurationForObjectLambdaInput",
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
    id = "GetAccessPointConfigurationForObjectLambdaOutput",
    members = {
        Configuration = M.ObjectLambdaConfiguration,
    },
}

M.GetAccessPointForObjectLambdaInput = {
    type = "structure",
    id = "GetAccessPointForObjectLambdaInput",
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
    id = "GetAccessPointForObjectLambdaOutput",
    members = {
        Name = {
            type = "string",
        },
        PublicAccessBlockConfiguration = M.PublicAccessBlockConfiguration,
        CreationDate = {
            type = "timestamp",
        },
        Alias = M.ObjectLambdaAccessPointAlias,
    },
}

M.GetAccessPointPolicyInput = {
    type = "structure",
    id = "GetAccessPointPolicyInput",
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
    id = "GetAccessPointPolicyOutput",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.GetAccessPointPolicyForObjectLambdaInput = {
    type = "structure",
    id = "GetAccessPointPolicyForObjectLambdaInput",
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
    id = "GetAccessPointPolicyForObjectLambdaOutput",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.GetAccessPointPolicyStatusInput = {
    type = "structure",
    id = "GetAccessPointPolicyStatusInput",
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
    id = "PolicyStatus",
    members = {
        IsPublic = {
            type = "boolean",
            traits = {
                default = false,
                xml_name = "IsPublic",
            },
        },
    },
}

M.GetAccessPointPolicyStatusOutput = {
    type = "structure",
    id = "GetAccessPointPolicyStatusOutput",
    members = {
        PolicyStatus = M.PolicyStatus,
    },
}

M.GetAccessPointPolicyStatusForObjectLambdaInput = {
    type = "structure",
    id = "GetAccessPointPolicyStatusForObjectLambdaInput",
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
    id = "GetAccessPointPolicyStatusForObjectLambdaOutput",
    members = {
        PolicyStatus = M.PolicyStatus,
    },
}

M.GetAccessPointScopeInput = {
    type = "structure",
    id = "GetAccessPointScopeInput",
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
    id = "GetAccessPointScopeOutput",
    members = {
        Scope = M.Scope,
    },
}

M.GetBucketInput = {
    type = "structure",
    id = "GetBucketInput",
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
    id = "GetBucketOutput",
    members = {
        Bucket = {
            type = "string",
        },
        PublicAccessBlockEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CreationDate = {
            type = "timestamp",
        },
    },
}

M.GetBucketLifecycleConfigurationInput = {
    type = "structure",
    id = "GetBucketLifecycleConfigurationInput",
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
    id = "LifecycleExpiration",
    members = {
        Date = {
            type = "timestamp",
        },
        Days = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ExpiredObjectDeleteMarker = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.LifecycleRuleAndOperator = {
    type = "structure",
    id = "LifecycleRuleAndOperator",
    members = {
        Prefix = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.S3Tag,
        },
        ObjectSizeGreaterThan = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        ObjectSizeLessThan = {
            type = "long",
            traits = {
                default = nil,
            },
        },
    },
}

M.LifecycleRuleFilter = {
    type = "structure",
    id = "LifecycleRuleFilter",
    members = {
        Prefix = {
            type = "string",
        },
        Tag = M.S3Tag,
        And = M.LifecycleRuleAndOperator,
        ObjectSizeGreaterThan = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        ObjectSizeLessThan = {
            type = "long",
            traits = {
                default = nil,
            },
        },
    },
}

M.NoncurrentVersionExpiration = {
    type = "structure",
    id = "NoncurrentVersionExpiration",
    members = {
        NoncurrentDays = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        NewerNoncurrentVersions = {
            type = "integer",
            traits = {
                default = nil,
            },
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
    id = "NoncurrentVersionTransition",
    members = {
        NoncurrentDays = {
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "Transition",
    members = {
        Date = {
            type = "timestamp",
        },
        Days = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        StorageClass = {
            type = "string",
        },
    },
}

M.LifecycleRule = {
    type = "structure",
    id = "LifecycleRule",
    members = {
        Expiration = M.LifecycleExpiration,
        ID = {
            type = "string",
        },
        Filter = M.LifecycleRuleFilter,
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Transitions = {
            type = "list",
            member = M.Transition,
        },
        NoncurrentVersionTransitions = {
            type = "list",
            member = M.NoncurrentVersionTransition,
        },
        NoncurrentVersionExpiration = M.NoncurrentVersionExpiration,
        AbortIncompleteMultipartUpload = M.AbortIncompleteMultipartUpload,
    },
}

M.GetBucketLifecycleConfigurationOutput = {
    type = "structure",
    id = "GetBucketLifecycleConfigurationOutput",
    members = {
        Rules = {
            type = "list",
            member = M.LifecycleRule,
        },
    },
}

M.GetBucketPolicyInput = {
    type = "structure",
    id = "GetBucketPolicyInput",
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
    id = "GetBucketPolicyOutput",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.GetBucketReplicationInput = {
    type = "structure",
    id = "GetBucketReplicationInput",
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
    id = "DeleteMarkerReplication",
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
    id = "EncryptionConfiguration",
    members = {
        ReplicaKmsKeyID = {
            type = "string",
        },
    },
}

M.ReplicationTimeValue = {
    type = "structure",
    id = "ReplicationTimeValue",
    members = {
        Minutes = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.MetricsStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.Metrics = {
    type = "structure",
    id = "Metrics",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventThreshold = M.ReplicationTimeValue,
    },
}

M.ReplicationTimeStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.ReplicationTime = {
    type = "structure",
    id = "ReplicationTime",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Time = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReplicationTimeValue }),
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
    id = "Destination",
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
        ReplicationTime = M.ReplicationTime,
        AccessControlTranslation = M.AccessControlTranslation,
        EncryptionConfiguration = M.EncryptionConfiguration,
        Metrics = M.Metrics,
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
    id = "ExistingObjectReplication",
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
    id = "ReplicationRuleAndOperator",
    members = {
        Prefix = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.S3Tag,
        },
    },
}

M.ReplicationRuleFilter = {
    type = "structure",
    id = "ReplicationRuleFilter",
    members = {
        Prefix = {
            type = "string",
        },
        Tag = M.S3Tag,
        And = M.ReplicationRuleAndOperator,
    },
}

M.ReplicaModificationsStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.ReplicaModifications = {
    type = "structure",
    id = "ReplicaModifications",
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
    id = "SseKmsEncryptedObjects",
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
    id = "SourceSelectionCriteria",
    members = {
        SseKmsEncryptedObjects = M.SseKmsEncryptedObjects,
        ReplicaModifications = M.ReplicaModifications,
    },
}

M.ReplicationRuleStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.ReplicationRule = {
    type = "structure",
    id = "ReplicationRule",
    members = {
        ID = {
            type = "string",
        },
        Priority = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        Prefix = {
            type = "string",
        },
        Filter = M.ReplicationRuleFilter,
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceSelectionCriteria = M.SourceSelectionCriteria,
        ExistingObjectReplication = M.ExistingObjectReplication,
        Destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Destination }),
        DeleteMarkerReplication = M.DeleteMarkerReplication,
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
    id = "ReplicationConfiguration",
    members = {
        Role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rules = {
            type = "list",
            member = M.ReplicationRule,
            traits = {
                required = true,
            },
        },
    },
}

M.GetBucketReplicationOutput = {
    type = "structure",
    id = "GetBucketReplicationOutput",
    members = {
        ReplicationConfiguration = M.ReplicationConfiguration,
    },
}

M.GetBucketTaggingInput = {
    type = "structure",
    id = "GetBucketTaggingInput",
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
    id = "GetBucketTaggingOutput",
    members = {
        TagSet = {
            type = "list",
            member = M.S3Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.GetBucketVersioningInput = {
    type = "structure",
    id = "GetBucketVersioningInput",
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
    id = "GetBucketVersioningOutput",
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
    id = "GetDataAccessInput",
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
            type = "integer",
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
    id = "Credentials",
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
    id = "GetDataAccessOutput",
    members = {
        Credentials = M.Credentials,
        MatchedGrantTarget = {
            type = "string",
        },
        Grantee = M.Grantee,
    },
}

M.GetJobTaggingInput = {
    type = "structure",
    id = "GetJobTaggingInput",
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
    id = "GetJobTaggingOutput",
    members = {
        Tags = {
            type = "list",
            member = M.S3Tag,
        },
    },
}

M.GetMultiRegionAccessPointInput = {
    type = "structure",
    id = "GetMultiRegionAccessPointInput",
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
    id = "RegionReport",
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
    id = "MultiRegionAccessPointReport",
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
        PublicAccessBlock = M.PublicAccessBlockConfiguration,
        Status = {
            type = "string",
        },
        Regions = {
            type = "list",
            member = M.RegionReport,
        },
    },
}

M.GetMultiRegionAccessPointOutput = {
    type = "structure",
    id = "GetMultiRegionAccessPointOutput",
    members = {
        AccessPoint = M.MultiRegionAccessPointReport,
    },
}

M.GetMultiRegionAccessPointPolicyInput = {
    type = "structure",
    id = "GetMultiRegionAccessPointPolicyInput",
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
    id = "EstablishedMultiRegionAccessPointPolicy",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.ProposedMultiRegionAccessPointPolicy = {
    type = "structure",
    id = "ProposedMultiRegionAccessPointPolicy",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.MultiRegionAccessPointPolicyDocument = {
    type = "structure",
    id = "MultiRegionAccessPointPolicyDocument",
    members = {
        Established = M.EstablishedMultiRegionAccessPointPolicy,
        Proposed = M.ProposedMultiRegionAccessPointPolicy,
    },
}

M.GetMultiRegionAccessPointPolicyOutput = {
    type = "structure",
    id = "GetMultiRegionAccessPointPolicyOutput",
    members = {
        Policy = M.MultiRegionAccessPointPolicyDocument,
    },
}

M.GetMultiRegionAccessPointPolicyStatusInput = {
    type = "structure",
    id = "GetMultiRegionAccessPointPolicyStatusInput",
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
    id = "GetMultiRegionAccessPointPolicyStatusOutput",
    members = {
        Established = M.PolicyStatus,
    },
}

M.GetMultiRegionAccessPointRoutesInput = {
    type = "structure",
    id = "GetMultiRegionAccessPointRoutesInput",
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
    id = "MultiRegionAccessPointRoute",
    members = {
        Bucket = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        TrafficDialPercentage = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMultiRegionAccessPointRoutesOutput = {
    type = "structure",
    id = "GetMultiRegionAccessPointRoutesOutput",
    members = {
        Mrap = {
            type = "string",
        },
        Routes = {
            type = "list",
            member = M.MultiRegionAccessPointRoute,
        },
    },
}

M.GetPublicAccessBlockInput = {
    type = "structure",
    id = "GetPublicAccessBlockInput",
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
    id = "GetPublicAccessBlockOutput",
    members = {
        PublicAccessBlockConfiguration = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.PublicAccessBlockConfiguration }),
    },
}

M.NoSuchPublicAccessBlockConfiguration = {
    type = "structure",
    id = "NoSuchPublicAccessBlockConfiguration",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetStorageLensConfigurationInput = {
    type = "structure",
    id = "GetStorageLensConfigurationInput",
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
    id = "StorageLensAwsOrg",
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
    id = "CloudWatchMetrics",
    members = {
        IsEnabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.SSEKMS = {
    type = "structure",
    id = "SSEKMS",
    traits = {
        xml_name = "SSE-KMS",
    },
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
    id = "SSES3",
    traits = {
        xml_name = "SSE-S3",
    },
}

M.StorageLensDataExportEncryption = {
    type = "structure",
    id = "StorageLensDataExportEncryption",
    members = {
        SSES3 = setmetatable({ traits = {
            xml_name = "SSE-S3",
        } }, { __index = M.SSES3 }),
        SSEKMS = setmetatable({ traits = {
            xml_name = "SSE-KMS",
        } }, { __index = M.SSEKMS }),
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
    id = "S3BucketDestination",
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
        Encryption = M.StorageLensDataExportEncryption,
    },
}

M.StorageLensTableDestination = {
    type = "structure",
    id = "StorageLensTableDestination",
    members = {
        IsEnabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        Encryption = M.StorageLensDataExportEncryption,
    },
}

M.StorageLensDataExport = {
    type = "structure",
    id = "StorageLensDataExport",
    members = {
        S3BucketDestination = M.S3BucketDestination,
        CloudWatchMetrics = M.CloudWatchMetrics,
        StorageLensTableDestination = M.StorageLensTableDestination,
    },
}

M.Exclude = {
    type = "structure",
    id = "Exclude",
    members = {
        Buckets = {
            type = "list",
            member = { type = "string" },
        },
        Regions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StorageLensExpandedPrefixesDataExport = {
    type = "structure",
    id = "StorageLensExpandedPrefixesDataExport",
    members = {
        S3BucketDestination = M.S3BucketDestination,
        StorageLensTableDestination = M.StorageLensTableDestination,
    },
}

M.Include = {
    type = "structure",
    id = "Include",
    members = {
        Buckets = {
            type = "list",
            member = { type = "string" },
        },
        Regions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StorageLensConfiguration = {
    type = "structure",
    id = "StorageLensConfiguration",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountLevel = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccountLevel }),
        Include = M.Include,
        Exclude = M.Exclude,
        DataExport = M.StorageLensDataExport,
        ExpandedPrefixesDataExport = M.StorageLensExpandedPrefixesDataExport,
        IsEnabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        AwsOrg = M.StorageLensAwsOrg,
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
    id = "GetStorageLensConfigurationOutput",
    members = {
        StorageLensConfiguration = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.StorageLensConfiguration }),
    },
}

M.GetStorageLensConfigurationTaggingInput = {
    type = "structure",
    id = "GetStorageLensConfigurationTaggingInput",
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
    id = "StorageLensTag",
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
    id = "GetStorageLensConfigurationTaggingOutput",
    members = {
        Tags = {
            type = "list",
            member = M.StorageLensTag,
        },
    },
}

M.GetStorageLensGroupInput = {
    type = "structure",
    id = "GetStorageLensGroupInput",
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
    id = "GetStorageLensGroupOutput",
    members = {
        StorageLensGroup = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.StorageLensGroup }),
    },
}

M.ListAccessGrantsInput = {
    type = "structure",
    id = "ListAccessGrantsInput",
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
            type = "integer",
            traits = {
                default = 0,
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
    id = "ListAccessGrantsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        AccessGrantsList = {
            type = "list",
            member = M.ListAccessGrantEntry,
        },
    },
}

M.ListAccessGrantsInstancesInput = {
    type = "structure",
    id = "ListAccessGrantsInstancesInput",
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
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListAccessGrantsInstancesOutput = {
    type = "structure",
    id = "ListAccessGrantsInstancesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        AccessGrantsInstancesList = {
            type = "list",
            member = M.ListAccessGrantsInstanceEntry,
        },
    },
}

M.ListAccessGrantsLocationsInput = {
    type = "structure",
    id = "ListAccessGrantsLocationsInput",
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
            type = "integer",
            traits = {
                default = 0,
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
    id = "ListAccessGrantsLocationsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        AccessGrantsLocationsList = {
            type = "list",
            member = M.ListAccessGrantsLocationsEntry,
        },
    },
}

M.ListAccessPointsInput = {
    type = "structure",
    id = "ListAccessPointsInput",
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
            type = "integer",
            traits = {
                default = 0,
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
    id = "ListAccessPointsOutput",
    members = {
        AccessPointList = {
            type = "list",
            member = M.AccessPoint,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAccessPointsForDirectoryBucketsInput = {
    type = "structure",
    id = "ListAccessPointsForDirectoryBucketsInput",
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
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListAccessPointsForDirectoryBucketsOutput = {
    type = "structure",
    id = "ListAccessPointsForDirectoryBucketsOutput",
    members = {
        AccessPointList = {
            type = "list",
            member = M.AccessPoint,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAccessPointsForObjectLambdaInput = {
    type = "structure",
    id = "ListAccessPointsForObjectLambdaInput",
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
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ObjectLambdaAccessPoint = {
    type = "structure",
    id = "ObjectLambdaAccessPoint",
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
        Alias = M.ObjectLambdaAccessPointAlias,
    },
}

M.ListAccessPointsForObjectLambdaOutput = {
    type = "structure",
    id = "ListAccessPointsForObjectLambdaOutput",
    members = {
        ObjectLambdaAccessPointList = {
            type = "list",
            member = M.ObjectLambdaAccessPoint,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCallerAccessGrantsInput = {
    type = "structure",
    id = "ListCallerAccessGrantsInput",
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
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
        AllowedByApplication = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "allowedByApplication",
            },
        },
    },
}

M.ListCallerAccessGrantsEntry = {
    type = "structure",
    id = "ListCallerAccessGrantsEntry",
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
    id = "ListCallerAccessGrantsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        CallerAccessGrantsList = {
            type = "list",
            member = M.ListCallerAccessGrantsEntry,
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListJobsInput = {
    type = "structure",
    id = "ListJobsInput",
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
            member = { type = "string" },
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
            type = "integer",
            traits = {
                default = nil,
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
    id = "JobListDescriptor",
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
            type = "integer",
            traits = {
                default = 0,
            },
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
        ProgressSummary = M.JobProgressSummary,
    },
}

M.ListJobsOutput = {
    type = "structure",
    id = "ListJobsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Jobs = {
            type = "list",
            member = M.JobListDescriptor,
        },
    },
}

M.ListMultiRegionAccessPointsInput = {
    type = "structure",
    id = "ListMultiRegionAccessPointsInput",
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
            type = "integer",
            traits = {
                default = 0,
                http_query = "maxResults",
            },
        },
    },
}

M.ListMultiRegionAccessPointsOutput = {
    type = "structure",
    id = "ListMultiRegionAccessPointsOutput",
    members = {
        AccessPoints = {
            type = "list",
            member = M.MultiRegionAccessPointReport,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListRegionalBucketsInput = {
    type = "structure",
    id = "ListRegionalBucketsInput",
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
            type = "integer",
            traits = {
                default = 0,
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
    id = "RegionalBucket",
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
                default = false,
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
    id = "ListRegionalBucketsOutput",
    members = {
        RegionalBucketList = {
            type = "list",
            member = M.RegionalBucket,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListStorageLensConfigurationsInput = {
    type = "structure",
    id = "ListStorageLensConfigurationsInput",
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
    id = "ListStorageLensConfigurationEntry",
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
            traits = {
                default = false,
            },
        },
    },
}

M.ListStorageLensConfigurationsOutput = {
    type = "structure",
    id = "ListStorageLensConfigurationsOutput",
    traits = {
        xml_name = "ListStorageLensConfigurationResult",
    },
    members = {
        NextToken = {
            type = "string",
        },
        StorageLensConfigurationList = {
            type = "list",
            member = M.ListStorageLensConfigurationEntry,
            traits = {
                xml_flattened = true,
                xml_name = "StorageLensConfiguration",
            },
        },
    },
}

M.ListStorageLensGroupsInput = {
    type = "structure",
    id = "ListStorageLensGroupsInput",
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
    id = "ListStorageLensGroupEntry",
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
    id = "ListStorageLensGroupsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        StorageLensGroupList = {
            type = "list",
            member = M.ListStorageLensGroupEntry,
            traits = {
                xml_flattened = true,
                xml_name = "StorageLensGroup",
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutAccessGrantsInstanceResourcePolicyInput = {
    type = "structure",
    id = "PutAccessGrantsInstanceResourcePolicyInput",
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
    id = "PutAccessGrantsInstanceResourcePolicyOutput",
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
    id = "PutAccessPointConfigurationForObjectLambdaInput",
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
        Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ObjectLambdaConfiguration }),
    },
}

M.PutAccessPointConfigurationForObjectLambdaOutput = {
    type = "structure",
    id = "PutAccessPointConfigurationForObjectLambdaOutput",
}

M.PutAccessPointPolicyInput = {
    type = "structure",
    id = "PutAccessPointPolicyInput",
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
    id = "PutAccessPointPolicyOutput",
}

M.PutAccessPointPolicyForObjectLambdaInput = {
    type = "structure",
    id = "PutAccessPointPolicyForObjectLambdaInput",
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
    id = "PutAccessPointPolicyForObjectLambdaOutput",
}

M.PutAccessPointScopeInput = {
    type = "structure",
    id = "PutAccessPointScopeInput",
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
        Scope = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Scope }),
    },
}

M.PutAccessPointScopeOutput = {
    type = "structure",
    id = "PutAccessPointScopeOutput",
}

M.LifecycleConfiguration = {
    type = "structure",
    id = "LifecycleConfiguration",
    members = {
        Rules = {
            type = "list",
            member = M.LifecycleRule,
        },
    },
}

M.PutBucketLifecycleConfigurationInput = {
    type = "structure",
    id = "PutBucketLifecycleConfigurationInput",
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
        LifecycleConfiguration = setmetatable({ traits = {
            http_payload = true,
            xml_name = "LifecycleConfiguration",
        } }, { __index = M.LifecycleConfiguration }),
    },
}

M.PutBucketLifecycleConfigurationOutput = {
    type = "structure",
    id = "PutBucketLifecycleConfigurationOutput",
}

M.PutBucketPolicyInput = {
    type = "structure",
    id = "PutBucketPolicyInput",
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
                default = false,
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
    id = "PutBucketPolicyOutput",
}

M.PutBucketReplicationInput = {
    type = "structure",
    id = "PutBucketReplicationInput",
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
        ReplicationConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "ReplicationConfiguration",
        } }, { __index = M.ReplicationConfiguration }),
    },
}

M.PutBucketReplicationOutput = {
    type = "structure",
    id = "PutBucketReplicationOutput",
}

M.Tagging = {
    type = "structure",
    id = "Tagging",
    members = {
        TagSet = {
            type = "list",
            member = M.S3Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.PutBucketTaggingInput = {
    type = "structure",
    id = "PutBucketTaggingInput",
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
        Tagging = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "Tagging",
        } }, { __index = M.Tagging }),
    },
}

M.PutBucketTaggingOutput = {
    type = "structure",
    id = "PutBucketTaggingOutput",
}

M.MFADelete = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.VersioningConfiguration = {
    type = "structure",
    id = "VersioningConfiguration",
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
    id = "PutBucketVersioningInput",
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
        VersioningConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "VersioningConfiguration",
        } }, { __index = M.VersioningConfiguration }),
    },
}

M.PutBucketVersioningOutput = {
    type = "structure",
    id = "PutBucketVersioningOutput",
}

M.PutJobTaggingInput = {
    type = "structure",
    id = "PutJobTaggingInput",
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
            member = M.S3Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.PutJobTaggingOutput = {
    type = "structure",
    id = "PutJobTaggingOutput",
}

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutMultiRegionAccessPointPolicyOperationInput = {
    type = "structure",
    id = "PutMultiRegionAccessPointPolicyOperationInput",
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
                idempotency_token = true,
                required = true,
            },
        },
        Details = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PutMultiRegionAccessPointPolicyInput }),
    },
}

M.PutMultiRegionAccessPointPolicyOutput = {
    type = "structure",
    id = "PutMultiRegionAccessPointPolicyOutput",
    members = {
        RequestTokenARN = {
            type = "string",
        },
    },
}

M.PutPublicAccessBlockInput = {
    type = "structure",
    id = "PutPublicAccessBlockInput",
    members = {
        PublicAccessBlockConfiguration = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "PublicAccessBlockConfiguration",
        } }, { __index = M.PublicAccessBlockConfiguration }),
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
    id = "PutPublicAccessBlockOutput",
}

M.PutStorageLensConfigurationInput = {
    type = "structure",
    id = "PutStorageLensConfigurationInput",
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
        StorageLensConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StorageLensConfiguration }),
        Tags = {
            type = "list",
            member = M.StorageLensTag,
        },
    },
}

M.PutStorageLensConfigurationOutput = {
    type = "structure",
    id = "PutStorageLensConfigurationOutput",
}

M.PutStorageLensConfigurationTaggingInput = {
    type = "structure",
    id = "PutStorageLensConfigurationTaggingInput",
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
            member = M.StorageLensTag,
            traits = {
                required = true,
            },
        },
    },
}

M.PutStorageLensConfigurationTaggingOutput = {
    type = "structure",
    id = "PutStorageLensConfigurationTaggingOutput",
}

M.SubmitMultiRegionAccessPointRoutesInput = {
    type = "structure",
    id = "SubmitMultiRegionAccessPointRoutesInput",
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
            member = M.MultiRegionAccessPointRoute,
            traits = {
                required = true,
            },
        },
    },
}

M.SubmitMultiRegionAccessPointRoutesOutput = {
    type = "structure",
    id = "SubmitMultiRegionAccessPointRoutesOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateAccessGrantsLocationInput = {
    type = "structure",
    id = "UpdateAccessGrantsLocationInput",
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
    id = "UpdateAccessGrantsLocationOutput",
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
    id = "UpdateJobPriorityInput",
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
            type = "integer",
            traits = {
                default = 0,
                http_query = "priority",
                required = true,
            },
        },
    },
}

M.UpdateJobPriorityOutput = {
    type = "structure",
    id = "UpdateJobPriorityOutput",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Priority = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.JobStatusException = {
    type = "structure",
    id = "JobStatusException",
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
    id = "UpdateJobStatusInput",
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
    id = "UpdateJobStatusOutput",
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
    id = "UpdateStorageLensGroupInput",
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
        StorageLensGroup = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StorageLensGroup }),
    },
}

M.UpdateStorageLensGroupOutput = {
    type = "structure",
    id = "UpdateStorageLensGroupOutput",
}

return M
