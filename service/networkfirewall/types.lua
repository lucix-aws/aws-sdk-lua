local M = {}

M.AcceptNetworkFirewallTransitGatewayAttachmentInput = {
    type = "structure",
    id = "AcceptNetworkFirewallTransitGatewayAttachmentInput",
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
    id = "AcceptNetworkFirewallTransitGatewayAttachmentOutput",
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
    id = "InternalServerError",
    error = "server",
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

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Dimension = {
    type = "structure",
    id = "Dimension",
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
    id = "PublishMetricAction",
    members = {
        Dimensions = {
            type = "list",
            member = M.Dimension,
            traits = {
                required = true,
            },
        },
    },
}

M.ActionDefinition = {
    type = "structure",
    id = "ActionDefinition",
    members = {
        PublishMetricAction = M.PublishMetricAction,
    },
}

M.Address = {
    type = "structure",
    id = "Address",
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
    id = "AnalysisReport",
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
    id = "Hits",
    members = {
        Count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.UniqueSources = {
    type = "structure",
    id = "UniqueSources",
    members = {
        Count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.AnalysisTypeReportResult = {
    type = "structure",
    id = "AnalysisTypeReportResult",
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
        Hits = M.Hits,
        UniqueSources = M.UniqueSources,
    },
}

M.IdentifiedType = {
    STATELESS_RULE_FORWARDING_ASYMMETRICALLY = "STATELESS_RULE_FORWARDING_ASYMMETRICALLY",
    STATELESS_RULE_CONTAINS_TCP_FLAGS = "STATELESS_RULE_CONTAINS_TCP_FLAGS",
}

M.AnalysisResult = {
    type = "structure",
    id = "AnalysisResult",
    members = {
        IdentifiedRuleIds = {
            type = "list",
            member = { type = "string" },
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
    id = "AvailabilityZoneMapping",
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
    id = "AssociateAvailabilityZonesInput",
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
            member = M.AvailabilityZoneMapping,
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateAvailabilityZonesOutput = {
    type = "structure",
    id = "AssociateAvailabilityZonesOutput",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        AvailabilityZoneMappings = {
            type = "list",
            member = M.AvailabilityZoneMapping,
        },
        UpdateToken = {
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

M.InvalidOperationException = {
    type = "structure",
    id = "InvalidOperationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTokenException = {
    type = "structure",
    id = "InvalidTokenException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssociateFirewallPolicyInput = {
    type = "structure",
    id = "AssociateFirewallPolicyInput",
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
    id = "AssociateFirewallPolicyOutput",
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
    id = "SubnetMapping",
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
    id = "AssociateSubnetsInput",
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
            member = M.SubnetMapping,
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateSubnetsOutput = {
    type = "structure",
    id = "AssociateSubnetsOutput",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        SubnetMappings = {
            type = "list",
            member = M.SubnetMapping,
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
    id = "Attachment",
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
    id = "AZSyncState",
    members = {
        Attachment = M.Attachment,
    },
}

M.ProxyRuleGroupAttachment = {
    type = "structure",
    id = "ProxyRuleGroupAttachment",
    members = {
        ProxyRuleGroupName = {
            type = "string",
        },
        InsertPosition = {
            type = "integer",
        },
    },
}

M.AttachRuleGroupsToProxyConfigurationInput = {
    type = "structure",
    id = "AttachRuleGroupsToProxyConfigurationInput",
    members = {
        ProxyConfigurationName = {
            type = "string",
        },
        ProxyConfigurationArn = {
            type = "string",
        },
        RuleGroups = {
            type = "list",
            member = M.ProxyRuleGroupAttachment,
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
    id = "ProxyConfigDefaultRulePhaseActionsRequest",
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
    id = "ProxyConfigRuleGroup",
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
            type = "integer",
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
            traits = {
                required = true,
            },
        },
    },
}

M.ProxyConfiguration = {
    type = "structure",
    id = "ProxyConfiguration",
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
            member = M.ProxyConfigRuleGroup,
        },
        DefaultRulePhaseActions = M.ProxyConfigDefaultRulePhaseActionsRequest,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.AttachRuleGroupsToProxyConfigurationOutput = {
    type = "structure",
    id = "AttachRuleGroupsToProxyConfigurationOutput",
    members = {
        ProxyConfiguration = M.ProxyConfiguration,
        UpdateToken = {
            type = "string",
        },
    },
}

M.AvailabilityZoneMetadata = {
    type = "structure",
    id = "AvailabilityZoneMetadata",
    members = {
        IPAddressType = {
            type = "string",
        },
    },
}

M.IPSetMetadata = {
    type = "structure",
    id = "IPSetMetadata",
    members = {
        ResolvedCIDRCount = {
            type = "integer",
        },
    },
}

M.CIDRSummary = {
    type = "structure",
    id = "CIDRSummary",
    members = {
        AvailableCIDRCount = {
            type = "integer",
        },
        UtilizedCIDRCount = {
            type = "integer",
        },
        IPSetReferences = {
            type = "map",
            key = { type = "string" },
            value = M.IPSetMetadata,
        },
    },
}

M.CapacityUsageSummary = {
    type = "structure",
    id = "CapacityUsageSummary",
    members = {
        CIDRs = M.CIDRSummary,
    },
}

M.TlsCertificateData = {
    type = "structure",
    id = "TlsCertificateData",
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
    id = "CheckCertificateRevocationStatusActions",
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
    id = "EncryptionConfiguration",
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
    id = "CreateFirewallInput",
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
            member = M.SubnetMapping,
        },
        DeleteProtection = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SubnetChangeProtection = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        FirewallPolicyChangeProtection = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
        EnabledAnalysisTypes = {
            type = "list",
            member = { type = "string" },
        },
        TransitGatewayId = {
            type = "string",
        },
        AvailabilityZoneMappings = {
            type = "list",
            member = M.AvailabilityZoneMapping,
        },
        AvailabilityZoneChangeProtection = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.Firewall = {
    type = "structure",
    id = "Firewall",
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
            member = M.SubnetMapping,
            traits = {
                required = true,
            },
        },
        DeleteProtection = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SubnetChangeProtection = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        FirewallPolicyChangeProtection = {
            type = "boolean",
            traits = {
                default = false,
            },
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
            member = M.Tag,
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
        NumberOfAssociations = {
            type = "integer",
        },
        EnabledAnalysisTypes = {
            type = "list",
            member = { type = "string" },
        },
        TransitGatewayId = {
            type = "string",
        },
        TransitGatewayOwnerAccountId = {
            type = "string",
        },
        AvailabilityZoneMappings = {
            type = "list",
            member = M.AvailabilityZoneMapping,
        },
        AvailabilityZoneChangeProtection = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "PerObjectStatus",
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
    id = "SyncState",
    members = {
        Attachment = M.Attachment,
        Config = {
            type = "map",
            key = { type = "string" },
            value = M.PerObjectStatus,
        },
    },
}

M.TransitGatewayAttachmentSyncState = {
    type = "structure",
    id = "TransitGatewayAttachmentSyncState",
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
    id = "FirewallStatus",
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
            key = { type = "string" },
            value = M.SyncState,
        },
        CapacityUsageSummary = M.CapacityUsageSummary,
        TransitGatewayAttachmentSyncState = M.TransitGatewayAttachmentSyncState,
    },
}

M.CreateFirewallOutput = {
    type = "structure",
    id = "CreateFirewallOutput",
    members = {
        Firewall = M.Firewall,
        FirewallStatus = M.FirewallStatus,
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IPSet = {
    type = "structure",
    id = "IPSet",
    members = {
        Definition = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.PolicyVariables = {
    type = "structure",
    id = "PolicyVariables",
    members = {
        RuleVariables = {
            type = "map",
            key = { type = "string" },
            value = M.IPSet,
        },
    },
}

M.FlowTimeouts = {
    type = "structure",
    id = "FlowTimeouts",
    members = {
        TcpIdleTimeoutSeconds = {
            type = "integer",
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
    id = "StatefulEngineOptions",
    members = {
        RuleOrder = {
            type = "string",
        },
        StreamExceptionPolicy = {
            type = "string",
        },
        FlowTimeouts = M.FlowTimeouts,
    },
}

M.OverrideAction = {
    DROP_TO_ALERT = "DROP_TO_ALERT",
}

M.StatefulRuleGroupOverride = {
    type = "structure",
    id = "StatefulRuleGroupOverride",
    members = {
        Action = {
            type = "string",
        },
    },
}

M.StatefulRuleGroupReference = {
    type = "structure",
    id = "StatefulRuleGroupReference",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Priority = {
            type = "integer",
        },
        Override = M.StatefulRuleGroupOverride,
        DeepThreatInspection = {
            type = "boolean",
        },
    },
}

M.CustomAction = {
    type = "structure",
    id = "CustomAction",
    members = {
        ActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionDefinition }),
    },
}

M.StatelessRuleGroupReference = {
    type = "structure",
    id = "StatelessRuleGroupReference",
    members = {
        ResourceArn = {
            type = "string",
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
    },
}

M.FirewallPolicy = {
    type = "structure",
    id = "FirewallPolicy",
    members = {
        StatelessRuleGroupReferences = {
            type = "list",
            member = M.StatelessRuleGroupReference,
        },
        StatelessDefaultActions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        StatelessFragmentDefaultActions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        StatelessCustomActions = {
            type = "list",
            member = M.CustomAction,
        },
        StatefulRuleGroupReferences = {
            type = "list",
            member = M.StatefulRuleGroupReference,
        },
        StatefulDefaultActions = {
            type = "list",
            member = { type = "string" },
        },
        StatefulEngineOptions = M.StatefulEngineOptions,
        TLSInspectionConfigurationArn = {
            type = "string",
        },
        PolicyVariables = M.PolicyVariables,
        EnableTLSSessionHolding = {
            type = "boolean",
        },
    },
}

M.CreateFirewallPolicyInput = {
    type = "structure",
    id = "CreateFirewallPolicyInput",
    members = {
        FirewallPolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FirewallPolicy }),
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.ResourceStatus = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    ERROR = "ERROR",
}

M.FirewallPolicyResponse = {
    type = "structure",
    id = "FirewallPolicyResponse",
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
            member = M.Tag,
        },
        ConsumedStatelessRuleCapacity = {
            type = "integer",
        },
        ConsumedStatefulRuleCapacity = {
            type = "integer",
        },
        ConsumedStatefulDomainCapacity = {
            type = "integer",
        },
        NumberOfAssociations = {
            type = "integer",
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.CreateFirewallPolicyOutput = {
    type = "structure",
    id = "CreateFirewallPolicyOutput",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallPolicyResponse = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FirewallPolicyResponse }),
    },
}

M.ListenerPropertyType = {
    HTTP = "HTTP",
    HTTPS = "HTTPS",
}

M.ListenerPropertyRequest = {
    type = "structure",
    id = "ListenerPropertyRequest",
    members = {
        Port = {
            type = "integer",
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
    id = "TlsInterceptPropertiesRequest",
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
    id = "CreateProxyInput",
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
            member = M.ListenerPropertyRequest,
        },
        TlsInterceptProperties = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TlsInterceptPropertiesRequest }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListenerProperty = {
    type = "structure",
    id = "ListenerProperty",
    members = {
        Port = {
            type = "integer",
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
    id = "TlsInterceptProperties",
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
    id = "Proxy",
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
            member = M.ListenerProperty,
        },
        TlsInterceptProperties = M.TlsInterceptProperties,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateProxyOutput = {
    type = "structure",
    id = "CreateProxyOutput",
    members = {
        Proxy = M.Proxy,
        UpdateToken = {
            type = "string",
        },
    },
}

M.UnsupportedOperationException = {
    type = "structure",
    id = "UnsupportedOperationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateProxyConfigurationInput = {
    type = "structure",
    id = "CreateProxyConfigurationInput",
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
            member = { type = "string" },
        },
        RuleGroupArns = {
            type = "list",
            member = { type = "string" },
        },
        DefaultRulePhaseActions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProxyConfigDefaultRulePhaseActionsRequest }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateProxyConfigurationOutput = {
    type = "structure",
    id = "CreateProxyConfigurationOutput",
    members = {
        ProxyConfiguration = M.ProxyConfiguration,
        UpdateToken = {
            type = "string",
        },
    },
}

M.ProxyRuleCondition = {
    type = "structure",
    id = "ProxyRuleCondition",
    members = {
        ConditionOperator = {
            type = "string",
        },
        ConditionKey = {
            type = "string",
        },
        ConditionValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateProxyRule = {
    type = "structure",
    id = "CreateProxyRule",
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
            member = M.ProxyRuleCondition,
        },
        InsertPosition = {
            type = "integer",
        },
    },
}

M.ProxyRule = {
    type = "structure",
    id = "ProxyRule",
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
            member = M.ProxyRuleCondition,
        },
    },
}

M.ProxyRulesByRequestPhase = {
    type = "structure",
    id = "ProxyRulesByRequestPhase",
    members = {
        PreDNS = {
            type = "list",
            member = M.ProxyRule,
        },
        PreREQUEST = {
            type = "list",
            member = M.ProxyRule,
        },
        PostRESPONSE = {
            type = "list",
            member = M.ProxyRule,
        },
    },
}

M.CreateProxyRuleGroupInput = {
    type = "structure",
    id = "CreateProxyRuleGroupInput",
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
        Rules = M.ProxyRulesByRequestPhase,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ProxyRuleGroup = {
    type = "structure",
    id = "ProxyRuleGroup",
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
        Rules = M.ProxyRulesByRequestPhase,
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateProxyRuleGroupOutput = {
    type = "structure",
    id = "CreateProxyRuleGroupOutput",
    members = {
        ProxyRuleGroup = M.ProxyRuleGroup,
        UpdateToken = {
            type = "string",
        },
    },
}

M.CreateProxyRulesByRequestPhase = {
    type = "structure",
    id = "CreateProxyRulesByRequestPhase",
    members = {
        PreDNS = {
            type = "list",
            member = M.CreateProxyRule,
        },
        PreREQUEST = {
            type = "list",
            member = M.CreateProxyRule,
        },
        PostRESPONSE = {
            type = "list",
            member = M.CreateProxyRule,
        },
    },
}

M.CreateProxyRulesInput = {
    type = "structure",
    id = "CreateProxyRulesInput",
    members = {
        ProxyRuleGroupArn = {
            type = "string",
        },
        ProxyRuleGroupName = {
            type = "string",
        },
        Rules = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CreateProxyRulesByRequestPhase }),
    },
}

M.CreateProxyRulesOutput = {
    type = "structure",
    id = "CreateProxyRulesOutput",
    members = {
        ProxyRuleGroup = M.ProxyRuleGroup,
        UpdateToken = {
            type = "string",
        },
    },
}

M.IPSetReference = {
    type = "structure",
    id = "IPSetReference",
    members = {
        ReferenceArn = {
            type = "string",
        },
    },
}

M.ReferenceSets = {
    type = "structure",
    id = "ReferenceSets",
    members = {
        IPSetReferences = {
            type = "map",
            key = { type = "string" },
            value = M.IPSetReference,
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
    id = "RulesSourceList",
    members = {
        Targets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        TargetTypes = {
            type = "list",
            member = { type = "string" },
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
    id = "Header",
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
    id = "RuleOption",
    members = {
        Keyword = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Settings = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StatefulRule = {
    type = "structure",
    id = "StatefulRule",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Header = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Header }),
        RuleOptions = {
            type = "list",
            member = M.RuleOption,
            traits = {
                required = true,
            },
        },
    },
}

M.PortRange = {
    type = "structure",
    id = "PortRange",
    members = {
        FromPort = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        ToPort = {
            type = "integer",
            traits = {
                default = 0,
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
    id = "TCPFlagField",
    members = {
        Flags = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Masks = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MatchAttributes = {
    type = "structure",
    id = "MatchAttributes",
    members = {
        Sources = {
            type = "list",
            member = M.Address,
        },
        Destinations = {
            type = "list",
            member = M.Address,
        },
        SourcePorts = {
            type = "list",
            member = M.PortRange,
        },
        DestinationPorts = {
            type = "list",
            member = M.PortRange,
        },
        Protocols = {
            type = "list",
            member = { type = "integer" },
        },
        TCPFlags = {
            type = "list",
            member = M.TCPFlagField,
        },
    },
}

M.RuleDefinition = {
    type = "structure",
    id = "RuleDefinition",
    members = {
        MatchAttributes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MatchAttributes }),
        Actions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.StatelessRule = {
    type = "structure",
    id = "StatelessRule",
    members = {
        RuleDefinition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleDefinition }),
        Priority = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.StatelessRulesAndCustomActions = {
    type = "structure",
    id = "StatelessRulesAndCustomActions",
    members = {
        StatelessRules = {
            type = "list",
            member = M.StatelessRule,
            traits = {
                required = true,
            },
        },
        CustomActions = {
            type = "list",
            member = M.CustomAction,
        },
    },
}

M.RulesSource = {
    type = "structure",
    id = "RulesSource",
    members = {
        RulesString = {
            type = "string",
        },
        RulesSourceList = M.RulesSourceList,
        StatefulRules = {
            type = "list",
            member = M.StatefulRule,
        },
        StatelessRulesAndCustomActions = M.StatelessRulesAndCustomActions,
    },
}

M.PortSet = {
    type = "structure",
    id = "PortSet",
    members = {
        Definition = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RuleVariables = {
    type = "structure",
    id = "RuleVariables",
    members = {
        IPSets = {
            type = "map",
            key = { type = "string" },
            value = M.IPSet,
        },
        PortSets = {
            type = "map",
            key = { type = "string" },
            value = M.PortSet,
        },
    },
}

M.StatefulRuleOptions = {
    type = "structure",
    id = "StatefulRuleOptions",
    members = {
        RuleOrder = {
            type = "string",
        },
    },
}

M.RuleGroup = {
    type = "structure",
    id = "RuleGroup",
    members = {
        RuleVariables = M.RuleVariables,
        ReferenceSets = M.ReferenceSets,
        RulesSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RulesSource }),
        StatefulRuleOptions = M.StatefulRuleOptions,
    },
}

M.SourceMetadata = {
    type = "structure",
    id = "SourceMetadata",
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
    id = "SummaryConfiguration",
    members = {
        RuleOptions = {
            type = "list",
            member = { type = "string" },
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
    id = "CreateRuleGroupInput",
    members = {
        RuleGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleGroup = M.RuleGroup,
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
        SourceMetadata = M.SourceMetadata,
        AnalyzeRuleGroup = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SummaryConfiguration = M.SummaryConfiguration,
    },
}

M.RuleGroupResponse = {
    type = "structure",
    id = "RuleGroupResponse",
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
            type = "integer",
        },
        RuleGroupStatus = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ConsumedCapacity = {
            type = "integer",
        },
        NumberOfAssociations = {
            type = "integer",
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
        SourceMetadata = M.SourceMetadata,
        SnsTopic = {
            type = "string",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        AnalysisResults = {
            type = "list",
            member = M.AnalysisResult,
        },
        SummaryConfiguration = M.SummaryConfiguration,
    },
}

M.CreateRuleGroupOutput = {
    type = "structure",
    id = "CreateRuleGroupOutput",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleGroupResponse = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleGroupResponse }),
    },
}

M.ServerCertificateScope = {
    type = "structure",
    id = "ServerCertificateScope",
    members = {
        Sources = {
            type = "list",
            member = M.Address,
        },
        Destinations = {
            type = "list",
            member = M.Address,
        },
        SourcePorts = {
            type = "list",
            member = M.PortRange,
        },
        DestinationPorts = {
            type = "list",
            member = M.PortRange,
        },
        Protocols = {
            type = "list",
            member = { type = "integer" },
        },
    },
}

M.ServerCertificate = {
    type = "structure",
    id = "ServerCertificate",
    members = {
        ResourceArn = {
            type = "string",
        },
    },
}

M.ServerCertificateConfiguration = {
    type = "structure",
    id = "ServerCertificateConfiguration",
    members = {
        ServerCertificates = {
            type = "list",
            member = M.ServerCertificate,
        },
        Scopes = {
            type = "list",
            member = M.ServerCertificateScope,
        },
        CertificateAuthorityArn = {
            type = "string",
        },
        CheckCertificateRevocationStatus = M.CheckCertificateRevocationStatusActions,
    },
}

M.TLSInspectionConfiguration = {
    type = "structure",
    id = "TLSInspectionConfiguration",
    members = {
        ServerCertificateConfigurations = {
            type = "list",
            member = M.ServerCertificateConfiguration,
        },
    },
}

M.CreateTLSInspectionConfigurationInput = {
    type = "structure",
    id = "CreateTLSInspectionConfigurationInput",
    members = {
        TLSInspectionConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TLSInspectionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TLSInspectionConfiguration }),
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.TLSInspectionConfigurationResponse = {
    type = "structure",
    id = "TLSInspectionConfigurationResponse",
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
            member = M.Tag,
        },
        LastModifiedTime = {
            type = "timestamp",
        },
        NumberOfAssociations = {
            type = "integer",
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
        Certificates = {
            type = "list",
            member = M.TlsCertificateData,
        },
        CertificateAuthority = M.TlsCertificateData,
    },
}

M.CreateTLSInspectionConfigurationOutput = {
    type = "structure",
    id = "CreateTLSInspectionConfigurationOutput",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TLSInspectionConfigurationResponse = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TLSInspectionConfigurationResponse }),
    },
}

M.CreateVpcEndpointAssociationInput = {
    type = "structure",
    id = "CreateVpcEndpointAssociationInput",
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
        SubnetMapping = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubnetMapping }),
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.VpcEndpointAssociation = {
    type = "structure",
    id = "VpcEndpointAssociation",
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
        SubnetMapping = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubnetMapping }),
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.VpcEndpointAssociationStatus = {
    type = "structure",
    id = "VpcEndpointAssociationStatus",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssociationSyncState = {
            type = "map",
            key = { type = "string" },
            value = M.AZSyncState,
        },
    },
}

M.CreateVpcEndpointAssociationOutput = {
    type = "structure",
    id = "CreateVpcEndpointAssociationOutput",
    members = {
        VpcEndpointAssociation = M.VpcEndpointAssociation,
        VpcEndpointAssociationStatus = M.VpcEndpointAssociationStatus,
    },
}

M.DeleteFirewallInput = {
    type = "structure",
    id = "DeleteFirewallInput",
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
    id = "DeleteFirewallOutput",
    members = {
        Firewall = M.Firewall,
        FirewallStatus = M.FirewallStatus,
    },
}

M.DeleteFirewallPolicyInput = {
    type = "structure",
    id = "DeleteFirewallPolicyInput",
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
    id = "DeleteFirewallPolicyOutput",
    members = {
        FirewallPolicyResponse = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FirewallPolicyResponse }),
    },
}

M.DeleteNetworkFirewallTransitGatewayAttachmentInput = {
    type = "structure",
    id = "DeleteNetworkFirewallTransitGatewayAttachmentInput",
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
    id = "DeleteNetworkFirewallTransitGatewayAttachmentOutput",
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
    id = "DeleteProxyInput",
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
    id = "DeleteProxyOutput",
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
    id = "DeleteProxyConfigurationInput",
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
    id = "DeleteProxyConfigurationOutput",
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
    id = "DeleteProxyRuleGroupInput",
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
    id = "DeleteProxyRuleGroupOutput",
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
    id = "DeleteProxyRulesInput",
    members = {
        ProxyRuleGroupArn = {
            type = "string",
        },
        ProxyRuleGroupName = {
            type = "string",
        },
        Rules = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProxyRulesOutput = {
    type = "structure",
    id = "DeleteProxyRulesOutput",
    members = {
        ProxyRuleGroup = M.ProxyRuleGroup,
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

M.InvalidResourcePolicyException = {
    type = "structure",
    id = "InvalidResourcePolicyException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteRuleGroupInput = {
    type = "structure",
    id = "DeleteRuleGroupInput",
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
    id = "DeleteRuleGroupOutput",
    members = {
        RuleGroupResponse = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleGroupResponse }),
    },
}

M.DeleteTLSInspectionConfigurationInput = {
    type = "structure",
    id = "DeleteTLSInspectionConfigurationInput",
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
    id = "DeleteTLSInspectionConfigurationOutput",
    members = {
        TLSInspectionConfigurationResponse = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TLSInspectionConfigurationResponse }),
    },
}

M.DeleteVpcEndpointAssociationInput = {
    type = "structure",
    id = "DeleteVpcEndpointAssociationInput",
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
    id = "DeleteVpcEndpointAssociationOutput",
    members = {
        VpcEndpointAssociation = M.VpcEndpointAssociation,
        VpcEndpointAssociationStatus = M.VpcEndpointAssociationStatus,
    },
}

M.DescribeFirewallInput = {
    type = "structure",
    id = "DescribeFirewallInput",
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
    id = "DescribeFirewallOutput",
    members = {
        UpdateToken = {
            type = "string",
        },
        Firewall = M.Firewall,
        FirewallStatus = M.FirewallStatus,
    },
}

M.DescribeFirewallMetadataInput = {
    type = "structure",
    id = "DescribeFirewallMetadataInput",
    members = {
        FirewallArn = {
            type = "string",
        },
    },
}

M.DescribeFirewallMetadataOutput = {
    type = "structure",
    id = "DescribeFirewallMetadataOutput",
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
            key = { type = "string" },
            value = M.AvailabilityZoneMetadata,
        },
        TransitGatewayAttachmentId = {
            type = "string",
        },
    },
}

M.DescribeFirewallPolicyInput = {
    type = "structure",
    id = "DescribeFirewallPolicyInput",
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
    id = "DescribeFirewallPolicyOutput",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallPolicyResponse = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FirewallPolicyResponse }),
        FirewallPolicy = M.FirewallPolicy,
    },
}

M.DescribeFlowOperationInput = {
    type = "structure",
    id = "DescribeFlowOperationInput",
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
    id = "FlowFilter",
    members = {
        SourceAddress = M.Address,
        DestinationAddress = M.Address,
        SourcePort = {
            type = "string",
        },
        DestinationPort = {
            type = "string",
        },
        Protocols = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.FlowOperation = {
    type = "structure",
    id = "FlowOperation",
    members = {
        MinimumFlowAgeInSeconds = {
            type = "integer",
        },
        FlowFilters = {
            type = "list",
            member = M.FlowFilter,
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
    id = "DescribeFlowOperationOutput",
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
        FlowOperation = M.FlowOperation,
    },
}

M.DescribeLoggingConfigurationInput = {
    type = "structure",
    id = "DescribeLoggingConfigurationInput",
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
    id = "LogDestinationConfig",
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.LoggingConfiguration = {
    type = "structure",
    id = "LoggingConfiguration",
    members = {
        LogDestinationConfigs = {
            type = "list",
            member = M.LogDestinationConfig,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeLoggingConfigurationOutput = {
    type = "structure",
    id = "DescribeLoggingConfigurationOutput",
    members = {
        FirewallArn = {
            type = "string",
        },
        LoggingConfiguration = M.LoggingConfiguration,
        EnableMonitoringDashboard = {
            type = "boolean",
        },
    },
}

M.DescribeProxyInput = {
    type = "structure",
    id = "DescribeProxyInput",
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
    id = "DescribeProxyResource",
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
            member = M.ListenerProperty,
        },
        TlsInterceptProperties = M.TlsInterceptProperties,
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
            member = M.Tag,
        },
    },
}

M.DescribeProxyOutput = {
    type = "structure",
    id = "DescribeProxyOutput",
    members = {
        Proxy = M.DescribeProxyResource,
        UpdateToken = {
            type = "string",
        },
    },
}

M.DescribeProxyConfigurationInput = {
    type = "structure",
    id = "DescribeProxyConfigurationInput",
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
    id = "DescribeProxyConfigurationOutput",
    members = {
        ProxyConfiguration = M.ProxyConfiguration,
        UpdateToken = {
            type = "string",
        },
    },
}

M.DescribeProxyRuleInput = {
    type = "structure",
    id = "DescribeProxyRuleInput",
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
    id = "DescribeProxyRuleOutput",
    members = {
        ProxyRule = M.ProxyRule,
        UpdateToken = {
            type = "string",
        },
    },
}

M.DescribeProxyRuleGroupInput = {
    type = "structure",
    id = "DescribeProxyRuleGroupInput",
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
    id = "DescribeProxyRuleGroupOutput",
    members = {
        ProxyRuleGroup = M.ProxyRuleGroup,
        UpdateToken = {
            type = "string",
        },
    },
}

M.DescribeResourcePolicyInput = {
    type = "structure",
    id = "DescribeResourcePolicyInput",
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
    id = "DescribeResourcePolicyOutput",
    members = {
        Policy = {
            type = "string",
        },
    },
}

M.DescribeRuleGroupInput = {
    type = "structure",
    id = "DescribeRuleGroupInput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.DescribeRuleGroupOutput = {
    type = "structure",
    id = "DescribeRuleGroupOutput",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleGroup = M.RuleGroup,
        RuleGroupResponse = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleGroupResponse }),
    },
}

M.DescribeRuleGroupMetadataInput = {
    type = "structure",
    id = "DescribeRuleGroupMetadataInput",
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
    id = "DescribeRuleGroupMetadataOutput",
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
            type = "integer",
        },
        StatefulRuleOptions = M.StatefulRuleOptions,
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
    id = "DescribeRuleGroupSummaryInput",
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
    id = "RuleSummary",
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
    id = "Summary",
    members = {
        RuleSummaries = {
            type = "list",
            member = M.RuleSummary,
        },
    },
}

M.DescribeRuleGroupSummaryOutput = {
    type = "structure",
    id = "DescribeRuleGroupSummaryOutput",
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
        Summary = M.Summary,
    },
}

M.DescribeTLSInspectionConfigurationInput = {
    type = "structure",
    id = "DescribeTLSInspectionConfigurationInput",
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
    id = "DescribeTLSInspectionConfigurationOutput",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TLSInspectionConfiguration = M.TLSInspectionConfiguration,
        TLSInspectionConfigurationResponse = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TLSInspectionConfigurationResponse }),
    },
}

