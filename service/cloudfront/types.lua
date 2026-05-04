local M = {}

M.ResponseHeadersPolicyAccessControlAllowMethodsValues = {
    GET = "GET",
    POST = "POST",
    OPTIONS = "OPTIONS",
    PUT = "PUT",
    DELETE = "DELETE",
    PATCH = "PATCH",
    HEAD = "HEAD",
    ALL = "ALL",
}

M.AccessDenied = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.KeyPairIds = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.KGKeyPairIds = {
    type = "structure",
    members = {
        KeyGroupId = {
            type = "string",
        },
        KeyPairIds = M.KeyPairIds,
    },
}

M.ActiveTrustedKeyGroups = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.KGKeyPairIds,
        },
    },
}

M.Signer = {
    type = "structure",
    members = {
        AwsAccountNumber = {
            type = "string",
        },
        KeyPairIds = M.KeyPairIds,
    },
}

M.ActiveTrustedSigners = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.Signer,
        },
    },
}

M.Aliases = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ICPRecordalStatus = {
    APPROVED = "APPROVED",
    SUSPENDED = "SUSPENDED",
    PENDING = "PENDING",
}

M.AliasICPRecordal = {
    type = "structure",
    members = {
        CNAME = {
            type = "string",
        },
        ICPRecordalStatus = {
            type = "string",
        },
    },
}

M.Method = {
    GET = "GET",
    HEAD = "HEAD",
    POST = "POST",
    PUT = "PUT",
    PATCH = "PATCH",
    OPTIONS = "OPTIONS",
    DELETE = "DELETE",
}

M.CachedMethods = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AllowedMethods = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        CachedMethods = M.CachedMethods,
    },
}

M.IpAddressType = {
    Ipv4 = "ipv4",
    Ipv6 = "ipv6",
    DualStack = "dualstack",
}

M.IpamCidrStatus = {
    Provisioned = "provisioned",
    FailedProvision = "failed-provision",
    Provisioning = "provisioning",
    Deprovisioned = "deprovisioned",
    FailedDeprovision = "failed-deprovision",
    Deprovisioning = "deprovisioning",
    Advertised = "advertised",
    FailedAdvertise = "failed-advertise",
    Advertising = "advertising",
    Withdrawn = "withdrawn",
    FailedWithdraw = "failed-withdraw",
    Withdrawing = "withdrawing",
}

M.IpamCidrConfig = {
    type = "structure",
    members = {
        Cidr = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpamPoolArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnycastIp = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.IpamConfig = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        IpamCidrConfigs = {
            type = "list",
            member = M.IpamCidrConfig,
            traits = {
                required = true,
            },
        },
    },
}

M.AnycastIpList = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
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
        IpAddressType = {
            type = "string",
        },
        IpamConfig = M.IpamConfig,
        AnycastIps = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        IpCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.AnycastIpListSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
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
        IpCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        IpAddressType = {
            type = "string",
        },
        ETag = {
            type = "string",
        },
        IpamConfig = M.IpamConfig,
    },
}

M.AnycastIpListCollection = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.AnycastIpListSummary,
        },
        Marker = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateAliasInput = {
    type = "structure",
    members = {
        TargetDistributionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Alias = {
            type = "string",
            traits = {
                http_query = "Alias",
                required = true,
            },
        },
    },
}

M.AssociateAliasOutput = {
    type = "structure",
}

M.IllegalUpdate = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidArgument = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchDistribution = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionCNAMEs = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateDistributionTenantWebACLInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WebACLArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.AssociateDistributionTenantWebACLOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        WebACLArn = {
            type = "string",
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.EntityLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EntityNotFound = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidIfMatchVersion = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PreconditionFailed = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateDistributionWebACLInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        WebACLArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.AssociateDistributionWebACLOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        WebACLArn = {
            type = "string",
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.BatchTooLarge = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CaCertificatesBundleS3Location = {
    type = "structure",
    members = {
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "string",
        },
    },
}

M.CaCertificatesBundleSource = {
    type = "union",
    members = {
        CaCertificatesBundleS3Location = M.CaCertificatesBundleS3Location,
    },
}

M.ItemSelection = {
    none = "none",
    whitelist = "whitelist",
    all = "all",
}

M.CookieNames = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CookiePreference = {
    type = "structure",
    members = {
        Forward = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WhitelistedNames = M.CookieNames,
    },
}

M.Headers = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.QueryStringCacheKeys = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ForwardedValues = {
    type = "structure",
    members = {
        QueryString = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Cookies = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CookiePreference }),
        Headers = M.Headers,
        QueryStringCacheKeys = M.QueryStringCacheKeys,
    },
}

M.EventType = {
    viewer_request = "viewer-request",
    viewer_response = "viewer-response",
    origin_request = "origin-request",
    origin_response = "origin-response",
}

M.FunctionAssociation = {
    type = "structure",
    members = {
        FunctionARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FunctionAssociations = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.FunctionAssociation,
        },
    },
}

M.GrpcConfig = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.LambdaFunctionAssociation = {
    type = "structure",
    members = {
        LambdaFunctionARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludeBody = {
            type = "boolean",
        },
    },
}

M.LambdaFunctionAssociations = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.LambdaFunctionAssociation,
        },
    },
}

M.TrustedKeyGroups = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TrustedSigners = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ViewerProtocolPolicy = {
    allow_all = "allow-all",
    https_only = "https-only",
    redirect_to_https = "redirect-to-https",
}

M.CacheBehavior = {
    type = "structure",
    members = {
        PathPattern = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetOriginId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrustedSigners = M.TrustedSigners,
        TrustedKeyGroups = M.TrustedKeyGroups,
        ViewerProtocolPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowedMethods = M.AllowedMethods,
        SmoothStreaming = {
            type = "boolean",
        },
        Compress = {
            type = "boolean",
        },
        LambdaFunctionAssociations = M.LambdaFunctionAssociations,
        FunctionAssociations = M.FunctionAssociations,
        FieldLevelEncryptionId = {
            type = "string",
        },
        RealtimeLogConfigArn = {
            type = "string",
        },
        CachePolicyId = {
            type = "string",
        },
        OriginRequestPolicyId = {
            type = "string",
        },
        ResponseHeadersPolicyId = {
            type = "string",
        },
        GrpcConfig = M.GrpcConfig,
        ForwardedValues = M.ForwardedValues,
        MinTTL = {
            type = "long",
        },
        DefaultTTL = {
            type = "long",
        },
        MaxTTL = {
            type = "long",
        },
    },
}

M.CacheBehaviors = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.CacheBehavior,
        },
    },
}

M.CachePolicyCookieBehavior = {
    none = "none",
    whitelist = "whitelist",
    allExcept = "allExcept",
    all = "all",
}

M.CachePolicyCookiesConfig = {
    type = "structure",
    members = {
        CookieBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Cookies = M.CookieNames,
    },
}

M.CachePolicyHeaderBehavior = {
    none = "none",
    whitelist = "whitelist",
}

M.CachePolicyHeadersConfig = {
    type = "structure",
    members = {
        HeaderBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Headers = M.Headers,
    },
}

M.CachePolicyQueryStringBehavior = {
    none = "none",
    whitelist = "whitelist",
    allExcept = "allExcept",
    all = "all",
}

M.QueryStringNames = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CachePolicyQueryStringsConfig = {
    type = "structure",
    members = {
        QueryStringBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryStrings = M.QueryStringNames,
    },
}

M.ParametersInCacheKeyAndForwardedToOrigin = {
    type = "structure",
    members = {
        EnableAcceptEncodingGzip = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        EnableAcceptEncodingBrotli = {
            type = "boolean",
        },
        HeadersConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CachePolicyHeadersConfig }),
        CookiesConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CachePolicyCookiesConfig }),
        QueryStringsConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CachePolicyQueryStringsConfig }),
    },
}

M.CachePolicyConfig = {
    type = "structure",
    members = {
        Comment = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DefaultTTL = {
            type = "long",
        },
        MaxTTL = {
            type = "long",
        },
        MinTTL = {
            type = "long",
            traits = {
                required = true,
            },
        },
        ParametersInCacheKeyAndForwardedToOrigin = M.ParametersInCacheKeyAndForwardedToOrigin,
    },
}

M.CachePolicy = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CachePolicyConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CachePolicyConfig }),
    },
}

M.CachePolicyAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CachePolicyInUse = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CachePolicyType = {
    managed = "managed",
    custom = "custom",
}

M.CachePolicySummary = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CachePolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CachePolicy }),
    },
}

M.CachePolicyList = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.CachePolicySummary,
        },
    },
}

M.CacheTagConfig = {
    type = "structure",
    members = {
        HeaderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CannotChangeImmutablePublicKeyFields = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CannotDeleteEntityWhileInUse = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CannotUpdateEntityWhileInUse = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Certificate = {
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

M.CertificateSource = {
    cloudfront = "cloudfront",
    iam = "iam",
    acm = "acm",
}

M.CertificateTransparencyLoggingPreference = {
    Enabled = "enabled",
    Disabled = "disabled",
}

M.CNAMEAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CopyDistributionInput = {
    type = "structure",
    members = {
        PrimaryDistributionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Staging = {
            type = "boolean",
            traits = {
                http_header = "Staging",
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
        CallerReference = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.ConnectionFunctionAssociation = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectionMode = {
    Direct = "direct",
    TenantOnly = "tenant-only",
}

M.CustomErrorResponse = {
    type = "structure",
    members = {
        ErrorCode = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        ResponsePagePath = {
            type = "string",
        },
        ResponseCode = {
            type = "string",
        },
        ErrorCachingMinTTL = {
            type = "long",
        },
    },
}

M.CustomErrorResponses = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.CustomErrorResponse,
        },
    },
}

M.DefaultCacheBehavior = {
    type = "structure",
    members = {
        TargetOriginId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrustedSigners = M.TrustedSigners,
        TrustedKeyGroups = M.TrustedKeyGroups,
        ViewerProtocolPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowedMethods = M.AllowedMethods,
        SmoothStreaming = {
            type = "boolean",
        },
        Compress = {
            type = "boolean",
        },
        LambdaFunctionAssociations = M.LambdaFunctionAssociations,
        FunctionAssociations = M.FunctionAssociations,
        FieldLevelEncryptionId = {
            type = "string",
        },
        RealtimeLogConfigArn = {
            type = "string",
        },
        CachePolicyId = {
            type = "string",
        },
        OriginRequestPolicyId = {
            type = "string",
        },
        ResponseHeadersPolicyId = {
            type = "string",
        },
        GrpcConfig = M.GrpcConfig,
        ForwardedValues = M.ForwardedValues,
        MinTTL = {
            type = "long",
        },
        DefaultTTL = {
            type = "long",
        },
        MaxTTL = {
            type = "long",
        },
    },
}

M.HttpVersion = {
    http1_1 = "http1.1",
    http2 = "http2",
    http3 = "http3",
    http2and3 = "http2and3",
}

M.LoggingConfig = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        IncludeCookies = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                default = "",
            },
        },
        Prefix = {
            type = "string",
            traits = {
                default = "",
            },
        },
    },
}

