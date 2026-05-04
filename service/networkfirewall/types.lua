local M = {}

M.AcceptNetworkFirewallTransitGatewayAttachmentInput = {
    type = "structure",
    members = {
        TransitGatewayAttachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TransitGatewayAttachmentStatus = {
    CREATING = "CREATING",
    DELETING = "DELETING",
    DELETED = "DELETED",
    FAILED = "FAILED",
    ERROR = "ERROR",
    READY = "READY",
    PENDING_ACCEPTANCE = "PENDING_ACCEPTANCE",
    REJECTING = "REJECTING",
    REJECTED = "REJECTED",
}

M.AcceptNetworkFirewallTransitGatewayAttachmentOutput = {
    type = "structure",
    members = {
        TransitGatewayAttachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TransitGatewayAttachmentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerError = {
    type = "structure",
    error = "server",
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

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Dimension = {
    type = "structure",
    members = {
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PublishMetricAction = {
    type = "structure",
    members = {
        Dimensions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionDefinition = {
    type = "structure",
    members = {
        PublishMetricAction = {
            type = "structure",
        },
    },
}

M.Address = {
    type = "structure",
    members = {
        AddressDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnabledAnalysisType = {
    TLS_SNI = "TLS_SNI",
    HTTP_HOST = "HTTP_HOST",
}

M.AnalysisReport = {
    type = "structure",
    members = {
        AnalysisReportId = {
            type = "string",
        },
        AnalysisType = {
            type = "string",
        },
        ReportTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
    },
}

M.Hits = {
    type = "structure",
    members = {
        Count = {
            type = "number",
        },
    },
}

M.UniqueSources = {
    type = "structure",
    members = {
        Count = {
            type = "number",
        },
    },
}

M.AnalysisTypeReportResult = {
    type = "structure",
    members = {
        Protocol = {
            type = "string",
        },
        FirstAccessed = {
            type = "timestamp",
        },
        LastAccessed = {
            type = "timestamp",
        },
        Domain = {
            type = "string",
        },
        Hits = {
            type = "structure",
        },
        UniqueSources = {
            type = "structure",
        },
    },
}

M.IdentifiedType = {
    STATELESS_RULE_FORWARDING_ASYMMETRICALLY = "STATELESS_RULE_FORWARDING_ASYMMETRICALLY",
    STATELESS_RULE_CONTAINS_TCP_FLAGS = "STATELESS_RULE_CONTAINS_TCP_FLAGS",
}

M.AnalysisResult = {
    type = "structure",
    members = {
        IdentifiedRuleIds = {
            type = "list",
            member_type = "string",
        },
        IdentifiedType = {
            type = "string",
        },
        AnalysisDetail = {
            type = "string",
        },
    },
}

M.AvailabilityZoneMapping = {
    type = "structure",
    members = {
        AvailabilityZone = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateAvailabilityZonesInput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        AvailabilityZoneMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateAvailabilityZonesOutput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        AvailabilityZoneMappings = {
            type = "list",
            member_type = "structure",
        },
        UpdateToken = {
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

M.InvalidOperationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateFirewallPolicyInput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        FirewallPolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateFirewallPolicyOutput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        FirewallPolicyArn = {
            type = "string",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.IPAddressType = {
    DUALSTACK = "DUALSTACK",
    IPV4 = "IPV4",
    IPV6 = "IPV6",
}

M.SubnetMapping = {
    type = "structure",
    members = {
        SubnetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IPAddressType = {
            type = "string",
        },
    },
}

M.AssociateSubnetsInput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        SubnetMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateSubnetsOutput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        SubnetMappings = {
            type = "list",
            member_type = "structure",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.AttachmentStatus = {
    CREATING = "CREATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
    ERROR = "ERROR",
    SCALING = "SCALING",
    READY = "READY",
}

M.Attachment = {
    type = "structure",
    members = {
        SubnetId = {
            type = "string",
        },
        EndpointId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.AZSyncState = {
    type = "structure",
    members = {
        Attachment = {
            type = "structure",
        },
    },
}

M.ProxyRuleGroupAttachment = {
    type = "structure",
    members = {
        ProxyRuleGroupName = {
            type = "string",
        },
        InsertPosition = {
            type = "number",
        },
    },
}

M.AttachRuleGroupsToProxyConfigurationInput = {
    type = "structure",
    members = {
        ProxyConfigurationName = {
            type = "string",
        },
        ProxyConfigurationArn = {
            type = "string",
        },
        RuleGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProxyRulePhaseAction = {
    ALLOW = "ALLOW",
    DENY = "DENY",
    ALERT = "ALERT",
}

M.ProxyConfigDefaultRulePhaseActionsRequest = {
    type = "structure",
    members = {
        PreDNS = {
            type = "string",
        },
        PreREQUEST = {
            type = "string",
        },
        PostRESPONSE = {
            type = "string",
        },
    },
}

M.ProxyConfigRuleGroup = {
    type = "structure",
    members = {
        ProxyRuleGroupName = {
            type = "string",
        },
        ProxyRuleGroupArn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Priority = {
            type = "number",
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
            traits = {
                required = true,
            },
        },
    },
}

M.ProxyConfiguration = {
    type = "structure",
    members = {
        ProxyConfigurationName = {
            type = "string",
        },
        ProxyConfigurationArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        DeleteTime = {
            type = "timestamp",
        },
        RuleGroups = {
            type = "list",
            member_type = "structure",
        },
        DefaultRulePhaseActions = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AttachRuleGroupsToProxyConfigurationOutput = {
    type = "structure",
    members = {
        ProxyConfiguration = {
            type = "structure",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.AvailabilityZoneMetadata = {
    type = "structure",
    members = {
        IPAddressType = {
            type = "string",
        },
    },
}

M.IPSetMetadata = {
    type = "structure",
    members = {
        ResolvedCIDRCount = {
            type = "number",
        },
    },
}

M.CIDRSummary = {
    type = "structure",
    members = {
        AvailableCIDRCount = {
            type = "number",
        },
        UtilizedCIDRCount = {
            type = "number",
        },
        IPSetReferences = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.CapacityUsageSummary = {
    type = "structure",
    members = {
        CIDRs = {
            type = "structure",
        },
    },
}

M.TlsCertificateData = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
        },
        CertificateSerial = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.RevocationCheckAction = {
    PASS = "PASS",
    DROP = "DROP",
    REJECT = "REJECT",
}

M.CheckCertificateRevocationStatusActions = {
    type = "structure",
    members = {
        RevokedStatusAction = {
            type = "string",
        },
        UnknownStatusAction = {
            type = "string",
        },
    },
}

M.ConfigurationSyncState = {
    PENDING = "PENDING",
    IN_SYNC = "IN_SYNC",
    CAPACITY_CONSTRAINED = "CAPACITY_CONSTRAINED",
}

M.EncryptionType = {
    CUSTOMER_KMS = "CUSTOMER_KMS",
    AWS_OWNED_KMS_KEY = "AWS_OWNED_KMS_KEY",
}

M.EncryptionConfiguration = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateFirewallInput = {
    type = "structure",
    members = {
        FirewallName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallPolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcId = {
            type = "string",
        },
        SubnetMappings = {
            type = "list",
            member_type = "structure",
        },
        DeleteProtection = {
            type = "boolean",
        },
        SubnetChangeProtection = {
            type = "boolean",
        },
        FirewallPolicyChangeProtection = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
        EnabledAnalysisTypes = {
            type = "list",
            member_type = "string",
        },
        TransitGatewayId = {
            type = "string",
        },
        AvailabilityZoneMappings = {
            type = "list",
            member_type = "structure",
        },
        AvailabilityZoneChangeProtection = {
            type = "boolean",
        },
    },
}

M.Firewall = {
    type = "structure",
    members = {
        FirewallName = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        FirewallPolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        DeleteProtection = {
            type = "boolean",
        },
        SubnetChangeProtection = {
            type = "boolean",
        },
        FirewallPolicyChangeProtection = {
            type = "boolean",
        },
        Description = {
            type = "string",
        },
        FirewallId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
        NumberOfAssociations = {
            type = "number",
        },
        EnabledAnalysisTypes = {
            type = "list",
            member_type = "string",
        },
        TransitGatewayId = {
            type = "string",
        },
        TransitGatewayOwnerAccountId = {
            type = "string",
        },
        AvailabilityZoneMappings = {
            type = "list",
            member_type = "structure",
        },
        AvailabilityZoneChangeProtection = {
            type = "boolean",
        },
    },
}

M.FirewallStatusValue = {
    PROVISIONING = "PROVISIONING",
    DELETING = "DELETING",
    READY = "READY",
}

M.PerObjectSyncStatus = {
    PENDING = "PENDING",
    IN_SYNC = "IN_SYNC",
    CAPACITY_CONSTRAINED = "CAPACITY_CONSTRAINED",
    NOT_SUBSCRIBED = "NOT_SUBSCRIBED",
    DEPRECATED = "DEPRECATED",
}

M.PerObjectStatus = {
    type = "structure",
    members = {
        SyncStatus = {
            type = "string",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.SyncState = {
    type = "structure",
    members = {
        Attachment = {
            type = "structure",
        },
        Config = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.TransitGatewayAttachmentSyncState = {
    type = "structure",
    members = {
        AttachmentId = {
            type = "string",
        },
        TransitGatewayAttachmentStatus = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.FirewallStatus = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationSyncStateSummary = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SyncStates = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        CapacityUsageSummary = {
            type = "structure",
        },
        TransitGatewayAttachmentSyncState = {
            type = "structure",
        },
    },
}

M.CreateFirewallOutput = {
    type = "structure",
    members = {
        Firewall = {
            type = "structure",
        },
        FirewallStatus = {
            type = "structure",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IPSet = {
    type = "structure",
    members = {
        Definition = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PolicyVariables = {
    type = "structure",
    members = {
        RuleVariables = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.FlowTimeouts = {
    type = "structure",
    members = {
        TcpIdleTimeoutSeconds = {
            type = "number",
        },
    },
}

M.RuleOrder = {
    DEFAULT_ACTION_ORDER = "DEFAULT_ACTION_ORDER",
    STRICT_ORDER = "STRICT_ORDER",
}

M.StreamExceptionPolicy = {
    DROP = "DROP",
    CONTINUE = "CONTINUE",
    REJECT = "REJECT",
}

M.StatefulEngineOptions = {
    type = "structure",
    members = {
        RuleOrder = {
            type = "string",
        },
        StreamExceptionPolicy = {
            type = "string",
        },
        FlowTimeouts = {
            type = "structure",
        },
    },
}

M.OverrideAction = {
    DROP_TO_ALERT = "DROP_TO_ALERT",
}

M.StatefulRuleGroupOverride = {
    type = "structure",
    members = {
        Action = {
            type = "string",
        },
    },
}

M.StatefulRuleGroupReference = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Priority = {
            type = "number",
        },
        Override = {
            type = "structure",
        },
        DeepThreatInspection = {
            type = "boolean",
        },
    },
}

M.CustomAction = {
    type = "structure",
    members = {
        ActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionDefinition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StatelessRuleGroupReference = {
    type = "structure",
    members = {
        ResourceArn = {
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

M.FirewallPolicy = {
    type = "structure",
    members = {
        StatelessRuleGroupReferences = {
            type = "list",
            member_type = "structure",
        },
        StatelessDefaultActions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        StatelessFragmentDefaultActions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        StatelessCustomActions = {
            type = "list",
            member_type = "structure",
        },
        StatefulRuleGroupReferences = {
            type = "list",
            member_type = "structure",
        },
        StatefulDefaultActions = {
            type = "list",
            member_type = "string",
        },
        StatefulEngineOptions = {
            type = "structure",
        },
        TLSInspectionConfigurationArn = {
            type = "string",
        },
        PolicyVariables = {
            type = "structure",
        },
        EnableTLSSessionHolding = {
            type = "boolean",
        },
    },
}

M.CreateFirewallPolicyInput = {
    type = "structure",
    members = {
        FirewallPolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallPolicy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        DryRun = {
            type = "boolean",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
    },
}

M.ResourceStatus = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    ERROR = "ERROR",
}

M.FirewallPolicyResponse = {
    type = "structure",
    members = {
        FirewallPolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallPolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallPolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        FirewallPolicyStatus = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ConsumedStatelessRuleCapacity = {
            type = "number",
        },
        ConsumedStatefulRuleCapacity = {
            type = "number",
        },
        ConsumedStatefulDomainCapacity = {
            type = "number",
        },
        NumberOfAssociations = {
            type = "number",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.CreateFirewallPolicyOutput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallPolicyResponse = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListenerPropertyType = {
    HTTP = "HTTP",
    HTTPS = "HTTPS",
}

M.ListenerPropertyRequest = {
    type = "structure",
    members = {
        Port = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TlsInterceptMode = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TlsInterceptPropertiesRequest = {
    type = "structure",
    members = {
        PcaArn = {
            type = "string",
        },
        TlsInterceptMode = {
            type = "string",
        },
    },
}

M.CreateProxyInput = {
    type = "structure",
    members = {
        ProxyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NatGatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProxyConfigurationName = {
            type = "string",
        },
        ProxyConfigurationArn = {
            type = "string",
        },
        ListenerProperties = {
            type = "list",
            member_type = "structure",
        },
        TlsInterceptProperties = {
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

M.ListenerProperty = {
    type = "structure",
    members = {
        Port = {
            type = "number",
        },
        Type = {
            type = "string",
        },
    },
}

M.ProxyModifyState = {
    MODIFYING = "MODIFYING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.ProxyState = {
    ATTACHING = "ATTACHING",
    ATTACHED = "ATTACHED",
    DETACHING = "DETACHING",
    DETACHED = "DETACHED",
    ATTACH_FAILED = "ATTACH_FAILED",
    DETACH_FAILED = "DETACH_FAILED",
}

M.TlsInterceptProperties = {
    type = "structure",
    members = {
        PcaArn = {
            type = "string",
        },
        TlsInterceptMode = {
            type = "string",
        },
    },
}

M.Proxy = {
    type = "structure",
    members = {
        CreateTime = {
            type = "timestamp",
        },
        DeleteTime = {
            type = "timestamp",
        },
        UpdateTime = {
            type = "timestamp",
        },
        FailureCode = {
            type = "string",
        },
        FailureMessage = {
            type = "string",
        },
        ProxyState = {
            type = "string",
        },
        ProxyModifyState = {
            type = "string",
        },
        NatGatewayId = {
            type = "string",
        },
        ProxyConfigurationName = {
            type = "string",
        },
        ProxyConfigurationArn = {
            type = "string",
        },
        ProxyName = {
            type = "string",
        },
        ProxyArn = {
            type = "string",
        },
        ListenerProperties = {
            type = "list",
            member_type = "structure",
        },
        TlsInterceptProperties = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateProxyOutput = {
    type = "structure",
    members = {
        Proxy = {
            type = "structure",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.UnsupportedOperationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateProxyConfigurationInput = {
    type = "structure",
    members = {
        ProxyConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        RuleGroupNames = {
            type = "list",
            member_type = "string",
        },
        RuleGroupArns = {
            type = "list",
            member_type = "string",
        },
        DefaultRulePhaseActions = {
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

M.CreateProxyConfigurationOutput = {
    type = "structure",
    members = {
        ProxyConfiguration = {
            type = "structure",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.ProxyRuleCondition = {
    type = "structure",
    members = {
        ConditionOperator = {
            type = "string",
        },
        ConditionKey = {
            type = "string",
        },
        ConditionValues = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateProxyRule = {
    type = "structure",
    members = {
        ProxyRuleName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        Conditions = {
            type = "list",
            member_type = "structure",
        },
        InsertPosition = {
            type = "number",
        },
    },
}

M.ProxyRule = {
    type = "structure",
    members = {
        ProxyRuleName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        Conditions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ProxyRulesByRequestPhase = {
    type = "structure",
    members = {
        PreDNS = {
            type = "list",
            member_type = "structure",
        },
        PreREQUEST = {
            type = "list",
            member_type = "structure",
        },
        PostRESPONSE = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateProxyRuleGroupInput = {
    type = "structure",
    members = {
        ProxyRuleGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Rules = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ProxyRuleGroup = {
    type = "structure",
    members = {
        ProxyRuleGroupName = {
            type = "string",
        },
        ProxyRuleGroupArn = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        DeleteTime = {
            type = "timestamp",
        },
        Rules = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateProxyRuleGroupOutput = {
    type = "structure",
    members = {
        ProxyRuleGroup = {
            type = "structure",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.CreateProxyRulesByRequestPhase = {
    type = "structure",
    members = {
        PreDNS = {
            type = "list",
            member_type = "structure",
        },
        PreREQUEST = {
            type = "list",
            member_type = "structure",
        },
        PostRESPONSE = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateProxyRulesInput = {
    type = "structure",
    members = {
        ProxyRuleGroupArn = {
            type = "string",
        },
        ProxyRuleGroupName = {
            type = "string",
        },
        Rules = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateProxyRulesOutput = {
    type = "structure",
    members = {
        ProxyRuleGroup = {
            type = "structure",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.IPSetReference = {
    type = "structure",
    members = {
        ReferenceArn = {
            type = "string",
        },
    },
}

M.ReferenceSets = {
    type = "structure",
    members = {
        IPSetReferences = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.GeneratedRulesType = {
    ALLOWLIST = "ALLOWLIST",
    DENYLIST = "DENYLIST",
    REJECTLIST = "REJECTLIST",
    ALERTLIST = "ALERTLIST",
}

M.TargetType = {
    TLS_SNI = "TLS_SNI",
    HTTP_HOST = "HTTP_HOST",
}

M.RulesSourceList = {
    type = "structure",
    members = {
        Targets = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        TargetTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        GeneratedRulesType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StatefulAction = {
    PASS = "PASS",
    DROP = "DROP",
    ALERT = "ALERT",
    REJECT = "REJECT",
}

M.StatefulRuleDirection = {
    FORWARD = "FORWARD",
    ANY = "ANY",
}

M.StatefulRuleProtocol = {
    ANY = "IP",
    TCP = "TCP",
    UDP = "UDP",
    ICMP = "ICMP",
    HTTP = "HTTP",
    FTP = "FTP",
    TLS = "TLS",
    SMB = "SMB",
    DNS = "DNS",
    DCERPC = "DCERPC",
    SSH = "SSH",
    SMTP = "SMTP",
    IMAP = "IMAP",
    MSN = "MSN",
    KRB5 = "KRB5",
    IKEV2 = "IKEV2",
    TFTP = "TFTP",
    NTP = "NTP",
    DHCP = "DHCP",
    HTTP2 = "HTTP2",
    QUIC = "QUIC",
}

M.Header = {
    type = "structure",
    members = {
        Protocol = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SourcePort = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Direction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationPort = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RuleOption = {
    type = "structure",
    members = {
        Keyword = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Settings = {
            type = "list",
            member_type = "string",
        },
    },
}

M.StatefulRule = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Header = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RuleOptions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PortRange = {
    type = "structure",
    members = {
        FromPort = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ToPort = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TCPFlag = {
    FIN = "FIN",
    SYN = "SYN",
    RST = "RST",
    PSH = "PSH",
    ACK = "ACK",
    URG = "URG",
    ECE = "ECE",
    CWR = "CWR",
}

M.TCPFlagField = {
    type = "structure",
    members = {
        Flags = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Masks = {
            type = "list",
            member_type = "string",
        },
    },
}

M.MatchAttributes = {
    type = "structure",
    members = {
        Sources = {
            type = "list",
            member_type = "structure",
        },
        Destinations = {
            type = "list",
            member_type = "structure",
        },
        SourcePorts = {
            type = "list",
            member_type = "structure",
        },
        DestinationPorts = {
            type = "list",
            member_type = "structure",
        },
        Protocols = {
            type = "list",
            member_type = "number",
        },
        TCPFlags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RuleDefinition = {
    type = "structure",
    members = {
        MatchAttributes = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Actions = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StatelessRule = {
    type = "structure",
    members = {
        RuleDefinition = {
            type = "structure",
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

M.StatelessRulesAndCustomActions = {
    type = "structure",
    members = {
        StatelessRules = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        CustomActions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RulesSource = {
    type = "structure",
    members = {
        RulesString = {
            type = "string",
        },
        RulesSourceList = {
            type = "structure",
        },
        StatefulRules = {
            type = "list",
            member_type = "structure",
        },
        StatelessRulesAndCustomActions = {
            type = "structure",
        },
    },
}

M.PortSet = {
    type = "structure",
    members = {
        Definition = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RuleVariables = {
    type = "structure",
    members = {
        IPSets = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        PortSets = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.StatefulRuleOptions = {
    type = "structure",
    members = {
        RuleOrder = {
            type = "string",
        },
    },
}

M.RuleGroup = {
    type = "structure",
    members = {
        RuleVariables = {
            type = "structure",
        },
        ReferenceSets = {
            type = "structure",
        },
        RulesSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        StatefulRuleOptions = {
            type = "structure",
        },
    },
}

M.SourceMetadata = {
    type = "structure",
    members = {
        SourceArn = {
            type = "string",
        },
        SourceUpdateToken = {
            type = "string",
        },
    },
}

M.SummaryRuleOption = {
    SID = "SID",
    MSG = "MSG",
    METADATA = "METADATA",
}

M.SummaryConfiguration = {
    type = "structure",
    members = {
        RuleOptions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RuleGroupType = {
    STATELESS = "STATELESS",
    STATEFUL = "STATEFUL",
    STATEFUL_DOMAIN = "STATEFUL_DOMAIN",
}

M.CreateRuleGroupInput = {
    type = "structure",
    members = {
        RuleGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleGroup = {
            type = "structure",
        },
        Rules = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Capacity = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        DryRun = {
            type = "boolean",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
        SourceMetadata = {
            type = "structure",
        },
        AnalyzeRuleGroup = {
            type = "boolean",
        },
        SummaryConfiguration = {
            type = "structure",
        },
    },
}

M.RuleGroupResponse = {
    type = "structure",
    members = {
        RuleGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Capacity = {
            type = "number",
        },
        RuleGroupStatus = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ConsumedCapacity = {
            type = "number",
        },
        NumberOfAssociations = {
            type = "number",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
        SourceMetadata = {
            type = "structure",
        },
        SnsTopic = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        AnalysisResults = {
            type = "list",
            member_type = "structure",
        },
        SummaryConfiguration = {
            type = "structure",
        },
    },
}

M.CreateRuleGroupOutput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleGroupResponse = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ServerCertificateScope = {
    type = "structure",
    members = {
        Sources = {
            type = "list",
            member_type = "structure",
        },
        Destinations = {
            type = "list",
            member_type = "structure",
        },
        SourcePorts = {
            type = "list",
            member_type = "structure",
        },
        DestinationPorts = {
            type = "list",
            member_type = "structure",
        },
        Protocols = {
            type = "list",
            member_type = "number",
        },
    },
}

M.ServerCertificate = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
        },
    },
}

M.ServerCertificateConfiguration = {
    type = "structure",
    members = {
        ServerCertificates = {
            type = "list",
            member_type = "structure",
        },
        Scopes = {
            type = "list",
            member_type = "structure",
        },
        CertificateAuthorityArn = {
            type = "string",
        },
        CheckCertificateRevocationStatus = {
            type = "structure",
        },
    },
}

M.TLSInspectionConfiguration = {
    type = "structure",
    members = {
        ServerCertificateConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateTLSInspectionConfigurationInput = {
    type = "structure",
    members = {
        TLSInspectionConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TLSInspectionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
    },
}

M.TLSInspectionConfigurationResponse = {
    type = "structure",
    members = {
        TLSInspectionConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TLSInspectionConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TLSInspectionConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TLSInspectionConfigurationStatus = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        NumberOfAssociations = {
            type = "number",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
        Certificates = {
            type = "list",
            member_type = "structure",
        },
        CertificateAuthority = {
            type = "structure",
        },
    },
}

M.CreateTLSInspectionConfigurationOutput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TLSInspectionConfigurationResponse = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateVpcEndpointAssociationInput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetMapping = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.VpcEndpointAssociation = {
    type = "structure",
    members = {
        VpcEndpointAssociationId = {
            type = "string",
        },
        VpcEndpointAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetMapping = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.VpcEndpointAssociationStatus = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociationSyncState = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.CreateVpcEndpointAssociationOutput = {
    type = "structure",
    members = {
        VpcEndpointAssociation = {
            type = "structure",
        },
        VpcEndpointAssociationStatus = {
            type = "structure",
        },
    },
}

M.DeleteFirewallInput = {
    type = "structure",
    members = {
        FirewallName = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
    },
}

M.DeleteFirewallOutput = {
    type = "structure",
    members = {
        Firewall = {
            type = "structure",
        },
        FirewallStatus = {
            type = "structure",
        },
    },
}

M.DeleteFirewallPolicyInput = {
    type = "structure",
    members = {
        FirewallPolicyName = {
            type = "string",
        },
        FirewallPolicyArn = {
            type = "string",
        },
    },
}

M.DeleteFirewallPolicyOutput = {
    type = "structure",
    members = {
        FirewallPolicyResponse = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteNetworkFirewallTransitGatewayAttachmentInput = {
    type = "structure",
    members = {
        TransitGatewayAttachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteNetworkFirewallTransitGatewayAttachmentOutput = {
    type = "structure",
    members = {
        TransitGatewayAttachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TransitGatewayAttachmentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProxyInput = {
    type = "structure",
    members = {
        NatGatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProxyName = {
            type = "string",
        },
        ProxyArn = {
            type = "string",
        },
    },
}

M.DeleteProxyOutput = {
    type = "structure",
    members = {
        NatGatewayId = {
            type = "string",
        },
        ProxyName = {
            type = "string",
        },
        ProxyArn = {
            type = "string",
        },
    },
}

M.DeleteProxyConfigurationInput = {
    type = "structure",
    members = {
        ProxyConfigurationName = {
            type = "string",
        },
        ProxyConfigurationArn = {
            type = "string",
        },
    },
}

M.DeleteProxyConfigurationOutput = {
    type = "structure",
    members = {
        ProxyConfigurationName = {
            type = "string",
        },
        ProxyConfigurationArn = {
            type = "string",
        },
    },
}

M.DeleteProxyRuleGroupInput = {
    type = "structure",
    members = {
        ProxyRuleGroupName = {
            type = "string",
        },
        ProxyRuleGroupArn = {
            type = "string",
        },
    },
}

M.DeleteProxyRuleGroupOutput = {
    type = "structure",
    members = {
        ProxyRuleGroupName = {
            type = "string",
        },
        ProxyRuleGroupArn = {
            type = "string",
        },
    },
}

M.DeleteProxyRulesInput = {
    type = "structure",
    members = {
        ProxyRuleGroupArn = {
            type = "string",
        },
        ProxyRuleGroupName = {
            type = "string",
        },
        Rules = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProxyRulesOutput = {
    type = "structure",
    members = {
        ProxyRuleGroup = {
            type = "structure",
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

M.InvalidResourcePolicyException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteRuleGroupInput = {
    type = "structure",
    members = {
        RuleGroupName = {
            type = "string",
        },
        RuleGroupArn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.DeleteRuleGroupOutput = {
    type = "structure",
    members = {
        RuleGroupResponse = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTLSInspectionConfigurationInput = {
    type = "structure",
    members = {
        TLSInspectionConfigurationArn = {
            type = "string",
        },
        TLSInspectionConfigurationName = {
            type = "string",
        },
    },
}

M.DeleteTLSInspectionConfigurationOutput = {
    type = "structure",
    members = {
        TLSInspectionConfigurationResponse = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVpcEndpointAssociationInput = {
    type = "structure",
    members = {
        VpcEndpointAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVpcEndpointAssociationOutput = {
    type = "structure",
    members = {
        VpcEndpointAssociation = {
            type = "structure",
        },
        VpcEndpointAssociationStatus = {
            type = "structure",
        },
    },
}

M.DescribeFirewallInput = {
    type = "structure",
    members = {
        FirewallName = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
    },
}

M.DescribeFirewallOutput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
        },
        Firewall = {
            type = "structure",
        },
        FirewallStatus = {
            type = "structure",
        },
    },
}

M.DescribeFirewallMetadataInput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
        },
    },
}

M.DescribeFirewallMetadataOutput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallPolicyArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        SupportedAvailabilityZones = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        TransitGatewayAttachmentId = {
            type = "string",
        },
    },
}

M.DescribeFirewallPolicyInput = {
    type = "structure",
    members = {
        FirewallPolicyName = {
            type = "string",
        },
        FirewallPolicyArn = {
            type = "string",
        },
    },
}

M.DescribeFirewallPolicyOutput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallPolicyResponse = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        FirewallPolicy = {
            type = "structure",
        },
    },
}

M.DescribeFlowOperationInput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
        },
        VpcEndpointAssociationArn = {
            type = "string",
        },
        VpcEndpointId = {
            type = "string",
        },
        FlowOperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FlowFilter = {
    type = "structure",
    members = {
        SourceAddress = {
            type = "structure",
        },
        DestinationAddress = {
            type = "structure",
        },
        SourcePort = {
            type = "string",
        },
        DestinationPort = {
            type = "string",
        },
        Protocols = {
            type = "list",
            member_type = "string",
        },
    },
}

M.FlowOperation = {
    type = "structure",
    members = {
        MinimumFlowAgeInSeconds = {
            type = "number",
        },
        FlowFilters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FlowOperationStatus = {
    COMPLETED = "COMPLETED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETED_WITH_ERRORS = "COMPLETED_WITH_ERRORS",
}

M.FlowOperationType = {
    FLOW_FLUSH = "FLOW_FLUSH",
    FLOW_CAPTURE = "FLOW_CAPTURE",
}

M.DescribeFlowOperationOutput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        VpcEndpointAssociationArn = {
            type = "string",
        },
        VpcEndpointId = {
            type = "string",
        },
        FlowOperationId = {
            type = "string",
        },
        FlowOperationType = {
            type = "string",
        },
        FlowOperationStatus = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        FlowRequestTimestamp = {
            type = "timestamp",
        },
        FlowOperation = {
            type = "structure",
        },
    },
}

M.DescribeLoggingConfigurationInput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
    },
}

M.LogDestinationType = {
    S3 = "S3",
    CLOUDWATCH_LOGS = "CloudWatchLogs",
    KINESIS_DATA_FIREHOSE = "KinesisDataFirehose",
}

M.LogType = {
    ALERT = "ALERT",
    FLOW = "FLOW",
    TLS = "TLS",
}

M.LogDestinationConfig = {
    type = "structure",
    members = {
        LogType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogDestinationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogDestination = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LoggingConfiguration = {
    type = "structure",
    members = {
        LogDestinationConfigs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLoggingConfigurationOutput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
        },
        LoggingConfiguration = {
            type = "structure",
        },
        EnableMonitoringDashboard = {
            type = "boolean",
        },
    },
}

M.DescribeProxyInput = {
    type = "structure",
    members = {
        ProxyName = {
            type = "string",
        },
        ProxyArn = {
            type = "string",
        },
    },
}

M.DescribeProxyResource = {
    type = "structure",
    members = {
        ProxyName = {
            type = "string",
        },
        ProxyArn = {
            type = "string",
        },
        ProxyConfigurationName = {
            type = "string",
        },
        ProxyConfigurationArn = {
            type = "string",
        },
        NatGatewayId = {
            type = "string",
        },
        ProxyState = {
            type = "string",
        },
        ProxyModifyState = {
            type = "string",
        },
        ListenerProperties = {
            type = "list",
            member_type = "structure",
        },
        TlsInterceptProperties = {
            type = "structure",
        },
        VpcEndpointServiceName = {
            type = "string",
        },
        PrivateDNSName = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        DeleteTime = {
            type = "timestamp",
        },
        UpdateTime = {
            type = "timestamp",
        },
        FailureCode = {
            type = "string",
        },
        FailureMessage = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeProxyOutput = {
    type = "structure",
    members = {
        Proxy = {
            type = "structure",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.DescribeProxyConfigurationInput = {
    type = "structure",
    members = {
        ProxyConfigurationName = {
            type = "string",
        },
        ProxyConfigurationArn = {
            type = "string",
        },
    },
}

M.DescribeProxyConfigurationOutput = {
    type = "structure",
    members = {
        ProxyConfiguration = {
            type = "structure",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.DescribeProxyRuleInput = {
    type = "structure",
    members = {
        ProxyRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProxyRuleGroupName = {
            type = "string",
        },
        ProxyRuleGroupArn = {
            type = "string",
        },
    },
}

M.DescribeProxyRuleOutput = {
    type = "structure",
    members = {
        ProxyRule = {
            type = "structure",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.DescribeProxyRuleGroupInput = {
    type = "structure",
    members = {
        ProxyRuleGroupName = {
            type = "string",
        },
        ProxyRuleGroupArn = {
            type = "string",
        },
    },
}

M.DescribeProxyRuleGroupOutput = {
    type = "structure",
    members = {
        ProxyRuleGroup = {
            type = "structure",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.DescribeResourcePolicyInput = {
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

M.DescribeResourcePolicyOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.DescribeRuleGroupInput = {
    type = "structure",
    members = {
        RuleGroupName = {
            type = "string",
        },
        RuleGroupArn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        AnalyzeRuleGroup = {
            type = "boolean",
        },
    },
}

M.DescribeRuleGroupOutput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleGroup = {
            type = "structure",
        },
        RuleGroupResponse = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeRuleGroupMetadataInput = {
    type = "structure",
    members = {
        RuleGroupName = {
            type = "string",
        },
        RuleGroupArn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.DescribeRuleGroupMetadataOutput = {
    type = "structure",
    members = {
        RuleGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Capacity = {
            type = "number",
        },
        StatefulRuleOptions = {
            type = "structure",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        VendorName = {
            type = "string",
        },
        ProductId = {
            type = "string",
        },
        ListingName = {
            type = "string",
        },
    },
}

M.DescribeRuleGroupSummaryInput = {
    type = "structure",
    members = {
        RuleGroupName = {
            type = "string",
        },
        RuleGroupArn = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.RuleSummary = {
    type = "structure",
    members = {
        SID = {
            type = "string",
        },
        Msg = {
            type = "string",
        },
        Metadata = {
            type = "string",
        },
    },
}

M.Summary = {
    type = "structure",
    members = {
        RuleSummaries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeRuleGroupSummaryOutput = {
    type = "structure",
    members = {
        RuleGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Summary = {
            type = "structure",
        },
    },
}

M.DescribeTLSInspectionConfigurationInput = {
    type = "structure",
    members = {
        TLSInspectionConfigurationArn = {
            type = "string",
        },
        TLSInspectionConfigurationName = {
            type = "string",
        },
    },
}

M.DescribeTLSInspectionConfigurationOutput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TLSInspectionConfiguration = {
            type = "structure",
        },
        TLSInspectionConfigurationResponse = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeVpcEndpointAssociationInput = {
    type = "structure",
    members = {
        VpcEndpointAssociationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeVpcEndpointAssociationOutput = {
    type = "structure",
    members = {
        VpcEndpointAssociation = {
            type = "structure",
        },
        VpcEndpointAssociationStatus = {
            type = "structure",
        },
    },
}

M.DetachRuleGroupsFromProxyConfigurationInput = {
    type = "structure",
    members = {
        ProxyConfigurationName = {
            type = "string",
        },
        ProxyConfigurationArn = {
            type = "string",
        },
        RuleGroupNames = {
            type = "list",
            member_type = "string",
        },
        RuleGroupArns = {
            type = "list",
            member_type = "string",
        },
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetachRuleGroupsFromProxyConfigurationOutput = {
    type = "structure",
    members = {
        ProxyConfiguration = {
            type = "structure",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.DisassociateAvailabilityZonesInput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        AvailabilityZoneMappings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateAvailabilityZonesOutput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        AvailabilityZoneMappings = {
            type = "list",
            member_type = "structure",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.DisassociateSubnetsInput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateSubnetsOutput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        SubnetMappings = {
            type = "list",
            member_type = "structure",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.FirewallMetadata = {
    type = "structure",
    members = {
        FirewallName = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        TransitGatewayAttachmentId = {
            type = "string",
        },
    },
}

M.FirewallPolicyMetadata = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.Flow = {
    type = "structure",
    members = {
        SourceAddress = {
            type = "structure",
        },
        DestinationAddress = {
            type = "structure",
        },
        SourcePort = {
            type = "string",
        },
        DestinationPort = {
            type = "string",
        },
        Protocol = {
            type = "string",
        },
        Age = {
            type = "number",
        },
        PacketCount = {
            type = "number",
        },
        ByteCount = {
            type = "number",
        },
    },
}

M.FlowOperationMetadata = {
    type = "structure",
    members = {
        FlowOperationId = {
            type = "string",
        },
        FlowOperationType = {
            type = "string",
        },
        FlowRequestTimestamp = {
            type = "timestamp",
        },
        FlowOperationStatus = {
            type = "string",
        },
    },
}

M.GetAnalysisReportResultsInput = {
    type = "structure",
    members = {
        FirewallName = {
            type = "string",
        },
        AnalysisReportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.GetAnalysisReportResultsOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        ReportTime = {
            type = "timestamp",
        },
        AnalysisType = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        AnalysisReportResults = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListAnalysisReportsInput = {
    type = "structure",
    members = {
        FirewallName = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListAnalysisReportsOutput = {
    type = "structure",
    members = {
        AnalysisReports = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFirewallPoliciesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListFirewallPoliciesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        FirewallPolicies = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListFirewallsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        VpcIds = {
            type = "list",
            member_type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListFirewallsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Firewalls = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListFlowOperationResultsInput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FlowOperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        AvailabilityZone = {
            type = "string",
        },
        VpcEndpointId = {
            type = "string",
        },
        VpcEndpointAssociationArn = {
            type = "string",
        },
    },
}

M.ListFlowOperationResultsOutput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        VpcEndpointAssociationArn = {
            type = "string",
        },
        VpcEndpointId = {
            type = "string",
        },
        FlowOperationId = {
            type = "string",
        },
        FlowOperationStatus = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        FlowRequestTimestamp = {
            type = "timestamp",
        },
        Flows = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFlowOperationsInput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
        },
        VpcEndpointAssociationArn = {
            type = "string",
        },
        VpcEndpointId = {
            type = "string",
        },
        FlowOperationType = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListFlowOperationsOutput = {
    type = "structure",
    members = {
        FlowOperations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProxiesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ProxyMetadata = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ListProxiesOutput = {
    type = "structure",
    members = {
        Proxies = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProxyConfigurationsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ProxyConfigurationMetadata = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ListProxyConfigurationsOutput = {
    type = "structure",
    members = {
        ProxyConfigurations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProxyRuleGroupsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ProxyRuleGroupMetadata = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ListProxyRuleGroupsOutput = {
    type = "structure",
    members = {
        ProxyRuleGroups = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ResourceManagedType = {
    AWS_MANAGED_THREAT_SIGNATURES = "AWS_MANAGED_THREAT_SIGNATURES",
    AWS_MANAGED_DOMAIN_LISTS = "AWS_MANAGED_DOMAIN_LISTS",
    ACTIVE_THREAT_DEFENSE = "ACTIVE_THREAT_DEFENSE",
    PARTNER_MANAGED = "PARTNER_MANAGED",
}

M.ResourceManagedStatus = {
    MANAGED = "MANAGED",
    ACCOUNT = "ACCOUNT",
}

M.SubscriptionStatus = {
    NOT_SUBSCRIBED = "NOT_SUBSCRIBED",
    SUBSCRIBED = "SUBSCRIBED",
}

M.ListRuleGroupsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Scope = {
            type = "string",
        },
        ManagedType = {
            type = "string",
        },
        SubscriptionStatus = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.RuleGroupMetadata = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        VendorName = {
            type = "string",
        },
    },
}

M.ListRuleGroupsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        RuleGroups = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListTLSInspectionConfigurationsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.TLSInspectionConfigurationMetadata = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ListTLSInspectionConfigurationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        TLSInspectionConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListVpcEndpointAssociationsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        FirewallArn = {
            type = "string",
        },
    },
}

M.VpcEndpointAssociationMetadata = {
    type = "structure",
    members = {
        VpcEndpointAssociationArn = {
            type = "string",
        },
    },
}

M.ListVpcEndpointAssociationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        VpcEndpointAssociations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.LogDestinationPermissionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
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
        Policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
}

M.RejectNetworkFirewallTransitGatewayAttachmentInput = {
    type = "structure",
    members = {
        TransitGatewayAttachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RejectNetworkFirewallTransitGatewayAttachmentOutput = {
    type = "structure",
    members = {
        TransitGatewayAttachmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TransitGatewayAttachmentStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartAnalysisReportInput = {
    type = "structure",
    members = {
        FirewallName = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        AnalysisType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartAnalysisReportOutput = {
    type = "structure",
    members = {
        AnalysisReportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartFlowCaptureInput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
        },
        VpcEndpointAssociationArn = {
            type = "string",
        },
        VpcEndpointId = {
            type = "string",
        },
        MinimumFlowAgeInSeconds = {
            type = "number",
        },
        FlowFilters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartFlowCaptureOutput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
        },
        FlowOperationId = {
            type = "string",
        },
        FlowOperationStatus = {
            type = "string",
        },
    },
}

M.StartFlowFlushInput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AvailabilityZone = {
            type = "string",
        },
        VpcEndpointAssociationArn = {
            type = "string",
        },
        VpcEndpointId = {
            type = "string",
        },
        MinimumFlowAgeInSeconds = {
            type = "number",
        },
        FlowFilters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartFlowFlushOutput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
        },
        FlowOperationId = {
            type = "string",
        },
        FlowOperationStatus = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
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

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
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

M.UntagResourceOutput = {
    type = "structure",
}

M.ResourceOwnerCheckException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateAvailabilityZoneChangeProtectionInput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        AvailabilityZoneChangeProtection = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAvailabilityZoneChangeProtectionOutput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        AvailabilityZoneChangeProtection = {
            type = "boolean",
        },
    },
}

M.UpdateFirewallAnalysisSettingsInput = {
    type = "structure",
    members = {
        EnabledAnalysisTypes = {
            type = "list",
            member_type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.UpdateFirewallAnalysisSettingsOutput = {
    type = "structure",
    members = {
        EnabledAnalysisTypes = {
            type = "list",
            member_type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.UpdateFirewallDeleteProtectionInput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        DeleteProtection = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateFirewallDeleteProtectionOutput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        DeleteProtection = {
            type = "boolean",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.UpdateFirewallDescriptionInput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateFirewallDescriptionOutput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.UpdateFirewallEncryptionConfigurationInput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateFirewallEncryptionConfigurationOutput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        UpdateToken = {
            type = "string",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateFirewallPolicyInput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallPolicyArn = {
            type = "string",
        },
        FirewallPolicyName = {
            type = "string",
        },
        FirewallPolicy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DryRun = {
            type = "boolean",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateFirewallPolicyOutput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallPolicyResponse = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateFirewallPolicyChangeProtectionInput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        FirewallPolicyChangeProtection = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateFirewallPolicyChangeProtectionOutput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        FirewallPolicyChangeProtection = {
            type = "boolean",
        },
    },
}

M.UpdateLoggingConfigurationInput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        LoggingConfiguration = {
            type = "structure",
        },
        EnableMonitoringDashboard = {
            type = "boolean",
        },
    },
}

M.UpdateLoggingConfigurationOutput = {
    type = "structure",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        LoggingConfiguration = {
            type = "structure",
        },
        EnableMonitoringDashboard = {
            type = "boolean",
        },
    },
}

M.UpdateProxyInput = {
    type = "structure",
    members = {
        NatGatewayId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProxyName = {
            type = "string",
        },
        ProxyArn = {
            type = "string",
        },
        ListenerPropertiesToAdd = {
            type = "list",
            member_type = "structure",
        },
        ListenerPropertiesToRemove = {
            type = "list",
            member_type = "structure",
        },
        TlsInterceptProperties = {
            type = "structure",
        },
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProxyOutput = {
    type = "structure",
    members = {
        Proxy = {
            type = "structure",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.UpdateProxyConfigurationInput = {
    type = "structure",
    members = {
        ProxyConfigurationName = {
            type = "string",
        },
        ProxyConfigurationArn = {
            type = "string",
        },
        DefaultRulePhaseActions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProxyConfigurationOutput = {
    type = "structure",
    members = {
        ProxyConfiguration = {
            type = "structure",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.UpdateProxyRuleInput = {
    type = "structure",
    members = {
        ProxyRuleGroupName = {
            type = "string",
        },
        ProxyRuleGroupArn = {
            type = "string",
        },
        ProxyRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Action = {
            type = "string",
        },
        AddConditions = {
            type = "list",
            member_type = "structure",
        },
        RemoveConditions = {
            type = "list",
            member_type = "structure",
        },
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProxyRuleOutput = {
    type = "structure",
    members = {
        ProxyRule = {
            type = "structure",
        },
        RemovedConditions = {
            type = "list",
            member_type = "structure",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.ProxyRuleGroupPriority = {
    type = "structure",
    members = {
        ProxyRuleGroupName = {
            type = "string",
        },
        NewPosition = {
            type = "number",
        },
    },
}

M.UpdateProxyRuleGroupPrioritiesInput = {
    type = "structure",
    members = {
        ProxyConfigurationName = {
            type = "string",
        },
        ProxyConfigurationArn = {
            type = "string",
        },
        RuleGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProxyRuleGroupPriorityResult = {
    type = "structure",
    members = {
        ProxyRuleGroupName = {
            type = "string",
        },
        Priority = {
            type = "number",
        },
    },
}

M.UpdateProxyRuleGroupPrioritiesOutput = {
    type = "structure",
    members = {
        ProxyRuleGroups = {
            type = "list",
            member_type = "structure",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.RuleGroupRequestPhase = {
    PRE_DNS = "PRE_DNS",
    PRE_REQ = "PRE_REQ",
    POST_RES = "POST_RES",
}

M.ProxyRulePriority = {
    type = "structure",
    members = {
        ProxyRuleName = {
            type = "string",
        },
        NewPosition = {
            type = "number",
        },
    },
}

M.UpdateProxyRulePrioritiesInput = {
    type = "structure",
    members = {
        ProxyRuleGroupName = {
            type = "string",
        },
        ProxyRuleGroupArn = {
            type = "string",
        },
        RuleGroupRequestPhase = {
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
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProxyRulePrioritiesOutput = {
    type = "structure",
    members = {
        ProxyRuleGroupName = {
            type = "string",
        },
        ProxyRuleGroupArn = {
            type = "string",
        },
        RuleGroupRequestPhase = {
            type = "string",
        },
        Rules = {
            type = "list",
            member_type = "structure",
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.UpdateRuleGroupInput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleGroupArn = {
            type = "string",
        },
        RuleGroupName = {
            type = "string",
        },
        RuleGroup = {
            type = "structure",
        },
        Rules = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DryRun = {
            type = "boolean",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
        SourceMetadata = {
            type = "structure",
        },
        AnalyzeRuleGroup = {
            type = "boolean",
        },
        SummaryConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateRuleGroupOutput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleGroupResponse = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSubnetChangeProtectionInput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        SubnetChangeProtection = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSubnetChangeProtectionOutput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
        },
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        SubnetChangeProtection = {
            type = "boolean",
        },
    },
}

M.UpdateTLSInspectionConfigurationInput = {
    type = "structure",
    members = {
        TLSInspectionConfigurationArn = {
            type = "string",
        },
        TLSInspectionConfigurationName = {
            type = "string",
        },
        TLSInspectionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        EncryptionConfiguration = {
            type = "structure",
        },
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTLSInspectionConfigurationOutput = {
    type = "structure",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TLSInspectionConfigurationResponse = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

return M
