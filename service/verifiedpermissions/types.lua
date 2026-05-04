local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "ActionIdentifier",
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
    id = "EntityIdentifier",
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
    id = "BatchGetPolicyInputItem",
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
    id = "BatchGetPolicyInput",
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
    id = "BatchGetPolicyErrorItem",
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
    id = "StaticPolicyDefinitionDetail",
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
    id = "TemplateLinkedPolicyDefinitionDetail",
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
    id = "PolicyDefinitionDetail",
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
    id = "BatchGetPolicyOutputItem",
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
                timestamp_format = "date-time",
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        name = {
            type = "string",
        },
    },
}

M.BatchGetPolicyOutput = {
    type = "structure",
    id = "BatchGetPolicyOutput",
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
    id = "InternalServerException",
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
    id = "ThrottlingException",
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
    id = "ValidationExceptionField",
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
    id = "ValidationException",
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
    id = "DeterminingPolicyItem",
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
    id = "EvaluationErrorItem",
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
    id = "ResourceNotFoundException",
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
    id = "CognitoGroupConfiguration",
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
    id = "CognitoGroupConfigurationDetail",
    members = {
        groupEntityType = {
            type = "string",
        },
    },
}

M.CognitoGroupConfigurationItem = {
    type = "structure",
    id = "CognitoGroupConfigurationItem",
    members = {
        groupEntityType = {
            type = "string",
        },
    },
}

M.CognitoUserPoolConfiguration = {
    type = "structure",
    id = "CognitoUserPoolConfiguration",
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
    id = "CognitoUserPoolConfigurationDetail",
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
    id = "CognitoUserPoolConfigurationItem",
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
    id = "OpenIdConnectGroupConfiguration",
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
    id = "OpenIdConnectAccessTokenConfiguration",
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
    id = "OpenIdConnectIdentityTokenConfiguration",
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
    id = "OpenIdConnectTokenSelection",
    members = {
        accessTokenOnly = M.OpenIdConnectAccessTokenConfiguration,
        identityTokenOnly = M.OpenIdConnectIdentityTokenConfiguration,
    },
}

M.OpenIdConnectConfiguration = {
    type = "structure",
    id = "OpenIdConnectConfiguration",
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
    id = "Configuration",
    members = {
        cognitoUserPoolConfiguration = M.CognitoUserPoolConfiguration,
        openIdConnectConfiguration = M.OpenIdConnectConfiguration,
    },
}

M.OpenIdConnectGroupConfigurationDetail = {
    type = "structure",
    id = "OpenIdConnectGroupConfigurationDetail",
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
    id = "OpenIdConnectAccessTokenConfigurationDetail",
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
    id = "OpenIdConnectIdentityTokenConfigurationDetail",
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
    id = "OpenIdConnectTokenSelectionDetail",
    members = {
        accessTokenOnly = M.OpenIdConnectAccessTokenConfigurationDetail,
        identityTokenOnly = M.OpenIdConnectIdentityTokenConfigurationDetail,
    },
}

M.OpenIdConnectConfigurationDetail = {
    type = "structure",
    id = "OpenIdConnectConfigurationDetail",
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
    id = "ConfigurationDetail",
    members = {
        cognitoUserPoolConfiguration = M.CognitoUserPoolConfigurationDetail,
        openIdConnectConfiguration = M.OpenIdConnectConfigurationDetail,
    },
}

M.OpenIdConnectGroupConfigurationItem = {
    type = "structure",
    id = "OpenIdConnectGroupConfigurationItem",
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
    id = "OpenIdConnectAccessTokenConfigurationItem",
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
    id = "OpenIdConnectIdentityTokenConfigurationItem",
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
    id = "OpenIdConnectTokenSelectionItem",
    members = {
        accessTokenOnly = M.OpenIdConnectAccessTokenConfigurationItem,
        identityTokenOnly = M.OpenIdConnectIdentityTokenConfigurationItem,
    },
}

M.OpenIdConnectConfigurationItem = {
    type = "structure",
    id = "OpenIdConnectConfigurationItem",
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
    id = "ConfigurationItem",
    members = {
        cognitoUserPoolConfiguration = M.CognitoUserPoolConfigurationItem,
        openIdConnectConfiguration = M.OpenIdConnectConfigurationItem,
    },
}

