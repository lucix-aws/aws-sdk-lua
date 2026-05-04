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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
        },
    },
}

M.KGKeyPairIds = {
    type = "structure",
    members = {
        KeyGroupId = {
            type = "string",
        },
        KeyPairIds = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Signer = {
    type = "structure",
    members = {
        AwsAccountNumber = {
            type = "string",
        },
        KeyPairIds = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Aliases = {
    type = "structure",
    members = {
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        CachedMethods = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        IpamCidrConfigs = {
            type = "list",
            member_type = "structure",
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
        IpamConfig = {
            type = "structure",
        },
        AnycastIps = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        IpCount = {
            type = "number",
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
            type = "number",
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
        IpamConfig = {
            type = "structure",
        },
    },
}

M.AnycastIpListCollection = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
        CaCertificatesBundleS3Location = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
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
        WhitelistedNames = {
            type = "structure",
        },
    },
}

M.Headers = {
    type = "structure",
    members = {
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
        },
    },
}

M.QueryStringCacheKeys = {
    type = "structure",
    members = {
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
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
        Cookies = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Headers = {
            type = "structure",
        },
        QueryStringCacheKeys = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
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
        TrustedSigners = {
            type = "structure",
        },
        TrustedKeyGroups = {
            type = "structure",
        },
        ViewerProtocolPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowedMethods = {
            type = "structure",
        },
        SmoothStreaming = {
            type = "boolean",
        },
        Compress = {
            type = "boolean",
        },
        LambdaFunctionAssociations = {
            type = "structure",
        },
        FunctionAssociations = {
            type = "structure",
        },
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
        GrpcConfig = {
            type = "structure",
        },
        ForwardedValues = {
            type = "structure",
        },
        MinTTL = {
            type = "number",
        },
        DefaultTTL = {
            type = "number",
        },
        MaxTTL = {
            type = "number",
        },
    },
}

M.CacheBehaviors = {
    type = "structure",
    members = {
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
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
        Cookies = {
            type = "structure",
        },
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
        Headers = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
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
        QueryStrings = {
            type = "structure",
        },
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
        HeadersConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CookiesConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        QueryStringsConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
        },
        MaxTTL = {
            type = "number",
        },
        MinTTL = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ParametersInCacheKeyAndForwardedToOrigin = {
            type = "structure",
        },
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
        CachePolicyConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        CachePolicy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CachePolicyList = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
        },
    },
}

M.CustomErrorResponses = {
    type = "structure",
    members = {
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
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
        TrustedSigners = {
            type = "structure",
        },
        TrustedKeyGroups = {
            type = "structure",
        },
        ViewerProtocolPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowedMethods = {
            type = "structure",
        },
        SmoothStreaming = {
            type = "boolean",
        },
        Compress = {
            type = "boolean",
        },
        LambdaFunctionAssociations = {
            type = "structure",
        },
        FunctionAssociations = {
            type = "structure",
        },
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
        GrpcConfig = {
            type = "structure",
        },
        ForwardedValues = {
            type = "structure",
        },
        MinTTL = {
            type = "number",
        },
        DefaultTTL = {
            type = "number",
        },
        MaxTTL = {
            type = "number",
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
        },
        IncludeCookies = {
            type = "boolean",
        },
        Bucket = {
            type = "string",
        },
        Prefix = {
            type = "string",
        },
    },
}

M.StatusCodes = {
    type = "structure",
    members = {
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.OriginGroupFailoverCriteria = {
    type = "structure",
    members = {
        StatusCodes = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
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
        FailoverCriteria = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Members = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SelectionCriteria = {
            type = "string",
        },
    },
}

M.OriginGroups = {
    type = "structure",
    members = {
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        HTTPSPort = {
            type = "number",
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
        OriginSslProtocols = {
            type = "structure",
        },
        OriginReadTimeout = {
            type = "number",
        },
        OriginKeepaliveTimeout = {
            type = "number",
        },
        IpAddressType = {
            type = "string",
        },
        OriginMtlsConfig = {
            type = "structure",
        },
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
                required = true,
            },
        },
        OriginReadTimeout = {
            type = "number",
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
            type = "number",
        },
        OriginKeepaliveTimeout = {
            type = "number",
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
        CustomHeaders = {
            type = "structure",
        },
        S3OriginConfig = {
            type = "structure",
        },
        CustomOriginConfig = {
            type = "structure",
        },
        VpcOriginConfig = {
            type = "structure",
        },
        ConnectionAttempts = {
            type = "number",
        },
        ConnectionTimeout = {
            type = "number",
        },
        ResponseCompletionTimeout = {
            type = "number",
        },
        OriginShield = {
            type = "structure",
        },
        OriginAccessControlId = {
            type = "string",
        },
    },
}

M.Origins = {
    type = "structure",
    members = {
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Restrictions = {
    type = "structure",
    members = {
        GeoRestriction = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        StringSchema = {
            type = "structure",
        },
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
        Definition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TenantConfig = {
    type = "structure",
    members = {
        ParameterDefinitions = {
            type = "list",
            member_type = "structure",
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
        },
        TrustStoreConfig = {
            type = "structure",
        },
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
        Aliases = {
            type = "structure",
        },
        DefaultRootObject = {
            type = "string",
        },
        Origins = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OriginGroups = {
            type = "structure",
        },
        DefaultCacheBehavior = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CacheBehaviors = {
            type = "structure",
        },
        CustomErrorResponses = {
            type = "structure",
        },
        Comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Logging = {
            type = "structure",
        },
        PriceClass = {
            type = "string",
        },
        Enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        ViewerCertificate = {
            type = "structure",
        },
        Restrictions = {
            type = "structure",
        },
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
        TenantConfig = {
            type = "structure",
        },
        ConnectionMode = {
            type = "string",
        },
        ViewerMtlsConfig = {
            type = "structure",
        },
        ConnectionFunctionAssociation = {
            type = "structure",
        },
        CacheTagConfig = {
            type = "structure",
        },
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
            type = "number",
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
        ActiveTrustedSigners = {
            type = "structure",
        },
        ActiveTrustedKeyGroups = {
            type = "structure",
        },
        DistributionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AliasICPRecordals = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CopyDistributionOutput = {
    type = "structure",
    members = {
        Distribution = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "structure",
        },
        IpAddressType = {
            type = "string",
        },
        IpamCidrConfigs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateAnycastIpListOutput = {
    type = "structure",
    members = {
        AnycastIpList = {
            type = "structure",
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
        CachePolicyConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "CachePolicyConfig",
            },
        },
    },
}

M.CreateCachePolicyOutput = {
    type = "structure",
    members = {
        CachePolicy = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        CloudFrontOriginAccessIdentityConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "CloudFrontOriginAccessIdentityConfig",
            },
        },
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
        CloudFrontOriginAccessIdentityConfig = {
            type = "structure",
        },
    },
}

M.CreateCloudFrontOriginAccessIdentityOutput = {
    type = "structure",
    members = {
        CloudFrontOriginAccessIdentity = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
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
        KeyValueStoreAssociations = {
            type = "structure",
        },
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
        ConnectionFunctionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ConnectionFunctionCode = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "structure",
        },
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
        ConnectionFunctionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ConnectionFunctionSummary = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        Tags = {
            type = "structure",
        },
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
        Tags = {
            type = "structure",
        },
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
        ConnectionGroup = {
            type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        MaximumTTL = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        SessionStickinessConfig = {
            type = "structure",
        },
    },
}

M.ContinuousDeploymentPolicyType = {
    SingleWeight = "SingleWeight",
    SingleHeader = "SingleHeader",
}

M.TrafficConfig = {
    type = "structure",
    members = {
        SingleWeightConfig = {
            type = "structure",
        },
        SingleHeaderConfig = {
            type = "structure",
        },
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
        StagingDistributionDnsNames = {
            type = "structure",
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
        TrafficConfig = {
            type = "structure",
        },
    },
}

M.CreateContinuousDeploymentPolicyInput = {
    type = "structure",
    members = {
        ContinuousDeploymentPolicyConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "ContinuousDeploymentPolicyConfig",
            },
        },
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
        ContinuousDeploymentPolicyConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateContinuousDeploymentPolicyOutput = {
    type = "structure",
    members = {
        ContinuousDeploymentPolicy = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        DistributionConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "DistributionConfig",
            },
        },
    },
}

M.CreateDistributionOutput = {
    type = "structure",
    members = {
        Distribution = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            member_type = "string",
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
        WebAcl = {
            type = "structure",
        },
        Certificate = {
            type = "structure",
        },
        GeoRestrictions = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "structure",
        },
        Customizations = {
            type = "structure",
        },
        Parameters = {
            type = "list",
            member_type = "structure",
        },
        ConnectionGroupId = {
            type = "string",
        },
        ManagedCertificateRequest = {
            type = "structure",
        },
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
            member_type = "structure",
        },
        Tags = {
            type = "structure",
        },
        Customizations = {
            type = "structure",
        },
        Parameters = {
            type = "list",
            member_type = "structure",
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
        DistributionTenant = {
            type = "structure",
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
        DistributionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDistributionWithTagsInput = {
    type = "structure",
    members = {
        DistributionConfigWithTags = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "DistributionConfigWithTags",
            },
        },
    },
}

M.CreateDistributionWithTagsOutput = {
    type = "structure",
    members = {
        Distribution = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
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
        ContentTypeProfiles = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
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
        QueryArgProfiles = {
            type = "structure",
        },
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
        QueryArgProfileConfig = {
            type = "structure",
        },
        ContentTypeProfileConfig = {
            type = "structure",
        },
    },
}

M.CreateFieldLevelEncryptionConfigInput = {
    type = "structure",
    members = {
        FieldLevelEncryptionConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "FieldLevelEncryptionConfig",
            },
        },
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
        FieldLevelEncryptionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateFieldLevelEncryptionConfigOutput = {
    type = "structure",
    members = {
        FieldLevelEncryption = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
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
        FieldPatterns = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EncryptionEntities = {
    type = "structure",
    members = {
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
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
        EncryptionEntities = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateFieldLevelEncryptionProfileInput = {
    type = "structure",
    members = {
        FieldLevelEncryptionProfileConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "FieldLevelEncryptionProfileConfig",
            },
        },
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
        FieldLevelEncryptionProfileConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateFieldLevelEncryptionProfileOutput = {
    type = "structure",
    members = {
        FieldLevelEncryptionProfile = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        FunctionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        FunctionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        FunctionMetadata = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateFunctionOutput = {
    type = "structure",
    members = {
        FunctionSummary = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
        },
    },
}

M.InvalidationBatch = {
    type = "structure",
    members = {
        Paths = {
            type = "structure",
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
        InvalidationBatch = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "InvalidationBatch",
            },
        },
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
        InvalidationBatch = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        Invalidation = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        InvalidationBatch = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "InvalidationBatch",
            },
        },
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
        Invalidation = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            member_type = "string",
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
        KeyGroupConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "KeyGroupConfig",
            },
        },
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
        KeyGroupConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateKeyGroupOutput = {
    type = "structure",
    members = {
        KeyGroup = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        ImportSource = {
            type = "structure",
        },
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
        KeyValueStore = {
            type = "structure",
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
        RealtimeMetricsSubscriptionConfig = {
            type = "structure",
        },
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
        MonitoringSubscription = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "MonitoringSubscription",
            },
        },
    },
}

M.CreateMonitoringSubscriptionOutput = {
    type = "structure",
    members = {
        MonitoringSubscription = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        OriginAccessControlConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "OriginAccessControlConfig",
            },
        },
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
        OriginAccessControlConfig = {
            type = "structure",
        },
    },
}

M.CreateOriginAccessControlOutput = {
    type = "structure",
    members = {
        OriginAccessControl = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        Cookies = {
            type = "structure",
        },
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
        Headers = {
            type = "structure",
        },
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
        QueryStrings = {
            type = "structure",
        },
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
        HeadersConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CookiesConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        QueryStringsConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateOriginRequestPolicyInput = {
    type = "structure",
    members = {
        OriginRequestPolicyConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "OriginRequestPolicyConfig",
            },
        },
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
        OriginRequestPolicyConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateOriginRequestPolicyOutput = {
    type = "structure",
    members = {
        OriginRequestPolicy = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        PublicKeyConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "PublicKeyConfig",
            },
        },
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
        PublicKeyConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePublicKeyOutput = {
    type = "structure",
    members = {
        PublicKey = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        KinesisStreamConfig = {
            type = "structure",
        },
    },
}

M.CreateRealtimeLogConfigInput = {
    type = "structure",
    members = {
        EndPoints = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Fields = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        EndPoints = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Fields = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateRealtimeLogConfigOutput = {
    type = "structure",
    members = {
        RealtimeLogConfig = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ResponseHeadersPolicyCorsConfig = {
    type = "structure",
    members = {
        AccessControlAllowOrigins = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AccessControlAllowHeaders = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AccessControlAllowMethods = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AccessControlAllowCredentials = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        AccessControlExposeHeaders = {
            type = "structure",
        },
        AccessControlMaxAgeSec = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        XSSProtection = {
            type = "structure",
        },
        FrameOptions = {
            type = "structure",
        },
        ReferrerPolicy = {
            type = "structure",
        },
        ContentSecurityPolicy = {
            type = "structure",
        },
        ContentTypeOptions = {
            type = "structure",
        },
        StrictTransportSecurity = {
            type = "structure",
        },
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
            type = "number",
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
        CorsConfig = {
            type = "structure",
        },
        SecurityHeadersConfig = {
            type = "structure",
        },
        ServerTimingHeadersConfig = {
            type = "structure",
        },
        CustomHeadersConfig = {
            type = "structure",
        },
        RemoveHeadersConfig = {
            type = "structure",
        },
    },
}

M.CreateResponseHeadersPolicyInput = {
    type = "structure",
    members = {
        ResponseHeadersPolicyConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "ResponseHeadersPolicyConfig",
            },
        },
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
        ResponseHeadersPolicyConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateResponseHeadersPolicyOutput = {
    type = "structure",
    members = {
        ResponseHeadersPolicy = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        S3Origin = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Aliases = {
            type = "structure",
        },
        Comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Logging = {
            type = "structure",
        },
        TrustedSigners = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        StreamingDistributionConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "StreamingDistributionConfig",
            },
        },
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
        ActiveTrustedSigners = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        StreamingDistributionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateStreamingDistributionOutput = {
    type = "structure",
    members = {
        StreamingDistribution = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        StreamingDistributionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateStreamingDistributionWithTagsInput = {
    type = "structure",
    members = {
        StreamingDistributionConfigWithTags = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "StreamingDistributionConfigWithTags",
            },
        },
    },
}

M.CreateStreamingDistributionWithTagsOutput = {
    type = "structure",
    members = {
        StreamingDistribution = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        CaCertificatesBundleSource = {
            type = "union",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "structure",
        },
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
            type = "number",
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
        TrustStore = {
            type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        HTTPSPort = {
            type = "number",
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
        OriginSslProtocols = {
            type = "structure",
        },
    },
}

M.CreateVpcOriginInput = {
    type = "structure",
    members = {
        VpcOriginEndpointConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "structure",
        },
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
        VpcOriginEndpointConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateVpcOriginOutput = {
    type = "structure",
    members = {
        VpcOrigin = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        VpcOrigin = {
            type = "structure",
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
        ConnectionFunctionSummary = {
            type = "structure",
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
        FunctionSummary = {
            type = "structure",
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
        KeyValueStore = {
            type = "structure",
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
        AnycastIpList = {
            type = "structure",
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
        CachePolicy = {
            type = "structure",
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
        CachePolicyConfig = {
            type = "structure",
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
        CloudFrontOriginAccessIdentity = {
            type = "structure",
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
        CloudFrontOriginAccessIdentityConfig = {
            type = "structure",
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
        ConnectionGroup = {
            type = "structure",
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
        ConnectionGroup = {
            type = "structure",
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
        ContinuousDeploymentPolicy = {
            type = "structure",
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
        ContinuousDeploymentPolicyConfig = {
            type = "structure",
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
        Distribution = {
            type = "structure",
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
        DistributionConfig = {
            type = "structure",
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
        DistributionTenant = {
            type = "structure",
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
        DistributionTenant = {
            type = "structure",
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
        FieldLevelEncryption = {
            type = "structure",
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
        FieldLevelEncryptionConfig = {
            type = "structure",
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
        FieldLevelEncryptionProfile = {
            type = "structure",
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
        FieldLevelEncryptionProfileConfig = {
            type = "structure",
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
        Invalidation = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        Invalidation = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        KeyGroup = {
            type = "structure",
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
        KeyGroupConfig = {
            type = "structure",
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
            member_type = "structure",
        },
    },
}

M.GetManagedCertificateDetailsOutput = {
    type = "structure",
    members = {
        ManagedCertificateDetails = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        MonitoringSubscription = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        OriginAccessControl = {
            type = "structure",
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
        OriginAccessControlConfig = {
            type = "structure",
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
        OriginRequestPolicy = {
            type = "structure",
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
        OriginRequestPolicyConfig = {
            type = "structure",
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
        PublicKey = {
            type = "structure",
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
        PublicKeyConfig = {
            type = "structure",
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
        RealtimeLogConfig = {
            type = "structure",
        },
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
        ResponseHeadersPolicy = {
            type = "structure",
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
        ResponseHeadersPolicyConfig = {
            type = "structure",
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
        StreamingDistribution = {
            type = "structure",
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
        StreamingDistributionConfig = {
            type = "structure",
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
        TrustStore = {
            type = "structure",
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
        VpcOrigin = {
            type = "structure",
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
            type = "number",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ListAnycastIpListsOutput = {
    type = "structure",
    members = {
        AnycastIpLists = {
            type = "structure",
            traits = {
                http_payload = true,
                xml_name = "AnycastIpListCollection",
            },
        },
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
            type = "number",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ListCachePoliciesOutput = {
    type = "structure",
    members = {
        CachePolicyList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListCloudFrontOriginAccessIdentitiesOutput = {
    type = "structure",
    members = {
        CloudFrontOriginAccessIdentityList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
            type = "number",
        },
        Quantity = {
            type = "number",
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListConflictingAliasesOutput = {
    type = "structure",
    members = {
        ConflictingAliasesList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.ListConnectionFunctionsInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "number",
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
            member_type = "structure",
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
        AssociationFilter = {
            type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ContinuousDeploymentPolicySummary = {
    type = "structure",
    members = {
        ContinuousDeploymentPolicy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ContinuousDeploymentPolicyList = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListContinuousDeploymentPoliciesOutput = {
    type = "structure",
    members = {
        ContinuousDeploymentPolicyList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
        Aliases = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Origins = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OriginGroups = {
            type = "structure",
        },
        DefaultCacheBehavior = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CacheBehaviors = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CustomErrorResponses = {
            type = "structure",
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
        ViewerCertificate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Restrictions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
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
        ViewerMtlsConfig = {
            type = "structure",
        },
        ConnectionFunctionAssociation = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListDistributionsOutput = {
    type = "structure",
    members = {
        DistributionList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
        DistributionList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListDistributionsByCachePolicyIdOutput = {
    type = "structure",
    members = {
        DistributionIdList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
        DistributionList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
        DistributionList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
        DistributionIdList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
        DistributionIdList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListDistributionsByOwnedResourceOutput = {
    type = "structure",
    members = {
        DistributionList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.ListDistributionsByRealtimeLogConfigInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "number",
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
        DistributionList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
        DistributionIdList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ListDistributionsByTrustStoreOutput = {
    type = "structure",
    members = {
        DistributionList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
        DistributionIdList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
        DistributionList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        AssociationFilter = {
            type = "structure",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "number",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ConnectionGroupId = {
            type = "string",
        },
        Customizations = {
            type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
        DomainControlValidationResource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MaxItems = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        QueryArgProfileConfig = {
            type = "structure",
        },
        ContentTypeProfileConfig = {
            type = "structure",
        },
    },
}

M.FieldLevelEncryptionList = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListFieldLevelEncryptionConfigsOutput = {
    type = "structure",
    members = {
        FieldLevelEncryptionList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
        EncryptionEntities = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListFieldLevelEncryptionProfilesOutput = {
    type = "structure",
    members = {
        FieldLevelEncryptionProfileList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListFunctionsOutput = {
    type = "structure",
    members = {
        FunctionList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListInvalidationsOutput = {
    type = "structure",
    members = {
        InvalidationList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.ListInvalidationsForDistributionTenantOutput = {
    type = "structure",
    members = {
        InvalidationList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
            traits = {
                http_query = "MaxItems",
            },
        },
    },
}

M.KeyGroupSummary = {
    type = "structure",
    members = {
        KeyGroup = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.KeyGroupList = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListKeyGroupsOutput = {
    type = "structure",
    members = {
        KeyGroupList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListKeyValueStoresOutput = {
    type = "structure",
    members = {
        KeyValueStoreList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListOriginAccessControlsOutput = {
    type = "structure",
    members = {
        OriginAccessControlList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
        OriginRequestPolicy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.OriginRequestPolicyList = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListOriginRequestPoliciesOutput = {
    type = "structure",
    members = {
        OriginRequestPolicyList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListPublicKeysOutput = {
    type = "structure",
    members = {
        PublicKeyList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.ListRealtimeLogConfigsInput = {
    type = "structure",
    members = {
        MaxItems = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
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
        RealtimeLogConfigs = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
        ResponseHeadersPolicy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ResponseHeadersPolicyList = {
    type = "structure",
    members = {
        NextMarker = {
            type = "string",
        },
        MaxItems = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Quantity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListResponseHeadersPoliciesOutput = {
    type = "structure",
    members = {
        ResponseHeadersPolicyList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
            type = "number",
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
        S3Origin = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Aliases = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TrustedSigners = {
            type = "structure",
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListStreamingDistributionsOutput = {
    type = "structure",
    members = {
        StreamingDistributionList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        Tags = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ListTrustStoresInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Items = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListVpcOriginsOutput = {
    type = "structure",
    members = {
        VpcOriginList = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        ConnectionFunctionSummary = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        FunctionSummary = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        Tags = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "Tags",
            },
        },
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
        ConnectionFunctionSummary = {
            type = "structure",
        },
        ComputeUtilization = {
            type = "string",
        },
        ConnectionFunctionExecutionLogs = {
            type = "list",
            member_type = "string",
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
        ConnectionFunctionTestResult = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        FunctionSummary = {
            type = "structure",
        },
        ComputeUtilization = {
            type = "string",
        },
        FunctionExecutionLogs = {
            type = "list",
            member_type = "string",
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
        TestResult = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
    },
}

M.TagKeys = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "string",
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
        TagKeys = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "TagKeys",
            },
        },
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
            member_type = "structure",
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
        AnycastIpList = {
            type = "structure",
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
    },
}

M.UpdateCachePolicyInput = {
    type = "structure",
    members = {
        CachePolicyConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "CachePolicyConfig",
            },
        },
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
        CachePolicy = {
            type = "structure",
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
    },
}

M.UpdateCloudFrontOriginAccessIdentityInput = {
    type = "structure",
    members = {
        CloudFrontOriginAccessIdentityConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "CloudFrontOriginAccessIdentityConfig",
            },
        },
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
        CloudFrontOriginAccessIdentity = {
            type = "structure",
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
        ConnectionFunctionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ConnectionFunctionSummary = {
            type = "structure",
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
        ConnectionGroup = {
            type = "structure",
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
    },
}

M.UpdateContinuousDeploymentPolicyInput = {
    type = "structure",
    members = {
        ContinuousDeploymentPolicyConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "ContinuousDeploymentPolicyConfig",
            },
        },
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
        ContinuousDeploymentPolicy = {
            type = "structure",
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
    },
}

M.UpdateDistributionInput = {
    type = "structure",
    members = {
        DistributionConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "DistributionConfig",
            },
        },
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
        Distribution = {
            type = "structure",
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
            member_type = "structure",
        },
        Customizations = {
            type = "structure",
        },
        Parameters = {
            type = "list",
            member_type = "structure",
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
        ManagedCertificateRequest = {
            type = "structure",
        },
        Enabled = {
            type = "boolean",
        },
    },
}

M.UpdateDistributionTenantOutput = {
    type = "structure",
    members = {
        DistributionTenant = {
            type = "structure",
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
        Distribution = {
            type = "structure",
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
        TargetResource = {
            type = "structure",
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
        FieldLevelEncryptionConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "FieldLevelEncryptionConfig",
            },
        },
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
        FieldLevelEncryption = {
            type = "structure",
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
    },
}

M.UpdateFieldLevelEncryptionProfileInput = {
    type = "structure",
    members = {
        FieldLevelEncryptionProfileConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "FieldLevelEncryptionProfileConfig",
            },
        },
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
        FieldLevelEncryptionProfile = {
            type = "structure",
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
        FunctionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        FunctionSummary = {
            type = "structure",
            traits = {
                http_payload = true,
            },
        },
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
        KeyGroupConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "KeyGroupConfig",
            },
        },
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
        KeyGroup = {
            type = "structure",
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
        KeyValueStore = {
            type = "structure",
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
    },
}

M.UpdateOriginAccessControlInput = {
    type = "structure",
    members = {
        OriginAccessControlConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "OriginAccessControlConfig",
            },
        },
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
        OriginAccessControl = {
            type = "structure",
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
    },
}

M.UpdateOriginRequestPolicyInput = {
    type = "structure",
    members = {
        OriginRequestPolicyConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "OriginRequestPolicyConfig",
            },
        },
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
        OriginRequestPolicy = {
            type = "structure",
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
    },
}

M.UpdatePublicKeyInput = {
    type = "structure",
    members = {
        PublicKeyConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "PublicKeyConfig",
            },
        },
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
        PublicKey = {
            type = "structure",
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
    },
}

M.UpdateRealtimeLogConfigInput = {
    type = "structure",
    members = {
        EndPoints = {
            type = "list",
            member_type = "structure",
        },
        Fields = {
            type = "list",
            member_type = "string",
        },
        Name = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
        SamplingRate = {
            type = "number",
        },
    },
}

M.UpdateRealtimeLogConfigOutput = {
    type = "structure",
    members = {
        RealtimeLogConfig = {
            type = "structure",
        },
    },
}

M.UpdateResponseHeadersPolicyInput = {
    type = "structure",
    members = {
        ResponseHeadersPolicyConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "ResponseHeadersPolicyConfig",
            },
        },
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
        ResponseHeadersPolicy = {
            type = "structure",
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
    },
}

M.UpdateStreamingDistributionInput = {
    type = "structure",
    members = {
        StreamingDistributionConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "StreamingDistributionConfig",
            },
        },
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
        StreamingDistribution = {
            type = "structure",
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
        CaCertificatesBundleSource = {
            type = "union",
            traits = {
                http_payload = true,
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

M.UpdateTrustStoreOutput = {
    type = "structure",
    members = {
        TrustStore = {
            type = "structure",
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
    },
}

M.UpdateVpcOriginInput = {
    type = "structure",
    members = {
        VpcOriginEndpointConfig = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
                xml_name = "VpcOriginEndpointConfig",
            },
        },
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
        VpcOrigin = {
            type = "structure",
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
            member_type = "structure",
        },
    },
}

return M