M.StatusCodes = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "integer" },
            traits = {
                required = true,
            },
        },
    },
}

M.OriginGroupFailoverCriteria = {
    type = "structure",
    members = {
        StatusCodes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StatusCodes }),
    },
}

M.OriginGroupMember = {
    type = "structure",
    members = {
        OriginId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OriginGroupMembers = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.OriginGroupMember,
            traits = {
                required = true,
            },
        },
    },
}

M.OriginGroupSelectionCriteria = {
    Default = "default",
    MediaQualityBased = "media-quality-based",
}

M.OriginGroup = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FailoverCriteria = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OriginGroupFailoverCriteria }),
        Members = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OriginGroupMembers }),
        SelectionCriteria = {
            type = "string",
        },
    },
}

M.OriginGroups = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.OriginGroup,
        },
    },
}

M.OriginCustomHeader = {
    type = "structure",
    members = {
        HeaderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HeaderValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomHeaders = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.OriginCustomHeader,
        },
    },
}

M.OriginMtlsConfig = {
    type = "structure",
    members = {
        ClientCertificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OriginProtocolPolicy = {
    http_only = "http-only",
    match_viewer = "match-viewer",
    https_only = "https-only",
}

M.SslProtocol = {
    SSLv3 = "SSLv3",
    TLSv1 = "TLSv1",
    TLSv1_1 = "TLSv1.1",
    TLSv1_2 = "TLSv1.2",
}

M.OriginSslProtocols = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CustomOriginConfig = {
    type = "structure",
    members = {
        HTTPPort = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        HTTPSPort = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        OriginProtocolPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginSslProtocols = M.OriginSslProtocols,
        OriginReadTimeout = {
            type = "integer",
        },
        OriginKeepaliveTimeout = {
            type = "integer",
        },
        IpAddressType = {
            type = "string",
        },
        OriginMtlsConfig = M.OriginMtlsConfig,
    },
}

M.OriginShield = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        OriginShieldRegion = {
            type = "string",
        },
    },
}

M.S3OriginConfig = {
    type = "structure",
    members = {
        OriginAccessIdentity = {
            type = "string",
            traits = {
                default = "",
                required = true,
            },
        },
        OriginReadTimeout = {
            type = "integer",
        },
    },
}

M.VpcOriginConfig = {
    type = "structure",
    members = {
        VpcOriginId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OwnerAccountId = {
            type = "string",
        },
        OriginReadTimeout = {
            type = "integer",
        },
        OriginKeepaliveTimeout = {
            type = "integer",
        },
    },
}

M.Origin = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginPath = {
            type = "string",
        },
        CustomHeaders = M.CustomHeaders,
        S3OriginConfig = M.S3OriginConfig,
        CustomOriginConfig = M.CustomOriginConfig,
        VpcOriginConfig = M.VpcOriginConfig,
        ConnectionAttempts = {
            type = "integer",
        },
        ConnectionTimeout = {
            type = "integer",
        },
        ResponseCompletionTimeout = {
            type = "integer",
        },
        OriginShield = M.OriginShield,
        OriginAccessControlId = {
            type = "string",
        },
    },
}

M.Origins = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.Origin,
            traits = {
                required = true,
            },
        },
    },
}

M.PriceClass = {
    PriceClass_100 = "PriceClass_100",
    PriceClass_200 = "PriceClass_200",
    PriceClass_All = "PriceClass_All",
    None = "None",
}

M.GeoRestrictionType = {
    blacklist = "blacklist",
    whitelist = "whitelist",
    none = "none",
}

M.GeoRestriction = {
    type = "structure",
    members = {
        RestrictionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Restrictions = {
    type = "structure",
    members = {
        GeoRestriction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeoRestriction }),
    },
}

M.StringSchemaConfig = {
    type = "structure",
    members = {
        Comment = {
            type = "string",
        },
        DefaultValue = {
            type = "string",
        },
        Required = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ParameterDefinitionSchema = {
    type = "structure",
    members = {
        StringSchema = M.StringSchemaConfig,
    },
}

M.ParameterDefinition = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ParameterDefinitionSchema }),
    },
}

M.TenantConfig = {
    type = "structure",
    members = {
        ParameterDefinitions = {
            type = "list",
            member = M.ParameterDefinition,
        },
    },
}

M.MinimumProtocolVersion = {
    SSLv3 = "SSLv3",
    TLSv1 = "TLSv1",
    TLSv1_2016 = "TLSv1_2016",
    TLSv1_1_2016 = "TLSv1.1_2016",
    TLSv1_2_2018 = "TLSv1.2_2018",
    TLSv1_2_2019 = "TLSv1.2_2019",
    TLSv1_2_2021 = "TLSv1.2_2021",
    TLSv1_3_2025 = "TLSv1.3_2025",
    TLSv1_2_2025 = "TLSv1.2_2025",
}

M.SSLSupportMethod = {
    sni_only = "sni-only",
    vip = "vip",
    static_ip = "static-ip",
}

M.ViewerCertificate = {
    type = "structure",
    members = {
        CloudFrontDefaultCertificate = {
            type = "boolean",
        },
        IAMCertificateId = {
            type = "string",
        },
        ACMCertificateArn = {
            type = "string",
        },
        SSLSupportMethod = {
            type = "string",
        },
        MinimumProtocolVersion = {
            type = "string",
        },
        Certificate = {
            type = "string",
        },
        CertificateSource = {
            type = "string",
        },
    },
}

M.ViewerMtlsMode = {
    Required = "required",
    Optional = "optional",
}

M.TrustStoreConfig = {
    type = "structure",
    members = {
        TrustStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdvertiseTrustStoreCaNames = {
            type = "boolean",
        },
        IgnoreCertificateExpiry = {
            type = "boolean",
        },
    },
}

M.ViewerMtlsConfig = {
    type = "structure",
    members = {
        Mode = {
            type = "string",
            traits = {
                default = "required",
            },
        },
        TrustStoreConfig = M.TrustStoreConfig,
    },
}

M.DistributionConfig = {
    type = "structure",
    members = {
        CallerReference = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Aliases = M.Aliases,
        DefaultRootObject = {
            type = "string",
        },
        Origins = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Origins }),
        OriginGroups = M.OriginGroups,
        DefaultCacheBehavior = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DefaultCacheBehavior }),
        CacheBehaviors = M.CacheBehaviors,
        CustomErrorResponses = M.CustomErrorResponses,
        Comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Logging = M.LoggingConfig,
        PriceClass = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        ViewerCertificate = M.ViewerCertificate,
        Restrictions = M.Restrictions,
        WebACLId = {
            type = "string",
        },
        HttpVersion = {
            type = "string",
        },
        IsIPV6Enabled = {
            type = "boolean",
        },
        ContinuousDeploymentPolicyId = {
            type = "string",
        },
        Staging = {
            type = "boolean",
        },
        AnycastIpListId = {
            type = "string",
        },
        TenantConfig = M.TenantConfig,
        ConnectionMode = {
            type = "string",
        },
        ViewerMtlsConfig = M.ViewerMtlsConfig,
        ConnectionFunctionAssociation = M.ConnectionFunctionAssociation,
        CacheTagConfig = M.CacheTagConfig,
    },
}

M.Distribution = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        InProgressInvalidationBatches = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActiveTrustedSigners = M.ActiveTrustedSigners,
        ActiveTrustedKeyGroups = M.ActiveTrustedKeyGroups,
        DistributionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DistributionConfig }),
        AliasICPRecordals = {
            type = "list",
            member = M.AliasICPRecordal,
        },
    },
}

M.CopyDistributionOutput = {
    type = "structure",
    members = {
        Distribution = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Distribution }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.DistributionAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InconsistentQuantities = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidDefaultRootObject = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidErrorCode = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidForwardCookies = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidFunctionAssociation = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidGeoRestrictionParameter = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidHeadersForS3Origin = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidLambdaFunctionAssociation = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidLocationCode = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidMinimumProtocolVersion = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidOrigin = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidOriginAccessControl = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidOriginAccessIdentity = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidOriginKeepaliveTimeout = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidOriginReadTimeout = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidProtocolSettings = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidQueryStringParameters = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRelativePath = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequiredProtocol = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidResponseCode = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTTLOrder = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidViewerCertificate = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidWebACLId = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MissingBody = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchCachePolicy = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchFieldLevelEncryptionConfig = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchOrigin = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchOriginRequestPolicy = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchRealtimeLogConfig = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchResponseHeadersPolicy = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RealtimeLogConfigOwnerMismatch = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyCacheBehaviors = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyCertificates = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyCookieNamesInWhiteList = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributions = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionsAssociatedToCachePolicy = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionsAssociatedToFieldLevelEncryptionConfig = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionsAssociatedToKeyGroup = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionsAssociatedToOriginAccessControl = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionsAssociatedToOriginRequestPolicy = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionsAssociatedToResponseHeadersPolicy = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionsWithFunctionAssociations = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionsWithLambdaAssociations = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionsWithSingleFunctionARN = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyFunctionAssociations = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyHeadersInForwardedValues = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyKeyGroupsAssociatedToDistribution = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyLambdaFunctionAssociations = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyOriginCustomHeaders = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyOriginGroupsPerDistribution = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyOrigins = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyQueryStringParameters = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyTrustedSigners = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TrustedKeyGroupDoesNotExist = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TrustedSignerDoesNotExist = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
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
        },
    },
}

M.Tags = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateAnycastIpListInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Tags = M.Tags,
        IpAddressType = {
            type = "string",
        },
        IpamCidrConfigs = {
            type = "list",
            member = M.IpamCidrConfig,
        },
    },
}

M.CreateAnycastIpListOutput = {
    type = "structure",
    members = {
        AnycastIpList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.AnycastIpList }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.EntityAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTagging = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedOperation = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateCachePolicyInput = {
    type = "structure",
    members = {
        CachePolicyConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "CachePolicyConfig",
        } }, { __index = M.CachePolicyConfig }),
    },
}

