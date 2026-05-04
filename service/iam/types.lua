local M = {}

M.AcceptDelegationRequestInput = {
    type = "structure",
    id = "AcceptDelegationRequestInput",
    members = {
        DelegationRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AcceptDelegationRequestOutput = {
    type = "structure",
    id = "AcceptDelegationRequestOutput",
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoSuchEntityException = {
    type = "structure",
    id = "NoSuchEntityException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceFailureException = {
    type = "structure",
    id = "ServiceFailureException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AccessAdvisorUsageGranularityType = {
    SERVICE_LEVEL = "SERVICE_LEVEL",
    ACTION_LEVEL = "ACTION_LEVEL",
}

M.AccessDetail = {
    type = "structure",
    id = "AccessDetail",
    members = {
        ServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Region = {
            type = "string",
        },
        EntityPath = {
            type = "string",
        },
        LastAuthenticatedTime = {
            type = "timestamp",
        },
        TotalAuthenticatedEntities = {
            type = "integer",
        },
    },
}

M.statusType = {
    Active = "Active",
    Inactive = "Inactive",
    Expired = "Expired",
}

M.AccessKey = {
    type = "structure",
    id = "AccessKey",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccessKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretAccessKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateDate = {
            type = "timestamp",
        },
    },
}

M.AccessKeyLastUsed = {
    type = "structure",
    id = "AccessKeyLastUsed",
    members = {
        LastUsedDate = {
            type = "timestamp",
        },
        ServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccessKeyMetadata = {
    type = "structure",
    id = "AccessKeyMetadata",
    members = {
        UserName = {
            type = "string",
        },
        AccessKeyId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
    },
}

M.AccountNotManagementOrDelegatedAdministratorException = {
    type = "structure",
    id = "AccountNotManagementOrDelegatedAdministratorException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AddClientIDToOpenIDConnectProviderInput = {
    type = "structure",
    id = "AddClientIDToOpenIDConnectProviderInput",
    members = {
        OpenIDConnectProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AddClientIDToOpenIDConnectProviderOutput = {
    type = "structure",
    id = "AddClientIDToOpenIDConnectProviderOutput",
}

M.InvalidInputException = {
    type = "structure",
    id = "InvalidInputException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AddRoleToInstanceProfileInput = {
    type = "structure",
    id = "AddRoleToInstanceProfileInput",
    members = {
        InstanceProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AddRoleToInstanceProfileOutput = {
    type = "structure",
    id = "AddRoleToInstanceProfileOutput",
}

M.EntityAlreadyExistsException = {
    type = "structure",
    id = "EntityAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnmodifiableEntityException = {
    type = "structure",
    id = "UnmodifiableEntityException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AddUserToGroupInput = {
    type = "structure",
    id = "AddUserToGroupInput",
    members = {
        GroupName = {
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
    },
}

M.AddUserToGroupOutput = {
    type = "structure",
    id = "AddUserToGroupOutput",
}

M.assertionEncryptionModeType = {
    Required = "Required",
    Allowed = "Allowed",
}

M.assignmentStatusType = {
    Assigned = "Assigned",
    Unassigned = "Unassigned",
    Any = "Any",
}

M.AssociateDelegationRequestInput = {
    type = "structure",
    id = "AssociateDelegationRequestInput",
    members = {
        DelegationRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateDelegationRequestOutput = {
    type = "structure",
    id = "AssociateDelegationRequestOutput",
}

M.PermissionsBoundaryAttachmentType = {
    Policy = "PermissionsBoundaryPolicy",
}

M.AttachedPermissionsBoundary = {
    type = "structure",
    id = "AttachedPermissionsBoundary",
    members = {
        PermissionsBoundaryType = {
            type = "string",
        },
        PermissionsBoundaryArn = {
            type = "string",
        },
    },
}

M.AttachedPolicy = {
    type = "structure",
    id = "AttachedPolicy",
    members = {
        PolicyName = {
            type = "string",
        },
        PolicyArn = {
            type = "string",
        },
    },
}

M.AttachGroupPolicyInput = {
    type = "structure",
    id = "AttachGroupPolicyInput",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttachGroupPolicyOutput = {
    type = "structure",
    id = "AttachGroupPolicyOutput",
}

M.PolicyNotAttachableException = {
    type = "structure",
    id = "PolicyNotAttachableException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttachRolePolicyInput = {
    type = "structure",
    id = "AttachRolePolicyInput",
    members = {
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttachRolePolicyOutput = {
    type = "structure",
    id = "AttachRolePolicyOutput",
}

M.AttachUserPolicyInput = {
    type = "structure",
    id = "AttachUserPolicyInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttachUserPolicyOutput = {
    type = "structure",
    id = "AttachUserPolicyOutput",
}

M.ChangePasswordInput = {
    type = "structure",
    id = "ChangePasswordInput",
    members = {
        OldPassword = {
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

M.ChangePasswordOutput = {
    type = "structure",
    id = "ChangePasswordOutput",
}

M.EntityTemporarilyUnmodifiableException = {
    type = "structure",
    id = "EntityTemporarilyUnmodifiableException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidUserTypeException = {
    type = "structure",
    id = "InvalidUserTypeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PasswordPolicyViolationException = {
    type = "structure",
    id = "PasswordPolicyViolationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateAccessKeyInput = {
    type = "structure",
    id = "CreateAccessKeyInput",
    members = {
        UserName = {
            type = "string",
        },
    },
}

M.CreateAccessKeyOutput = {
    type = "structure",
    id = "CreateAccessKeyOutput",
    members = {
        AccessKey = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccessKey }),
    },
}

M.CreateAccountAliasInput = {
    type = "structure",
    id = "CreateAccountAliasInput",
    members = {
        AccountAlias = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAccountAliasOutput = {
    type = "structure",
    id = "CreateAccountAliasOutput",
}

M.PolicyParameterTypeEnum = {
    STRING = "string",
    STRING_LIST = "stringList",
}

M.PolicyParameter = {
    type = "structure",
    id = "PolicyParameter",
    members = {
        Name = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
        Type = {
            type = "string",
        },
    },
}

M.DelegationPermission = {
    type = "structure",
    id = "DelegationPermission",
    members = {
        PolicyTemplateArn = {
            type = "string",
        },
        Parameters = {
            type = "list",
            member = M.PolicyParameter,
        },
    },
}

M.CreateDelegationRequestInput = {
    type = "structure",
    id = "CreateDelegationRequestInput",
    members = {
        OwnerAccountId = {
            type = "string",
        },
        Description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Permissions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DelegationPermission }),
        RequestMessage = {
            type = "string",
        },
        RequestorWorkflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RedirectUrl = {
            type = "string",
        },
        NotificationChannel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionDuration = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        OnlySendByOwner = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateDelegationRequestOutput = {
    type = "structure",
    id = "CreateDelegationRequestOutput",
    members = {
        ConsoleDeepLink = {
            type = "string",
        },
        DelegationRequestId = {
            type = "string",
        },
    },
}

M.CreateGroupInput = {
    type = "structure",
    id = "CreateGroupInput",
    members = {
        Path = {
            type = "string",
        },
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Group = {
    type = "structure",
    id = "Group",
    members = {
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupName = {
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
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateGroupOutput = {
    type = "structure",
    id = "CreateGroupOutput",
    members = {
        Group = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Group }),
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

M.CreateInstanceProfileInput = {
    type = "structure",
    id = "CreateInstanceProfileInput",
    members = {
        InstanceProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Path = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.RoleLastUsed = {
    type = "structure",
    id = "RoleLastUsed",
    members = {
        LastUsedDate = {
            type = "timestamp",
        },
        Region = {
            type = "string",
        },
    },
}

M.Role = {
    type = "structure",
    id = "Role",
    members = {
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        AssumeRolePolicyDocument = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        MaxSessionDuration = {
            type = "integer",
        },
        PermissionsBoundary = M.AttachedPermissionsBoundary,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        RoleLastUsed = M.RoleLastUsed,
    },
}

M.InstanceProfile = {
    type = "structure",
    id = "InstanceProfile",
    members = {
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Roles = {
            type = "list",
            member = M.Role,
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

M.CreateInstanceProfileOutput = {
    type = "structure",
    id = "CreateInstanceProfileOutput",
    members = {
        InstanceProfile = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceProfile }),
    },
}

M.CreateLoginProfileInput = {
    type = "structure",
    id = "CreateLoginProfileInput",
    members = {
        UserName = {
            type = "string",
        },
        Password = {
            type = "string",
        },
        PasswordResetRequired = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.LoginProfile = {
    type = "structure",
    id = "LoginProfile",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        PasswordResetRequired = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CreateLoginProfileOutput = {
    type = "structure",
    id = "CreateLoginProfileOutput",
    members = {
        LoginProfile = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoginProfile }),
    },
}

M.CreateOpenIDConnectProviderInput = {
    type = "structure",
    id = "CreateOpenIDConnectProviderInput",
    members = {
        Url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientIDList = {
            type = "list",
            member = { type = "string" },
        },
        ThumbprintList = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateOpenIDConnectProviderOutput = {
    type = "structure",
    id = "CreateOpenIDConnectProviderOutput",
    members = {
        OpenIDConnectProviderArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.OpenIdIdpCommunicationErrorException = {
    type = "structure",
    id = "OpenIdIdpCommunicationErrorException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreatePolicyInput = {
    type = "structure",
    id = "CreatePolicyInput",
    members = {
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Path = {
            type = "string",
        },
        PolicyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.Policy = {
    type = "structure",
    id = "Policy",
    members = {
        PolicyName = {
            type = "string",
        },
        PolicyId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Path = {
            type = "string",
        },
        DefaultVersionId = {
            type = "string",
        },
        AttachmentCount = {
            type = "integer",
        },
        PermissionsBoundaryUsageCount = {
            type = "integer",
        },
        IsAttachable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Description = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
        UpdateDate = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreatePolicyOutput = {
    type = "structure",
    id = "CreatePolicyOutput",
    members = {
        Policy = M.Policy,
    },
}

M.MalformedPolicyDocumentException = {
    type = "structure",
    id = "MalformedPolicyDocumentException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreatePolicyVersionInput = {
    type = "structure",
    id = "CreatePolicyVersionInput",
    members = {
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SetAsDefault = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PolicyVersion = {
    type = "structure",
    id = "PolicyVersion",
    members = {
        Document = {
            type = "string",
        },
        VersionId = {
            type = "string",
        },
        IsDefaultVersion = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        CreateDate = {
            type = "timestamp",
        },
    },
}

M.CreatePolicyVersionOutput = {
    type = "structure",
    id = "CreatePolicyVersionOutput",
    members = {
        PolicyVersion = M.PolicyVersion,
    },
}

M.CreateRoleInput = {
    type = "structure",
    id = "CreateRoleInput",
    members = {
        Path = {
            type = "string",
        },
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssumeRolePolicyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        MaxSessionDuration = {
            type = "integer",
        },
        PermissionsBoundary = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateRoleOutput = {
    type = "structure",
    id = "CreateRoleOutput",
    members = {
        Role = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Role }),
    },
}

M.CreateSAMLProviderInput = {
    type = "structure",
    id = "CreateSAMLProviderInput",
    members = {
        SAMLMetadataDocument = {
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
        AssertionEncryptionMode = {
            type = "string",
        },
        AddPrivateKey = {
            type = "string",
        },
    },
}

M.CreateSAMLProviderOutput = {
    type = "structure",
    id = "CreateSAMLProviderOutput",
    members = {
        SAMLProviderArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateServiceLinkedRoleInput = {
    type = "structure",
    id = "CreateServiceLinkedRoleInput",
    members = {
        AWSServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        CustomSuffix = {
            type = "string",
        },
    },
}

M.CreateServiceLinkedRoleOutput = {
    type = "structure",
    id = "CreateServiceLinkedRoleOutput",
    members = {
        Role = M.Role,
    },
}

M.CreateServiceSpecificCredentialInput = {
    type = "structure",
    id = "CreateServiceSpecificCredentialInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CredentialAgeDays = {
            type = "integer",
        },
    },
}

M.ServiceSpecificCredential = {
    type = "structure",
    id = "ServiceSpecificCredential",
    members = {
        CreateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ExpirationDate = {
            type = "timestamp",
        },
        ServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceUserName = {
            type = "string",
            traits = {
                default = "",
            },
        },
        ServicePassword = {
            type = "string",
            traits = {
                default = "",
            },
        },
        ServiceCredentialAlias = {
            type = "string",
        },
        ServiceCredentialSecret = {
            type = "string",
        },
        ServiceSpecificCredentialId = {
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
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateServiceSpecificCredentialOutput = {
    type = "structure",
    id = "CreateServiceSpecificCredentialOutput",
    members = {
        ServiceSpecificCredential = M.ServiceSpecificCredential,
    },
}

M.ServiceNotSupportedException = {
    type = "structure",
    id = "ServiceNotSupportedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateUserInput = {
    type = "structure",
    id = "CreateUserInput",
    members = {
        Path = {
            type = "string",
        },
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionsBoundary = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.User = {
    type = "structure",
    id = "User",
    members = {
        Path = {
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
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        PasswordLastUsed = {
            type = "timestamp",
        },
        PermissionsBoundary = M.AttachedPermissionsBoundary,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateUserOutput = {
    type = "structure",
    id = "CreateUserOutput",
    members = {
        User = M.User,
    },
}

M.CreateVirtualMFADeviceInput = {
    type = "structure",
    id = "CreateVirtualMFADeviceInput",
    members = {
        Path = {
            type = "string",
        },
        VirtualMFADeviceName = {
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

M.VirtualMFADevice = {
    type = "structure",
    id = "VirtualMFADevice",
    members = {
        SerialNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Base32StringSeed = {
            type = "blob",
        },
        QRCodePNG = {
            type = "blob",
        },
        User = M.User,
        EnableDate = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateVirtualMFADeviceOutput = {
    type = "structure",
    id = "CreateVirtualMFADeviceOutput",
    members = {
        VirtualMFADevice = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualMFADevice }),
    },
}

M.DeactivateMFADeviceInput = {
    type = "structure",
    id = "DeactivateMFADeviceInput",
    members = {
        UserName = {
            type = "string",
        },
        SerialNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeactivateMFADeviceOutput = {
    type = "structure",
    id = "DeactivateMFADeviceOutput",
}

M.DeleteAccessKeyInput = {
    type = "structure",
    id = "DeleteAccessKeyInput",
    members = {
        UserName = {
            type = "string",
        },
        AccessKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAccessKeyOutput = {
    type = "structure",
    id = "DeleteAccessKeyOutput",
}

M.DeleteAccountAliasInput = {
    type = "structure",
    id = "DeleteAccountAliasInput",
    members = {
        AccountAlias = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAccountAliasOutput = {
    type = "structure",
    id = "DeleteAccountAliasOutput",
}

M.DeleteAccountPasswordPolicyInput = {
    type = "structure",
    id = "DeleteAccountPasswordPolicyInput",
}

M.DeleteAccountPasswordPolicyOutput = {
    type = "structure",
    id = "DeleteAccountPasswordPolicyOutput",
}

M.DeleteConflictException = {
    type = "structure",
    id = "DeleteConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteGroupInput = {
    type = "structure",
    id = "DeleteGroupInput",
    members = {
        GroupName = {
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

M.DeleteGroupPolicyInput = {
    type = "structure",
    id = "DeleteGroupPolicyInput",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteGroupPolicyOutput = {
    type = "structure",
    id = "DeleteGroupPolicyOutput",
}

M.DeleteInstanceProfileInput = {
    type = "structure",
    id = "DeleteInstanceProfileInput",
    members = {
        InstanceProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteInstanceProfileOutput = {
    type = "structure",
    id = "DeleteInstanceProfileOutput",
}

M.DeleteLoginProfileInput = {
    type = "structure",
    id = "DeleteLoginProfileInput",
    members = {
        UserName = {
            type = "string",
        },
    },
}

M.DeleteLoginProfileOutput = {
    type = "structure",
    id = "DeleteLoginProfileOutput",
}

M.DeleteOpenIDConnectProviderInput = {
    type = "structure",
    id = "DeleteOpenIDConnectProviderInput",
    members = {
        OpenIDConnectProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteOpenIDConnectProviderOutput = {
    type = "structure",
    id = "DeleteOpenIDConnectProviderOutput",
}

M.DeletePolicyInput = {
    type = "structure",
    id = "DeletePolicyInput",
    members = {
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePolicyOutput = {
    type = "structure",
    id = "DeletePolicyOutput",
}

M.DeletePolicyVersionInput = {
    type = "structure",
    id = "DeletePolicyVersionInput",
    members = {
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePolicyVersionOutput = {
    type = "structure",
    id = "DeletePolicyVersionOutput",
}

M.DeleteRoleInput = {
    type = "structure",
    id = "DeleteRoleInput",
    members = {
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRoleOutput = {
    type = "structure",
    id = "DeleteRoleOutput",
}

M.DeleteRolePermissionsBoundaryInput = {
    type = "structure",
    id = "DeleteRolePermissionsBoundaryInput",
    members = {
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRolePermissionsBoundaryOutput = {
    type = "structure",
    id = "DeleteRolePermissionsBoundaryOutput",
}

M.DeleteRolePolicyInput = {
    type = "structure",
    id = "DeleteRolePolicyInput",
    members = {
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRolePolicyOutput = {
    type = "structure",
    id = "DeleteRolePolicyOutput",
}

M.DeleteSAMLProviderInput = {
    type = "structure",
    id = "DeleteSAMLProviderInput",
    members = {
        SAMLProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSAMLProviderOutput = {
    type = "structure",
    id = "DeleteSAMLProviderOutput",
}

M.DeleteServerCertificateInput = {
    type = "structure",
    id = "DeleteServerCertificateInput",
    members = {
        ServerCertificateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteServerCertificateOutput = {
    type = "structure",
    id = "DeleteServerCertificateOutput",
}

M.DeleteServiceLinkedRoleInput = {
    type = "structure",
    id = "DeleteServiceLinkedRoleInput",
    members = {
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteServiceLinkedRoleOutput = {
    type = "structure",
    id = "DeleteServiceLinkedRoleOutput",
    members = {
        DeletionTaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteServiceSpecificCredentialInput = {
    type = "structure",
    id = "DeleteServiceSpecificCredentialInput",
    members = {
        UserName = {
            type = "string",
        },
        ServiceSpecificCredentialId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteServiceSpecificCredentialOutput = {
    type = "structure",
    id = "DeleteServiceSpecificCredentialOutput",
}

M.DeleteSigningCertificateInput = {
    type = "structure",
    id = "DeleteSigningCertificateInput",
    members = {
        UserName = {
            type = "string",
        },
        CertificateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSigningCertificateOutput = {
    type = "structure",
    id = "DeleteSigningCertificateOutput",
}

M.DeleteSSHPublicKeyInput = {
    type = "structure",
    id = "DeleteSSHPublicKeyInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SSHPublicKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSSHPublicKeyOutput = {
    type = "structure",
    id = "DeleteSSHPublicKeyOutput",
}

M.DeleteUserInput = {
    type = "structure",
    id = "DeleteUserInput",
    members = {
        UserName = {
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

M.DeleteUserPermissionsBoundaryInput = {
    type = "structure",
    id = "DeleteUserPermissionsBoundaryInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserPermissionsBoundaryOutput = {
    type = "structure",
    id = "DeleteUserPermissionsBoundaryOutput",
}

M.DeleteUserPolicyInput = {
    type = "structure",
    id = "DeleteUserPolicyInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteUserPolicyOutput = {
    type = "structure",
    id = "DeleteUserPolicyOutput",
}

M.DeleteVirtualMFADeviceInput = {
    type = "structure",
    id = "DeleteVirtualMFADeviceInput",
    members = {
        SerialNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteVirtualMFADeviceOutput = {
    type = "structure",
    id = "DeleteVirtualMFADeviceOutput",
}

M.DetachGroupPolicyInput = {
    type = "structure",
    id = "DetachGroupPolicyInput",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetachGroupPolicyOutput = {
    type = "structure",
    id = "DetachGroupPolicyOutput",
}

M.DetachRolePolicyInput = {
    type = "structure",
    id = "DetachRolePolicyInput",
    members = {
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetachRolePolicyOutput = {
    type = "structure",
    id = "DetachRolePolicyOutput",
}

M.DetachUserPolicyInput = {
    type = "structure",
    id = "DetachUserPolicyInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetachUserPolicyOutput = {
    type = "structure",
    id = "DetachUserPolicyOutput",
}

M.DisableOrganizationsRootCredentialsManagementInput = {
    type = "structure",
    id = "DisableOrganizationsRootCredentialsManagementInput",
}

M.FeatureType = {
    ROOT_CREDENTIALS_MANAGEMENT = "RootCredentialsManagement",
    ROOT_SESSIONS = "RootSessions",
}

M.DisableOrganizationsRootCredentialsManagementOutput = {
    type = "structure",
    id = "DisableOrganizationsRootCredentialsManagementOutput",
    members = {
        OrganizationId = {
            type = "string",
        },
        EnabledFeatures = {
            type = "list",
            member = { type = "string" },
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

M.OrganizationNotInAllFeaturesModeException = {
    type = "structure",
    id = "OrganizationNotInAllFeaturesModeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceAccessNotEnabledException = {
    type = "structure",
    id = "ServiceAccessNotEnabledException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DisableOrganizationsRootSessionsInput = {
    type = "structure",
    id = "DisableOrganizationsRootSessionsInput",
}

M.DisableOrganizationsRootSessionsOutput = {
    type = "structure",
    id = "DisableOrganizationsRootSessionsOutput",
    members = {
        OrganizationId = {
            type = "string",
        },
        EnabledFeatures = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DisableOutboundWebIdentityFederationInput = {
    type = "structure",
    id = "DisableOutboundWebIdentityFederationInput",
}

M.DisableOutboundWebIdentityFederationOutput = {
    type = "structure",
    id = "DisableOutboundWebIdentityFederationOutput",
}

M.FeatureDisabledException = {
    type = "structure",
    id = "FeatureDisabledException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EnableMFADeviceInput = {
    type = "structure",
    id = "EnableMFADeviceInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SerialNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationCode1 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationCode2 = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableMFADeviceOutput = {
    type = "structure",
    id = "EnableMFADeviceOutput",
}

M.InvalidAuthenticationCodeException = {
    type = "structure",
    id = "InvalidAuthenticationCodeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CallerIsNotManagementAccountException = {
    type = "structure",
    id = "CallerIsNotManagementAccountException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EnableOrganizationsRootCredentialsManagementInput = {
    type = "structure",
    id = "EnableOrganizationsRootCredentialsManagementInput",
}

M.EnableOrganizationsRootCredentialsManagementOutput = {
    type = "structure",
    id = "EnableOrganizationsRootCredentialsManagementOutput",
    members = {
        OrganizationId = {
            type = "string",
        },
        EnabledFeatures = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EnableOrganizationsRootSessionsInput = {
    type = "structure",
    id = "EnableOrganizationsRootSessionsInput",
}

M.EnableOrganizationsRootSessionsOutput = {
    type = "structure",
    id = "EnableOrganizationsRootSessionsOutput",
    members = {
        OrganizationId = {
            type = "string",
        },
        EnabledFeatures = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EnableOutboundWebIdentityFederationInput = {
    type = "structure",
    id = "EnableOutboundWebIdentityFederationInput",
}

M.EnableOutboundWebIdentityFederationOutput = {
    type = "structure",
    id = "EnableOutboundWebIdentityFederationOutput",
    members = {
        IssuerIdentifier = {
            type = "string",
        },
    },
}

M.FeatureEnabledException = {
    type = "structure",
    id = "FeatureEnabledException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GenerateCredentialReportInput = {
    type = "structure",
    id = "GenerateCredentialReportInput",
}

M.ReportStateType = {
    STARTED = "STARTED",
    INPROGRESS = "INPROGRESS",
    COMPLETE = "COMPLETE",
}

M.GenerateCredentialReportOutput = {
    type = "structure",
    id = "GenerateCredentialReportOutput",
    members = {
        State = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.GenerateOrganizationsAccessReportInput = {
    type = "structure",
    id = "GenerateOrganizationsAccessReportInput",
    members = {
        EntityPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OrganizationsPolicyId = {
            type = "string",
        },
    },
}

M.GenerateOrganizationsAccessReportOutput = {
    type = "structure",
    id = "GenerateOrganizationsAccessReportOutput",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.ReportGenerationLimitExceededException = {
    type = "structure",
    id = "ReportGenerationLimitExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GenerateServiceLastAccessedDetailsInput = {
    type = "structure",
    id = "GenerateServiceLastAccessedDetailsInput",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Granularity = {
            type = "string",
        },
    },
}

M.GenerateServiceLastAccessedDetailsOutput = {
    type = "structure",
    id = "GenerateServiceLastAccessedDetailsOutput",
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.GetAccessKeyLastUsedInput = {
    type = "structure",
    id = "GetAccessKeyLastUsedInput",
    members = {
        AccessKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAccessKeyLastUsedOutput = {
    type = "structure",
    id = "GetAccessKeyLastUsedOutput",
    members = {
        UserName = {
            type = "string",
        },
        AccessKeyLastUsed = M.AccessKeyLastUsed,
    },
}

M.EntityType = {
    User = "User",
    Role = "Role",
    Group = "Group",
    LocalManagedPolicy = "LocalManagedPolicy",
    AWSManagedPolicy = "AWSManagedPolicy",
}

M.GetAccountAuthorizationDetailsInput = {
    type = "structure",
    id = "GetAccountAuthorizationDetailsInput",
    members = {
        Filter = {
            type = "list",
            member = { type = "string" },
        },
        MaxItems = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.PolicyDetail = {
    type = "structure",
    id = "PolicyDetail",
    members = {
        PolicyName = {
            type = "string",
        },
        PolicyDocument = {
            type = "string",
        },
    },
}

M.GroupDetail = {
    type = "structure",
    id = "GroupDetail",
    members = {
        Path = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
        GroupId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
        GroupPolicyList = {
            type = "list",
            member = M.PolicyDetail,
        },
        AttachedManagedPolicies = {
            type = "list",
            member = M.AttachedPolicy,
        },
    },
}

M.ManagedPolicyDetail = {
    type = "structure",
    id = "ManagedPolicyDetail",
    members = {
        PolicyName = {
            type = "string",
        },
        PolicyId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Path = {
            type = "string",
        },
        DefaultVersionId = {
            type = "string",
        },
        AttachmentCount = {
            type = "integer",
        },
        PermissionsBoundaryUsageCount = {
            type = "integer",
        },
        IsAttachable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Description = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
        UpdateDate = {
            type = "timestamp",
        },
        PolicyVersionList = {
            type = "list",
            member = M.PolicyVersion,
        },
    },
}

M.RoleDetail = {
    type = "structure",
    id = "RoleDetail",
    members = {
        Path = {
            type = "string",
        },
        RoleName = {
            type = "string",
        },
        RoleId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
        AssumeRolePolicyDocument = {
            type = "string",
        },
        InstanceProfileList = {
            type = "list",
            member = M.InstanceProfile,
        },
        RolePolicyList = {
            type = "list",
            member = M.PolicyDetail,
        },
        AttachedManagedPolicies = {
            type = "list",
            member = M.AttachedPolicy,
        },
        PermissionsBoundary = M.AttachedPermissionsBoundary,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        RoleLastUsed = M.RoleLastUsed,
    },
}

M.UserDetail = {
    type = "structure",
    id = "UserDetail",
    members = {
        Path = {
            type = "string",
        },
        UserName = {
            type = "string",
        },
        UserId = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
        UserPolicyList = {
            type = "list",
            member = M.PolicyDetail,
        },
        GroupList = {
            type = "list",
            member = { type = "string" },
        },
        AttachedManagedPolicies = {
            type = "list",
            member = M.AttachedPolicy,
        },
        PermissionsBoundary = M.AttachedPermissionsBoundary,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetAccountAuthorizationDetailsOutput = {
    type = "structure",
    id = "GetAccountAuthorizationDetailsOutput",
    members = {
        UserDetailList = {
            type = "list",
            member = M.UserDetail,
        },
        GroupDetailList = {
            type = "list",
            member = M.GroupDetail,
        },
        RoleDetailList = {
            type = "list",
            member = M.RoleDetail,
        },
        Policies = {
            type = "list",
            member = M.ManagedPolicyDetail,
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.GetAccountPasswordPolicyInput = {
    type = "structure",
    id = "GetAccountPasswordPolicyInput",
}

M.PasswordPolicy = {
    type = "structure",
    id = "PasswordPolicy",
    members = {
        MinimumPasswordLength = {
            type = "integer",
        },
        RequireSymbols = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RequireNumbers = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RequireUppercaseCharacters = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RequireLowercaseCharacters = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AllowUsersToChangePassword = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        ExpirePasswords = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        MaxPasswordAge = {
            type = "integer",
        },
        PasswordReusePrevention = {
            type = "integer",
        },
        HardExpiry = {
            type = "boolean",
        },
    },
}

M.GetAccountPasswordPolicyOutput = {
    type = "structure",
    id = "GetAccountPasswordPolicyOutput",
    members = {
        PasswordPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PasswordPolicy }),
    },
}

M.GetAccountSummaryInput = {
    type = "structure",
    id = "GetAccountSummaryInput",
}

M.summaryKeyType = {
    Users = "Users",
    UsersQuota = "UsersQuota",
    Groups = "Groups",
    GroupsQuota = "GroupsQuota",
    ServerCertificates = "ServerCertificates",
    ServerCertificatesQuota = "ServerCertificatesQuota",
    UserPolicySizeQuota = "UserPolicySizeQuota",
    GroupPolicySizeQuota = "GroupPolicySizeQuota",
    GroupsPerUserQuota = "GroupsPerUserQuota",
    SigningCertificatesPerUserQuota = "SigningCertificatesPerUserQuota",
    AccessKeysPerUserQuota = "AccessKeysPerUserQuota",
    MFADevices = "MFADevices",
    MFADevicesInUse = "MFADevicesInUse",
    AccountMFAEnabled = "AccountMFAEnabled",
    AccountAccessKeysPresent = "AccountAccessKeysPresent",
    AccountPasswordPresent = "AccountPasswordPresent",
    AccountSigningCertificatesPresent = "AccountSigningCertificatesPresent",
    AttachedPoliciesPerGroupQuota = "AttachedPoliciesPerGroupQuota",
    AttachedPoliciesPerRoleQuota = "AttachedPoliciesPerRoleQuota",
    AttachedPoliciesPerUserQuota = "AttachedPoliciesPerUserQuota",
    Policies = "Policies",
    PoliciesQuota = "PoliciesQuota",
    PolicySizeQuota = "PolicySizeQuota",
    PolicyVersionsInUse = "PolicyVersionsInUse",
    PolicyVersionsInUseQuota = "PolicyVersionsInUseQuota",
    VersionsPerPolicyQuota = "VersionsPerPolicyQuota",
    GlobalEndpointTokenVersion = "GlobalEndpointTokenVersion",
    AssumeRolePolicySizeQuota = "AssumeRolePolicySizeQuota",
    InstanceProfiles = "InstanceProfiles",
    InstanceProfilesQuota = "InstanceProfilesQuota",
    Providers = "Providers",
    RolePolicySizeQuota = "RolePolicySizeQuota",
    Roles = "Roles",
    RolesQuota = "RolesQuota",
}

M.GetAccountSummaryOutput = {
    type = "structure",
    id = "GetAccountSummaryOutput",
    members = {
        SummaryMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
    },
}

M.GetContextKeysForCustomPolicyInput = {
    type = "structure",
    id = "GetContextKeysForCustomPolicyInput",
    members = {
        PolicyInputList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetContextKeysForCustomPolicyOutput = {
    type = "structure",
    id = "GetContextKeysForCustomPolicyOutput",
    members = {
        ContextKeyNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetContextKeysForPrincipalPolicyInput = {
    type = "structure",
    id = "GetContextKeysForPrincipalPolicyInput",
    members = {
        PolicySourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyInputList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetContextKeysForPrincipalPolicyOutput = {
    type = "structure",
    id = "GetContextKeysForPrincipalPolicyOutput",
    members = {
        ContextKeyNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CredentialReportExpiredException = {
    type = "structure",
    id = "CredentialReportExpiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CredentialReportNotPresentException = {
    type = "structure",
    id = "CredentialReportNotPresentException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CredentialReportNotReadyException = {
    type = "structure",
    id = "CredentialReportNotReadyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetCredentialReportInput = {
    type = "structure",
    id = "GetCredentialReportInput",
}

M.ReportFormatType = {
    text_csv = "text/csv",
}

M.GetCredentialReportOutput = {
    type = "structure",
    id = "GetCredentialReportOutput",
    members = {
        Content = {
            type = "blob",
        },
        ReportFormat = {
            type = "string",
        },
        GeneratedTime = {
            type = "timestamp",
        },
    },
}

M.GetDelegationRequestInput = {
    type = "structure",
    id = "GetDelegationRequestInput",
    members = {
        DelegationRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DelegationPermissionCheck = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.stateType = {
    UNASSIGNED = "UNASSIGNED",
    ASSIGNED = "ASSIGNED",
    PENDING_APPROVAL = "PENDING_APPROVAL",
    FINALIZED = "FINALIZED",
    ACCEPTED = "ACCEPTED",
    REJECTED = "REJECTED",
    EXPIRED = "EXPIRED",
}

M.DelegationRequest = {
    type = "structure",
    id = "DelegationRequest",
    members = {
        DelegationRequestId = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        RequestMessage = {
            type = "string",
        },
        Permissions = M.DelegationPermission,
        PermissionPolicy = {
            type = "string",
        },
        RolePermissionRestrictionArns = {
            type = "list",
            member = { type = "string" },
        },
        OwnerId = {
            type = "string",
        },
        ApproverId = {
            type = "string",
        },
        State = {
            type = "string",
        },
        ExpirationTime = {
            type = "timestamp",
        },
        RequestorId = {
            type = "string",
        },
        RequestorName = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
        SessionDuration = {
            type = "integer",
        },
        RedirectUrl = {
            type = "string",
        },
        Notes = {
            type = "string",
        },
        RejectionReason = {
            type = "string",
        },
        OnlySendByOwner = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        UpdatedTime = {
            type = "timestamp",
        },
    },
}

M.permissionCheckResultType = {
    ALLOWED = "ALLOWED",
    DENIED = "DENIED",
    UNSURE = "UNSURE",
}

M.permissionCheckStatusType = {
    COMPLETE = "COMPLETE",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
}

M.GetDelegationRequestOutput = {
    type = "structure",
    id = "GetDelegationRequestOutput",
    members = {
        DelegationRequest = M.DelegationRequest,
        PermissionCheckStatus = {
            type = "string",
        },
        PermissionCheckResult = {
            type = "string",
        },
    },
}

M.GetGroupInput = {
    type = "structure",
    id = "GetGroupInput",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.GetGroupOutput = {
    type = "structure",
    id = "GetGroupOutput",
    members = {
        Group = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Group }),
        Users = {
            type = "list",
            member = M.User,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.GetGroupPolicyInput = {
    type = "structure",
    id = "GetGroupPolicyInput",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetGroupPolicyOutput = {
    type = "structure",
    id = "GetGroupPolicyOutput",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetHumanReadableSummaryInput = {
    type = "structure",
    id = "GetHumanReadableSummaryInput",
    members = {
        EntityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Locale = {
            type = "string",
        },
    },
}

M.summaryStateType = {
    AVAILABLE = "AVAILABLE",
    NOT_AVAILABLE = "NOT_AVAILABLE",
    NOT_SUPPORTED = "NOT_SUPPORTED",
    FAILED = "FAILED",
}

M.GetHumanReadableSummaryOutput = {
    type = "structure",
    id = "GetHumanReadableSummaryOutput",
    members = {
        SummaryContent = {
            type = "string",
        },
        Locale = {
            type = "string",
        },
        SummaryState = {
            type = "string",
        },
    },
}

M.GetInstanceProfileInput = {
    type = "structure",
    id = "GetInstanceProfileInput",
    members = {
        InstanceProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetInstanceProfileOutput = {
    type = "structure",
    id = "GetInstanceProfileOutput",
    members = {
        InstanceProfile = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceProfile }),
    },
}

M.GetLoginProfileInput = {
    type = "structure",
    id = "GetLoginProfileInput",
    members = {
        UserName = {
            type = "string",
        },
    },
}

M.GetLoginProfileOutput = {
    type = "structure",
    id = "GetLoginProfileOutput",
    members = {
        LoginProfile = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoginProfile }),
    },
}

M.GetMFADeviceInput = {
    type = "structure",
    id = "GetMFADeviceInput",
    members = {
        SerialNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
            type = "string",
        },
    },
}

M.GetMFADeviceOutput = {
    type = "structure",
    id = "GetMFADeviceOutput",
    members = {
        UserName = {
            type = "string",
        },
        SerialNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnableDate = {
            type = "timestamp",
        },
        Certifications = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetOpenIDConnectProviderInput = {
    type = "structure",
    id = "GetOpenIDConnectProviderInput",
    members = {
        OpenIDConnectProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetOpenIDConnectProviderOutput = {
    type = "structure",
    id = "GetOpenIDConnectProviderOutput",
    members = {
        Url = {
            type = "string",
        },
        ClientIDList = {
            type = "list",
            member = { type = "string" },
        },
        ThumbprintList = {
            type = "list",
            member = { type = "string" },
        },
        CreateDate = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.sortKeyType = {
    SERVICE_NAMESPACE_ASCENDING = "SERVICE_NAMESPACE_ASCENDING",
    SERVICE_NAMESPACE_DESCENDING = "SERVICE_NAMESPACE_DESCENDING",
    LAST_AUTHENTICATED_TIME_ASCENDING = "LAST_AUTHENTICATED_TIME_ASCENDING",
    LAST_AUTHENTICATED_TIME_DESCENDING = "LAST_AUTHENTICATED_TIME_DESCENDING",
}

M.GetOrganizationsAccessReportInput = {
    type = "structure",
    id = "GetOrganizationsAccessReportInput",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxItems = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
        SortKey = {
            type = "string",
        },
    },
}

M.ErrorDetails = {
    type = "structure",
    id = "ErrorDetails",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Code = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.jobStatusType = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.GetOrganizationsAccessReportOutput = {
    type = "structure",
    id = "GetOrganizationsAccessReportOutput",
    members = {
        JobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobCreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        JobCompletionDate = {
            type = "timestamp",
        },
        NumberOfServicesAccessible = {
            type = "integer",
        },
        NumberOfServicesNotAccessed = {
            type = "integer",
        },
        AccessDetails = {
            type = "list",
            member = M.AccessDetail,
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
        ErrorDetails = M.ErrorDetails,
    },
}

M.GetOutboundWebIdentityFederationInfoInput = {
    type = "structure",
    id = "GetOutboundWebIdentityFederationInfoInput",
}

M.GetOutboundWebIdentityFederationInfoOutput = {
    type = "structure",
    id = "GetOutboundWebIdentityFederationInfoOutput",
    members = {
        IssuerIdentifier = {
            type = "string",
        },
        JwtVendingEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetPolicyInput = {
    type = "structure",
    id = "GetPolicyInput",
    members = {
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPolicyOutput = {
    type = "structure",
    id = "GetPolicyOutput",
    members = {
        Policy = M.Policy,
    },
}

M.GetPolicyVersionInput = {
    type = "structure",
    id = "GetPolicyVersionInput",
    members = {
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPolicyVersionOutput = {
    type = "structure",
    id = "GetPolicyVersionOutput",
    members = {
        PolicyVersion = M.PolicyVersion,
    },
}

M.GetRoleInput = {
    type = "structure",
    id = "GetRoleInput",
    members = {
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRoleOutput = {
    type = "structure",
    id = "GetRoleOutput",
    members = {
        Role = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Role }),
    },
}

M.GetRolePolicyInput = {
    type = "structure",
    id = "GetRolePolicyInput",
    members = {
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRolePolicyOutput = {
    type = "structure",
    id = "GetRolePolicyOutput",
    members = {
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSAMLProviderInput = {
    type = "structure",
    id = "GetSAMLProviderInput",
    members = {
        SAMLProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SAMLPrivateKey = {
    type = "structure",
    id = "SAMLPrivateKey",
    members = {
        KeyId = {
            type = "string",
        },
        Timestamp = {
            type = "timestamp",
        },
    },
}

M.GetSAMLProviderOutput = {
    type = "structure",
    id = "GetSAMLProviderOutput",
    members = {
        SAMLProviderUUID = {
            type = "string",
        },
        SAMLMetadataDocument = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
        },
        ValidUntil = {
            type = "timestamp",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        AssertionEncryptionMode = {
            type = "string",
        },
        PrivateKeyList = {
            type = "list",
            member = M.SAMLPrivateKey,
        },
    },
}

M.GetServerCertificateInput = {
    type = "structure",
    id = "GetServerCertificateInput",
    members = {
        ServerCertificateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServerCertificateMetadata = {
    type = "structure",
    id = "ServerCertificateMetadata",
    members = {
        Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerCertificateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServerCertificateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UploadDate = {
            type = "timestamp",
        },
        Expiration = {
            type = "timestamp",
        },
    },
}

M.ServerCertificate = {
    type = "structure",
    id = "ServerCertificate",
    members = {
        ServerCertificateMetadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServerCertificateMetadata }),
        CertificateBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificateChain = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetServerCertificateOutput = {
    type = "structure",
    id = "GetServerCertificateOutput",
    members = {
        ServerCertificate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServerCertificate }),
    },
}

M.GetServiceLastAccessedDetailsInput = {
    type = "structure",
    id = "GetServiceLastAccessedDetailsInput",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxItems = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.TrackedActionLastAccessed = {
    type = "structure",
    id = "TrackedActionLastAccessed",
    members = {
        ActionName = {
            type = "string",
        },
        LastAccessedEntity = {
            type = "string",
        },
        LastAccessedTime = {
            type = "timestamp",
        },
        LastAccessedRegion = {
            type = "string",
        },
    },
}

M.ServiceLastAccessed = {
    type = "structure",
    id = "ServiceLastAccessed",
    members = {
        ServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastAuthenticated = {
            type = "timestamp",
        },
        ServiceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastAuthenticatedEntity = {
            type = "string",
        },
        LastAuthenticatedRegion = {
            type = "string",
        },
        TotalAuthenticatedEntities = {
            type = "integer",
        },
        TrackedActionsLastAccessed = {
            type = "list",
            member = M.TrackedActionLastAccessed,
        },
    },
}

M.GetServiceLastAccessedDetailsOutput = {
    type = "structure",
    id = "GetServiceLastAccessedDetailsOutput",
    members = {
        JobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobType = {
            type = "string",
        },
        JobCreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ServicesLastAccessed = {
            type = "list",
            member = M.ServiceLastAccessed,
            traits = {
                required = true,
            },
        },
        JobCompletionDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
        Error = M.ErrorDetails,
    },
}

M.GetServiceLastAccessedDetailsWithEntitiesInput = {
    type = "structure",
    id = "GetServiceLastAccessedDetailsWithEntitiesInput",
    members = {
        JobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceNamespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxItems = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.policyOwnerEntityType = {
    USER = "USER",
    ROLE = "ROLE",
    GROUP = "GROUP",
}

M.EntityInfo = {
    type = "structure",
    id = "EntityInfo",
    members = {
        Arn = {
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
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Path = {
            type = "string",
        },
    },
}

M.EntityDetails = {
    type = "structure",
    id = "EntityDetails",
    members = {
        EntityInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EntityInfo }),
        LastAuthenticated = {
            type = "timestamp",
        },
    },
}

M.GetServiceLastAccessedDetailsWithEntitiesOutput = {
    type = "structure",
    id = "GetServiceLastAccessedDetailsWithEntitiesOutput",
    members = {
        JobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JobCreationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        JobCompletionDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EntityDetailsList = {
            type = "list",
            member = M.EntityDetails,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
        Error = M.ErrorDetails,
    },
}

M.GetServiceLinkedRoleDeletionStatusInput = {
    type = "structure",
    id = "GetServiceLinkedRoleDeletionStatusInput",
    members = {
        DeletionTaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RoleUsageType = {
    type = "structure",
    id = "RoleUsageType",
    members = {
        Region = {
            type = "string",
        },
        Resources = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DeletionTaskFailureReasonType = {
    type = "structure",
    id = "DeletionTaskFailureReasonType",
    members = {
        Reason = {
            type = "string",
        },
        RoleUsageList = {
            type = "list",
            member = M.RoleUsageType,
        },
    },
}

M.DeletionTaskStatusType = {
    SUCCEEDED = "SUCCEEDED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    NOT_STARTED = "NOT_STARTED",
}

M.GetServiceLinkedRoleDeletionStatusOutput = {
    type = "structure",
    id = "GetServiceLinkedRoleDeletionStatusOutput",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = M.DeletionTaskFailureReasonType,
    },
}

M.encodingType = {
    SSH = "SSH",
    PEM = "PEM",
}

M.GetSSHPublicKeyInput = {
    type = "structure",
    id = "GetSSHPublicKeyInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SSHPublicKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Encoding = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SSHPublicKey = {
    type = "structure",
    id = "SSHPublicKey",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SSHPublicKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Fingerprint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SSHPublicKeyBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UploadDate = {
            type = "timestamp",
        },
    },
}

M.GetSSHPublicKeyOutput = {
    type = "structure",
    id = "GetSSHPublicKeyOutput",
    members = {
        SSHPublicKey = M.SSHPublicKey,
    },
}

M.UnrecognizedPublicKeyEncodingException = {
    type = "structure",
    id = "UnrecognizedPublicKeyEncodingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetUserInput = {
    type = "structure",
    id = "GetUserInput",
    members = {
        UserName = {
            type = "string",
        },
    },
}

M.GetUserOutput = {
    type = "structure",
    id = "GetUserOutput",
    members = {
        User = setmetatable({ traits = {
            required = true,
        } }, { __index = M.User }),
    },
}

M.GetUserPolicyInput = {
    type = "structure",
    id = "GetUserPolicyInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetUserPolicyOutput = {
    type = "structure",
    id = "GetUserPolicyOutput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAccessKeysInput = {
    type = "structure",
    id = "ListAccessKeysInput",
    members = {
        UserName = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListAccessKeysOutput = {
    type = "structure",
    id = "ListAccessKeysOutput",
    members = {
        AccessKeyMetadata = {
            type = "list",
            member = M.AccessKeyMetadata,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListAccountAliasesInput = {
    type = "structure",
    id = "ListAccountAliasesInput",
    members = {
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListAccountAliasesOutput = {
    type = "structure",
    id = "ListAccountAliasesOutput",
    members = {
        AccountAliases = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListAttachedGroupPoliciesInput = {
    type = "structure",
    id = "ListAttachedGroupPoliciesInput",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PathPrefix = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListAttachedGroupPoliciesOutput = {
    type = "structure",
    id = "ListAttachedGroupPoliciesOutput",
    members = {
        AttachedPolicies = {
            type = "list",
            member = M.AttachedPolicy,
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListAttachedRolePoliciesInput = {
    type = "structure",
    id = "ListAttachedRolePoliciesInput",
    members = {
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PathPrefix = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListAttachedRolePoliciesOutput = {
    type = "structure",
    id = "ListAttachedRolePoliciesOutput",
    members = {
        AttachedPolicies = {
            type = "list",
            member = M.AttachedPolicy,
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListAttachedUserPoliciesInput = {
    type = "structure",
    id = "ListAttachedUserPoliciesInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PathPrefix = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListAttachedUserPoliciesOutput = {
    type = "structure",
    id = "ListAttachedUserPoliciesOutput",
    members = {
        AttachedPolicies = {
            type = "list",
            member = M.AttachedPolicy,
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListDelegationRequestsInput = {
    type = "structure",
    id = "ListDelegationRequestsInput",
    members = {
        OwnerId = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListDelegationRequestsOutput = {
    type = "structure",
    id = "ListDelegationRequestsOutput",
    members = {
        DelegationRequests = {
            type = "list",
            member = M.DelegationRequest,
        },
        Marker = {
            type = "string",
        },
        isTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PolicyUsageType = {
    PermissionsPolicy = "PermissionsPolicy",
    PermissionsBoundary = "PermissionsBoundary",
}

M.ListEntitiesForPolicyInput = {
    type = "structure",
    id = "ListEntitiesForPolicyInput",
    members = {
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EntityFilter = {
            type = "string",
        },
        PathPrefix = {
            type = "string",
        },
        PolicyUsageFilter = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.PolicyGroup = {
    type = "structure",
    id = "PolicyGroup",
    members = {
        GroupName = {
            type = "string",
        },
        GroupId = {
            type = "string",
        },
    },
}

M.PolicyRole = {
    type = "structure",
    id = "PolicyRole",
    members = {
        RoleName = {
            type = "string",
        },
        RoleId = {
            type = "string",
        },
    },
}

M.PolicyUser = {
    type = "structure",
    id = "PolicyUser",
    members = {
        UserName = {
            type = "string",
        },
        UserId = {
            type = "string",
        },
    },
}

M.ListEntitiesForPolicyOutput = {
    type = "structure",
    id = "ListEntitiesForPolicyOutput",
    members = {
        PolicyGroups = {
            type = "list",
            member = M.PolicyGroup,
        },
        PolicyUsers = {
            type = "list",
            member = M.PolicyUser,
        },
        PolicyRoles = {
            type = "list",
            member = M.PolicyRole,
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListGroupPoliciesInput = {
    type = "structure",
    id = "ListGroupPoliciesInput",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListGroupPoliciesOutput = {
    type = "structure",
    id = "ListGroupPoliciesOutput",
    members = {
        PolicyNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListGroupsInput = {
    type = "structure",
    id = "ListGroupsInput",
    members = {
        PathPrefix = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListGroupsOutput = {
    type = "structure",
    id = "ListGroupsOutput",
    members = {
        Groups = {
            type = "list",
            member = M.Group,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListGroupsForUserInput = {
    type = "structure",
    id = "ListGroupsForUserInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListGroupsForUserOutput = {
    type = "structure",
    id = "ListGroupsForUserOutput",
    members = {
        Groups = {
            type = "list",
            member = M.Group,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListInstanceProfilesInput = {
    type = "structure",
    id = "ListInstanceProfilesInput",
    members = {
        PathPrefix = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListInstanceProfilesOutput = {
    type = "structure",
    id = "ListInstanceProfilesOutput",
    members = {
        InstanceProfiles = {
            type = "list",
            member = M.InstanceProfile,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListInstanceProfilesForRoleInput = {
    type = "structure",
    id = "ListInstanceProfilesForRoleInput",
    members = {
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListInstanceProfilesForRoleOutput = {
    type = "structure",
    id = "ListInstanceProfilesForRoleOutput",
    members = {
        InstanceProfiles = {
            type = "list",
            member = M.InstanceProfile,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListInstanceProfileTagsInput = {
    type = "structure",
    id = "ListInstanceProfileTagsInput",
    members = {
        InstanceProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListInstanceProfileTagsOutput = {
    type = "structure",
    id = "ListInstanceProfileTagsOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListMFADevicesInput = {
    type = "structure",
    id = "ListMFADevicesInput",
    members = {
        UserName = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.MFADevice = {
    type = "structure",
    id = "MFADevice",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SerialNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EnableDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMFADevicesOutput = {
    type = "structure",
    id = "ListMFADevicesOutput",
    members = {
        MFADevices = {
            type = "list",
            member = M.MFADevice,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListMFADeviceTagsInput = {
    type = "structure",
    id = "ListMFADeviceTagsInput",
    members = {
        SerialNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListMFADeviceTagsOutput = {
    type = "structure",
    id = "ListMFADeviceTagsOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListOpenIDConnectProvidersInput = {
    type = "structure",
    id = "ListOpenIDConnectProvidersInput",
}

M.OpenIDConnectProviderListEntry = {
    type = "structure",
    id = "OpenIDConnectProviderListEntry",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.ListOpenIDConnectProvidersOutput = {
    type = "structure",
    id = "ListOpenIDConnectProvidersOutput",
    members = {
        OpenIDConnectProviderList = {
            type = "list",
            member = M.OpenIDConnectProviderListEntry,
        },
    },
}

M.ListOpenIDConnectProviderTagsInput = {
    type = "structure",
    id = "ListOpenIDConnectProviderTagsInput",
    members = {
        OpenIDConnectProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListOpenIDConnectProviderTagsOutput = {
    type = "structure",
    id = "ListOpenIDConnectProviderTagsOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListOrganizationsFeaturesInput = {
    type = "structure",
    id = "ListOrganizationsFeaturesInput",
}

M.ListOrganizationsFeaturesOutput = {
    type = "structure",
    id = "ListOrganizationsFeaturesOutput",
    members = {
        OrganizationId = {
            type = "string",
        },
        EnabledFeatures = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.policyScopeType = {
    All = "All",
    AWS = "AWS",
    Local = "Local",
}

M.ListPoliciesInput = {
    type = "structure",
    id = "ListPoliciesInput",
    members = {
        Scope = {
            type = "string",
        },
        OnlyAttached = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        PathPrefix = {
            type = "string",
        },
        PolicyUsageFilter = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListPoliciesOutput = {
    type = "structure",
    id = "ListPoliciesOutput",
    members = {
        Policies = {
            type = "list",
            member = M.Policy,
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListPoliciesGrantingServiceAccessInput = {
    type = "structure",
    id = "ListPoliciesGrantingServiceAccessInput",
    members = {
        Marker = {
            type = "string",
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceNamespaces = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.policyType = {
    INLINE = "INLINE",
    MANAGED = "MANAGED",
}

M.PolicyGrantingServiceAccess = {
    type = "structure",
    id = "PolicyGrantingServiceAccess",
    members = {
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyArn = {
            type = "string",
        },
        EntityType = {
            type = "string",
        },
        EntityName = {
            type = "string",
        },
    },
}

M.ListPoliciesGrantingServiceAccessEntry = {
    type = "structure",
    id = "ListPoliciesGrantingServiceAccessEntry",
    members = {
        ServiceNamespace = {
            type = "string",
        },
        Policies = {
            type = "list",
            member = M.PolicyGrantingServiceAccess,
        },
    },
}

M.ListPoliciesGrantingServiceAccessOutput = {
    type = "structure",
    id = "ListPoliciesGrantingServiceAccessOutput",
    members = {
        PoliciesGrantingServiceAccess = {
            type = "list",
            member = M.ListPoliciesGrantingServiceAccessEntry,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListPolicyTagsInput = {
    type = "structure",
    id = "ListPolicyTagsInput",
    members = {
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListPolicyTagsOutput = {
    type = "structure",
    id = "ListPolicyTagsOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListPolicyVersionsInput = {
    type = "structure",
    id = "ListPolicyVersionsInput",
    members = {
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListPolicyVersionsOutput = {
    type = "structure",
    id = "ListPolicyVersionsOutput",
    members = {
        Versions = {
            type = "list",
            member = M.PolicyVersion,
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListRolePoliciesInput = {
    type = "structure",
    id = "ListRolePoliciesInput",
    members = {
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListRolePoliciesOutput = {
    type = "structure",
    id = "ListRolePoliciesOutput",
    members = {
        PolicyNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListRolesInput = {
    type = "structure",
    id = "ListRolesInput",
    members = {
        PathPrefix = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListRolesOutput = {
    type = "structure",
    id = "ListRolesOutput",
    members = {
        Roles = {
            type = "list",
            member = M.Role,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListRoleTagsInput = {
    type = "structure",
    id = "ListRoleTagsInput",
    members = {
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListRoleTagsOutput = {
    type = "structure",
    id = "ListRoleTagsOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListSAMLProvidersInput = {
    type = "structure",
    id = "ListSAMLProvidersInput",
}

M.SAMLProviderListEntry = {
    type = "structure",
    id = "SAMLProviderListEntry",
    members = {
        Arn = {
            type = "string",
        },
        ValidUntil = {
            type = "timestamp",
        },
        CreateDate = {
            type = "timestamp",
        },
    },
}

M.ListSAMLProvidersOutput = {
    type = "structure",
    id = "ListSAMLProvidersOutput",
    members = {
        SAMLProviderList = {
            type = "list",
            member = M.SAMLProviderListEntry,
        },
    },
}

M.ListSAMLProviderTagsInput = {
    type = "structure",
    id = "ListSAMLProviderTagsInput",
    members = {
        SAMLProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListSAMLProviderTagsOutput = {
    type = "structure",
    id = "ListSAMLProviderTagsOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListServerCertificatesInput = {
    type = "structure",
    id = "ListServerCertificatesInput",
    members = {
        PathPrefix = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListServerCertificatesOutput = {
    type = "structure",
    id = "ListServerCertificatesOutput",
    members = {
        ServerCertificateMetadataList = {
            type = "list",
            member = M.ServerCertificateMetadata,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListServerCertificateTagsInput = {
    type = "structure",
    id = "ListServerCertificateTagsInput",
    members = {
        ServerCertificateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListServerCertificateTagsOutput = {
    type = "structure",
    id = "ListServerCertificateTagsOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListServiceSpecificCredentialsInput = {
    type = "structure",
    id = "ListServiceSpecificCredentialsInput",
    members = {
        UserName = {
            type = "string",
        },
        ServiceName = {
            type = "string",
        },
        AllUsers = {
            type = "boolean",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ServiceSpecificCredentialMetadata = {
    type = "structure",
    id = "ServiceSpecificCredentialMetadata",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceUserName = {
            type = "string",
            traits = {
                default = "",
            },
        },
        ServiceCredentialAlias = {
            type = "string",
        },
        CreateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ExpirationDate = {
            type = "timestamp",
        },
        ServiceSpecificCredentialId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListServiceSpecificCredentialsOutput = {
    type = "structure",
    id = "ListServiceSpecificCredentialsOutput",
    members = {
        ServiceSpecificCredentials = {
            type = "list",
            member = M.ServiceSpecificCredentialMetadata,
        },
        Marker = {
            type = "string",
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListSigningCertificatesInput = {
    type = "structure",
    id = "ListSigningCertificatesInput",
    members = {
        UserName = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.SigningCertificate = {
    type = "structure",
    id = "SigningCertificate",
    members = {
        UserName = {
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
        CertificateBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UploadDate = {
            type = "timestamp",
        },
    },
}

M.ListSigningCertificatesOutput = {
    type = "structure",
    id = "ListSigningCertificatesOutput",
    members = {
        Certificates = {
            type = "list",
            member = M.SigningCertificate,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListSSHPublicKeysInput = {
    type = "structure",
    id = "ListSSHPublicKeysInput",
    members = {
        UserName = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.SSHPublicKeyMetadata = {
    type = "structure",
    id = "SSHPublicKeyMetadata",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SSHPublicKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UploadDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSSHPublicKeysOutput = {
    type = "structure",
    id = "ListSSHPublicKeysOutput",
    members = {
        SSHPublicKeys = {
            type = "list",
            member = M.SSHPublicKeyMetadata,
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListUserPoliciesInput = {
    type = "structure",
    id = "ListUserPoliciesInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListUserPoliciesOutput = {
    type = "structure",
    id = "ListUserPoliciesOutput",
    members = {
        PolicyNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListUsersInput = {
    type = "structure",
    id = "ListUsersInput",
    members = {
        PathPrefix = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
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
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListUserTagsInput = {
    type = "structure",
    id = "ListUserTagsInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListUserTagsOutput = {
    type = "structure",
    id = "ListUserTagsOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.ListVirtualMFADevicesInput = {
    type = "structure",
    id = "ListVirtualMFADevicesInput",
    members = {
        AssignmentStatus = {
            type = "string",
        },
        Marker = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
    },
}

M.ListVirtualMFADevicesOutput = {
    type = "structure",
    id = "ListVirtualMFADevicesOutput",
    members = {
        VirtualMFADevices = {
            type = "list",
            member = M.VirtualMFADevice,
            traits = {
                required = true,
            },
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.PutGroupPolicyInput = {
    type = "structure",
    id = "PutGroupPolicyInput",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutGroupPolicyOutput = {
    type = "structure",
    id = "PutGroupPolicyOutput",
}

M.PutRolePermissionsBoundaryInput = {
    type = "structure",
    id = "PutRolePermissionsBoundaryInput",
    members = {
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionsBoundary = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRolePermissionsBoundaryOutput = {
    type = "structure",
    id = "PutRolePermissionsBoundaryOutput",
}

M.PutRolePolicyInput = {
    type = "structure",
    id = "PutRolePolicyInput",
    members = {
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutRolePolicyOutput = {
    type = "structure",
    id = "PutRolePolicyOutput",
}

M.PutUserPermissionsBoundaryInput = {
    type = "structure",
    id = "PutUserPermissionsBoundaryInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionsBoundary = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutUserPermissionsBoundaryOutput = {
    type = "structure",
    id = "PutUserPermissionsBoundaryOutput",
}

M.PutUserPolicyInput = {
    type = "structure",
    id = "PutUserPolicyInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutUserPolicyOutput = {
    type = "structure",
    id = "PutUserPolicyOutput",
}

M.RejectDelegationRequestInput = {
    type = "structure",
    id = "RejectDelegationRequestInput",
    members = {
        DelegationRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Notes = {
            type = "string",
        },
    },
}

M.RejectDelegationRequestOutput = {
    type = "structure",
    id = "RejectDelegationRequestOutput",
}

M.RemoveClientIDFromOpenIDConnectProviderInput = {
    type = "structure",
    id = "RemoveClientIDFromOpenIDConnectProviderInput",
    members = {
        OpenIDConnectProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientID = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveClientIDFromOpenIDConnectProviderOutput = {
    type = "structure",
    id = "RemoveClientIDFromOpenIDConnectProviderOutput",
}

M.RemoveRoleFromInstanceProfileInput = {
    type = "structure",
    id = "RemoveRoleFromInstanceProfileInput",
    members = {
        InstanceProfileName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveRoleFromInstanceProfileOutput = {
    type = "structure",
    id = "RemoveRoleFromInstanceProfileOutput",
}

M.RemoveUserFromGroupInput = {
    type = "structure",
    id = "RemoveUserFromGroupInput",
    members = {
        GroupName = {
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
    },
}

M.RemoveUserFromGroupOutput = {
    type = "structure",
    id = "RemoveUserFromGroupOutput",
}

M.ResetServiceSpecificCredentialInput = {
    type = "structure",
    id = "ResetServiceSpecificCredentialInput",
    members = {
        UserName = {
            type = "string",
        },
        ServiceSpecificCredentialId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResetServiceSpecificCredentialOutput = {
    type = "structure",
    id = "ResetServiceSpecificCredentialOutput",
    members = {
        ServiceSpecificCredential = M.ServiceSpecificCredential,
    },
}

M.ResyncMFADeviceInput = {
    type = "structure",
    id = "ResyncMFADeviceInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SerialNumber = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationCode1 = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationCode2 = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResyncMFADeviceOutput = {
    type = "structure",
    id = "ResyncMFADeviceOutput",
}

M.SendDelegationTokenInput = {
    type = "structure",
    id = "SendDelegationTokenInput",
    members = {
        DelegationRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SendDelegationTokenOutput = {
    type = "structure",
    id = "SendDelegationTokenOutput",
}

M.SetDefaultPolicyVersionInput = {
    type = "structure",
    id = "SetDefaultPolicyVersionInput",
    members = {
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VersionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetDefaultPolicyVersionOutput = {
    type = "structure",
    id = "SetDefaultPolicyVersionOutput",
}

M.globalEndpointTokenVersion = {
    v1Token = "v1Token",
    v2Token = "v2Token",
}

M.SetSecurityTokenServicePreferencesInput = {
    type = "structure",
    id = "SetSecurityTokenServicePreferencesInput",
    members = {
        GlobalEndpointTokenVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SetSecurityTokenServicePreferencesOutput = {
    type = "structure",
    id = "SetSecurityTokenServicePreferencesOutput",
}

M.PolicyEvaluationException = {
    type = "structure",
    id = "PolicyEvaluationException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ContextKeyTypeEnum = {
    STRING = "string",
    STRING_LIST = "stringList",
    NUMERIC = "numeric",
    NUMERIC_LIST = "numericList",
    BOOLEAN = "boolean",
    BOOLEAN_LIST = "booleanList",
    IP = "ip",
    IP_LIST = "ipList",
    BINARY = "binary",
    BINARY_LIST = "binaryList",
    DATE = "date",
    DATE_LIST = "dateList",
}

M.ContextEntry = {
    type = "structure",
    id = "ContextEntry",
    members = {
        ContextKeyName = {
            type = "string",
        },
        ContextKeyValues = {
            type = "list",
            member = { type = "string" },
        },
        ContextKeyType = {
            type = "string",
        },
    },
}

M.SimulateCustomPolicyInput = {
    type = "structure",
    id = "SimulateCustomPolicyInput",
    members = {
        PolicyInputList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        PermissionsBoundaryPolicyInputList = {
            type = "list",
            member = { type = "string" },
        },
        ActionNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ResourceArns = {
            type = "list",
            member = { type = "string" },
        },
        ResourcePolicy = {
            type = "string",
        },
        ResourceOwner = {
            type = "string",
        },
        CallerArn = {
            type = "string",
        },
        ContextEntries = {
            type = "list",
            member = M.ContextEntry,
        },
        ResourceHandlingOption = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.PolicyEvaluationDecisionType = {
    ALLOWED = "allowed",
    EXPLICIT_DENY = "explicitDeny",
    IMPLICIT_DENY = "implicitDeny",
}

M.Position = {
    type = "structure",
    id = "Position",
    members = {
        Line = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Column = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.PolicySourceType = {
    USER = "user",
    GROUP = "group",
    ROLE = "role",
    AWS_MANAGED = "aws-managed",
    USER_MANAGED = "user-managed",
    RESOURCE = "resource",
    NONE = "none",
}

M.Statement = {
    type = "structure",
    id = "Statement",
    members = {
        SourcePolicyId = {
            type = "string",
        },
        SourcePolicyType = {
            type = "string",
        },
        StartPosition = M.Position,
        EndPosition = M.Position,
    },
}

M.OrganizationsDecisionDetail = {
    type = "structure",
    id = "OrganizationsDecisionDetail",
    members = {
        AllowedByOrganizations = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PermissionsBoundaryDecisionDetail = {
    type = "structure",
    id = "PermissionsBoundaryDecisionDetail",
    members = {
        AllowedByPermissionsBoundary = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ResourceSpecificResult = {
    type = "structure",
    id = "ResourceSpecificResult",
    members = {
        EvalResourceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvalResourceDecision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MatchedStatements = {
            type = "list",
            member = M.Statement,
        },
        MissingContextValues = {
            type = "list",
            member = { type = "string" },
        },
        EvalDecisionDetails = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        PermissionsBoundaryDecisionDetail = M.PermissionsBoundaryDecisionDetail,
    },
}

M.EvaluationResult = {
    type = "structure",
    id = "EvaluationResult",
    members = {
        EvalActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvalResourceName = {
            type = "string",
        },
        EvalDecision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MatchedStatements = {
            type = "list",
            member = M.Statement,
        },
        MissingContextValues = {
            type = "list",
            member = { type = "string" },
        },
        OrganizationsDecisionDetail = M.OrganizationsDecisionDetail,
        PermissionsBoundaryDecisionDetail = M.PermissionsBoundaryDecisionDetail,
        EvalDecisionDetails = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ResourceSpecificResults = {
            type = "list",
            member = M.ResourceSpecificResult,
        },
    },
}

M.SimulateCustomPolicyOutput = {
    type = "structure",
    id = "SimulateCustomPolicyOutput",
    members = {
        EvaluationResults = {
            type = "list",
            member = M.EvaluationResult,
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.SimulatePrincipalPolicyInput = {
    type = "structure",
    id = "SimulatePrincipalPolicyInput",
    members = {
        PolicySourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyInputList = {
            type = "list",
            member = { type = "string" },
        },
        PermissionsBoundaryPolicyInputList = {
            type = "list",
            member = { type = "string" },
        },
        ActionNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ResourceArns = {
            type = "list",
            member = { type = "string" },
        },
        ResourcePolicy = {
            type = "string",
        },
        ResourceOwner = {
            type = "string",
        },
        CallerArn = {
            type = "string",
        },
        ContextEntries = {
            type = "list",
            member = M.ContextEntry,
        },
        ResourceHandlingOption = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
        Marker = {
            type = "string",
        },
    },
}

M.SimulatePrincipalPolicyOutput = {
    type = "structure",
    id = "SimulatePrincipalPolicyOutput",
    members = {
        EvaluationResults = {
            type = "list",
            member = M.EvaluationResult,
        },
        IsTruncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        Marker = {
            type = "string",
        },
    },
}

M.TagInstanceProfileInput = {
    type = "structure",
    id = "TagInstanceProfileInput",
    members = {
        InstanceProfileName = {
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

M.TagInstanceProfileOutput = {
    type = "structure",
    id = "TagInstanceProfileOutput",
}

M.TagMFADeviceInput = {
    type = "structure",
    id = "TagMFADeviceInput",
    members = {
        SerialNumber = {
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

M.TagMFADeviceOutput = {
    type = "structure",
    id = "TagMFADeviceOutput",
}

M.TagOpenIDConnectProviderInput = {
    type = "structure",
    id = "TagOpenIDConnectProviderInput",
    members = {
        OpenIDConnectProviderArn = {
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

M.TagOpenIDConnectProviderOutput = {
    type = "structure",
    id = "TagOpenIDConnectProviderOutput",
}

M.TagPolicyInput = {
    type = "structure",
    id = "TagPolicyInput",
    members = {
        PolicyArn = {
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

M.TagPolicyOutput = {
    type = "structure",
    id = "TagPolicyOutput",
}

M.TagRoleInput = {
    type = "structure",
    id = "TagRoleInput",
    members = {
        RoleName = {
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

M.TagRoleOutput = {
    type = "structure",
    id = "TagRoleOutput",
}

M.TagSAMLProviderInput = {
    type = "structure",
    id = "TagSAMLProviderInput",
    members = {
        SAMLProviderArn = {
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

M.TagSAMLProviderOutput = {
    type = "structure",
    id = "TagSAMLProviderOutput",
}

M.TagServerCertificateInput = {
    type = "structure",
    id = "TagServerCertificateInput",
    members = {
        ServerCertificateName = {
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

M.TagServerCertificateOutput = {
    type = "structure",
    id = "TagServerCertificateOutput",
}

M.TagUserInput = {
    type = "structure",
    id = "TagUserInput",
    members = {
        UserName = {
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

M.TagUserOutput = {
    type = "structure",
    id = "TagUserOutput",
}

M.UntagInstanceProfileInput = {
    type = "structure",
    id = "UntagInstanceProfileInput",
    members = {
        InstanceProfileName = {
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

M.UntagInstanceProfileOutput = {
    type = "structure",
    id = "UntagInstanceProfileOutput",
}

M.UntagMFADeviceInput = {
    type = "structure",
    id = "UntagMFADeviceInput",
    members = {
        SerialNumber = {
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

M.UntagMFADeviceOutput = {
    type = "structure",
    id = "UntagMFADeviceOutput",
}

M.UntagOpenIDConnectProviderInput = {
    type = "structure",
    id = "UntagOpenIDConnectProviderInput",
    members = {
        OpenIDConnectProviderArn = {
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

M.UntagOpenIDConnectProviderOutput = {
    type = "structure",
    id = "UntagOpenIDConnectProviderOutput",
}

M.UntagPolicyInput = {
    type = "structure",
    id = "UntagPolicyInput",
    members = {
        PolicyArn = {
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

M.UntagPolicyOutput = {
    type = "structure",
    id = "UntagPolicyOutput",
}

M.UntagRoleInput = {
    type = "structure",
    id = "UntagRoleInput",
    members = {
        RoleName = {
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

M.UntagRoleOutput = {
    type = "structure",
    id = "UntagRoleOutput",
}

M.UntagSAMLProviderInput = {
    type = "structure",
    id = "UntagSAMLProviderInput",
    members = {
        SAMLProviderArn = {
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

M.UntagSAMLProviderOutput = {
    type = "structure",
    id = "UntagSAMLProviderOutput",
}

M.UntagServerCertificateInput = {
    type = "structure",
    id = "UntagServerCertificateInput",
    members = {
        ServerCertificateName = {
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

M.UntagServerCertificateOutput = {
    type = "structure",
    id = "UntagServerCertificateOutput",
}

M.UntagUserInput = {
    type = "structure",
    id = "UntagUserInput",
    members = {
        UserName = {
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

M.UntagUserOutput = {
    type = "structure",
    id = "UntagUserOutput",
}

M.UpdateAccessKeyInput = {
    type = "structure",
    id = "UpdateAccessKeyInput",
    members = {
        UserName = {
            type = "string",
        },
        AccessKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAccessKeyOutput = {
    type = "structure",
    id = "UpdateAccessKeyOutput",
}

M.UpdateAccountPasswordPolicyInput = {
    type = "structure",
    id = "UpdateAccountPasswordPolicyInput",
    members = {
        MinimumPasswordLength = {
            type = "integer",
        },
        RequireSymbols = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RequireNumbers = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RequireUppercaseCharacters = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        RequireLowercaseCharacters = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AllowUsersToChangePassword = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        MaxPasswordAge = {
            type = "integer",
        },
        PasswordReusePrevention = {
            type = "integer",
        },
        HardExpiry = {
            type = "boolean",
        },
    },
}

M.UpdateAccountPasswordPolicyOutput = {
    type = "structure",
    id = "UpdateAccountPasswordPolicyOutput",
}

M.UpdateAssumeRolePolicyInput = {
    type = "structure",
    id = "UpdateAssumeRolePolicyInput",
    members = {
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAssumeRolePolicyOutput = {
    type = "structure",
    id = "UpdateAssumeRolePolicyOutput",
}

M.UpdateDelegationRequestInput = {
    type = "structure",
    id = "UpdateDelegationRequestInput",
    members = {
        DelegationRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Notes = {
            type = "string",
        },
    },
}

M.UpdateDelegationRequestOutput = {
    type = "structure",
    id = "UpdateDelegationRequestOutput",
}

M.UpdateGroupInput = {
    type = "structure",
    id = "UpdateGroupInput",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewPath = {
            type = "string",
        },
        NewGroupName = {
            type = "string",
        },
    },
}

M.UpdateGroupOutput = {
    type = "structure",
    id = "UpdateGroupOutput",
}

M.UpdateLoginProfileInput = {
    type = "structure",
    id = "UpdateLoginProfileInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Password = {
            type = "string",
        },
        PasswordResetRequired = {
            type = "boolean",
        },
    },
}

M.UpdateLoginProfileOutput = {
    type = "structure",
    id = "UpdateLoginProfileOutput",
}

M.UpdateOpenIDConnectProviderThumbprintInput = {
    type = "structure",
    id = "UpdateOpenIDConnectProviderThumbprintInput",
    members = {
        OpenIDConnectProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ThumbprintList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateOpenIDConnectProviderThumbprintOutput = {
    type = "structure",
    id = "UpdateOpenIDConnectProviderThumbprintOutput",
}

M.UpdateRoleInput = {
    type = "structure",
    id = "UpdateRoleInput",
    members = {
        RoleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        MaxSessionDuration = {
            type = "integer",
        },
    },
}

M.UpdateRoleOutput = {
    type = "structure",
    id = "UpdateRoleOutput",
}

M.UpdateRoleDescriptionInput = {
    type = "structure",
    id = "UpdateRoleDescriptionInput",
    members = {
        RoleName = {
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

M.UpdateRoleDescriptionOutput = {
    type = "structure",
    id = "UpdateRoleDescriptionOutput",
    members = {
        Role = M.Role,
    },
}

M.UpdateSAMLProviderInput = {
    type = "structure",
    id = "UpdateSAMLProviderInput",
    members = {
        SAMLMetadataDocument = {
            type = "string",
        },
        SAMLProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssertionEncryptionMode = {
            type = "string",
        },
        AddPrivateKey = {
            type = "string",
        },
        RemovePrivateKey = {
            type = "string",
        },
    },
}

M.UpdateSAMLProviderOutput = {
    type = "structure",
    id = "UpdateSAMLProviderOutput",
    members = {
        SAMLProviderArn = {
            type = "string",
        },
    },
}

M.UpdateServerCertificateInput = {
    type = "structure",
    id = "UpdateServerCertificateInput",
    members = {
        ServerCertificateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewPath = {
            type = "string",
        },
        NewServerCertificateName = {
            type = "string",
        },
    },
}

M.UpdateServerCertificateOutput = {
    type = "structure",
    id = "UpdateServerCertificateOutput",
}

M.UpdateServiceSpecificCredentialInput = {
    type = "structure",
    id = "UpdateServiceSpecificCredentialInput",
    members = {
        UserName = {
            type = "string",
        },
        ServiceSpecificCredentialId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServiceSpecificCredentialOutput = {
    type = "structure",
    id = "UpdateServiceSpecificCredentialOutput",
}

M.UpdateSigningCertificateInput = {
    type = "structure",
    id = "UpdateSigningCertificateInput",
    members = {
        UserName = {
            type = "string",
        },
        CertificateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSigningCertificateOutput = {
    type = "structure",
    id = "UpdateSigningCertificateOutput",
}

M.UpdateSSHPublicKeyInput = {
    type = "structure",
    id = "UpdateSSHPublicKeyInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SSHPublicKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSSHPublicKeyOutput = {
    type = "structure",
    id = "UpdateSSHPublicKeyOutput",
}

M.UpdateUserInput = {
    type = "structure",
    id = "UpdateUserInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewPath = {
            type = "string",
        },
        NewUserName = {
            type = "string",
        },
    },
}

M.UpdateUserOutput = {
    type = "structure",
    id = "UpdateUserOutput",
}

M.KeyPairMismatchException = {
    type = "structure",
    id = "KeyPairMismatchException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MalformedCertificateException = {
    type = "structure",
    id = "MalformedCertificateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UploadServerCertificateInput = {
    type = "structure",
    id = "UploadServerCertificateInput",
    members = {
        Path = {
            type = "string",
        },
        ServerCertificateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificateBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrivateKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CertificateChain = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.UploadServerCertificateOutput = {
    type = "structure",
    id = "UploadServerCertificateOutput",
    members = {
        ServerCertificateMetadata = M.ServerCertificateMetadata,
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.DuplicateCertificateException = {
    type = "structure",
    id = "DuplicateCertificateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidCertificateException = {
    type = "structure",
    id = "InvalidCertificateException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UploadSigningCertificateInput = {
    type = "structure",
    id = "UploadSigningCertificateInput",
    members = {
        UserName = {
            type = "string",
        },
        CertificateBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UploadSigningCertificateOutput = {
    type = "structure",
    id = "UploadSigningCertificateOutput",
    members = {
        Certificate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SigningCertificate }),
    },
}

M.DuplicateSSHPublicKeyException = {
    type = "structure",
    id = "DuplicateSSHPublicKeyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPublicKeyException = {
    type = "structure",
    id = "InvalidPublicKeyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UploadSSHPublicKeyInput = {
    type = "structure",
    id = "UploadSSHPublicKeyInput",
    members = {
        UserName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SSHPublicKeyBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UploadSSHPublicKeyOutput = {
    type = "structure",
    id = "UploadSSHPublicKeyOutput",
    members = {
        SSHPublicKey = M.SSHPublicKey,
    },
}

return M
