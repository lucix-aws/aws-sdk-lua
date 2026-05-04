local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionIdentifier = {
    type = "structure",
    members = {
        actionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AliasState = {
    ACTIVE = "Active",
    PENDING_DELETION = "PendingDeletion",
}

M.EntityIdentifier = {
    type = "structure",
    members = {
        entityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetPolicyInputItem = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetPolicyInput = {
    type = "structure",
    members = {
        requests = {
            type = "list",
            member = M.BatchGetPolicyInputItem,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetPolicyErrorCode = {
    POLICY_STORE_NOT_FOUND = "POLICY_STORE_NOT_FOUND",
    POLICY_NOT_FOUND = "POLICY_NOT_FOUND",
    POLICY_STORE_ALIAS_NOT_FOUND = "POLICY_STORE_ALIAS_NOT_FOUND",
}

M.BatchGetPolicyErrorItem = {
    type = "structure",
    members = {
        code = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StaticPolicyDefinitionDetail = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        statement = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TemplateLinkedPolicyDefinitionDetail = {
    type = "structure",
    members = {
        policyTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principal = M.EntityIdentifier,
        resource = M.EntityIdentifier,
    },
}

M.PolicyDefinitionDetail = {
    type = "union",
    members = {
        static = M.StaticPolicyDefinitionDetail,
        templateLinked = M.TemplateLinkedPolicyDefinitionDetail,
    },
}

M.PolicyType = {
    STATIC = "STATIC",
    TEMPLATE_LINKED = "TEMPLATE_LINKED",
}

M.BatchGetPolicyOutputItem = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PolicyDefinitionDetail }),
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
    },
}

M.BatchGetPolicyOutput = {
    type = "structure",
    members = {
        results = {
            type = "list",
            member = M.BatchGetPolicyOutputItem,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchGetPolicyErrorItem,
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.Decision = {
    ALLOW = "ALLOW",
    DENY = "DENY",
}

M.DeterminingPolicyItem = {
    type = "structure",
    members = {
        policyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EvaluationErrorItem = {
    type = "structure",
    members = {
        errorDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceType = {
    IDENTITY_SOURCE = "IDENTITY_SOURCE",
    POLICY_STORE = "POLICY_STORE",
    POLICY = "POLICY",
    POLICY_TEMPLATE = "POLICY_TEMPLATE",
    SCHEMA = "SCHEMA",
    POLICY_STORE_ALIAS = "POLICY_STORE_ALIAS",
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CedarVersion = {
    CEDAR_2 = "CEDAR_2",
    CEDAR_4 = "CEDAR_4",
}

M.CognitoGroupConfiguration = {
    type = "structure",
    members = {
        groupEntityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CognitoGroupConfigurationDetail = {
    type = "structure",
    members = {
        groupEntityType = {
            type = "string",
        },
    },
}

M.CognitoGroupConfigurationItem = {
    type = "structure",
    members = {
        groupEntityType = {
            type = "string",
        },
    },
}

M.CognitoUserPoolConfiguration = {
    type = "structure",
    members = {
        userPoolArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientIds = {
            type = "list",
            member = { type = "string" },
        },
        groupConfiguration = M.CognitoGroupConfiguration,
    },
}

M.CognitoUserPoolConfigurationDetail = {
    type = "structure",
    members = {
        userPoolArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        issuer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groupConfiguration = M.CognitoGroupConfigurationDetail,
    },
}

M.CognitoUserPoolConfigurationItem = {
    type = "structure",
    members = {
        userPoolArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        issuer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groupConfiguration = M.CognitoGroupConfigurationItem,
    },
}

M.OpenIdConnectGroupConfiguration = {
    type = "structure",
    members = {
        groupClaim = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groupEntityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OpenIdConnectAccessTokenConfiguration = {
    type = "structure",
    members = {
        principalIdClaim = {
            type = "string",
            traits = {
                default = "sub",
            },
        },
        audiences = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OpenIdConnectIdentityTokenConfiguration = {
    type = "structure",
    members = {
        principalIdClaim = {
            type = "string",
            traits = {
                default = "sub",
            },
        },
        clientIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OpenIdConnectTokenSelection = {
    type = "union",
    members = {
        accessTokenOnly = M.OpenIdConnectAccessTokenConfiguration,
        identityTokenOnly = M.OpenIdConnectIdentityTokenConfiguration,
    },
}

M.OpenIdConnectConfiguration = {
    type = "structure",
    members = {
        issuer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entityIdPrefix = {
            type = "string",
        },
        groupConfiguration = M.OpenIdConnectGroupConfiguration,
        tokenSelection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OpenIdConnectTokenSelection }),
    },
}

M.Configuration = {
    type = "union",
    members = {
        cognitoUserPoolConfiguration = M.CognitoUserPoolConfiguration,
        openIdConnectConfiguration = M.OpenIdConnectConfiguration,
    },
}

M.OpenIdConnectGroupConfigurationDetail = {
    type = "structure",
    members = {
        groupClaim = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groupEntityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OpenIdConnectAccessTokenConfigurationDetail = {
    type = "structure",
    members = {
        principalIdClaim = {
            type = "string",
            traits = {
                default = "sub",
            },
        },
        audiences = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OpenIdConnectIdentityTokenConfigurationDetail = {
    type = "structure",
    members = {
        principalIdClaim = {
            type = "string",
            traits = {
                default = "sub",
            },
        },
        clientIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OpenIdConnectTokenSelectionDetail = {
    type = "union",
    members = {
        accessTokenOnly = M.OpenIdConnectAccessTokenConfigurationDetail,
        identityTokenOnly = M.OpenIdConnectIdentityTokenConfigurationDetail,
    },
}

M.OpenIdConnectConfigurationDetail = {
    type = "structure",
    members = {
        issuer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entityIdPrefix = {
            type = "string",
        },
        groupConfiguration = M.OpenIdConnectGroupConfigurationDetail,
        tokenSelection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OpenIdConnectTokenSelectionDetail }),
    },
}

M.ConfigurationDetail = {
    type = "union",
    members = {
        cognitoUserPoolConfiguration = M.CognitoUserPoolConfigurationDetail,
        openIdConnectConfiguration = M.OpenIdConnectConfigurationDetail,
    },
}

M.OpenIdConnectGroupConfigurationItem = {
    type = "structure",
    members = {
        groupClaim = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groupEntityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OpenIdConnectAccessTokenConfigurationItem = {
    type = "structure",
    members = {
        principalIdClaim = {
            type = "string",
            traits = {
                default = "sub",
            },
        },
        audiences = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OpenIdConnectIdentityTokenConfigurationItem = {
    type = "structure",
    members = {
        principalIdClaim = {
            type = "string",
            traits = {
                default = "sub",
            },
        },
        clientIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.OpenIdConnectTokenSelectionItem = {
    type = "union",
    members = {
        accessTokenOnly = M.OpenIdConnectAccessTokenConfigurationItem,
        identityTokenOnly = M.OpenIdConnectIdentityTokenConfigurationItem,
    },
}

M.OpenIdConnectConfigurationItem = {
    type = "structure",
    members = {
        issuer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entityIdPrefix = {
            type = "string",
        },
        groupConfiguration = M.OpenIdConnectGroupConfigurationItem,
        tokenSelection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OpenIdConnectTokenSelectionItem }),
    },
}

M.ConfigurationItem = {
    type = "union",
    members = {
        cognitoUserPoolConfiguration = M.CognitoUserPoolConfigurationItem,
        openIdConnectConfiguration = M.OpenIdConnectConfigurationItem,
    },
}

M.ResourceConflict = {
    type = "structure",
    members = {
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resources = {
            type = "list",
            member = M.ResourceConflict,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateIdentitySourceInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Configuration }),
        principalEntityType = {
            type = "string",
        },
    },
}

M.CreateIdentitySourceOutput = {
    type = "structure",
    members = {
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        identitySourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
    },
}

M.StaticPolicyDefinition = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        statement = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TemplateLinkedPolicyDefinition = {
    type = "structure",
    members = {
        policyTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principal = M.EntityIdentifier,
        resource = M.EntityIdentifier,
    },
}

M.PolicyDefinition = {
    type = "union",
    members = {
        static = M.StaticPolicyDefinition,
        templateLinked = M.TemplateLinkedPolicyDefinition,
    },
}

M.CreatePolicyInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PolicyDefinition }),
        name = {
            type = "string",
        },
    },
}

M.PolicyEffect = {
    PERMIT = "Permit",
    FORBID = "Forbid",
}

M.CreatePolicyOutput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principal = M.EntityIdentifier,
        resource = M.EntityIdentifier,
        actions = {
            type = "list",
            member = M.ActionIdentifier,
        },
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        effect = {
            type = "string",
        },
    },
}

M.DeletionProtection = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Unit = {
    type = "structure",
}

M.KmsEncryptionSettings = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.EncryptionSettings = {
    type = "union",
    members = {
        kmsEncryptionSettings = M.KmsEncryptionSettings,
        default = M.Unit,
    },
}

M.ValidationMode = {
    OFF = "OFF",
    STRICT = "STRICT",
}

M.ValidationSettings = {
    type = "structure",
    members = {
        mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePolicyStoreInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        validationSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ValidationSettings }),
        description = {
            type = "string",
        },
        deletionProtection = {
            type = "string",
        },
        encryptionSettings = M.EncryptionSettings,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreatePolicyStoreOutput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePolicyStoreAliasInput = {
    type = "structure",
    members = {
        aliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePolicyStoreAliasOutput = {
    type = "structure",
    members = {
        aliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aliasArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePolicyTemplateInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
        },
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        statement = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
    },
}

M.CreatePolicyTemplateOutput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIdentitySourceInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identitySourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteIdentitySourceOutput = {
    type = "structure",
}

M.DeletePolicyInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyId = {
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

M.DeletePolicyStoreInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePolicyStoreOutput = {
    type = "structure",
}

M.InvalidStateException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePolicyStoreAliasInput = {
    type = "structure",
    members = {
        aliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePolicyStoreAliasOutput = {
    type = "structure",
}

M.DeletePolicyTemplateInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePolicyTemplateOutput = {
    type = "structure",
}

M.KmsEncryptionState = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        encryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.EncryptionState = {
    type = "union",
    members = {
        kmsEncryptionState = M.KmsEncryptionState,
        default = M.Unit,
    },
}

M.EntityReference = {
    type = "union",
    members = {
        unspecified = {
            type = "boolean",
        },
        identifier = M.EntityIdentifier,
    },
}

M.GetIdentitySourceInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identitySourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OpenIdIssuer = {
    COGNITO = "COGNITO",
}

M.IdentitySourceDetails = {
    type = "structure",
    members = {
        clientIds = {
            type = "list",
            member = { type = "string" },
        },
        userPoolArn = {
            type = "string",
        },
        discoveryUrl = {
            type = "string",
        },
        openIdIssuer = {
            type = "string",
        },
    },
}

M.GetIdentitySourceOutput = {
    type = "structure",
    members = {
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        details = M.IdentitySourceDetails,
        identitySourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principalEntityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = M.ConfigurationDetail,
    },
}

M.GetPolicyInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyId = {
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
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principal = M.EntityIdentifier,
        resource = M.EntityIdentifier,
        actions = {
            type = "list",
            member = M.ActionIdentifier,
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PolicyDefinitionDetail }),
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        effect = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.GetPolicyStoreInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetPolicyStoreOutput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        validationSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ValidationSettings }),
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        deletionProtection = {
            type = "string",
        },
        encryptionState = M.EncryptionState,
        cedarVersion = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetPolicyStoreAliasInput = {
    type = "structure",
    members = {
        aliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPolicyStoreAliasOutput = {
    type = "structure",
    members = {
        aliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aliasArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPolicyTemplateInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPolicyTemplateOutput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        statement = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
    },
}

M.GetSchemaInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSchemaOutput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schema = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        namespaces = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.IdentitySourceFilter = {
    type = "structure",
    members = {
        principalEntityType = {
            type = "string",
        },
    },
}

M.ListIdentitySourcesInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filters = {
            type = "list",
            member = M.IdentitySourceFilter,
        },
    },
}

M.IdentitySourceItemDetails = {
    type = "structure",
    members = {
        clientIds = {
            type = "list",
            member = { type = "string" },
        },
        userPoolArn = {
            type = "string",
        },
        discoveryUrl = {
            type = "string",
        },
        openIdIssuer = {
            type = "string",
        },
    },
}

M.IdentitySourceItem = {
    type = "structure",
    members = {
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        details = M.IdentitySourceItemDetails,
        identitySourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principalEntityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = M.ConfigurationItem,
    },
}

M.ListIdentitySourcesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        identitySources = {
            type = "list",
            member = M.IdentitySourceItem,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCognitoGroupConfiguration = {
    type = "structure",
    members = {
        groupEntityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateCognitoUserPoolConfiguration = {
    type = "structure",
    members = {
        userPoolArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientIds = {
            type = "list",
            member = { type = "string" },
        },
        groupConfiguration = M.UpdateCognitoGroupConfiguration,
    },
}

M.UpdateOpenIdConnectGroupConfiguration = {
    type = "structure",
    members = {
        groupClaim = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groupEntityType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateOpenIdConnectAccessTokenConfiguration = {
    type = "structure",
    members = {
        principalIdClaim = {
            type = "string",
            traits = {
                default = "sub",
            },
        },
        audiences = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateOpenIdConnectIdentityTokenConfiguration = {
    type = "structure",
    members = {
        principalIdClaim = {
            type = "string",
            traits = {
                default = "sub",
            },
        },
        clientIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateOpenIdConnectTokenSelection = {
    type = "union",
    members = {
        accessTokenOnly = M.UpdateOpenIdConnectAccessTokenConfiguration,
        identityTokenOnly = M.UpdateOpenIdConnectIdentityTokenConfiguration,
    },
}

M.UpdateOpenIdConnectConfiguration = {
    type = "structure",
    members = {
        issuer = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entityIdPrefix = {
            type = "string",
        },
        groupConfiguration = M.UpdateOpenIdConnectGroupConfiguration,
        tokenSelection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UpdateOpenIdConnectTokenSelection }),
    },
}

M.UpdateConfiguration = {
    type = "union",
    members = {
        cognitoUserPoolConfiguration = M.UpdateCognitoUserPoolConfiguration,
        openIdConnectConfiguration = M.UpdateOpenIdConnectConfiguration,
    },
}

M.UpdateIdentitySourceInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identitySourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updateConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UpdateConfiguration }),
        principalEntityType = {
            type = "string",
        },
    },
}

M.UpdateIdentitySourceOutput = {
    type = "structure",
    members = {
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        identitySourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IsAuthorizedOutput = {
    type = "structure",
    members = {
        decision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        determiningPolicies = {
            type = "list",
            member = M.DeterminingPolicyItem,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.EvaluationErrorItem,
            traits = {
                required = true,
            },
        },
    },
}

M.IsAuthorizedWithTokenOutput = {
    type = "structure",
    members = {
        decision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        determiningPolicies = {
            type = "list",
            member = M.DeterminingPolicyItem,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.EvaluationErrorItem,
            traits = {
                required = true,
            },
        },
        principal = M.EntityIdentifier,
    },
}

M.PolicyFilter = {
    type = "structure",
    members = {
        principal = M.EntityReference,
        resource = M.EntityReference,
        policyType = {
            type = "string",
        },
        policyTemplateId = {
            type = "string",
        },
    },
}

M.ListPoliciesInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filter = M.PolicyFilter,
    },
}

M.StaticPolicyDefinitionItem = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
    },
}

M.TemplateLinkedPolicyDefinitionItem = {
    type = "structure",
    members = {
        policyTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principal = M.EntityIdentifier,
        resource = M.EntityIdentifier,
    },
}

M.PolicyDefinitionItem = {
    type = "union",
    members = {
        static = M.StaticPolicyDefinitionItem,
        templateLinked = M.TemplateLinkedPolicyDefinitionItem,
    },
}

M.PolicyItem = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principal = M.EntityIdentifier,
        resource = M.EntityIdentifier,
        actions = {
            type = "list",
            member = M.ActionIdentifier,
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PolicyDefinitionItem }),
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        effect = {
            type = "string",
        },
        name = {
            type = "string",
        },
    },
}

M.ListPoliciesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        policies = {
            type = "list",
            member = M.PolicyItem,
            traits = {
                required = true,
            },
        },
    },
}

M.PolicyStoreAliasFilter = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
        },
    },
}

M.ListPolicyStoreAliasesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 5,
            },
        },
        filter = M.PolicyStoreAliasFilter,
    },
}

M.PolicyStoreAliasItem = {
    type = "structure",
    members = {
        aliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aliasArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListPolicyStoreAliasesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        policyStoreAliases = {
            type = "list",
            member = M.PolicyStoreAliasItem,
            traits = {
                required = true,
            },
        },
    },
}

M.ListPolicyStoresInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.PolicyStoreItem = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
    },
}

M.ListPolicyStoresOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        policyStores = {
            type = "list",
            member = M.PolicyStoreItem,
            traits = {
                required = true,
            },
        },
    },
}

M.ListPolicyTemplatesInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.PolicyTemplateItem = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
    },
}

M.ListPolicyTemplatesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        policyTemplates = {
            type = "list",
            member = M.PolicyTemplateItem,
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateStaticPolicyDefinition = {
    type = "structure",
    members = {
        description = {
            type = "string",
        },
        statement = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePolicyDefinition = {
    type = "union",
    members = {
        static = M.UpdateStaticPolicyDefinition,
    },
}

M.UpdatePolicyInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = M.UpdatePolicyDefinition,
        name = {
            type = "string",
        },
    },
}

M.UpdatePolicyOutput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principal = M.EntityIdentifier,
        resource = M.EntityIdentifier,
        actions = {
            type = "list",
            member = M.ActionIdentifier,
        },
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        effect = {
            type = "string",
        },
    },
}

M.UpdatePolicyTemplateInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        statement = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
    },
}

M.UpdatePolicyTemplateOutput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyTemplateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.SchemaDefinition = {
    type = "union",
    members = {
        cedarJson = {
            type = "string",
        },
    },
}

M.PutSchemaInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SchemaDefinition }),
    },
}

