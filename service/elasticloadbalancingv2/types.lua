local M = {}

M.AuthenticateCognitoActionConditionalBehaviorEnum = {
    DENY = "deny",
    ALLOW = "allow",
    AUTHENTICATE = "authenticate",
}

M.AuthenticateCognitoActionConfig = {
    type = "structure",
    members = {
        UserPoolArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPoolClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserPoolDomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionCookieName = {
            type = "string",
        },
        Scope = {
            type = "string",
        },
        SessionTimeout = {
            type = "number",
        },
        AuthenticationRequestExtraParams = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OnUnauthenticatedRequest = {
            type = "string",
        },
    },
}

M.AuthenticateOidcActionConditionalBehaviorEnum = {
    DENY = "deny",
    ALLOW = "allow",
    AUTHENTICATE = "authenticate",
}

M.AuthenticateOidcActionConfig = {
    type = "structure",
    members = {
        Issuer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthorizationEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TokenEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserInfoEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientSecret = {
            type = "string",
        },
        SessionCookieName = {
            type = "string",
        },
        Scope = {
            type = "string",
        },
        SessionTimeout = {
            type = "number",
        },
        AuthenticationRequestExtraParams = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OnUnauthenticatedRequest = {
            type = "string",
        },
        UseExistingClientSecret = {
            type = "boolean",
        },
    },
}

M.FixedResponseActionConfig = {
    type = "structure",
    members = {
        MessageBody = {
            type = "string",
        },
        StatusCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContentType = {
            type = "string",
        },
    },
}

M.TargetGroupTuple = {
    type = "structure",
    members = {
        TargetGroupArn = {
            type = "string",
        },
        Weight = {
            type = "number",
        },
    },
}

M.TargetGroupStickinessConfig = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        DurationSeconds = {
            type = "number",
        },
    },
}

M.ForwardActionConfig = {
    type = "structure",
    members = {
        TargetGroups = {
            type = "list",
            member_type = "structure",
        },
        TargetGroupStickinessConfig = {
            type = "structure",
        },
    },
}

M.JwtValidationActionAdditionalClaimFormatEnum = {
    SINGLE_STRING = "single-string",
    STRING_ARRAY = "string-array",
    SPACE_SEPARATED_VALUES = "space-separated-values",
}

