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
    id = "AccessDenied",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.KeyPairIds = {
    type = "structure",
    id = "KeyPairIds",
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
    id = "KGKeyPairIds",
    members = {
        KeyGroupId = {
            type = "string",
        },
        KeyPairIds = M.KeyPairIds,
    },
}

M.ActiveTrustedKeyGroups = {
    type = "structure",
    id = "ActiveTrustedKeyGroups",
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
    id = "Signer",
    members = {
        AwsAccountNumber = {
            type = "string",
        },
        KeyPairIds = M.KeyPairIds,
    },
}

M.ActiveTrustedSigners = {
    type = "structure",
    id = "ActiveTrustedSigners",
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
    id = "Aliases",
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
    id = "AliasICPRecordal",
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
    id = "CachedMethods",
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
    id = "AllowedMethods",
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
    id = "IpamCidrConfig",
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
    id = "IpamConfig",
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
    id = "AnycastIpList",
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
    id = "AnycastIpListSummary",
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
    id = "AnycastIpListCollection",
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
    id = "AssociateAliasInput",
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
    id = "AssociateAliasOutput",
}

M.IllegalUpdate = {
    type = "structure",
    id = "IllegalUpdate",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidArgument = {
    type = "structure",
    id = "InvalidArgument",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchDistribution = {
    type = "structure",
    id = "NoSuchDistribution",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionCNAMEs = {
    type = "structure",
    id = "TooManyDistributionCNAMEs",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateDistributionTenantWebACLInput = {
    type = "structure",
    id = "AssociateDistributionTenantWebACLInput",
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
    id = "AssociateDistributionTenantWebACLOutput",
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
    id = "EntityLimitExceeded",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EntityNotFound = {
    type = "structure",
    id = "EntityNotFound",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidIfMatchVersion = {
    type = "structure",
    id = "InvalidIfMatchVersion",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PreconditionFailed = {
    type = "structure",
    id = "PreconditionFailed",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateDistributionWebACLInput = {
    type = "structure",
    id = "AssociateDistributionWebACLInput",
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
    id = "AssociateDistributionWebACLOutput",
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
    id = "BatchTooLarge",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CaCertificatesBundleS3Location = {
    type = "structure",
    id = "CaCertificatesBundleS3Location",
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
    id = "CaCertificatesBundleSource",
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
    id = "CookieNames",
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
    id = "CookiePreference",
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
    id = "Headers",
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
    id = "QueryStringCacheKeys",
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
    id = "ForwardedValues",
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
    id = "FunctionAssociation",
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
    id = "FunctionAssociations",
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
    id = "GrpcConfig",
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
    id = "LambdaFunctionAssociation",
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
    id = "LambdaFunctionAssociations",
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
    id = "TrustedKeyGroups",
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
    id = "TrustedSigners",
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
    id = "CacheBehavior",
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
    id = "CacheBehaviors",
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
    id = "CachePolicyCookiesConfig",
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
    id = "CachePolicyHeadersConfig",
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
    id = "QueryStringNames",
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
    id = "CachePolicyQueryStringsConfig",
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
    id = "ParametersInCacheKeyAndForwardedToOrigin",
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
    id = "CachePolicyConfig",
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
    id = "CachePolicy",
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
    id = "CachePolicyAlreadyExists",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CachePolicyInUse = {
    type = "structure",
    id = "CachePolicyInUse",
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
    id = "CachePolicySummary",
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
    id = "CachePolicyList",
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
    id = "CacheTagConfig",
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
    id = "CannotChangeImmutablePublicKeyFields",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CannotDeleteEntityWhileInUse = {
    type = "structure",
    id = "CannotDeleteEntityWhileInUse",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CannotUpdateEntityWhileInUse = {
    type = "structure",
    id = "CannotUpdateEntityWhileInUse",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Certificate = {
    type = "structure",
    id = "Certificate",
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
    id = "CNAMEAlreadyExists",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CopyDistributionInput = {
    type = "structure",
    id = "CopyDistributionInput",
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
    id = "ConnectionFunctionAssociation",
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
    id = "CustomErrorResponse",
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
    id = "CustomErrorResponses",
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
    id = "DefaultCacheBehavior",
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
    id = "LoggingConfig",
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
    id = "StatusCodes",
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
    id = "OriginGroupFailoverCriteria",
    members = {
        StatusCodes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StatusCodes }),
    },
}

M.OriginGroupMember = {
    type = "structure",
    id = "OriginGroupMember",
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
    id = "OriginGroupMembers",
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
    id = "OriginGroup",
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
    id = "OriginGroups",
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
    id = "OriginCustomHeader",
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
    id = "CustomHeaders",
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
    id = "OriginMtlsConfig",
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
    id = "OriginSslProtocols",
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
    id = "CustomOriginConfig",
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
    id = "OriginShield",
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
    id = "S3OriginConfig",
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
    id = "VpcOriginConfig",
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
    id = "Origin",
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
    id = "Origins",
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
    id = "GeoRestriction",
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
    id = "Restrictions",
    members = {
        GeoRestriction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GeoRestriction }),
    },
}

M.StringSchemaConfig = {
    type = "structure",
    id = "StringSchemaConfig",
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
    id = "ParameterDefinitionSchema",
    members = {
        StringSchema = M.StringSchemaConfig,
    },
}

M.ParameterDefinition = {
    type = "structure",
    id = "ParameterDefinition",
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
    id = "TenantConfig",
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
    id = "ViewerCertificate",
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
    id = "TrustStoreConfig",
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
    id = "ViewerMtlsConfig",
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
    id = "DistributionConfig",
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
    id = "Distribution",
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
    id = "CopyDistributionOutput",
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
    id = "DistributionAlreadyExists",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior = {
    type = "structure",
    id = "IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InconsistentQuantities = {
    type = "structure",
    id = "InconsistentQuantities",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidDefaultRootObject = {
    type = "structure",
    id = "InvalidDefaultRootObject",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidErrorCode = {
    type = "structure",
    id = "InvalidErrorCode",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidForwardCookies = {
    type = "structure",
    id = "InvalidForwardCookies",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidFunctionAssociation = {
    type = "structure",
    id = "InvalidFunctionAssociation",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidGeoRestrictionParameter = {
    type = "structure",
    id = "InvalidGeoRestrictionParameter",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidHeadersForS3Origin = {
    type = "structure",
    id = "InvalidHeadersForS3Origin",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidLambdaFunctionAssociation = {
    type = "structure",
    id = "InvalidLambdaFunctionAssociation",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidLocationCode = {
    type = "structure",
    id = "InvalidLocationCode",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidMinimumProtocolVersion = {
    type = "structure",
    id = "InvalidMinimumProtocolVersion",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidOrigin = {
    type = "structure",
    id = "InvalidOrigin",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidOriginAccessControl = {
    type = "structure",
    id = "InvalidOriginAccessControl",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidOriginAccessIdentity = {
    type = "structure",
    id = "InvalidOriginAccessIdentity",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidOriginKeepaliveTimeout = {
    type = "structure",
    id = "InvalidOriginKeepaliveTimeout",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidOriginReadTimeout = {
    type = "structure",
    id = "InvalidOriginReadTimeout",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidProtocolSettings = {
    type = "structure",
    id = "InvalidProtocolSettings",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidQueryStringParameters = {
    type = "structure",
    id = "InvalidQueryStringParameters",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRelativePath = {
    type = "structure",
    id = "InvalidRelativePath",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequiredProtocol = {
    type = "structure",
    id = "InvalidRequiredProtocol",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidResponseCode = {
    type = "structure",
    id = "InvalidResponseCode",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTTLOrder = {
    type = "structure",
    id = "InvalidTTLOrder",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidViewerCertificate = {
    type = "structure",
    id = "InvalidViewerCertificate",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidWebACLId = {
    type = "structure",
    id = "InvalidWebACLId",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MissingBody = {
    type = "structure",
    id = "MissingBody",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchCachePolicy = {
    type = "structure",
    id = "NoSuchCachePolicy",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchFieldLevelEncryptionConfig = {
    type = "structure",
    id = "NoSuchFieldLevelEncryptionConfig",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchOrigin = {
    type = "structure",
    id = "NoSuchOrigin",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchOriginRequestPolicy = {
    type = "structure",
    id = "NoSuchOriginRequestPolicy",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchRealtimeLogConfig = {
    type = "structure",
    id = "NoSuchRealtimeLogConfig",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchResponseHeadersPolicy = {
    type = "structure",
    id = "NoSuchResponseHeadersPolicy",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RealtimeLogConfigOwnerMismatch = {
    type = "structure",
    id = "RealtimeLogConfigOwnerMismatch",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyCacheBehaviors = {
    type = "structure",
    id = "TooManyCacheBehaviors",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyCertificates = {
    type = "structure",
    id = "TooManyCertificates",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyCookieNamesInWhiteList = {
    type = "structure",
    id = "TooManyCookieNamesInWhiteList",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributions = {
    type = "structure",
    id = "TooManyDistributions",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionsAssociatedToCachePolicy = {
    type = "structure",
    id = "TooManyDistributionsAssociatedToCachePolicy",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionsAssociatedToFieldLevelEncryptionConfig = {
    type = "structure",
    id = "TooManyDistributionsAssociatedToFieldLevelEncryptionConfig",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionsAssociatedToKeyGroup = {
    type = "structure",
    id = "TooManyDistributionsAssociatedToKeyGroup",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionsAssociatedToOriginAccessControl = {
    type = "structure",
    id = "TooManyDistributionsAssociatedToOriginAccessControl",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionsAssociatedToOriginRequestPolicy = {
    type = "structure",
    id = "TooManyDistributionsAssociatedToOriginRequestPolicy",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionsAssociatedToResponseHeadersPolicy = {
    type = "structure",
    id = "TooManyDistributionsAssociatedToResponseHeadersPolicy",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionsWithFunctionAssociations = {
    type = "structure",
    id = "TooManyDistributionsWithFunctionAssociations",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionsWithLambdaAssociations = {
    type = "structure",
    id = "TooManyDistributionsWithLambdaAssociations",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyDistributionsWithSingleFunctionARN = {
    type = "structure",
    id = "TooManyDistributionsWithSingleFunctionARN",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyFunctionAssociations = {
    type = "structure",
    id = "TooManyFunctionAssociations",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyHeadersInForwardedValues = {
    type = "structure",
    id = "TooManyHeadersInForwardedValues",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyKeyGroupsAssociatedToDistribution = {
    type = "structure",
    id = "TooManyKeyGroupsAssociatedToDistribution",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyLambdaFunctionAssociations = {
    type = "structure",
    id = "TooManyLambdaFunctionAssociations",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyOriginCustomHeaders = {
    type = "structure",
    id = "TooManyOriginCustomHeaders",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyOriginGroupsPerDistribution = {
    type = "structure",
    id = "TooManyOriginGroupsPerDistribution",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyOrigins = {
    type = "structure",
    id = "TooManyOrigins",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyQueryStringParameters = {
    type = "structure",
    id = "TooManyQueryStringParameters",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyTrustedSigners = {
    type = "structure",
    id = "TooManyTrustedSigners",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TrustedKeyGroupDoesNotExist = {
    type = "structure",
    id = "TrustedKeyGroupDoesNotExist",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TrustedSignerDoesNotExist = {
    type = "structure",
    id = "TrustedSignerDoesNotExist",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
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
        },
    },
}

M.Tags = {
    type = "structure",
    id = "Tags",
    members = {
        Items = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateAnycastIpListInput = {
    type = "structure",
    id = "CreateAnycastIpListInput",
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
    id = "CreateAnycastIpListOutput",
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
    id = "EntityAlreadyExists",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTagging = {
    type = "structure",
    id = "InvalidTagging",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedOperation = {
    type = "structure",
    id = "UnsupportedOperation",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateCachePolicyInput = {
    type = "structure",
    id = "CreateCachePolicyInput",
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
    id = "CreateCachePolicyOutput",
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
    id = "TooManyCachePolicies",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyCookiesInCachePolicy = {
    type = "structure",
    id = "TooManyCookiesInCachePolicy",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyHeadersInCachePolicy = {
    type = "structure",
    id = "TooManyHeadersInCachePolicy",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyQueryStringsInCachePolicy = {
    type = "structure",
    id = "TooManyQueryStringsInCachePolicy",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudFrontOriginAccessIdentityAlreadyExists = {
    type = "structure",
    id = "CloudFrontOriginAccessIdentityAlreadyExists",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudFrontOriginAccessIdentityConfig = {
    type = "structure",
    id = "CloudFrontOriginAccessIdentityConfig",
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
    id = "CreateCloudFrontOriginAccessIdentityInput",
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
    id = "CloudFrontOriginAccessIdentity",
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
    id = "CreateCloudFrontOriginAccessIdentityOutput",
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
    id = "TooManyCloudFrontOriginAccessIdentities",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.KeyValueStoreAssociation = {
    type = "structure",
    id = "KeyValueStoreAssociation",
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
    id = "KeyValueStoreAssociations",
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
    id = "FunctionConfig",
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
    id = "CreateConnectionFunctionInput",
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
    id = "ConnectionFunctionSummary",
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
    id = "CreateConnectionFunctionOutput",
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
    id = "EntitySizeLimitExceeded",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateConnectionGroupInput = {
    type = "structure",
    id = "CreateConnectionGroupInput",
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
    id = "ConnectionGroup",
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
    id = "CreateConnectionGroupOutput",
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
    id = "ContinuousDeploymentPolicyAlreadyExists",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StagingDistributionDnsNames = {
    type = "structure",
    id = "StagingDistributionDnsNames",
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
    id = "ContinuousDeploymentSingleHeaderConfig",
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
    id = "SessionStickinessConfig",
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
    id = "ContinuousDeploymentSingleWeightConfig",
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
    id = "TrafficConfig",
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
    id = "ContinuousDeploymentPolicyConfig",
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
    id = "CreateContinuousDeploymentPolicyInput",
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
    id = "ContinuousDeploymentPolicy",
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
    id = "CreateContinuousDeploymentPolicyOutput",
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
    id = "StagingDistributionInUse",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyContinuousDeploymentPolicies = {
    type = "structure",
    id = "TooManyContinuousDeploymentPolicies",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ContinuousDeploymentPolicyInUse = {
    type = "structure",
    id = "ContinuousDeploymentPolicyInUse",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateDistributionInput = {
    type = "structure",
    id = "CreateDistributionInput",
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
    id = "CreateDistributionOutput",
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
    id = "IllegalOriginAccessConfiguration",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidDomainNameForOriginAccessControl = {
    type = "structure",
    id = "InvalidDomainNameForOriginAccessControl",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchContinuousDeploymentPolicy = {
    type = "structure",
    id = "NoSuchContinuousDeploymentPolicy",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GeoRestrictionCustomization = {
    type = "structure",
    id = "GeoRestrictionCustomization",
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
    id = "WebAclCustomization",
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
    id = "Customizations",
    members = {
        WebAcl = M.WebAclCustomization,
        Certificate = M.Certificate,
        GeoRestrictions = M.GeoRestrictionCustomization,
    },
}

M.DomainItem = {
    type = "structure",
    id = "DomainItem",
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
    id = "ManagedCertificateRequest",
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
    id = "Parameter",
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
    id = "CreateDistributionTenantInput",
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
    id = "DomainResult",
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
    id = "DistributionTenant",
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
    id = "CreateDistributionTenantOutput",
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
    id = "InvalidAssociation",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DistributionConfigWithTags = {
    type = "structure",
    id = "DistributionConfigWithTags",
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
    id = "CreateDistributionWithTagsInput",
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
    id = "CreateDistributionWithTagsOutput",
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
    id = "ContentTypeProfile",
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
    id = "ContentTypeProfiles",
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
    id = "ContentTypeProfileConfig",
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
    id = "QueryArgProfile",
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
    id = "QueryArgProfiles",
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
    id = "QueryArgProfileConfig",
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
    id = "FieldLevelEncryptionConfig",
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
    id = "CreateFieldLevelEncryptionConfigInput",
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
    id = "FieldLevelEncryption",
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
    id = "CreateFieldLevelEncryptionConfigOutput",
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
    id = "FieldLevelEncryptionConfigAlreadyExists",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchFieldLevelEncryptionProfile = {
    type = "structure",
    id = "NoSuchFieldLevelEncryptionProfile",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.QueryArgProfileEmpty = {
    type = "structure",
    id = "QueryArgProfileEmpty",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyFieldLevelEncryptionConfigs = {
    type = "structure",
    id = "TooManyFieldLevelEncryptionConfigs",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyFieldLevelEncryptionContentTypeProfiles = {
    type = "structure",
    id = "TooManyFieldLevelEncryptionContentTypeProfiles",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyFieldLevelEncryptionQueryArgProfiles = {
    type = "structure",
    id = "TooManyFieldLevelEncryptionQueryArgProfiles",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FieldPatterns = {
    type = "structure",
    id = "FieldPatterns",
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
    id = "EncryptionEntity",
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
    id = "EncryptionEntities",
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
    id = "FieldLevelEncryptionProfileConfig",
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
    id = "CreateFieldLevelEncryptionProfileInput",
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
    id = "FieldLevelEncryptionProfile",
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
    id = "CreateFieldLevelEncryptionProfileOutput",
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
    id = "FieldLevelEncryptionProfileAlreadyExists",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FieldLevelEncryptionProfileSizeExceeded = {
    type = "structure",
    id = "FieldLevelEncryptionProfileSizeExceeded",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchPublicKey = {
    type = "structure",
    id = "NoSuchPublicKey",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyFieldLevelEncryptionEncryptionEntities = {
    type = "structure",
    id = "TooManyFieldLevelEncryptionEncryptionEntities",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyFieldLevelEncryptionFieldPatterns = {
    type = "structure",
    id = "TooManyFieldLevelEncryptionFieldPatterns",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyFieldLevelEncryptionProfiles = {
    type = "structure",
    id = "TooManyFieldLevelEncryptionProfiles",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateFunctionInput = {
    type = "structure",
    id = "CreateFunctionInput",
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
    id = "FunctionMetadata",
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
    id = "FunctionSummary",
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
    id = "CreateFunctionOutput",
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
    id = "FunctionAlreadyExists",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.FunctionSizeLimitExceeded = {
    type = "structure",
    id = "FunctionSizeLimitExceeded",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyFunctions = {
    type = "structure",
    id = "TooManyFunctions",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Paths = {
    type = "structure",
    id = "Paths",
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
    id = "InvalidationBatch",
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
    id = "CreateInvalidationInput",
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
    id = "Invalidation",
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
    id = "CreateInvalidationOutput",
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
    id = "TooManyInvalidationsInProgress",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateInvalidationForDistributionTenantInput = {
    type = "structure",
    id = "CreateInvalidationForDistributionTenantInput",
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
    id = "CreateInvalidationForDistributionTenantOutput",
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
    id = "KeyGroupConfig",
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
    id = "CreateKeyGroupInput",
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
    id = "KeyGroup",
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
    id = "CreateKeyGroupOutput",
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
    id = "KeyGroupAlreadyExists",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyKeyGroups = {
    type = "structure",
    id = "TooManyKeyGroups",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyPublicKeysInKeyGroup = {
    type = "structure",
    id = "TooManyPublicKeysInKeyGroup",
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
    id = "ImportSource",
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
    id = "CreateKeyValueStoreInput",
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
    id = "KeyValueStore",
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
    id = "CreateKeyValueStoreOutput",
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
    id = "RealtimeMetricsSubscriptionConfig",
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
    id = "MonitoringSubscription",
    members = {
        RealtimeMetricsSubscriptionConfig = M.RealtimeMetricsSubscriptionConfig,
    },
}

M.CreateMonitoringSubscriptionInput = {
    type = "structure",
    id = "CreateMonitoringSubscriptionInput",
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
    id = "CreateMonitoringSubscriptionOutput",
    members = {
        MonitoringSubscription = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.MonitoringSubscription }),
    },
}

M.MonitoringSubscriptionAlreadyExists = {
    type = "structure",
    id = "MonitoringSubscriptionAlreadyExists",
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
    id = "OriginAccessControlConfig",
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
    id = "CreateOriginAccessControlInput",
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
    id = "OriginAccessControl",
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
    id = "CreateOriginAccessControlOutput",
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
    id = "OriginAccessControlAlreadyExists",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyOriginAccessControls = {
    type = "structure",
    id = "TooManyOriginAccessControls",
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
    id = "OriginRequestPolicyCookiesConfig",
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
    id = "OriginRequestPolicyHeadersConfig",
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
    id = "OriginRequestPolicyQueryStringsConfig",
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
    id = "OriginRequestPolicyConfig",
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
    id = "CreateOriginRequestPolicyInput",
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
    id = "OriginRequestPolicy",
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
    id = "CreateOriginRequestPolicyOutput",
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
    id = "OriginRequestPolicyAlreadyExists",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyCookiesInOriginRequestPolicy = {
    type = "structure",
    id = "TooManyCookiesInOriginRequestPolicy",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyHeadersInOriginRequestPolicy = {
    type = "structure",
    id = "TooManyHeadersInOriginRequestPolicy",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyOriginRequestPolicies = {
    type = "structure",
    id = "TooManyOriginRequestPolicies",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyQueryStringsInOriginRequestPolicy = {
    type = "structure",
    id = "TooManyQueryStringsInOriginRequestPolicy",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PublicKeyConfig = {
    type = "structure",
    id = "PublicKeyConfig",
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
    id = "CreatePublicKeyInput",
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
    id = "PublicKey",
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
    id = "CreatePublicKeyOutput",
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
    id = "PublicKeyAlreadyExists",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyPublicKeys = {
    type = "structure",
    id = "TooManyPublicKeys",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.KinesisStreamConfig = {
    type = "structure",
    id = "KinesisStreamConfig",
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
    id = "EndPoint",
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
    id = "CreateRealtimeLogConfigInput",
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
    id = "RealtimeLogConfig",
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
    id = "CreateRealtimeLogConfigOutput",
    members = {
        RealtimeLogConfig = M.RealtimeLogConfig,
    },
}

M.RealtimeLogConfigAlreadyExists = {
    type = "structure",
    id = "RealtimeLogConfigAlreadyExists",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRealtimeLogConfigs = {
    type = "structure",
    id = "TooManyRealtimeLogConfigs",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResponseHeadersPolicyAccessControlAllowHeaders = {
    type = "structure",
    id = "ResponseHeadersPolicyAccessControlAllowHeaders",
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
    id = "ResponseHeadersPolicyAccessControlAllowMethods",
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
    id = "ResponseHeadersPolicyAccessControlAllowOrigins",
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
    id = "ResponseHeadersPolicyAccessControlExposeHeaders",
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
    id = "ResponseHeadersPolicyCorsConfig",
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
    id = "ResponseHeadersPolicyCustomHeader",
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
    id = "ResponseHeadersPolicyCustomHeadersConfig",
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
    id = "ResponseHeadersPolicyRemoveHeader",
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
    id = "ResponseHeadersPolicyRemoveHeadersConfig",
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
    id = "ResponseHeadersPolicyContentSecurityPolicy",
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
    id = "ResponseHeadersPolicyContentTypeOptions",
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
    id = "ResponseHeadersPolicyFrameOptions",
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
    id = "ResponseHeadersPolicyReferrerPolicy",
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
    id = "ResponseHeadersPolicyStrictTransportSecurity",
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
    id = "ResponseHeadersPolicyXSSProtection",
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
    id = "ResponseHeadersPolicySecurityHeadersConfig",
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
    id = "ResponseHeadersPolicyServerTimingHeadersConfig",
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
    id = "ResponseHeadersPolicyConfig",
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
    id = "CreateResponseHeadersPolicyInput",
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
    id = "ResponseHeadersPolicy",
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
    id = "CreateResponseHeadersPolicyOutput",
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
    id = "ResponseHeadersPolicyAlreadyExists",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooLongCSPInResponseHeadersPolicy = {
    type = "structure",
    id = "TooLongCSPInResponseHeadersPolicy",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyCustomHeadersInResponseHeadersPolicy = {
    type = "structure",
    id = "TooManyCustomHeadersInResponseHeadersPolicy",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRemoveHeadersInResponseHeadersPolicy = {
    type = "structure",
    id = "TooManyRemoveHeadersInResponseHeadersPolicy",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyResponseHeadersPolicies = {
    type = "structure",
    id = "TooManyResponseHeadersPolicies",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StreamingLoggingConfig = {
    type = "structure",
    id = "StreamingLoggingConfig",
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
    id = "S3Origin",
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
    id = "StreamingDistributionConfig",
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
    id = "CreateStreamingDistributionInput",
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
    id = "StreamingDistribution",
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
    id = "CreateStreamingDistributionOutput",
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
    id = "StreamingDistributionAlreadyExists",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyStreamingDistributionCNAMEs = {
    type = "structure",
    id = "TooManyStreamingDistributionCNAMEs",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyStreamingDistributions = {
    type = "structure",
    id = "TooManyStreamingDistributions",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StreamingDistributionConfigWithTags = {
    type = "structure",
    id = "StreamingDistributionConfigWithTags",
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
    id = "CreateStreamingDistributionWithTagsInput",
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
    id = "CreateStreamingDistributionWithTagsOutput",
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
    id = "CreateTrustStoreInput",
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
    id = "TrustStore",
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
    id = "CreateTrustStoreOutput",
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
    id = "VpcOriginEndpointConfig",
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
    id = "CreateVpcOriginInput",
    members = {
        VpcOriginEndpointConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VpcOriginEndpointConfig }),
        Tags = M.Tags,
    },
}

M.VpcOrigin = {
    type = "structure",
    id = "VpcOrigin",
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
    id = "CreateVpcOriginOutput",
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
    id = "DeleteAnycastIpListInput",
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
    id = "DeleteAnycastIpListOutput",
}

M.IllegalDelete = {
    type = "structure",
    id = "IllegalDelete",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteCachePolicyInput = {
    type = "structure",
    id = "DeleteCachePolicyInput",
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
    id = "DeleteCachePolicyOutput",
}

M.CloudFrontOriginAccessIdentityInUse = {
    type = "structure",
    id = "CloudFrontOriginAccessIdentityInUse",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteCloudFrontOriginAccessIdentityInput = {
    type = "structure",
    id = "DeleteCloudFrontOriginAccessIdentityInput",
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
    id = "DeleteCloudFrontOriginAccessIdentityOutput",
}

M.NoSuchCloudFrontOriginAccessIdentity = {
    type = "structure",
    id = "NoSuchCloudFrontOriginAccessIdentity",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteConnectionFunctionInput = {
    type = "structure",
    id = "DeleteConnectionFunctionInput",
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
    id = "DeleteConnectionFunctionOutput",
}

M.DeleteConnectionGroupInput = {
    type = "structure",
    id = "DeleteConnectionGroupInput",
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
    id = "DeleteConnectionGroupOutput",
}

M.ResourceNotDisabled = {
    type = "structure",
    id = "ResourceNotDisabled",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteContinuousDeploymentPolicyInput = {
    type = "structure",
    id = "DeleteContinuousDeploymentPolicyInput",
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
    id = "DeleteContinuousDeploymentPolicyOutput",
}

M.DeleteDistributionInput = {
    type = "structure",
    id = "DeleteDistributionInput",
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
    id = "DeleteDistributionOutput",
}

M.DistributionNotDisabled = {
    type = "structure",
    id = "DistributionNotDisabled",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceInUse = {
    type = "structure",
    id = "ResourceInUse",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteDistributionTenantInput = {
    type = "structure",
    id = "DeleteDistributionTenantInput",
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
    id = "DeleteDistributionTenantOutput",
}

M.DeleteFieldLevelEncryptionConfigInput = {
    type = "structure",
    id = "DeleteFieldLevelEncryptionConfigInput",
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
    id = "DeleteFieldLevelEncryptionConfigOutput",
}

M.FieldLevelEncryptionConfigInUse = {
    type = "structure",
    id = "FieldLevelEncryptionConfigInUse",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteFieldLevelEncryptionProfileInput = {
    type = "structure",
    id = "DeleteFieldLevelEncryptionProfileInput",
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
    id = "DeleteFieldLevelEncryptionProfileOutput",
}

M.FieldLevelEncryptionProfileInUse = {
    type = "structure",
    id = "FieldLevelEncryptionProfileInUse",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteFunctionInput = {
    type = "structure",
    id = "DeleteFunctionInput",
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
    id = "DeleteFunctionOutput",
}

M.FunctionInUse = {
    type = "structure",
    id = "FunctionInUse",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchFunctionExists = {
    type = "structure",
    id = "NoSuchFunctionExists",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteKeyGroupInput = {
    type = "structure",
    id = "DeleteKeyGroupInput",
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
    id = "DeleteKeyGroupOutput",
}

M.NoSuchResource = {
    type = "structure",
    id = "NoSuchResource",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteKeyValueStoreInput = {
    type = "structure",
    id = "DeleteKeyValueStoreInput",
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
    id = "DeleteKeyValueStoreOutput",
}

M.DeleteMonitoringSubscriptionInput = {
    type = "structure",
    id = "DeleteMonitoringSubscriptionInput",
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
    id = "DeleteMonitoringSubscriptionOutput",
}

M.NoSuchMonitoringSubscription = {
    type = "structure",
    id = "NoSuchMonitoringSubscription",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteOriginAccessControlInput = {
    type = "structure",
    id = "DeleteOriginAccessControlInput",
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
    id = "DeleteOriginAccessControlOutput",
}

M.NoSuchOriginAccessControl = {
    type = "structure",
    id = "NoSuchOriginAccessControl",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OriginAccessControlInUse = {
    type = "structure",
    id = "OriginAccessControlInUse",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteOriginRequestPolicyInput = {
    type = "structure",
    id = "DeleteOriginRequestPolicyInput",
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
    id = "DeleteOriginRequestPolicyOutput",
}

M.OriginRequestPolicyInUse = {
    type = "structure",
    id = "OriginRequestPolicyInUse",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeletePublicKeyInput = {
    type = "structure",
    id = "DeletePublicKeyInput",
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
    id = "DeletePublicKeyOutput",
}

M.PublicKeyInUse = {
    type = "structure",
    id = "PublicKeyInUse",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteRealtimeLogConfigInput = {
    type = "structure",
    id = "DeleteRealtimeLogConfigInput",
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
    id = "DeleteRealtimeLogConfigOutput",
}

M.RealtimeLogConfigInUse = {
    type = "structure",
    id = "RealtimeLogConfigInUse",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
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
    id = "DeleteResourcePolicyOutput",
}

M.DeleteResponseHeadersPolicyInput = {
    type = "structure",
    id = "DeleteResponseHeadersPolicyInput",
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
    id = "DeleteResponseHeadersPolicyOutput",
}

M.ResponseHeadersPolicyInUse = {
    type = "structure",
    id = "ResponseHeadersPolicyInUse",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteStreamingDistributionInput = {
    type = "structure",
    id = "DeleteStreamingDistributionInput",
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
    id = "DeleteStreamingDistributionOutput",
}

M.NoSuchStreamingDistribution = {
    type = "structure",
    id = "NoSuchStreamingDistribution",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StreamingDistributionNotDisabled = {
    type = "structure",
    id = "StreamingDistributionNotDisabled",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteTrustStoreInput = {
    type = "structure",
    id = "DeleteTrustStoreInput",
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
    id = "DeleteTrustStoreOutput",
}

M.DeleteVpcOriginInput = {
    type = "structure",
    id = "DeleteVpcOriginInput",
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
    id = "DeleteVpcOriginOutput",
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
    id = "DescribeConnectionFunctionInput",
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
    id = "DescribeConnectionFunctionOutput",
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
    id = "DescribeFunctionInput",
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
    id = "DescribeFunctionOutput",
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
    id = "DescribeKeyValueStoreInput",
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
    id = "DescribeKeyValueStoreOutput",
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
    id = "DisassociateDistributionTenantWebACLInput",
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
    id = "DisassociateDistributionTenantWebACLOutput",
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
    id = "DisassociateDistributionWebACLInput",
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
    id = "DisassociateDistributionWebACLOutput",
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
    id = "GetAnycastIpListInput",
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
    id = "GetAnycastIpListOutput",
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
    id = "GetCachePolicyInput",
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
    id = "GetCachePolicyOutput",
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
    id = "GetCachePolicyConfigInput",
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
    id = "GetCachePolicyConfigOutput",
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
    id = "GetCloudFrontOriginAccessIdentityInput",
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
    id = "GetCloudFrontOriginAccessIdentityOutput",
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
    id = "GetCloudFrontOriginAccessIdentityConfigInput",
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
    id = "GetCloudFrontOriginAccessIdentityConfigOutput",
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
    id = "GetConnectionFunctionInput",
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
    id = "GetConnectionFunctionOutput",
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
    id = "GetConnectionGroupInput",
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
    id = "GetConnectionGroupOutput",
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
    id = "GetConnectionGroupByRoutingEndpointInput",
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
    id = "GetConnectionGroupByRoutingEndpointOutput",
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
    id = "GetContinuousDeploymentPolicyInput",
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
    id = "GetContinuousDeploymentPolicyOutput",
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
    id = "GetContinuousDeploymentPolicyConfigInput",
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
    id = "GetContinuousDeploymentPolicyConfigOutput",
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
    id = "GetDistributionInput",
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
    id = "GetDistributionOutput",
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
    id = "GetDistributionConfigInput",
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
    id = "GetDistributionConfigOutput",
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
    id = "GetDistributionTenantInput",
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
    id = "GetDistributionTenantOutput",
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
    id = "GetDistributionTenantByDomainInput",
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
    id = "GetDistributionTenantByDomainOutput",
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
    id = "GetFieldLevelEncryptionInput",
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
    id = "GetFieldLevelEncryptionOutput",
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
    id = "GetFieldLevelEncryptionConfigInput",
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
    id = "GetFieldLevelEncryptionConfigOutput",
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
    id = "GetFieldLevelEncryptionProfileInput",
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
    id = "GetFieldLevelEncryptionProfileOutput",
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
    id = "GetFieldLevelEncryptionProfileConfigInput",
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
    id = "GetFieldLevelEncryptionProfileConfigOutput",
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
    id = "GetFunctionInput",
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
    id = "GetFunctionOutput",
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
    id = "GetInvalidationInput",
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
    id = "GetInvalidationOutput",
    members = {
        Invalidation = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Invalidation }),
    },
}

M.NoSuchInvalidation = {
    type = "structure",
    id = "NoSuchInvalidation",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetInvalidationForDistributionTenantInput = {
    type = "structure",
    id = "GetInvalidationForDistributionTenantInput",
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
    id = "GetInvalidationForDistributionTenantOutput",
    members = {
        Invalidation = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.Invalidation }),
    },
}

M.GetKeyGroupInput = {
    type = "structure",
    id = "GetKeyGroupInput",
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
    id = "GetKeyGroupOutput",
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
    id = "GetKeyGroupConfigInput",
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
    id = "GetKeyGroupConfigOutput",
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
    id = "GetManagedCertificateDetailsInput",
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
    id = "ValidationTokenDetail",
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
    id = "ManagedCertificateDetails",
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
    id = "GetManagedCertificateDetailsOutput",
    members = {
        ManagedCertificateDetails = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ManagedCertificateDetails }),
    },
}

M.GetMonitoringSubscriptionInput = {
    type = "structure",
    id = "GetMonitoringSubscriptionInput",
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
    id = "GetMonitoringSubscriptionOutput",
    members = {
        MonitoringSubscription = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.MonitoringSubscription }),
    },
}

M.GetOriginAccessControlInput = {
    type = "structure",
    id = "GetOriginAccessControlInput",
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
    id = "GetOriginAccessControlOutput",
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
    id = "GetOriginAccessControlConfigInput",
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
    id = "GetOriginAccessControlConfigOutput",
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
    id = "GetOriginRequestPolicyInput",
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
    id = "GetOriginRequestPolicyOutput",
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
    id = "GetOriginRequestPolicyConfigInput",
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
    id = "GetOriginRequestPolicyConfigOutput",
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
    id = "GetPublicKeyInput",
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
    id = "GetPublicKeyOutput",
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
    id = "GetPublicKeyConfigInput",
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
    id = "GetPublicKeyConfigOutput",
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
    id = "GetRealtimeLogConfigInput",
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
    id = "GetRealtimeLogConfigOutput",
    members = {
        RealtimeLogConfig = M.RealtimeLogConfig,
    },
}

M.GetResourcePolicyInput = {
    type = "structure",
    id = "GetResourcePolicyInput",
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
    id = "GetResourcePolicyOutput",
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
    id = "GetResponseHeadersPolicyInput",
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
    id = "GetResponseHeadersPolicyOutput",
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
    id = "GetResponseHeadersPolicyConfigInput",
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
    id = "GetResponseHeadersPolicyConfigOutput",
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
    id = "GetStreamingDistributionInput",
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
    id = "GetStreamingDistributionOutput",
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
    id = "GetStreamingDistributionConfigInput",
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
    id = "GetStreamingDistributionConfigOutput",
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
    id = "GetTrustStoreInput",
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
    id = "GetTrustStoreOutput",
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
    id = "GetVpcOriginInput",
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
    id = "GetVpcOriginOutput",
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
    id = "ListAnycastIpListsInput",
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
    id = "ListAnycastIpListsOutput",
    members = {
        AnycastIpLists = setmetatable({ traits = {
            http_payload = true,
            xml_name = "AnycastIpListCollection",
        } }, { __index = M.AnycastIpListCollection }),
    },
}

M.ListCachePoliciesInput = {
    type = "structure",
    id = "ListCachePoliciesInput",
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
    id = "ListCachePoliciesOutput",
    members = {
        CachePolicyList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.CachePolicyList }),
    },
}

M.ListCloudFrontOriginAccessIdentitiesInput = {
    type = "structure",
    id = "ListCloudFrontOriginAccessIdentitiesInput",
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
    id = "CloudFrontOriginAccessIdentitySummary",
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
    id = "CloudFrontOriginAccessIdentityList",
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
    id = "ListCloudFrontOriginAccessIdentitiesOutput",
    members = {
        CloudFrontOriginAccessIdentityList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.CloudFrontOriginAccessIdentityList }),
    },
}

M.ListConflictingAliasesInput = {
    type = "structure",
    id = "ListConflictingAliasesInput",
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
    id = "ConflictingAlias",
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
    id = "ConflictingAliasesList",
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
    id = "ListConflictingAliasesOutput",
    members = {
        ConflictingAliasesList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ConflictingAliasesList }),
    },
}

M.ListConnectionFunctionsInput = {
    type = "structure",
    id = "ListConnectionFunctionsInput",
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
    id = "ListConnectionFunctionsOutput",
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
    id = "ConnectionGroupAssociationFilter",
    members = {
        AnycastIpListId = {
            type = "string",
        },
    },
}

M.ListConnectionGroupsInput = {
    type = "structure",
    id = "ListConnectionGroupsInput",
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
    id = "ConnectionGroupSummary",
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
    id = "ListConnectionGroupsOutput",
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
    id = "ListContinuousDeploymentPoliciesInput",
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
    id = "ContinuousDeploymentPolicySummary",
    members = {
        ContinuousDeploymentPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContinuousDeploymentPolicy }),
    },
}

M.ContinuousDeploymentPolicyList = {
    type = "structure",
    id = "ContinuousDeploymentPolicyList",
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
    id = "ListContinuousDeploymentPoliciesOutput",
    members = {
        ContinuousDeploymentPolicyList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ContinuousDeploymentPolicyList }),
    },
}

M.ListDistributionsInput = {
    type = "structure",
    id = "ListDistributionsInput",
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
    id = "DistributionSummary",
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
    id = "DistributionList",
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
    id = "ListDistributionsOutput",
    members = {
        DistributionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionList }),
    },
}

M.ListDistributionsByAnycastIpListIdInput = {
    type = "structure",
    id = "ListDistributionsByAnycastIpListIdInput",
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
    id = "ListDistributionsByAnycastIpListIdOutput",
    members = {
        DistributionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionList }),
    },
}

M.ListDistributionsByCachePolicyIdInput = {
    type = "structure",
    id = "ListDistributionsByCachePolicyIdInput",
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
    id = "DistributionIdList",
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
    id = "ListDistributionsByCachePolicyIdOutput",
    members = {
        DistributionIdList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionIdList }),
    },
}

M.ListDistributionsByConnectionFunctionInput = {
    type = "structure",
    id = "ListDistributionsByConnectionFunctionInput",
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
    id = "ListDistributionsByConnectionFunctionOutput",
    members = {
        DistributionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionList }),
    },
}

M.ListDistributionsByConnectionModeInput = {
    type = "structure",
    id = "ListDistributionsByConnectionModeInput",
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
    id = "ListDistributionsByConnectionModeOutput",
    members = {
        DistributionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionList }),
    },
}

M.ListDistributionsByKeyGroupInput = {
    type = "structure",
    id = "ListDistributionsByKeyGroupInput",
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
    id = "ListDistributionsByKeyGroupOutput",
    members = {
        DistributionIdList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionIdList }),
    },
}

M.ListDistributionsByOriginRequestPolicyIdInput = {
    type = "structure",
    id = "ListDistributionsByOriginRequestPolicyIdInput",
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
    id = "ListDistributionsByOriginRequestPolicyIdOutput",
    members = {
        DistributionIdList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionIdList }),
    },
}

M.ListDistributionsByOwnedResourceInput = {
    type = "structure",
    id = "ListDistributionsByOwnedResourceInput",
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
    id = "DistributionIdOwner",
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
    id = "DistributionIdOwnerList",
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
    id = "ListDistributionsByOwnedResourceOutput",
    members = {
        DistributionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionIdOwnerList }),
    },
}

M.ListDistributionsByRealtimeLogConfigInput = {
    type = "structure",
    id = "ListDistributionsByRealtimeLogConfigInput",
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
    id = "ListDistributionsByRealtimeLogConfigOutput",
    members = {
        DistributionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionList }),
    },
}

M.ListDistributionsByResponseHeadersPolicyIdInput = {
    type = "structure",
    id = "ListDistributionsByResponseHeadersPolicyIdInput",
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
    id = "ListDistributionsByResponseHeadersPolicyIdOutput",
    members = {
        DistributionIdList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionIdList }),
    },
}

M.ListDistributionsByTrustStoreInput = {
    type = "structure",
    id = "ListDistributionsByTrustStoreInput",
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
    id = "ListDistributionsByTrustStoreOutput",
    members = {
        DistributionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionList }),
    },
}

M.ListDistributionsByVpcOriginIdInput = {
    type = "structure",
    id = "ListDistributionsByVpcOriginIdInput",
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
    id = "ListDistributionsByVpcOriginIdOutput",
    members = {
        DistributionIdList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionIdList }),
    },
}

M.ListDistributionsByWebACLIdInput = {
    type = "structure",
    id = "ListDistributionsByWebACLIdInput",
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
    id = "ListDistributionsByWebACLIdOutput",
    members = {
        DistributionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.DistributionList }),
    },
}

M.DistributionTenantAssociationFilter = {
    type = "structure",
    id = "DistributionTenantAssociationFilter",
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
    id = "ListDistributionTenantsInput",
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
    id = "DistributionTenantSummary",
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
    id = "ListDistributionTenantsOutput",
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
    id = "ListDistributionTenantsByCustomizationInput",
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
    id = "ListDistributionTenantsByCustomizationOutput",
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
    id = "DistributionResourceId",
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
    id = "ListDomainConflictsInput",
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
    id = "DomainConflict",
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
    id = "ListDomainConflictsOutput",
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
    id = "ListFieldLevelEncryptionConfigsInput",
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
    id = "FieldLevelEncryptionSummary",
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
    id = "FieldLevelEncryptionList",
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
    id = "ListFieldLevelEncryptionConfigsOutput",
    members = {
        FieldLevelEncryptionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FieldLevelEncryptionList }),
    },
}

M.ListFieldLevelEncryptionProfilesInput = {
    type = "structure",
    id = "ListFieldLevelEncryptionProfilesInput",
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
    id = "FieldLevelEncryptionProfileSummary",
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
    id = "FieldLevelEncryptionProfileList",
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
    id = "ListFieldLevelEncryptionProfilesOutput",
    members = {
        FieldLevelEncryptionProfileList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FieldLevelEncryptionProfileList }),
    },
}

M.ListFunctionsInput = {
    type = "structure",
    id = "ListFunctionsInput",
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
    id = "FunctionList",
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
    id = "ListFunctionsOutput",
    members = {
        FunctionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FunctionList }),
    },
}

M.ListInvalidationsInput = {
    type = "structure",
    id = "ListInvalidationsInput",
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
    id = "InvalidationSummary",
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
    id = "InvalidationList",
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
    id = "ListInvalidationsOutput",
    members = {
        InvalidationList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.InvalidationList }),
    },
}

M.ListInvalidationsForDistributionTenantInput = {
    type = "structure",
    id = "ListInvalidationsForDistributionTenantInput",
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
    id = "ListInvalidationsForDistributionTenantOutput",
    members = {
        InvalidationList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.InvalidationList }),
    },
}

M.ListKeyGroupsInput = {
    type = "structure",
    id = "ListKeyGroupsInput",
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
    id = "KeyGroupSummary",
    members = {
        KeyGroup = setmetatable({ traits = {
            required = true,
        } }, { __index = M.KeyGroup }),
    },
}

M.KeyGroupList = {
    type = "structure",
    id = "KeyGroupList",
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
    id = "ListKeyGroupsOutput",
    members = {
        KeyGroupList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.KeyGroupList }),
    },
}

M.ListKeyValueStoresInput = {
    type = "structure",
    id = "ListKeyValueStoresInput",
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
    id = "KeyValueStoreList",
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
    id = "ListKeyValueStoresOutput",
    members = {
        KeyValueStoreList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.KeyValueStoreList }),
    },
}

M.ListOriginAccessControlsInput = {
    type = "structure",
    id = "ListOriginAccessControlsInput",
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
    id = "OriginAccessControlSummary",
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
    id = "OriginAccessControlList",
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
    id = "ListOriginAccessControlsOutput",
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
    id = "ListOriginRequestPoliciesInput",
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
    id = "OriginRequestPolicySummary",
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
    id = "OriginRequestPolicyList",
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
    id = "ListOriginRequestPoliciesOutput",
    members = {
        OriginRequestPolicyList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.OriginRequestPolicyList }),
    },
}

M.ListPublicKeysInput = {
    type = "structure",
    id = "ListPublicKeysInput",
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
    id = "PublicKeySummary",
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
    id = "PublicKeyList",
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
    id = "ListPublicKeysOutput",
    members = {
        PublicKeyList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.PublicKeyList }),
    },
}

M.ListRealtimeLogConfigsInput = {
    type = "structure",
    id = "ListRealtimeLogConfigsInput",
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
    id = "RealtimeLogConfigs",
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
    id = "ListRealtimeLogConfigsOutput",
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
    id = "ListResponseHeadersPoliciesInput",
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
    id = "ResponseHeadersPolicySummary",
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
    id = "ResponseHeadersPolicyList",
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
    id = "ListResponseHeadersPoliciesOutput",
    members = {
        ResponseHeadersPolicyList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ResponseHeadersPolicyList }),
    },
}

M.ListStreamingDistributionsInput = {
    type = "structure",
    id = "ListStreamingDistributionsInput",
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
    id = "StreamingDistributionSummary",
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
    id = "StreamingDistributionList",
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
    id = "ListStreamingDistributionsOutput",
    members = {
        StreamingDistributionList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.StreamingDistributionList }),
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.Tags }),
    },
}

M.ListTrustStoresInput = {
    type = "structure",
    id = "ListTrustStoresInput",
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
    id = "TrustStoreSummary",
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
    id = "ListTrustStoresOutput",
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
    id = "ListVpcOriginsInput",
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
    id = "VpcOriginSummary",
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
    id = "VpcOriginList",
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
    id = "ListVpcOriginsOutput",
    members = {
        VpcOriginList = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.VpcOriginList }),
    },
}

M.PublishConnectionFunctionInput = {
    type = "structure",
    id = "PublishConnectionFunctionInput",
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
    id = "PublishConnectionFunctionOutput",
    members = {
        ConnectionFunctionSummary = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ConnectionFunctionSummary }),
    },
}

M.PublishFunctionInput = {
    type = "structure",
    id = "PublishFunctionInput",
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
    id = "PublishFunctionOutput",
    members = {
        FunctionSummary = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.FunctionSummary }),
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
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
    id = "PutResourcePolicyOutput",
    members = {
        ResourceArn = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.TestConnectionFunctionInput = {
    type = "structure",
    id = "TestConnectionFunctionInput",
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
    id = "ConnectionFunctionTestResult",
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
    id = "TestConnectionFunctionOutput",
    members = {
        ConnectionFunctionTestResult = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.ConnectionFunctionTestResult }),
    },
}

M.TestFunctionFailed = {
    type = "structure",
    id = "TestFunctionFailed",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TestFunctionInput = {
    type = "structure",
    id = "TestFunctionInput",
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
    id = "TestResult",
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
    id = "TestFunctionOutput",
    members = {
        TestResult = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.TestResult }),
    },
}

M.TagKeys = {
    type = "structure",
    id = "TagKeys",
    members = {
        Items = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateAnycastIpListInput = {
    type = "structure",
    id = "UpdateAnycastIpListInput",
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
    id = "UpdateAnycastIpListOutput",
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
    id = "UpdateCachePolicyInput",
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
    id = "UpdateCachePolicyOutput",
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
    id = "UpdateCloudFrontOriginAccessIdentityInput",
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
    id = "UpdateCloudFrontOriginAccessIdentityOutput",
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
    id = "UpdateConnectionFunctionInput",
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
    id = "UpdateConnectionFunctionOutput",
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
    id = "UpdateConnectionGroupInput",
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
    id = "UpdateConnectionGroupOutput",
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
    id = "UpdateContinuousDeploymentPolicyInput",
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
    id = "UpdateContinuousDeploymentPolicyOutput",
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
    id = "UpdateDistributionInput",
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
    id = "UpdateDistributionOutput",
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
    id = "UpdateDistributionTenantInput",
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
    id = "UpdateDistributionTenantOutput",
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
    id = "UpdateDistributionWithStagingConfigInput",
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
    id = "UpdateDistributionWithStagingConfigOutput",
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
    id = "UpdateDomainAssociationInput",
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
    id = "UpdateDomainAssociationOutput",
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
    id = "UpdateFieldLevelEncryptionConfigInput",
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
    id = "UpdateFieldLevelEncryptionConfigOutput",
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
    id = "UpdateFieldLevelEncryptionProfileInput",
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
    id = "UpdateFieldLevelEncryptionProfileOutput",
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
    id = "UpdateFunctionInput",
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
    id = "UpdateFunctionOutput",
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
    id = "UpdateKeyGroupInput",
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
    id = "UpdateKeyGroupOutput",
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
    id = "UpdateKeyValueStoreInput",
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
    id = "UpdateKeyValueStoreOutput",
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
    id = "UpdateOriginAccessControlInput",
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
    id = "UpdateOriginAccessControlOutput",
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
    id = "UpdateOriginRequestPolicyInput",
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
    id = "UpdateOriginRequestPolicyOutput",
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
    id = "UpdatePublicKeyInput",
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
    id = "UpdatePublicKeyOutput",
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
    id = "UpdateRealtimeLogConfigInput",
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
    id = "UpdateRealtimeLogConfigOutput",
    members = {
        RealtimeLogConfig = M.RealtimeLogConfig,
    },
}

M.UpdateResponseHeadersPolicyInput = {
    type = "structure",
    id = "UpdateResponseHeadersPolicyInput",
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
    id = "UpdateResponseHeadersPolicyOutput",
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
    id = "UpdateStreamingDistributionInput",
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
    id = "UpdateStreamingDistributionOutput",
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
    id = "UpdateTrustStoreInput",
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
    id = "UpdateTrustStoreOutput",
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
    id = "UpdateVpcOriginInput",
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
    id = "UpdateVpcOriginOutput",
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
    id = "VerifyDnsConfigurationInput",
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
    id = "DnsConfiguration",
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
    id = "VerifyDnsConfigurationOutput",
    members = {
        DnsConfigurationList = {
            type = "list",
            member = M.DnsConfiguration,
        },
    },
}

return M
