local M = {}

M.AccessControlAttributeValue = {
    type = "structure",
    id = "AccessControlAttributeValue",
    members = {
        Source = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AccessControlAttribute = {
    type = "structure",
    id = "AccessControlAttribute",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AccessControlAttributeValue }),
    },
}

M.AccessDeniedExceptionReason = {
    KMS_ACCESS_DENIED_EXCEPTION = "KMS_AccessDeniedException",
}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.PrincipalType = {
    USER = "USER",
    GROUP = "GROUP",
}

M.AccountAssignment = {
    type = "structure",
    id = "AccountAssignment",
    members = {
        AccountId = {
            type = "string",
        },
        PermissionSetArn = {
            type = "string",
        },
        PrincipalType = {
            type = "string",
        },
        PrincipalId = {
            type = "string",
        },
    },
}

M.AccountAssignmentForPrincipal = {
    type = "structure",
    id = "AccountAssignmentForPrincipal",
    members = {
        AccountId = {
            type = "string",
        },
        PermissionSetArn = {
            type = "string",
        },
        PrincipalId = {
            type = "string",
        },
        PrincipalType = {
            type = "string",
        },
    },
}

M.StatusValues = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.TargetType = {
    AWS_ACCOUNT = "AWS_ACCOUNT",
}

M.AccountAssignmentOperationStatus = {
    type = "structure",
    id = "AccountAssignmentOperationStatus",
    members = {
        Status = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        TargetId = {
            type = "string",
        },
        TargetType = {
            type = "string",
        },
        PermissionSetArn = {
            type = "string",
        },
        PrincipalType = {
            type = "string",
        },
        PrincipalId = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
    },
}

M.AccountAssignmentOperationStatusMetadata = {
    type = "structure",
    id = "AccountAssignmentOperationStatusMetadata",
    members = {
        Status = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
    },
}