M.ResourceConflict = {
    type = "structure",
    id = "ResourceConflict",
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
    id = "ConflictException",
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
    id = "CreateIdentitySourceInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
    id = "CreateIdentitySourceOutput",
    members = {
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
                timestamp_format = "date-time",
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
    id = "ServiceQuotaExceededException",
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
    id = "StaticPolicyDefinition",
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
    id = "TemplateLinkedPolicyDefinition",
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
    id = "PolicyDefinition",
    members = {
        static = M.StaticPolicyDefinition,
        templateLinked = M.TemplateLinkedPolicyDefinition,
    },
}

M.CreatePolicyInput = {
    type = "structure",
    id = "CreatePolicyInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
    id = "CreatePolicyOutput",
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
                timestamp_format = "date-time",
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
    id = "Unit",
}

M.KmsEncryptionSettings = {
    type = "structure",
    id = "KmsEncryptionSettings",
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
    id = "EncryptionSettings",
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
    id = "ValidationSettings",
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
    id = "CreatePolicyStoreInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
    id = "CreatePolicyStoreOutput",
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
                timestamp_format = "date-time",
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreatePolicyStoreAliasInput = {
    type = "structure",
    id = "CreatePolicyStoreAliasInput",
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
    id = "CreatePolicyStoreAliasOutput",
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
                timestamp_format = "date-time",
            },
        },
    },
}

M.CreatePolicyTemplateInput = {
    type = "structure",
    id = "CreatePolicyTemplateInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
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
    id = "CreatePolicyTemplateOutput",
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
                timestamp_format = "date-time",
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteIdentitySourceInput = {
    type = "structure",
    id = "DeleteIdentitySourceInput",
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
    id = "DeleteIdentitySourceOutput",
}

M.DeletePolicyInput = {
    type = "structure",
    id = "DeletePolicyInput",
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
    id = "DeletePolicyOutput",
}

M.DeletePolicyStoreInput = {
    type = "structure",
    id = "DeletePolicyStoreInput",
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
    id = "DeletePolicyStoreOutput",
}

M.InvalidStateException = {
    type = "structure",
    id = "InvalidStateException",
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
    id = "DeletePolicyStoreAliasInput",
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
    id = "DeletePolicyStoreAliasOutput",
}

M.DeletePolicyTemplateInput = {
    type = "structure",
    id = "DeletePolicyTemplateInput",
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
    id = "DeletePolicyTemplateOutput",
}

M.KmsEncryptionState = {
    type = "structure",
    id = "KmsEncryptionState",
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
    id = "EncryptionState",
    members = {
        kmsEncryptionState = M.KmsEncryptionState,
        default = M.Unit,
    },
}

M.EntityReference = {
    type = "union",
    id = "EntityReference",
    members = {
        unspecified = {
            type = "boolean",
        },
        identifier = M.EntityIdentifier,
    },
}

M.GetIdentitySourceInput = {
    type = "structure",
    id = "GetIdentitySourceInput",
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
    id = "IdentitySourceDetails",
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
    id = "GetIdentitySourceOutput",
    members = {
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
                timestamp_format = "date-time",
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
    id = "GetPolicyInput",
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
    id = "GetPolicyOutput",
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
                timestamp_format = "date-time",
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
    id = "GetPolicyStoreInput",
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
    id = "GetPolicyStoreOutput",
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
                timestamp_format = "date-time",
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
    id = "GetPolicyStoreAliasInput",
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
    id = "GetPolicyStoreAliasOutput",
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
                timestamp_format = "date-time",
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
    id = "GetPolicyTemplateInput",
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
    id = "GetPolicyTemplateOutput",
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
                timestamp_format = "date-time",
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        name = {
            type = "string",
        },
    },
}

M.GetSchemaInput = {
    type = "structure",
    id = "GetSchemaInput",
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
    id = "GetSchemaOutput",
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
                timestamp_format = "date-time",
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
    id = "IdentitySourceFilter",
    members = {
        principalEntityType = {
            type = "string",
        },
    },
}

M.ListIdentitySourcesInput = {
    type = "structure",
    id = "ListIdentitySourcesInput",
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
    id = "IdentitySourceItemDetails",
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
    id = "IdentitySourceItem",
    members = {
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
                timestamp_format = "date-time",
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
    id = "ListIdentitySourcesOutput",
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
    id = "UpdateCognitoGroupConfiguration",
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
    id = "UpdateCognitoUserPoolConfiguration",
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
    id = "UpdateOpenIdConnectGroupConfiguration",
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
    id = "UpdateOpenIdConnectAccessTokenConfiguration",
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
    id = "UpdateOpenIdConnectIdentityTokenConfiguration",
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
    id = "UpdateOpenIdConnectTokenSelection",
    members = {
        accessTokenOnly = M.UpdateOpenIdConnectAccessTokenConfiguration,
        identityTokenOnly = M.UpdateOpenIdConnectIdentityTokenConfiguration,
    },
}

M.UpdateOpenIdConnectConfiguration = {
    type = "structure",
    id = "UpdateOpenIdConnectConfiguration",
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
    id = "UpdateConfiguration",
    members = {
        cognitoUserPoolConfiguration = M.UpdateCognitoUserPoolConfiguration,
        openIdConnectConfiguration = M.UpdateOpenIdConnectConfiguration,
    },
}

M.UpdateIdentitySourceInput = {
    type = "structure",
    id = "UpdateIdentitySourceInput",
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
    id = "UpdateIdentitySourceOutput",
    members = {
        createdDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
                timestamp_format = "date-time",
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
    id = "IsAuthorizedOutput",
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
    id = "IsAuthorizedWithTokenOutput",
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
    id = "PolicyFilter",
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
    id = "ListPoliciesInput",
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
    id = "StaticPolicyDefinitionItem",
    members = {
        description = {
            type = "string",
        },
    },
}

M.TemplateLinkedPolicyDefinitionItem = {
    type = "structure",
    id = "TemplateLinkedPolicyDefinitionItem",
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
    id = "PolicyDefinitionItem",
    members = {
        static = M.StaticPolicyDefinitionItem,
        templateLinked = M.TemplateLinkedPolicyDefinitionItem,
    },
}

M.PolicyItem = {
    type = "structure",
    id = "PolicyItem",
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
                timestamp_format = "date-time",
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
    id = "ListPoliciesOutput",
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
    id = "PolicyStoreAliasFilter",
    members = {
        policyStoreId = {
            type = "string",
        },
    },
}

M.ListPolicyStoreAliasesInput = {
    type = "structure",
    id = "ListPolicyStoreAliasesInput",
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
    id = "PolicyStoreAliasItem",
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
                timestamp_format = "date-time",
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
    id = "ListPolicyStoreAliasesOutput",
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
    id = "ListPolicyStoresInput",
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
    id = "PolicyStoreItem",
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
                timestamp_format = "date-time",
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
        },
    },
}

M.ListPolicyStoresOutput = {
    type = "structure",
    id = "ListPolicyStoresOutput",
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
    id = "ListPolicyTemplatesInput",
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
    id = "PolicyTemplateItem",
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
                timestamp_format = "date-time",
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        name = {
            type = "string",
        },
    },
}

