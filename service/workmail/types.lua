local M = {}

M.AccessControlRuleEffect = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.AccessControlRule = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Effect = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        IpRanges = {
            type = "list",
            member_type = "string",
        },
        NotIpRanges = {
            type = "list",
            member_type = "string",
        },
        Actions = {
            type = "list",
            member_type = "string",
        },
        NotActions = {
            type = "list",
            member_type = "string",
        },
        UserIds = {
            type = "list",
            member_type = "string",
        },
        NotUserIds = {
            type = "list",
            member_type = "string",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateModified = {
            type = "timestamp",
        },
        ImpersonationRoleIds = {
            type = "list",
            member_type = "string",
        },
        NotImpersonationRoleIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AccessEffect = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.AssociateDelegateToResourceInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
        EntityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateDelegateToResourceOutput = {
    type = "structure",
}

M.EntityNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EntityStateException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
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
    },
}

M.OrganizationNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OrganizationStateException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
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

M.AssociateMemberToGroupInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateMemberToGroupOutput = {
    type = "structure",
}

M.DirectoryServiceAuthenticationFailedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DirectoryUnavailableException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssumeImpersonationRoleInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImpersonationRoleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssumeImpersonationRoleOutput = {
    type = "structure",
    members = {
        Token = {
            type = "string",
        },
        ExpiresIn = {
            type = "number",
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

M.RedactedEwsAvailabilityProvider = {
    type = "structure",
    members = {
        EwsEndpoint = {
            type = "string",
        },
        EwsUsername = {
            type = "string",
        },
    },
}

M.LambdaAvailabilityProvider = {
    type = "structure",
    members = {
        LambdaArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AvailabilityProviderType = {
    EWS = "EWS",
    LAMBDA = "LAMBDA",
}

M.AvailabilityConfiguration = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
        },
        ProviderType = {
            type = "string",
        },
        EwsProvider = {
            type = "structure",
        },
        LambdaProvider = {
            type = "structure",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateModified = {
            type = "timestamp",
        },
    },
}

M.BookingOptions = {
    type = "structure",
    members = {
        AutoAcceptRequests = {
            type = "boolean",
        },
        AutoDeclineRecurringRequests = {
            type = "boolean",
        },
        AutoDeclineConflictingRequests = {
            type = "boolean",
        },
    },
}

M.CancelMailboxExportJobInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelMailboxExportJobOutput = {
    type = "structure",
}

M.CreateAliasInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityId = {
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
}

M.EmailAddressInUseException = {
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
    },
}

M.MailDomainNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MailDomainStateException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EwsAvailabilityProvider = {
    type = "structure",
    members = {
        EwsEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EwsUsername = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EwsPassword = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAvailabilityConfigurationInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
        },
        OrganizationId = {
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
        EwsProvider = {
            type = "structure",
        },
        LambdaProvider = {
            type = "structure",
        },
    },
}

M.CreateAvailabilityConfigurationOutput = {
    type = "structure",
}

M.NameAvailabilityException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateGroupInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
        HiddenFromGlobalAddressList = {
            type = "boolean",
        },
    },
}

M.CreateGroupOutput = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
        },
    },
}

M.ReservedNameException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateIdentityCenterApplicationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateIdentityCenterApplicationOutput = {
    type = "structure",
    members = {
        ApplicationArn = {
            type = "string",
        },
    },
}

M.ImpersonationRule = {
    type = "structure",
    members = {
        ImpersonationRuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Effect = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetUsers = {
            type = "list",
            member_type = "string",
        },
        NotTargetUsers = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ImpersonationRoleType = {
    FULL_ACCESS = "FULL_ACCESS",
    READ_ONLY = "READ_ONLY",
}

M.CreateImpersonationRoleInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
        },
        OrganizationId = {
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
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateImpersonationRoleOutput = {
    type = "structure",
    members = {
        ImpersonationRoleId = {
            type = "string",
        },
    },
}

M.MobileDeviceAccessRuleEffect = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.CreateMobileDeviceAccessRuleInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Effect = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceTypes = {
            type = "list",
            member_type = "string",
        },
        NotDeviceTypes = {
            type = "list",
            member_type = "string",
        },
        DeviceModels = {
            type = "list",
            member_type = "string",
        },
        NotDeviceModels = {
            type = "list",
            member_type = "string",
        },
        DeviceOperatingSystems = {
            type = "list",
            member_type = "string",
        },
        NotDeviceOperatingSystems = {
            type = "list",
            member_type = "string",
        },
        DeviceUserAgents = {
            type = "list",
            member_type = "string",
        },
        NotDeviceUserAgents = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateMobileDeviceAccessRuleOutput = {
    type = "structure",
    members = {
        MobileDeviceAccessRuleId = {
            type = "string",
        },
    },
}

M.Domain = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HostedZoneId = {
            type = "string",
        },
    },
}