M.PutSchemaOutput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespaces = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePolicyStoreInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        validationSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ValidationSettings }),
        deletionProtection = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.UpdatePolicyStoreOutput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
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

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceName = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
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

M.AttributeValue = {
    type = "union",
    members = {
        boolean = {
            type = "boolean",
        },
        entityIdentifier = M.EntityIdentifier,
        long = {
            type = "long",
        },
        string = {
            type = "string",
        },
        set = {
            type = "list",
            member = M.AttributeValue,
        },
        record = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        ipaddr = {
            type = "string",
        },
        decimal = {
            type = "string",
        },
        datetime = {
            type = "string",
        },
        duration = {
            type = "string",
        },
    },
}

M.CedarTagValue = {
    type = "union",
    members = {
        boolean = {
            type = "boolean",
        },
        entityIdentifier = M.EntityIdentifier,
        long = {
            type = "long",
        },
        string = {
            type = "string",
        },
        set = {
            type = "list",
            member = M.CedarTagValue,
        },
        record = {
            type = "map",
            key = { type = "string" },
            value = M.CedarTagValue,
        },
        ipaddr = {
            type = "string",
        },
        decimal = {
            type = "string",
        },
        datetime = {
            type = "string",
        },
        duration = {
            type = "string",
        },
    },
}

