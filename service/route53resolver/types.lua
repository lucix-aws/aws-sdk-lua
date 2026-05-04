local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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

M.AssociateFirewallRuleGroupInput = {
    type = "structure",
    id = "AssociateFirewallRuleGroupInput",
    members = {
        CreatorRequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
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
    id = "FirewallRuleGroupAssociation",
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
    id = "AssociateFirewallRuleGroupOutput",
    members = {
        FirewallRuleGroupAssociation = M.FirewallRuleGroupAssociation,
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalServiceErrorException = {
    type = "structure",
    id = "InternalServiceErrorException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
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
        ResourceType = {
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
        ResourceType = {
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

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IpAddressUpdate = {
    type = "structure",
    id = "IpAddressUpdate",
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
    id = "AssociateResolverEndpointIpAddressInput",
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
    id = "ResolverEndpoint",
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
    id = "AssociateResolverEndpointIpAddressOutput",
    members = {
        ResolverEndpoint = M.ResolverEndpoint,
    },
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
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
    id = "InvalidRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceExistsException = {
    type = "structure",
    id = "ResourceExistsException",
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
    id = "AssociateResolverQueryLogConfigInput",
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
    id = "ResolverQueryLogConfigAssociation",
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
    id = "AssociateResolverQueryLogConfigOutput",
    members = {
        ResolverQueryLogConfigAssociation = M.ResolverQueryLogConfigAssociation,
    },
}

M.AssociateResolverRuleInput = {
    type = "structure",
    id = "AssociateResolverRuleInput",
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
    id = "ResolverRuleAssociation",
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
    id = "AssociateResolverRuleOutput",
    members = {
        ResolverRuleAssociation = M.ResolverRuleAssociation,
    },
}

M.ResourceUnavailableException = {
    type = "structure",
    id = "ResourceUnavailableException",
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
    id = "CreateFirewallDomainListInput",
    members = {
        CreatorRequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
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
    id = "FirewallDomainList",
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
    id = "CreateFirewallDomainListOutput",
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
    id = "CreateFirewallRuleInput",
    members = {
        CreatorRequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
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
    id = "FirewallRule",
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
    id = "CreateFirewallRuleOutput",
    members = {
        FirewallRule = M.FirewallRule,
    },
}

M.CreateFirewallRuleGroupInput = {
    type = "structure",
    id = "CreateFirewallRuleGroupInput",
    members = {
        CreatorRequestId = {
            type = "string",
            traits = {
                idempotency_token = true,
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
    id = "FirewallRuleGroup",
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
    id = "CreateFirewallRuleGroupOutput",
    members = {
        FirewallRuleGroup = M.FirewallRuleGroup,
    },
}

M.CreateOutpostResolverInput = {
    type = "structure",
    id = "CreateOutpostResolverInput",
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
    id = "OutpostResolver",
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
    id = "CreateOutpostResolverOutput",
    members = {
        OutpostResolver = M.OutpostResolver,
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.IpAddressRequest = {
    type = "structure",
    id = "IpAddressRequest",
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
    id = "CreateResolverEndpointInput",
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
    id = "CreateResolverEndpointOutput",
    members = {
        ResolverEndpoint = M.ResolverEndpoint,
    },
}

M.CreateResolverQueryLogConfigInput = {
    type = "structure",
    id = "CreateResolverQueryLogConfigInput",
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
                idempotency_token = true,
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
    id = "ResolverQueryLogConfig",
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
    id = "CreateResolverQueryLogConfigOutput",
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
    id = "TargetAddress",
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
    id = "CreateResolverRuleInput",
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
    id = "ResolverRule",
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
    id = "CreateResolverRuleOutput",
    members = {
        ResolverRule = M.ResolverRule,
    },
}

M.DeleteFirewallDomainListInput = {
    type = "structure",
    id = "DeleteFirewallDomainListInput",
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
    id = "DeleteFirewallDomainListOutput",
    members = {
        FirewallDomainList = M.FirewallDomainList,
    },
}

M.DeleteFirewallRuleInput = {
    type = "structure",
    id = "DeleteFirewallRuleInput",
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
    id = "DeleteFirewallRuleOutput",
    members = {
        FirewallRule = M.FirewallRule,
    },
}

M.DeleteFirewallRuleGroupInput = {
    type = "structure",
    id = "DeleteFirewallRuleGroupInput",
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
    id = "DeleteFirewallRuleGroupOutput",
    members = {
        FirewallRuleGroup = M.FirewallRuleGroup,
    },
}

M.DeleteOutpostResolverInput = {
    type = "structure",
    id = "DeleteOutpostResolverInput",
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
    id = "DeleteOutpostResolverOutput",
    members = {
        OutpostResolver = M.OutpostResolver,
    },
}

M.DeleteResolverEndpointInput = {
    type = "structure",
    id = "DeleteResolverEndpointInput",
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
    id = "DeleteResolverEndpointOutput",
    members = {
        ResolverEndpoint = M.ResolverEndpoint,
    },
}

M.DeleteResolverQueryLogConfigInput = {
    type = "structure",
    id = "DeleteResolverQueryLogConfigInput",
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
    id = "DeleteResolverQueryLogConfigOutput",
    members = {
        ResolverQueryLogConfig = M.ResolverQueryLogConfig,
    },
}

M.DeleteResolverRuleInput = {
    type = "structure",
    id = "DeleteResolverRuleInput",
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
    id = "DeleteResolverRuleOutput",
    members = {
        ResolverRule = M.ResolverRule,
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
        ResourceType = {
            type = "string",
        },
    },
}

M.DisassociateFirewallRuleGroupInput = {
    type = "structure",
    id = "DisassociateFirewallRuleGroupInput",
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
    id = "DisassociateFirewallRuleGroupOutput",
    members = {
        FirewallRuleGroupAssociation = M.FirewallRuleGroupAssociation,
    },
}

M.DisassociateResolverEndpointIpAddressInput = {
    type = "structure",
    id = "DisassociateResolverEndpointIpAddressInput",
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
    id = "DisassociateResolverEndpointIpAddressOutput",
    members = {
        ResolverEndpoint = M.ResolverEndpoint,
    },
}

M.DisassociateResolverQueryLogConfigInput = {
    type = "structure",
    id = "DisassociateResolverQueryLogConfigInput",
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
    id = "DisassociateResolverQueryLogConfigOutput",
    members = {
        ResolverQueryLogConfigAssociation = M.ResolverQueryLogConfigAssociation,
    },
}

M.DisassociateResolverRuleInput = {
    type = "structure",
    id = "DisassociateResolverRuleInput",
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
    id = "DisassociateResolverRuleOutput",
    members = {
        ResolverRuleAssociation = M.ResolverRuleAssociation,
    },
}

M.Filter = {
    type = "structure",
    id = "Filter",
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
    id = "FirewallConfig",
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
    id = "FirewallDomainListMetadata",
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
    id = "FirewallRuleGroupMetadata",
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
    id = "GetFirewallConfigInput",
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
    id = "GetFirewallConfigOutput",
    members = {
        FirewallConfig = M.FirewallConfig,
    },
}

M.GetFirewallDomainListInput = {
    type = "structure",
    id = "GetFirewallDomainListInput",
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
    id = "GetFirewallDomainListOutput",
    members = {
        FirewallDomainList = M.FirewallDomainList,
    },
}

M.GetFirewallRuleGroupInput = {
    type = "structure",
    id = "GetFirewallRuleGroupInput",
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
    id = "GetFirewallRuleGroupOutput",
    members = {
        FirewallRuleGroup = M.FirewallRuleGroup,
    },
}

M.GetFirewallRuleGroupAssociationInput = {
    type = "structure",
    id = "GetFirewallRuleGroupAssociationInput",
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
    id = "GetFirewallRuleGroupAssociationOutput",
    members = {
        FirewallRuleGroupAssociation = M.FirewallRuleGroupAssociation,
    },
}

M.GetFirewallRuleGroupPolicyInput = {
    type = "structure",
    id = "GetFirewallRuleGroupPolicyInput",
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
    id = "GetFirewallRuleGroupPolicyOutput",
    members = {
        FirewallRuleGroupPolicy = {
            type = "string",
        },
    },
}

M.GetOutpostResolverInput = {
    type = "structure",
    id = "GetOutpostResolverInput",
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
    id = "GetOutpostResolverOutput",
    members = {
        OutpostResolver = M.OutpostResolver,
    },
}

M.GetResolverConfigInput = {
    type = "structure",
    id = "GetResolverConfigInput",
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
    id = "ResolverConfig",
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
    id = "GetResolverConfigOutput",
    members = {
        ResolverConfig = M.ResolverConfig,
    },
}

M.GetResolverDnssecConfigInput = {
    type = "structure",
    id = "GetResolverDnssecConfigInput",
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
    id = "ResolverDnssecConfig",
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
    id = "GetResolverDnssecConfigOutput",
    members = {
        ResolverDNSSECConfig = M.ResolverDnssecConfig,
    },
}

M.GetResolverEndpointInput = {
    type = "structure",
    id = "GetResolverEndpointInput",
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
    id = "GetResolverEndpointOutput",
    members = {
        ResolverEndpoint = M.ResolverEndpoint,
    },
}

M.GetResolverQueryLogConfigInput = {
    type = "structure",
    id = "GetResolverQueryLogConfigInput",
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
    id = "GetResolverQueryLogConfigOutput",
    members = {
        ResolverQueryLogConfig = M.ResolverQueryLogConfig,
    },
}

M.GetResolverQueryLogConfigAssociationInput = {
    type = "structure",
    id = "GetResolverQueryLogConfigAssociationInput",
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
    id = "GetResolverQueryLogConfigAssociationOutput",
    members = {
        ResolverQueryLogConfigAssociation = M.ResolverQueryLogConfigAssociation,
    },
}

M.GetResolverQueryLogConfigPolicyInput = {
    type = "structure",
    id = "GetResolverQueryLogConfigPolicyInput",
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
    id = "GetResolverQueryLogConfigPolicyOutput",
    members = {
        ResolverQueryLogConfigPolicy = {
            type = "string",
        },
    },
}

M.UnknownResourceException = {
    type = "structure",
    id = "UnknownResourceException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetResolverRuleInput = {
    type = "structure",
    id = "GetResolverRuleInput",
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
    id = "GetResolverRuleOutput",
    members = {
        ResolverRule = M.ResolverRule,
    },
}

M.GetResolverRuleAssociationInput = {
    type = "structure",
    id = "GetResolverRuleAssociationInput",
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
    id = "GetResolverRuleAssociationOutput",
    members = {
        ResolverRuleAssociation = M.ResolverRuleAssociation,
    },
}

M.GetResolverRulePolicyInput = {
    type = "structure",
    id = "GetResolverRulePolicyInput",
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
    id = "GetResolverRulePolicyOutput",
    members = {
        ResolverRulePolicy = {
            type = "string",
        },
    },
}

M.ImportFirewallDomainsInput = {
    type = "structure",
    id = "ImportFirewallDomainsInput",
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
    id = "ImportFirewallDomainsOutput",
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
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidPolicyDocument = {
    type = "structure",
    id = "InvalidPolicyDocument",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidTagException = {
    type = "structure",
    id = "InvalidTagException",
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
    id = "IpAddressResponse",
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
    id = "ListFirewallConfigsInput",
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
    id = "ListFirewallConfigsOutput",
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
    id = "ListFirewallDomainListsInput",
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
    id = "ListFirewallDomainListsOutput",
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
    id = "ListFirewallDomainsInput",
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
    id = "ListFirewallDomainsOutput",
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
    id = "ListFirewallRuleGroupAssociationsInput",
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
    id = "ListFirewallRuleGroupAssociationsOutput",
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
    id = "ListFirewallRuleGroupsInput",
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
    id = "ListFirewallRuleGroupsOutput",
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
    id = "ListFirewallRulesInput",
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
    id = "ListFirewallRulesOutput",
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
    id = "ListOutpostResolversInput",
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
    id = "ListOutpostResolversOutput",
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
    id = "ListResolverConfigsInput",
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
    id = "ListResolverConfigsOutput",
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
    id = "ListResolverDnssecConfigsInput",
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
    id = "ListResolverDnssecConfigsOutput",
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
    id = "ListResolverEndpointIpAddressesInput",
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
    id = "ListResolverEndpointIpAddressesOutput",
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
    id = "ListResolverEndpointsInput",
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
    id = "ListResolverEndpointsOutput",
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
    id = "ListResolverQueryLogConfigAssociationsInput",
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
    id = "ListResolverQueryLogConfigAssociationsOutput",
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
    id = "ListResolverQueryLogConfigsInput",
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
    id = "ListResolverQueryLogConfigsOutput",
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
    id = "ListResolverRuleAssociationsInput",
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
    id = "ListResolverRuleAssociationsOutput",
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
    id = "ListResolverRulesInput",
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
    id = "ListResolverRulesOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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
    id = "PutFirewallRuleGroupPolicyInput",
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
    id = "PutFirewallRuleGroupPolicyOutput",
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
    id = "PutResolverQueryLogConfigPolicyInput",
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
    id = "PutResolverQueryLogConfigPolicyOutput",
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
    id = "PutResolverRulePolicyInput",
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
    id = "PutResolverRulePolicyOutput",
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
    id = "ResolverRuleConfig",
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

M.UpdateFirewallConfigInput = {
    type = "structure",
    id = "UpdateFirewallConfigInput",
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
    id = "UpdateFirewallConfigOutput",
    members = {
        FirewallConfig = M.FirewallConfig,
    },
}

M.UpdateFirewallDomainsInput = {
    type = "structure",
    id = "UpdateFirewallDomainsInput",
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
    id = "UpdateFirewallDomainsOutput",
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
    id = "UpdateFirewallRuleInput",
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
    id = "UpdateFirewallRuleOutput",
    members = {
        FirewallRule = M.FirewallRule,
    },
}

M.UpdateFirewallRuleGroupAssociationInput = {
    type = "structure",
    id = "UpdateFirewallRuleGroupAssociationInput",
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
    id = "UpdateFirewallRuleGroupAssociationOutput",
    members = {
        FirewallRuleGroupAssociation = M.FirewallRuleGroupAssociation,
    },
}

M.UpdateOutpostResolverInput = {
    type = "structure",
    id = "UpdateOutpostResolverInput",
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
    id = "UpdateOutpostResolverOutput",
    members = {
        OutpostResolver = M.OutpostResolver,
    },
}

M.UpdateResolverConfigInput = {
    type = "structure",
    id = "UpdateResolverConfigInput",
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
    id = "UpdateResolverConfigOutput",
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
    id = "UpdateResolverDnssecConfigInput",
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
    id = "UpdateResolverDnssecConfigOutput",
    members = {
        ResolverDNSSECConfig = M.ResolverDnssecConfig,
    },
}

M.UpdateIpAddress = {
    type = "structure",
    id = "UpdateIpAddress",
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
    id = "UpdateResolverEndpointInput",
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
    id = "UpdateResolverEndpointOutput",
    members = {
        ResolverEndpoint = M.ResolverEndpoint,
    },
}

M.UpdateResolverRuleInput = {
    type = "structure",
    id = "UpdateResolverRuleInput",
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
    id = "UpdateResolverRuleOutput",
    members = {
        ResolverRule = M.ResolverRule,
    },
}

return M