M.CreateCachePolicyOutput = {
    type = "structure",
    members = {
        CachePolicy = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.CachePolicy }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.TooManyCachePolicies = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyCookiesInCachePolicy = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyHeadersInCachePolicy = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyQueryStringsInCachePolicy = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudFrontOriginAccessIdentityAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudFrontOriginAccessIdentityConfig = {
    type = "structure",
    members = {
        CallerReference = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCloudFrontOriginAccessIdentityInput = {
    type = "structure",
    members = {
        CloudFrontOriginAccessIdentityConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "CloudFrontOriginAccessIdentityConfig",
        } }, { __index = M.CloudFrontOriginAccessIdentityConfig }),
    },
}

M.CloudFrontOriginAccessIdentity = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3CanonicalUserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CloudFrontOriginAccessIdentityConfig = M.CloudFrontOriginAccessIdentityConfig,
    },
}

M.CreateCloudFrontOriginAccessIdentityOutput = {
    type = "structure",
    members = {
        CloudFrontOriginAccessIdentity = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.CloudFrontOriginAccessIdentity }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.TooManyCloudFrontOriginAccessIdentities = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.KeyValueStoreAssociation = {
    type = "structure",
    members = {
        KeyValueStoreARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KeyValueStoreAssociations = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.KeyValueStoreAssociation,
        },
    },
}

M.FunctionRuntime = {
    cloudfront_js_1_0 = "cloudfront-js-1.0",
    cloudfront_js_2_0 = "cloudfront-js-2.0",
}

M.FunctionConfig = {
    type = "structure",
    members = {
        Comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Runtime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyValueStoreAssociations = M.KeyValueStoreAssociations,
    },
}

M.CreateConnectionFunctionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionFunctionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FunctionConfig }),
        ConnectionFunctionCode = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        Tags = M.Tags,
    },
}

M.FunctionStage = {
    DEVELOPMENT = "DEVELOPMENT",
    LIVE = "LIVE",
}

M.ConnectionFunctionSummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectionFunctionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FunctionConfig }),
        ConnectionFunctionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Stage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateConnectionFunctionOutput = {
    type = "structure",
    members = {
        ConnectionFunctionSummary = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ConnectionFunctionSummary }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.EntitySizeLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateConnectionGroupInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Ipv6Enabled = {
            type = "boolean",
        },
        Tags = M.Tags,
        AnycastIpListId = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.ConnectionGroup = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        Tags = M.Tags,
        Ipv6Enabled = {
            type = "boolean",
        },
        RoutingEndpoint = {
            type = "string",
        },
        AnycastIpListId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        IsDefault = {
            type = "boolean",
        },
    },
}

M.CreateConnectionGroupOutput = {
    type = "structure",
    members = {
        ConnectionGroup = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ConnectionGroup }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.ContinuousDeploymentPolicyAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StagingDistributionDnsNames = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ContinuousDeploymentSingleHeaderConfig = {
    type = "structure",
    members = {
        Header = {
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

M.SessionStickinessConfig = {
    type = "structure",
    members = {
        IdleTTL = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaximumTTL = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ContinuousDeploymentSingleWeightConfig = {
    type = "structure",
    members = {
        Weight = {
            type = "float",
            traits = {
                required = true,
            },
        },
        SessionStickinessConfig = M.SessionStickinessConfig,
    },
}

M.ContinuousDeploymentPolicyType = {
    SingleWeight = "SingleWeight",
    SingleHeader = "SingleHeader",
}

M.TrafficConfig = {
    type = "structure",
    members = {
        SingleWeightConfig = M.ContinuousDeploymentSingleWeightConfig,
        SingleHeaderConfig = M.ContinuousDeploymentSingleHeaderConfig,
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContinuousDeploymentPolicyConfig = {
    type = "structure",
    members = {
        StagingDistributionDnsNames = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StagingDistributionDnsNames }),
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        TrafficConfig = M.TrafficConfig,
    },
}

M.CreateContinuousDeploymentPolicyInput = {
    type = "structure",
    members = {
        ContinuousDeploymentPolicyConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "ContinuousDeploymentPolicyConfig",
        } }, { __index = M.ContinuousDeploymentPolicyConfig }),
    },
}

M.ContinuousDeploymentPolicy = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ContinuousDeploymentPolicyConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContinuousDeploymentPolicyConfig }),
    },
}

M.CreateContinuousDeploymentPolicyOutput = {
    type = "structure",
    members = {
        ContinuousDeploymentPolicy = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ContinuousDeploymentPolicy }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.StagingDistributionInUse = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyContinuousDeploymentPolicies = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ContinuousDeploymentPolicyInUse = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateDistributionInput = {
    type = "structure",
    members = {
        DistributionConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "DistributionConfig",
        } }, { __index = M.DistributionConfig }),
    },
}

M.CreateDistributionOutput = {
    type = "structure",
    members = {
        Distribution = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Distribution }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.IllegalOriginAccessConfiguration = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidDomainNameForOriginAccessControl = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchContinuousDeploymentPolicy = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GeoRestrictionCustomization = {
    type = "structure",
    members = {
        RestrictionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Locations = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CustomizationActionType = {
    override = "override",
    disable = "disable",
}

M.WebAclCustomization = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
        },
    },
}

M.Customizations = {
    type = "structure",
    members = {
        WebAcl = M.WebAclCustomization,
        Certificate = M.Certificate,
        GeoRestrictions = M.GeoRestrictionCustomization,
    },
}

M.DomainItem = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationTokenHost = {
    CloudFront = "cloudfront",
    SelfHosted = "self-hosted",
}

M.ManagedCertificateRequest = {
    type = "structure",
    members = {
        ValidationTokenHost = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrimaryDomainName = {
            type = "string",
        },
        CertificateTransparencyLoggingPreference = {
            type = "string",
        },
    },
}

M.Parameter = {
    type = "structure",
    members = {
        Name = {
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

M.CreateDistributionTenantInput = {
    type = "structure",
    members = {
        DistributionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Domains = {
            type = "list",
            member = M.DomainItem,
            traits = {
                required = true,
            },
        },
        Tags = M.Tags,
        Customizations = M.Customizations,
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
        ConnectionGroupId = {
            type = "string",
        },
        ManagedCertificateRequest = M.ManagedCertificateRequest,
        Enabled = {
            type = "boolean",
        },
    },
}

M.DomainStatus = {
    Active = "active",
    Inactive = "inactive",
}

M.DomainResult = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
        },
    },
}

M.DistributionTenant = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        DistributionId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Domains = {
            type = "list",
            member = M.DomainResult,
        },
        Tags = M.Tags,
        Customizations = M.Customizations,
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
        ConnectionGroupId = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        Enabled = {
            type = "boolean",
        },
        Status = {
            type = "string",
        },
    },
}

M.CreateDistributionTenantOutput = {
    type = "structure",
    members = {
        DistributionTenant = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionTenant }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.InvalidAssociation = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DistributionConfigWithTags = {
    type = "structure",
    members = {
        DistributionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DistributionConfig }),
        Tags = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Tags }),
    },
}

M.CreateDistributionWithTagsInput = {
    type = "structure",
    members = {
        DistributionConfigWithTags = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "DistributionConfigWithTags",
        } }, { __index = M.DistributionConfigWithTags }),
    },
}

M.CreateDistributionWithTagsOutput = {
    type = "structure",
    members = {
        Distribution = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Distribution }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.Format = {
    URLEncoded = "URLEncoded",
}

M.ContentTypeProfile = {
    type = "structure",
    members = {
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfileId = {
            type = "string",
        },
        ContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContentTypeProfiles = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.ContentTypeProfile,
        },
    },
}

M.ContentTypeProfileConfig = {
    type = "structure",
    members = {
        ForwardWhenContentTypeIsUnknown = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        ContentTypeProfiles = M.ContentTypeProfiles,
    },
}

M.QueryArgProfile = {
    type = "structure",
    members = {
        QueryArg = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QueryArgProfiles = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.QueryArgProfile,
        },
    },
}

M.QueryArgProfileConfig = {
    type = "structure",
    members = {
        ForwardWhenQueryArgProfileIsUnknown = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        QueryArgProfiles = M.QueryArgProfiles,
    },
}

M.FieldLevelEncryptionConfig = {
    type = "structure",
    members = {
        CallerReference = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Comment = {
            type = "string",
        },
        QueryArgProfileConfig = M.QueryArgProfileConfig,
        ContentTypeProfileConfig = M.ContentTypeProfileConfig,
    },
}

M.CreateFieldLevelEncryptionConfigInput = {
    type = "structure",
    members = {
        FieldLevelEncryptionConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "FieldLevelEncryptionConfig",
        } }, { __index = M.FieldLevelEncryptionConfig }),
    },
}

M.FieldLevelEncryption = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        FieldLevelEncryptionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldLevelEncryptionConfig }),
    },
}

M.CreateFieldLevelEncryptionConfigOutput = {
    type = "structure",
    members = {
        FieldLevelEncryption = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FieldLevelEncryption }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.FieldLevelEncryptionConfigAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchFieldLevelEncryptionProfile = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.QueryArgProfileEmpty = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyFieldLevelEncryptionConfigs = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyFieldLevelEncryptionContentTypeProfiles = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyFieldLevelEncryptionQueryArgProfiles = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FieldPatterns = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EncryptionEntity = {
    type = "structure",
    members = {
        PublicKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProviderId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldPatterns = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldPatterns }),
    },
}

M.EncryptionEntities = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.EncryptionEntity,
        },
    },
}

M.FieldLevelEncryptionProfileConfig = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CallerReference = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Comment = {
            type = "string",
        },
        EncryptionEntities = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionEntities }),
    },
}

M.CreateFieldLevelEncryptionProfileInput = {
    type = "structure",
    members = {
        FieldLevelEncryptionProfileConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "FieldLevelEncryptionProfileConfig",
        } }, { __index = M.FieldLevelEncryptionProfileConfig }),
    },
}

M.FieldLevelEncryptionProfile = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        FieldLevelEncryptionProfileConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldLevelEncryptionProfileConfig }),
    },
}

M.CreateFieldLevelEncryptionProfileOutput = {
    type = "structure",
    members = {
        FieldLevelEncryptionProfile = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FieldLevelEncryptionProfile }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.FieldLevelEncryptionProfileAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FieldLevelEncryptionProfileSizeExceeded = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchPublicKey = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyFieldLevelEncryptionEncryptionEntities = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyFieldLevelEncryptionFieldPatterns = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyFieldLevelEncryptionProfiles = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateFunctionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FunctionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FunctionConfig }),
        FunctionCode = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.FunctionMetadata = {
    type = "structure",
    members = {
        FunctionARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Stage = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.FunctionSummary = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
        },
        FunctionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FunctionConfig }),
        FunctionMetadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FunctionMetadata }),
    },
}