M.DescribeVpcEndpointAssociationInput = {
    type = "structure",
    id = "DescribeVpcEndpointAssociationInput",
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
    id = "DescribeVpcEndpointAssociationOutput",
    members = {
        VpcEndpointAssociation = M.VpcEndpointAssociation,
        VpcEndpointAssociationStatus = M.VpcEndpointAssociationStatus,
    },
}

M.DetachRuleGroupsFromProxyConfigurationInput = {
    type = "structure",
    id = "DetachRuleGroupsFromProxyConfigurationInput",
    members = {
        ProxyConfigurationName = {
            type = "string",
        },
        ProxyConfigurationArn = {
            type = "string",
        },
        RuleGroupNames = {
            type = "list",
            member = { type = "string" },
        },
        RuleGroupArns = {
            type = "list",
            member = { type = "string" },
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
    id = "DetachRuleGroupsFromProxyConfigurationOutput",
    members = {
        ProxyConfiguration = M.ProxyConfiguration,
        UpdateToken = {
            type = "string",
        },
    },
}

M.DisassociateAvailabilityZonesInput = {
    type = "structure",
    id = "DisassociateAvailabilityZonesInput",
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
            member = M.AvailabilityZoneMapping,
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateAvailabilityZonesOutput = {
    type = "structure",
    id = "DisassociateAvailabilityZonesOutput",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        AvailabilityZoneMappings = {
            type = "list",
            member = M.AvailabilityZoneMapping,
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.DisassociateSubnetsInput = {
    type = "structure",
    id = "DisassociateSubnetsInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateSubnetsOutput = {
    type = "structure",
    id = "DisassociateSubnetsOutput",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        SubnetMappings = {
            type = "list",
            member = M.SubnetMapping,
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.FirewallMetadata = {
    type = "structure",
    id = "FirewallMetadata",
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
    id = "FirewallPolicyMetadata",
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
    id = "Flow",
    members = {
        SourceAddress = M.Address,
        DestinationAddress = M.Address,
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
            type = "integer",
        },
        PacketCount = {
            type = "integer",
        },
        ByteCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.FlowOperationMetadata = {
    type = "structure",
    id = "FlowOperationMetadata",
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
    id = "GetAnalysisReportResultsInput",
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
            type = "integer",
        },
    },
}

M.GetAnalysisReportResultsOutput = {
    type = "structure",
    id = "GetAnalysisReportResultsOutput",
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
            member = M.AnalysisTypeReportResult,
        },
    },
}

M.ListAnalysisReportsInput = {
    type = "structure",
    id = "ListAnalysisReportsInput",
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
            type = "integer",
        },
    },
}

M.ListAnalysisReportsOutput = {
    type = "structure",
    id = "ListAnalysisReportsOutput",
    members = {
        AnalysisReports = {
            type = "list",
            member = M.AnalysisReport,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFirewallPoliciesInput = {
    type = "structure",
    id = "ListFirewallPoliciesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListFirewallPoliciesOutput = {
    type = "structure",
    id = "ListFirewallPoliciesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        FirewallPolicies = {
            type = "list",
            member = M.FirewallPolicyMetadata,
        },
    },
}

M.ListFirewallsInput = {
    type = "structure",
    id = "ListFirewallsInput",
    members = {
        NextToken = {
            type = "string",
        },
        VpcIds = {
            type = "list",
            member = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListFirewallsOutput = {
    type = "structure",
    id = "ListFirewallsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Firewalls = {
            type = "list",
            member = M.FirewallMetadata,
        },
    },
}

M.ListFlowOperationResultsInput = {
    type = "structure",
    id = "ListFlowOperationResultsInput",
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
            type = "integer",
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
    id = "ListFlowOperationResultsOutput",
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
            member = M.Flow,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFlowOperationsInput = {
    type = "structure",
    id = "ListFlowOperationsInput",
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
            type = "integer",
        },
    },
}

M.ListFlowOperationsOutput = {
    type = "structure",
    id = "ListFlowOperationsOutput",
    members = {
        FlowOperations = {
            type = "list",
            member = M.FlowOperationMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProxiesInput = {
    type = "structure",
    id = "ListProxiesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ProxyMetadata = {
    type = "structure",
    id = "ProxyMetadata",
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
    id = "ListProxiesOutput",
    members = {
        Proxies = {
            type = "list",
            member = M.ProxyMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProxyConfigurationsInput = {
    type = "structure",
    id = "ListProxyConfigurationsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ProxyConfigurationMetadata = {
    type = "structure",
    id = "ProxyConfigurationMetadata",
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
    id = "ListProxyConfigurationsOutput",
    members = {
        ProxyConfigurations = {
            type = "list",
            member = M.ProxyConfigurationMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProxyRuleGroupsInput = {
    type = "structure",
    id = "ListProxyRuleGroupsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ProxyRuleGroupMetadata = {
    type = "structure",
    id = "ProxyRuleGroupMetadata",
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
    id = "ListProxyRuleGroupsOutput",
    members = {
        ProxyRuleGroups = {
            type = "list",
            member = M.ProxyRuleGroupMetadata,
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
    id = "ListRuleGroupsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
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
    id = "RuleGroupMetadata",
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
    id = "ListRuleGroupsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        RuleGroups = {
            type = "list",
            member = M.RuleGroupMetadata,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
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
    id = "ListTagsForResourceOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListTLSInspectionConfigurationsInput = {
    type = "structure",
    id = "ListTLSInspectionConfigurationsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.TLSInspectionConfigurationMetadata = {
    type = "structure",
    id = "TLSInspectionConfigurationMetadata",
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
    id = "ListTLSInspectionConfigurationsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        TLSInspectionConfigurations = {
            type = "list",
            member = M.TLSInspectionConfigurationMetadata,
        },
    },
}

M.ListVpcEndpointAssociationsInput = {
    type = "structure",
    id = "ListVpcEndpointAssociationsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        FirewallArn = {
            type = "string",
        },
    },
}

M.VpcEndpointAssociationMetadata = {
    type = "structure",
    id = "VpcEndpointAssociationMetadata",
    members = {
        VpcEndpointAssociationArn = {
            type = "string",
        },
    },
}

M.ListVpcEndpointAssociationsOutput = {
    type = "structure",
    id = "ListVpcEndpointAssociationsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        VpcEndpointAssociations = {
            type = "list",
            member = M.VpcEndpointAssociationMetadata,
        },
    },
}

M.LogDestinationPermissionException = {
    type = "structure",
    id = "LogDestinationPermissionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
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
    id = "PutResourcePolicyOutput",
}

M.RejectNetworkFirewallTransitGatewayAttachmentInput = {
    type = "structure",
    id = "RejectNetworkFirewallTransitGatewayAttachmentInput",
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
    id = "RejectNetworkFirewallTransitGatewayAttachmentOutput",
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
    id = "StartAnalysisReportInput",
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
    id = "StartAnalysisReportOutput",
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
    id = "StartFlowCaptureInput",
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
            type = "integer",
        },
        FlowFilters = {
            type = "list",
            member = M.FlowFilter,
            traits = {
                required = true,
            },
        },
    },
}

M.StartFlowCaptureOutput = {
    type = "structure",
    id = "StartFlowCaptureOutput",
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
    id = "StartFlowFlushInput",
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
            type = "integer",
        },
        FlowFilters = {
            type = "list",
            member = M.FlowFilter,
            traits = {
                required = true,
            },
        },
    },
}

M.StartFlowFlushOutput = {
    type = "structure",
    id = "StartFlowFlushOutput",
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
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
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

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
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

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.ResourceOwnerCheckException = {
    type = "structure",
    id = "ResourceOwnerCheckException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateAvailabilityZoneChangeProtectionInput = {
    type = "structure",
    id = "UpdateAvailabilityZoneChangeProtectionInput",
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
                default = false,
                required = true,
            },
        },
    },
}

M.UpdateAvailabilityZoneChangeProtectionOutput = {
    type = "structure",
    id = "UpdateAvailabilityZoneChangeProtectionOutput",
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
                default = false,
            },
        },
    },
}

