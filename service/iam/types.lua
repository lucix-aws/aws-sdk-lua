local M = {}

M.AcceptDelegationRequestInput = {
    type = "structure",
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
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NoSuchEntityException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceFailureException = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AddClientIDToOpenIDConnectProviderInput = {
    type = "structure",
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
}

M.InvalidInputException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AddRoleToInstanceProfileInput = {
    type = "structure",
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
}

M.EntityAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnmodifiableEntityException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AddUserToGroupInput = {
    type = "structure",
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
}

M.PermissionsBoundaryAttachmentType = {
    Policy = "PermissionsBoundaryPolicy",
}

M.AttachedPermissionsBoundary = {
    type = "structure",
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
}

M.PolicyNotAttachableException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AttachRolePolicyInput = {
    type = "structure",
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
}

M.AttachUserPolicyInput = {
    type = "structure",
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
}

M.ChangePasswordInput = {
    type = "structure",
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
}

M.EntityTemporarilyUnmodifiableException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidUserTypeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PasswordPolicyViolationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateAccessKeyInput = {
    type = "structure",
    members = {
        UserName = {
            type = "string",
        },
    },
}

M.CreateAccessKeyOutput = {
    type = "structure",
    members = {
        AccessKey = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccessKey }),
    },
}

M.CreateAccountAliasInput = {
    type = "structure",
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
}

M.PolicyParameterTypeEnum = {
    STRING = "string",
    STRING_LIST = "stringList",
}

M.PolicyParameter = {
    type = "structure",
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
    members = {
        Group = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Group }),
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

M.CreateInstanceProfileInput = {
    type = "structure",
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
    members = {
        InstanceProfile = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceProfile }),
    },
}

M.CreateLoginProfileInput = {
    type = "structure",
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
    members = {
        LoginProfile = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoginProfile }),
    },
}

M.CreateOpenIDConnectProviderInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreatePolicyInput = {
    type = "structure",
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
    members = {
        Policy = M.Policy,
    },
}

M.MalformedPolicyDocumentException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreatePolicyVersionInput = {
    type = "structure",
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
    members = {
        PolicyVersion = M.PolicyVersion,
    },
}

M.CreateRoleInput = {
    type = "structure",
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
    members = {
        Role = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Role }),
    },
}

M.CreateSAMLProviderInput = {
    type = "structure",
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
    members = {
        Role = M.Role,
    },
}

M.CreateServiceSpecificCredentialInput = {
    type = "structure",
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
    members = {
        ServiceSpecificCredential = M.ServiceSpecificCredential,
    },
}

M.ServiceNotSupportedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateUserInput = {
    type = "structure",
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
    members = {
        User = M.User,
    },
}

M.CreateVirtualMFADeviceInput = {
    type = "structure",
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
    members = {
        VirtualMFADevice = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VirtualMFADevice }),
    },
}

M.DeactivateMFADeviceInput = {
    type = "structure",
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
}

M.DeleteAccessKeyInput = {
    type = "structure",
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
}

M.DeleteAccountAliasInput = {
    type = "structure",
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
}

M.DeleteAccountPasswordPolicyInput = {
    type = "structure",
}

M.DeleteAccountPasswordPolicyOutput = {
    type = "structure",
}

M.DeleteConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteGroupInput = {
    type = "structure",
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
}

M.DeleteGroupPolicyInput = {
    type = "structure",
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
}

M.DeleteInstanceProfileInput = {
    type = "structure",
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
}

M.DeleteLoginProfileInput = {
    type = "structure",
    members = {
        UserName = {
            type = "string",
        },
    },
}

M.DeleteLoginProfileOutput = {
    type = "structure",
}

M.DeleteOpenIDConnectProviderInput = {
    type = "structure",
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
}

M.DeletePolicyInput = {
    type = "structure",
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
}

M.DeletePolicyVersionInput = {
    type = "structure",
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
}

M.DeleteRoleInput = {
    type = "structure",
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
}

M.DeleteRolePermissionsBoundaryInput = {
    type = "structure",
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
}

M.DeleteRolePolicyInput = {
    type = "structure",
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
}

M.DeleteSAMLProviderInput = {
    type = "structure",
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
}

M.DeleteServerCertificateInput = {
    type = "structure",
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
}

M.DeleteServiceLinkedRoleInput = {
    type = "structure",
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
}

M.DeleteSigningCertificateInput = {
    type = "structure",
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
}

M.DeleteSSHPublicKeyInput = {
    type = "structure",
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
}

M.DeleteUserInput = {
    type = "structure",
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
}