M.CreateFunctionOutput = {
    type = "structure",
    members = {
        FunctionSummary = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FunctionSummary }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.FunctionAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FunctionSizeLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyFunctions = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Paths = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.InvalidationBatch = {
    type = "structure",
    members = {
        Paths = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Paths }),
        CallerReference = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateInvalidationInput = {
    type = "structure",
    members = {
        DistributionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InvalidationBatch = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "InvalidationBatch",
        } }, { __index = M.InvalidationBatch }),
    },
}

M.Invalidation = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        InvalidationBatch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InvalidationBatch }),
    },
}

M.CreateInvalidationOutput = {
    type = "structure",
    members = {
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        Invalidation = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Invalidation }),
    },
}

M.TooManyInvalidationsInProgress = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateInvalidationForDistributionTenantInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        InvalidationBatch = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "InvalidationBatch",
        } }, { __index = M.InvalidationBatch }),
    },
}

M.CreateInvalidationForDistributionTenantOutput = {
    type = "structure",
    members = {
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        Invalidation = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Invalidation }),
    },
}

M.KeyGroupConfig = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Comment = {
            type = "string",
        },
    },
}

M.CreateKeyGroupInput = {
    type = "structure",
    members = {
        KeyGroupConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "KeyGroupConfig",
        } }, { __index = M.KeyGroupConfig }),
    },
}

M.KeyGroup = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        KeyGroupConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KeyGroupConfig }),
    },
}

M.CreateKeyGroupOutput = {
    type = "structure",
    members = {
        KeyGroup = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.KeyGroup }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.KeyGroupAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyKeyGroups = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyPublicKeysInKeyGroup = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ImportSourceType = {
    S3 = "S3",
}

M.ImportSource = {
    type = "structure",
    members = {
        SourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateKeyValueStoreInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Comment = {
            type = "string",
        },
        ImportSource = M.ImportSource,
    },
}

M.KeyValueStore = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateKeyValueStoreOutput = {
    type = "structure",
    members = {
        KeyValueStore = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.KeyValueStore }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
    },
}

M.RealtimeMetricsSubscriptionStatus = {
    Enabled = "Enabled",
    Disabled = "Disabled",
}

M.RealtimeMetricsSubscriptionConfig = {
    type = "structure",
    members = {
        RealtimeMetricsSubscriptionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MonitoringSubscription = {
    type = "structure",
    members = {
        RealtimeMetricsSubscriptionConfig = M.RealtimeMetricsSubscriptionConfig,
    },
}

M.CreateMonitoringSubscriptionInput = {
    type = "structure",
    members = {
        DistributionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MonitoringSubscription = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "MonitoringSubscription",
        } }, { __index = M.MonitoringSubscription }),
    },
}

M.CreateMonitoringSubscriptionOutput = {
    type = "structure",
    members = {
        MonitoringSubscription = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.MonitoringSubscription }),
    },
}

M.MonitoringSubscriptionAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OriginAccessControlOriginTypes = {
    s3 = "s3",
    mediastore = "mediastore",
    mediapackagev2 = "mediapackagev2",
    lambda = "lambda",
}

M.OriginAccessControlSigningBehaviors = {
    never = "never",
    always = "always",
    no_override = "no-override",
}

M.OriginAccessControlSigningProtocols = {
    sigv4 = "sigv4",
}

M.OriginAccessControlConfig = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        SigningProtocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SigningBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginAccessControlOriginType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateOriginAccessControlInput = {
    type = "structure",
    members = {
        OriginAccessControlConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "OriginAccessControlConfig",
        } }, { __index = M.OriginAccessControlConfig }),
    },
}

M.OriginAccessControl = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginAccessControlConfig = M.OriginAccessControlConfig,
    },
}

M.CreateOriginAccessControlOutput = {
    type = "structure",
    members = {
        OriginAccessControl = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.OriginAccessControl }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.OriginAccessControlAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyOriginAccessControls = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OriginRequestPolicyCookieBehavior = {
    none = "none",
    whitelist = "whitelist",
    all = "all",
    allExcept = "allExcept",
}

M.OriginRequestPolicyCookiesConfig = {
    type = "structure",
    members = {
        CookieBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Cookies = M.CookieNames,
    },
}

M.OriginRequestPolicyHeaderBehavior = {
    none = "none",
    whitelist = "whitelist",
    allViewer = "allViewer",
    allViewerAndWhitelistCloudFront = "allViewerAndWhitelistCloudFront",
    allExcept = "allExcept",
}

M.OriginRequestPolicyHeadersConfig = {
    type = "structure",
    members = {
        HeaderBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Headers = M.Headers,
    },
}

M.OriginRequestPolicyQueryStringBehavior = {
    none = "none",
    whitelist = "whitelist",
    all = "all",
    allExcept = "allExcept",
}

M.OriginRequestPolicyQueryStringsConfig = {
    type = "structure",
    members = {
        QueryStringBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryStrings = M.QueryStringNames,
    },
}

M.OriginRequestPolicyConfig = {
    type = "structure",
    members = {
        Comment = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HeadersConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OriginRequestPolicyHeadersConfig }),
        CookiesConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OriginRequestPolicyCookiesConfig }),
        QueryStringsConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OriginRequestPolicyQueryStringsConfig }),
    },
}

M.CreateOriginRequestPolicyInput = {
    type = "structure",
    members = {
        OriginRequestPolicyConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "OriginRequestPolicyConfig",
        } }, { __index = M.OriginRequestPolicyConfig }),
    },
}

M.OriginRequestPolicy = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        OriginRequestPolicyConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OriginRequestPolicyConfig }),
    },
}

M.CreateOriginRequestPolicyOutput = {
    type = "structure",
    members = {
        OriginRequestPolicy = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.OriginRequestPolicy }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.OriginRequestPolicyAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyCookiesInOriginRequestPolicy = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyHeadersInOriginRequestPolicy = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyOriginRequestPolicies = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyQueryStringsInOriginRequestPolicy = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PublicKeyConfig = {
    type = "structure",
    members = {
        CallerReference = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncodedKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Comment = {
            type = "string",
        },
    },
}

M.CreatePublicKeyInput = {
    type = "structure",
    members = {
        PublicKeyConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "PublicKeyConfig",
        } }, { __index = M.PublicKeyConfig }),
    },
}

M.PublicKey = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        PublicKeyConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PublicKeyConfig }),
    },
}

M.CreatePublicKeyOutput = {
    type = "structure",
    members = {
        PublicKey = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.PublicKey }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.PublicKeyAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyPublicKeys = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.KinesisStreamConfig = {
    type = "structure",
    members = {
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EndPoint = {
    type = "structure",
    members = {
        StreamType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KinesisStreamConfig = M.KinesisStreamConfig,
    },
}

M.CreateRealtimeLogConfigInput = {
    type = "structure",
    members = {
        EndPoints = {
            type = "list",
            member = M.EndPoint,
            traits = {
                required = true,
            },
        },
        Fields = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SamplingRate = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.RealtimeLogConfig = {
    type = "structure",
    members = {
        ARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SamplingRate = {
            type = "long",
            traits = {
                required = true,
            },
        },
        EndPoints = {
            type = "list",
            member = M.EndPoint,
            traits = {
                required = true,
            },
        },
        Fields = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRealtimeLogConfigOutput = {
    type = "structure",
    members = {
        RealtimeLogConfig = M.RealtimeLogConfig,
    },
}

M.RealtimeLogConfigAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRealtimeLogConfigs = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResponseHeadersPolicyAccessControlAllowHeaders = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseHeadersPolicyAccessControlAllowMethods = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseHeadersPolicyAccessControlAllowOrigins = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseHeadersPolicyAccessControlExposeHeaders = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ResponseHeadersPolicyCorsConfig = {
    type = "structure",
    members = {
        AccessControlAllowOrigins = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResponseHeadersPolicyAccessControlAllowOrigins }),
        AccessControlAllowHeaders = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResponseHeadersPolicyAccessControlAllowHeaders }),
        AccessControlAllowMethods = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResponseHeadersPolicyAccessControlAllowMethods }),
        AccessControlAllowCredentials = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        AccessControlExposeHeaders = M.ResponseHeadersPolicyAccessControlExposeHeaders,
        AccessControlMaxAgeSec = {
            type = "integer",
        },
        OriginOverride = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseHeadersPolicyCustomHeader = {
    type = "structure",
    members = {
        Header = {
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
        Override = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseHeadersPolicyCustomHeadersConfig = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.ResponseHeadersPolicyCustomHeader,
        },
    },
}

M.ResponseHeadersPolicyRemoveHeader = {
    type = "structure",
    members = {
        Header = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseHeadersPolicyRemoveHeadersConfig = {
    type = "structure",
    members = {
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.ResponseHeadersPolicyRemoveHeader,
        },
    },
}

M.ResponseHeadersPolicyContentSecurityPolicy = {
    type = "structure",
    members = {
        Override = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        ContentSecurityPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseHeadersPolicyContentTypeOptions = {
    type = "structure",
    members = {
        Override = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.FrameOptionsList = {
    DENY = "DENY",
    SAMEORIGIN = "SAMEORIGIN",
}

M.ResponseHeadersPolicyFrameOptions = {
    type = "structure",
    members = {
        Override = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        FrameOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ReferrerPolicyList = {
    no_referrer = "no-referrer",
    no_referrer_when_downgrade = "no-referrer-when-downgrade",
    origin = "origin",
    origin_when_cross_origin = "origin-when-cross-origin",
    same_origin = "same-origin",
    strict_origin = "strict-origin",
    strict_origin_when_cross_origin = "strict-origin-when-cross-origin",
    unsafe_url = "unsafe-url",
}

M.ResponseHeadersPolicyReferrerPolicy = {
    type = "structure",
    members = {
        Override = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        ReferrerPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseHeadersPolicyStrictTransportSecurity = {
    type = "structure",
    members = {
        Override = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        IncludeSubdomains = {
            type = "boolean",
        },
        Preload = {
            type = "boolean",
        },
        AccessControlMaxAgeSec = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseHeadersPolicyXSSProtection = {
    type = "structure",
    members = {
        Override = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Protection = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        ModeBlock = {
            type = "boolean",
        },
        ReportUri = {
            type = "string",
        },
    },
}

M.ResponseHeadersPolicySecurityHeadersConfig = {
    type = "structure",
    members = {
        XSSProtection = M.ResponseHeadersPolicyXSSProtection,
        FrameOptions = M.ResponseHeadersPolicyFrameOptions,
        ReferrerPolicy = M.ResponseHeadersPolicyReferrerPolicy,
        ContentSecurityPolicy = M.ResponseHeadersPolicyContentSecurityPolicy,
        ContentTypeOptions = M.ResponseHeadersPolicyContentTypeOptions,
        StrictTransportSecurity = M.ResponseHeadersPolicyStrictTransportSecurity,
    },
}

M.ResponseHeadersPolicyServerTimingHeadersConfig = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        SamplingRate = {
            type = "double",
        },
    },
}

M.ResponseHeadersPolicyConfig = {
    type = "structure",
    members = {
        Comment = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CorsConfig = M.ResponseHeadersPolicyCorsConfig,
        SecurityHeadersConfig = M.ResponseHeadersPolicySecurityHeadersConfig,
        ServerTimingHeadersConfig = M.ResponseHeadersPolicyServerTimingHeadersConfig,
        CustomHeadersConfig = M.ResponseHeadersPolicyCustomHeadersConfig,
        RemoveHeadersConfig = M.ResponseHeadersPolicyRemoveHeadersConfig,
    },
}

M.CreateResponseHeadersPolicyInput = {
    type = "structure",
    members = {
        ResponseHeadersPolicyConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "ResponseHeadersPolicyConfig",
        } }, { __index = M.ResponseHeadersPolicyConfig }),
    },
}

M.ResponseHeadersPolicy = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ResponseHeadersPolicyConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResponseHeadersPolicyConfig }),
    },
}

M.CreateResponseHeadersPolicyOutput = {
    type = "structure",
    members = {
        ResponseHeadersPolicy = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ResponseHeadersPolicy }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.ResponseHeadersPolicyAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooLongCSPInResponseHeadersPolicy = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyCustomHeadersInResponseHeadersPolicy = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRemoveHeadersInResponseHeadersPolicy = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyResponseHeadersPolicies = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StreamingLoggingConfig = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Prefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3Origin = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginAccessIdentity = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StreamingDistributionConfig = {
    type = "structure",
    members = {
        CallerReference = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Origin = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Origin }),
        Aliases = M.Aliases,
        Comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Logging = M.StreamingLoggingConfig,
        TrustedSigners = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrustedSigners }),
        PriceClass = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateStreamingDistributionInput = {
    type = "structure",
    members = {
        StreamingDistributionConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "StreamingDistributionConfig",
        } }, { __index = M.StreamingDistributionConfig }),
    },
}

M.StreamingDistribution = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActiveTrustedSigners = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActiveTrustedSigners }),
        StreamingDistributionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StreamingDistributionConfig }),
    },
}