M.CreateOrganizationInput = {
    type = "structure",
    members = {
        DirectoryId = {
            type = "string",
        },
        Alias = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
        Domains = {
            type = "list",
            member_type = "structure",
        },
        KmsKeyArn = {
            type = "string",
        },
        EnableInteroperability = {
            type = "boolean",
        },
    },
}

M.CreateOrganizationOutput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
        },
    },
}

M.DirectoryInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceType = {
    ROOM = "ROOM",
    EQUIPMENT = "EQUIPMENT",
}

M.CreateResourceInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        HiddenFromGlobalAddressList = {
            type = "boolean",
        },
    },
}

M.CreateResourceOutput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
        },
    },
}

M.UserRole = {
    USER = "USER",
    RESOURCE = "RESOURCE",
    SYSTEM_USER = "SYSTEM_USER",
    REMOTE_USER = "REMOTE_USER",
}

M.CreateUserInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
        DisplayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Password = {
            type = "string",
        },
        Role = {
            type = "string",
        },
        FirstName = {
            type = "string",
        },
        LastName = {
            type = "string",
        },
        HiddenFromGlobalAddressList = {
            type = "boolean",
        },
        IdentityProviderUserId = {
            type = "string",
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
    members = {
        UserId = {
            type = "string",
        },
    },
}

M.InvalidPasswordException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MemberType = {
    GROUP = "GROUP",
    USER = "USER",
}

M.Delegate = {
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

M.DeleteAccessControlRuleInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
    },
}

M.DeleteAccessControlRuleOutput = {
    type = "structure",
}

M.DeleteAliasInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityId = {
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

M.DeleteAliasOutput = {
    type = "structure",
}

M.DeleteAvailabilityConfigurationInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
    },
}

M.DeleteAvailabilityConfigurationOutput = {
    type = "structure",
}

M.DeleteEmailMonitoringConfigurationInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteEmailMonitoringConfigurationOutput = {
    type = "structure",
}

M.DeleteGroupInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteGroupOutput = {
    type = "structure",
}

M.DeleteIdentityCenterApplicationInput = {
    type = "structure",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIdentityCenterApplicationOutput = {
    type = "structure",
}

M.DeleteIdentityProviderConfigurationInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIdentityProviderConfigurationOutput = {
    type = "structure",
}

M.DeleteImpersonationRoleInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImpersonationRoleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteImpersonationRoleOutput = {
    type = "structure",
}

M.DeleteMailboxPermissionsInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GranteeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMailboxPermissionsOutput = {
    type = "structure",
}

M.DeleteMobileDeviceAccessOverrideInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMobileDeviceAccessOverrideOutput = {
    type = "structure",
}

M.DeleteMobileDeviceAccessRuleInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MobileDeviceAccessRuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMobileDeviceAccessRuleOutput = {
    type = "structure",
}

M.DeleteOrganizationInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
        },
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeleteDirectory = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        ForceDelete = {
            type = "boolean",
        },
        DeleteIdentityCenterApplication = {
            type = "boolean",
        },
    },
}

M.DeleteOrganizationOutput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.DeletePersonalAccessTokenInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PersonalAccessTokenId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePersonalAccessTokenOutput = {
    type = "structure",
}