M.JwtValidationActionAdditionalClaim = {
    type = "structure",
    members = {
        Format = {
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
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JwtValidationActionConfig = {
    type = "structure",
    members = {
        JwksEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Issuer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AdditionalClaims = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RedirectActionStatusCodeEnum = {
    HTTP_301 = "HTTP_301",
    HTTP_302 = "HTTP_302",
}

M.RedirectActionConfig = {
    type = "structure",
    members = {
        Protocol = {
            type = "string",
        },
        Port = {
            type = "string",
        },
        Host = {
            type = "string",
        },
        Path = {
            type = "string",
        },
        Query = {
            type = "string",
        },
        StatusCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionTypeEnum = {
    FORWARD = "forward",
    AUTHENTICATE_OIDC = "authenticate-oidc",
    AUTHENTICATE_COGNITO = "authenticate-cognito",
    REDIRECT = "redirect",
    FIXED_RESPONSE = "fixed-response",
    JWT_VALIDATION = "jwt-validation",
}

M.Action = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetGroupArn = {
            type = "string",
        },
        AuthenticateOidcConfig = {
            type = "structure",
        },
        AuthenticateCognitoConfig = {
            type = "structure",
        },
        Order = {
            type = "number",
        },
        RedirectConfig = {
            type = "structure",
        },
        FixedResponseConfig = {
            type = "structure",
        },
        ForwardConfig = {
            type = "structure",
        },
        JwtValidationConfig = {
            type = "structure",
        },
    },
}

M.Certificate = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
        },
        IsDefault = {
            type = "boolean",
        },
    },
}

M.AddListenerCertificatesInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Certificates = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AddListenerCertificatesOutput = {
    type = "structure",
    members = {
        Certificates = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CertificateNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListenerNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyCertificatesException = {
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

M.AddTagsInput = {
    type = "structure",
    members = {
        ResourceArns = {
            type = "list",
            member_type = "string",
            traits = {
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

M.AddTagsOutput = {
    type = "structure",
}

M.DuplicateTagKeysException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LoadBalancerNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RuleNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TargetGroupNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
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

M.TrustStoreNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RevocationType = {
    CRL = "CRL",
}

M.RevocationContent = {
    type = "structure",
    members = {
        S3Bucket = {
            type = "string",
        },
        S3Key = {
            type = "string",
        },
        S3ObjectVersion = {
            type = "string",
        },
        RevocationType = {
            type = "string",
        },
    },
}

M.AddTrustStoreRevocationsInput = {
    type = "structure",
    members = {
        TrustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevocationContents = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TrustStoreRevocation = {
    type = "structure",
    members = {
        TrustStoreArn = {
            type = "string",
        },
        RevocationId = {
            type = "number",
        },
        RevocationType = {
            type = "string",
        },
        NumberOfRevokedEntries = {
            type = "number",
        },
    },
}

M.AddTrustStoreRevocationsOutput = {
    type = "structure",
    members = {
        TrustStoreRevocations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InvalidRevocationContentException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RevocationContentNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyTrustStoreRevocationEntriesException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TargetAdministrativeOverrideReasonEnum = {
    INTERNAL_ERROR = "AdministrativeOverride.Unknown",
    NO_OVERRIDE_ENGAGED = "AdministrativeOverride.NoOverride",
    ZONAL_SHIFT_ENGAGED = "AdministrativeOverride.ZonalShiftActive",
    ZONAL_SHIFT_DELEGATED_TO_DNS = "AdministrativeOverride.ZonalShiftDelegatedToDns",
}

M.TargetAdministrativeOverrideStateEnum = {
    UNKNOWN = "unknown",
    NO_OVERRIDE = "no_override",
    ZONAL_SHIFT_ACTIVE = "zonal_shift_active",
    ZONAL_SHIFT_DELEGATED_TO_DNS = "zonal_shift_delegated_to_dns",
}

M.AdministrativeOverride = {
    type = "structure",
    members = {
        State = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.AdvertiseTrustStoreCaNamesEnum = {
    on = "on",
    off = "off",
}

M.AllocationIdNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ALPNPolicyNotSupportedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MitigationInEffectEnum = {
    YES = "yes",
    NO = "no",
}

M.AnomalyResultEnum = {
    ANOMALOUS = "anomalous",
    NORMAL = "normal",
}

M.AnomalyDetection = {
    type = "structure",
    members = {
        Result = {
            type = "string",
        },
        MitigationInEffect = {
            type = "string",
        },
    },
}

M.LoadBalancerAddress = {
    type = "structure",
    members = {
        IpAddress = {
            type = "string",
        },
        AllocationId = {
            type = "string",
        },
        PrivateIPv4Address = {
            type = "string",
        },
        IPv6Address = {
            type = "string",
        },
    },
}

M.AvailabilityZone = {
    type = "structure",
    members = {
        ZoneName = {
            type = "string",
        },
        SubnetId = {
            type = "string",
        },
        OutpostId = {
            type = "string",
        },
        LoadBalancerAddresses = {
            type = "list",
            member_type = "structure",
        },
        SourceNatIpv6Prefixes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AvailabilityZoneNotSupportedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CaCertificatesBundleNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CapacityDecreaseRequestsLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CapacityReservationPendingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CapacityReservationStateEnum = {
    PROVISIONED = "provisioned",
    PENDING = "pending",
    REBALANCING = "rebalancing",
    FAILED = "failed",
}

M.CapacityReservationStatus = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.CapacityUnitsLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Cipher = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Priority = {
            type = "number",
        },
    },
}

M.TrustStoreAssociationStatusEnum = {
    ACTIVE = "active",
    REMOVED = "removed",
}

M.MutualAuthenticationAttributes = {
    type = "structure",
    members = {
        Mode = {
            type = "string",
        },
        TrustStoreArn = {
            type = "string",
        },
        IgnoreClientCertificateExpiry = {
            type = "boolean",
        },
        TrustStoreAssociationStatus = {
            type = "string",
        },
        AdvertiseTrustStoreCaNames = {
            type = "string",
        },
    },
}

M.ProtocolEnum = {
    HTTP = "HTTP",
    HTTPS = "HTTPS",
    TCP = "TCP",
    TLS = "TLS",
    UDP = "UDP",
    TCP_UDP = "TCP_UDP",
    GENEVE = "GENEVE",
    QUIC = "QUIC",
    TCP_QUIC = "TCP_QUIC",
}

M.CreateListenerInput = {
    type = "structure",
    members = {
        LoadBalancerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Protocol = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        SslPolicy = {
            type = "string",
        },
        Certificates = {
            type = "list",
            member_type = "structure",
        },
        DefaultActions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        AlpnPolicy = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        MutualAuthentication = {
            type = "structure",
        },
    },
}

M.Listener = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
        },
        LoadBalancerArn = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        Protocol = {
            type = "string",
        },
        Certificates = {
            type = "list",
            member_type = "structure",
        },
        SslPolicy = {
            type = "string",
        },
        DefaultActions = {
            type = "list",
            member_type = "structure",
        },
        AlpnPolicy = {
            type = "list",
            member_type = "string",
        },
        MutualAuthentication = {
            type = "structure",
        },
    },
}

M.CreateListenerOutput = {
    type = "structure",
    members = {
        Listeners = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DuplicateListenerException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IncompatibleProtocolsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidConfigurationRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidLoadBalancerActionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SSLPolicyNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TargetGroupAssociationLimitException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyActionsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyListenersException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRegistrationsForTargetIdException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyTargetsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyUniqueTargetGroupsPerLoadBalancerException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TrustStoreNotReadyException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedProtocolException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EnablePrefixForIpv6SourceNatEnum = {
    ON = "on",
    OFF = "off",
}

M.IpAddressType = {
    IPV4 = "ipv4",
    DUALSTACK = "dualstack",
    DUALSTACK_WITHOUT_PUBLIC_IPV4 = "dualstack-without-public-ipv4",
}

M.IpamPools = {
    type = "structure",
    members = {
        Ipv4IpamPoolId = {
            type = "string",
        },
    },
}

M.LoadBalancerSchemeEnum = {
    INTERNET_FACING = "internet-facing",
    INTERNAL = "internal",
}

M.SubnetMapping = {
    type = "structure",
    members = {
        SubnetId = {
            type = "string",
        },
        AllocationId = {
            type = "string",
        },
        PrivateIPv4Address = {
            type = "string",
        },
        IPv6Address = {
            type = "string",
        },
        SourceNatIpv6Prefix = {
            type = "string",
        },
    },
}

M.LoadBalancerTypeEnum = {
    APPLICATION = "application",
    NETWORK = "network",
    GATEWAY = "gateway",
}

M.CreateLoadBalancerInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subnets = {
            type = "list",
            member_type = "string",
        },
        SubnetMappings = {
            type = "list",
            member_type = "structure",
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
        },
        Scheme = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Type = {
            type = "string",
        },
        IpAddressType = {
            type = "string",
        },
        CustomerOwnedIpv4Pool = {
            type = "string",
        },
        EnablePrefixForIpv6SourceNat = {
            type = "string",
        },
        IpamPools = {
            type = "structure",
        },
    },
}

M.LoadBalancerStateEnum = {
    ACTIVE = "active",
    PROVISIONING = "provisioning",
    ACTIVE_IMPAIRED = "active_impaired",
    FAILED = "failed",
}

M.LoadBalancerState = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.LoadBalancer = {
    type = "structure",
    members = {
        LoadBalancerArn = {
            type = "string",
        },
        DNSName = {
            type = "string",
        },
        CanonicalHostedZoneId = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
        },
        LoadBalancerName = {
            type = "string",
        },
        Scheme = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        State = {
            type = "structure",
        },
        Type = {
            type = "string",
        },
        AvailabilityZones = {
            type = "list",
            member_type = "structure",
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
        },
        IpAddressType = {
            type = "string",
        },
        CustomerOwnedIpv4Pool = {
            type = "string",
        },
        EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic = {
            type = "string",
        },
        EnablePrefixForIpv6SourceNat = {
            type = "string",
        },
        IpamPools = {
            type = "structure",
        },
    },
}

M.CreateLoadBalancerOutput = {
    type = "structure",
    members = {
        LoadBalancers = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DuplicateLoadBalancerNameException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidSchemeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidSecurityGroupException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidSubnetException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OperationNotPermittedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SubnetNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyLoadBalancersException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.HostHeaderConditionConfig = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member_type = "string",
        },
        RegexValues = {
            type = "list",
            member_type = "string",
        },
    },
}

M.HttpHeaderConditionConfig = {
    type = "structure",
    members = {
        HttpHeaderName = {
            type = "string",
        },
        Values = {
            type = "list",
            member_type = "string",
        },
        RegexValues = {
            type = "list",
            member_type = "string",
        },
    },
}

M.HttpRequestMethodConditionConfig = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member_type = "string",
        },
    },
}

M.PathPatternConditionConfig = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member_type = "string",
        },
        RegexValues = {
            type = "list",
            member_type = "string",
        },
    },
}

M.QueryStringKeyValuePair = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.QueryStringConditionConfig = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SourceIpConditionConfig = {
    type = "structure",
    members = {
        Values = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RuleCondition = {
    type = "structure",
    members = {
        Field = {
            type = "string",
        },
        Values = {
            type = "list",
            member_type = "string",
        },
        HostHeaderConfig = {
            type = "structure",
        },
        PathPatternConfig = {
            type = "structure",
        },
        HttpHeaderConfig = {
            type = "structure",
        },
        QueryStringConfig = {
            type = "structure",
        },
        HttpRequestMethodConfig = {
            type = "structure",
        },
        SourceIpConfig = {
            type = "structure",
        },
        RegexValues = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RewriteConfig = {
    type = "structure",
    members = {
        Regex = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Replace = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HostHeaderRewriteConfig = {
    type = "structure",
    members = {
        Rewrites = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TransformTypeEnum = {
    HOST_HEADER_REWRITE = "host-header-rewrite",
    URL_REWRITE = "url-rewrite",
}

M.UrlRewriteConfig = {
    type = "structure",
    members = {
        Rewrites = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RuleTransform = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostHeaderRewriteConfig = {
            type = "structure",
        },
        UrlRewriteConfig = {
            type = "structure",
        },
    },
}

M.CreateRuleInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Conditions = {
            type = "list",
            member_type = "structure",
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
        Actions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Transforms = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Rule = {
    type = "structure",
    members = {
        RuleArn = {
            type = "string",
        },
        Priority = {
            type = "string",
        },
        Conditions = {
            type = "list",
            member_type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        IsDefault = {
            type = "boolean",
        },
        Transforms = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateRuleOutput = {
    type = "structure",
    members = {
        Rules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PriorityInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRulesException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyTargetGroupsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TargetGroupIpAddressTypeEnum = {
    IPV4 = "ipv4",
    IPV6 = "ipv6",
}

M.Matcher = {
    type = "structure",
    members = {
        HttpCode = {
            type = "string",
        },
        GrpcCode = {
            type = "string",
        },
    },
}

M.TargetTypeEnum = {
    INSTANCE = "instance",
    IP = "ip",
    LAMBDA = "lambda",
    ALB = "alb",
}

M.CreateTargetGroupInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Protocol = {
            type = "string",
        },
        ProtocolVersion = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        VpcId = {
            type = "string",
        },
        HealthCheckProtocol = {
            type = "string",
        },
        HealthCheckPort = {
            type = "string",
        },
        HealthCheckEnabled = {
            type = "boolean",
        },
        HealthCheckPath = {
            type = "string",
        },
        HealthCheckIntervalSeconds = {
            type = "number",
        },
        HealthCheckTimeoutSeconds = {
            type = "number",
        },
        HealthyThresholdCount = {
            type = "number",
        },
        UnhealthyThresholdCount = {
            type = "number",
        },
        Matcher = {
            type = "structure",
        },
        TargetType = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        IpAddressType = {
            type = "string",
        },
        TargetControlPort = {
            type = "number",
        },
    },
}

M.TargetGroup = {
    type = "structure",
    members = {
        TargetGroupArn = {
            type = "string",
        },
        TargetGroupName = {
            type = "string",
        },
        Protocol = {
            type = "string",
        },
        Port = {
            type = "number",
        },
        VpcId = {
            type = "string",
        },
        HealthCheckProtocol = {
            type = "string",
        },
        HealthCheckPort = {
            type = "string",
        },
        HealthCheckEnabled = {
            type = "boolean",
        },
        HealthCheckIntervalSeconds = {
            type = "number",
        },
        HealthCheckTimeoutSeconds = {
            type = "number",
        },
        HealthyThresholdCount = {
            type = "number",
        },
        UnhealthyThresholdCount = {
            type = "number",
        },
        HealthCheckPath = {
            type = "string",
        },
        Matcher = {
            type = "structure",
        },
        LoadBalancerArns = {
            type = "list",
            member_type = "string",
        },
        TargetType = {
            type = "string",
        },
        ProtocolVersion = {
            type = "string",
        },
        IpAddressType = {
            type = "string",
        },
        TargetControlPort = {
            type = "number",
        },
    },
}

M.CreateTargetGroupOutput = {
    type = "structure",
    members = {
        TargetGroups = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DuplicateTargetGroupNameException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
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
        CaCertificatesBundleS3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CaCertificatesBundleS3Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CaCertificatesBundleS3ObjectVersion = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TrustStoreStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
}

M.TrustStore = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        TrustStoreArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        NumberOfCaCertificates = {
            type = "number",
        },
        TotalRevokedEntries = {
            type = "number",
        },
    },
}

M.CreateTrustStoreOutput = {
    type = "structure",
    members = {
        TrustStores = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DuplicateTrustStoreNameException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidCaCertificatesBundleException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyTrustStoresException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteAssociationSameAccountException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteListenerInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteListenerOutput = {
    type = "structure",
}

M.DeleteLoadBalancerInput = {
    type = "structure",
    members = {
        LoadBalancerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLoadBalancerOutput = {
    type = "structure",
}

M.DeleteRuleInput = {
    type = "structure",
    members = {
        RuleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRuleOutput = {
    type = "structure",
}

M.DeleteSharedTrustStoreAssociationInput = {
    type = "structure",
    members = {
        TrustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSharedTrustStoreAssociationOutput = {
    type = "structure",
}

M.TrustStoreAssociationNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteTargetGroupInput = {
    type = "structure",
    members = {
        TargetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTargetGroupOutput = {
    type = "structure",
}

M.DeleteTrustStoreInput = {
    type = "structure",
    members = {
        TrustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTrustStoreOutput = {
    type = "structure",
}

M.TrustStoreInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TargetDescription = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Port = {
            type = "number",
        },
        AvailabilityZone = {
            type = "string",
        },
        QuicServerId = {
            type = "string",
        },
    },
}

M.DeregisterTargetsInput = {
    type = "structure",
    members = {
        TargetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Targets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterTargetsOutput = {
    type = "structure",
}

M.InvalidTargetException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeAccountLimitsInput = {
    type = "structure",
    members = {
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
    },
}

M.Limit = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Max = {
            type = "string",
        },
    },
}

M.DescribeAccountLimitsOutput = {
    type = "structure",
    members = {
        Limits = {
            type = "list",
            member_type = "structure",
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeCapacityReservationInput = {
    type = "structure",
    members = {
        LoadBalancerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ZonalCapacityReservationState = {
    type = "structure",
    members = {
        State = {
            type = "structure",
        },
        AvailabilityZone = {
            type = "string",
        },
        EffectiveCapacityUnits = {
            type = "number",
        },
    },
}

M.MinimumLoadBalancerCapacity = {
    type = "structure",
    members = {
        CapacityUnits = {
            type = "number",
        },
    },
}

M.DescribeCapacityReservationOutput = {
    type = "structure",
    members = {
        LastModifiedTime = {
            type = "timestamp",
        },
        DecreaseRequestsRemaining = {
            type = "number",
        },
        MinimumLoadBalancerCapacity = {
            type = "structure",
        },
        CapacityReservationState = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeListenerAttributesInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListenerAttribute = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.DescribeListenerAttributesOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeListenerCertificatesInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
    },
}

M.DescribeListenerCertificatesOutput = {
    type = "structure",
    members = {
        Certificates = {
            type = "list",
            member_type = "structure",
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeListenersInput = {
    type = "structure",
    members = {
        LoadBalancerArn = {
            type = "string",
        },
        ListenerArns = {
            type = "list",
            member_type = "string",
        },
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
    },
}

M.DescribeListenersOutput = {
    type = "structure",
    members = {
        Listeners = {
            type = "list",
            member_type = "structure",
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeLoadBalancerAttributesInput = {
    type = "structure",
    members = {
        LoadBalancerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LoadBalancerAttribute = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.DescribeLoadBalancerAttributesOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeLoadBalancersInput = {
    type = "structure",
    members = {
        LoadBalancerArns = {
            type = "list",
            member_type = "string",
        },
        Names = {
            type = "list",
            member_type = "string",
        },
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
    },
}

M.DescribeLoadBalancersOutput = {
    type = "structure",
    members = {
        LoadBalancers = {
            type = "list",
            member_type = "structure",
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeRulesInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
        },
        RuleArns = {
            type = "list",
            member_type = "string",
        },
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
    },
}

M.DescribeRulesOutput = {
    type = "structure",
    members = {
        Rules = {
            type = "list",
            member_type = "structure",
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeSSLPoliciesInput = {
    type = "structure",
    members = {
        Names = {
            type = "list",
            member_type = "string",
        },
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
        LoadBalancerType = {
            type = "string",
        },
    },
}

M.SslPolicy = {
    type = "structure",
    members = {
        SslProtocols = {
            type = "list",
            member_type = "string",
        },
        Ciphers = {
            type = "list",
            member_type = "structure",
        },
        Name = {
            type = "string",
        },
        SupportedLoadBalancerTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeSSLPoliciesOutput = {
    type = "structure",
    members = {
        SslPolicies = {
            type = "list",
            member_type = "structure",
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeTagsInput = {
    type = "structure",
    members = {
        ResourceArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagDescription = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeTagsOutput = {
    type = "structure",
    members = {
        TagDescriptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeTargetGroupAttributesInput = {
    type = "structure",
    members = {
        TargetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TargetGroupAttribute = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.DescribeTargetGroupAttributesOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeTargetGroupsInput = {
    type = "structure",
    members = {
        LoadBalancerArn = {
            type = "string",
        },
        TargetGroupArns = {
            type = "list",
            member_type = "string",
        },
        Names = {
            type = "list",
            member_type = "string",
        },
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
    },
}

M.DescribeTargetGroupsOutput = {
    type = "structure",
    members = {
        TargetGroups = {
            type = "list",
            member_type = "structure",
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeTargetHealthInputIncludeEnum = {
    ANOMALY = "AnomalyDetection",
    ALL = "All",
}

M.DescribeTargetHealthInput = {
    type = "structure",
    members = {
        TargetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Targets = {
            type = "list",
            member_type = "structure",
        },
        Include = {
            type = "list",
            member_type = "string",
        },
    },
}

M.TargetHealthReasonEnum = {
    REGISTRATION_IN_PROGRESS = "Elb.RegistrationInProgress",
    INITIAL_HEALTH_CHECKING = "Elb.InitialHealthChecking",
    RESPONSE_CODE_MISMATCH = "Target.ResponseCodeMismatch",
    TIMEOUT = "Target.Timeout",
    FAILED_HEALTH_CHECKS = "Target.FailedHealthChecks",
    NOT_REGISTERED = "Target.NotRegistered",
    NOT_IN_USE = "Target.NotInUse",
    DEREGISTRATION_IN_PROGRESS = "Target.DeregistrationInProgress",
    INVALID_STATE = "Target.InvalidState",
    IP_UNUSABLE = "Target.IpUnusable",
    HEALTH_CHECK_DISABLED = "Target.HealthCheckDisabled",
    INTERNAL_ERROR = "Elb.InternalError",
}

M.TargetHealthStateEnum = {
    INITIAL = "initial",
    HEALTHY = "healthy",
    UNHEALTHY = "unhealthy",
    UNHEALTHY_DRAINING = "unhealthy.draining",
    UNUSED = "unused",
    DRAINING = "draining",
    UNAVAILABLE = "unavailable",
}

M.TargetHealth = {
    type = "structure",
    members = {
        State = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.TargetHealthDescription = {
    type = "structure",
    members = {
        Target = {
            type = "structure",
        },
        HealthCheckPort = {
            type = "string",
        },
        TargetHealth = {
            type = "structure",
        },
        AnomalyDetection = {
            type = "structure",
        },
        AdministrativeOverride = {
            type = "structure",
        },
    },
}

M.DescribeTargetHealthOutput = {
    type = "structure",
    members = {
        TargetHealthDescriptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.HealthUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeTrustStoreAssociationsInput = {
    type = "structure",
    members = {
        TrustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
    },
}

M.TrustStoreAssociation = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
    },
}

M.DescribeTrustStoreAssociationsOutput = {
    type = "structure",
    members = {
        TrustStoreAssociations = {
            type = "list",
            member_type = "structure",
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeTrustStoreRevocation = {
    type = "structure",
    members = {
        TrustStoreArn = {
            type = "string",
        },
        RevocationId = {
            type = "number",
        },
        RevocationType = {
            type = "string",
        },
        NumberOfRevokedEntries = {
            type = "number",
        },
    },
}

M.DescribeTrustStoreRevocationsInput = {
    type = "structure",
    members = {
        TrustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevocationIds = {
            type = "list",
            member_type = "number",
        },
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
    },
}

M.DescribeTrustStoreRevocationsOutput = {
    type = "structure",
    members = {
        TrustStoreRevocations = {
            type = "list",
            member_type = "structure",
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.RevocationIdNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeTrustStoresInput = {
    type = "structure",
    members = {
        TrustStoreArns = {
            type = "list",
            member_type = "string",
        },
        Names = {
            type = "list",
            member_type = "string",
        },
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "number",
        },
    },
}

M.DescribeTrustStoresOutput = {
    type = "structure",
    members = {
        TrustStores = {
            type = "list",
            member_type = "structure",
        },
        NextMarker = {
            type = "string",
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
        Policy = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetTrustStoreCaCertificatesBundleInput = {
    type = "structure",
    members = {
        TrustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTrustStoreCaCertificatesBundleOutput = {
    type = "structure",
    members = {
        Location = {
            type = "string",
        },
    },
}

M.GetTrustStoreRevocationContentInput = {
    type = "structure",
    members = {
        TrustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevocationId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTrustStoreRevocationContentOutput = {
    type = "structure",
    members = {
        Location = {
            type = "string",
        },
    },
}

M.InsufficientCapacityException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ModifyCapacityReservationInput = {
    type = "structure",
    members = {
        LoadBalancerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MinimumLoadBalancerCapacity = {
            type = "structure",
        },
        ResetCapacityReservation = {
            type = "boolean",
        },
    },
}

M.ModifyCapacityReservationOutput = {
    type = "structure",
    members = {
        LastModifiedTime = {
            type = "timestamp",
        },
        DecreaseRequestsRemaining = {
            type = "number",
        },
        MinimumLoadBalancerCapacity = {
            type = "structure",
        },
        CapacityReservationState = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PriorRequestNotCompleteException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RemoveIpamPoolEnum = {
    ipv4 = "ipv4",
}

M.ModifyIpPoolsInput = {
    type = "structure",
    members = {
        LoadBalancerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpamPools = {
            type = "structure",
        },
        RemoveIpamPools = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ModifyIpPoolsOutput = {
    type = "structure",
    members = {
        IpamPools = {
            type = "structure",
        },
    },
}

M.ModifyListenerInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Port = {
            type = "number",
        },
        Protocol = {
            type = "string",
        },
        SslPolicy = {
            type = "string",
        },
        Certificates = {
            type = "list",
            member_type = "structure",
        },
        DefaultActions = {
            type = "list",
            member_type = "structure",
        },
        AlpnPolicy = {
            type = "list",
            member_type = "string",
        },
        MutualAuthentication = {
            type = "structure",
        },
    },
}

M.ModifyListenerOutput = {
    type = "structure",
    members = {
        Listeners = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ModifyListenerAttributesInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyListenerAttributesOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ModifyLoadBalancerAttributesInput = {
    type = "structure",
    members = {
        LoadBalancerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyLoadBalancerAttributesOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ModifyRuleInput = {
    type = "structure",
    members = {
        RuleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Conditions = {
            type = "list",
            member_type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        Transforms = {
            type = "list",
            member_type = "structure",
        },
        ResetTransforms = {
            type = "boolean",
        },
    },
}

M.ModifyRuleOutput = {
    type = "structure",
    members = {
        Rules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ModifyTargetGroupInput = {
    type = "structure",
    members = {
        TargetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HealthCheckProtocol = {
            type = "string",
        },
        HealthCheckPort = {
            type = "string",
        },
        HealthCheckPath = {
            type = "string",
        },
        HealthCheckEnabled = {
            type = "boolean",
        },
        HealthCheckIntervalSeconds = {
            type = "number",
        },
        HealthCheckTimeoutSeconds = {
            type = "number",
        },
        HealthyThresholdCount = {
            type = "number",
        },
        UnhealthyThresholdCount = {
            type = "number",
        },
        Matcher = {
            type = "structure",
        },
    },
}

M.ModifyTargetGroupOutput = {
    type = "structure",
    members = {
        TargetGroups = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ModifyTargetGroupAttributesInput = {
    type = "structure",
    members = {
        TargetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyTargetGroupAttributesOutput = {
    type = "structure",
    members = {
        Attributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ModifyTrustStoreInput = {
    type = "structure",
    members = {
        TrustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CaCertificatesBundleS3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CaCertificatesBundleS3Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CaCertificatesBundleS3ObjectVersion = {
            type = "string",
        },
    },
}

M.ModifyTrustStoreOutput = {
    type = "structure",
    members = {
        TrustStores = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RegisterTargetsInput = {
    type = "structure",
    members = {
        TargetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Targets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterTargetsOutput = {
    type = "structure",
}

M.RemoveListenerCertificatesInput = {
    type = "structure",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Certificates = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveListenerCertificatesOutput = {
    type = "structure",
}

M.RemoveTagsInput = {
    type = "structure",
    members = {
        ResourceArns = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveTagsOutput = {
    type = "structure",
}

M.RemoveTrustStoreRevocationsInput = {
    type = "structure",
    members = {
        TrustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevocationIds = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveTrustStoreRevocationsOutput = {
    type = "structure",
}

M.SetIpAddressTypeInput = {
    type = "structure",
    members = {
        LoadBalancerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpAddressType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetIpAddressTypeOutput = {
    type = "structure",
    members = {
        IpAddressType = {
            type = "string",
        },
    },
}

M.RulePriorityPair = {
    type = "structure",
    members = {
        RuleArn = {
            type = "string",
        },
        Priority = {
            type = "number",
        },
    },
}

M.SetRulePrioritiesInput = {
    type = "structure",
    members = {
        RulePriorities = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SetRulePrioritiesOutput = {
    type = "structure",
    members = {
        Rules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum = {
    on = "on",
    off = "off",
}

M.SetSecurityGroupsInput = {
    type = "structure",
    members = {
        LoadBalancerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroups = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic = {
            type = "string",
        },
    },
}

M.SetSecurityGroupsOutput = {
    type = "structure",
    members = {
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic = {
            type = "string",
        },
    },
}

M.SetSubnetsInput = {
    type = "structure",
    members = {
        LoadBalancerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subnets = {
            type = "list",
            member_type = "string",
        },
        SubnetMappings = {
            type = "list",
            member_type = "structure",
        },
        IpAddressType = {
            type = "string",
        },
        EnablePrefixForIpv6SourceNat = {
            type = "string",
        },
    },
}

M.SetSubnetsOutput = {
    type = "structure",
    members = {
        AvailabilityZones = {
            type = "list",
            member_type = "structure",
        },
        IpAddressType = {
            type = "string",
        },
        EnablePrefixForIpv6SourceNat = {
            type = "string",
        },
    },
}

return M