M.CreateStreamingDistributionOutput = {
    type = "structure",
    members = {
        StreamingDistribution = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.StreamingDistribution }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.StreamingDistributionAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyStreamingDistributionCNAMEs = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyStreamingDistributions = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StreamingDistributionConfigWithTags = {
    type = "structure",
    members = {
        StreamingDistributionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StreamingDistributionConfig }),
        Tags = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Tags }),
    },
}

M.CreateStreamingDistributionWithTagsInput = {
    type = "structure",
    members = {
        StreamingDistributionConfigWithTags = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "StreamingDistributionConfigWithTags",
        } }, { __index = M.StreamingDistributionConfigWithTags }),
    },
}

M.CreateStreamingDistributionWithTagsOutput = {
    type = "structure",
    members = {
        StreamingDistribution = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.StreamingDistribution }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.CreateTrustStoreInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CaCertificatesBundleSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CaCertificatesBundleSource }),
        Tags = M.Tags,
    },
}

M.TrustStoreStatus = {
    Pending = "pending",
    Active = "active",
    Failed = "failed",
}

M.TrustStore = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        NumberOfCaCertificates = {
            type = "integer",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        Reason = {
            type = "string",
        },
    },
}

M.CreateTrustStoreOutput = {
    type = "structure",
    members = {
        TrustStore = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.TrustStore }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.VpcOriginEndpointConfig = {
    type = "structure",
    members = {
        Name = {
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
        HTTPPort = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        HTTPSPort = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        OriginProtocolPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginSslProtocols = M.OriginSslProtocols,
    },
}

M.CreateVpcOriginInput = {
    type = "structure",
    members = {
        VpcOriginEndpointConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VpcOriginEndpointConfig }),
        Tags = M.Tags,
    },
}

M.VpcOrigin = {
    type = "structure",
    members = {
        Id = {
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
        AccountId = {
            type = "string",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        VpcOriginEndpointConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VpcOriginEndpointConfig }),
    },
}

M.CreateVpcOriginOutput = {
    type = "structure",
    members = {
        VpcOrigin = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.VpcOrigin }),
        Location = {
            type = "string",
            traits = {
                http_header = "Location",
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.DeleteAnycastIpListInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
    },
}

M.DeleteAnycastIpListOutput = {
    type = "structure",
}

M.IllegalDelete = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteCachePolicyInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.DeleteCachePolicyOutput = {
    type = "structure",
}

M.CloudFrontOriginAccessIdentityInUse = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteCloudFrontOriginAccessIdentityInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.DeleteCloudFrontOriginAccessIdentityOutput = {
    type = "structure",
}

M.NoSuchCloudFrontOriginAccessIdentity = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteConnectionFunctionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
    },
}

M.DeleteConnectionFunctionOutput = {
    type = "structure",
}

M.DeleteConnectionGroupInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
    },
}

M.DeleteConnectionGroupOutput = {
    type = "structure",
}

M.ResourceNotDisabled = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteContinuousDeploymentPolicyInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.DeleteContinuousDeploymentPolicyOutput = {
    type = "structure",
}

M.DeleteDistributionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.DeleteDistributionOutput = {
    type = "structure",
}

M.DistributionNotDisabled = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceInUse = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteDistributionTenantInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
    },
}

M.DeleteDistributionTenantOutput = {
    type = "structure",
}

M.DeleteFieldLevelEncryptionConfigInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.DeleteFieldLevelEncryptionConfigOutput = {
    type = "structure",
}

M.FieldLevelEncryptionConfigInUse = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteFieldLevelEncryptionProfileInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.DeleteFieldLevelEncryptionProfileOutput = {
    type = "structure",
}

M.FieldLevelEncryptionProfileInUse = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteFunctionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
    },
}

M.DeleteFunctionOutput = {
    type = "structure",
}

M.FunctionInUse = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchFunctionExists = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteKeyGroupInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.DeleteKeyGroupOutput = {
    type = "structure",
}

M.NoSuchResource = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteKeyValueStoreInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
    },
}

M.DeleteKeyValueStoreOutput = {
    type = "structure",
}

M.DeleteMonitoringSubscriptionInput = {
    type = "structure",
    members = {
        DistributionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMonitoringSubscriptionOutput = {
    type = "structure",
}

M.NoSuchMonitoringSubscription = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteOriginAccessControlInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.DeleteOriginAccessControlOutput = {
    type = "structure",
}

M.NoSuchOriginAccessControl = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OriginAccessControlInUse = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteOriginRequestPolicyInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.DeleteOriginRequestPolicyOutput = {
    type = "structure",
}

M.OriginRequestPolicyInUse = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeletePublicKeyInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.DeletePublicKeyOutput = {
    type = "structure",
}

M.PublicKeyInUse = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteRealtimeLogConfigInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
    },
}

M.DeleteRealtimeLogConfigOutput = {
    type = "structure",
}

M.RealtimeLogConfigInUse = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
}

M.DeleteResponseHeadersPolicyInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.DeleteResponseHeadersPolicyOutput = {
    type = "structure",
}

M.ResponseHeadersPolicyInUse = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteStreamingDistributionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.DeleteStreamingDistributionOutput = {
    type = "structure",
}

M.NoSuchStreamingDistribution = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StreamingDistributionNotDisabled = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteTrustStoreInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
    },
}

M.DeleteTrustStoreOutput = {
    type = "structure",
}

M.DeleteVpcOriginInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
    },
}

M.DeleteVpcOriginOutput = {
    type = "structure",
    members = {
        VpcOrigin = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.VpcOrigin }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.DescribeConnectionFunctionInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Stage = {
            type = "string",
            traits = {
                http_query = "Stage",
            },
        },
    },
}

M.DescribeConnectionFunctionOutput = {
    type = "structure",
    members = {
        ConnectionFunctionSummary = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ConnectionFunctionSummary }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.DescribeFunctionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Stage = {
            type = "string",
            traits = {
                http_query = "Stage",
            },
        },
    },
}