M.DeleteResourceInput = {
    type = "structure",
    members = {
        OrganizationId = {
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

M.DeleteResourceOutput = {
    type = "structure",
}

M.DeleteRetentionPolicyInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
    },
}

M.DeleteRetentionPolicyOutput = {
    type = "structure",
}

M.DeleteUserInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserOutput = {
    type = "structure",
}

M.DeregisterFromWorkMailInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterFromWorkMailOutput = {
    type = "structure",
}

M.DeregisterMailDomainInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
    },
}

M.DeregisterMailDomainOutput = {
    type = "structure",
}

M.InvalidCustomSesConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MailDomainInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeEmailMonitoringConfigurationInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeEmailMonitoringConfigurationOutput = {
    type = "structure",
    members = {
        RoleArn = {
            type = "string",
        },
        LogGroupArn = {
            type = "string",
        },
    },
}

M.DescribeEntityInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Email = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EntityType = {
    GROUP = "GROUP",
    USER = "USER",
    RESOURCE = "RESOURCE",
}

M.DescribeEntityOutput = {
    type = "structure",
    members = {
        EntityId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.DescribeGroupInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EntityState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    DELETED = "DELETED",
}

M.DescribeGroupOutput = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Email = {
            type = "string",
        },
        State = {
            type = "string",
        },
        EnabledDate = {
            type = "timestamp",
        },
        DisabledDate = {
            type = "timestamp",
        },
        HiddenFromGlobalAddressList = {
            type = "boolean",
        },
    },
}

M.DescribeIdentityProviderConfigurationInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IdentityProviderAuthenticationMode = {
    IDENTITY_PROVIDER_ONLY = "IDENTITY_PROVIDER_ONLY",
    IDENTITY_PROVIDER_AND_DIRECTORY = "IDENTITY_PROVIDER_AND_DIRECTORY",
}

M.IdentityCenterConfiguration = {
    type = "structure",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PersonalAccessTokenConfigurationStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.PersonalAccessTokenConfiguration = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LifetimeInDays = {
            type = "number",
        },
    },
}

M.DescribeIdentityProviderConfigurationOutput = {
    type = "structure",
    members = {
        AuthenticationMode = {
            type = "string",
        },
        IdentityCenterConfiguration = {
            type = "structure",
        },
        PersonalAccessTokenConfiguration = {
            type = "structure",
        },
    },
}

M.DescribeInboundDmarcSettingsInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeInboundDmarcSettingsOutput = {
    type = "structure",
    members = {
        Enforced = {
            type = "boolean",
        },
    },
}

M.DescribeMailboxExportJobInput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MailboxExportJobState = {
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
}

M.DescribeMailboxExportJobOutput = {
    type = "structure",
    members = {
        EntityId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        S3BucketName = {
            type = "string",
        },
        S3Prefix = {
            type = "string",
        },
        S3Path = {
            type = "string",
        },
        EstimatedProgress = {
            type = "number",
        },
        State = {
            type = "string",
        },
        ErrorInfo = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.DescribeOrganizationInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeOrganizationOutput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
        },
        Alias = {
            type = "string",
        },
        State = {
            type = "string",
        },
        DirectoryId = {
            type = "string",
        },
        DirectoryType = {
            type = "string",
        },
        DefaultMailDomain = {
            type = "string",
        },
        CompletedDate = {
            type = "timestamp",
        },
        ErrorMessage = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
        MigrationAdmin = {
            type = "string",
        },
        InteroperabilityEnabled = {
            type = "boolean",
        },
    },
}