M.ContextDefinition = {
    type = "union",
    members = {
        contextMap = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        cedarJson = {
            type = "string",
        },
    },
}

M.BatchIsAuthorizedInputItem = {
    type = "structure",
    members = {
        principal = M.EntityIdentifier,
        action = M.ActionIdentifier,
        resource = M.EntityIdentifier,
        context = M.ContextDefinition,
    },
}

M.BatchIsAuthorizedWithTokenInputItem = {
    type = "structure",
    members = {
        action = M.ActionIdentifier,
        resource = M.EntityIdentifier,
        context = M.ContextDefinition,
    },
}

M.BatchIsAuthorizedOutputItem = {
    type = "structure",
    members = {
        request = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BatchIsAuthorizedInputItem }),
        decision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        determiningPolicies = {
            type = "list",
            member = M.DeterminingPolicyItem,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.EvaluationErrorItem,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchIsAuthorizedWithTokenOutputItem = {
    type = "structure",
    members = {
        request = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BatchIsAuthorizedWithTokenInputItem }),
        decision = {
            type = "string",
            traits = {
                required = true,
            },
        },
        determiningPolicies = {
            type = "list",
            member = M.DeterminingPolicyItem,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.EvaluationErrorItem,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchIsAuthorizedOutput = {
    type = "structure",
    members = {
        results = {
            type = "list",
            member = M.BatchIsAuthorizedOutputItem,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchIsAuthorizedWithTokenOutput = {
    type = "structure",
    members = {
        principal = M.EntityIdentifier,
        results = {
            type = "list",
            member = M.BatchIsAuthorizedWithTokenOutputItem,
            traits = {
                required = true,
            },
        },
    },
}

M.EntityItem = {
    type = "structure",
    members = {
        identifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EntityIdentifier }),
        attributes = {
            type = "map",
            key = { type = "string" },
            value = M.AttributeValue,
        },
        parents = {
            type = "list",
            member = M.EntityIdentifier,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = M.CedarTagValue,
        },
    },
}

M.EntitiesDefinition = {
    type = "union",
    members = {
        entityList = {
            type = "list",
            member = M.EntityItem,
        },
        cedarJson = {
            type = "string",
        },
    },
}

M.IsAuthorizedInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principal = M.EntityIdentifier,
        action = M.ActionIdentifier,
        resource = M.EntityIdentifier,
        context = M.ContextDefinition,
        entities = M.EntitiesDefinition,
    },
}

M.IsAuthorizedWithTokenInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityToken = {
            type = "string",
        },
        accessToken = {
            type = "string",
        },
        action = M.ActionIdentifier,
        resource = M.EntityIdentifier,
        context = M.ContextDefinition,
        entities = M.EntitiesDefinition,
    },
}

M.BatchIsAuthorizedInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entities = M.EntitiesDefinition,
        requests = {
            type = "list",
            member = M.BatchIsAuthorizedInputItem,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchIsAuthorizedWithTokenInput = {
    type = "structure",
    members = {
        policyStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityToken = {
            type = "string",
        },
        accessToken = {
            type = "string",
        },
        entities = M.EntitiesDefinition,
        requests = {
            type = "list",
            member = M.BatchIsAuthorizedWithTokenInputItem,
            traits = {
                required = true,
            },
        },
    },
}

return M