M.UpdateFirewallAnalysisSettingsInput = {
    type = "structure",
    id = "UpdateFirewallAnalysisSettingsInput",
    members = {
        EnabledAnalysisTypes = {
            type = "list",
            member = { type = "string" },
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
    id = "UpdateFirewallAnalysisSettingsOutput",
    members = {
        EnabledAnalysisTypes = {
            type = "list",
            member = { type = "string" },
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
    id = "UpdateFirewallDeleteProtectionInput",
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
                default = false,
                required = true,
            },
        },
    },
}

M.UpdateFirewallDeleteProtectionOutput = {
    type = "structure",
    id = "UpdateFirewallDeleteProtectionOutput",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        DeleteProtection = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.UpdateFirewallDescriptionInput = {
    type = "structure",
    id = "UpdateFirewallDescriptionInput",
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
    id = "UpdateFirewallDescriptionOutput",
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
    id = "UpdateFirewallEncryptionConfigurationInput",
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
        EncryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.UpdateFirewallEncryptionConfigurationOutput = {
    type = "structure",
    id = "UpdateFirewallEncryptionConfigurationOutput",
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
        EncryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.UpdateFirewallPolicyInput = {
    type = "structure",
    id = "UpdateFirewallPolicyInput",
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
        FirewallPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FirewallPolicy }),
        Description = {
            type = "string",
        },
        DryRun = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.UpdateFirewallPolicyOutput = {
    type = "structure",
    id = "UpdateFirewallPolicyOutput",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallPolicyResponse = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FirewallPolicyResponse }),
    },
}

