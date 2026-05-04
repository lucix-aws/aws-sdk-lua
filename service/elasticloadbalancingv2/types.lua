local M = {}

M.AuthenticateCognitoActionConditionalBehaviorEnum = {
    DENY = "deny",
    ALLOW = "allow",
    AUTHENTICATE = "authenticate",
}

M.AuthenticateCognitoActionConfig = {
    type = "structure",
    id = "AuthenticateCognitoActionConfig",
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
            type = "long",
        },
        AuthenticationRequestExtraParams = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "AuthenticateOidcActionConfig",
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
            type = "long",
        },
        AuthenticationRequestExtraParams = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "FixedResponseActionConfig",
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
    id = "TargetGroupTuple",
    members = {
        TargetGroupArn = {
            type = "string",
        },
        Weight = {
            type = "integer",
        },
    },
}

M.TargetGroupStickinessConfig = {
    type = "structure",
    id = "TargetGroupStickinessConfig",
    members = {
        Enabled = {
            type = "boolean",
        },
        DurationSeconds = {
            type = "integer",
        },
    },
}

M.ForwardActionConfig = {
    type = "structure",
    id = "ForwardActionConfig",
    members = {
        TargetGroups = {
            type = "list",
            member = M.TargetGroupTuple,
        },
        TargetGroupStickinessConfig = M.TargetGroupStickinessConfig,
    },
}

M.JwtValidationActionAdditionalClaimFormatEnum = {
    SINGLE_STRING = "single-string",
    STRING_ARRAY = "string-array",
    SPACE_SEPARATED_VALUES = "space-separated-values",
}

M.JwtValidationActionAdditionalClaim = {
    type = "structure",
    id = "JwtValidationActionAdditionalClaim",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.JwtValidationActionConfig = {
    type = "structure",
    id = "JwtValidationActionConfig",
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
            member = M.JwtValidationActionAdditionalClaim,
        },
    },
}

M.RedirectActionStatusCodeEnum = {
    HTTP_301 = "HTTP_301",
    HTTP_302 = "HTTP_302",
}

M.RedirectActionConfig = {
    type = "structure",
    id = "RedirectActionConfig",
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
    id = "Action",
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
        AuthenticateOidcConfig = M.AuthenticateOidcActionConfig,
        AuthenticateCognitoConfig = M.AuthenticateCognitoActionConfig,
        Order = {
            type = "integer",
        },
        RedirectConfig = M.RedirectActionConfig,
        FixedResponseConfig = M.FixedResponseActionConfig,
        ForwardConfig = M.ForwardActionConfig,
        JwtValidationConfig = M.JwtValidationActionConfig,
    },
}

M.Certificate = {
    type = "structure",
    id = "Certificate",
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
    id = "AddListenerCertificatesInput",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Certificates = {
            type = "list",
            member = M.Certificate,
            traits = {
                required = true,
            },
        },
    },
}

M.AddListenerCertificatesOutput = {
    type = "structure",
    id = "AddListenerCertificatesOutput",
    members = {
        Certificates = {
            type = "list",
            member = M.Certificate,
        },
    },
}