M.DeleteUserPermissionsBoundaryInput = {
    type = "structure",
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
}

M.DeleteUserPolicyInput = {
    type = "structure",
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
}

M.DeleteVirtualMFADeviceInput = {
    type = "structure",
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
}

M.DetachGroupPolicyInput = {
    type = "structure",
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
}

M.DetachRolePolicyInput = {
    type = "structure",
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
}

M.DetachUserPolicyInput = {
    type = "structure",
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
}

M.DisableOrganizationsRootCredentialsManagementInput = {
    type = "structure",
}

M.FeatureType = {
    ROOT_CREDENTIALS_MANAGEMENT = "RootCredentialsManagement",
    ROOT_SESSIONS = "RootSessions",
}

M.DisableOrganizationsRootCredentialsManagementOutput = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OrganizationNotInAllFeaturesModeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceAccessNotEnabledException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DisableOrganizationsRootSessionsInput = {
    type = "structure",
}

M.DisableOrganizationsRootSessionsOutput = {
    type = "structure",
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
}

M.DisableOutboundWebIdentityFederationOutput = {
    type = "structure",
}

M.FeatureDisabledException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EnableMFADeviceInput = {
    type = "structure",
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
}

M.InvalidAuthenticationCodeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CallerIsNotManagementAccountException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.EnableOrganizationsRootCredentialsManagementInput = {
    type = "structure",
}

M.EnableOrganizationsRootCredentialsManagementOutput = {
    type = "structure",
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
}

M.EnableOrganizationsRootSessionsOutput = {
    type = "structure",
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
}

M.EnableOutboundWebIdentityFederationOutput = {
    type = "structure",
    members = {
        IssuerIdentifier = {
            type = "string",
        },
    },
}

M.FeatureEnabledException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GenerateCredentialReportInput = {
    type = "structure",
}

M.ReportStateType = {
    STARTED = "STARTED",
    INPROGRESS = "INPROGRESS",
    COMPLETE = "COMPLETE",
}

M.GenerateCredentialReportOutput = {
    type = "structure",
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
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.ReportGenerationLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GenerateServiceLastAccessedDetailsInput = {
    type = "structure",
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
    members = {
        JobId = {
            type = "string",
        },
    },
}

M.GetAccessKeyLastUsedInput = {
    type = "structure",
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
}

M.PasswordPolicy = {
    type = "structure",
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
    members = {
        PasswordPolicy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PasswordPolicy }),
    },
}

M.GetAccountSummaryInput = {
    type = "structure",
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
    members = {
        ContextKeyNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetContextKeysForPrincipalPolicyInput = {
    type = "structure",
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
    members = {
        ContextKeyNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CredentialReportExpiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CredentialReportNotPresentException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CredentialReportNotReadyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetCredentialReportInput = {
    type = "structure",
}

M.ReportFormatType = {
    text_csv = "text/csv",
}

M.GetCredentialReportOutput = {
    type = "structure",
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
    members = {
        InstanceProfile = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceProfile }),
    },
}

M.GetLoginProfileInput = {
    type = "structure",
    members = {
        UserName = {
            type = "string",
        },
    },
}

M.GetLoginProfileOutput = {
    type = "structure",
    members = {
        LoginProfile = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LoginProfile }),
    },
}

M.GetMFADeviceInput = {
    type = "structure",
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
}

M.GetOutboundWebIdentityFederationInfoOutput = {
    type = "structure",
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
    members = {
        Policy = M.Policy,
    },
}

M.GetPolicyVersionInput = {
    type = "structure",
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
    members = {
        PolicyVersion = M.PolicyVersion,
    },
}

M.GetRoleInput = {
    type = "structure",
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
    members = {
        Role = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Role }),
    },
}

M.GetRolePolicyInput = {
    type = "structure",
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
    members = {
        ServerCertificate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServerCertificate }),
    },
}

M.GetServiceLastAccessedDetailsInput = {
    type = "structure",
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
    members = {
        SSHPublicKey = M.SSHPublicKey,
    },
}

M.UnrecognizedPublicKeyEncodingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetUserInput = {
    type = "structure",
    members = {
        UserName = {
            type = "string",
        },
    },
}

M.GetUserOutput = {
    type = "structure",
    members = {
        User = setmetatable({ traits = {
            required = true,
        } }, { __index = M.User }),
    },
}

M.GetUserPolicyInput = {
    type = "structure",
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
}

M.OpenIDConnectProviderListEntry = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.ListOpenIDConnectProvidersOutput = {
    type = "structure",
    members = {
        OpenIDConnectProviderList = {
            type = "list",
            member = M.OpenIDConnectProviderListEntry,
        },
    },
}

