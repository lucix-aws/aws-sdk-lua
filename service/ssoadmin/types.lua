local M = {}

M.AccessControlAttributeValue = {
    type = "structure",
    members = {
        Source = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccessControlAttribute = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AccessDeniedExceptionReason = {
    KMS_ACCESS_DENIED_EXCEPTION = "KMS_AccessDeniedException",
}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        Status = {
            type = "string",
        },
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

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
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

M.ThrottlingExceptionReason = {
    KMS_THROTTLING_EXCEPTION = "KMS_ThrottlingException",
}

M.ThrottlingException = {
    type = "structure",
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
    members = {
        SignInOptions = {
            type = "structure",
        },
        Visibility = {
            type = "string",
        },
    },
}

M.ApplicationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Application = {
    type = "structure",
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
        PortalOptions = {
            type = "structure",
        },
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
}

M.ResourceNotFoundExceptionReason = {
    KMS_NOT_FOUND_EXCEPTION = "KMS_NotFoundException",
}

M.ResourceNotFoundException = {
    type = "structure",
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
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthorizedTargets = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListApplicationAccessScopesInput = {
    type = "structure",
    members = {
        ApplicationArn = {
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

M.ScopeDetails = {
    type = "structure",
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthorizedTargets = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListApplicationAccessScopesOutput = {
    type = "structure",
    members = {
        Scopes = {
            type = "list",
            member_type = "structure",
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
    members = {
        Scope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AuthorizedTargets = {
            type = "list",
            member_type = "string",
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
}

M.ApplicationAssignment = {
    type = "structure",
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
}

M.GetApplicationAuthenticationMethodInput = {
    type = "structure",
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
    members = {
        Iam = {
            type = "structure",
        },
    },
}

M.GetApplicationAuthenticationMethodOutput = {
    type = "structure",
    members = {
        AuthenticationMethod = {
            type = "union",
        },
    },
}

M.ListApplicationAuthenticationMethodsInput = {
    type = "structure",
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
    members = {
        AuthenticationMethodType = {
            type = "string",
        },
        AuthenticationMethod = {
            type = "union",
        },
    },
}

M.ListApplicationAuthenticationMethodsOutput = {
    type = "structure",
    members = {
        AuthenticationMethods = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutApplicationAuthenticationMethodInput = {
    type = "structure",
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
        AuthenticationMethod = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.PutApplicationAuthenticationMethodOutput = {
    type = "structure",
}

M.GrantType = {
    AUTHORIZATION_CODE = "authorization_code",
    REFRESH_TOKEN = "refresh_token",
    JWT_BEARER = "urn:ietf:params:oauth:grant-type:jwt-bearer",
    TOKEN_EXCHANGE = "urn:ietf:params:oauth:grant-type:token-exchange",
}

M.DeleteApplicationGrantInput = {
    type = "structure",
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
}

M.GetApplicationGrantInput = {
    type = "structure",
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
    members = {
        RedirectUris = {
            type = "list",
            member_type = "string",
        },
    },
}

M.AuthorizedTokenIssuer = {
    type = "structure",
    members = {
        TrustedTokenIssuerArn = {
            type = "string",
        },
        AuthorizedAudiences = {
            type = "list",
            member_type = "string",
        },
    },
}

M.JwtBearerGrant = {
    type = "structure",
    members = {
        AuthorizedTokenIssuers = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RefreshTokenGrant = {
    type = "structure",
}

M.TokenExchangeGrant = {
    type = "structure",
}

M.Grant = {
    type = "union",
    members = {
        AuthorizationCode = {
            type = "structure",
        },
        JwtBearer = {
            type = "structure",
        },
        RefreshToken = {
            type = "structure",
        },
        TokenExchange = {
            type = "structure",
        },
    },
}

M.GetApplicationGrantOutput = {
    type = "structure",
    members = {
        Grant = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ListApplicationGrantsInput = {
    type = "structure",
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
    members = {
        GrantType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Grant = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ListApplicationGrantsOutput = {
    type = "structure",
    members = {
        Grants = {
            type = "list",
            member_type = "structure",
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
        Grant = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.PutApplicationGrantOutput = {
    type = "structure",
}

M.DisplayData = {
    type = "structure",
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
    members = {
        Scopes = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.ApplicationProvider = {
    type = "structure",
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
        DisplayData = {
            type = "structure",
        },
        ResourceServerConfig = {
            type = "structure",
        },
    },
}

M.CustomerManagedPolicyReference = {
    type = "structure",
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
        CustomerManagedPolicyReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AttachCustomerManagedPolicyReferenceToPermissionSetOutput = {
    type = "structure",
}

M.AttachedManagedPolicy = {
    type = "structure",
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
}

M.CreateAccountAssignmentInput = {
    type = "structure",
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
    members = {
        AccountAssignmentCreationStatus = {
            type = "structure",
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

M.CreateApplicationInput = {
    type = "structure",
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
        PortalOptions = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        Status = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
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
}

M.CreateInstanceInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateInstanceOutput = {
    type = "structure",
    members = {
        InstanceArn = {
            type = "string",
        },
    },
}

M.InstanceAccessControlAttributeConfiguration = {
    type = "structure",
    members = {
        AccessControlAttributes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateInstanceAccessControlAttributeConfigurationInput = {
    type = "structure",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceAccessControlAttributeConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateInstanceAccessControlAttributeConfigurationOutput = {
    type = "structure",
}

M.CreatePermissionSetInput = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.PermissionSet = {
    type = "structure",
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
    members = {
        PermissionSet = {
            type = "structure",
        },
    },
}

M.JwksRetrievalOption = {
    OPEN_ID_DISCOVERY = "OPEN_ID_DISCOVERY",
}

M.OidcJwtConfiguration = {
    type = "structure",
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
    members = {
        OidcJwtConfiguration = {
            type = "structure",
        },
    },
}

M.TrustedTokenIssuerType = {
    OIDC_JWT = "OIDC_JWT",
}

M.CreateTrustedTokenIssuerInput = {
    type = "structure",
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
        TrustedTokenIssuerConfiguration = {
            type = "union",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateTrustedTokenIssuerOutput = {
    type = "structure",
    members = {
        TrustedTokenIssuerArn = {
            type = "string",
        },
    },
}

M.DeleteAccountAssignmentInput = {
    type = "structure",
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
    members = {
        AccountAssignmentDeletionStatus = {
            type = "structure",
        },
    },
}

M.DeleteApplicationInput = {
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

M.DeleteApplicationOutput = {
    type = "structure",
}

M.DeleteApplicationAssignmentInput = {
    type = "structure",
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
}

M.DeleteInlinePolicyFromPermissionSetInput = {
    type = "structure",
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
}

M.DeleteInstanceInput = {
    type = "structure",
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
}

M.DeleteInstanceAccessControlAttributeConfigurationInput = {
    type = "structure",
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
}

M.DeletePermissionsBoundaryFromPermissionSetInput = {
    type = "structure",
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
}

M.DeletePermissionSetInput = {
    type = "structure",
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
}

M.DeleteTrustedTokenIssuerInput = {
    type = "structure",
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
}

M.DescribeAccountAssignmentCreationStatusInput = {
    type = "structure",
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
    members = {
        AccountAssignmentCreationStatus = {
            type = "structure",
        },
    },
}

M.DescribeAccountAssignmentDeletionStatusInput = {
    type = "structure",
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
    members = {
        AccountAssignmentDeletionStatus = {
            type = "structure",
        },
    },
}

M.DescribeApplicationInput = {
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

M.DescribeApplicationOutput = {
    type = "structure",
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
        PortalOptions = {
            type = "structure",
        },
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
        DisplayData = {
            type = "structure",
        },
        ResourceServerConfig = {
            type = "structure",
        },
    },
}

M.DescribeInstanceInput = {
    type = "structure",
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
        EncryptionConfigurationDetails = {
            type = "structure",
        },
    },
}

M.DescribeInstanceAccessControlAttributeConfigurationInput = {
    type = "structure",
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
    members = {
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        InstanceAccessControlAttributeConfiguration = {
            type = "structure",
        },
    },
}

M.DescribePermissionSetInput = {
    type = "structure",
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
    members = {
        PermissionSet = {
            type = "structure",
        },
    },
}

M.DescribePermissionSetProvisioningStatusInput = {
    type = "structure",
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
    members = {
        PermissionSetProvisioningStatus = {
            type = "structure",
        },
    },
}

M.DescribeRegionInput = {
    type = "structure",
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
        },
    },
}

M.DescribeTrustedTokenIssuerInput = {
    type = "structure",
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
        TrustedTokenIssuerConfiguration = {
            type = "union",
        },
    },
}

M.DetachCustomerManagedPolicyReferenceFromPermissionSetInput = {
    type = "structure",
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
        CustomerManagedPolicyReference = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DetachCustomerManagedPolicyReferenceFromPermissionSetOutput = {
    type = "structure",
}

M.DetachManagedPolicyFromPermissionSetInput = {
    type = "structure",
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
}

M.EncryptionConfiguration = {
    type = "structure",
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
    members = {
        AssignmentRequired = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.GetApplicationSessionConfigurationInput = {
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

M.UserBackgroundSessionApplicationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.GetApplicationSessionConfigurationOutput = {
    type = "structure",
    members = {
        UserBackgroundSessionApplicationStatus = {
            type = "string",
        },
    },
}

M.GetInlinePolicyForPermissionSetInput = {
    type = "structure",
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
    members = {
        InlinePolicy = {
            type = "string",
        },
    },
}

M.GetPermissionsBoundaryForPermissionSetInput = {
    type = "structure",
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
    members = {
        CustomerManagedPolicyReference = {
            type = "structure",
        },
        ManagedPolicyArn = {
            type = "string",
        },
    },
}

M.GetPermissionsBoundaryForPermissionSetOutput = {
    type = "structure",
    members = {
        PermissionsBoundary = {
            type = "structure",
        },
    },
}

M.InstanceMetadata = {
    type = "structure",
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
    members = {
        Status = {
            type = "string",
        },
    },
}

M.ListAccountAssignmentCreationStatusInput = {
    type = "structure",
    members = {
        InstanceArn = {
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
        Filter = {
            type = "structure",
        },
    },
}

M.ListAccountAssignmentCreationStatusOutput = {
    type = "structure",
    members = {
        AccountAssignmentsCreationStatus = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAccountAssignmentDeletionStatusInput = {
    type = "structure",
    members = {
        InstanceArn = {
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
        Filter = {
            type = "structure",
        },
    },
}

M.ListAccountAssignmentDeletionStatusOutput = {
    type = "structure",
    members = {
        AccountAssignmentsDeletionStatus = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAccountAssignmentsInput = {
    type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAccountAssignmentsOutput = {
    type = "structure",
    members = {
        AccountAssignments = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAccountAssignmentsFilter = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
    },
}

M.ListAccountAssignmentsForPrincipalInput = {
    type = "structure",
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
        Filter = {
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

M.ListAccountAssignmentsForPrincipalOutput = {
    type = "structure",
    members = {
        AccountAssignments = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAccountsForProvisionedPermissionSetOutput = {
    type = "structure",
    members = {
        AccountIds = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApplicationAssignmentsInput = {
    type = "structure",
    members = {
        ApplicationArn = {
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

M.ListApplicationAssignmentsOutput = {
    type = "structure",
    members = {
        ApplicationAssignments = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApplicationAssignmentsFilter = {
    type = "structure",
    members = {
        ApplicationArn = {
            type = "string",
        },
    },
}

M.ListApplicationAssignmentsForPrincipalInput = {
    type = "structure",
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
        Filter = {
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

M.ListApplicationAssignmentsForPrincipalOutput = {
    type = "structure",
    members = {
        ApplicationAssignments = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApplicationProvidersInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApplicationProvidersOutput = {
    type = "structure",
    members = {
        ApplicationProviders = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApplicationsFilter = {
    type = "structure",
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
    members = {
        InstanceArn = {
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
        Filter = {
            type = "structure",
        },
    },
}

M.ListApplicationsOutput = {
    type = "structure",
    members = {
        Applications = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCustomerManagedPolicyReferencesInPermissionSetInput = {
    type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCustomerManagedPolicyReferencesInPermissionSetOutput = {
    type = "structure",
    members = {
        CustomerManagedPolicyReferences = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInstancesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListInstancesOutput = {
    type = "structure",
    members = {
        Instances = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListManagedPoliciesInPermissionSetInput = {
    type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListManagedPoliciesInPermissionSetOutput = {
    type = "structure",
    members = {
        AttachedManagedPolicies = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPermissionSetProvisioningStatusInput = {
    type = "structure",
    members = {
        InstanceArn = {
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
        Filter = {
            type = "structure",
        },
    },
}

M.PermissionSetProvisioningStatusMetadata = {
    type = "structure",
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
    members = {
        PermissionSetsProvisioningStatus = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPermissionSetsInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ListPermissionSetsOutput = {
    type = "structure",
    members = {
        PermissionSets = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPermissionSetsProvisionedToAccountInput = {
    type = "structure",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPermissionSetsProvisionedToAccountOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        PermissionSets = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListRegionsInput = {
    type = "structure",
    members = {
        InstanceArn = {
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

M.RegionMetadata = {
    type = "structure",
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
        },
    },
}

M.ListRegionsOutput = {
    type = "structure",
    members = {
        Regions = {
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

M.ListTrustedTokenIssuersInput = {
    type = "structure",
    members = {
        InstanceArn = {
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

M.TrustedTokenIssuerMetadata = {
    type = "structure",
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
    members = {
        TrustedTokenIssuers = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.OidcJwtUpdateConfiguration = {
    type = "structure",
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
    members = {
        PermissionSetProvisioningStatus = {
            type = "structure",
        },
    },
}

M.PutApplicationAssignmentConfigurationInput = {
    type = "structure",
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
                required = true,
            },
        },
    },
}

M.PutApplicationAssignmentConfigurationOutput = {
    type = "structure",
}

M.PutApplicationSessionConfigurationInput = {
    type = "structure",
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
}

M.PutInlinePolicyToPermissionSetInput = {
    type = "structure",
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
}

M.PutPermissionsBoundaryToPermissionSetInput = {
    type = "structure",
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
        PermissionsBoundary = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutPermissionsBoundaryToPermissionSetOutput = {
    type = "structure",
}

M.RemoveRegionInput = {
    type = "structure",
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
    members = {
        Status = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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

M.UntagResourceInput = {
    type = "structure",
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

M.UpdateApplicationPortalOptions = {
    type = "structure",
    members = {
        SignInOptions = {
            type = "structure",
        },
    },
}

M.UpdateApplicationInput = {
    type = "structure",
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
        PortalOptions = {
            type = "structure",
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
}

M.UpdateInstanceInput = {
    type = "structure",
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
        EncryptionConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateInstanceOutput = {
    type = "structure",
}

M.UpdateInstanceAccessControlAttributeConfigurationInput = {
    type = "structure",
    members = {
        InstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceAccessControlAttributeConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateInstanceAccessControlAttributeConfigurationOutput = {
    type = "structure",
}

M.UpdatePermissionSetInput = {
    type = "structure",
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
}

M.TrustedTokenIssuerUpdateConfiguration = {
    type = "union",
    members = {
        OidcJwtConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateTrustedTokenIssuerInput = {
    type = "structure",
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
        TrustedTokenIssuerConfiguration = {
            type = "union",
        },
    },
}

M.UpdateTrustedTokenIssuerOutput = {
    type = "structure",
}

return M
