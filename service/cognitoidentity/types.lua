local M = {}

M.AmbiguousRoleResolutionType = {
    AUTHENTICATED_ROLE = "AuthenticatedRole",
    DENY = "Deny",
}

M.CognitoIdentityProvider = {
    type = "structure",
    id = "CognitoIdentityProvider",
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
    id = "CreateIdentityPoolInput",
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
    id = "CreateIdentityPoolOutput",
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
    id = "InternalErrorException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
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

M.NotAuthorizedException = {
    type = "structure",
    id = "NotAuthorizedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceConflictException = {
    type = "structure",
    id = "ResourceConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteIdentitiesInput = {
    type = "structure",
    id = "DeleteIdentitiesInput",
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
    id = "UnprocessedIdentityId",
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
    id = "DeleteIdentitiesOutput",
    members = {
        UnprocessedIdentityIds = {
            type = "list",
            member = M.UnprocessedIdentityId,
        },
    },
}

M.DeleteIdentityPoolInput = {
    type = "structure",
    id = "DeleteIdentityPoolInput",
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
    id = "DeleteIdentityPoolOutput",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeIdentityInput = {
    type = "structure",
    id = "DescribeIdentityInput",
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
    id = "DescribeIdentityOutput",
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
    id = "DescribeIdentityPoolInput",
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
    id = "DescribeIdentityPoolOutput",
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
    id = "ExternalServiceException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetCredentialsForIdentityInput = {
    type = "structure",
    id = "GetCredentialsForIdentityInput",
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
    id = "Credentials",
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
    id = "GetCredentialsForIdentityOutput",
    members = {
        IdentityId = {
            type = "string",
        },
        Credentials = M.Credentials,
    },
}

M.InvalidIdentityPoolConfigurationException = {
    type = "structure",
    id = "InvalidIdentityPoolConfigurationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetIdInput = {
    type = "structure",
    id = "GetIdInput",
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
    id = "GetIdOutput",
    members = {
        IdentityId = {
            type = "string",
        },
    },
}

M.GetIdentityPoolRolesInput = {
    type = "structure",
    id = "GetIdentityPoolRolesInput",
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
    id = "MappingRule",
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
    id = "RulesConfigurationType",
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
    id = "RoleMapping",
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
    id = "GetIdentityPoolRolesOutput",
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
    id = "GetOpenIdTokenInput",
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
    id = "GetOpenIdTokenOutput",
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
    id = "DeveloperUserAlreadyRegisteredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetOpenIdTokenForDeveloperIdentityInput = {
    type = "structure",
    id = "GetOpenIdTokenForDeveloperIdentityInput",
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
    id = "GetOpenIdTokenForDeveloperIdentityOutput",
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
    id = "GetPrincipalTagAttributeMapInput",
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
    id = "GetPrincipalTagAttributeMapOutput",
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
    id = "ListIdentitiesInput",
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
    id = "IdentityDescription",
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
    id = "ListIdentitiesOutput",
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
    id = "ListIdentityPoolsInput",
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
    id = "IdentityPoolShortDescription",
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
    id = "ListIdentityPoolsOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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
    id = "LookupDeveloperIdentityInput",
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
    id = "LookupDeveloperIdentityOutput",
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
    id = "MergeDeveloperIdentitiesInput",
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
    id = "MergeDeveloperIdentitiesOutput",
    members = {
        IdentityId = {
            type = "string",
        },
    },
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

M.SetIdentityPoolRolesInput = {
    type = "structure",
    id = "SetIdentityPoolRolesInput",
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
    id = "SetIdentityPoolRolesOutput",
}

M.SetPrincipalTagAttributeMapInput = {
    type = "structure",
    id = "SetPrincipalTagAttributeMapInput",
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
    id = "SetPrincipalTagAttributeMapOutput",
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
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UnlinkDeveloperIdentityInput = {
    type = "structure",
    id = "UnlinkDeveloperIdentityInput",
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
    id = "UnlinkDeveloperIdentityOutput",
}

M.UnlinkIdentityInput = {
    type = "structure",
    id = "UnlinkIdentityInput",
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
    id = "UnlinkIdentityOutput",
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

M.UpdateIdentityPoolInput = {
    type = "structure",
    id = "UpdateIdentityPoolInput",
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
    id = "UpdateIdentityPoolOutput",
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