M.ListPolicyTemplatesOutput = {
    type = "structure",
    id = "ListPolicyTemplatesOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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
    id = "UpdateStaticPolicyDefinition",
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
    id = "UpdatePolicyDefinition",
    members = {
        static = M.UpdateStaticPolicyDefinition,
    },
}

M.UpdatePolicyInput = {
    type = "structure",
    id = "UpdatePolicyInput",
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
    id = "UpdatePolicyOutput",
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
                timestamp_format = "date-time",
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        effect = {
            type = "string",
        },
    },
}

M.UpdatePolicyTemplateInput = {
    type = "structure",
    id = "UpdatePolicyTemplateInput",
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
    id = "UpdatePolicyTemplateOutput",
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
                timestamp_format = "date-time",
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.SchemaDefinition = {
    type = "union",
    id = "SchemaDefinition",
    members = {
        cedarJson = {
            type = "string",
        },
    },
}

M.PutSchemaInput = {
    type = "structure",
    id = "PutSchemaInput",
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
    id = "PutSchemaOutput",
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
                timestamp_format = "date-time",
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.UpdatePolicyStoreInput = {
    type = "structure",
    id = "UpdatePolicyStoreInput",
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
    id = "UpdatePolicyStoreOutput",
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
                timestamp_format = "date-time",
            },
        },
        lastUpdatedDate = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
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
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.AttributeValue = {
    type = "union",
    id = "AttributeValue",
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
    id = "CedarTagValue",
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
    id = "ContextDefinition",
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
    id = "BatchIsAuthorizedInputItem",
    members = {
        principal = M.EntityIdentifier,
        action = M.ActionIdentifier,
        resource = M.EntityIdentifier,
        context = M.ContextDefinition,
    },
}

M.BatchIsAuthorizedWithTokenInputItem = {
    type = "structure",
    id = "BatchIsAuthorizedWithTokenInputItem",
    members = {
        action = M.ActionIdentifier,
        resource = M.EntityIdentifier,
        context = M.ContextDefinition,
    },
}

M.BatchIsAuthorizedOutputItem = {
    type = "structure",
    id = "BatchIsAuthorizedOutputItem",
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
    id = "BatchIsAuthorizedWithTokenOutputItem",
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
    id = "BatchIsAuthorizedOutput",
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
    id = "BatchIsAuthorizedWithTokenOutput",
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
    id = "EntityItem",
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
    id = "EntitiesDefinition",
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
    id = "IsAuthorizedInput",
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
    id = "IsAuthorizedWithTokenInput",
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
    id = "BatchIsAuthorizedInput",
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
    id = "BatchIsAuthorizedWithTokenInput",
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