M.UpdateFirewallPolicyChangeProtectionInput = {
    type = "structure",
    id = "UpdateFirewallPolicyChangeProtectionInput",
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
                default = false,
                required = true,
            },
        },
    },
}

M.UpdateFirewallPolicyChangeProtectionOutput = {
    type = "structure",
    id = "UpdateFirewallPolicyChangeProtectionOutput",
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
                default = false,
            },
        },
    },
}

M.UpdateLoggingConfigurationInput = {
    type = "structure",
    id = "UpdateLoggingConfigurationInput",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        LoggingConfiguration = M.LoggingConfiguration,
        EnableMonitoringDashboard = {
            type = "boolean",
        },
    },
}

M.UpdateLoggingConfigurationOutput = {
    type = "structure",
    id = "UpdateLoggingConfigurationOutput",
    members = {
        FirewallArn = {
            type = "string",
        },
        FirewallName = {
            type = "string",
        },
        LoggingConfiguration = M.LoggingConfiguration,
        EnableMonitoringDashboard = {
            type = "boolean",
        },
    },
}

M.UpdateProxyInput = {
    type = "structure",
    id = "UpdateProxyInput",
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
            member = M.ListenerPropertyRequest,
        },
        ListenerPropertiesToRemove = {
            type = "list",
            member = M.ListenerPropertyRequest,
        },
        TlsInterceptProperties = M.TlsInterceptPropertiesRequest,
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
    id = "UpdateProxyOutput",
    members = {
        Proxy = M.Proxy,
        UpdateToken = {
            type = "string",
        },
    },
}