M.DescribeFunctionOutput = {
    type = "structure",
    members = {
        FunctionSummary = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FunctionSummary }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.DescribeKeyValueStoreInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeKeyValueStoreOutput = {
    type = "structure",
    members = {
        KeyValueStore = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.KeyValueStore }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.DisassociateDistributionTenantWebACLInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.DisassociateDistributionTenantWebACLOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.DisassociateDistributionWebACLInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.DisassociateDistributionWebACLOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetAnycastIpListInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAnycastIpListOutput = {
    type = "structure",
    members = {
        AnycastIpList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.AnycastIpList }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetCachePolicyInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCachePolicyOutput = {
    type = "structure",
    members = {
        CachePolicy = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.CachePolicy }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetCachePolicyConfigInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCachePolicyConfigOutput = {
    type = "structure",
    members = {
        CachePolicyConfig = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.CachePolicyConfig }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetCloudFrontOriginAccessIdentityInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCloudFrontOriginAccessIdentityOutput = {
    type = "structure",
    members = {
        CloudFrontOriginAccessIdentity = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.CloudFrontOriginAccessIdentity }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetCloudFrontOriginAccessIdentityConfigInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCloudFrontOriginAccessIdentityConfigOutput = {
    type = "structure",
    members = {
        CloudFrontOriginAccessIdentityConfig = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.CloudFrontOriginAccessIdentityConfig }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetConnectionFunctionInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Stage = {
            type = "string",
            traits = {
                http_query = "Stage",
            },
        },
    },
}

M.GetConnectionFunctionOutput = {
    type = "structure",
    members = {
        ConnectionFunctionCode = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
    },
}

M.GetConnectionGroupInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConnectionGroupOutput = {
    type = "structure",
    members = {
        ConnectionGroup = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ConnectionGroup }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetConnectionGroupByRoutingEndpointInput = {
    type = "structure",
    members = {
        RoutingEndpoint = {
            type = "string",
            traits = {
                http_query = "RoutingEndpoint",
                required = true,
            },
        },
    },
}

M.GetConnectionGroupByRoutingEndpointOutput = {
    type = "structure",
    members = {
        ConnectionGroup = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ConnectionGroup }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetContinuousDeploymentPolicyInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetContinuousDeploymentPolicyOutput = {
    type = "structure",
    members = {
        ContinuousDeploymentPolicy = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ContinuousDeploymentPolicy }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetContinuousDeploymentPolicyConfigInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetContinuousDeploymentPolicyConfigOutput = {
    type = "structure",
    members = {
        ContinuousDeploymentPolicyConfig = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ContinuousDeploymentPolicyConfig }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetDistributionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDistributionOutput = {
    type = "structure",
    members = {
        Distribution = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Distribution }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetDistributionConfigInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDistributionConfigOutput = {
    type = "structure",
    members = {
        DistributionConfig = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionConfig }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetDistributionTenantInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDistributionTenantOutput = {
    type = "structure",
    members = {
        DistributionTenant = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionTenant }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetDistributionTenantByDomainInput = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                http_query = "domain",
                required = true,
            },
        },
    },
}

M.GetDistributionTenantByDomainOutput = {
    type = "structure",
    members = {
        DistributionTenant = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionTenant }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetFieldLevelEncryptionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFieldLevelEncryptionOutput = {
    type = "structure",
    members = {
        FieldLevelEncryption = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FieldLevelEncryption }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetFieldLevelEncryptionConfigInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFieldLevelEncryptionConfigOutput = {
    type = "structure",
    members = {
        FieldLevelEncryptionConfig = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FieldLevelEncryptionConfig }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetFieldLevelEncryptionProfileInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFieldLevelEncryptionProfileOutput = {
    type = "structure",
    members = {
        FieldLevelEncryptionProfile = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FieldLevelEncryptionProfile }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetFieldLevelEncryptionProfileConfigInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFieldLevelEncryptionProfileConfigOutput = {
    type = "structure",
    members = {
        FieldLevelEncryptionProfileConfig = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FieldLevelEncryptionProfileConfig }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetFunctionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Stage = {
            type = "string",
            traits = {
                http_query = "Stage",
            },
        },
    },
}

M.GetFunctionOutput = {
    type = "structure",
    members = {
        FunctionCode = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
    },
}

M.GetInvalidationInput = {
    type = "structure",
    members = {
        DistributionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetInvalidationOutput = {
    type = "structure",
    members = {
        Invalidation = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Invalidation }),
    },
}

M.NoSuchInvalidation = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetInvalidationForDistributionTenantInput = {
    type = "structure",
    members = {
        DistributionTenantId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetInvalidationForDistributionTenantOutput = {
    type = "structure",
    members = {
        Invalidation = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Invalidation }),
    },
}

M.GetKeyGroupInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetKeyGroupOutput = {
    type = "structure",
    members = {
        KeyGroup = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.KeyGroup }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetKeyGroupConfigInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetKeyGroupConfigOutput = {
    type = "structure",
    members = {
        KeyGroupConfig = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.KeyGroupConfig }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetManagedCertificateDetailsInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ManagedCertificateStatus = {
    PendingValidation = "pending-validation",
    Issued = "issued",
    Inactive = "inactive",
    Expired = "expired",
    ValidationTimedOut = "validation-timed-out",
    Revoked = "revoked",
    Failed = "failed",
}

M.ValidationTokenDetail = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RedirectTo = {
            type = "string",
        },
        RedirectFrom = {
            type = "string",
        },
    },
}

M.ManagedCertificateDetails = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
        },
        CertificateStatus = {
            type = "string",
        },
        ValidationTokenHost = {
            type = "string",
        },
        ValidationTokenDetails = {
            type = "list",
            member = M.ValidationTokenDetail,
        },
    },
}

M.GetManagedCertificateDetailsOutput = {
    type = "structure",
    members = {
        ManagedCertificateDetails = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ManagedCertificateDetails }),
    },
}

M.GetMonitoringSubscriptionInput = {
    type = "structure",
    members = {
        DistributionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMonitoringSubscriptionOutput = {
    type = "structure",
    members = {
        MonitoringSubscription = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.MonitoringSubscription }),
    },
}

M.GetOriginAccessControlInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetOriginAccessControlOutput = {
    type = "structure",
    members = {
        OriginAccessControl = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.OriginAccessControl }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetOriginAccessControlConfigInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetOriginAccessControlConfigOutput = {
    type = "structure",
    members = {
        OriginAccessControlConfig = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.OriginAccessControlConfig }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetOriginRequestPolicyInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetOriginRequestPolicyOutput = {
    type = "structure",
    members = {
        OriginRequestPolicy = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.OriginRequestPolicy }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetOriginRequestPolicyConfigInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetOriginRequestPolicyConfigOutput = {
    type = "structure",
    members = {
        OriginRequestPolicyConfig = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.OriginRequestPolicyConfig }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetPublicKeyInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPublicKeyOutput = {
    type = "structure",
    members = {
        PublicKey = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.PublicKey }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetPublicKeyConfigInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPublicKeyConfigOutput = {
    type = "structure",
    members = {
        PublicKeyConfig = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.PublicKeyConfig }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetRealtimeLogConfigInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
    },
}

M.GetRealtimeLogConfigOutput = {
    type = "structure",
    members = {
        RealtimeLogConfig = M.RealtimeLogConfig,
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourcePolicyOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        PolicyDocument = {
            type = "string",
        },
    },
}

M.GetResponseHeadersPolicyInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetResponseHeadersPolicyOutput = {
    type = "structure",
    members = {
        ResponseHeadersPolicy = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ResponseHeadersPolicy }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetResponseHeadersPolicyConfigInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetResponseHeadersPolicyConfigOutput = {
    type = "structure",
    members = {
        ResponseHeadersPolicyConfig = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ResponseHeadersPolicyConfig }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetStreamingDistributionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetStreamingDistributionOutput = {
    type = "structure",
    members = {
        StreamingDistribution = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.StreamingDistribution }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetStreamingDistributionConfigInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetStreamingDistributionConfigOutput = {
    type = "structure",
    members = {
        StreamingDistributionConfig = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.StreamingDistributionConfig }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetTrustStoreInput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTrustStoreOutput = {
    type = "structure",
    members = {
        TrustStore = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.TrustStore }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.GetVpcOriginInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetVpcOriginOutput = {
    type = "structure",
    members = {
        VpcOrigin = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.VpcOrigin }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.ListAnycastIpListsInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ListAnycastIpListsOutput = {
    type = "structure",
    members = {
        AnycastIpLists = setmetatable({ traits = {
            http_payload = true,
            xml_name = "AnycastIpListCollection",
        } }, { __index = M.AnycastIpListCollection }),
    },
}

M.ListCachePoliciesInput = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                http_query = "Type",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ListCachePoliciesOutput = {
    type = "structure",
    members = {
        CachePolicyList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.CachePolicyList }),
    },
}

M.ListCloudFrontOriginAccessIdentitiesInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.CloudFrontOriginAccessIdentitySummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3CanonicalUserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CloudFrontOriginAccessIdentityList = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.CloudFrontOriginAccessIdentitySummary,
        },
    },
}

M.ListCloudFrontOriginAccessIdentitiesOutput = {
    type = "structure",
    members = {
        CloudFrontOriginAccessIdentityList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.CloudFrontOriginAccessIdentityList }),
    },
}

M.ListConflictingAliasesInput = {
    type = "structure",
    members = {
        DistributionId = {
            type = "string",
            traits = {
                http_query = "DistributionId",
                required = true,
            },
        },
        Alias = {
            type = "string",
            traits = {
                http_query = "Alias",
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ConflictingAlias = {
    type = "structure",
    members = {
        Alias = {
            type = "string",
        },
        DistributionId = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
    },
}

M.ConflictingAliasesList = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
        Quantity = {
            type = "integer",
        },
        Items = {
            type = "list",
            member = M.ConflictingAlias,
        },
    },
}

M.ListConflictingAliasesOutput = {
    type = "structure",
    members = {
        ConflictingAliasesList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ConflictingAliasesList }),
    },
}

M.ListConnectionFunctionsInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
        Stage = {
            type = "string",
        },
    },
}

M.ListConnectionFunctionsOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        ConnectionFunctions = {
            type = "list",
            member = M.ConnectionFunctionSummary,
        },
    },
}

M.ConnectionGroupAssociationFilter = {
    type = "structure",
    members = {
        AnycastIpListId = {
            type = "string",
        },
    },
}

M.ListConnectionGroupsInput = {
    type = "structure",
    members = {
        AssociationFilter = M.ConnectionGroupAssociationFilter,
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ConnectionGroupSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
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
        RoutingEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ETag = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnycastIpListId = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
        Status = {
            type = "string",
        },
        IsDefault = {
            type = "boolean",
        },
    },
}

M.ListConnectionGroupsOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        ConnectionGroups = {
            type = "list",
            member = M.ConnectionGroupSummary,
        },
    },
}

M.ListContinuousDeploymentPoliciesInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ContinuousDeploymentPolicySummary = {
    type = "structure",
    members = {
        ContinuousDeploymentPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContinuousDeploymentPolicy }),
    },
}

M.ContinuousDeploymentPolicyList = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.ContinuousDeploymentPolicySummary,
        },
    },
}

M.ListContinuousDeploymentPoliciesOutput = {
    type = "structure",
    members = {
        ContinuousDeploymentPolicyList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ContinuousDeploymentPolicyList }),
    },
}

M.ListDistributionsInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.DistributionSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ETag = {
            type = "string",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Aliases = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Aliases }),
        Origins = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Origins }),
        OriginGroups = M.OriginGroups,
        DefaultCacheBehavior = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DefaultCacheBehavior }),
        CacheBehaviors = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CacheBehaviors }),
        CustomErrorResponses = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomErrorResponses }),
        Comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PriceClass = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        ViewerCertificate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ViewerCertificate }),
        Restrictions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Restrictions }),
        WebACLId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HttpVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IsIPV6Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        AliasICPRecordals = {
            type = "list",
            member = M.AliasICPRecordal,
        },
        Staging = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        ConnectionMode = {
            type = "string",
        },
        AnycastIpListId = {
            type = "string",
        },
        ViewerMtlsConfig = M.ViewerMtlsConfig,
        ConnectionFunctionAssociation = M.ConnectionFunctionAssociation,
    },
}

M.DistributionList = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.DistributionSummary,
        },
    },
}

M.ListDistributionsOutput = {
    type = "structure",
    members = {
        DistributionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionList }),
    },
}

M.ListDistributionsByAnycastIpListIdInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
        AnycastIpListId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListDistributionsByAnycastIpListIdOutput = {
    type = "structure",
    members = {
        DistributionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionList }),
    },
}

M.ListDistributionsByCachePolicyIdInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
        CachePolicyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DistributionIdList = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListDistributionsByCachePolicyIdOutput = {
    type = "structure",
    members = {
        DistributionIdList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionIdList }),
    },
}

M.ListDistributionsByConnectionFunctionInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
        ConnectionFunctionIdentifier = {
            type = "string",
            traits = {
                http_query = "ConnectionFunctionIdentifier",
                required = true,
            },
        },
    },
}

M.ListDistributionsByConnectionFunctionOutput = {
    type = "structure",
    members = {
        DistributionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionList }),
    },
}

M.ListDistributionsByConnectionModeInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
        ConnectionMode = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListDistributionsByConnectionModeOutput = {
    type = "structure",
    members = {
        DistributionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionList }),
    },
}

M.ListDistributionsByKeyGroupInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
        KeyGroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListDistributionsByKeyGroupOutput = {
    type = "structure",
    members = {
        DistributionIdList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionIdList }),
    },
}

M.ListDistributionsByOriginRequestPolicyIdInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
        OriginRequestPolicyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListDistributionsByOriginRequestPolicyIdOutput = {
    type = "structure",
    members = {
        DistributionIdList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionIdList }),
    },
}

M.ListDistributionsByOwnedResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.DistributionIdOwner = {
    type = "structure",
    members = {
        DistributionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OwnerAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DistributionIdOwnerList = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.DistributionIdOwner,
        },
    },
}

M.ListDistributionsByOwnedResourceOutput = {
    type = "structure",
    members = {
        DistributionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionIdOwnerList }),
    },
}

M.ListDistributionsByRealtimeLogConfigInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
        RealtimeLogConfigName = {
            type = "string",
        },
        RealtimeLogConfigArn = {
            type = "string",
        },
    },
}

M.ListDistributionsByRealtimeLogConfigOutput = {
    type = "structure",
    members = {
        DistributionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionList }),
    },
}

M.ListDistributionsByResponseHeadersPolicyIdInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
        ResponseHeadersPolicyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListDistributionsByResponseHeadersPolicyIdOutput = {
    type = "structure",
    members = {
        DistributionIdList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionIdList }),
    },
}

M.ListDistributionsByTrustStoreInput = {
    type = "structure",
    members = {
        TrustStoreIdentifier = {
            type = "string",
            traits = {
                http_query = "TrustStoreIdentifier",
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ListDistributionsByTrustStoreOutput = {
    type = "structure",
    members = {
        DistributionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionList }),
    },
}

M.ListDistributionsByVpcOriginIdInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
        VpcOriginId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListDistributionsByVpcOriginIdOutput = {
    type = "structure",
    members = {
        DistributionIdList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionIdList }),
    },
}

M.ListDistributionsByWebACLIdInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
        WebACLId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListDistributionsByWebACLIdOutput = {
    type = "structure",
    members = {
        DistributionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionList }),
    },
}

M.DistributionTenantAssociationFilter = {
    type = "structure",
    members = {
        DistributionId = {
            type = "string",
        },
        ConnectionGroupId = {
            type = "string",
        },
    },
}

M.ListDistributionTenantsInput = {
    type = "structure",
    members = {
        AssociationFilter = M.DistributionTenantAssociationFilter,
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.DistributionTenantSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DistributionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
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
        Domains = {
            type = "list",
            member = M.DomainResult,
            traits = {
                required = true,
            },
        },
        ConnectionGroupId = {
            type = "string",
        },
        Customizations = M.Customizations,
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ETag = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Enabled = {
            type = "boolean",
        },
        Status = {
            type = "string",
        },
    },
}

M.ListDistributionTenantsOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        DistributionTenantList = {
            type = "list",
            member = M.DistributionTenantSummary,
        },
    },
}

M.ListDistributionTenantsByCustomizationInput = {
    type = "structure",
    members = {
        WebACLArn = {
            type = "string",
        },
        CertificateArn = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListDistributionTenantsByCustomizationOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        DistributionTenantList = {
            type = "list",
            member = M.DistributionTenantSummary,
        },
    },
}

M.DistributionResourceId = {
    type = "structure",
    members = {
        DistributionId = {
            type = "string",
        },
        DistributionTenantId = {
            type = "string",
        },
    },
}

M.ListDomainConflictsInput = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DomainControlValidationResource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DistributionResourceId }),
        MaxItems = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.DistributionResourceType = {
    Distribution = "distribution",
    DistributionTenant = "distribution-tenant",
}

M.DomainConflict = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
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
    },
}

M.ListDomainConflictsOutput = {
    type = "structure",
    members = {
        DomainConflicts = {
            type = "list",
            member = M.DomainConflict,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.ListFieldLevelEncryptionConfigsInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.FieldLevelEncryptionSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Comment = {
            type = "string",
        },
        QueryArgProfileConfig = M.QueryArgProfileConfig,
        ContentTypeProfileConfig = M.ContentTypeProfileConfig,
    },
}

M.FieldLevelEncryptionList = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.FieldLevelEncryptionSummary,
        },
    },
}

M.ListFieldLevelEncryptionConfigsOutput = {
    type = "structure",
    members = {
        FieldLevelEncryptionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FieldLevelEncryptionList }),
    },
}

M.ListFieldLevelEncryptionProfilesInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.FieldLevelEncryptionProfileSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionEntities = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionEntities }),
        Comment = {
            type = "string",
        },
    },
}

M.FieldLevelEncryptionProfileList = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.FieldLevelEncryptionProfileSummary,
        },
    },
}

M.ListFieldLevelEncryptionProfilesOutput = {
    type = "structure",
    members = {
        FieldLevelEncryptionProfileList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FieldLevelEncryptionProfileList }),
    },
}

M.ListFunctionsInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
        Stage = {
            type = "string",
            traits = {
                http_query = "Stage",
            },
        },
    },
}

M.FunctionList = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.FunctionSummary,
        },
    },
}

M.ListFunctionsOutput = {
    type = "structure",
    members = {
        FunctionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FunctionList }),
    },
}

M.ListInvalidationsInput = {
    type = "structure",
    members = {
        DistributionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.InvalidationSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidationList = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.InvalidationSummary,
        },
    },
}

M.ListInvalidationsOutput = {
    type = "structure",
    members = {
        InvalidationList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.InvalidationList }),
    },
}

M.ListInvalidationsForDistributionTenantInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ListInvalidationsForDistributionTenantOutput = {
    type = "structure",
    members = {
        InvalidationList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.InvalidationList }),
    },
}

M.ListKeyGroupsInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.KeyGroupSummary = {
    type = "structure",
    members = {
        KeyGroup = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KeyGroup }),
    },
}

M.KeyGroupList = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.KeyGroupSummary,
        },
    },
}

M.ListKeyGroupsOutput = {
    type = "structure",
    members = {
        KeyGroupList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.KeyGroupList }),
    },
}

M.ListKeyValueStoresInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
        Status = {
            type = "string",
            traits = {
                http_query = "Status",
            },
        },
    },
}

M.KeyValueStoreList = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.KeyValueStore,
        },
    },
}

M.ListKeyValueStoresOutput = {
    type = "structure",
    members = {
        KeyValueStoreList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.KeyValueStoreList }),
    },
}

M.ListOriginAccessControlsInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.OriginAccessControlSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SigningProtocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SigningBehavior = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginAccessControlOriginType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OriginAccessControlList = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.OriginAccessControlSummary,
        },
    },
}

M.ListOriginAccessControlsOutput = {
    type = "structure",
    members = {
        OriginAccessControlList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.OriginAccessControlList }),
    },
}

M.OriginRequestPolicyType = {
    managed = "managed",
    custom = "custom",
}

M.ListOriginRequestPoliciesInput = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                http_query = "Type",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.OriginRequestPolicySummary = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OriginRequestPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OriginRequestPolicy }),
    },
}

M.OriginRequestPolicyList = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.OriginRequestPolicySummary,
        },
    },
}

M.ListOriginRequestPoliciesOutput = {
    type = "structure",
    members = {
        OriginRequestPolicyList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.OriginRequestPolicyList }),
    },
}

M.ListPublicKeysInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.PublicKeySummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EncodedKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Comment = {
            type = "string",
        },
    },
}

M.PublicKeyList = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.PublicKeySummary,
        },
    },
}

M.ListPublicKeysOutput = {
    type = "structure",
    members = {
        PublicKeyList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.PublicKeyList }),
    },
}

M.ListRealtimeLogConfigsInput = {
    type = "structure",
    members = {
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
    },
}

M.RealtimeLogConfigs = {
    type = "structure",
    members = {
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.RealtimeLogConfig,
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.ListRealtimeLogConfigsOutput = {
    type = "structure",
    members = {
        RealtimeLogConfigs = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.RealtimeLogConfigs }),
    },
}

M.ResponseHeadersPolicyType = {
    managed = "managed",
    custom = "custom",
}

M.ListResponseHeadersPoliciesInput = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                http_query = "Type",
            },
        },
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ResponseHeadersPolicySummary = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResponseHeadersPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResponseHeadersPolicy }),
    },
}

M.ResponseHeadersPolicyList = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.ResponseHeadersPolicySummary,
        },
    },
}

M.ListResponseHeadersPoliciesOutput = {
    type = "structure",
    members = {
        ResponseHeadersPolicyList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ResponseHeadersPolicyList }),
    },
}

M.ListStreamingDistributionsInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.StreamingDistributionSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Origin = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Origin }),
        Aliases = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Aliases }),
        TrustedSigners = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrustedSigners }),
        Comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PriceClass = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.StreamingDistributionList = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.StreamingDistributionSummary,
        },
    },
}

M.ListStreamingDistributionsOutput = {
    type = "structure",
    members = {
        StreamingDistributionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.StreamingDistributionList }),
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        Resource = {
            type = "string",
            traits = {
                http_query = "Resource",
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.Tags }),
    },
}

M.ListTrustStoresInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.TrustStoreSummary = {
    type = "structure",
    members = {
        Id = {
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
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NumberOfCaCertificates = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Reason = {
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

M.ListTrustStoresOutput = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        TrustStoreList = {
            type = "list",
            member = M.TrustStoreSummary,
        },
    },
}

M.ListVpcOriginsInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                http_query = "Marker",
            },
        },
        MaxItems = {
            type = "integer",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.VpcOriginSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastModifiedTime = {
            type = "timestamp",
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
        AccountId = {
            type = "string",
        },
        OriginEndpointArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VpcOriginList = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member = M.VpcOriginSummary,
        },
    },
}

