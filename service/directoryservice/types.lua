local M = {}

M.AcceptSharedDirectoryInput = {
    type = "structure",
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
    members = {
        SharedDirectory = {
            type = "structure",
        },
    },
}

M.ClientException = {
    type = "structure",
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
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpRoutes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        UpdateSecurityGroupForDirectoryControllers = {
            type = "boolean",
        },
    },
}

M.AddIpRoutesOutput = {
    type = "structure",
}

M.DirectoryUnavailableException = {
    type = "structure",
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
    members = {
        VpcId = {
            type = "string",
            traits = {
                required = true,
            },
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

M.AddRegionInput = {
    type = "structure",
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
        VPCSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AddRegionOutput = {
    type = "structure",
}

M.DirectoryAlreadyInRegionException = {
    type = "structure",
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
    members = {
        ResourceId = {
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

M.AddTagsToResourceOutput = {
    type = "structure",
}

M.TagLimitExceededException = {
    type = "structure",
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
            member_type = "string",
        },
        VpcId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        SelfManagedInstanceIds = {
            type = "list",
            member_type = "string",
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
    members = {
        CustomerDnsIps = {
            type = "list",
            member_type = "string",
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
        VpcSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        InstanceIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AssessmentValidation = {
    type = "structure",
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
    members = {
        DomainControllerIp = {
            type = "string",
        },
        Validations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AssessmentSummary = {
    type = "structure",
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
            member_type = "string",
        },
        ReportType = {
            type = "string",
        },
    },
}

M.Attribute = {
    type = "structure",
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
}

M.ClientCertAuthSettings = {
    type = "structure",
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
        ClientCertAuthSettings = {
            type = "structure",
        },
    },
}

M.CertificateAlreadyExistsException = {
    type = "structure",
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
    members = {
        ComputerId = {
            type = "string",
        },
        ComputerName = {
            type = "string",
        },
        ComputerAttributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ReplicationScope = {
    Domain = "Domain",
}

M.ConditionalForwarder = {
    type = "structure",
    members = {
        RemoteDomainName = {
            type = "string",
        },
        DnsIpAddrs = {
            type = "list",
            member_type = "string",
        },
        DnsIpv6Addrs = {
            type = "list",
            member_type = "string",
        },
        ReplicationScope = {
            type = "string",
        },
    },
}

M.DirectoryConnectSettings = {
    type = "structure",
    members = {
        VpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        CustomerDnsIps = {
            type = "list",
            member_type = "string",
        },
        CustomerDnsIpsV6 = {
            type = "list",
            member_type = "string",
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
        ConnectSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.ConnectDirectoryOutput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
        },
    },
}

M.DirectoryLimitExceededException = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.CreateComputerOutput = {
    type = "structure",
    members = {
        Computer = {
            type = "structure",
        },
    },
}

M.CreateConditionalForwarderInput = {
    type = "structure",
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
            member_type = "string",
        },
        DnsIpv6Addrs = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateConditionalForwarderOutput = {
    type = "structure",
}

M.CreateDirectoryInput = {
    type = "structure",
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
        VpcSettings = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.CreateDirectoryOutput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
        },
    },
}

M.CreateHybridADInput = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.CreateHybridADOutput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
        },
    },
}

M.CreateLogSubscriptionInput = {
    type = "structure",
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
}

M.InsufficientPermissionsException = {
    type = "structure",
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
        VpcSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Edition = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.CreateMicrosoftADOutput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
        },
    },
}

M.CreateSnapshotInput = {
    type = "structure",
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
    members = {
        SnapshotId = {
            type = "string",
        },
    },
}

M.SnapshotLimitExceededException = {
    type = "structure",
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
            member_type = "string",
        },
        ConditionalForwarderIpv6Addrs = {
            type = "list",
            member_type = "string",
        },
        SelectiveAuth = {
            type = "string",
        },
    },
}

M.CreateTrustOutput = {
    type = "structure",
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
    members = {
        AssessmentId = {
            type = "string",
        },
    },
}

M.DeleteConditionalForwarderInput = {
    type = "structure",
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
}

M.DeleteDirectoryInput = {
    type = "structure",
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
    members = {
        DirectoryId = {
            type = "string",
        },
    },
}

M.DeleteLogSubscriptionInput = {
    type = "structure",
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
}

M.DeleteSnapshotInput = {
    type = "structure",
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
    members = {
        SnapshotId = {
            type = "string",
        },
    },
}

M.DeleteTrustInput = {
    type = "structure",
    members = {
        TrustId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeleteAssociatedConditionalForwarder = {
            type = "boolean",
        },
    },
}

M.DeleteTrustOutput = {
    type = "structure",
    members = {
        TrustId = {
            type = "string",
        },
    },
}

M.DeregisterCertificateInput = {
    type = "structure",
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
}

M.DeregisterEventTopicInput = {
    type = "structure",
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
}

M.DescribeADAssessmentInput = {
    type = "structure",
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
    members = {
        Assessment = {
            type = "structure",
        },
        AssessmentReports = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeCAEnrollmentPolicyInput = {
    type = "structure",
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
    members = {
        Certificate = {
            type = "structure",
        },
    },
}

M.DescribeClientAuthenticationSettingsInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.DescribeClientAuthenticationSettingsOutput = {
    type = "structure",
    members = {
        ClientAuthenticationSettingsInfo = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeConditionalForwardersInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RemoteDomainNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeConditionalForwardersOutput = {
    type = "structure",
    members = {
        ConditionalForwarders = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeDirectoriesInput = {
    type = "structure",
    members = {
        DirectoryIds = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.DirectoryConnectSettingsDescription = {
    type = "structure",
    members = {
        VpcId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        CustomerUserName = {
            type = "string",
        },
        SecurityGroupId = {
            type = "string",
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        ConnectIps = {
            type = "list",
            member_type = "string",
        },
        ConnectIpsV6 = {
            type = "list",
            member_type = "string",
        },
    },
}

M.HybridSettingsDescription = {
    type = "structure",
    members = {
        SelfManagedDnsIpAddrs = {
            type = "list",
            member_type = "string",
        },
        SelfManagedInstanceIds = {
            type = "list",
            member_type = "string",
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
    members = {
        RadiusServers = {
            type = "list",
            member_type = "string",
        },
        RadiusServersIpv6 = {
            type = "list",
            member_type = "string",
        },
        RadiusPort = {
            type = "number",
        },
        RadiusTimeout = {
            type = "number",
        },
        RadiusRetries = {
            type = "number",
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
    members = {
        VpcId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        SecurityGroupId = {
            type = "string",
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
    },
}

M.OwnerDirectoryDescription = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        DnsIpAddrs = {
            type = "list",
            member_type = "string",
        },
        DnsIpv6Addrs = {
            type = "list",
            member_type = "string",
        },
        VpcSettings = {
            type = "structure",
        },
        RadiusSettings = {
            type = "structure",
        },
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
    members = {
        PrimaryRegion = {
            type = "string",
        },
        AdditionalRegions = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        DnsIpv6Addrs = {
            type = "list",
            member_type = "string",
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
        VpcSettings = {
            type = "structure",
        },
        ConnectSettings = {
            type = "structure",
        },
        RadiusSettings = {
            type = "structure",
        },
        RadiusStatus = {
            type = "string",
        },
        StageReason = {
            type = "string",
        },
        SsoEnabled = {
            type = "boolean",
        },
        DesiredNumberOfDomainControllers = {
            type = "number",
        },
        OwnerDirectoryDescription = {
            type = "structure",
        },
        RegionsInfo = {
            type = "structure",
        },
        OsVersion = {
            type = "string",
        },
        HybridSettings = {
            type = "structure",
        },
        NetworkType = {
            type = "string",
        },
    },
}

M.DescribeDirectoriesOutput = {
    type = "structure",
    members = {
        DirectoryDescriptions = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
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
        RequestId = {
            type = "string",
        },
    },
}

M.DescribeDirectoryDataAccessInput = {
    type = "structure",
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
    members = {
        DataAccessStatus = {
            type = "string",
        },
    },
}

M.DescribeDomainControllersInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DomainControllerIds = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
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
    members = {
        DomainControllers = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeEventTopicsInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
        },
        TopicNames = {
            type = "list",
            member_type = "string",
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
    members = {
        EventTopics = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.HybridUpdateType = {
    SELF_MANAGED_INSTANCES = "SelfManagedInstances",
    HYBRID_ADMINISTRATOR_ACCOUNT = "HybridAdministratorAccount",
}

M.DescribeHybridADUpdateInput = {
    type = "structure",
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
    members = {
        InstanceIds = {
            type = "list",
            member_type = "string",
        },
        DnsIps = {
            type = "list",
            member_type = "string",
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
        NewValue = {
            type = "structure",
        },
        PreviousValue = {
            type = "structure",
        },
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
    members = {
        SelfManagedInstances = {
            type = "list",
            member_type = "structure",
        },
        HybridAdministratorAccount = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeHybridADUpdateOutput = {
    type = "structure",
    members = {
        UpdateActivities = {
            type = "structure",
        },
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
            type = "number",
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
    members = {
        LDAPSSettingsInfo = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeRegionsInput = {
    type = "structure",
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
        VpcSettings = {
            type = "structure",
        },
        DesiredNumberOfDomainControllers = {
            type = "number",
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
    members = {
        RegionsDescription = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
    members = {
        DirectoryId = {
            type = "string",
        },
        SettingEntries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeSharedDirectoriesInput = {
    type = "structure",
    members = {
        OwnerDirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SharedDirectoryIds = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.DescribeSharedDirectoriesOutput = {
    type = "structure",
    members = {
        SharedDirectories = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeSnapshotsInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
        },
        SnapshotIds = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
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
    members = {
        Snapshots = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeTrustsInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
        },
        TrustIds = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
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
    members = {
        Trusts = {
            type = "list",
            member_type = "structure",
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
    members = {
        OSVersion = {
            type = "string",
        },
    },
}

M.UpdateValue = {
    type = "structure",
    members = {
        OSUpdateSettings = {
            type = "structure",
        },
    },
}

M.UpdateInfoEntry = {
    type = "structure",
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
        NewValue = {
            type = "structure",
        },
        PreviousValue = {
            type = "structure",
        },
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
    members = {
        UpdateActivities = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DirectoryInDesiredStateException = {
    type = "structure",
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
    members = {
        CloudOnlyDirectoriesLimit = {
            type = "number",
        },
        CloudOnlyDirectoriesCurrentCount = {
            type = "number",
        },
        CloudOnlyDirectoriesLimitReached = {
            type = "boolean",
        },
        CloudOnlyMicrosoftADLimit = {
            type = "number",
        },
        CloudOnlyMicrosoftADCurrentCount = {
            type = "number",
        },
        CloudOnlyMicrosoftADLimitReached = {
            type = "boolean",
        },
        ConnectedDirectoriesLimit = {
            type = "number",
        },
        ConnectedDirectoriesCurrentCount = {
            type = "number",
        },
        ConnectedDirectoriesLimitReached = {
            type = "boolean",
        },
    },
}

M.DirectoryNotSharedException = {
    type = "structure",
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
}

M.DisableClientAuthenticationInput = {
    type = "structure",
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
}

M.InvalidClientAuthStatusException = {
    type = "structure",
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
}

M.DisableLDAPSInput = {
    type = "structure",
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
}

M.InvalidLDAPSStatusException = {
    type = "structure",
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
}

M.DisableSsoInput = {
    type = "structure",
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
}

M.EnableAlreadyInProgressException = {
    type = "structure",
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
}

M.EnableClientAuthenticationInput = {
    type = "structure",
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
}

M.NoAvailableCertificateException = {
    type = "structure",
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
}

M.EnableLDAPSInput = {
    type = "structure",
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
}

M.EnableRadiusInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RadiusSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableRadiusOutput = {
    type = "structure",
}

M.EnableSsoInput = {
    type = "structure",
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
}

M.GetDirectoryLimitsInput = {
    type = "structure",
}

M.GetDirectoryLimitsOutput = {
    type = "structure",
    members = {
        DirectoryLimits = {
            type = "structure",
        },
    },
}

M.GetSnapshotLimitsInput = {
    type = "structure",
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
    members = {
        ManualSnapshotsLimit = {
            type = "number",
        },
        ManualSnapshotsCurrentCount = {
            type = "number",
        },
        ManualSnapshotsLimitReached = {
            type = "boolean",
        },
    },
}

M.GetSnapshotLimitsOutput = {
    type = "structure",
    members = {
        SnapshotLimits = {
            type = "structure",
        },
    },
}

M.ListADAssessmentsInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.ListADAssessmentsOutput = {
    type = "structure",
    members = {
        Assessments = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCertificatesInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ListCertificatesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        CertificatesInfo = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListIpRoutesInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        IpRoutesInfo = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLogSubscriptionsInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.LogSubscription = {
    type = "structure",
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
    members = {
        LogSubscriptions = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSchemaExtensionsInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        SchemaExtensionsInfo = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidCertificateException = {
    type = "structure",
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
        ClientCertAuthSettings = {
            type = "structure",
        },
    },
}

M.RegisterCertificateOutput = {
    type = "structure",
    members = {
        CertificateId = {
            type = "string",
        },
    },
}

M.RegisterEventTopicInput = {
    type = "structure",
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
}

M.RejectSharedDirectoryInput = {
    type = "structure",
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
    members = {
        SharedDirectoryId = {
            type = "string",
        },
    },
}

M.RemoveIpRoutesInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CidrIps = {
            type = "list",
            member_type = "string",
        },
        CidrIpv6s = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RemoveIpRoutesOutput = {
    type = "structure",
}

M.RemoveRegionInput = {
    type = "structure",
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
}

M.RemoveTagsFromResourceInput = {
    type = "structure",
    members = {
        ResourceId = {
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

M.RemoveTagsFromResourceOutput = {
    type = "structure",
}

M.InvalidPasswordException = {
    type = "structure",
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
}

M.UserDoesNotExistException = {
    type = "structure",
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
}

M.InvalidTargetException = {
    type = "structure",
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
        ShareTarget = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
    members = {
        SharedDirectoryId = {
            type = "string",
        },
    },
}

M.ShareLimitExceededException = {
    type = "structure",
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
    members = {
        AssessmentConfiguration = {
            type = "structure",
        },
        DirectoryId = {
            type = "string",
        },
    },
}

M.StartADAssessmentOutput = {
    type = "structure",
    members = {
        AssessmentId = {
            type = "string",
        },
    },
}

M.StartSchemaExtensionInput = {
    type = "structure",
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
    members = {
        SchemaExtensionId = {
            type = "string",
        },
    },
}

M.UnshareTarget = {
    type = "structure",
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
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UnshareTarget = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UnshareDirectoryOutput = {
    type = "structure",
    members = {
        SharedDirectoryId = {
            type = "string",
        },
    },
}

M.UpdateConditionalForwarderInput = {
    type = "structure",
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
            member_type = "string",
        },
        DnsIpv6Addrs = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateConditionalForwarderOutput = {
    type = "structure",
}

M.DirectorySizeUpdateSettings = {
    type = "structure",
    members = {
        DirectorySize = {
            type = "string",
        },
    },
}

M.NetworkUpdateSettings = {
    type = "structure",
    members = {
        NetworkType = {
            type = "string",
        },
        CustomerDnsIpsV6 = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateDirectorySetupInput = {
    type = "structure",
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
        OSUpdateSettings = {
            type = "structure",
        },
        DirectorySizeUpdateSettings = {
            type = "structure",
        },
        NetworkUpdateSettings = {
            type = "structure",
        },
        CreateSnapshotBeforeUpdate = {
            type = "boolean",
        },
    },
}

M.UpdateDirectorySetupOutput = {
    type = "structure",
}

M.HybridAdministratorAccountUpdate = {
    type = "structure",
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
    members = {
        CustomerDnsIps = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        InstanceIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateHybridADInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HybridAdministratorAccountUpdate = {
            type = "structure",
        },
        SelfManagedInstancesSettings = {
            type = "structure",
        },
    },
}

M.UpdateHybridADOutput = {
    type = "structure",
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
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DesiredNumber = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateNumberOfDomainControllersOutput = {
    type = "structure",
}

M.UpdateRadiusInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RadiusSettings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRadiusOutput = {
    type = "structure",
}

M.IncompatibleSettingsException = {
    type = "structure",
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
    members = {
        DirectoryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Settings = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSettingsOutput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
        },
    },
}

M.UpdateTrustInput = {
    type = "structure",
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
    members = {
        TrustId = {
            type = "string",
        },
    },
}

return M