M.UpdateProxyConfigurationInput = {
    type = "structure",
    id = "UpdateProxyConfigurationInput",
    members = {
        ProxyConfigurationName = {
            type = "string",
        },
        ProxyConfigurationArn = {
            type = "string",
        },
        DefaultRulePhaseActions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProxyConfigDefaultRulePhaseActionsRequest }),
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
    id = "UpdateProxyConfigurationOutput",
    members = {
        ProxyConfiguration = M.ProxyConfiguration,
        UpdateToken = {
            type = "string",
        },
    },
}

M.UpdateProxyRuleInput = {
    type = "structure",
    id = "UpdateProxyRuleInput",
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
            member = M.ProxyRuleCondition,
        },
        RemoveConditions = {
            type = "list",
            member = M.ProxyRuleCondition,
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
    id = "UpdateProxyRuleOutput",
    members = {
        ProxyRule = M.ProxyRule,
        RemovedConditions = {
            type = "list",
            member = M.ProxyRuleCondition,
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.ProxyRuleGroupPriority = {
    type = "structure",
    id = "ProxyRuleGroupPriority",
    members = {
        ProxyRuleGroupName = {
            type = "string",
        },
        NewPosition = {
            type = "integer",
        },
    },
}

M.UpdateProxyRuleGroupPrioritiesInput = {
    type = "structure",
    id = "UpdateProxyRuleGroupPrioritiesInput",
    members = {
        ProxyConfigurationName = {
            type = "string",
        },
        ProxyConfigurationArn = {
            type = "string",
        },
        RuleGroups = {
            type = "list",
            member = M.ProxyRuleGroupPriority,
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
    id = "ProxyRuleGroupPriorityResult",
    members = {
        ProxyRuleGroupName = {
            type = "string",
        },
        Priority = {
            type = "integer",
        },
    },
}

M.UpdateProxyRuleGroupPrioritiesOutput = {
    type = "structure",
    id = "UpdateProxyRuleGroupPrioritiesOutput",
    members = {
        ProxyRuleGroups = {
            type = "list",
            member = M.ProxyRuleGroupPriorityResult,
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
    id = "ProxyRulePriority",
    members = {
        ProxyRuleName = {
            type = "string",
        },
        NewPosition = {
            type = "integer",
        },
    },
}

M.UpdateProxyRulePrioritiesInput = {
    type = "structure",
    id = "UpdateProxyRulePrioritiesInput",
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
            member = M.ProxyRulePriority,
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
    id = "UpdateProxyRulePrioritiesOutput",
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
            member = M.ProxyRulePriority,
        },
        UpdateToken = {
            type = "string",
        },
    },
}

M.UpdateRuleGroupInput = {
    type = "structure",
    id = "UpdateRuleGroupInput",
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
        RuleGroup = M.RuleGroup,
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
            traits = {
                default = false,
            },
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
        SourceMetadata = M.SourceMetadata,
        AnalyzeRuleGroup = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        SummaryConfiguration = M.SummaryConfiguration,
    },
}

M.UpdateRuleGroupOutput = {
    type = "structure",
    id = "UpdateRuleGroupOutput",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleGroupResponse = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RuleGroupResponse }),
    },
}

M.UpdateSubnetChangeProtectionInput = {
    type = "structure",
    id = "UpdateSubnetChangeProtectionInput",
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
                default = false,
                required = true,
            },
        },
    },
}

M.UpdateSubnetChangeProtectionOutput = {
    type = "structure",
    id = "UpdateSubnetChangeProtectionOutput",
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
                default = false,
            },
        },
    },
}

M.UpdateTLSInspectionConfigurationInput = {
    type = "structure",
    id = "UpdateTLSInspectionConfigurationInput",
    members = {
        TLSInspectionConfigurationArn = {
            type = "string",
        },
        TLSInspectionConfigurationName = {
            type = "string",
        },
        TLSInspectionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TLSInspectionConfiguration }),
        Description = {
            type = "string",
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
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
    id = "UpdateTLSInspectionConfigurationOutput",
    members = {
        UpdateToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TLSInspectionConfigurationResponse = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TLSInspectionConfigurationResponse }),
    },
}

return M