M.ListVpcOriginsOutput = {
    type = "structure",
    members = {
        VpcOriginList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.VpcOriginList }),
    },
}

M.PublishConnectionFunctionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
    },
}

M.PublishConnectionFunctionOutput = {
    type = "structure",
    members = {
        ConnectionFunctionSummary = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ConnectionFunctionSummary }),
    },
}

M.PublishFunctionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
    },
}

M.PublishFunctionOutput = {
    type = "structure",
    members = {
        FunctionSummary = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FunctionSummary }),
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        Resource = {
            type = "string",
            traits = {
                http_query = "Resource",
                required = true,
            },
        },
        Tags = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "Tags",
        } }, { __index = M.Tags }),
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.TestConnectionFunctionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
        Stage = {
            type = "string",
        },
        ConnectionObject = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectionFunctionTestResult = {
    type = "structure",
    members = {
        ConnectionFunctionSummary = M.ConnectionFunctionSummary,
        ComputeUtilization = {
            type = "string",
        },
        ConnectionFunctionExecutionLogs = {
            type = "list",
            member = { type = "string" },
        },
        ConnectionFunctionErrorMessage = {
            type = "string",
        },
        ConnectionFunctionOutput = {
            type = "string",
        },
    },
}

M.TestConnectionFunctionOutput = {
    type = "structure",
    members = {
        ConnectionFunctionTestResult = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ConnectionFunctionTestResult }),
    },
}

M.TestFunctionFailed = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TestFunctionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
        Stage = {
            type = "string",
        },
        EventObject = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.TestResult = {
    type = "structure",
    members = {
        FunctionSummary = M.FunctionSummary,
        ComputeUtilization = {
            type = "string",
        },
        FunctionExecutionLogs = {
            type = "list",
            member = { type = "string" },
        },
        FunctionErrorMessage = {
            type = "string",
        },
        FunctionOutput = {
            type = "string",
        },
    },
}

M.TestFunctionOutput = {
    type = "structure",
    members = {
        TestResult = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.TestResult }),
    },
}

M.TagKeys = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        Resource = {
            type = "string",
            traits = {
                http_query = "Resource",
                required = true,
            },
        },
        TagKeys = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "TagKeys",
        } }, { __index = M.TagKeys }),
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateAnycastIpListInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IpAddressType = {
            type = "string",
        },
        IpamCidrConfigs = {
            type = "list",
            member = M.IpamCidrConfig,
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
    },
}

M.UpdateAnycastIpListOutput = {
    type = "structure",
    members = {
        AnycastIpList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.AnycastIpList }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateCachePolicyInput = {
    type = "structure",
    members = {
        CachePolicyConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "CachePolicyConfig",
        } }, { __index = M.CachePolicyConfig }),
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.UpdateCachePolicyOutput = {
    type = "structure",
    members = {
        CachePolicy = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.CachePolicy }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateCloudFrontOriginAccessIdentityInput = {
    type = "structure",
    members = {
        CloudFrontOriginAccessIdentityConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "CloudFrontOriginAccessIdentityConfig",
        } }, { __index = M.CloudFrontOriginAccessIdentityConfig }),
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.UpdateCloudFrontOriginAccessIdentityOutput = {
    type = "structure",
    members = {
        CloudFrontOriginAccessIdentity = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.CloudFrontOriginAccessIdentity }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateConnectionFunctionInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
        ConnectionFunctionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FunctionConfig }),
        ConnectionFunctionCode = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateConnectionFunctionOutput = {
    type = "structure",
    members = {
        ConnectionFunctionSummary = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ConnectionFunctionSummary }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateConnectionGroupInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Ipv6Enabled = {
            type = "boolean",
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
        AnycastIpListId = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.UpdateConnectionGroupOutput = {
    type = "structure",
    members = {
        ConnectionGroup = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ConnectionGroup }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateContinuousDeploymentPolicyInput = {
    type = "structure",
    members = {
        ContinuousDeploymentPolicyConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "ContinuousDeploymentPolicyConfig",
        } }, { __index = M.ContinuousDeploymentPolicyConfig }),
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.UpdateContinuousDeploymentPolicyOutput = {
    type = "structure",
    members = {
        ContinuousDeploymentPolicy = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ContinuousDeploymentPolicy }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateDistributionInput = {
    type = "structure",
    members = {
        DistributionConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "DistributionConfig",
        } }, { __index = M.DistributionConfig }),
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.UpdateDistributionOutput = {
    type = "structure",
    members = {
        Distribution = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Distribution }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateDistributionTenantInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DistributionId = {
            type = "string",
        },
        Domains = {
            type = "list",
            member = M.DomainItem,
        },
        Customizations = M.Customizations,
        Parameters = {
            type = "list",
            member = M.Parameter,
        },
        ConnectionGroupId = {
            type = "string",
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
        ManagedCertificateRequest = M.ManagedCertificateRequest,
        Enabled = {
            type = "boolean",
        },
    },
}

M.UpdateDistributionTenantOutput = {
    type = "structure",
    members = {
        DistributionTenant = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionTenant }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateDistributionWithStagingConfigInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StagingDistributionId = {
            type = "string",
            traits = {
                http_query = "StagingDistributionId",
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.UpdateDistributionWithStagingConfigOutput = {
    type = "structure",
    members = {
        Distribution = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Distribution }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateDomainAssociationInput = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetResource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DistributionResourceId }),
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.UpdateDomainAssociationOutput = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateFieldLevelEncryptionConfigInput = {
    type = "structure",
    members = {
        FieldLevelEncryptionConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "FieldLevelEncryptionConfig",
        } }, { __index = M.FieldLevelEncryptionConfig }),
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.UpdateFieldLevelEncryptionConfigOutput = {
    type = "structure",
    members = {
        FieldLevelEncryption = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FieldLevelEncryption }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateFieldLevelEncryptionProfileInput = {
    type = "structure",
    members = {
        FieldLevelEncryptionProfileConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "FieldLevelEncryptionProfileConfig",
        } }, { __index = M.FieldLevelEncryptionProfileConfig }),
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.UpdateFieldLevelEncryptionProfileOutput = {
    type = "structure",
    members = {
        FieldLevelEncryptionProfile = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FieldLevelEncryptionProfile }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateFunctionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
        FunctionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FunctionConfig }),
        FunctionCode = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateFunctionOutput = {
    type = "structure",
    members = {
        FunctionSummary = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FunctionSummary }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETtag",
            },
        },
    },
}

M.UpdateKeyGroupInput = {
    type = "structure",
    members = {
        KeyGroupConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "KeyGroupConfig",
        } }, { __index = M.KeyGroupConfig }),
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.UpdateKeyGroupOutput = {
    type = "structure",
    members = {
        KeyGroup = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.KeyGroup }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateKeyValueStoreInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
    },
}

M.UpdateKeyValueStoreOutput = {
    type = "structure",
    members = {
        KeyValueStore = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.KeyValueStore }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateOriginAccessControlInput = {
    type = "structure",
    members = {
        OriginAccessControlConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "OriginAccessControlConfig",
        } }, { __index = M.OriginAccessControlConfig }),
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.UpdateOriginAccessControlOutput = {
    type = "structure",
    members = {
        OriginAccessControl = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.OriginAccessControl }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateOriginRequestPolicyInput = {
    type = "structure",
    members = {
        OriginRequestPolicyConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "OriginRequestPolicyConfig",
        } }, { __index = M.OriginRequestPolicyConfig }),
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.UpdateOriginRequestPolicyOutput = {
    type = "structure",
    members = {
        OriginRequestPolicy = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.OriginRequestPolicy }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdatePublicKeyInput = {
    type = "structure",
    members = {
        PublicKeyConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "PublicKeyConfig",
        } }, { __index = M.PublicKeyConfig }),
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.UpdatePublicKeyOutput = {
    type = "structure",
    members = {
        PublicKey = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.PublicKey }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateRealtimeLogConfigInput = {
    type = "structure",
    members = {
        EndPoints = {
            type = "list",
            member = M.EndPoint,
        },
        Fields = {
            type = "list",
            member = { type = "string" },
        },
        Name = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
        SamplingRate = {
            type = "long",
        },
    },
}

M.UpdateRealtimeLogConfigOutput = {
    type = "structure",
    members = {
        RealtimeLogConfig = M.RealtimeLogConfig,
    },
}

M.UpdateResponseHeadersPolicyInput = {
    type = "structure",
    members = {
        ResponseHeadersPolicyConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "ResponseHeadersPolicyConfig",
        } }, { __index = M.ResponseHeadersPolicyConfig }),
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.UpdateResponseHeadersPolicyOutput = {
    type = "structure",
    members = {
        ResponseHeadersPolicy = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ResponseHeadersPolicy }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateStreamingDistributionInput = {
    type = "structure",
    members = {
        StreamingDistributionConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "StreamingDistributionConfig",
        } }, { __index = M.StreamingDistributionConfig }),
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
            },
        },
    },
}

M.UpdateStreamingDistributionOutput = {
    type = "structure",
    members = {
        StreamingDistribution = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.StreamingDistribution }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateTrustStoreInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CaCertificatesBundleSource = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.CaCertificatesBundleSource }),
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
    },
}

M.UpdateTrustStoreOutput = {
    type = "structure",
    members = {
        TrustStore = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.TrustStore }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.UpdateVpcOriginInput = {
    type = "structure",
    members = {
        VpcOriginEndpointConfig = setmetatable({ traits = {
            http_payload = true,
            required = true,
            xml_name = "VpcOriginEndpointConfig",
        } }, { __index = M.VpcOriginEndpointConfig }),
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        IfMatch = {
            type = "string",
            traits = {
                http_header = "If-Match",
                required = true,
            },
        },
    },
}

M.UpdateVpcOriginOutput = {
    type = "structure",
    members = {
        VpcOrigin = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.VpcOrigin }),
        ETag = {
            type = "string",
            traits = {
                http_header = "ETag",
            },
        },
    },
}

M.VerifyDnsConfigurationInput = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DnsConfigurationStatus = {
    Valid = "valid-configuration",
    Invalid = "invalid-configuration",
    Unknown = "unknown-configuration",
}

M.DnsConfiguration = {
    type = "structure",
    members = {
        Domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
        },
    },
}

M.VerifyDnsConfigurationOutput = {
    type = "structure",
    members = {
        DnsConfigurationList = {
            type = "list",
            member = M.DnsConfiguration,
        },
    },
}

return M
