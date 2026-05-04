local M = {}

M.AcceptSharedDirectoryInput = {
    type = "structure",
    id = "AcceptSharedDirectoryInput",
    members = {
        SharedDirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ShareMethod = {
    ORGANIZATIONS = "ORGANIZATIONS",
    HANDSHAKE = "HANDSHAKE",
}

M.ShareStatus = {
    SHARED = "Shared",
    PENDING_ACCEPTANCE = "PendingAcceptance",
    REJECTED = "Rejected",
    REJECTING = "Rejecting",
    REJECT_FAILED = "RejectFailed",
    SHARING = "Sharing",
    SHARE_FAILED = "ShareFailed",
    DELETED = "Deleted",
    DELETING = "Deleting",
}

M.SharedDirectory = {
    type = "structure",
    id = "SharedDirectory",
    members = {
        OwnerAccountId = {
            type = "string",
        },
        OwnerDirectoryId = {
            type = "string",
        },
        ShareMethod = {
            type = "string",
        },
        SharedAccountId = {
            type = "string",
        },
        SharedDirectoryId = {
            type = "string",
        },
        ShareStatus = {
            type = "string",
        },
        ShareNotes = {
            type = "string",
        },
        CreatedDateTime = {
            type = "timestamp",
        },
        LastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.AcceptSharedDirectoryOutput = {
    type = "structure",
    id = "AcceptSharedDirectoryOutput",
    members = {
        SharedDirectory = M.SharedDirectory,
    },
}

M.ClientException = {
    type = "structure",
    id = "ClientException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DirectoryAlreadySharedException = {
    type = "structure",
    id = "DirectoryAlreadySharedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.EntityDoesNotExistException = {
    type = "structure",
    id = "EntityDoesNotExistException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ServiceException = {
    type = "structure",
    id = "ServiceException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ADAssessmentLimitExceededException = {
    type = "structure",
    id = "ADAssessmentLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.IpRoute = {
    type = "structure",
    id = "IpRoute",
    members = {
        CidrIp = {
            type = "string",
        },
        CidrIpv6 = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.AddIpRoutesInput = {
    type = "structure",
    id = "AddIpRoutesInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpRoutes = {
            type = "list",
            member = M.IpRoute,
            traits = {
                required = true,
            },
        },
        UpdateSecurityGroupForDirectoryControllers = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.AddIpRoutesOutput = {
    type = "structure",
    id = "AddIpRoutesOutput",
}

M.DirectoryUnavailableException = {
    type = "structure",
    id = "DirectoryUnavailableException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.EntityAlreadyExistsException = {
    type = "structure",
    id = "EntityAlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.IpRouteLimitExceededException = {
    type = "structure",
    id = "IpRouteLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DirectoryVpcSettings = {
    type = "structure",
    id = "DirectoryVpcSettings",
    members = {
        VpcId = {
            type = "string",
            traits = {
                required = true,
            },
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

M.AddRegionInput = {
    type = "structure",
    id = "AddRegionInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VPCSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DirectoryVpcSettings }),
    },
}

M.AddRegionOutput = {
    type = "structure",
    id = "AddRegionOutput",
}

M.DirectoryAlreadyInRegionException = {
    type = "structure",
    id = "DirectoryAlreadyInRegionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DirectoryDoesNotExistException = {
    type = "structure",
    id = "DirectoryDoesNotExistException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.RegionLimitExceededException = {
    type = "structure",
    id = "RegionLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
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
        RequestId = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.AddTagsToResourceInput = {
    type = "structure",
    id = "AddTagsToResourceInput",
    members = {
        ResourceId = {
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

M.AddTagsToResourceOutput = {
    type = "structure",
    id = "AddTagsToResourceOutput",
}

M.TagLimitExceededException = {
    type = "structure",
    id = "TagLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.Assessment = {
    type = "structure",
    id = "Assessment",
    members = {
        AssessmentId = {
            type = "string",
        },
        DirectoryId = {
            type = "string",
        },
        DnsName = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        LastUpdateDateTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        StatusCode = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        CustomerDnsIps = {
            type = "list",
            member = { type = "string" },
        },
        VpcId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        SelfManagedInstanceIds = {
            type = "list",
            member = { type = "string" },
        },
        ReportType = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.AssessmentConfiguration = {
    type = "structure",
    id = "AssessmentConfiguration",
    members = {
        CustomerDnsIps = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        DnsName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DirectoryVpcSettings }),
        InstanceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AssessmentValidation = {
    type = "structure",
    id = "AssessmentValidation",
    members = {
        Category = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusCode = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        LastUpdateDateTime = {
            type = "timestamp",
        },
    },
}

M.AssessmentReport = {
    type = "structure",
    id = "AssessmentReport",
    members = {
        DomainControllerIp = {
            type = "string",
        },
        Validations = {
            type = "list",
            member = M.AssessmentValidation,
        },
    },
}

M.AssessmentSummary = {
    type = "structure",
    id = "AssessmentSummary",
    members = {
        AssessmentId = {
            type = "string",
        },
        DirectoryId = {
            type = "string",
        },
        DnsName = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        LastUpdateDateTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        CustomerDnsIps = {
            type = "list",
            member = { type = "string" },
        },
        ReportType = {
            type = "string",
        },
    },
}

M.Attribute = {
    type = "structure",
    id = "Attribute",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.AuthenticationFailedException = {
    type = "structure",
    id = "AuthenticationFailedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.CaEnrollmentPolicyStatus = {
    IN_PROGRESS = "InProgress",
    SUCCESS = "Success",
    FAILED = "Failed",
    DISABLING = "Disabling",
    DISABLED = "Disabled",
    IMPAIRED = "Impaired",
}

M.CancelSchemaExtensionInput = {
    type = "structure",
    id = "CancelSchemaExtensionInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SchemaExtensionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelSchemaExtensionOutput = {
    type = "structure",
    id = "CancelSchemaExtensionOutput",
}

M.ClientCertAuthSettings = {
    type = "structure",
    id = "ClientCertAuthSettings",
    members = {
        OCSPUrl = {
            type = "string",
        },
    },
}

M.CertificateState = {
    REGISTERING = "Registering",
    REGISTERED = "Registered",
    REGISTER_FAILED = "RegisterFailed",
    DEREGISTERING = "Deregistering",
    DEREGISTERED = "Deregistered",
    DEREGISTER_FAILED = "DeregisterFailed",
}

M.CertificateType = {
    CLIENT_CERT_AUTH = "ClientCertAuth",
    CLIENT_LDAPS = "ClientLDAPS",
}

M.Certificate = {
    type = "structure",
    id = "Certificate",
    members = {
        CertificateId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        CommonName = {
            type = "string",
        },
        RegisteredDateTime = {
            type = "timestamp",
        },
        ExpiryDateTime = {
            type = "timestamp",
        },
        Type = {
            type = "string",
        },
        ClientCertAuthSettings = M.ClientCertAuthSettings,
    },
}

M.CertificateAlreadyExistsException = {
    type = "structure",
    id = "CertificateAlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.CertificateDoesNotExistException = {
    type = "structure",
    id = "CertificateDoesNotExistException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.CertificateInfo = {
    type = "structure",
    id = "CertificateInfo",
    members = {
        CertificateId = {
            type = "string",
        },
        CommonName = {
            type = "string",
        },
        State = {
            type = "string",
        },
        ExpiryDateTime = {
            type = "timestamp",
        },
        Type = {
            type = "string",
        },
    },
}

M.CertificateInUseException = {
    type = "structure",
    id = "CertificateInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.CertificateLimitExceededException = {
    type = "structure",
    id = "CertificateLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ClientAuthenticationStatus = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.ClientAuthenticationType = {
    SMART_CARD = "SmartCard",
    SMART_CARD_OR_PASSWORD = "SmartCardOrPassword",
}

M.ClientAuthenticationSettingInfo = {
    type = "structure",
    id = "ClientAuthenticationSettingInfo",
    members = {
        Type = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        LastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.Computer = {
    type = "structure",
    id = "Computer",
    members = {
        ComputerId = {
            type = "string",
        },
        ComputerName = {
            type = "string",
        },
        ComputerAttributes = {
            type = "list",
            member = M.Attribute,
        },
    },
}

M.ReplicationScope = {
    Domain = "Domain",
}

M.ConditionalForwarder = {
    type = "structure",
    id = "ConditionalForwarder",
    members = {
        RemoteDomainName = {
            type = "string",
        },
        DnsIpAddrs = {
            type = "list",
            member = { type = "string" },
        },
        DnsIpv6Addrs = {
            type = "list",
            member = { type = "string" },
        },
        ReplicationScope = {
            type = "string",
        },
    },
}

M.DirectoryConnectSettings = {
    type = "structure",
    id = "DirectoryConnectSettings",
    members = {
        VpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        CustomerDnsIps = {
            type = "list",
            member = { type = "string" },
            traits = {
                default = {},
            },
        },
        CustomerDnsIpsV6 = {
            type = "list",
            member = { type = "string" },
        },
        CustomerUserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NetworkType = {
    DUAL_STACK = "Dual-stack",
    IPV4_ONLY = "IPv4",
    IPV6_ONLY = "IPv6",
}

M.DirectorySize = {
    SMALL = "Small",
    LARGE = "Large",
}

M.ConnectDirectoryInput = {
    type = "structure",
    id = "ConnectDirectoryInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShortName = {
            type = "string",
        },
        Password = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Size = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConnectSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DirectoryConnectSettings }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.ConnectDirectoryOutput = {
    type = "structure",
    id = "ConnectDirectoryOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
    },
}

M.DirectoryLimitExceededException = {
    type = "structure",
    id = "DirectoryLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.CreateAliasInput = {
    type = "structure",
    id = "CreateAliasInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAliasOutput = {
    type = "structure",
    id = "CreateAliasOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
        Alias = {
            type = "string",
        },
    },
}

M.CreateComputerInput = {
    type = "structure",
    id = "CreateComputerInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComputerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Password = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationalUnitDistinguishedName = {
            type = "string",
        },
        ComputerAttributes = {
            type = "list",
            member = M.Attribute,
        },
    },
}

M.CreateComputerOutput = {
    type = "structure",
    id = "CreateComputerOutput",
    members = {
        Computer = M.Computer,
    },
}

M.CreateConditionalForwarderInput = {
    type = "structure",
    id = "CreateConditionalForwarderInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RemoteDomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DnsIpAddrs = {
            type = "list",
            member = { type = "string" },
            traits = {
                default = {},
            },
        },
        DnsIpv6Addrs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateConditionalForwarderOutput = {
    type = "structure",
    id = "CreateConditionalForwarderOutput",
}

M.CreateDirectoryInput = {
    type = "structure",
    id = "CreateDirectoryInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShortName = {
            type = "string",
        },
        Password = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Size = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcSettings = M.DirectoryVpcSettings,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.CreateDirectoryOutput = {
    type = "structure",
    id = "CreateDirectoryOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
    },
}

M.CreateHybridADInput = {
    type = "structure",
    id = "CreateHybridADInput",
    members = {
        SecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssessmentId = {
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

M.CreateHybridADOutput = {
    type = "structure",
    id = "CreateHybridADOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
    },
}

M.CreateLogSubscriptionInput = {
    type = "structure",
    id = "CreateLogSubscriptionInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLogSubscriptionOutput = {
    type = "structure",
    id = "CreateLogSubscriptionOutput",
}

M.InsufficientPermissionsException = {
    type = "structure",
    id = "InsufficientPermissionsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DirectoryEdition = {
    ENTERPRISE = "Enterprise",
    STANDARD = "Standard",
    HYBRID = "Hybrid",
}

M.CreateMicrosoftADInput = {
    type = "structure",
    id = "CreateMicrosoftADInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShortName = {
            type = "string",
        },
        Password = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        VpcSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DirectoryVpcSettings }),
        Edition = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.CreateMicrosoftADOutput = {
    type = "structure",
    id = "CreateMicrosoftADOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
    },
}

M.CreateSnapshotInput = {
    type = "structure",
    id = "CreateSnapshotInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
    },
}

M.CreateSnapshotOutput = {
    type = "structure",
    id = "CreateSnapshotOutput",
    members = {
        SnapshotId = {
            type = "string",
        },
    },
}

M.SnapshotLimitExceededException = {
    type = "structure",
    id = "SnapshotLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.SelectiveAuth = {
    ENABLED = "Enabled",
    DISABLED = "Disabled",
}

M.TrustDirection = {
    ONE_WAY_OUTGOING = "One-Way: Outgoing",
    ONE_WAY_INCOMING = "One-Way: Incoming",
    TWO_WAY = "Two-Way",
}

M.TrustType = {
    FOREST = "Forest",
    EXTERNAL = "External",
}

M.CreateTrustInput = {
    type = "structure",
    id = "CreateTrustInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RemoteDomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrustPassword = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrustDirection = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrustType = {
            type = "string",
        },
        ConditionalForwarderIpAddrs = {
            type = "list",
            member = { type = "string" },
        },
        ConditionalForwarderIpv6Addrs = {
            type = "list",
            member = { type = "string" },
        },
        SelectiveAuth = {
            type = "string",
        },
    },
}

M.CreateTrustOutput = {
    type = "structure",
    id = "CreateTrustOutput",
    members = {
        TrustId = {
            type = "string",
        },
    },
}

M.DataAccessStatus = {
    DISABLED = "Disabled",
    DISABLING = "Disabling",
    ENABLED = "Enabled",
    ENABLING = "Enabling",
    FAILED = "Failed",
}

M.DeleteADAssessmentInput = {
    type = "structure",
    id = "DeleteADAssessmentInput",
    members = {
        AssessmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteADAssessmentOutput = {
    type = "structure",
    id = "DeleteADAssessmentOutput",
    members = {
        AssessmentId = {
            type = "string",
        },
    },
}

M.DeleteConditionalForwarderInput = {
    type = "structure",
    id = "DeleteConditionalForwarderInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RemoteDomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteConditionalForwarderOutput = {
    type = "structure",
    id = "DeleteConditionalForwarderOutput",
}

M.DeleteDirectoryInput = {
    type = "structure",
    id = "DeleteDirectoryInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDirectoryOutput = {
    type = "structure",
    id = "DeleteDirectoryOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
    },
}

M.DeleteLogSubscriptionInput = {
    type = "structure",
    id = "DeleteLogSubscriptionInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLogSubscriptionOutput = {
    type = "structure",
    id = "DeleteLogSubscriptionOutput",
}

M.DeleteSnapshotInput = {
    type = "structure",
    id = "DeleteSnapshotInput",
    members = {
        SnapshotId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSnapshotOutput = {
    type = "structure",
    id = "DeleteSnapshotOutput",
    members = {
        SnapshotId = {
            type = "string",
        },
    },
}

M.DeleteTrustInput = {
    type = "structure",
    id = "DeleteTrustInput",
    members = {
        TrustId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeleteAssociatedConditionalForwarder = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteTrustOutput = {
    type = "structure",
    id = "DeleteTrustOutput",
    members = {
        TrustId = {
            type = "string",
        },
    },
}

M.DeregisterCertificateInput = {
    type = "structure",
    id = "DeregisterCertificateInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterCertificateOutput = {
    type = "structure",
    id = "DeregisterCertificateOutput",
}

M.DeregisterEventTopicInput = {
    type = "structure",
    id = "DeregisterEventTopicInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TopicName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterEventTopicOutput = {
    type = "structure",
    id = "DeregisterEventTopicOutput",
}

M.DescribeADAssessmentInput = {
    type = "structure",
    id = "DescribeADAssessmentInput",
    members = {
        AssessmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeADAssessmentOutput = {
    type = "structure",
    id = "DescribeADAssessmentOutput",
    members = {
        Assessment = M.Assessment,
        AssessmentReports = {
            type = "list",
            member = M.AssessmentReport,
        },
    },
}

M.DescribeCAEnrollmentPolicyInput = {
    type = "structure",
    id = "DescribeCAEnrollmentPolicyInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeCAEnrollmentPolicyOutput = {
    type = "structure",
    id = "DescribeCAEnrollmentPolicyOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
        PcaConnectorArn = {
            type = "string",
        },
        CaEnrollmentPolicyStatus = {
            type = "string",
        },
        LastUpdatedDateTime = {
            type = "timestamp",
        },
        CaEnrollmentPolicyStatusReason = {
            type = "string",
        },
    },
}

M.DescribeCertificateInput = {
    type = "structure",
    id = "DescribeCertificateInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeCertificateOutput = {
    type = "structure",
    id = "DescribeCertificateOutput",
    members = {
        Certificate = M.Certificate,
    },
}

M.DescribeClientAuthenticationSettingsInput = {
    type = "structure",
    id = "DescribeClientAuthenticationSettingsInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.DescribeClientAuthenticationSettingsOutput = {
    type = "structure",
    id = "DescribeClientAuthenticationSettingsOutput",
    members = {
        ClientAuthenticationSettingsInfo = {
            type = "list",
            member = M.ClientAuthenticationSettingInfo,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConditionalForwardersInput = {
    type = "structure",
    id = "DescribeConditionalForwardersInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RemoteDomainNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeConditionalForwardersOutput = {
    type = "structure",
    id = "DescribeConditionalForwardersOutput",
    members = {
        ConditionalForwarders = {
            type = "list",
            member = M.ConditionalForwarder,
        },
    },
}

M.DescribeDirectoriesInput = {
    type = "structure",
    id = "DescribeDirectoriesInput",
    members = {
        DirectoryIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.DirectoryConnectSettingsDescription = {
    type = "structure",
    id = "DirectoryConnectSettingsDescription",
    members = {
        VpcId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        CustomerUserName = {
            type = "string",
        },
        SecurityGroupId = {
            type = "string",
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        ConnectIps = {
            type = "list",
            member = { type = "string" },
        },
        ConnectIpsV6 = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.HybridSettingsDescription = {
    type = "structure",
    id = "HybridSettingsDescription",
    members = {
        SelfManagedDnsIpAddrs = {
            type = "list",
            member = { type = "string" },
        },
        SelfManagedInstanceIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OSVersion = {
    VERSION_2012 = "SERVER_2012",
    VERSION_2019 = "SERVER_2019",
}

M.RadiusAuthenticationProtocol = {
    PAP = "PAP",
    CHAP = "CHAP",
    MSCHAPV1 = "MS-CHAPv1",
    MSCHAPV2 = "MS-CHAPv2",
}

M.RadiusSettings = {
    type = "structure",
    id = "RadiusSettings",
    members = {
        RadiusServers = {
            type = "list",
            member = { type = "string" },
        },
        RadiusServersIpv6 = {
            type = "list",
            member = { type = "string" },
        },
        RadiusPort = {
            type = "integer",
        },
        RadiusTimeout = {
            type = "integer",
        },
        RadiusRetries = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        SharedSecret = {
            type = "string",
        },
        AuthenticationProtocol = {
            type = "string",
        },
        DisplayLabel = {
            type = "string",
        },
        UseSameUsername = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.RadiusStatus = {
    CREATING = "Creating",
    COMPLETED = "Completed",
    FAILED = "Failed",
}

M.DirectoryVpcSettingsDescription = {
    type = "structure",
    id = "DirectoryVpcSettingsDescription",
    members = {
        VpcId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupId = {
            type = "string",
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OwnerDirectoryDescription = {
    type = "structure",
    id = "OwnerDirectoryDescription",
    members = {
        DirectoryId = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        DnsIpAddrs = {
            type = "list",
            member = { type = "string" },
        },
        DnsIpv6Addrs = {
            type = "list",
            member = { type = "string" },
        },
        VpcSettings = M.DirectoryVpcSettingsDescription,
        RadiusSettings = M.RadiusSettings,
        RadiusStatus = {
            type = "string",
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.RegionsInfo = {
    type = "structure",
    id = "RegionsInfo",
    members = {
        PrimaryRegion = {
            type = "string",
        },
        AdditionalRegions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DirectoryStage = {
    REQUESTED = "Requested",
    CREATING = "Creating",
    CREATED = "Created",
    ACTIVE = "Active",
    INOPERABLE = "Inoperable",
    IMPAIRED = "Impaired",
    RESTORING = "Restoring",
    RESTOREFAILED = "RestoreFailed",
    DELETING = "Deleting",
    DELETED = "Deleted",
    FAILED = "Failed",
    UPDATING = "Updating",
}

M.DirectoryType = {
    SIMPLE_AD = "SimpleAD",
    AD_CONNECTOR = "ADConnector",
    MICROSOFT_AD = "MicrosoftAD",
    SHARED_MICROSOFT_AD = "SharedMicrosoftAD",
}

M.DirectoryDescription = {
    type = "structure",
    id = "DirectoryDescription",
    members = {
        DirectoryId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ShortName = {
            type = "string",
        },
        Size = {
            type = "string",
        },
        Edition = {
            type = "string",
        },
        Alias = {
            type = "string",
        },
        AccessUrl = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DnsIpAddrs = {
            type = "list",
            member = { type = "string" },
        },
        DnsIpv6Addrs = {
            type = "list",
            member = { type = "string" },
        },
        Stage = {
            type = "string",
        },
        ShareStatus = {
            type = "string",
        },
        ShareMethod = {
            type = "string",
        },
        ShareNotes = {
            type = "string",
        },
        LaunchTime = {
            type = "timestamp",
        },
        StageLastUpdatedDateTime = {
            type = "timestamp",
        },
        Type = {
            type = "string",
        },
        VpcSettings = M.DirectoryVpcSettingsDescription,
        ConnectSettings = M.DirectoryConnectSettingsDescription,
        RadiusSettings = M.RadiusSettings,
        RadiusStatus = {
            type = "string",
        },
        StageReason = {
            type = "string",
        },
        SsoEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DesiredNumberOfDomainControllers = {
            type = "integer",
        },
        OwnerDirectoryDescription = M.OwnerDirectoryDescription,
        RegionsInfo = M.RegionsInfo,
        OsVersion = {
            type = "string",
        },
        HybridSettings = M.HybridSettingsDescription,
        NetworkType = {
            type = "string",
        },
    },
}

M.DescribeDirectoriesOutput = {
    type = "structure",
    id = "DescribeDirectoriesOutput",
    members = {
        DirectoryDescriptions = {
            type = "list",
            member = M.DirectoryDescription,
        },
        NextToken = {
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
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeDirectoryDataAccessInput = {
    type = "structure",
    id = "DescribeDirectoryDataAccessInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDirectoryDataAccessOutput = {
    type = "structure",
    id = "DescribeDirectoryDataAccessOutput",
    members = {
        DataAccessStatus = {
            type = "string",
        },
    },
}

M.DescribeDomainControllersInput = {
    type = "structure",
    id = "DescribeDomainControllersInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DomainControllerIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.DomainControllerStatus = {
    CREATING = "Creating",
    ACTIVE = "Active",
    IMPAIRED = "Impaired",
    RESTORING = "Restoring",
    DELETING = "Deleting",
    DELETED = "Deleted",
    FAILED = "Failed",
    UPDATING = "Updating",
}

M.DomainController = {
    type = "structure",
    id = "DomainController",
    members = {
        DirectoryId = {
            type = "string",
        },
        DomainControllerId = {
            type = "string",
        },
        DnsIpAddr = {
            type = "string",
        },
        DnsIpv6Addr = {
            type = "string",
        },
        VpcId = {
            type = "string",
        },
        SubnetId = {
            type = "string",
        },
        AvailabilityZone = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        LaunchTime = {
            type = "timestamp",
        },
        StatusLastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeDomainControllersOutput = {
    type = "structure",
    id = "DescribeDomainControllersOutput",
    members = {
        DomainControllers = {
            type = "list",
            member = M.DomainController,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeEventTopicsInput = {
    type = "structure",
    id = "DescribeEventTopicsInput",
    members = {
        DirectoryId = {
            type = "string",
        },
        TopicNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TopicStatus = {
    REGISTERED = "Registered",
    TOPIC_NOT_FOUND = "Topic not found",
    FAILED = "Failed",
    DELETED = "Deleted",
}

M.EventTopic = {
    type = "structure",
    id = "EventTopic",
    members = {
        DirectoryId = {
            type = "string",
        },
        TopicName = {
            type = "string",
        },
        TopicArn = {
            type = "string",
        },
        CreatedDateTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
    },
}

M.DescribeEventTopicsOutput = {
    type = "structure",
    id = "DescribeEventTopicsOutput",
    members = {
        EventTopics = {
            type = "list",
            member = M.EventTopic,
        },
    },
}

M.HybridUpdateType = {
    SELF_MANAGED_INSTANCES = "SelfManagedInstances",
    HYBRID_ADMINISTRATOR_ACCOUNT = "HybridAdministratorAccount",
}

M.DescribeHybridADUpdateInput = {
    type = "structure",
    id = "DescribeHybridADUpdateInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateType = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.HybridUpdateValue = {
    type = "structure",
    id = "HybridUpdateValue",
    members = {
        InstanceIds = {
            type = "list",
            member = { type = "string" },
        },
        DnsIps = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateStatus = {
    UPDATED = "Updated",
    UPDATING = "Updating",
    UPDATE_FAILED = "UpdateFailed",
}

M.HybridUpdateInfoEntry = {
    type = "structure",
    id = "HybridUpdateInfoEntry",
    members = {
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        InitiatedBy = {
            type = "string",
        },
        NewValue = M.HybridUpdateValue,
        PreviousValue = M.HybridUpdateValue,
        StartTime = {
            type = "timestamp",
        },
        LastUpdatedDateTime = {
            type = "timestamp",
        },
        AssessmentId = {
            type = "string",
        },
    },
}

M.HybridUpdateActivities = {
    type = "structure",
    id = "HybridUpdateActivities",
    members = {
        SelfManagedInstances = {
            type = "list",
            member = M.HybridUpdateInfoEntry,
        },
        HybridAdministratorAccount = {
            type = "list",
            member = M.HybridUpdateInfoEntry,
        },
    },
}

M.DescribeHybridADUpdateOutput = {
    type = "structure",
    id = "DescribeHybridADUpdateOutput",
    members = {
        UpdateActivities = M.HybridUpdateActivities,
        NextToken = {
            type = "string",
        },
    },
}

M.LDAPSType = {
    CLIENT = "Client",
}

M.DescribeLDAPSSettingsInput = {
    type = "structure",
    id = "DescribeLDAPSSettingsInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.LDAPSStatus = {
    ENABLING = "Enabling",
    ENABLED = "Enabled",
    ENABLE_FAILED = "EnableFailed",
    DISABLED = "Disabled",
}

M.LDAPSSettingInfo = {
    type = "structure",
    id = "LDAPSSettingInfo",
    members = {
        LDAPSStatus = {
            type = "string",
        },
        LDAPSStatusReason = {
            type = "string",
        },
        LastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeLDAPSSettingsOutput = {
    type = "structure",
    id = "DescribeLDAPSSettingsOutput",
    members = {
        LDAPSSettingsInfo = {
            type = "list",
            member = M.LDAPSSettingInfo,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeRegionsInput = {
    type = "structure",
    id = "DescribeRegionsInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegionName = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RegionType = {
    PRIMARY = "Primary",
    ADDITIONAL = "Additional",
}

M.RegionDescription = {
    type = "structure",
    id = "RegionDescription",
    members = {
        DirectoryId = {
            type = "string",
        },
        RegionName = {
            type = "string",
        },
        RegionType = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        VpcSettings = M.DirectoryVpcSettings,
        DesiredNumberOfDomainControllers = {
            type = "integer",
        },
        LaunchTime = {
            type = "timestamp",
        },
        StatusLastUpdatedDateTime = {
            type = "timestamp",
        },
        LastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeRegionsOutput = {
    type = "structure",
    id = "DescribeRegionsOutput",
    members = {
        RegionsDescription = {
            type = "list",
            member = M.RegionDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DirectoryConfigurationStatus = {
    REQUESTED = "Requested",
    UPDATING = "Updating",
    UPDATED = "Updated",
    FAILED = "Failed",
    DEFAULT = "Default",
}

M.DescribeSettingsInput = {
    type = "structure",
    id = "DescribeSettingsInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SettingEntry = {
    type = "structure",
    id = "SettingEntry",
    members = {
        Type = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        AllowedValues = {
            type = "string",
        },
        AppliedValue = {
            type = "string",
        },
        RequestedValue = {
            type = "string",
        },
        RequestStatus = {
            type = "string",
        },
        RequestDetailedStatus = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RequestStatusMessage = {
            type = "string",
        },
        LastUpdatedDateTime = {
            type = "timestamp",
        },
        LastRequestedDateTime = {
            type = "timestamp",
        },
        DataType = {
            type = "string",
        },
    },
}

M.DescribeSettingsOutput = {
    type = "structure",
    id = "DescribeSettingsOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
        SettingEntries = {
            type = "list",
            member = M.SettingEntry,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeSharedDirectoriesInput = {
    type = "structure",
    id = "DescribeSharedDirectoriesInput",
    members = {
        OwnerDirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SharedDirectoryIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.DescribeSharedDirectoriesOutput = {
    type = "structure",
    id = "DescribeSharedDirectoriesOutput",
    members = {
        SharedDirectories = {
            type = "list",
            member = M.SharedDirectory,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeSnapshotsInput = {
    type = "structure",
    id = "DescribeSnapshotsInput",
    members = {
        DirectoryId = {
            type = "string",
        },
        SnapshotIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.SnapshotStatus = {
    CREATING = "Creating",
    COMPLETED = "Completed",
    FAILED = "Failed",
}

M.SnapshotType = {
    AUTO = "Auto",
    MANUAL = "Manual",
}

M.Snapshot = {
    type = "structure",
    id = "Snapshot",
    members = {
        DirectoryId = {
            type = "string",
        },
        SnapshotId = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
    },
}

M.DescribeSnapshotsOutput = {
    type = "structure",
    id = "DescribeSnapshotsOutput",
    members = {
        Snapshots = {
            type = "list",
            member = M.Snapshot,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeTrustsInput = {
    type = "structure",
    id = "DescribeTrustsInput",
    members = {
        DirectoryId = {
            type = "string",
        },
        TrustIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.TrustState = {
    CREATING = "Creating",
    CREATED = "Created",
    VERIFYING = "Verifying",
    VERIFY_FAILED = "VerifyFailed",
    VERIFIED = "Verified",
    UPDATING = "Updating",
    UPDATE_FAILED = "UpdateFailed",
    UPDATED = "Updated",
    DELETING = "Deleting",
    DELETED = "Deleted",
    FAILED = "Failed",
}

M.Trust = {
    type = "structure",
    id = "Trust",
    members = {
        DirectoryId = {
            type = "string",
        },
        TrustId = {
            type = "string",
        },
        RemoteDomainName = {
            type = "string",
        },
        TrustType = {
            type = "string",
        },
        TrustDirection = {
            type = "string",
        },
        TrustState = {
            type = "string",
        },
        CreatedDateTime = {
            type = "timestamp",
        },
        LastUpdatedDateTime = {
            type = "timestamp",
        },
        StateLastUpdatedDateTime = {
            type = "timestamp",
        },
        TrustStateReason = {
            type = "string",
        },
        SelectiveAuth = {
            type = "string",
        },
    },
}

M.DescribeTrustsOutput = {
    type = "structure",
    id = "DescribeTrustsOutput",
    members = {
        Trusts = {
            type = "list",
            member = M.Trust,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateType = {
    OS = "OS",
    NETWORK = "NETWORK",
    SIZE = "SIZE",
}

M.DescribeUpdateDirectoryInput = {
    type = "structure",
    id = "DescribeUpdateDirectoryInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RegionName = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OSUpdateSettings = {
    type = "structure",
    id = "OSUpdateSettings",
    members = {
        OSVersion = {
            type = "string",
        },
    },
}

M.UpdateValue = {
    type = "structure",
    id = "UpdateValue",
    members = {
        OSUpdateSettings = M.OSUpdateSettings,
    },
}

M.UpdateInfoEntry = {
    type = "structure",
    id = "UpdateInfoEntry",
    members = {
        Region = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        InitiatedBy = {
            type = "string",
        },
        NewValue = M.UpdateValue,
        PreviousValue = M.UpdateValue,
        StartTime = {
            type = "timestamp",
        },
        LastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeUpdateDirectoryOutput = {
    type = "structure",
    id = "DescribeUpdateDirectoryOutput",
    members = {
        UpdateActivities = {
            type = "list",
            member = M.UpdateInfoEntry,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DirectoryInDesiredStateException = {
    type = "structure",
    id = "DirectoryInDesiredStateException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DirectoryLimits = {
    type = "structure",
    id = "DirectoryLimits",
    members = {
        CloudOnlyDirectoriesLimit = {
            type = "integer",
        },
        CloudOnlyDirectoriesCurrentCount = {
            type = "integer",
        },
        CloudOnlyDirectoriesLimitReached = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CloudOnlyMicrosoftADLimit = {
            type = "integer",
        },
        CloudOnlyMicrosoftADCurrentCount = {
            type = "integer",
        },
        CloudOnlyMicrosoftADLimitReached = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ConnectedDirectoriesLimit = {
            type = "integer",
        },
        ConnectedDirectoriesCurrentCount = {
            type = "integer",
        },
        ConnectedDirectoriesLimitReached = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DirectoryNotSharedException = {
    type = "structure",
    id = "DirectoryNotSharedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DisableAlreadyInProgressException = {
    type = "structure",
    id = "DisableAlreadyInProgressException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DisableCAEnrollmentPolicyInput = {
    type = "structure",
    id = "DisableCAEnrollmentPolicyInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableCAEnrollmentPolicyOutput = {
    type = "structure",
    id = "DisableCAEnrollmentPolicyOutput",
}

M.DisableClientAuthenticationInput = {
    type = "structure",
    id = "DisableClientAuthenticationInput",
    members = {
        DirectoryId = {
            type = "string",
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

M.DisableClientAuthenticationOutput = {
    type = "structure",
    id = "DisableClientAuthenticationOutput",
}

M.InvalidClientAuthStatusException = {
    type = "structure",
    id = "InvalidClientAuthStatusException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DisableDirectoryDataAccessInput = {
    type = "structure",
    id = "DisableDirectoryDataAccessInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableDirectoryDataAccessOutput = {
    type = "structure",
    id = "DisableDirectoryDataAccessOutput",
}

M.DisableLDAPSInput = {
    type = "structure",
    id = "DisableLDAPSInput",
    members = {
        DirectoryId = {
            type = "string",
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

M.DisableLDAPSOutput = {
    type = "structure",
    id = "DisableLDAPSOutput",
}

M.InvalidLDAPSStatusException = {
    type = "structure",
    id = "InvalidLDAPSStatusException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.DisableRadiusInput = {
    type = "structure",
    id = "DisableRadiusInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableRadiusOutput = {
    type = "structure",
    id = "DisableRadiusOutput",
}

M.DisableSsoInput = {
    type = "structure",
    id = "DisableSsoInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
            type = "string",
        },
        Password = {
            type = "string",
        },
    },
}

M.DisableSsoOutput = {
    type = "structure",
    id = "DisableSsoOutput",
}

M.EnableAlreadyInProgressException = {
    type = "structure",
    id = "EnableAlreadyInProgressException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.EnableCAEnrollmentPolicyInput = {
    type = "structure",
    id = "EnableCAEnrollmentPolicyInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PcaConnectorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableCAEnrollmentPolicyOutput = {
    type = "structure",
    id = "EnableCAEnrollmentPolicyOutput",
}

M.EnableClientAuthenticationInput = {
    type = "structure",
    id = "EnableClientAuthenticationInput",
    members = {
        DirectoryId = {
            type = "string",
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

M.EnableClientAuthenticationOutput = {
    type = "structure",
    id = "EnableClientAuthenticationOutput",
}

M.NoAvailableCertificateException = {
    type = "structure",
    id = "NoAvailableCertificateException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.EnableDirectoryDataAccessInput = {
    type = "structure",
    id = "EnableDirectoryDataAccessInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableDirectoryDataAccessOutput = {
    type = "structure",
    id = "EnableDirectoryDataAccessOutput",
}

M.EnableLDAPSInput = {
    type = "structure",
    id = "EnableLDAPSInput",
    members = {
        DirectoryId = {
            type = "string",
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

M.EnableLDAPSOutput = {
    type = "structure",
    id = "EnableLDAPSOutput",
}

M.EnableRadiusInput = {
    type = "structure",
    id = "EnableRadiusInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RadiusSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RadiusSettings }),
    },
}

M.EnableRadiusOutput = {
    type = "structure",
    id = "EnableRadiusOutput",
}

M.EnableSsoInput = {
    type = "structure",
    id = "EnableSsoInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
            type = "string",
        },
        Password = {
            type = "string",
        },
    },
}

M.EnableSsoOutput = {
    type = "structure",
    id = "EnableSsoOutput",
}

M.GetDirectoryLimitsInput = {
    type = "structure",
    id = "GetDirectoryLimitsInput",
}

M.GetDirectoryLimitsOutput = {
    type = "structure",
    id = "GetDirectoryLimitsOutput",
    members = {
        DirectoryLimits = M.DirectoryLimits,
    },
}

M.GetSnapshotLimitsInput = {
    type = "structure",
    id = "GetSnapshotLimitsInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SnapshotLimits = {
    type = "structure",
    id = "SnapshotLimits",
    members = {
        ManualSnapshotsLimit = {
            type = "integer",
        },
        ManualSnapshotsCurrentCount = {
            type = "integer",
        },
        ManualSnapshotsLimitReached = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetSnapshotLimitsOutput = {
    type = "structure",
    id = "GetSnapshotLimitsOutput",
    members = {
        SnapshotLimits = M.SnapshotLimits,
    },
}

M.ListADAssessmentsInput = {
    type = "structure",
    id = "ListADAssessmentsInput",
    members = {
        DirectoryId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.ListADAssessmentsOutput = {
    type = "structure",
    id = "ListADAssessmentsOutput",
    members = {
        Assessments = {
            type = "list",
            member = M.AssessmentSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCertificatesInput = {
    type = "structure",
    id = "ListCertificatesInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.ListCertificatesOutput = {
    type = "structure",
    id = "ListCertificatesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        CertificatesInfo = {
            type = "list",
            member = M.CertificateInfo,
        },
    },
}

M.ListIpRoutesInput = {
    type = "structure",
    id = "ListIpRoutesInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.IpRouteStatusMsg = {
    ADDING = "Adding",
    ADDED = "Added",
    REMOVING = "Removing",
    REMOVED = "Removed",
    ADD_FAILED = "AddFailed",
    REMOVE_FAILED = "RemoveFailed",
}

M.IpRouteInfo = {
    type = "structure",
    id = "IpRouteInfo",
    members = {
        DirectoryId = {
            type = "string",
        },
        CidrIp = {
            type = "string",
        },
        CidrIpv6 = {
            type = "string",
        },
        IpRouteStatusMsg = {
            type = "string",
        },
        AddedDateTime = {
            type = "timestamp",
        },
        IpRouteStatusReason = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.ListIpRoutesOutput = {
    type = "structure",
    id = "ListIpRoutesOutput",
    members = {
        IpRoutesInfo = {
            type = "list",
            member = M.IpRouteInfo,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLogSubscriptionsInput = {
    type = "structure",
    id = "ListLogSubscriptionsInput",
    members = {
        DirectoryId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.LogSubscription = {
    type = "structure",
    id = "LogSubscription",
    members = {
        DirectoryId = {
            type = "string",
        },
        LogGroupName = {
            type = "string",
        },
        SubscriptionCreatedDateTime = {
            type = "timestamp",
        },
    },
}

M.ListLogSubscriptionsOutput = {
    type = "structure",
    id = "ListLogSubscriptionsOutput",
    members = {
        LogSubscriptions = {
            type = "list",
            member = M.LogSubscription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSchemaExtensionsInput = {
    type = "structure",
    id = "ListSchemaExtensionsInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
        },
    },
}

M.SchemaExtensionStatus = {
    INITIALIZING = "Initializing",
    CREATING_SNAPSHOT = "CreatingSnapshot",
    UPDATING_SCHEMA = "UpdatingSchema",
    REPLICATING = "Replicating",
    CANCEL_IN_PROGRESS = "CancelInProgress",
    ROLLBACK_IN_PROGRESS = "RollbackInProgress",
    CANCELLED = "Cancelled",
    FAILED = "Failed",
    COMPLETED = "Completed",
}

M.SchemaExtensionInfo = {
    type = "structure",
    id = "SchemaExtensionInfo",
    members = {
        DirectoryId = {
            type = "string",
        },
        SchemaExtensionId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        SchemaExtensionStatus = {
            type = "string",
        },
        SchemaExtensionStatusReason = {
            type = "string",
        },
        StartDateTime = {
            type = "timestamp",
        },
        EndDateTime = {
            type = "timestamp",
        },
    },
}

M.ListSchemaExtensionsOutput = {
    type = "structure",
    id = "ListSchemaExtensionsOutput",
    members = {
        SchemaExtensionsInfo = {
            type = "list",
            member = M.SchemaExtensionInfo,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "integer",
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

M.InvalidCertificateException = {
    type = "structure",
    id = "InvalidCertificateException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.RegisterCertificateInput = {
    type = "structure",
    id = "RegisterCertificateInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificateData = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
        },
        ClientCertAuthSettings = M.ClientCertAuthSettings,
    },
}

M.RegisterCertificateOutput = {
    type = "structure",
    id = "RegisterCertificateOutput",
    members = {
        CertificateId = {
            type = "string",
        },
    },
}

M.RegisterEventTopicInput = {
    type = "structure",
    id = "RegisterEventTopicInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TopicName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterEventTopicOutput = {
    type = "structure",
    id = "RegisterEventTopicOutput",
}

M.RejectSharedDirectoryInput = {
    type = "structure",
    id = "RejectSharedDirectoryInput",
    members = {
        SharedDirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RejectSharedDirectoryOutput = {
    type = "structure",
    id = "RejectSharedDirectoryOutput",
    members = {
        SharedDirectoryId = {
            type = "string",
        },
    },
}

M.RemoveIpRoutesInput = {
    type = "structure",
    id = "RemoveIpRoutesInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CidrIps = {
            type = "list",
            member = { type = "string" },
            traits = {
                default = {},
            },
        },
        CidrIpv6s = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RemoveIpRoutesOutput = {
    type = "structure",
    id = "RemoveIpRoutesOutput",
}

M.RemoveRegionInput = {
    type = "structure",
    id = "RemoveRegionInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveRegionOutput = {
    type = "structure",
    id = "RemoveRegionOutput",
}

M.RemoveTagsFromResourceInput = {
    type = "structure",
    id = "RemoveTagsFromResourceInput",
    members = {
        ResourceId = {
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

M.RemoveTagsFromResourceOutput = {
    type = "structure",
    id = "RemoveTagsFromResourceOutput",
}

M.InvalidPasswordException = {
    type = "structure",
    id = "InvalidPasswordException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.ResetUserPasswordInput = {
    type = "structure",
    id = "ResetUserPasswordInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewPassword = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResetUserPasswordOutput = {
    type = "structure",
    id = "ResetUserPasswordOutput",
}

M.UserDoesNotExistException = {
    type = "structure",
    id = "UserDoesNotExistException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.RestoreFromSnapshotInput = {
    type = "structure",
    id = "RestoreFromSnapshotInput",
    members = {
        SnapshotId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RestoreFromSnapshotOutput = {
    type = "structure",
    id = "RestoreFromSnapshotOutput",
}

M.InvalidTargetException = {
    type = "structure",
    id = "InvalidTargetException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.OrganizationsException = {
    type = "structure",
    id = "OrganizationsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.TargetType = {
    ACCOUNT = "ACCOUNT",
}

M.ShareTarget = {
    type = "structure",
    id = "ShareTarget",
    members = {
        Id = {
            type = "string",
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

M.ShareDirectoryInput = {
    type = "structure",
    id = "ShareDirectoryInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShareNotes = {
            type = "string",
        },
        ShareTarget = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ShareTarget }),
        ShareMethod = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ShareDirectoryOutput = {
    type = "structure",
    id = "ShareDirectoryOutput",
    members = {
        SharedDirectoryId = {
            type = "string",
        },
    },
}

M.ShareLimitExceededException = {
    type = "structure",
    id = "ShareLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.StartADAssessmentInput = {
    type = "structure",
    id = "StartADAssessmentInput",
    members = {
        AssessmentConfiguration = M.AssessmentConfiguration,
        DirectoryId = {
            type = "string",
        },
    },
}

M.StartADAssessmentOutput = {
    type = "structure",
    id = "StartADAssessmentOutput",
    members = {
        AssessmentId = {
            type = "string",
        },
    },
}

M.StartSchemaExtensionInput = {
    type = "structure",
    id = "StartSchemaExtensionInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateSnapshotBeforeSchemaExtension = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        LdifContent = {
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
    },
}

M.StartSchemaExtensionOutput = {
    type = "structure",
    id = "StartSchemaExtensionOutput",
    members = {
        SchemaExtensionId = {
            type = "string",
        },
    },
}

M.UnshareTarget = {
    type = "structure",
    id = "UnshareTarget",
    members = {
        Id = {
            type = "string",
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

M.UnshareDirectoryInput = {
    type = "structure",
    id = "UnshareDirectoryInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UnshareTarget = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UnshareTarget }),
    },
}

M.UnshareDirectoryOutput = {
    type = "structure",
    id = "UnshareDirectoryOutput",
    members = {
        SharedDirectoryId = {
            type = "string",
        },
    },
}

M.UpdateConditionalForwarderInput = {
    type = "structure",
    id = "UpdateConditionalForwarderInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RemoteDomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DnsIpAddrs = {
            type = "list",
            member = { type = "string" },
            traits = {
                default = {},
            },
        },
        DnsIpv6Addrs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateConditionalForwarderOutput = {
    type = "structure",
    id = "UpdateConditionalForwarderOutput",
}

M.DirectorySizeUpdateSettings = {
    type = "structure",
    id = "DirectorySizeUpdateSettings",
    members = {
        DirectorySize = {
            type = "string",
        },
    },
}

M.NetworkUpdateSettings = {
    type = "structure",
    id = "NetworkUpdateSettings",
    members = {
        NetworkType = {
            type = "string",
        },
        CustomerDnsIpsV6 = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateDirectorySetupInput = {
    type = "structure",
    id = "UpdateDirectorySetupInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OSUpdateSettings = M.OSUpdateSettings,
        DirectorySizeUpdateSettings = M.DirectorySizeUpdateSettings,
        NetworkUpdateSettings = M.NetworkUpdateSettings,
        CreateSnapshotBeforeUpdate = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.UpdateDirectorySetupOutput = {
    type = "structure",
    id = "UpdateDirectorySetupOutput",
}

M.HybridAdministratorAccountUpdate = {
    type = "structure",
    id = "HybridAdministratorAccountUpdate",
    members = {
        SecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HybridCustomerInstancesSettings = {
    type = "structure",
    id = "HybridCustomerInstancesSettings",
    members = {
        CustomerDnsIps = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        InstanceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateHybridADInput = {
    type = "structure",
    id = "UpdateHybridADInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HybridAdministratorAccountUpdate = M.HybridAdministratorAccountUpdate,
        SelfManagedInstancesSettings = M.HybridCustomerInstancesSettings,
    },
}

M.UpdateHybridADOutput = {
    type = "structure",
    id = "UpdateHybridADOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
        AssessmentId = {
            type = "string",
        },
    },
}

M.DomainControllerLimitExceededException = {
    type = "structure",
    id = "DomainControllerLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UpdateNumberOfDomainControllersInput = {
    type = "structure",
    id = "UpdateNumberOfDomainControllersInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DesiredNumber = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateNumberOfDomainControllersOutput = {
    type = "structure",
    id = "UpdateNumberOfDomainControllersOutput",
}

M.UpdateRadiusInput = {
    type = "structure",
    id = "UpdateRadiusInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RadiusSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RadiusSettings }),
    },
}

M.UpdateRadiusOutput = {
    type = "structure",
    id = "UpdateRadiusOutput",
}

M.IncompatibleSettingsException = {
    type = "structure",
    id = "IncompatibleSettingsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.UnsupportedSettingsException = {
    type = "structure",
    id = "UnsupportedSettingsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
    },
}

M.Setting = {
    type = "structure",
    id = "Setting",
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

M.UpdateSettingsInput = {
    type = "structure",
    id = "UpdateSettingsInput",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Settings = {
            type = "list",
            member = M.Setting,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSettingsOutput = {
    type = "structure",
    id = "UpdateSettingsOutput",
    members = {
        DirectoryId = {
            type = "string",
        },
    },
}

M.UpdateTrustInput = {
    type = "structure",
    id = "UpdateTrustInput",
    members = {
        TrustId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SelectiveAuth = {
            type = "string",
        },
    },
}

M.UpdateTrustOutput = {
    type = "structure",
    id = "UpdateTrustOutput",
    members = {
        RequestId = {
            type = "string",
        },
        TrustId = {
            type = "string",
        },
    },
}

M.VerifyTrustInput = {
    type = "structure",
    id = "VerifyTrustInput",
    members = {
        TrustId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VerifyTrustOutput = {
    type = "structure",
    id = "VerifyTrustOutput",
    members = {
        TrustId = {
            type = "string",
        },
    },
}

return M
