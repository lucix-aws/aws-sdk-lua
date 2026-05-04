local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Action = {
    ALLOW = "ALLOW",
    BLOCK = "BLOCK",
    ALERT = "ALERT",
}

M.MutationProtectionStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
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

M.AssociateFirewallRuleGroupInput = {
    type = "structure",
    members = {
        CreatorRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallRuleGroupId = {
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
        Priority = {
            type = "integer",
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
        MutationProtection = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.FirewallRuleGroupAssociationStatus = {
    COMPLETE = "COMPLETE",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
}

M.FirewallRuleGroupAssociation = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        FirewallRuleGroupId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Priority = {
            type = "integer",
        },
        MutationProtection = {
            type = "string",
        },
        ManagedOwnerName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        CreatorRequestId = {
            type = "string",
        },
        CreationTime = {
            type = "string",
        },
        ModificationTime = {
            type = "string",
        },
    },
}

M.AssociateFirewallRuleGroupOutput = {
    type = "structure",
    members = {
        FirewallRuleGroupAssociation = M.FirewallRuleGroupAssociation,
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServiceErrorException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
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
        ResourceType = {
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
        ResourceType = {
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

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IpAddressUpdate = {
    type = "structure",
    members = {
        IpId = {
            type = "string",
        },
        SubnetId = {
            type = "string",
        },
        Ip = {
            type = "string",
        },
        Ipv6 = {
            type = "string",
        },
    },
}

M.AssociateResolverEndpointIpAddressInput = {
    type = "structure",
    members = {
        ResolverEndpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpAddress = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IpAddressUpdate }),
    },
}

M.ResolverEndpointDirection = {
    Inbound = "INBOUND",
    Outbound = "OUTBOUND",
    InboundDelegation = "INBOUND_DELEGATION",
}

M.Protocol = {
    DOH = "DoH",
    DO53 = "Do53",
    DOHFIPS = "DoH-FIPS",
}

M.ResolverEndpointType = {
    IPV6 = "IPV6",
    IPV4 = "IPV4",
    DUALSTACK = "DUALSTACK",
}

M.ResolverEndpointStatus = {
    Creating = "CREATING",
    Operational = "OPERATIONAL",
    Updating = "UPDATING",
    AutoRecovering = "AUTO_RECOVERING",
    ActionNeeded = "ACTION_NEEDED",
    Deleting = "DELETING",
}

M.ResolverEndpoint = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        CreatorRequestId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Direction = {
            type = "string",
        },
        IpAddressCount = {
            type = "integer",
        },
        HostVPCId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        CreationTime = {
            type = "string",
        },
        ModificationTime = {
            type = "string",
        },
        OutpostArn = {
            type = "string",
        },
        PreferredInstanceType = {
            type = "string",
        },
        ResolverEndpointType = {
            type = "string",
        },
        Protocols = {
            type = "list",
            member = { type = "string" },
        },
        RniEnhancedMetricsEnabled = {
            type = "boolean",
        },
        TargetNameServerMetricsEnabled = {
            type = "boolean",
        },
    },
}

M.AssociateResolverEndpointIpAddressOutput = {
    type = "structure",
    members = {
        ResolverEndpoint = M.ResolverEndpoint,
    },
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FieldName = {
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

M.ResourceExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.AssociateResolverQueryLogConfigInput = {
    type = "structure",
    members = {
        ResolverQueryLogConfigId = {
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
    },
}

M.ResolverQueryLogConfigAssociationError = {
    None = "NONE",
    DestinationNotFound = "DESTINATION_NOT_FOUND",
    AccessDenied = "ACCESS_DENIED",
    InternalServiceError = "INTERNAL_SERVICE_ERROR",
}

M.ResolverQueryLogConfigAssociationStatus = {
    Creating = "CREATING",
    Active = "ACTIVE",
    ActionNeeded = "ACTION_NEEDED",
    Deleting = "DELETING",
    Failed = "FAILED",
}

M.ResolverQueryLogConfigAssociation = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        ResolverQueryLogConfigId = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Error = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        CreationTime = {
            type = "string",
        },
    },
}

M.AssociateResolverQueryLogConfigOutput = {
    type = "structure",
    members = {
        ResolverQueryLogConfigAssociation = M.ResolverQueryLogConfigAssociation,
    },
}

M.AssociateResolverRuleInput = {
    type = "structure",
    members = {
        ResolverRuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        VPCId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResolverRuleAssociationStatus = {
    Creating = "CREATING",
    Complete = "COMPLETE",
    Deleting = "DELETING",
    Failed = "FAILED",
    Overridden = "OVERRIDDEN",
}

M.ResolverRuleAssociation = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        ResolverRuleId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VPCId = {
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

M.AssociateResolverRuleOutput = {
    type = "structure",
    members = {
        ResolverRuleAssociation = M.ResolverRuleAssociation,
    },
}

M.ResourceUnavailableException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.AutodefinedReverseFlag = {
    ENABLE = "ENABLE",
    DISABLE = "DISABLE",
    USE_LOCAL_RESOURCE_SETTING = "USE_LOCAL_RESOURCE_SETTING",
}

M.BlockOverrideDnsType = {
    CNAME = "CNAME",
}

M.BlockResponse = {
    NODATA = "NODATA",
    NXDOMAIN = "NXDOMAIN",
    OVERRIDE = "OVERRIDE",
}

M.ConfidenceThreshold = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.CreateFirewallDomainListInput = {
    type = "structure",
    members = {
        CreatorRequestId = {
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
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.FirewallDomainListStatus = {
    COMPLETE = "COMPLETE",
    COMPLETE_IMPORT_FAILED = "COMPLETE_IMPORT_FAILED",
    IMPORTING = "IMPORTING",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
}

M.FirewallDomainList = {
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
        DomainCount = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        ManagedOwnerName = {
            type = "string",
        },
        CreatorRequestId = {
            type = "string",
        },
        CreationTime = {
            type = "string",
        },
        ModificationTime = {
            type = "string",
        },
    },
}

M.CreateFirewallDomainListOutput = {
    type = "structure",
    members = {
        FirewallDomainList = M.FirewallDomainList,
    },
}

M.DnsThreatProtection = {
    DGA = "DGA",
    DNS_TUNNELING = "DNS_TUNNELING",
    DICTIONARY_DGA = "DICTIONARY_DGA",
}

M.FirewallDomainRedirectionAction = {
    INSPECT_REDIRECTION_DOMAIN = "INSPECT_REDIRECTION_DOMAIN",
    TRUST_REDIRECTION_DOMAIN = "TRUST_REDIRECTION_DOMAIN",
}

M.CreateFirewallRuleInput = {
    type = "structure",
    members = {
        CreatorRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallRuleGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallDomainListId = {
            type = "string",
        },
        Priority = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BlockResponse = {
            type = "string",
        },
        BlockOverrideDomain = {
            type = "string",
        },
        BlockOverrideDnsType = {
            type = "string",
        },
        BlockOverrideTtl = {
            type = "integer",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallDomainRedirectionAction = {
            type = "string",
        },
        Qtype = {
            type = "string",
        },
        DnsThreatProtection = {
            type = "string",
        },
        ConfidenceThreshold = {
            type = "string",
        },
    },
}

M.FirewallRule = {
    type = "structure",
    members = {
        FirewallRuleGroupId = {
            type = "string",
        },
        FirewallDomainListId = {
            type = "string",
        },
        FirewallThreatProtectionId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Priority = {
            type = "integer",
        },
        Action = {
            type = "string",
        },
        BlockResponse = {
            type = "string",
        },
        BlockOverrideDomain = {
            type = "string",
        },
        BlockOverrideDnsType = {
            type = "string",
        },
        BlockOverrideTtl = {
            type = "integer",
        },
        CreatorRequestId = {
            type = "string",
        },
        CreationTime = {
            type = "string",
        },
        ModificationTime = {
            type = "string",
        },
        FirewallDomainRedirectionAction = {
            type = "string",
        },
        Qtype = {
            type = "string",
        },
        DnsThreatProtection = {
            type = "string",
        },
        ConfidenceThreshold = {
            type = "string",
        },
    },
}

M.CreateFirewallRuleOutput = {
    type = "structure",
    members = {
        FirewallRule = M.FirewallRule,
    },
}

M.CreateFirewallRuleGroupInput = {
    type = "structure",
    members = {
        CreatorRequestId = {
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
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ShareStatus = {
    NotShared = "NOT_SHARED",
    SharedWithMe = "SHARED_WITH_ME",
    SharedByMe = "SHARED_BY_ME",
}

M.FirewallRuleGroupStatus = {
    COMPLETE = "COMPLETE",
    DELETING = "DELETING",
    UPDATING = "UPDATING",
}

M.FirewallRuleGroup = {
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
        RuleCount = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        OwnerId = {
            type = "string",
        },
        CreatorRequestId = {
            type = "string",
        },
        ShareStatus = {
            type = "string",
        },
        CreationTime = {
            type = "string",
        },
        ModificationTime = {
            type = "string",
        },
    },
}

M.CreateFirewallRuleGroupOutput = {
    type = "structure",
    members = {
        FirewallRuleGroup = M.FirewallRuleGroup,
    },
}

M.CreateOutpostResolverInput = {
    type = "structure",
    members = {
        CreatorRequestId = {
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
        InstanceCount = {
            type = "integer",
        },
        PreferredInstanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutpostArn = {
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

M.OutpostResolverStatus = {
    CREATING = "CREATING",
    OPERATIONAL = "OPERATIONAL",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    ACTION_NEEDED = "ACTION_NEEDED",
    FAILED_CREATION = "FAILED_CREATION",
    FAILED_DELETION = "FAILED_DELETION",
}

M.OutpostResolver = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTime = {
            type = "string",
        },
        ModificationTime = {
            type = "string",
        },
        CreatorRequestId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        InstanceCount = {
            type = "integer",
        },
        PreferredInstanceType = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        OutpostArn = {
            type = "string",
        },
    },
}

M.CreateOutpostResolverOutput = {
    type = "structure",
    members = {
        OutpostResolver = M.OutpostResolver,
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IpAddressRequest = {
    type = "structure",
    members = {
        SubnetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Ip = {
            type = "string",
        },
        Ipv6 = {
            type = "string",
        },
    },
}

M.CreateResolverEndpointInput = {
    type = "structure",
    members = {
        CreatorRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
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
        IpAddresses = {
            type = "list",
            member = M.IpAddressRequest,
            traits = {
                required = true,
            },
        },
        OutpostArn = {
            type = "string",
        },
        PreferredInstanceType = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ResolverEndpointType = {
            type = "string",
        },
        Protocols = {
            type = "list",
            member = { type = "string" },
        },
        RniEnhancedMetricsEnabled = {
            type = "boolean",
        },
        TargetNameServerMetricsEnabled = {
            type = "boolean",
        },
    },
}

M.CreateResolverEndpointOutput = {
    type = "structure",
    members = {
        ResolverEndpoint = M.ResolverEndpoint,
    },
}

M.CreateResolverQueryLogConfigInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreatorRequestId = {
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

M.ResolverQueryLogConfigStatus = {
    Creating = "CREATING",
    Created = "CREATED",
    Deleting = "DELETING",
    Failed = "FAILED",
}

M.ResolverQueryLogConfig = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        OwnerId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        ShareStatus = {
            type = "string",
        },
        AssociationCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        DestinationArn = {
            type = "string",
        },
        CreatorRequestId = {
            type = "string",
        },
        CreationTime = {
            type = "string",
        },
    },
}

M.CreateResolverQueryLogConfigOutput = {
    type = "structure",
    members = {
        ResolverQueryLogConfig = M.ResolverQueryLogConfig,
    },
}

M.RuleTypeOption = {
    Forward = "FORWARD",
    System = "SYSTEM",
    Recursive = "RECURSIVE",
    Delegate = "DELEGATE",
}

M.TargetAddress = {
    type = "structure",
    members = {
        Ip = {
            type = "string",
        },
        Port = {
            type = "integer",
        },
        Ipv6 = {
            type = "string",
        },
        Protocol = {
            type = "string",
        },
        ServerNameIndication = {
            type = "string",
        },
    },
}

M.CreateResolverRuleInput = {
    type = "structure",
    members = {
        CreatorRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        RuleType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DomainName = {
            type = "string",
        },
        TargetIps = {
            type = "list",
            member = M.TargetAddress,
        },
        ResolverEndpointId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        DelegationRecord = {
            type = "string",
        },
    },
}

M.ResolverRuleStatus = {
    Complete = "COMPLETE",
    Deleting = "DELETING",
    Updating = "UPDATING",
    Failed = "FAILED",
}

M.ResolverRule = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        CreatorRequestId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        DomainName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        RuleType = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        TargetIps = {
            type = "list",
            member = M.TargetAddress,
        },
        ResolverEndpointId = {
            type = "string",
        },
        OwnerId = {
            type = "string",
        },
        ShareStatus = {
            type = "string",
        },
        CreationTime = {
            type = "string",
        },
        ModificationTime = {
            type = "string",
        },
        DelegationRecord = {
            type = "string",
        },
    },
}

M.CreateResolverRuleOutput = {
    type = "structure",
    members = {
        ResolverRule = M.ResolverRule,
    },
}

M.DeleteFirewallDomainListInput = {
    type = "structure",
    members = {
        FirewallDomainListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFirewallDomainListOutput = {
    type = "structure",
    members = {
        FirewallDomainList = M.FirewallDomainList,
    },
}

M.DeleteFirewallRuleInput = {
    type = "structure",
    members = {
        FirewallRuleGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallDomainListId = {
            type = "string",
        },
        FirewallThreatProtectionId = {
            type = "string",
        },
        Qtype = {
            type = "string",
        },
    },
}

M.DeleteFirewallRuleOutput = {
    type = "structure",
    members = {
        FirewallRule = M.FirewallRule,
    },
}

M.DeleteFirewallRuleGroupInput = {
    type = "structure",
    members = {
        FirewallRuleGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFirewallRuleGroupOutput = {
    type = "structure",
    members = {
        FirewallRuleGroup = M.FirewallRuleGroup,
    },
}

M.DeleteOutpostResolverInput = {
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

M.DeleteOutpostResolverOutput = {
    type = "structure",
    members = {
        OutpostResolver = M.OutpostResolver,
    },
}

M.DeleteResolverEndpointInput = {
    type = "structure",
    members = {
        ResolverEndpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResolverEndpointOutput = {
    type = "structure",
    members = {
        ResolverEndpoint = M.ResolverEndpoint,
    },
}

M.DeleteResolverQueryLogConfigInput = {
    type = "structure",
    members = {
        ResolverQueryLogConfigId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResolverQueryLogConfigOutput = {
    type = "structure",
    members = {
        ResolverQueryLogConfig = M.ResolverQueryLogConfig,
    },
}

M.DeleteResolverRuleInput = {
    type = "structure",
    members = {
        ResolverRuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteResolverRuleOutput = {
    type = "structure",
    members = {
        ResolverRule = M.ResolverRule,
    },
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.DisassociateFirewallRuleGroupInput = {
    type = "structure",
    members = {
        FirewallRuleGroupAssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateFirewallRuleGroupOutput = {
    type = "structure",
    members = {
        FirewallRuleGroupAssociation = M.FirewallRuleGroupAssociation,
    },
}

M.DisassociateResolverEndpointIpAddressInput = {
    type = "structure",
    members = {
        ResolverEndpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpAddress = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IpAddressUpdate }),
    },
}

M.DisassociateResolverEndpointIpAddressOutput = {
    type = "structure",
    members = {
        ResolverEndpoint = M.ResolverEndpoint,
    },
}

M.DisassociateResolverQueryLogConfigInput = {
    type = "structure",
    members = {
        ResolverQueryLogConfigId = {
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
    },
}

M.DisassociateResolverQueryLogConfigOutput = {
    type = "structure",
    members = {
        ResolverQueryLogConfigAssociation = M.ResolverQueryLogConfigAssociation,
    },
}

M.DisassociateResolverRuleInput = {
    type = "structure",
    members = {
        VPCId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResolverRuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateResolverRuleOutput = {
    type = "structure",
    members = {
        ResolverRuleAssociation = M.ResolverRuleAssociation,
    },
}

M.Filter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.FirewallFailOpenStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    USE_LOCAL_RESOURCE_SETTING = "USE_LOCAL_RESOURCE_SETTING",
}

M.FirewallConfig = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        OwnerId = {
            type = "string",
        },
        FirewallFailOpen = {
            type = "string",
        },
    },
}

M.FirewallDomainImportOperation = {
    REPLACE = "REPLACE",
}

M.FirewallDomainListMetadata = {
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
        CreatorRequestId = {
            type = "string",
        },
        ManagedOwnerName = {
            type = "string",
        },
    },
}

M.FirewallDomainUpdateOperation = {
    ADD = "ADD",
    REMOVE = "REMOVE",
    REPLACE = "REPLACE",
}

M.FirewallRuleGroupMetadata = {
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
        OwnerId = {
            type = "string",
        },
        CreatorRequestId = {
            type = "string",
        },
        ShareStatus = {
            type = "string",
        },
    },
}

M.GetFirewallConfigInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFirewallConfigOutput = {
    type = "structure",
    members = {
        FirewallConfig = M.FirewallConfig,
    },
}

M.GetFirewallDomainListInput = {
    type = "structure",
    members = {
        FirewallDomainListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFirewallDomainListOutput = {
    type = "structure",
    members = {
        FirewallDomainList = M.FirewallDomainList,
    },
}

M.GetFirewallRuleGroupInput = {
    type = "structure",
    members = {
        FirewallRuleGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFirewallRuleGroupOutput = {
    type = "structure",
    members = {
        FirewallRuleGroup = M.FirewallRuleGroup,
    },
}

M.GetFirewallRuleGroupAssociationInput = {
    type = "structure",
    members = {
        FirewallRuleGroupAssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFirewallRuleGroupAssociationOutput = {
    type = "structure",
    members = {
        FirewallRuleGroupAssociation = M.FirewallRuleGroupAssociation,
    },
}

M.GetFirewallRuleGroupPolicyInput = {
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

M.GetFirewallRuleGroupPolicyOutput = {
    type = "structure",
    members = {
        FirewallRuleGroupPolicy = {
            type = "string",
        },
    },
}

M.GetOutpostResolverInput = {
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

M.GetOutpostResolverOutput = {
    type = "structure",
    members = {
        OutpostResolver = M.OutpostResolver,
    },
}

M.GetResolverConfigInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResolverAutodefinedReverseStatus = {
    Enabling = "ENABLING",
    Enabled = "ENABLED",
    Disabling = "DISABLING",
    Disabled = "DISABLED",
    UpdatingToUseLocalResourceSetting = "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING",
    UseLocalResourceSetting = "USE_LOCAL_RESOURCE_SETTING",
}

M.ResolverConfig = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        OwnerId = {
            type = "string",
        },
        AutodefinedReverse = {
            type = "string",
        },
    },
}

M.GetResolverConfigOutput = {
    type = "structure",
    members = {
        ResolverConfig = M.ResolverConfig,
    },
}

M.GetResolverDnssecConfigInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResolverDNSSECValidationStatus = {
    Enabling = "ENABLING",
    Enabled = "ENABLED",
    Disabling = "DISABLING",
    Disabled = "DISABLED",
    UpdateToUseLocalResourceSetting = "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING",
    UseLocalResourceSetting = "USE_LOCAL_RESOURCE_SETTING",
}

M.ResolverDnssecConfig = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        OwnerId = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        ValidationStatus = {
            type = "string",
        },
    },
}

M.GetResolverDnssecConfigOutput = {
    type = "structure",
    members = {
        ResolverDNSSECConfig = M.ResolverDnssecConfig,
    },
}

M.GetResolverEndpointInput = {
    type = "structure",
    members = {
        ResolverEndpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResolverEndpointOutput = {
    type = "structure",
    members = {
        ResolverEndpoint = M.ResolverEndpoint,
    },
}

M.GetResolverQueryLogConfigInput = {
    type = "structure",
    members = {
        ResolverQueryLogConfigId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResolverQueryLogConfigOutput = {
    type = "structure",
    members = {
        ResolverQueryLogConfig = M.ResolverQueryLogConfig,
    },
}

M.GetResolverQueryLogConfigAssociationInput = {
    type = "structure",
    members = {
        ResolverQueryLogConfigAssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResolverQueryLogConfigAssociationOutput = {
    type = "structure",
    members = {
        ResolverQueryLogConfigAssociation = M.ResolverQueryLogConfigAssociation,
    },
}

M.GetResolverQueryLogConfigPolicyInput = {
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

M.GetResolverQueryLogConfigPolicyOutput = {
    type = "structure",
    members = {
        ResolverQueryLogConfigPolicy = {
            type = "string",
        },
    },
}

M.UnknownResourceException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetResolverRuleInput = {
    type = "structure",
    members = {
        ResolverRuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResolverRuleOutput = {
    type = "structure",
    members = {
        ResolverRule = M.ResolverRule,
    },
}

M.GetResolverRuleAssociationInput = {
    type = "structure",
    members = {
        ResolverRuleAssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResolverRuleAssociationOutput = {
    type = "structure",
    members = {
        ResolverRuleAssociation = M.ResolverRuleAssociation,
    },
}

M.GetResolverRulePolicyInput = {
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

M.GetResolverRulePolicyOutput = {
    type = "structure",
    members = {
        ResolverRulePolicy = {
            type = "string",
        },
    },
}

M.ImportFirewallDomainsInput = {
    type = "structure",
    members = {
        FirewallDomainListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DomainFileUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportFirewallDomainsOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
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

M.InvalidNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidPolicyDocument = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTagException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IpAddressStatus = {
    Creating = "CREATING",
    FailedCreation = "FAILED_CREATION",
    Attaching = "ATTACHING",
    Attached = "ATTACHED",
    RemapDetaching = "REMAP_DETACHING",
    RemapAttaching = "REMAP_ATTACHING",
    Detaching = "DETACHING",
    FailedResourceGone = "FAILED_RESOURCE_GONE",
    Deleting = "DELETING",
    DeleteFailedFasExpired = "DELETE_FAILED_FAS_EXPIRED",
    Updating = "UPDATING",
    UpdateFailed = "UPDATE_FAILED",
    Isolated = "ISOLATED",
}

M.IpAddressResponse = {
    type = "structure",
    members = {
        IpId = {
            type = "string",
        },
        SubnetId = {
            type = "string",
        },
        Ip = {
            type = "string",
        },
        Ipv6 = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        CreationTime = {
            type = "string",
        },
        ModificationTime = {
            type = "string",
        },
    },
}

M.ListFirewallConfigsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFirewallConfigsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        FirewallConfigs = {
            type = "list",
            member = M.FirewallConfig,
        },
    },
}

M.ListFirewallDomainListsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFirewallDomainListsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        FirewallDomainLists = {
            type = "list",
            member = M.FirewallDomainListMetadata,
        },
    },
}

M.ListFirewallDomainsInput = {
    type = "structure",
    members = {
        FirewallDomainListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFirewallDomainsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Domains = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListFirewallRuleGroupAssociationsInput = {
    type = "structure",
    members = {
        FirewallRuleGroupId = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        Priority = {
            type = "integer",
        },
        Status = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFirewallRuleGroupAssociationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        FirewallRuleGroupAssociations = {
            type = "list",
            member = M.FirewallRuleGroupAssociation,
        },
    },
}

M.ListFirewallRuleGroupsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFirewallRuleGroupsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        FirewallRuleGroups = {
            type = "list",
            member = M.FirewallRuleGroupMetadata,
        },
    },
}

M.ListFirewallRulesInput = {
    type = "structure",
    members = {
        FirewallRuleGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Priority = {
            type = "integer",
        },
        Action = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFirewallRulesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        FirewallRules = {
            type = "list",
            member = M.FirewallRule,
        },
    },
}

M.ListOutpostResolversInput = {
    type = "structure",
    members = {
        OutpostArn = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOutpostResolversOutput = {
    type = "structure",
    members = {
        OutpostResolvers = {
            type = "list",
            member = M.OutpostResolver,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResolverConfigsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResolverConfigsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ResolverConfigs = {
            type = "list",
            member = M.ResolverConfig,
        },
    },
}

M.ListResolverDnssecConfigsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.ListResolverDnssecConfigsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ResolverDnssecConfigs = {
            type = "list",
            member = M.ResolverDnssecConfig,
        },
    },
}

M.ListResolverEndpointIpAddressesInput = {
    type = "structure",
    members = {
        ResolverEndpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResolverEndpointIpAddressesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        IpAddresses = {
            type = "list",
            member = M.IpAddressResponse,
        },
    },
}

M.ListResolverEndpointsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.ListResolverEndpointsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        ResolverEndpoints = {
            type = "list",
            member = M.ResolverEndpoint,
        },
    },
}

M.SortOrder = {
    Ascending = "ASCENDING",
    Descending = "DESCENDING",
}

M.ListResolverQueryLogConfigAssociationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListResolverQueryLogConfigAssociationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        TotalCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        TotalFilteredCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ResolverQueryLogConfigAssociations = {
            type = "list",
            member = M.ResolverQueryLogConfigAssociation,
        },
    },
}

M.ListResolverQueryLogConfigsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        SortBy = {
            type = "string",
        },
        SortOrder = {
            type = "string",
        },
    },
}

M.ListResolverQueryLogConfigsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        TotalCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        TotalFilteredCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ResolverQueryLogConfigs = {
            type = "list",
            member = M.ResolverQueryLogConfig,
        },
    },
}

M.ListResolverRuleAssociationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.ListResolverRuleAssociationsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        ResolverRuleAssociations = {
            type = "list",
            member = M.ResolverRuleAssociation,
        },
    },
}

M.ListResolverRulesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.ListResolverRulesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        ResolverRules = {
            type = "list",
            member = M.ResolverRule,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutFirewallRuleGroupPolicyInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallRuleGroupPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutFirewallRuleGroupPolicyOutput = {
    type = "structure",
    members = {
        ReturnValue = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PutResolverQueryLogConfigPolicyInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResolverQueryLogConfigPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResolverQueryLogConfigPolicyOutput = {
    type = "structure",
    members = {
        ReturnValue = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PutResolverRulePolicyInput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResolverRulePolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutResolverRulePolicyOutput = {
    type = "structure",
    members = {
        ReturnValue = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ResolverRuleConfig = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        TargetIps = {
            type = "list",
            member = M.TargetAddress,
        },
        ResolverEndpointId = {
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
            member = M.Tag,
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateFirewallConfigInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallFailOpen = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateFirewallConfigOutput = {
    type = "structure",
    members = {
        FirewallConfig = M.FirewallConfig,
    },
}

M.UpdateFirewallDomainsInput = {
    type = "structure",
    members = {
        FirewallDomainListId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Domains = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateFirewallDomainsOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
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

M.UpdateFirewallRuleInput = {
    type = "structure",
    members = {
        FirewallRuleGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FirewallDomainListId = {
            type = "string",
        },
        FirewallThreatProtectionId = {
            type = "string",
        },
        Priority = {
            type = "integer",
        },
        Action = {
            type = "string",
        },
        BlockResponse = {
            type = "string",
        },
        BlockOverrideDomain = {
            type = "string",
        },
        BlockOverrideDnsType = {
            type = "string",
        },
        BlockOverrideTtl = {
            type = "integer",
        },
        Name = {
            type = "string",
        },
        FirewallDomainRedirectionAction = {
            type = "string",
        },
        Qtype = {
            type = "string",
        },
        DnsThreatProtection = {
            type = "string",
        },
        ConfidenceThreshold = {
            type = "string",
        },
    },
}

M.UpdateFirewallRuleOutput = {
    type = "structure",
    members = {
        FirewallRule = M.FirewallRule,
    },
}

M.UpdateFirewallRuleGroupAssociationInput = {
    type = "structure",
    members = {
        FirewallRuleGroupAssociationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Priority = {
            type = "integer",
        },
        MutationProtection = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.UpdateFirewallRuleGroupAssociationOutput = {
    type = "structure",
    members = {
        FirewallRuleGroupAssociation = M.FirewallRuleGroupAssociation,
    },
}

M.UpdateOutpostResolverInput = {
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
        },
        InstanceCount = {
            type = "integer",
        },
        PreferredInstanceType = {
            type = "string",
        },
    },
}

M.UpdateOutpostResolverOutput = {
    type = "structure",
    members = {
        OutpostResolver = M.OutpostResolver,
    },
}

M.UpdateResolverConfigInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AutodefinedReverseFlag = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateResolverConfigOutput = {
    type = "structure",
    members = {
        ResolverConfig = M.ResolverConfig,
    },
}

M.Validation = {
    ENABLE = "ENABLE",
    DISABLE = "DISABLE",
    USE_LOCAL_RESOURCE_SETTING = "USE_LOCAL_RESOURCE_SETTING",
}

M.UpdateResolverDnssecConfigInput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Validation = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateResolverDnssecConfigOutput = {
    type = "structure",
    members = {
        ResolverDNSSECConfig = M.ResolverDnssecConfig,
    },
}

M.UpdateIpAddress = {
    type = "structure",
    members = {
        IpId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Ipv6 = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateResolverEndpointInput = {
    type = "structure",
    members = {
        ResolverEndpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        ResolverEndpointType = {
            type = "string",
        },
        UpdateIpAddresses = {
            type = "list",
            member = M.UpdateIpAddress,
        },
        Protocols = {
            type = "list",
            member = { type = "string" },
        },
        RniEnhancedMetricsEnabled = {
            type = "boolean",
        },
        TargetNameServerMetricsEnabled = {
            type = "boolean",
        },
    },
}

M.UpdateResolverEndpointOutput = {
    type = "structure",
    members = {
        ResolverEndpoint = M.ResolverEndpoint,
    },
}

M.UpdateResolverRuleInput = {
    type = "structure",
    members = {
        ResolverRuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Config = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResolverRuleConfig }),
    },
}

M.UpdateResolverRuleOutput = {
    type = "structure",
    members = {
        ResolverRule = M.ResolverRule,
    },
}

return M
