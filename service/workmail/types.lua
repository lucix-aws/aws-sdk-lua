local M = {}

M.AccessControlRuleEffect = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.AccessControlRule = {
    type = "structure",
    id = "AccessControlRule",
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
            member = { type = "string" },
        },
        NotIpRanges = {
            type = "list",
            member = { type = "string" },
        },
        Actions = {
            type = "list",
            member = { type = "string" },
        },
        NotActions = {
            type = "list",
            member = { type = "string" },
        },
        UserIds = {
            type = "list",
            member = { type = "string" },
        },
        NotUserIds = {
            type = "list",
            member = { type = "string" },
        },
        DateCreated = {
            type = "timestamp",
        },
        DateModified = {
            type = "timestamp",
        },
        ImpersonationRoleIds = {
            type = "list",
            member = { type = "string" },
        },
        NotImpersonationRoleIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AccessEffect = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.AssociateDelegateToResourceInput = {
    type = "structure",
    id = "AssociateDelegateToResourceInput",
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
    id = "AssociateDelegateToResourceOutput",
}

M.EntityNotFoundException = {
    type = "structure",
    id = "EntityNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EntityStateException = {
    type = "structure",
    id = "EntityStateException",
    error = "client",
    members = {
        Message = {
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
    },
}

M.OrganizationNotFoundException = {
    type = "structure",
    id = "OrganizationNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OrganizationStateException = {
    type = "structure",
    id = "OrganizationStateException",
    error = "client",
    members = {
        Message = {
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

M.AssociateMemberToGroupInput = {
    type = "structure",
    id = "AssociateMemberToGroupInput",
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
    id = "AssociateMemberToGroupOutput",
}

M.DirectoryServiceAuthenticationFailedException = {
    type = "structure",
    id = "DirectoryServiceAuthenticationFailedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DirectoryUnavailableException = {
    type = "structure",
    id = "DirectoryUnavailableException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AssumeImpersonationRoleInput = {
    type = "structure",
    id = "AssumeImpersonationRoleInput",
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
    id = "AssumeImpersonationRoleOutput",
    members = {
        Token = {
            type = "string",
        },
        ExpiresIn = {
            type = "long",
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

M.RedactedEwsAvailabilityProvider = {
    type = "structure",
    id = "RedactedEwsAvailabilityProvider",
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
    id = "LambdaAvailabilityProvider",
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
    id = "AvailabilityConfiguration",
    members = {
        DomainName = {
            type = "string",
        },
        ProviderType = {
            type = "string",
        },
        EwsProvider = M.RedactedEwsAvailabilityProvider,
        LambdaProvider = M.LambdaAvailabilityProvider,
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
    id = "BookingOptions",
    members = {
        AutoAcceptRequests = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AutoDeclineRecurringRequests = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AutoDeclineConflictingRequests = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CancelMailboxExportJobInput = {
    type = "structure",
    id = "CancelMailboxExportJobInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
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
    id = "CancelMailboxExportJobOutput",
}

M.CreateAliasInput = {
    type = "structure",
    id = "CreateAliasInput",
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
    id = "CreateAliasOutput",
}

M.EmailAddressInUseException = {
    type = "structure",
    id = "EmailAddressInUseException",
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
    },
}

M.MailDomainNotFoundException = {
    type = "structure",
    id = "MailDomainNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MailDomainStateException = {
    type = "structure",
    id = "MailDomainStateException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EwsAvailabilityProvider = {
    type = "structure",
    id = "EwsAvailabilityProvider",
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
    id = "CreateAvailabilityConfigurationInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
        EwsProvider = M.EwsAvailabilityProvider,
        LambdaProvider = M.LambdaAvailabilityProvider,
    },
}

M.CreateAvailabilityConfigurationOutput = {
    type = "structure",
    id = "CreateAvailabilityConfigurationOutput",
}

M.NameAvailabilityException = {
    type = "structure",
    id = "NameAvailabilityException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateGroupInput = {
    type = "structure",
    id = "CreateGroupInput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.CreateGroupOutput = {
    type = "structure",
    id = "CreateGroupOutput",
    members = {
        GroupId = {
            type = "string",
        },
    },
}

M.ReservedNameException = {
    type = "structure",
    id = "ReservedNameException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateIdentityCenterApplicationInput = {
    type = "structure",
    id = "CreateIdentityCenterApplicationInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateIdentityCenterApplicationOutput = {
    type = "structure",
    id = "CreateIdentityCenterApplicationOutput",
    members = {
        ApplicationArn = {
            type = "string",
        },
    },
}

M.ImpersonationRule = {
    type = "structure",
    id = "ImpersonationRule",
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
            member = { type = "string" },
        },
        NotTargetUsers = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ImpersonationRoleType = {
    FULL_ACCESS = "FULL_ACCESS",
    READ_ONLY = "READ_ONLY",
}

M.CreateImpersonationRoleInput = {
    type = "structure",
    id = "CreateImpersonationRoleInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
            member = M.ImpersonationRule,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateImpersonationRoleOutput = {
    type = "structure",
    id = "CreateImpersonationRoleOutput",
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
    id = "CreateMobileDeviceAccessRuleInput",
    members = {
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
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
            member = { type = "string" },
        },
        NotDeviceTypes = {
            type = "list",
            member = { type = "string" },
        },
        DeviceModels = {
            type = "list",
            member = { type = "string" },
        },
        NotDeviceModels = {
            type = "list",
            member = { type = "string" },
        },
        DeviceOperatingSystems = {
            type = "list",
            member = { type = "string" },
        },
        NotDeviceOperatingSystems = {
            type = "list",
            member = { type = "string" },
        },
        DeviceUserAgents = {
            type = "list",
            member = { type = "string" },
        },
        NotDeviceUserAgents = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateMobileDeviceAccessRuleOutput = {
    type = "structure",
    id = "CreateMobileDeviceAccessRuleOutput",
    members = {
        MobileDeviceAccessRuleId = {
            type = "string",
        },
    },
}

M.Domain = {
    type = "structure",
    id = "Domain",
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
    id = "CreateOrganizationInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        Domains = {
            type = "list",
            member = M.Domain,
        },
        KmsKeyArn = {
            type = "string",
        },
        EnableInteroperability = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateOrganizationOutput = {
    type = "structure",
    id = "CreateOrganizationOutput",
    members = {
        OrganizationId = {
            type = "string",
        },
    },
}

M.DirectoryInUseException = {
    type = "structure",
    id = "DirectoryInUseException",
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
    id = "CreateResourceInput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.CreateResourceOutput = {
    type = "structure",
    id = "CreateResourceOutput",
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
    id = "CreateUserInput",
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
            traits = {
                default = false,
            },
        },
        IdentityProviderUserId = {
            type = "string",
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
    id = "CreateUserOutput",
    members = {
        UserId = {
            type = "string",
        },
    },
}

M.InvalidPasswordException = {
    type = "structure",
    id = "InvalidPasswordException",
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
    id = "Delegate",
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
    id = "DeleteAccessControlRuleInput",
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
    id = "DeleteAccessControlRuleOutput",
}

M.DeleteAliasInput = {
    type = "structure",
    id = "DeleteAliasInput",
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
    id = "DeleteAliasOutput",
}

M.DeleteAvailabilityConfigurationInput = {
    type = "structure",
    id = "DeleteAvailabilityConfigurationInput",
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
    id = "DeleteAvailabilityConfigurationOutput",
}

M.DeleteEmailMonitoringConfigurationInput = {
    type = "structure",
    id = "DeleteEmailMonitoringConfigurationInput",
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
    id = "DeleteEmailMonitoringConfigurationOutput",
}

M.DeleteGroupInput = {
    type = "structure",
    id = "DeleteGroupInput",
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
    id = "DeleteGroupOutput",
}

M.DeleteIdentityCenterApplicationInput = {
    type = "structure",
    id = "DeleteIdentityCenterApplicationInput",
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
    id = "DeleteIdentityCenterApplicationOutput",
}

M.DeleteIdentityProviderConfigurationInput = {
    type = "structure",
    id = "DeleteIdentityProviderConfigurationInput",
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
    id = "DeleteIdentityProviderConfigurationOutput",
}

M.DeleteImpersonationRoleInput = {
    type = "structure",
    id = "DeleteImpersonationRoleInput",
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
    id = "DeleteImpersonationRoleOutput",
}

M.DeleteMailboxPermissionsInput = {
    type = "structure",
    id = "DeleteMailboxPermissionsInput",
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
    id = "DeleteMailboxPermissionsOutput",
}

M.DeleteMobileDeviceAccessOverrideInput = {
    type = "structure",
    id = "DeleteMobileDeviceAccessOverrideInput",
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
    id = "DeleteMobileDeviceAccessOverrideOutput",
}

M.DeleteMobileDeviceAccessRuleInput = {
    type = "structure",
    id = "DeleteMobileDeviceAccessRuleInput",
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
    id = "DeleteMobileDeviceAccessRuleOutput",
}

M.DeleteOrganizationInput = {
    type = "structure",
    id = "DeleteOrganizationInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
                default = false,
                required = true,
            },
        },
        ForceDelete = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        DeleteIdentityCenterApplication = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DeleteOrganizationOutput = {
    type = "structure",
    id = "DeleteOrganizationOutput",
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
    id = "DeletePersonalAccessTokenInput",
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
    id = "DeletePersonalAccessTokenOutput",
}

M.DeleteResourceInput = {
    type = "structure",
    id = "DeleteResourceInput",
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
    id = "DeleteResourceOutput",
}

M.DeleteRetentionPolicyInput = {
    type = "structure",
    id = "DeleteRetentionPolicyInput",
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
    id = "DeleteRetentionPolicyOutput",
}

M.DeleteUserInput = {
    type = "structure",
    id = "DeleteUserInput",
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
    id = "DeleteUserOutput",
}

M.DeregisterFromWorkMailInput = {
    type = "structure",
    id = "DeregisterFromWorkMailInput",
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
    id = "DeregisterFromWorkMailOutput",
}

M.DeregisterMailDomainInput = {
    type = "structure",
    id = "DeregisterMailDomainInput",
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
    id = "DeregisterMailDomainOutput",
}

M.InvalidCustomSesConfigurationException = {
    type = "structure",
    id = "InvalidCustomSesConfigurationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MailDomainInUseException = {
    type = "structure",
    id = "MailDomainInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeEmailMonitoringConfigurationInput = {
    type = "structure",
    id = "DescribeEmailMonitoringConfigurationInput",
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
    id = "DescribeEmailMonitoringConfigurationOutput",
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
    id = "DescribeEntityInput",
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
    id = "DescribeEntityOutput",
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
    id = "DescribeGroupInput",
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
    id = "DescribeGroupOutput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.DescribeIdentityProviderConfigurationInput = {
    type = "structure",
    id = "DescribeIdentityProviderConfigurationInput",
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
    id = "IdentityCenterConfiguration",
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
    id = "PersonalAccessTokenConfiguration",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LifetimeInDays = {
            type = "integer",
        },
    },
}

M.DescribeIdentityProviderConfigurationOutput = {
    type = "structure",
    id = "DescribeIdentityProviderConfigurationOutput",
    members = {
        AuthenticationMode = {
            type = "string",
        },
        IdentityCenterConfiguration = M.IdentityCenterConfiguration,
        PersonalAccessTokenConfiguration = M.PersonalAccessTokenConfiguration,
    },
}

M.DescribeInboundDmarcSettingsInput = {
    type = "structure",
    id = "DescribeInboundDmarcSettingsInput",
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
    id = "DescribeInboundDmarcSettingsOutput",
    members = {
        Enforced = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DescribeMailboxExportJobInput = {
    type = "structure",
    id = "DescribeMailboxExportJobInput",
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
    id = "DescribeMailboxExportJobOutput",
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
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "DescribeOrganizationInput",
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
    id = "DescribeOrganizationOutput",
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
            traits = {
                default = false,
            },
        },
    },
}

M.DescribeResourceInput = {
    type = "structure",
    id = "DescribeResourceInput",
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
    id = "DescribeResourceOutput",
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
        BookingOptions = M.BookingOptions,
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
            traits = {
                default = false,
            },
        },
    },
}

M.DescribeUserInput = {
    type = "structure",
    id = "DescribeUserInput",
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
    id = "DescribeUserOutput",
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
            traits = {
                default = false,
            },
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
    id = "DisassociateDelegateFromResourceInput",
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
    id = "DisassociateDelegateFromResourceOutput",
}

M.DisassociateMemberFromGroupInput = {
    type = "structure",
    id = "DisassociateMemberFromGroupInput",
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
    id = "DisassociateMemberFromGroupOutput",
}

M.DnsRecord = {
    type = "structure",
    id = "DnsRecord",
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
    id = "EntityAlreadyRegisteredException",
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
    id = "FolderConfiguration",
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
            type = "integer",
        },
    },
}

M.GetAccessControlEffectInput = {
    type = "structure",
    id = "GetAccessControlEffectInput",
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
    id = "GetAccessControlEffectOutput",
    members = {
        Effect = {
            type = "string",
        },
        MatchedRules = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetDefaultRetentionPolicyInput = {
    type = "structure",
    id = "GetDefaultRetentionPolicyInput",
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
    id = "GetDefaultRetentionPolicyOutput",
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
            member = M.FolderConfiguration,
        },
    },
}

M.GetImpersonationRoleInput = {
    type = "structure",
    id = "GetImpersonationRoleInput",
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
    id = "GetImpersonationRoleOutput",
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
            member = M.ImpersonationRule,
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
    id = "GetImpersonationRoleEffectInput",
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
    id = "ImpersonationMatchedRule",
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
    id = "GetImpersonationRoleEffectOutput",
    members = {
        Type = {
            type = "string",
        },
        Effect = {
            type = "string",
        },
        MatchedRules = {
            type = "list",
            member = M.ImpersonationMatchedRule,
        },
    },
}

M.GetMailboxDetailsInput = {
    type = "structure",
    id = "GetMailboxDetailsInput",
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
    id = "GetMailboxDetailsOutput",
    members = {
        MailboxQuota = {
            type = "integer",
        },
        MailboxSize = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetMailDomainInput = {
    type = "structure",
    id = "GetMailDomainInput",
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
    id = "GetMailDomainOutput",
    members = {
        Records = {
            type = "list",
            member = M.DnsRecord,
        },
        IsTestDomain = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        IsDefault = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "GetMobileDeviceAccessEffectInput",
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
    id = "MobileDeviceAccessMatchedRule",
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
    id = "GetMobileDeviceAccessEffectOutput",
    members = {
        Effect = {
            type = "string",
        },
        MatchedRules = {
            type = "list",
            member = M.MobileDeviceAccessMatchedRule,
        },
    },
}

M.GetMobileDeviceAccessOverrideInput = {
    type = "structure",
    id = "GetMobileDeviceAccessOverrideInput",
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
    id = "GetMobileDeviceAccessOverrideOutput",
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
    id = "GetPersonalAccessTokenMetadataInput",
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
    id = "GetPersonalAccessTokenMetadataOutput",
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
            member = { type = "string" },
        },
    },
}

M.Group = {
    type = "structure",
    id = "Group",
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
    id = "GroupIdentifier",
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
    id = "ImpersonationRole",
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
    id = "InvalidConfigurationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MailboxExportJob = {
    type = "structure",
    id = "MailboxExportJob",
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
            type = "integer",
            traits = {
                default = 0,
            },
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
    id = "ListAccessControlRulesInput",
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
    id = "ListAccessControlRulesOutput",
    members = {
        Rules = {
            type = "list",
            member = M.AccessControlRule,
        },
    },
}

M.ListAliasesInput = {
    type = "structure",
    id = "ListAliasesInput",
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
            type = "integer",
        },
    },
}

M.ListAliasesOutput = {
    type = "structure",
    id = "ListAliasesOutput",
    members = {
        Aliases = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAvailabilityConfigurationsInput = {
    type = "structure",
    id = "ListAvailabilityConfigurationsInput",
    members = {
        OrganizationId = {
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

M.ListAvailabilityConfigurationsOutput = {
    type = "structure",
    id = "ListAvailabilityConfigurationsOutput",
    members = {
        AvailabilityConfigurations = {
            type = "list",
            member = M.AvailabilityConfiguration,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGroupMembersInput = {
    type = "structure",
    id = "ListGroupMembersInput",
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
            type = "integer",
        },
    },
}

M.Member = {
    type = "structure",
    id = "Member",
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
    id = "ListGroupMembersOutput",
    members = {
        Members = {
            type = "list",
            member = M.Member,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGroupsFilters = {
    type = "structure",
    id = "ListGroupsFilters",
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
    id = "ListGroupsInput",
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
            type = "integer",
        },
        Filters = M.ListGroupsFilters,
    },
}

M.ListGroupsOutput = {
    type = "structure",
    id = "ListGroupsOutput",
    members = {
        Groups = {
            type = "list",
            member = M.Group,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGroupsForEntityFilters = {
    type = "structure",
    id = "ListGroupsForEntityFilters",
    members = {
        GroupNamePrefix = {
            type = "string",
        },
    },
}

M.ListGroupsForEntityInput = {
    type = "structure",
    id = "ListGroupsForEntityInput",
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
        Filters = M.ListGroupsForEntityFilters,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListGroupsForEntityOutput = {
    type = "structure",
    id = "ListGroupsForEntityOutput",
    members = {
        Groups = {
            type = "list",
            member = M.GroupIdentifier,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListImpersonationRolesInput = {
    type = "structure",
    id = "ListImpersonationRolesInput",
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
            type = "integer",
        },
    },
}

M.ListImpersonationRolesOutput = {
    type = "structure",
    id = "ListImpersonationRolesOutput",
    members = {
        Roles = {
            type = "list",
            member = M.ImpersonationRole,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMailboxExportJobsInput = {
    type = "structure",
    id = "ListMailboxExportJobsInput",
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
            type = "integer",
        },
    },
}

M.ListMailboxExportJobsOutput = {
    type = "structure",
    id = "ListMailboxExportJobsOutput",
    members = {
        Jobs = {
            type = "list",
            member = M.MailboxExportJob,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMailboxPermissionsInput = {
    type = "structure",
    id = "ListMailboxPermissionsInput",
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
            type = "integer",
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
    id = "Permission",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ListMailboxPermissionsOutput = {
    type = "structure",
    id = "ListMailboxPermissionsOutput",
    members = {
        Permissions = {
            type = "list",
            member = M.Permission,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMailDomainsInput = {
    type = "structure",
    id = "ListMailDomainsInput",
    members = {
        OrganizationId = {
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

M.MailDomainSummary = {
    type = "structure",
    id = "MailDomainSummary",
    members = {
        DomainName = {
            type = "string",
        },
        DefaultDomain = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListMailDomainsOutput = {
    type = "structure",
    id = "ListMailDomainsOutput",
    members = {
        MailDomains = {
            type = "list",
            member = M.MailDomainSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMobileDeviceAccessOverridesInput = {
    type = "structure",
    id = "ListMobileDeviceAccessOverridesInput",
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
            type = "integer",
        },
    },
}

M.MobileDeviceAccessOverride = {
    type = "structure",
    id = "MobileDeviceAccessOverride",
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
    id = "ListMobileDeviceAccessOverridesOutput",
    members = {
        Overrides = {
            type = "list",
            member = M.MobileDeviceAccessOverride,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMobileDeviceAccessRulesInput = {
    type = "structure",
    id = "ListMobileDeviceAccessRulesInput",
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
    id = "MobileDeviceAccessRule",
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
            member = { type = "string" },
        },
        NotDeviceTypes = {
            type = "list",
            member = { type = "string" },
        },
        DeviceModels = {
            type = "list",
            member = { type = "string" },
        },
        NotDeviceModels = {
            type = "list",
            member = { type = "string" },
        },
        DeviceOperatingSystems = {
            type = "list",
            member = { type = "string" },
        },
        NotDeviceOperatingSystems = {
            type = "list",
            member = { type = "string" },
        },
        DeviceUserAgents = {
            type = "list",
            member = { type = "string" },
        },
        NotDeviceUserAgents = {
            type = "list",
            member = { type = "string" },
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
    id = "ListMobileDeviceAccessRulesOutput",
    members = {
        Rules = {
            type = "list",
            member = M.MobileDeviceAccessRule,
        },
    },
}

M.ListOrganizationsInput = {
    type = "structure",
    id = "ListOrganizationsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.OrganizationSummary = {
    type = "structure",
    id = "OrganizationSummary",
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
    id = "ListOrganizationsOutput",
    members = {
        OrganizationSummaries = {
            type = "list",
            member = M.OrganizationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPersonalAccessTokensInput = {
    type = "structure",
    id = "ListPersonalAccessTokensInput",
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
            type = "integer",
        },
    },
}

M.PersonalAccessTokenSummary = {
    type = "structure",
    id = "PersonalAccessTokenSummary",
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
            member = { type = "string" },
        },
    },
}

M.ListPersonalAccessTokensOutput = {
    type = "structure",
    id = "ListPersonalAccessTokensOutput",
    members = {
        NextToken = {
            type = "string",
        },
        PersonalAccessTokenSummaries = {
            type = "list",
            member = M.PersonalAccessTokenSummary,
        },
    },
}

M.ListResourceDelegatesInput = {
    type = "structure",
    id = "ListResourceDelegatesInput",
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
            type = "integer",
        },
    },
}

M.ListResourceDelegatesOutput = {
    type = "structure",
    id = "ListResourceDelegatesOutput",
    members = {
        Delegates = {
            type = "list",
            member = M.Delegate,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourcesFilters = {
    type = "structure",
    id = "ListResourcesFilters",
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
    id = "ListResourcesInput",
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
            type = "integer",
        },
        Filters = M.ListResourcesFilters,
    },
}

M.Resource = {
    type = "structure",
    id = "Resource",
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
    id = "ListResourcesOutput",
    members = {
        Resources = {
            type = "list",
            member = M.Resource,
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

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListUsersFilters = {
    type = "structure",
    id = "ListUsersFilters",
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
    id = "ListUsersInput",
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
            type = "integer",
        },
        Filters = M.ListUsersFilters,
    },
}

M.User = {
    type = "structure",
    id = "User",
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
    id = "ListUsersOutput",
    members = {
        Users = {
            type = "list",
            member = M.User,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutAccessControlRuleInput = {
    type = "structure",
    id = "PutAccessControlRuleInput",
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
            member = { type = "string" },
        },
        NotIpRanges = {
            type = "list",
            member = { type = "string" },
        },
        Actions = {
            type = "list",
            member = { type = "string" },
        },
        NotActions = {
            type = "list",
            member = { type = "string" },
        },
        UserIds = {
            type = "list",
            member = { type = "string" },
        },
        NotUserIds = {
            type = "list",
            member = { type = "string" },
        },
        OrganizationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImpersonationRoleIds = {
            type = "list",
            member = { type = "string" },
        },
        NotImpersonationRoleIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.PutAccessControlRuleOutput = {
    type = "structure",
    id = "PutAccessControlRuleOutput",
}

M.PutEmailMonitoringConfigurationInput = {
    type = "structure",
    id = "PutEmailMonitoringConfigurationInput",
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
    id = "PutEmailMonitoringConfigurationOutput",
}

M.PutIdentityProviderConfigurationInput = {
    type = "structure",
    id = "PutIdentityProviderConfigurationInput",
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
        IdentityCenterConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdentityCenterConfiguration }),
        PersonalAccessTokenConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PersonalAccessTokenConfiguration }),
    },
}

M.PutIdentityProviderConfigurationOutput = {
    type = "structure",
    id = "PutIdentityProviderConfigurationOutput",
}

M.PutInboundDmarcSettingsInput = {
    type = "structure",
    id = "PutInboundDmarcSettingsInput",
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
    id = "PutInboundDmarcSettingsOutput",
}

M.PutMailboxPermissionsInput = {
    type = "structure",
    id = "PutMailboxPermissionsInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.PutMailboxPermissionsOutput = {
    type = "structure",
    id = "PutMailboxPermissionsOutput",
}

M.PutMobileDeviceAccessOverrideInput = {
    type = "structure",
    id = "PutMobileDeviceAccessOverrideInput",
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
    id = "PutMobileDeviceAccessOverrideOutput",
}

M.PutRetentionPolicyInput = {
    type = "structure",
    id = "PutRetentionPolicyInput",
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
            member = M.FolderConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.PutRetentionPolicyOutput = {
    type = "structure",
    id = "PutRetentionPolicyOutput",
}

M.RegisterMailDomainInput = {
    type = "structure",
    id = "RegisterMailDomainInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
    id = "RegisterMailDomainOutput",
}

M.RegisterToWorkMailInput = {
    type = "structure",
    id = "RegisterToWorkMailInput",
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
    id = "RegisterToWorkMailOutput",
}

M.ResetPasswordInput = {
    type = "structure",
    id = "ResetPasswordInput",
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
    id = "ResetPasswordOutput",
}

M.StartMailboxExportJobInput = {
    type = "structure",
    id = "StartMailboxExportJobInput",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
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
    id = "StartMailboxExportJobOutput",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceARN = {
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

M.TestAvailabilityConfigurationInput = {
    type = "structure",
    id = "TestAvailabilityConfigurationInput",
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
        EwsProvider = M.EwsAvailabilityProvider,
        LambdaProvider = M.LambdaAvailabilityProvider,
    },
}

M.TestAvailabilityConfigurationOutput = {
    type = "structure",
    id = "TestAvailabilityConfigurationOutput",
    members = {
        TestPassed = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceARN = {
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

M.UpdateAvailabilityConfigurationInput = {
    type = "structure",
    id = "UpdateAvailabilityConfigurationInput",
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
        EwsProvider = M.EwsAvailabilityProvider,
        LambdaProvider = M.LambdaAvailabilityProvider,
    },
}

M.UpdateAvailabilityConfigurationOutput = {
    type = "structure",
    id = "UpdateAvailabilityConfigurationOutput",
}

M.UpdateDefaultMailDomainInput = {
    type = "structure",
    id = "UpdateDefaultMailDomainInput",
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
    id = "UpdateDefaultMailDomainOutput",
}

M.UpdateGroupInput = {
    type = "structure",
    id = "UpdateGroupInput",
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
    id = "UpdateGroupOutput",
}

M.UpdateImpersonationRoleInput = {
    type = "structure",
    id = "UpdateImpersonationRoleInput",
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
            member = M.ImpersonationRule,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateImpersonationRoleOutput = {
    type = "structure",
    id = "UpdateImpersonationRoleOutput",
}

M.UpdateMailboxQuotaInput = {
    type = "structure",
    id = "UpdateMailboxQuotaInput",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateMailboxQuotaOutput = {
    type = "structure",
    id = "UpdateMailboxQuotaOutput",
}

M.UpdateMobileDeviceAccessRuleInput = {
    type = "structure",
    id = "UpdateMobileDeviceAccessRuleInput",
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
            member = { type = "string" },
        },
        NotDeviceTypes = {
            type = "list",
            member = { type = "string" },
        },
        DeviceModels = {
            type = "list",
            member = { type = "string" },
        },
        NotDeviceModels = {
            type = "list",
            member = { type = "string" },
        },
        DeviceOperatingSystems = {
            type = "list",
            member = { type = "string" },
        },
        NotDeviceOperatingSystems = {
            type = "list",
            member = { type = "string" },
        },
        DeviceUserAgents = {
            type = "list",
            member = { type = "string" },
        },
        NotDeviceUserAgents = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateMobileDeviceAccessRuleOutput = {
    type = "structure",
    id = "UpdateMobileDeviceAccessRuleOutput",
}

M.UpdatePrimaryEmailAddressInput = {
    type = "structure",
    id = "UpdatePrimaryEmailAddressInput",
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
    id = "UpdatePrimaryEmailAddressOutput",
}

M.UpdateResourceInput = {
    type = "structure",
    id = "UpdateResourceInput",
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
        BookingOptions = M.BookingOptions,
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
    id = "UpdateResourceOutput",
}

M.UpdateUserInput = {
    type = "structure",
    id = "UpdateUserInput",
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
    id = "UpdateUserOutput",
}

return M
