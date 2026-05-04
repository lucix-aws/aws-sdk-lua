local M = {}

M.AmbiguousRoleResolutionType = {
    AUTHENTICATED_ROLE = "AuthenticatedRole",
    DENY = "Deny",
}

M.CognitoIdentityProvider = {
    type = "structure",
    members = {
        ProviderName = {
            type = "string",
        },
        ClientId = {
            type = "string",
        },
        ServerSideTokenCheck = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
    },
}

M.CreateIdentityPoolInput = {
    type = "structure",
    members = {
        IdentityPoolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowUnauthenticatedIdentities = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        AllowClassicFlow = {
            type = "boolean",
        },
        SupportedLoginProviders = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DeveloperProviderName = {
            type = "string",
        },
        OpenIdConnectProviderARNs = {
            type = "list",
            member = { type = "string" },
        },
        CognitoIdentityProviders = {
            type = "list",
            member = M.CognitoIdentityProvider,
        },
        SamlProviderARNs = {
            type = "list",
            member = { type = "string" },
        },
        IdentityPoolTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateIdentityPoolOutput = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityPoolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowUnauthenticatedIdentities = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        AllowClassicFlow = {
            type = "boolean",
        },
        SupportedLoginProviders = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DeveloperProviderName = {
            type = "string",
        },
        OpenIdConnectProviderARNs = {
            type = "list",
            member = { type = "string" },
        },
        CognitoIdentityProviders = {
            type = "list",
            member = M.CognitoIdentityProvider,
        },
        SamlProviderARNs = {
            type = "list",
            member = { type = "string" },
        },
        IdentityPoolTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.InternalErrorException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
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

M.NotAuthorizedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteIdentitiesInput = {
    type = "structure",
    members = {
        IdentityIdsToDelete = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ErrorCode = {
    ACCESS_DENIED = "AccessDenied",
    INTERNAL_SERVER_ERROR = "InternalServerError",
}

M.UnprocessedIdentityId = {
    type = "structure",
    members = {
        IdentityId = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
    },
}

M.DeleteIdentitiesOutput = {
    type = "structure",
    members = {
        UnprocessedIdentityIds = {
            type = "list",
            member = M.UnprocessedIdentityId,
        },
    },
}

M.DeleteIdentityPoolInput = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIdentityPoolOutput = {
    type = "structure",
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeIdentityInput = {
    type = "structure",
    members = {
        IdentityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeIdentityOutput = {
    type = "structure",
    members = {
        IdentityId = {
            type = "string",
        },
        Logins = {
            type = "list",
            member = { type = "string" },
        },
        CreationDate = {
            type = "timestamp",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.DescribeIdentityPoolInput = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeIdentityPoolOutput = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityPoolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowUnauthenticatedIdentities = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        AllowClassicFlow = {
            type = "boolean",
        },
        SupportedLoginProviders = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DeveloperProviderName = {
            type = "string",
        },
        OpenIdConnectProviderARNs = {
            type = "list",
            member = { type = "string" },
        },
        CognitoIdentityProviders = {
            type = "list",
            member = M.CognitoIdentityProvider,
        },
        SamlProviderARNs = {
            type = "list",
            member = { type = "string" },
        },
        IdentityPoolTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ExternalServiceException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetCredentialsForIdentityInput = {
    type = "structure",
    members = {
        IdentityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Logins = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CustomRoleArn = {
            type = "string",
        },
    },
}

M.Credentials = {
    type = "structure",
    members = {
        AccessKeyId = {
            type = "string",
        },
        SecretKey = {
            type = "string",
        },
        SessionToken = {
            type = "string",
        },
        Expiration = {
            type = "timestamp",
        },
    },
}

M.GetCredentialsForIdentityOutput = {
    type = "structure",
    members = {
        IdentityId = {
            type = "string",
        },
        Credentials = M.Credentials,
    },
}

M.InvalidIdentityPoolConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetIdInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        IdentityPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Logins = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetIdOutput = {
    type = "structure",
    members = {
        IdentityId = {
            type = "string",
        },
    },
}

M.GetIdentityPoolRolesInput = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MappingRuleMatchType = {
    EQUALS = "Equals",
    CONTAINS = "Contains",
    STARTS_WITH = "StartsWith",
    NOT_EQUAL = "NotEqual",
}

M.MappingRule = {
    type = "structure",
    members = {
        Claim = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MatchType = {
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
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RulesConfigurationType = {
    type = "structure",
    members = {
        Rules = {
            type = "list",
            member = M.MappingRule,
            traits = {
                required = true,
            },
        },
    },
}

M.RoleMappingType = {
    TOKEN = "Token",
    RULES = "Rules",
}

M.RoleMapping = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AmbiguousRoleResolution = {
            type = "string",
        },
        RulesConfiguration = M.RulesConfigurationType,
    },
}

M.GetIdentityPoolRolesOutput = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
        },
        Roles = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RoleMappings = {
            type = "map",
            key = { type = "string" },
            value = M.RoleMapping,
        },
    },
}

M.GetOpenIdTokenInput = {
    type = "structure",
    members = {
        IdentityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Logins = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetOpenIdTokenOutput = {
    type = "structure",
    members = {
        IdentityId = {
            type = "string",
        },
        Token = {
            type = "string",
        },
    },
}

M.DeveloperUserAlreadyRegisteredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetOpenIdTokenForDeveloperIdentityInput = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityId = {
            type = "string",
        },
        Logins = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        PrincipalTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        TokenDuration = {
            type = "long",
        },
    },
}

M.GetOpenIdTokenForDeveloperIdentityOutput = {
    type = "structure",
    members = {
        IdentityId = {
            type = "string",
        },
        Token = {
            type = "string",
        },
    },
}

M.GetPrincipalTagAttributeMapInput = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityProviderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPrincipalTagAttributeMapOutput = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
        },
        IdentityProviderName = {
            type = "string",
        },
        UseDefaults = {
            type = "boolean",
        },
        PrincipalTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListIdentitiesInput = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        HideDisabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.IdentityDescription = {
    type = "structure",
    members = {
        IdentityId = {
            type = "string",
        },
        Logins = {
            type = "list",
            member = { type = "string" },
        },
        CreationDate = {
            type = "timestamp",
        },
        LastModifiedDate = {
            type = "timestamp",
        },
    },
}

M.ListIdentitiesOutput = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
        },
        Identities = {
            type = "list",
            member = M.IdentityDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListIdentityPoolsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.IdentityPoolShortDescription = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
        },
        IdentityPoolName = {
            type = "string",
        },
    },
}

M.ListIdentityPoolsOutput = {
    type = "structure",
    members = {
        IdentityPools = {
            type = "list",
            member = M.IdentityPoolShortDescription,
        },
        NextToken = {
            type = "string",
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
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.LookupDeveloperIdentityInput = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityId = {
            type = "string",
        },
        DeveloperUserIdentifier = {
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

M.LookupDeveloperIdentityOutput = {
    type = "structure",
    members = {
        IdentityId = {
            type = "string",
        },
        DeveloperUserIdentifierList = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MergeDeveloperIdentitiesInput = {
    type = "structure",
    members = {
        SourceUserIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationUserIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeveloperProviderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MergeDeveloperIdentitiesOutput = {
    type = "structure",
    members = {
        IdentityId = {
            type = "string",
        },
    },
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

M.SetIdentityPoolRolesInput = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Roles = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        RoleMappings = {
            type = "map",
            key = { type = "string" },
            value = M.RoleMapping,
        },
    },
}

M.SetIdentityPoolRolesOutput = {
    type = "structure",
}

M.SetPrincipalTagAttributeMapInput = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityProviderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UseDefaults = {
            type = "boolean",
        },
        PrincipalTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SetPrincipalTagAttributeMapOutput = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
        },
        IdentityProviderName = {
            type = "string",
        },
        UseDefaults = {
            type = "boolean",
        },
        PrincipalTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UnlinkDeveloperIdentityInput = {
    type = "structure",
    members = {
        IdentityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeveloperProviderName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeveloperUserIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnlinkDeveloperIdentityOutput = {
    type = "structure",
}

M.UnlinkIdentityInput = {
    type = "structure",
    members = {
        IdentityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Logins = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        LoginsToRemove = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UnlinkIdentityOutput = {
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

M.UpdateIdentityPoolInput = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityPoolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowUnauthenticatedIdentities = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        AllowClassicFlow = {
            type = "boolean",
        },
        SupportedLoginProviders = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DeveloperProviderName = {
            type = "string",
        },
        OpenIdConnectProviderARNs = {
            type = "list",
            member = { type = "string" },
        },
        CognitoIdentityProviders = {
            type = "list",
            member = M.CognitoIdentityProvider,
        },
        SamlProviderARNs = {
            type = "list",
            member = { type = "string" },
        },
        IdentityPoolTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateIdentityPoolOutput = {
    type = "structure",
    members = {
        IdentityPoolId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IdentityPoolName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AllowUnauthenticatedIdentities = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        AllowClassicFlow = {
            type = "boolean",
        },
        SupportedLoginProviders = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DeveloperProviderName = {
            type = "string",
        },
        OpenIdConnectProviderARNs = {
            type = "list",
            member = { type = "string" },
        },
        CognitoIdentityProviders = {
            type = "list",
            member = M.CognitoIdentityProvider,
        },
        SamlProviderARNs = {
            type = "list",
            member = { type = "string" },
        },
        IdentityPoolTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

return M