M.ListOpenIDConnectProviderTagsInput = {
    type = "structure",
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
}

M.ListOrganizationsFeaturesOutput = {
    type = "structure",
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
}

M.SAMLProviderListEntry = {
    type = "structure",
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
    members = {
        SAMLProviderList = {
            type = "list",
            member = M.SAMLProviderListEntry,
        },
    },
}

M.ListSAMLProviderTagsInput = {
    type = "structure",
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
}

M.PutRolePermissionsBoundaryInput = {
    type = "structure",
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
}

M.PutRolePolicyInput = {
    type = "structure",
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
}

M.PutUserPermissionsBoundaryInput = {
    type = "structure",
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
}

M.PutUserPolicyInput = {
    type = "structure",
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
}

M.RejectDelegationRequestInput = {
    type = "structure",
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
}

M.RemoveClientIDFromOpenIDConnectProviderInput = {
    type = "structure",
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
}

M.RemoveRoleFromInstanceProfileInput = {
    type = "structure",
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
}

M.RemoveUserFromGroupInput = {
    type = "structure",
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
}

M.ResetServiceSpecificCredentialInput = {
    type = "structure",
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
    members = {
        ServiceSpecificCredential = M.ServiceSpecificCredential,
    },
}

M.ResyncMFADeviceInput = {
    type = "structure",
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
}

M.SendDelegationTokenInput = {
    type = "structure",
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
}

M.SetDefaultPolicyVersionInput = {
    type = "structure",
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
}

M.globalEndpointTokenVersion = {
    v1Token = "v1Token",
    v2Token = "v2Token",
}

M.SetSecurityTokenServicePreferencesInput = {
    type = "structure",
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
}

M.PolicyEvaluationException = {
    type = "structure",
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
}

M.TagMFADeviceInput = {
    type = "structure",
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
}

M.TagOpenIDConnectProviderInput = {
    type = "structure",
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
}

M.TagPolicyInput = {
    type = "structure",
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
}

M.TagRoleInput = {
    type = "structure",
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
}

M.TagSAMLProviderInput = {
    type = "structure",
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
}

M.TagServerCertificateInput = {
    type = "structure",
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
}

M.TagUserInput = {
    type = "structure",
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
}

M.UntagInstanceProfileInput = {
    type = "structure",
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
}

M.UntagMFADeviceInput = {
    type = "structure",
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
}

M.UntagOpenIDConnectProviderInput = {
    type = "structure",
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
}

M.UntagPolicyInput = {
    type = "structure",
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
}

M.UntagRoleInput = {
    type = "structure",
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
}

M.UntagSAMLProviderInput = {
    type = "structure",
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
}

M.UntagServerCertificateInput = {
    type = "structure",
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
}

M.UntagUserInput = {
    type = "structure",
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
}

M.UpdateAccessKeyInput = {
    type = "structure",
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
}

M.UpdateAccountPasswordPolicyInput = {
    type = "structure",
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
}

M.UpdateAssumeRolePolicyInput = {
    type = "structure",
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
}

M.UpdateDelegationRequestInput = {
    type = "structure",
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
}

M.UpdateGroupInput = {
    type = "structure",
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
}

M.UpdateLoginProfileInput = {
    type = "structure",
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
}

M.UpdateOpenIDConnectProviderThumbprintInput = {
    type = "structure",
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
}

M.UpdateRoleInput = {
    type = "structure",
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
}

M.UpdateRoleDescriptionInput = {
    type = "structure",
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
    members = {
        Role = M.Role,
    },
}

M.UpdateSAMLProviderInput = {
    type = "structure",
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
    members = {
        SAMLProviderArn = {
            type = "string",
        },
    },
}

M.UpdateServerCertificateInput = {
    type = "structure",
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
}

M.UpdateServiceSpecificCredentialInput = {
    type = "structure",
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
}

M.UpdateSigningCertificateInput = {
    type = "structure",
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
}

M.UpdateSSHPublicKeyInput = {
    type = "structure",
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
}

M.UpdateUserInput = {
    type = "structure",
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
}

M.KeyPairMismatchException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MalformedCertificateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UploadServerCertificateInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidCertificateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UploadSigningCertificateInput = {
    type = "structure",
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
    members = {
        Certificate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SigningCertificate }),
    },
}

M.DuplicateSSHPublicKeyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidPublicKeyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UploadSSHPublicKeyInput = {
    type = "structure",
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
    members = {
        SSHPublicKey = M.SSHPublicKey,
    },
}

return M