M.CertificateNotFoundException = {
    type = "structure",
    id = "CertificateNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListenerNotFoundException = {
    type = "structure",
    id = "ListenerNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyCertificatesException = {
    type = "structure",
    id = "TooManyCertificatesException",
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

M.AddTagsInput = {
    type = "structure",
    id = "AddTagsInput",
    members = {
        ResourceArns = {
            type = "list",
            member = { type = "string" },
            traits = {
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

M.AddTagsOutput = {
    type = "structure",
    id = "AddTagsOutput",
}

M.DuplicateTagKeysException = {
    type = "structure",
    id = "DuplicateTagKeysException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LoadBalancerNotFoundException = {
    type = "structure",
    id = "LoadBalancerNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RuleNotFoundException = {
    type = "structure",
    id = "RuleNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TargetGroupNotFoundException = {
    type = "structure",
    id = "TargetGroupNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
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

M.TrustStoreNotFoundException = {
    type = "structure",
    id = "TrustStoreNotFoundException",
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
    id = "RevocationContent",
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
    id = "AddTrustStoreRevocationsInput",
    members = {
        TrustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevocationContents = {
            type = "list",
            member = M.RevocationContent,
        },
    },
}

M.TrustStoreRevocation = {
    type = "structure",
    id = "TrustStoreRevocation",
    members = {
        TrustStoreArn = {
            type = "string",
        },
        RevocationId = {
            type = "long",
        },
        RevocationType = {
            type = "string",
        },
        NumberOfRevokedEntries = {
            type = "long",
        },
    },
}

M.AddTrustStoreRevocationsOutput = {
    type = "structure",
    id = "AddTrustStoreRevocationsOutput",
    members = {
        TrustStoreRevocations = {
            type = "list",
            member = M.TrustStoreRevocation,
        },
    },
}

M.InvalidRevocationContentException = {
    type = "structure",
    id = "InvalidRevocationContentException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RevocationContentNotFoundException = {
    type = "structure",
    id = "RevocationContentNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyTrustStoreRevocationEntriesException = {
    type = "structure",
    id = "TooManyTrustStoreRevocationEntriesException",
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
    id = "AdministrativeOverride",
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
    id = "AllocationIdNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ALPNPolicyNotSupportedException = {
    type = "structure",
    id = "ALPNPolicyNotSupportedException",
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
    id = "AnomalyDetection",
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
    id = "LoadBalancerAddress",
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
    id = "AvailabilityZone",
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
            member = M.LoadBalancerAddress,
        },
        SourceNatIpv6Prefixes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AvailabilityZoneNotSupportedException = {
    type = "structure",
    id = "AvailabilityZoneNotSupportedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CaCertificatesBundleNotFoundException = {
    type = "structure",
    id = "CaCertificatesBundleNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CapacityDecreaseRequestsLimitExceededException = {
    type = "structure",
    id = "CapacityDecreaseRequestsLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CapacityReservationPendingException = {
    type = "structure",
    id = "CapacityReservationPendingException",
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
    id = "CapacityReservationStatus",
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
    id = "CapacityUnitsLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Cipher = {
    type = "structure",
    id = "Cipher",
    members = {
        Name = {
            type = "string",
        },
        Priority = {
            type = "integer",
        },
    },
}

M.TrustStoreAssociationStatusEnum = {
    ACTIVE = "active",
    REMOVED = "removed",
}

M.MutualAuthenticationAttributes = {
    type = "structure",
    id = "MutualAuthenticationAttributes",
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
    id = "CreateListenerInput",
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
            type = "integer",
        },
        SslPolicy = {
            type = "string",
        },
        Certificates = {
            type = "list",
            member = M.Certificate,
        },
        DefaultActions = {
            type = "list",
            member = M.Action,
            traits = {
                required = true,
            },
        },
        AlpnPolicy = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        MutualAuthentication = M.MutualAuthenticationAttributes,
    },
}

M.Listener = {
    type = "structure",
    id = "Listener",
    members = {
        ListenerArn = {
            type = "string",
        },
        LoadBalancerArn = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        Protocol = {
            type = "string",
        },
        Certificates = {
            type = "list",
            member = M.Certificate,
        },
        SslPolicy = {
            type = "string",
        },
        DefaultActions = {
            type = "list",
            member = M.Action,
        },
        AlpnPolicy = {
            type = "list",
            member = { type = "string" },
        },
        MutualAuthentication = M.MutualAuthenticationAttributes,
    },
}

M.CreateListenerOutput = {
    type = "structure",
    id = "CreateListenerOutput",
    members = {
        Listeners = {
            type = "list",
            member = M.Listener,
        },
    },
}

M.DuplicateListenerException = {
    type = "structure",
    id = "DuplicateListenerException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IncompatibleProtocolsException = {
    type = "structure",
    id = "IncompatibleProtocolsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidConfigurationRequestException = {
    type = "structure",
    id = "InvalidConfigurationRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidLoadBalancerActionException = {
    type = "structure",
    id = "InvalidLoadBalancerActionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SSLPolicyNotFoundException = {
    type = "structure",
    id = "SSLPolicyNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TargetGroupAssociationLimitException = {
    type = "structure",
    id = "TargetGroupAssociationLimitException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyActionsException = {
    type = "structure",
    id = "TooManyActionsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyListenersException = {
    type = "structure",
    id = "TooManyListenersException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRegistrationsForTargetIdException = {
    type = "structure",
    id = "TooManyRegistrationsForTargetIdException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyTargetsException = {
    type = "structure",
    id = "TooManyTargetsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyUniqueTargetGroupsPerLoadBalancerException = {
    type = "structure",
    id = "TooManyUniqueTargetGroupsPerLoadBalancerException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TrustStoreNotReadyException = {
    type = "structure",
    id = "TrustStoreNotReadyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnsupportedProtocolException = {
    type = "structure",
    id = "UnsupportedProtocolException",
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
    id = "IpamPools",
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
    id = "SubnetMapping",
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
    id = "CreateLoadBalancerInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subnets = {
            type = "list",
            member = { type = "string" },
        },
        SubnetMappings = {
            type = "list",
            member = M.SubnetMapping,
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
        },
        Scheme = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
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
        IpamPools = M.IpamPools,
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
    id = "LoadBalancerState",
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
    id = "LoadBalancer",
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
        State = M.LoadBalancerState,
        Type = {
            type = "string",
        },
        AvailabilityZones = {
            type = "list",
            member = M.AvailabilityZone,
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
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
        IpamPools = M.IpamPools,
    },
}

M.CreateLoadBalancerOutput = {
    type = "structure",
    id = "CreateLoadBalancerOutput",
    members = {
        LoadBalancers = {
            type = "list",
            member = M.LoadBalancer,
        },
    },
}

M.DuplicateLoadBalancerNameException = {
    type = "structure",
    id = "DuplicateLoadBalancerNameException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidSchemeException = {
    type = "structure",
    id = "InvalidSchemeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidSecurityGroupException = {
    type = "structure",
    id = "InvalidSecurityGroupException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidSubnetException = {
    type = "structure",
    id = "InvalidSubnetException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OperationNotPermittedException = {
    type = "structure",
    id = "OperationNotPermittedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SubnetNotFoundException = {
    type = "structure",
    id = "SubnetNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyLoadBalancersException = {
    type = "structure",
    id = "TooManyLoadBalancersException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.HostHeaderConditionConfig = {
    type = "structure",
    id = "HostHeaderConditionConfig",
    members = {
        Values = {
            type = "list",
            member = { type = "string" },
        },
        RegexValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.HttpHeaderConditionConfig = {
    type = "structure",
    id = "HttpHeaderConditionConfig",
    members = {
        HttpHeaderName = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
        RegexValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.HttpRequestMethodConditionConfig = {
    type = "structure",
    id = "HttpRequestMethodConditionConfig",
    members = {
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PathPatternConditionConfig = {
    type = "structure",
    id = "PathPatternConditionConfig",
    members = {
        Values = {
            type = "list",
            member = { type = "string" },
        },
        RegexValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.QueryStringKeyValuePair = {
    type = "structure",
    id = "QueryStringKeyValuePair",
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
    id = "QueryStringConditionConfig",
    members = {
        Values = {
            type = "list",
            member = M.QueryStringKeyValuePair,
        },
    },
}

M.SourceIpConditionConfig = {
    type = "structure",
    id = "SourceIpConditionConfig",
    members = {
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RuleCondition = {
    type = "structure",
    id = "RuleCondition",
    members = {
        Field = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
        HostHeaderConfig = M.HostHeaderConditionConfig,
        PathPatternConfig = M.PathPatternConditionConfig,
        HttpHeaderConfig = M.HttpHeaderConditionConfig,
        QueryStringConfig = M.QueryStringConditionConfig,
        HttpRequestMethodConfig = M.HttpRequestMethodConditionConfig,
        SourceIpConfig = M.SourceIpConditionConfig,
        RegexValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RewriteConfig = {
    type = "structure",
    id = "RewriteConfig",
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
    id = "HostHeaderRewriteConfig",
    members = {
        Rewrites = {
            type = "list",
            member = M.RewriteConfig,
        },
    },
}

M.TransformTypeEnum = {
    HOST_HEADER_REWRITE = "host-header-rewrite",
    URL_REWRITE = "url-rewrite",
}

M.UrlRewriteConfig = {
    type = "structure",
    id = "UrlRewriteConfig",
    members = {
        Rewrites = {
            type = "list",
            member = M.RewriteConfig,
        },
    },
}

M.RuleTransform = {
    type = "structure",
    id = "RuleTransform",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostHeaderRewriteConfig = M.HostHeaderRewriteConfig,
        UrlRewriteConfig = M.UrlRewriteConfig,
    },
}

M.CreateRuleInput = {
    type = "structure",
    id = "CreateRuleInput",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Conditions = {
            type = "list",
            member = M.RuleCondition,
            traits = {
                required = true,
            },
        },
        Priority = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Actions = {
            type = "list",
            member = M.Action,
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Transforms = {
            type = "list",
            member = M.RuleTransform,
        },
    },
}

M.Rule = {
    type = "structure",
    id = "Rule",
    members = {
        RuleArn = {
            type = "string",
        },
        Priority = {
            type = "string",
        },
        Conditions = {
            type = "list",
            member = M.RuleCondition,
        },
        Actions = {
            type = "list",
            member = M.Action,
        },
        IsDefault = {
            type = "boolean",
        },
        Transforms = {
            type = "list",
            member = M.RuleTransform,
        },
    },
}

M.CreateRuleOutput = {
    type = "structure",
    id = "CreateRuleOutput",
    members = {
        Rules = {
            type = "list",
            member = M.Rule,
        },
    },
}

M.PriorityInUseException = {
    type = "structure",
    id = "PriorityInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRulesException = {
    type = "structure",
    id = "TooManyRulesException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyTargetGroupsException = {
    type = "structure",
    id = "TooManyTargetGroupsException",
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
    id = "Matcher",
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
    id = "CreateTargetGroupInput",
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
            type = "integer",
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
            type = "integer",
        },
        HealthCheckTimeoutSeconds = {
            type = "integer",
        },
        HealthyThresholdCount = {
            type = "integer",
        },
        UnhealthyThresholdCount = {
            type = "integer",
        },
        Matcher = M.Matcher,
        TargetType = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        IpAddressType = {
            type = "string",
        },
        TargetControlPort = {
            type = "integer",
        },
    },
}

M.TargetGroup = {
    type = "structure",
    id = "TargetGroup",
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
            type = "integer",
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
            type = "integer",
        },
        HealthCheckTimeoutSeconds = {
            type = "integer",
        },
        HealthyThresholdCount = {
            type = "integer",
        },
        UnhealthyThresholdCount = {
            type = "integer",
        },
        HealthCheckPath = {
            type = "string",
        },
        Matcher = M.Matcher,
        LoadBalancerArns = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
        },
    },
}

M.CreateTargetGroupOutput = {
    type = "structure",
    id = "CreateTargetGroupOutput",
    members = {
        TargetGroups = {
            type = "list",
            member = M.TargetGroup,
        },
    },
}

M.DuplicateTargetGroupNameException = {
    type = "structure",
    id = "DuplicateTargetGroupNameException",
    error = "client",
    members = {
        Message = {
            type = "string",
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
            member = M.Tag,
        },
    },
}

M.TrustStoreStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
}

M.TrustStore = {
    type = "structure",
    id = "TrustStore",
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
            type = "integer",
        },
        TotalRevokedEntries = {
            type = "long",
        },
    },
}

M.CreateTrustStoreOutput = {
    type = "structure",
    id = "CreateTrustStoreOutput",
    members = {
        TrustStores = {
            type = "list",
            member = M.TrustStore,
        },
    },
}

M.DuplicateTrustStoreNameException = {
    type = "structure",
    id = "DuplicateTrustStoreNameException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidCaCertificatesBundleException = {
    type = "structure",
    id = "InvalidCaCertificatesBundleException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyTrustStoresException = {
    type = "structure",
    id = "TooManyTrustStoresException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteAssociationSameAccountException = {
    type = "structure",
    id = "DeleteAssociationSameAccountException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteListenerInput = {
    type = "structure",
    id = "DeleteListenerInput",
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
    id = "DeleteListenerOutput",
}

M.DeleteLoadBalancerInput = {
    type = "structure",
    id = "DeleteLoadBalancerInput",
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
    id = "DeleteLoadBalancerOutput",
}

M.DeleteRuleInput = {
    type = "structure",
    id = "DeleteRuleInput",
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
    id = "DeleteRuleOutput",
}

M.DeleteSharedTrustStoreAssociationInput = {
    type = "structure",
    id = "DeleteSharedTrustStoreAssociationInput",
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
    id = "DeleteSharedTrustStoreAssociationOutput",
}

M.TrustStoreAssociationNotFoundException = {
    type = "structure",
    id = "TrustStoreAssociationNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteTargetGroupInput = {
    type = "structure",
    id = "DeleteTargetGroupInput",
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
    id = "DeleteTargetGroupOutput",
}

M.DeleteTrustStoreInput = {
    type = "structure",
    id = "DeleteTrustStoreInput",
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
    id = "DeleteTrustStoreOutput",
}

M.TrustStoreInUseException = {
    type = "structure",
    id = "TrustStoreInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TargetDescription = {
    type = "structure",
    id = "TargetDescription",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Port = {
            type = "integer",
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
    id = "DeregisterTargetsInput",
    members = {
        TargetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Targets = {
            type = "list",
            member = M.TargetDescription,
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterTargetsOutput = {
    type = "structure",
    id = "DeregisterTargetsOutput",
}

M.InvalidTargetException = {
    type = "structure",
    id = "InvalidTargetException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeAccountLimitsInput = {
    type = "structure",
    id = "DescribeAccountLimitsInput",
    members = {
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
    },
}

M.Limit = {
    type = "structure",
    id = "Limit",
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
    id = "DescribeAccountLimitsOutput",
    members = {
        Limits = {
            type = "list",
            member = M.Limit,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeCapacityReservationInput = {
    type = "structure",
    id = "DescribeCapacityReservationInput",
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
    id = "ZonalCapacityReservationState",
    members = {
        State = M.CapacityReservationStatus,
        AvailabilityZone = {
            type = "string",
        },
        EffectiveCapacityUnits = {
            type = "double",
        },
    },
}

M.MinimumLoadBalancerCapacity = {
    type = "structure",
    id = "MinimumLoadBalancerCapacity",
    members = {
        CapacityUnits = {
            type = "integer",
        },
    },
}

M.DescribeCapacityReservationOutput = {
    type = "structure",
    id = "DescribeCapacityReservationOutput",
    members = {
        LastModifiedTime = {
            type = "timestamp",
        },
        DecreaseRequestsRemaining = {
            type = "integer",
        },
        MinimumLoadBalancerCapacity = M.MinimumLoadBalancerCapacity,
        CapacityReservationState = {
            type = "list",
            member = M.ZonalCapacityReservationState,
        },
    },
}

M.DescribeListenerAttributesInput = {
    type = "structure",
    id = "DescribeListenerAttributesInput",
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
    id = "ListenerAttribute",
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
    id = "DescribeListenerAttributesOutput",
    members = {
        Attributes = {
            type = "list",
            member = M.ListenerAttribute,
        },
    },
}

M.DescribeListenerCertificatesInput = {
    type = "structure",
    id = "DescribeListenerCertificatesInput",
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
            type = "integer",
        },
    },
}

M.DescribeListenerCertificatesOutput = {
    type = "structure",
    id = "DescribeListenerCertificatesOutput",
    members = {
        Certificates = {
            type = "list",
            member = M.Certificate,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeListenersInput = {
    type = "structure",
    id = "DescribeListenersInput",
    members = {
        LoadBalancerArn = {
            type = "string",
        },
        ListenerArns = {
            type = "list",
            member = { type = "string" },
        },
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
    },
}

M.DescribeListenersOutput = {
    type = "structure",
    id = "DescribeListenersOutput",
    members = {
        Listeners = {
            type = "list",
            member = M.Listener,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeLoadBalancerAttributesInput = {
    type = "structure",
    id = "DescribeLoadBalancerAttributesInput",
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
    id = "LoadBalancerAttribute",
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
    id = "DescribeLoadBalancerAttributesOutput",
    members = {
        Attributes = {
            type = "list",
            member = M.LoadBalancerAttribute,
        },
    },
}

M.DescribeLoadBalancersInput = {
    type = "structure",
    id = "DescribeLoadBalancersInput",
    members = {
        LoadBalancerArns = {
            type = "list",
            member = { type = "string" },
        },
        Names = {
            type = "list",
            member = { type = "string" },
        },
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
    },
}

M.DescribeLoadBalancersOutput = {
    type = "structure",
    id = "DescribeLoadBalancersOutput",
    members = {
        LoadBalancers = {
            type = "list",
            member = M.LoadBalancer,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeRulesInput = {
    type = "structure",
    id = "DescribeRulesInput",
    members = {
        ListenerArn = {
            type = "string",
        },
        RuleArns = {
            type = "list",
            member = { type = "string" },
        },
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
    },
}

M.DescribeRulesOutput = {
    type = "structure",
    id = "DescribeRulesOutput",
    members = {
        Rules = {
            type = "list",
            member = M.Rule,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeSSLPoliciesInput = {
    type = "structure",
    id = "DescribeSSLPoliciesInput",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
        },
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
        LoadBalancerType = {
            type = "string",
        },
    },
}

M.SslPolicy = {
    type = "structure",
    id = "SslPolicy",
    members = {
        SslProtocols = {
            type = "list",
            member = { type = "string" },
        },
        Ciphers = {
            type = "list",
            member = M.Cipher,
        },
        Name = {
            type = "string",
        },
        SupportedLoadBalancerTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeSSLPoliciesOutput = {
    type = "structure",
    id = "DescribeSSLPoliciesOutput",
    members = {
        SslPolicies = {
            type = "list",
            member = M.SslPolicy,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeTagsInput = {
    type = "structure",
    id = "DescribeTagsInput",
    members = {
        ResourceArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagDescription = {
    type = "structure",
    id = "TagDescription",
    members = {
        ResourceArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DescribeTagsOutput = {
    type = "structure",
    id = "DescribeTagsOutput",
    members = {
        TagDescriptions = {
            type = "list",
            member = M.TagDescription,
        },
    },
}

M.DescribeTargetGroupAttributesInput = {
    type = "structure",
    id = "DescribeTargetGroupAttributesInput",
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
    id = "TargetGroupAttribute",
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
    id = "DescribeTargetGroupAttributesOutput",
    members = {
        Attributes = {
            type = "list",
            member = M.TargetGroupAttribute,
        },
    },
}

M.DescribeTargetGroupsInput = {
    type = "structure",
    id = "DescribeTargetGroupsInput",
    members = {
        LoadBalancerArn = {
            type = "string",
        },
        TargetGroupArns = {
            type = "list",
            member = { type = "string" },
        },
        Names = {
            type = "list",
            member = { type = "string" },
        },
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
    },
}

M.DescribeTargetGroupsOutput = {
    type = "structure",
    id = "DescribeTargetGroupsOutput",
    members = {
        TargetGroups = {
            type = "list",
            member = M.TargetGroup,
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
    id = "DescribeTargetHealthInput",
    members = {
        TargetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Targets = {
            type = "list",
            member = M.TargetDescription,
        },
        Include = {
            type = "list",
            member = { type = "string" },
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
    id = "TargetHealth",
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
    id = "TargetHealthDescription",
    members = {
        Target = M.TargetDescription,
        HealthCheckPort = {
            type = "string",
        },
        TargetHealth = M.TargetHealth,
        AnomalyDetection = M.AnomalyDetection,
        AdministrativeOverride = M.AdministrativeOverride,
    },
}

M.DescribeTargetHealthOutput = {
    type = "structure",
    id = "DescribeTargetHealthOutput",
    members = {
        TargetHealthDescriptions = {
            type = "list",
            member = M.TargetHealthDescription,
        },
    },
}

M.HealthUnavailableException = {
    type = "structure",
    id = "HealthUnavailableException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeTrustStoreAssociationsInput = {
    type = "structure",
    id = "DescribeTrustStoreAssociationsInput",
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
            type = "integer",
        },
    },
}

M.TrustStoreAssociation = {
    type = "structure",
    id = "TrustStoreAssociation",
    members = {
        ResourceArn = {
            type = "string",
        },
    },
}

M.DescribeTrustStoreAssociationsOutput = {
    type = "structure",
    id = "DescribeTrustStoreAssociationsOutput",
    members = {
        TrustStoreAssociations = {
            type = "list",
            member = M.TrustStoreAssociation,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.DescribeTrustStoreRevocation = {
    type = "structure",
    id = "DescribeTrustStoreRevocation",
    members = {
        TrustStoreArn = {
            type = "string",
        },
        RevocationId = {
            type = "long",
        },
        RevocationType = {
            type = "string",
        },
        NumberOfRevokedEntries = {
            type = "long",
        },
    },
}

M.DescribeTrustStoreRevocationsInput = {
    type = "structure",
    id = "DescribeTrustStoreRevocationsInput",
    members = {
        TrustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevocationIds = {
            type = "list",
            member = { type = "long" },
        },
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
    },
}

M.DescribeTrustStoreRevocationsOutput = {
    type = "structure",
    id = "DescribeTrustStoreRevocationsOutput",
    members = {
        TrustStoreRevocations = {
            type = "list",
            member = M.DescribeTrustStoreRevocation,
        },
        NextMarker = {
            type = "string",
        },
    },
}

M.RevocationIdNotFoundException = {
    type = "structure",
    id = "RevocationIdNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeTrustStoresInput = {
    type = "structure",
    id = "DescribeTrustStoresInput",
    members = {
        TrustStoreArns = {
            type = "list",
            member = { type = "string" },
        },
        Names = {
            type = "list",
            member = { type = "string" },
        },
        Marker = {
            type = "string",
        },
        PageSize = {
            type = "integer",
        },
    },
}

M.DescribeTrustStoresOutput = {
    type = "structure",
    id = "DescribeTrustStoresOutput",
    members = {
        TrustStores = {
            type = "list",
            member = M.TrustStore,
        },
        NextMarker = {
            type = "string",
        },
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
        Policy = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetTrustStoreCaCertificatesBundleInput = {
    type = "structure",
    id = "GetTrustStoreCaCertificatesBundleInput",
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
    id = "GetTrustStoreCaCertificatesBundleOutput",
    members = {
        Location = {
            type = "string",
        },
    },
}

M.GetTrustStoreRevocationContentInput = {
    type = "structure",
    id = "GetTrustStoreRevocationContentInput",
    members = {
        TrustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevocationId = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.GetTrustStoreRevocationContentOutput = {
    type = "structure",
    id = "GetTrustStoreRevocationContentOutput",
    members = {
        Location = {
            type = "string",
        },
    },
}

M.InsufficientCapacityException = {
    type = "structure",
    id = "InsufficientCapacityException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ModifyCapacityReservationInput = {
    type = "structure",
    id = "ModifyCapacityReservationInput",
    members = {
        LoadBalancerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MinimumLoadBalancerCapacity = M.MinimumLoadBalancerCapacity,
        ResetCapacityReservation = {
            type = "boolean",
        },
    },
}

M.ModifyCapacityReservationOutput = {
    type = "structure",
    id = "ModifyCapacityReservationOutput",
    members = {
        LastModifiedTime = {
            type = "timestamp",
        },
        DecreaseRequestsRemaining = {
            type = "integer",
        },
        MinimumLoadBalancerCapacity = M.MinimumLoadBalancerCapacity,
        CapacityReservationState = {
            type = "list",
            member = M.ZonalCapacityReservationState,
        },
    },
}

M.PriorRequestNotCompleteException = {
    type = "structure",
    id = "PriorRequestNotCompleteException",
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
    id = "ModifyIpPoolsInput",
    members = {
        LoadBalancerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpamPools = M.IpamPools,
        RemoveIpamPools = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ModifyIpPoolsOutput = {
    type = "structure",
    id = "ModifyIpPoolsOutput",
    members = {
        IpamPools = M.IpamPools,
    },
}

M.ModifyListenerInput = {
    type = "structure",
    id = "ModifyListenerInput",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Port = {
            type = "integer",
        },
        Protocol = {
            type = "string",
        },
        SslPolicy = {
            type = "string",
        },
        Certificates = {
            type = "list",
            member = M.Certificate,
        },
        DefaultActions = {
            type = "list",
            member = M.Action,
        },
        AlpnPolicy = {
            type = "list",
            member = { type = "string" },
        },
        MutualAuthentication = M.MutualAuthenticationAttributes,
    },
}

M.ModifyListenerOutput = {
    type = "structure",
    id = "ModifyListenerOutput",
    members = {
        Listeners = {
            type = "list",
            member = M.Listener,
        },
    },
}

M.ModifyListenerAttributesInput = {
    type = "structure",
    id = "ModifyListenerAttributesInput",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "list",
            member = M.ListenerAttribute,
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyListenerAttributesOutput = {
    type = "structure",
    id = "ModifyListenerAttributesOutput",
    members = {
        Attributes = {
            type = "list",
            member = M.ListenerAttribute,
        },
    },
}

M.ModifyLoadBalancerAttributesInput = {
    type = "structure",
    id = "ModifyLoadBalancerAttributesInput",
    members = {
        LoadBalancerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "list",
            member = M.LoadBalancerAttribute,
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyLoadBalancerAttributesOutput = {
    type = "structure",
    id = "ModifyLoadBalancerAttributesOutput",
    members = {
        Attributes = {
            type = "list",
            member = M.LoadBalancerAttribute,
        },
    },
}

M.ModifyRuleInput = {
    type = "structure",
    id = "ModifyRuleInput",
    members = {
        RuleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Conditions = {
            type = "list",
            member = M.RuleCondition,
        },
        Actions = {
            type = "list",
            member = M.Action,
        },
        Transforms = {
            type = "list",
            member = M.RuleTransform,
        },
        ResetTransforms = {
            type = "boolean",
        },
    },
}

M.ModifyRuleOutput = {
    type = "structure",
    id = "ModifyRuleOutput",
    members = {
        Rules = {
            type = "list",
            member = M.Rule,
        },
    },
}

M.ModifyTargetGroupInput = {
    type = "structure",
    id = "ModifyTargetGroupInput",
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
            type = "integer",
        },
        HealthCheckTimeoutSeconds = {
            type = "integer",
        },
        HealthyThresholdCount = {
            type = "integer",
        },
        UnhealthyThresholdCount = {
            type = "integer",
        },
        Matcher = M.Matcher,
    },
}

M.ModifyTargetGroupOutput = {
    type = "structure",
    id = "ModifyTargetGroupOutput",
    members = {
        TargetGroups = {
            type = "list",
            member = M.TargetGroup,
        },
    },
}

M.ModifyTargetGroupAttributesInput = {
    type = "structure",
    id = "ModifyTargetGroupAttributesInput",
    members = {
        TargetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "list",
            member = M.TargetGroupAttribute,
            traits = {
                required = true,
            },
        },
    },
}

M.ModifyTargetGroupAttributesOutput = {
    type = "structure",
    id = "ModifyTargetGroupAttributesOutput",
    members = {
        Attributes = {
            type = "list",
            member = M.TargetGroupAttribute,
        },
    },
}

M.ModifyTrustStoreInput = {
    type = "structure",
    id = "ModifyTrustStoreInput",
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
    id = "ModifyTrustStoreOutput",
    members = {
        TrustStores = {
            type = "list",
            member = M.TrustStore,
        },
    },
}

M.RegisterTargetsInput = {
    type = "structure",
    id = "RegisterTargetsInput",
    members = {
        TargetGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Targets = {
            type = "list",
            member = M.TargetDescription,
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterTargetsOutput = {
    type = "structure",
    id = "RegisterTargetsOutput",
}

M.RemoveListenerCertificatesInput = {
    type = "structure",
    id = "RemoveListenerCertificatesInput",
    members = {
        ListenerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Certificates = {
            type = "list",
            member = M.Certificate,
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveListenerCertificatesOutput = {
    type = "structure",
    id = "RemoveListenerCertificatesOutput",
}

M.RemoveTagsInput = {
    type = "structure",
    id = "RemoveTagsInput",
    members = {
        ResourceArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveTagsOutput = {
    type = "structure",
    id = "RemoveTagsOutput",
}

M.RemoveTrustStoreRevocationsInput = {
    type = "structure",
    id = "RemoveTrustStoreRevocationsInput",
    members = {
        TrustStoreArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RevocationIds = {
            type = "list",
            member = { type = "long" },
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveTrustStoreRevocationsOutput = {
    type = "structure",
    id = "RemoveTrustStoreRevocationsOutput",
}

M.SetIpAddressTypeInput = {
    type = "structure",
    id = "SetIpAddressTypeInput",
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
    id = "SetIpAddressTypeOutput",
    members = {
        IpAddressType = {
            type = "string",
        },
    },
}

M.RulePriorityPair = {
    type = "structure",
    id = "RulePriorityPair",
    members = {
        RuleArn = {
            type = "string",
        },
        Priority = {
            type = "integer",
        },
    },
}

M.SetRulePrioritiesInput = {
    type = "structure",
    id = "SetRulePrioritiesInput",
    members = {
        RulePriorities = {
            type = "list",
            member = M.RulePriorityPair,
            traits = {
                required = true,
            },
        },
    },
}

M.SetRulePrioritiesOutput = {
    type = "structure",
    id = "SetRulePrioritiesOutput",
    members = {
        Rules = {
            type = "list",
            member = M.Rule,
        },
    },
}

M.EnforceSecurityGroupInboundRulesOnPrivateLinkTrafficEnum = {
    on = "on",
    off = "off",
}

M.SetSecurityGroupsInput = {
    type = "structure",
    id = "SetSecurityGroupsInput",
    members = {
        LoadBalancerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroups = {
            type = "list",
            member = { type = "string" },
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
    id = "SetSecurityGroupsOutput",
    members = {
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic = {
            type = "string",
        },
    },
}

M.SetSubnetsInput = {
    type = "structure",
    id = "SetSubnetsInput",
    members = {
        LoadBalancerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subnets = {
            type = "list",
            member = { type = "string" },
        },
        SubnetMappings = {
            type = "list",
            member = M.SubnetMapping,
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
    id = "SetSubnetsOutput",
    members = {
        AvailabilityZones = {
            type = "list",
            member = M.AvailabilityZone,
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