M.DescribeResourceInput = {
    type = "structure",
    members = {
        OrganizationId = {
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

M.DescribeResourceOutput = {
    type = "structure",
    members = {
        ResourceId = {
            type = "string",
        },
        Email = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        BookingOptions = {
            type = "structure",
        },
        State = {
            type = "string",
        },
        EnabledDate = {
            type = "timestamp",
        },
        DisabledDate = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
        HiddenFromGlobalAddressList = {
            type = "boolean",
        },
    },
}

M.DescribeUserInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeUserOutput = {
    type = "structure",
    members = {
        UserId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Email = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        State = {
            type = "string",
        },
        UserRole = {
            type = "string",
        },
        EnabledDate = {
            type = "timestamp",
        },
        DisabledDate = {
            type = "timestamp",
        },
        MailboxProvisionedDate = {
            type = "timestamp",
        },
        MailboxDeprovisionedDate = {
            type = "timestamp",
        },
        FirstName = {
            type = "string",
        },
        LastName = {
            type = "string",
        },
        HiddenFromGlobalAddressList = {
            type = "boolean",
        },
        Initials = {
            type = "string",
        },
        Telephone = {
            type = "string",
        },
        Street = {
            type = "string",
        },
        JobTitle = {
            type = "string",
        },
        City = {
            type = "string",
        },
        Company = {
            type = "string",
        },
        ZipCode = {
            type = "string",
        },
        Department = {
            type = "string",
        },
        Country = {
            type = "string",
        },
        Office = {
            type = "string",
        },
        IdentityProviderUserId = {
            type = "string",
        },
        IdentityProviderIdentityStoreId = {
            type = "string",
        },
    },
}

M.DisassociateDelegateFromResourceInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
        EntityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateDelegateFromResourceOutput = {
    type = "structure",
}

M.DisassociateMemberFromGroupInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MemberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateMemberFromGroupOutput = {
    type = "structure",
}

M.DnsRecord = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Hostname = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.DnsRecordVerificationStatus = {
    PENDING = "PENDING",
    VERIFIED = "VERIFIED",
    FAILED = "FAILED",
}

M.EntityAlreadyRegisteredException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RetentionAction = {
    NONE = "NONE",
    DELETE = "DELETE",
    PERMANENTLY_DELETE = "PERMANENTLY_DELETE",
}

M.FolderName = {
    INBOX = "INBOX",
    DELETED_ITEMS = "DELETED_ITEMS",
    SENT_ITEMS = "SENT_ITEMS",
    DRAFTS = "DRAFTS",
    JUNK_EMAIL = "JUNK_EMAIL",
}

M.FolderConfiguration = {
    type = "structure",
    members = {
        Name = {
            type = "string",
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
        Period = {
            type = "number",
        },
    },
}

M.GetAccessControlEffectInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IpAddress = {
            type = "string",
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
        UserId = {
            type = "string",
        },
        ImpersonationRoleId = {
            type = "string",
        },
    },
}

M.GetAccessControlEffectOutput = {
    type = "structure",
    members = {
        Effect = {
            type = "string",
        },
        MatchedRules = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetDefaultRetentionPolicyInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDefaultRetentionPolicyOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        FolderConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetImpersonationRoleInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImpersonationRoleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetImpersonationRoleOutput = {
    type = "structure",
    members = {
        ImpersonationRoleId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member_type = "structure",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateModified = {
            type = "timestamp",
        },
    },
}

M.GetImpersonationRoleEffectInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImpersonationRoleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetUser = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImpersonationMatchedRule = {
    type = "structure",
    members = {
        ImpersonationRuleId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.GetImpersonationRoleEffectOutput = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Effect = {
            type = "string",
        },
        MatchedRules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetMailboxDetailsInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMailboxDetailsOutput = {
    type = "structure",
    members = {
        MailboxQuota = {
            type = "number",
        },
        MailboxSize = {
            type = "number",
        },
    },
}

M.GetMailDomainInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
    },
}

M.GetMailDomainOutput = {
    type = "structure",
    members = {
        Records = {
            type = "list",
            member_type = "structure",
        },
        IsTestDomain = {
            type = "boolean",
        },
        IsDefault = {
            type = "boolean",
        },
        OwnershipVerificationStatus = {
            type = "string",
        },
        DkimVerificationStatus = {
            type = "string",
        },
    },
}

M.GetMobileDeviceAccessEffectInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceType = {
            type = "string",
        },
        DeviceModel = {
            type = "string",
        },
        DeviceOperatingSystem = {
            type = "string",
        },
        DeviceUserAgent = {
            type = "string",
        },
    },
}

M.MobileDeviceAccessMatchedRule = {
    type = "structure",
    members = {
        MobileDeviceAccessRuleId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.GetMobileDeviceAccessEffectOutput = {
    type = "structure",
    members = {
        Effect = {
            type = "string",
        },
        MatchedRules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetMobileDeviceAccessOverrideInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMobileDeviceAccessOverrideOutput = {
    type = "structure",
    members = {
        UserId = {
            type = "string",
        },
        DeviceId = {
            type = "string",
        },
        Effect = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateModified = {
            type = "timestamp",
        },
    },
}

M.GetPersonalAccessTokenMetadataInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PersonalAccessTokenId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPersonalAccessTokenMetadataOutput = {
    type = "structure",
    members = {
        PersonalAccessTokenId = {
            type = "string",
        },
        UserId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateLastUsed = {
            type = "timestamp",
        },
        ExpiresTime = {
            type = "timestamp",
        },
        Scopes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Group = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Email = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        State = {
            type = "string",
        },
        EnabledDate = {
            type = "timestamp",
        },
        DisabledDate = {
            type = "timestamp",
        },
    },
}

M.GroupIdentifier = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
    },
}

M.ImpersonationRole = {
    type = "structure",
    members = {
        ImpersonationRoleId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateModified = {
            type = "timestamp",
        },
    },
}

M.InvalidConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MailboxExportJob = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
        EntityId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        S3BucketName = {
            type = "string",
        },
        S3Path = {
            type = "string",
        },
        EstimatedProgress = {
            type = "number",
        },
        State = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.ListAccessControlRulesInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAccessControlRulesOutput = {
    type = "structure",
    members = {
        Rules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListAliasesInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityId = {
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
    },
}

M.ListAliasesOutput = {
    type = "structure",
    members = {
        Aliases = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAvailabilityConfigurationsInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAvailabilityConfigurationsOutput = {
    type = "structure",
    members = {
        AvailabilityConfigurations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGroupMembersInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupId = {
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
    },
}

M.Member = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        State = {
            type = "string",
        },
        EnabledDate = {
            type = "timestamp",
        },
        DisabledDate = {
            type = "timestamp",
        },
    },
}

M.ListGroupMembersOutput = {
    type = "structure",
    members = {
        Members = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGroupsFilters = {
    type = "structure",
    members = {
        NamePrefix = {
            type = "string",
        },
        PrimaryEmailPrefix = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.ListGroupsInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
        Filters = {
            type = "structure",
        },
    },
}

M.ListGroupsOutput = {
    type = "structure",
    members = {
        Groups = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGroupsForEntityFilters = {
    type = "structure",
    members = {
        GroupNamePrefix = {
            type = "string",
        },
    },
}

M.ListGroupsForEntityInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListGroupsForEntityOutput = {
    type = "structure",
    members = {
        Groups = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListImpersonationRolesInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
    },
}

M.ListImpersonationRolesOutput = {
    type = "structure",
    members = {
        Roles = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMailboxExportJobsInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
    },
}

M.ListMailboxExportJobsOutput = {
    type = "structure",
    members = {
        Jobs = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMailboxPermissionsInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityId = {
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
    },
}

M.PermissionType = {
    FULL_ACCESS = "FULL_ACCESS",
    SEND_AS = "SEND_AS",
    SEND_ON_BEHALF = "SEND_ON_BEHALF",
}

M.Permission = {
    type = "structure",
    members = {
        GranteeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GranteeType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionValues = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMailboxPermissionsOutput = {
    type = "structure",
    members = {
        Permissions = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMailDomainsInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MailDomainSummary = {
    type = "structure",
    members = {
        DomainName = {
            type = "string",
        },
        DefaultDomain = {
            type = "boolean",
        },
    },
}

M.ListMailDomainsOutput = {
    type = "structure",
    members = {
        MailDomains = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMobileDeviceAccessOverridesInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
        },
        DeviceId = {
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

M.MobileDeviceAccessOverride = {
    type = "structure",
    members = {
        UserId = {
            type = "string",
        },
        DeviceId = {
            type = "string",
        },
        Effect = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateModified = {
            type = "timestamp",
        },
    },
}

M.ListMobileDeviceAccessOverridesOutput = {
    type = "structure",
    members = {
        Overrides = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMobileDeviceAccessRulesInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MobileDeviceAccessRule = {
    type = "structure",
    members = {
        MobileDeviceAccessRuleId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Effect = {
            type = "string",
        },
        DeviceTypes = {
            type = "list",
            member_type = "string",
        },
        NotDeviceTypes = {
            type = "list",
            member_type = "string",
        },
        DeviceModels = {
            type = "list",
            member_type = "string",
        },
        NotDeviceModels = {
            type = "list",
            member_type = "string",
        },
        DeviceOperatingSystems = {
            type = "list",
            member_type = "string",
        },
        NotDeviceOperatingSystems = {
            type = "list",
            member_type = "string",
        },
        DeviceUserAgents = {
            type = "list",
            member_type = "string",
        },
        NotDeviceUserAgents = {
            type = "list",
            member_type = "string",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateModified = {
            type = "timestamp",
        },
    },
}

M.ListMobileDeviceAccessRulesOutput = {
    type = "structure",
    members = {
        Rules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListOrganizationsInput = {
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

M.OrganizationSummary = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
        },
        Alias = {
            type = "string",
        },
        DefaultMailDomain = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.ListOrganizationsOutput = {
    type = "structure",
    members = {
        OrganizationSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPersonalAccessTokensInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
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

M.PersonalAccessTokenSummary = {
    type = "structure",
    members = {
        PersonalAccessTokenId = {
            type = "string",
        },
        UserId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateLastUsed = {
            type = "timestamp",
        },
        ExpiresTime = {
            type = "timestamp",
        },
        Scopes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListPersonalAccessTokensOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        PersonalAccessTokenSummaries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListResourceDelegatesInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListResourceDelegatesOutput = {
    type = "structure",
    members = {
        Delegates = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourcesFilters = {
    type = "structure",
    members = {
        NamePrefix = {
            type = "string",
        },
        PrimaryEmailPrefix = {
            type = "string",
        },
        State = {
            type = "string",
        },
    },
}

M.ListResourcesInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
        Filters = {
            type = "structure",
        },
    },
}

M.Resource = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Email = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        State = {
            type = "string",
        },
        EnabledDate = {
            type = "timestamp",
        },
        DisabledDate = {
            type = "timestamp",
        },
        Description = {
            type = "string",
        },
    },
}

M.ListResourcesOutput = {
    type = "structure",
    members = {
        Resources = {
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
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
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

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListUsersFilters = {
    type = "structure",
    members = {
        UsernamePrefix = {
            type = "string",
        },
        DisplayNamePrefix = {
            type = "string",
        },
        PrimaryEmailPrefix = {
            type = "string",
        },
        State = {
            type = "string",
        },
        IdentityProviderUserIdPrefix = {
            type = "string",
        },
    },
}

M.ListUsersInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
        Filters = {
            type = "structure",
        },
    },
}

M.User = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Email = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        State = {
            type = "string",
        },
        UserRole = {
            type = "string",
        },
        EnabledDate = {
            type = "timestamp",
        },
        DisabledDate = {
            type = "timestamp",
        },
        IdentityProviderUserId = {
            type = "string",
        },
        IdentityProviderIdentityStoreId = {
            type = "string",
        },
    },
}

M.ListUsersOutput = {
    type = "structure",
    members = {
        Users = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutAccessControlRuleInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Effect = {
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
        IpRanges = {
            type = "list",
            member_type = "string",
        },
        NotIpRanges = {
            type = "list",
            member_type = "string",
        },
        Actions = {
            type = "list",
            member_type = "string",
        },
        NotActions = {
            type = "list",
            member_type = "string",
        },
        UserIds = {
            type = "list",
            member_type = "string",
        },
        NotUserIds = {
            type = "list",
            member_type = "string",
        },
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImpersonationRoleIds = {
            type = "list",
            member_type = "string",
        },
        NotImpersonationRoleIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.PutAccessControlRuleOutput = {
    type = "structure",
}

M.PutEmailMonitoringConfigurationInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
        },
        LogGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutEmailMonitoringConfigurationOutput = {
    type = "structure",
}

M.PutIdentityProviderConfigurationInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityCenterConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        PersonalAccessTokenConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutIdentityProviderConfigurationOutput = {
    type = "structure",
}

M.PutInboundDmarcSettingsInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Enforced = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.PutInboundDmarcSettingsOutput = {
    type = "structure",
}

M.PutMailboxPermissionsInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GranteeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionValues = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutMailboxPermissionsOutput = {
    type = "structure",
}

M.PutMobileDeviceAccessOverrideInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Effect = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
    },
}

M.PutMobileDeviceAccessOverrideOutput = {
    type = "structure",
}

M.PutRetentionPolicyInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        FolderConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRetentionPolicyOutput = {
    type = "structure",
}

M.RegisterMailDomainInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
        },
        OrganizationId = {
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
    },
}

M.RegisterMailDomainOutput = {
    type = "structure",
}

M.RegisterToWorkMailInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Email = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterToWorkMailOutput = {
    type = "structure",
}

M.ResetPasswordInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
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
    },
}

M.ResetPasswordOutput = {
    type = "structure",
}

M.StartMailboxExportJobInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3Prefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartMailboxExportJobOutput = {
    type = "structure",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
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

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TestAvailabilityConfigurationInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DomainName = {
            type = "string",
        },
        EwsProvider = {
            type = "structure",
        },
        LambdaProvider = {
            type = "structure",
        },
    },
}

M.TestAvailabilityConfigurationOutput = {
    type = "structure",
    members = {
        TestPassed = {
            type = "boolean",
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
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

M.UpdateAvailabilityConfigurationInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
        EwsProvider = {
            type = "structure",
        },
        LambdaProvider = {
            type = "structure",
        },
    },
}

M.UpdateAvailabilityConfigurationOutput = {
    type = "structure",
}

M.UpdateDefaultMailDomainInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
    },
}

M.UpdateDefaultMailDomainOutput = {
    type = "structure",
}

M.UpdateGroupInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HiddenFromGlobalAddressList = {
            type = "boolean",
        },
    },
}

M.UpdateGroupOutput = {
    type = "structure",
}

M.UpdateImpersonationRoleInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImpersonationRoleId = {
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
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Rules = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateImpersonationRoleOutput = {
    type = "structure",
}

M.UpdateMailboxQuotaInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MailboxQuota = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateMailboxQuotaOutput = {
    type = "structure",
}

M.UpdateMobileDeviceAccessRuleInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MobileDeviceAccessRuleId = {
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
        Description = {
            type = "string",
        },
        Effect = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceTypes = {
            type = "list",
            member_type = "string",
        },
        NotDeviceTypes = {
            type = "list",
            member_type = "string",
        },
        DeviceModels = {
            type = "list",
            member_type = "string",
        },
        NotDeviceModels = {
            type = "list",
            member_type = "string",
        },
        DeviceOperatingSystems = {
            type = "list",
            member_type = "string",
        },
        NotDeviceOperatingSystems = {
            type = "list",
            member_type = "string",
        },
        DeviceUserAgents = {
            type = "list",
            member_type = "string",
        },
        NotDeviceUserAgents = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateMobileDeviceAccessRuleOutput = {
    type = "structure",
}

M.UpdatePrimaryEmailAddressInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Email = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePrimaryEmailAddressOutput = {
    type = "structure",
}

M.UpdateResourceInput = {
    type = "structure",
    members = {
        OrganizationId = {
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
        Name = {
            type = "string",
        },
        BookingOptions = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        HiddenFromGlobalAddressList = {
            type = "boolean",
        },
    },
}

M.UpdateResourceOutput = {
    type = "structure",
}

M.UpdateUserInput = {
    type = "structure",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Role = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        FirstName = {
            type = "string",
        },
        LastName = {
            type = "string",
        },
        HiddenFromGlobalAddressList = {
            type = "boolean",
        },
        Initials = {
            type = "string",
        },
        Telephone = {
            type = "string",
        },
        Street = {
            type = "string",
        },
        JobTitle = {
            type = "string",
        },
        City = {
            type = "string",
        },
        Company = {
            type = "string",
        },
        ZipCode = {
            type = "string",
        },
        Department = {
            type = "string",
        },
        Country = {
            type = "string",
        },
        Office = {
            type = "string",
        },
        IdentityProviderUserId = {
            type = "string",
        },
    },
}

M.UpdateUserOutput = {
    type = "structure",
}

return M