M.AddRegionInput = {
    type = "structure",
    id = "AddRegionInput",
    members = {
        InstanceArn = {
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
    },
}

M.RegionStatus = {
    ACTIVE = "ACTIVE",
    ADDING = "ADDING",
    REMOVING = "REMOVING",
}

M.AddRegionOutput = {
    type = "structure",
    id = "AddRegionOutput",
    members = {
        Status = {
            type = "string",
        },
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

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
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

M.ThrottlingExceptionReason = {
    KMS_THROTTLING_EXCEPTION = "KMS_ThrottlingException",
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.ValidationExceptionReason = {
    KMS_INVALID_KEY_USAGE_EXCEPTION = "KMS_InvalidKeyUsageException",
    KMS_INVALID_STATE_EXCEPTION = "KMS_InvalidStateException",
    KMS_DISABLED_EXCEPTION = "KMS_DisabledException",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.SignInOrigin = {
    IDENTITY_CENTER = "IDENTITY_CENTER",
    APPLICATION = "APPLICATION",
}

M.SignInOptions = {
    type = "structure",
    id = "SignInOptions",
    members = {
        Origin = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationUrl = {
            type = "string",
        },
    },
}

M.ApplicationVisibility = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.PortalOptions = {
    type = "structure",
    id = "PortalOptions",
    members = {
        SignInOptions = M.SignInOptions,
        Visibility = {
            type = "string",
            traits = {
                default = "ENABLED",
            },
        },
    },
}

M.ApplicationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Application = {
    type = "structure",
    id = "Application",
    members = {
        ApplicationArn = {
            type = "string",
        },
        ApplicationProviderArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ApplicationAccount = {
            type = "string",
        },
        InstanceArn = {
            type = "string",
        },
        IdentityStoreArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        PortalOptions = M.PortalOptions,
        Description = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
        CreatedFrom = {
            type = "string",
        },
    },
}

M.DeleteApplicationAccessScopeInput = {
    type = "structure",
    id = "DeleteApplicationAccessScopeInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationAccessScopeOutput = {
    type = "structure",
    id = "DeleteApplicationAccessScopeOutput",
}

M.ResourceNotFoundExceptionReason = {
    KMS_NOT_FOUND_EXCEPTION = "KMS_NotFoundException",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
    },
}

M.GetApplicationAccessScopeInput = {
    type = "structure",
    id = "GetApplicationAccessScopeInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetApplicationAccessScopeOutput = {
    type = "structure",
    id = "GetApplicationAccessScopeOutput",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthorizedTargets = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListApplicationAccessScopesInput = {
    type = "structure",
    id = "ListApplicationAccessScopesInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 10,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ScopeDetails = {
    type = "structure",
    id = "ScopeDetails",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthorizedTargets = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListApplicationAccessScopesOutput = {
    type = "structure",
    id = "ListApplicationAccessScopesOutput",
    members = {
        Scopes = {
            type = "list",
            member = M.ScopeDetails,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutApplicationAccessScopeInput = {
    type = "structure",
    id = "PutApplicationAccessScopeInput",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthorizedTargets = {
            type = "list",
            member = { type = "string" },
        },
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutApplicationAccessScopeOutput = {
    type = "structure",
    id = "PutApplicationAccessScopeOutput",
}

M.ApplicationAssignment = {
    type = "structure",
    id = "ApplicationAssignment",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationAssignmentForPrincipal = {
    type = "structure",
    id = "ApplicationAssignmentForPrincipal",
    members = {
        ApplicationArn = {
            type = "string",
        },
        PrincipalId = {
            type = "string",
        },
        PrincipalType = {
            type = "string",
        },
    },
}

M.AuthenticationMethodType = {
    IAM = "IAM",
}

M.DeleteApplicationAuthenticationMethodInput = {
    type = "structure",
    id = "DeleteApplicationAuthenticationMethodInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationMethodType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationAuthenticationMethodOutput = {
    type = "structure",
    id = "DeleteApplicationAuthenticationMethodOutput",
}

M.GetApplicationAuthenticationMethodInput = {
    type = "structure",
    id = "GetApplicationAuthenticationMethodInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationMethodType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IamAuthenticationMethod = {
    type = "structure",
    id = "IamAuthenticationMethod",
    members = {
        ActorPolicy = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.AuthenticationMethod = {
    type = "union",
    id = "AuthenticationMethod",
    members = {
        Iam = M.IamAuthenticationMethod,
    },
}

M.GetApplicationAuthenticationMethodOutput = {
    type = "structure",
    id = "GetApplicationAuthenticationMethodOutput",
    members = {
        AuthenticationMethod = M.AuthenticationMethod,
    },
}

M.ListApplicationAuthenticationMethodsInput = {
    type = "structure",
    id = "ListApplicationAuthenticationMethodsInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.AuthenticationMethodItem = {
    type = "structure",
    id = "AuthenticationMethodItem",
    members = {
        AuthenticationMethodType = {
            type = "string",
        },
        AuthenticationMethod = M.AuthenticationMethod,
    },
}

M.ListApplicationAuthenticationMethodsOutput = {
    type = "structure",
    id = "ListApplicationAuthenticationMethodsOutput",
    members = {
        AuthenticationMethods = {
            type = "list",
            member = M.AuthenticationMethodItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutApplicationAuthenticationMethodInput = {
    type = "structure",
    id = "PutApplicationAuthenticationMethodInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationMethodType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthenticationMethod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AuthenticationMethod }),
    },
}

M.PutApplicationAuthenticationMethodOutput = {
    type = "structure",
    id = "PutApplicationAuthenticationMethodOutput",
}

M.GrantType = {
    AUTHORIZATION_CODE = "authorization_code",
    REFRESH_TOKEN = "refresh_token",
    JWT_BEARER = "urn:ietf:params:oauth:grant-type:jwt-bearer",
    TOKEN_EXCHANGE = "urn:ietf:params:oauth:grant-type:token-exchange",
}

M.DeleteApplicationGrantInput = {
    type = "structure",
    id = "DeleteApplicationGrantInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationGrantOutput = {
    type = "structure",
    id = "DeleteApplicationGrantOutput",
}

M.GetApplicationGrantInput = {
    type = "structure",
    id = "GetApplicationGrantInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AuthorizationCodeGrant = {
    type = "structure",
    id = "AuthorizationCodeGrant",
    members = {
        RedirectUris = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.AuthorizedTokenIssuer = {
    type = "structure",
    id = "AuthorizedTokenIssuer",
    members = {
        TrustedTokenIssuerArn = {
            type = "string",
        },
        AuthorizedAudiences = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.JwtBearerGrant = {
    type = "structure",
    id = "JwtBearerGrant",
    members = {
        AuthorizedTokenIssuers = {
            type = "list",
            member = M.AuthorizedTokenIssuer,
        },
    },
}

M.RefreshTokenGrant = {
    type = "structure",
    id = "RefreshTokenGrant",
}

M.TokenExchangeGrant = {
    type = "structure",
    id = "TokenExchangeGrant",
}

M.Grant = {
    type = "union",
    id = "Grant",
    members = {
        AuthorizationCode = M.AuthorizationCodeGrant,
        JwtBearer = M.JwtBearerGrant,
        RefreshToken = M.RefreshTokenGrant,
        TokenExchange = M.TokenExchangeGrant,
    },
}

M.GetApplicationGrantOutput = {
    type = "structure",
    id = "GetApplicationGrantOutput",
    members = {
        Grant = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Grant }),
    },
}

M.ListApplicationGrantsInput = {
    type = "structure",
    id = "ListApplicationGrantsInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GrantItem = {
    type = "structure",
    id = "GrantItem",
    members = {
        GrantType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Grant = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Grant }),
    },
}

M.ListApplicationGrantsOutput = {
    type = "structure",
    id = "ListApplicationGrantsOutput",
    members = {
        Grants = {
            type = "list",
            member = M.GrantItem,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutApplicationGrantInput = {
    type = "structure",
    id = "PutApplicationGrantInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GrantType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Grant = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Grant }),
    },
}

M.PutApplicationGrantOutput = {
    type = "structure",
    id = "PutApplicationGrantOutput",
}

M.DisplayData = {
    type = "structure",
    id = "DisplayData",
    members = {
        DisplayName = {
            type = "string",
        },
        IconUrl = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.FederationProtocol = {
    SAML = "SAML",
    OAUTH = "OAUTH",
}

M.ResourceServerScopeDetails = {
    type = "structure",
    id = "ResourceServerScopeDetails",
    members = {
        LongDescription = {
            type = "string",
        },
        DetailedTitle = {
            type = "string",
        },
    },
}

M.ResourceServerConfig = {
    type = "structure",
    id = "ResourceServerConfig",
    members = {
        Scopes = {
            type = "map",
            key = { type = "string" },
            value = M.ResourceServerScopeDetails,
        },
    },
}

M.ApplicationProvider = {
    type = "structure",
    id = "ApplicationProvider",
    members = {
        ApplicationProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FederationProtocol = {
            type = "string",
        },
        DisplayData = M.DisplayData,
        ResourceServerConfig = M.ResourceServerConfig,
    },
}

M.CustomerManagedPolicyReference = {
    type = "structure",
    id = "CustomerManagedPolicyReference",
    members = {
        Name = {
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

M.AttachCustomerManagedPolicyReferenceToPermissionSetInput = {
    type = "structure",
    id = "AttachCustomerManagedPolicyReferenceToPermissionSetInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomerManagedPolicyReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomerManagedPolicyReference }),
    },
}

M.AttachCustomerManagedPolicyReferenceToPermissionSetOutput = {
    type = "structure",
    id = "AttachCustomerManagedPolicyReferenceToPermissionSetOutput",
}

M.AttachedManagedPolicy = {
    type = "structure",
    id = "AttachedManagedPolicy",
    members = {
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.AttachManagedPolicyToPermissionSetInput = {
    type = "structure",
    id = "AttachManagedPolicyToPermissionSetInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManagedPolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttachManagedPolicyToPermissionSetOutput = {
    type = "structure",
    id = "AttachManagedPolicyToPermissionSetOutput",
}

M.CreateAccountAssignmentInput = {
    type = "structure",
    id = "CreateAccountAssignmentInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAccountAssignmentOutput = {
    type = "structure",
    id = "CreateAccountAssignmentOutput",
    members = {
        AccountAssignmentCreationStatus = M.AccountAssignmentOperationStatus,
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

M.CreateApplicationInput = {
    type = "structure",
    id = "CreateApplicationInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationProviderArn = {
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
        PortalOptions = M.PortalOptions,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        Status = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    id = "CreateApplicationOutput",
    members = {
        ApplicationArn = {
            type = "string",
        },
        InstanceArn = {
            type = "string",
        },
        IdentityStoreArn = {
            type = "string",
        },
    },
}

M.CreateApplicationAssignmentInput = {
    type = "structure",
    id = "CreateApplicationAssignmentInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateApplicationAssignmentOutput = {
    type = "structure",
    id = "CreateApplicationAssignmentOutput",
}

M.CreateInstanceInput = {
    type = "structure",
    id = "CreateInstanceInput",
    members = {
        Name = {
            type = "string",
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateInstanceOutput = {
    type = "structure",
    id = "CreateInstanceOutput",
    members = {
        InstanceArn = {
            type = "string",
        },
    },
}

M.InstanceAccessControlAttributeConfiguration = {
    type = "structure",
    id = "InstanceAccessControlAttributeConfiguration",
    members = {
        AccessControlAttributes = {
            type = "list",
            member = M.AccessControlAttribute,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateInstanceAccessControlAttributeConfigurationInput = {
    type = "structure",
    id = "CreateInstanceAccessControlAttributeConfigurationInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceAccessControlAttributeConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceAccessControlAttributeConfiguration }),
    },
}

M.CreateInstanceAccessControlAttributeConfigurationOutput = {
    type = "structure",
    id = "CreateInstanceAccessControlAttributeConfigurationOutput",
}

M.CreatePermissionSetInput = {
    type = "structure",
    id = "CreatePermissionSetInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionDuration = {
            type = "string",
        },
        RelayState = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PermissionSet = {
    type = "structure",
    id = "PermissionSet",
    members = {
        Name = {
            type = "string",
        },
        PermissionSetArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
        SessionDuration = {
            type = "string",
        },
        RelayState = {
            type = "string",
        },
    },
}

M.CreatePermissionSetOutput = {
    type = "structure",
    id = "CreatePermissionSetOutput",
    members = {
        PermissionSet = M.PermissionSet,
    },
}

M.JwksRetrievalOption = {
    OPEN_ID_DISCOVERY = "OPEN_ID_DISCOVERY",
}

M.OidcJwtConfiguration = {
    type = "structure",
    id = "OidcJwtConfiguration",
    members = {
        IssuerUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClaimAttributePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityStoreAttributePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        JwksRetrievalOption = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TrustedTokenIssuerConfiguration = {
    type = "union",
    id = "TrustedTokenIssuerConfiguration",
    members = {
        OidcJwtConfiguration = M.OidcJwtConfiguration,
    },
}

M.TrustedTokenIssuerType = {
    OIDC_JWT = "OIDC_JWT",
}

M.CreateTrustedTokenIssuerInput = {
    type = "structure",
    id = "CreateTrustedTokenIssuerInput",
    members = {
        InstanceArn = {
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
        TrustedTokenIssuerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TrustedTokenIssuerConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TrustedTokenIssuerConfiguration }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateTrustedTokenIssuerOutput = {
    type = "structure",
    id = "CreateTrustedTokenIssuerOutput",
    members = {
        TrustedTokenIssuerArn = {
            type = "string",
        },
    },
}

M.DeleteAccountAssignmentInput = {
    type = "structure",
    id = "DeleteAccountAssignmentInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAccountAssignmentOutput = {
    type = "structure",
    id = "DeleteAccountAssignmentOutput",
    members = {
        AccountAssignmentDeletionStatus = M.AccountAssignmentOperationStatus,
    },
}

M.DeleteApplicationInput = {
    type = "structure",
    id = "DeleteApplicationInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationOutput = {
    type = "structure",
    id = "DeleteApplicationOutput",
}

M.DeleteApplicationAssignmentInput = {
    type = "structure",
    id = "DeleteApplicationAssignmentInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationAssignmentOutput = {
    type = "structure",
    id = "DeleteApplicationAssignmentOutput",
}

M.DeleteInlinePolicyFromPermissionSetInput = {
    type = "structure",
    id = "DeleteInlinePolicyFromPermissionSetInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteInlinePolicyFromPermissionSetOutput = {
    type = "structure",
    id = "DeleteInlinePolicyFromPermissionSetOutput",
}

M.DeleteInstanceInput = {
    type = "structure",
    id = "DeleteInstanceInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteInstanceOutput = {
    type = "structure",
    id = "DeleteInstanceOutput",
}

M.DeleteInstanceAccessControlAttributeConfigurationInput = {
    type = "structure",
    id = "DeleteInstanceAccessControlAttributeConfigurationInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteInstanceAccessControlAttributeConfigurationOutput = {
    type = "structure",
    id = "DeleteInstanceAccessControlAttributeConfigurationOutput",
}

M.DeletePermissionsBoundaryFromPermissionSetInput = {
    type = "structure",
    id = "DeletePermissionsBoundaryFromPermissionSetInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePermissionsBoundaryFromPermissionSetOutput = {
    type = "structure",
    id = "DeletePermissionsBoundaryFromPermissionSetOutput",
}

M.DeletePermissionSetInput = {
    type = "structure",
    id = "DeletePermissionSetInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePermissionSetOutput = {
    type = "structure",
    id = "DeletePermissionSetOutput",
}

M.DeleteTrustedTokenIssuerInput = {
    type = "structure",
    id = "DeleteTrustedTokenIssuerInput",
    members = {
        TrustedTokenIssuerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTrustedTokenIssuerOutput = {
    type = "structure",
    id = "DeleteTrustedTokenIssuerOutput",
}

M.DescribeAccountAssignmentCreationStatusInput = {
    type = "structure",
    id = "DescribeAccountAssignmentCreationStatusInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountAssignmentCreationRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAccountAssignmentCreationStatusOutput = {
    type = "structure",
    id = "DescribeAccountAssignmentCreationStatusOutput",
    members = {
        AccountAssignmentCreationStatus = M.AccountAssignmentOperationStatus,
    },
}

M.DescribeAccountAssignmentDeletionStatusInput = {
    type = "structure",
    id = "DescribeAccountAssignmentDeletionStatusInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountAssignmentDeletionRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAccountAssignmentDeletionStatusOutput = {
    type = "structure",
    id = "DescribeAccountAssignmentDeletionStatusOutput",
    members = {
        AccountAssignmentDeletionStatus = M.AccountAssignmentOperationStatus,
    },
}

M.DescribeApplicationInput = {
    type = "structure",
    id = "DescribeApplicationInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeApplicationOutput = {
    type = "structure",
    id = "DescribeApplicationOutput",
    members = {
        ApplicationArn = {
            type = "string",
        },
        ApplicationProviderArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ApplicationAccount = {
            type = "string",
        },
        InstanceArn = {
            type = "string",
        },
        IdentityStoreArn = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        PortalOptions = M.PortalOptions,
        Description = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
        CreatedFrom = {
            type = "string",
        },
    },
}

M.DescribeApplicationAssignmentInput = {
    type = "structure",
    id = "DescribeApplicationAssignmentInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeApplicationAssignmentOutput = {
    type = "structure",
    id = "DescribeApplicationAssignmentOutput",
    members = {
        PrincipalType = {
            type = "string",
        },
        PrincipalId = {
            type = "string",
        },
        ApplicationArn = {
            type = "string",
        },
    },
}

M.DescribeApplicationProviderInput = {
    type = "structure",
    id = "DescribeApplicationProviderInput",
    members = {
        ApplicationProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeApplicationProviderOutput = {
    type = "structure",
    id = "DescribeApplicationProviderOutput",
    members = {
        ApplicationProviderArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FederationProtocol = {
            type = "string",
        },
        DisplayData = M.DisplayData,
        ResourceServerConfig = M.ResourceServerConfig,
    },
}

M.DescribeInstanceInput = {
    type = "structure",
    id = "DescribeInstanceInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KmsKeyStatus = {
    UPDATING = "UPDATING",
    ENABLED = "ENABLED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.KmsKeyType = {
    AWS_OWNED_KMS_KEY = "AWS_OWNED_KMS_KEY",
    CUSTOMER_MANAGED_KEY = "CUSTOMER_MANAGED_KEY",
}

M.EncryptionConfigurationDetails = {
    type = "structure",
    id = "EncryptionConfigurationDetails",
    members = {
        KeyType = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        EncryptionStatus = {
            type = "string",
        },
        EncryptionStatusReason = {
            type = "string",
        },
    },
}

M.InstanceStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    ACTIVE = "ACTIVE",
}

M.DescribeInstanceOutput = {
    type = "structure",
    id = "DescribeInstanceOutput",
    members = {
        InstanceArn = {
            type = "string",
        },
        IdentityStoreId = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        EncryptionConfigurationDetails = M.EncryptionConfigurationDetails,
    },
}

M.DescribeInstanceAccessControlAttributeConfigurationInput = {
    type = "structure",
    id = "DescribeInstanceAccessControlAttributeConfigurationInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InstanceAccessControlAttributeConfigurationStatus = {
    ENABLED = "ENABLED",
    CREATION_IN_PROGRESS = "CREATION_IN_PROGRESS",
    CREATION_FAILED = "CREATION_FAILED",
}

M.DescribeInstanceAccessControlAttributeConfigurationOutput = {
    type = "structure",
    id = "DescribeInstanceAccessControlAttributeConfigurationOutput",
    members = {
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        InstanceAccessControlAttributeConfiguration = M.InstanceAccessControlAttributeConfiguration,
    },
}

M.DescribePermissionSetInput = {
    type = "structure",
    id = "DescribePermissionSetInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribePermissionSetOutput = {
    type = "structure",
    id = "DescribePermissionSetOutput",
    members = {
        PermissionSet = M.PermissionSet,
    },
}

M.DescribePermissionSetProvisioningStatusInput = {
    type = "structure",
    id = "DescribePermissionSetProvisioningStatusInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisionPermissionSetRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PermissionSetProvisioningStatus = {
    type = "structure",
    id = "PermissionSetProvisioningStatus",
    members = {
        Status = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        PermissionSetArn = {
            type = "string",
        },
        FailureReason = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
    },
}

M.DescribePermissionSetProvisioningStatusOutput = {
    type = "structure",
    id = "DescribePermissionSetProvisioningStatusOutput",
    members = {
        PermissionSetProvisioningStatus = M.PermissionSetProvisioningStatus,
    },
}

M.DescribeRegionInput = {
    type = "structure",
    id = "DescribeRegionInput",
    members = {
        InstanceArn = {
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
    },
}

M.DescribeRegionOutput = {
    type = "structure",
    id = "DescribeRegionOutput",
    members = {
        RegionName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AddedDate = {
            type = "timestamp",
        },
        IsPrimaryRegion = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.DescribeTrustedTokenIssuerInput = {
    type = "structure",
    id = "DescribeTrustedTokenIssuerInput",
    members = {
        TrustedTokenIssuerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeTrustedTokenIssuerOutput = {
    type = "structure",
    id = "DescribeTrustedTokenIssuerOutput",
    members = {
        TrustedTokenIssuerArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        TrustedTokenIssuerType = {
            type = "string",
        },
        TrustedTokenIssuerConfiguration = M.TrustedTokenIssuerConfiguration,
    },
}

M.DetachCustomerManagedPolicyReferenceFromPermissionSetInput = {
    type = "structure",
    id = "DetachCustomerManagedPolicyReferenceFromPermissionSetInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CustomerManagedPolicyReference = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomerManagedPolicyReference }),
    },
}

M.DetachCustomerManagedPolicyReferenceFromPermissionSetOutput = {
    type = "structure",
    id = "DetachCustomerManagedPolicyReferenceFromPermissionSetOutput",
}

M.DetachManagedPolicyFromPermissionSetInput = {
    type = "structure",
    id = "DetachManagedPolicyFromPermissionSetInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManagedPolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DetachManagedPolicyFromPermissionSetOutput = {
    type = "structure",
    id = "DetachManagedPolicyFromPermissionSetOutput",
}

M.EncryptionConfiguration = {
    type = "structure",
    id = "EncryptionConfiguration",
    members = {
        KeyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyArn = {
            type = "string",
        },
    },
}

M.GetApplicationAssignmentConfigurationInput = {
    type = "structure",
    id = "GetApplicationAssignmentConfigurationInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetApplicationAssignmentConfigurationOutput = {
    type = "structure",
    id = "GetApplicationAssignmentConfigurationOutput",
    members = {
        AssignmentRequired = {
            type = "boolean",
            traits = {
                default = true,
                required = true,
            },
        },
    },
}

M.GetApplicationSessionConfigurationInput = {
    type = "structure",
    id = "GetApplicationSessionConfigurationInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UserBackgroundSessionApplicationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.GetApplicationSessionConfigurationOutput = {
    type = "structure",
    id = "GetApplicationSessionConfigurationOutput",
    members = {
        UserBackgroundSessionApplicationStatus = {
            type = "string",
        },
    },
}

M.GetInlinePolicyForPermissionSetInput = {
    type = "structure",
    id = "GetInlinePolicyForPermissionSetInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetInlinePolicyForPermissionSetOutput = {
    type = "structure",
    id = "GetInlinePolicyForPermissionSetOutput",
    members = {
        InlinePolicy = {
            type = "string",
        },
    },
}

M.GetPermissionsBoundaryForPermissionSetInput = {
    type = "structure",
    id = "GetPermissionsBoundaryForPermissionSetInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PermissionsBoundary = {
    type = "structure",
    id = "PermissionsBoundary",
    members = {
        CustomerManagedPolicyReference = M.CustomerManagedPolicyReference,
        ManagedPolicyArn = {
            type = "string",
        },
    },
}

M.GetPermissionsBoundaryForPermissionSetOutput = {
    type = "structure",
    id = "GetPermissionsBoundaryForPermissionSetOutput",
    members = {
        PermissionsBoundary = M.PermissionsBoundary,
    },
}

M.InstanceMetadata = {
    type = "structure",
    id = "InstanceMetadata",
    members = {
        InstanceArn = {
            type = "string",
        },
        IdentityStoreId = {
            type = "string",
        },
        OwnerAccountId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
    },
}

M.OperationStatusFilter = {
    type = "structure",
    id = "OperationStatusFilter",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.ListAccountAssignmentCreationStatusInput = {
    type = "structure",
    id = "ListAccountAssignmentCreationStatusInput",
    members = {
        InstanceArn = {
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
        Filter = M.OperationStatusFilter,
    },
}

M.ListAccountAssignmentCreationStatusOutput = {
    type = "structure",
    id = "ListAccountAssignmentCreationStatusOutput",
    members = {
        AccountAssignmentsCreationStatus = {
            type = "list",
            member = M.AccountAssignmentOperationStatusMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAccountAssignmentDeletionStatusInput = {
    type = "structure",
    id = "ListAccountAssignmentDeletionStatusInput",
    members = {
        InstanceArn = {
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
        Filter = M.OperationStatusFilter,
    },
}

M.ListAccountAssignmentDeletionStatusOutput = {
    type = "structure",
    id = "ListAccountAssignmentDeletionStatusOutput",
    members = {
        AccountAssignmentsDeletionStatus = {
            type = "list",
            member = M.AccountAssignmentOperationStatusMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAccountAssignmentsInput = {
    type = "structure",
    id = "ListAccountAssignmentsInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
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

M.ListAccountAssignmentsOutput = {
    type = "structure",
    id = "ListAccountAssignmentsOutput",
    members = {
        AccountAssignments = {
            type = "list",
            member = M.AccountAssignment,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAccountAssignmentsFilter = {
    type = "structure",
    id = "ListAccountAssignmentsFilter",
    members = {
        AccountId = {
            type = "string",
        },
    },
}

M.ListAccountAssignmentsForPrincipalInput = {
    type = "structure",
    id = "ListAccountAssignmentsForPrincipalInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = M.ListAccountAssignmentsFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
    },
}

M.ListAccountAssignmentsForPrincipalOutput = {
    type = "structure",
    id = "ListAccountAssignmentsForPrincipalOutput",
    members = {
        AccountAssignments = {
            type = "list",
            member = M.AccountAssignmentForPrincipal,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ProvisioningStatus = {
    LATEST_PERMISSION_SET_PROVISIONED = "LATEST_PERMISSION_SET_PROVISIONED",
    LATEST_PERMISSION_SET_NOT_PROVISIONED = "LATEST_PERMISSION_SET_NOT_PROVISIONED",
}

M.ListAccountsForProvisionedPermissionSetInput = {
    type = "structure",
    id = "ListAccountsForProvisionedPermissionSetInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisioningStatus = {
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

M.ListAccountsForProvisionedPermissionSetOutput = {
    type = "structure",
    id = "ListAccountsForProvisionedPermissionSetOutput",
    members = {
        AccountIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApplicationAssignmentsInput = {
    type = "structure",
    id = "ListApplicationAssignmentsInput",
    members = {
        ApplicationArn = {
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

M.ListApplicationAssignmentsOutput = {
    type = "structure",
    id = "ListApplicationAssignmentsOutput",
    members = {
        ApplicationAssignments = {
            type = "list",
            member = M.ApplicationAssignment,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApplicationAssignmentsFilter = {
    type = "structure",
    id = "ListApplicationAssignmentsFilter",
    members = {
        ApplicationArn = {
            type = "string",
        },
    },
}

M.ListApplicationAssignmentsForPrincipalInput = {
    type = "structure",
    id = "ListApplicationAssignmentsForPrincipalInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Filter = M.ListApplicationAssignmentsFilter,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
    },
}

M.ListApplicationAssignmentsForPrincipalOutput = {
    type = "structure",
    id = "ListApplicationAssignmentsForPrincipalOutput",
    members = {
        ApplicationAssignments = {
            type = "list",
            member = M.ApplicationAssignmentForPrincipal,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApplicationProvidersInput = {
    type = "structure",
    id = "ListApplicationProvidersInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApplicationProvidersOutput = {
    type = "structure",
    id = "ListApplicationProvidersOutput",
    members = {
        ApplicationProviders = {
            type = "list",
            member = M.ApplicationProvider,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApplicationsFilter = {
    type = "structure",
    id = "ListApplicationsFilter",
    members = {
        ApplicationAccount = {
            type = "string",
        },
        ApplicationProvider = {
            type = "string",
        },
    },
}

M.ListApplicationsInput = {
    type = "structure",
    id = "ListApplicationsInput",
    members = {
        InstanceArn = {
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
        Filter = M.ListApplicationsFilter,
    },
}

M.ListApplicationsOutput = {
    type = "structure",
    id = "ListApplicationsOutput",
    members = {
        Applications = {
            type = "list",
            member = M.Application,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCustomerManagedPolicyReferencesInPermissionSetInput = {
    type = "structure",
    id = "ListCustomerManagedPolicyReferencesInPermissionSetInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
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

M.ListCustomerManagedPolicyReferencesInPermissionSetOutput = {
    type = "structure",
    id = "ListCustomerManagedPolicyReferencesInPermissionSetOutput",
    members = {
        CustomerManagedPolicyReferences = {
            type = "list",
            member = M.CustomerManagedPolicyReference,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInstancesInput = {
    type = "structure",
    id = "ListInstancesInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInstancesOutput = {
    type = "structure",
    id = "ListInstancesOutput",
    members = {
        Instances = {
            type = "list",
            member = M.InstanceMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListManagedPoliciesInPermissionSetInput = {
    type = "structure",
    id = "ListManagedPoliciesInPermissionSetInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
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

M.ListManagedPoliciesInPermissionSetOutput = {
    type = "structure",
    id = "ListManagedPoliciesInPermissionSetOutput",
    members = {
        AttachedManagedPolicies = {
            type = "list",
            member = M.AttachedManagedPolicy,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPermissionSetProvisioningStatusInput = {
    type = "structure",
    id = "ListPermissionSetProvisioningStatusInput",
    members = {
        InstanceArn = {
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
        Filter = M.OperationStatusFilter,
    },
}

M.PermissionSetProvisioningStatusMetadata = {
    type = "structure",
    id = "PermissionSetProvisioningStatusMetadata",
    members = {
        Status = {
            type = "string",
        },
        RequestId = {
            type = "string",
        },
        CreatedDate = {
            type = "timestamp",
        },
    },
}

M.ListPermissionSetProvisioningStatusOutput = {
    type = "structure",
    id = "ListPermissionSetProvisioningStatusOutput",
    members = {
        PermissionSetsProvisioningStatus = {
            type = "list",
            member = M.PermissionSetProvisioningStatusMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPermissionSetsInput = {
    type = "structure",
    id = "ListPermissionSetsInput",
    members = {
        InstanceArn = {
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

M.ListPermissionSetsOutput = {
    type = "structure",
    id = "ListPermissionSetsOutput",
    members = {
        PermissionSets = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPermissionSetsProvisionedToAccountInput = {
    type = "structure",
    id = "ListPermissionSetsProvisionedToAccountInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProvisioningStatus = {
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

M.ListPermissionSetsProvisionedToAccountOutput = {
    type = "structure",
    id = "ListPermissionSetsProvisionedToAccountOutput",
    members = {
        NextToken = {
            type = "string",
        },
        PermissionSets = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListRegionsInput = {
    type = "structure",
    id = "ListRegionsInput",
    members = {
        InstanceArn = {
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

M.RegionMetadata = {
    type = "structure",
    id = "RegionMetadata",
    members = {
        RegionName = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AddedDate = {
            type = "timestamp",
        },
        IsPrimaryRegion = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ListRegionsOutput = {
    type = "structure",
    id = "ListRegionsOutput",
    members = {
        Regions = {
            type = "list",
            member = M.RegionMetadata,
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
        InstanceArn = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
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

M.ListTrustedTokenIssuersInput = {
    type = "structure",
    id = "ListTrustedTokenIssuersInput",
    members = {
        InstanceArn = {
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

M.TrustedTokenIssuerMetadata = {
    type = "structure",
    id = "TrustedTokenIssuerMetadata",
    members = {
        TrustedTokenIssuerArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        TrustedTokenIssuerType = {
            type = "string",
        },
    },
}

M.ListTrustedTokenIssuersOutput = {
    type = "structure",
    id = "ListTrustedTokenIssuersOutput",
    members = {
        TrustedTokenIssuers = {
            type = "list",
            member = M.TrustedTokenIssuerMetadata,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OidcJwtUpdateConfiguration = {
    type = "structure",
    id = "OidcJwtUpdateConfiguration",
    members = {
        ClaimAttributePath = {
            type = "string",
        },
        IdentityStoreAttributePath = {
            type = "string",
        },
        JwksRetrievalOption = {
            type = "string",
        },
    },
}

M.ProvisionTargetType = {
    AWS_ACCOUNT = "AWS_ACCOUNT",
    ALL_PROVISIONED_ACCOUNTS = "ALL_PROVISIONED_ACCOUNTS",
}

M.ProvisionPermissionSetInput = {
    type = "structure",
    id = "ProvisionPermissionSetInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetId = {
            type = "string",
        },
        TargetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProvisionPermissionSetOutput = {
    type = "structure",
    id = "ProvisionPermissionSetOutput",
    members = {
        PermissionSetProvisioningStatus = M.PermissionSetProvisioningStatus,
    },
}

M.PutApplicationAssignmentConfigurationInput = {
    type = "structure",
    id = "PutApplicationAssignmentConfigurationInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AssignmentRequired = {
            type = "boolean",
            traits = {
                default = true,
                required = true,
            },
        },
    },
}

M.PutApplicationAssignmentConfigurationOutput = {
    type = "structure",
    id = "PutApplicationAssignmentConfigurationOutput",
}

M.PutApplicationSessionConfigurationInput = {
    type = "structure",
    id = "PutApplicationSessionConfigurationInput",
    members = {
        ApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserBackgroundSessionApplicationStatus = {
            type = "string",
        },
    },
}

M.PutApplicationSessionConfigurationOutput = {
    type = "structure",
    id = "PutApplicationSessionConfigurationOutput",
}

M.PutInlinePolicyToPermissionSetInput = {
    type = "structure",
    id = "PutInlinePolicyToPermissionSetInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InlinePolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutInlinePolicyToPermissionSetOutput = {
    type = "structure",
    id = "PutInlinePolicyToPermissionSetOutput",
}

M.PutPermissionsBoundaryToPermissionSetInput = {
    type = "structure",
    id = "PutPermissionsBoundaryToPermissionSetInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionsBoundary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PermissionsBoundary }),
    },
}

M.PutPermissionsBoundaryToPermissionSetOutput = {
    type = "structure",
    id = "PutPermissionsBoundaryToPermissionSetOutput",
}

M.RemoveRegionInput = {
    type = "structure",
    id = "RemoveRegionInput",
    members = {
        InstanceArn = {
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
    },
}

M.RemoveRegionOutput = {
    type = "structure",
    id = "RemoveRegionOutput",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        InstanceArn = {
            type = "string",
        },
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
        InstanceArn = {
            type = "string",
        },
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

M.UpdateApplicationPortalOptions = {
    type = "structure",
    id = "UpdateApplicationPortalOptions",
    members = {
        SignInOptions = M.SignInOptions,
    },
}

M.UpdateApplicationInput = {
    type = "structure",
    id = "UpdateApplicationInput",
    members = {
        ApplicationArn = {
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
        Status = {
            type = "string",
        },
        PortalOptions = M.UpdateApplicationPortalOptions,
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
    id = "UpdateApplicationOutput",
}

M.UpdateInstanceInput = {
    type = "structure",
    id = "UpdateInstanceInput",
    members = {
        Name = {
            type = "string",
        },
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.UpdateInstanceOutput = {
    type = "structure",
    id = "UpdateInstanceOutput",
}

M.UpdateInstanceAccessControlAttributeConfigurationInput = {
    type = "structure",
    id = "UpdateInstanceAccessControlAttributeConfigurationInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceAccessControlAttributeConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceAccessControlAttributeConfiguration }),
    },
}

M.UpdateInstanceAccessControlAttributeConfigurationOutput = {
    type = "structure",
    id = "UpdateInstanceAccessControlAttributeConfigurationOutput",
}

M.UpdatePermissionSetInput = {
    type = "structure",
    id = "UpdatePermissionSetInput",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PermissionSetArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        SessionDuration = {
            type = "string",
        },
        RelayState = {
            type = "string",
        },
    },
}

M.UpdatePermissionSetOutput = {
    type = "structure",
    id = "UpdatePermissionSetOutput",
}

M.TrustedTokenIssuerUpdateConfiguration = {
    type = "union",
    id = "TrustedTokenIssuerUpdateConfiguration",
    members = {
        OidcJwtConfiguration = M.OidcJwtUpdateConfiguration,
    },
}

M.UpdateTrustedTokenIssuerInput = {
    type = "structure",
    id = "UpdateTrustedTokenIssuerInput",
    members = {
        TrustedTokenIssuerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        TrustedTokenIssuerConfiguration = M.TrustedTokenIssuerUpdateConfiguration,
    },
}

M.UpdateTrustedTokenIssuerOutput = {
    type = "structure",
    id = "UpdateTrustedTokenIssuerOutput",
}

return M
