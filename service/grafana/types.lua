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

M.AccountAccessType = {
    CURRENT_ACCOUNT = "CURRENT_ACCOUNT",
    ORGANIZATION = "ORGANIZATION",
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

M.CreateWorkspaceApiKeyInput = {
    type = "structure",
    id = "CreateWorkspaceApiKeyInput",
    members = {
        keyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secondsToLive = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateWorkspaceApiKeyOutput = {
    type = "structure",
    id = "CreateWorkspaceApiKeyOutput",
    members = {
        keyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workspaceId = {
            type = "string",
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
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
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
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
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
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        name = {
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

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    CANNOT_PARSE = "CANNOT_PARSE",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    OTHER = "OTHER",
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
        reason = {
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

M.DeleteWorkspaceApiKeyInput = {
    type = "structure",
    id = "DeleteWorkspaceApiKeyInput",
    members = {
        keyName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWorkspaceApiKeyOutput = {
    type = "structure",
    id = "DeleteWorkspaceApiKeyOutput",
    members = {
        keyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssertionAttributes = {
    type = "structure",
    id = "AssertionAttributes",
    members = {
        name = {
            type = "string",
        },
        login = {
            type = "string",
        },
        email = {
            type = "string",
        },
        groups = {
            type = "string",
        },
        role = {
            type = "string",
        },
        org = {
            type = "string",
        },
    },
}

M.LicenseType = {
    ENTERPRISE = "ENTERPRISE",
    ENTERPRISE_FREE_TRIAL = "ENTERPRISE_FREE_TRIAL",
}

M.AssociateLicenseInput = {
    type = "structure",
    id = "AssociateLicenseInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        licenseType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        grafanaToken = {
            type = "string",
            traits = {
                http_header = "Grafana-Token",
            },
        },
    },
}

M.AuthenticationProviderTypes = {
    AWS_SSO = "AWS_SSO",
    SAML = "SAML",
}

M.SamlConfigurationStatus = {
    CONFIGURED = "CONFIGURED",
    NOT_CONFIGURED = "NOT_CONFIGURED",
}

M.AuthenticationSummary = {
    type = "structure",
    id = "AuthenticationSummary",
    members = {
        providers = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        samlConfigurationStatus = {
            type = "string",
        },
    },
}

M.DataSourceType = {
    AMAZON_OPENSEARCH_SERVICE = "AMAZON_OPENSEARCH_SERVICE",
    CLOUDWATCH = "CLOUDWATCH",
    PROMETHEUS = "PROMETHEUS",
    XRAY = "XRAY",
    TIMESTREAM = "TIMESTREAM",
    SITEWISE = "SITEWISE",
    ATHENA = "ATHENA",
    REDSHIFT = "REDSHIFT",
    TWINMAKER = "TWINMAKER",
}

M.NetworkAccessConfiguration = {
    type = "structure",
    id = "NetworkAccessConfiguration",
    members = {
        prefixListIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        vpceIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.NotificationDestinationType = {
    SNS = "SNS",
}

M.PermissionType = {
    CUSTOMER_MANAGED = "CUSTOMER_MANAGED",
    SERVICE_MANAGED = "SERVICE_MANAGED",
}

M.WorkspaceStatus = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    DELETING = "DELETING",
    FAILED = "FAILED",
    UPDATING = "UPDATING",
    UPGRADING = "UPGRADING",
    DELETION_FAILED = "DELETION_FAILED",
    CREATION_FAILED = "CREATION_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    UPGRADE_FAILED = "UPGRADE_FAILED",
    LICENSE_REMOVAL_FAILED = "LICENSE_REMOVAL_FAILED",
    VERSION_UPDATING = "VERSION_UPDATING",
    VERSION_UPDATE_FAILED = "VERSION_UPDATE_FAILED",
}

M.VpcConfiguration = {
    type = "structure",
    id = "VpcConfiguration",
    members = {
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.WorkspaceDescription = {
    type = "structure",
    id = "WorkspaceDescription",
    members = {
        accountAccessType = {
            type = "string",
        },
        created = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        dataSources = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        grafanaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modified = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        organizationRoleName = {
            type = "string",
        },
        notificationDestinations = {
            type = "list",
            member = { type = "string" },
        },
        organizationalUnits = {
            type = "list",
            member = { type = "string" },
        },
        permissionType = {
            type = "string",
        },
        stackSetName = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workspaceRoleArn = {
            type = "string",
        },
        licenseType = {
            type = "string",
        },
        freeTrialConsumed = {
            type = "boolean",
        },
        licenseExpiration = {
            type = "timestamp",
        },
        freeTrialExpiration = {
            type = "timestamp",
        },
        authentication = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AuthenticationSummary }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        vpcConfiguration = M.VpcConfiguration,
        networkAccessControl = M.NetworkAccessConfiguration,
        grafanaToken = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
    },
}

M.AssociateLicenseOutput = {
    type = "structure",
    id = "AssociateLicenseOutput",
    members = {
        workspace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkspaceDescription }),
    },
}

M.DescribeWorkspaceAuthenticationInput = {
    type = "structure",
    id = "DescribeWorkspaceAuthenticationInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AwsSsoAuthentication = {
    type = "structure",
    id = "AwsSsoAuthentication",
    members = {
        ssoClientId = {
            type = "string",
        },
    },
}

M.IdpMetadata = {
    type = "union",
    id = "IdpMetadata",
    members = {
        url = {
            type = "string",
        },
        xml = {
            type = "string",
        },
    },
}

M.RoleValues = {
    type = "structure",
    id = "RoleValues",
    members = {
        editor = {
            type = "list",
            member = { type = "string" },
        },
        admin = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SamlConfiguration = {
    type = "structure",
    id = "SamlConfiguration",
    members = {
        idpMetadata = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdpMetadata }),
        assertionAttributes = M.AssertionAttributes,
        roleValues = M.RoleValues,
        allowedOrganizations = {
            type = "list",
            member = { type = "string" },
        },
        loginValidityDuration = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.SamlAuthentication = {
    type = "structure",
    id = "SamlAuthentication",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = M.SamlConfiguration,
    },
}

M.AuthenticationDescription = {
    type = "structure",
    id = "AuthenticationDescription",
    members = {
        providers = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        saml = M.SamlAuthentication,
        awsSso = M.AwsSsoAuthentication,
    },
}

M.DescribeWorkspaceAuthenticationOutput = {
    type = "structure",
    id = "DescribeWorkspaceAuthenticationOutput",
    members = {
        authentication = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AuthenticationDescription }),
    },
}

M.UpdateWorkspaceAuthenticationInput = {
    type = "structure",
    id = "UpdateWorkspaceAuthenticationInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        authenticationProviders = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        samlConfiguration = M.SamlConfiguration,
    },
}

M.UpdateWorkspaceAuthenticationOutput = {
    type = "structure",
    id = "UpdateWorkspaceAuthenticationOutput",
    members = {
        authentication = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AuthenticationDescription }),
    },
}

M.DescribeWorkspaceConfigurationInput = {
    type = "structure",
    id = "DescribeWorkspaceConfigurationInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeWorkspaceConfigurationOutput = {
    type = "structure",
    id = "DescribeWorkspaceConfigurationOutput",
    members = {
        configuration = {
            type = "string",
            traits = {
                media_type = "application/json",
                required = true,
            },
        },
        grafanaVersion = {
            type = "string",
        },
    },
}

M.UpdateWorkspaceConfigurationInput = {
    type = "structure",
    id = "UpdateWorkspaceConfigurationInput",
    members = {
        configuration = {
            type = "string",
            traits = {
                media_type = "application/json",
                required = true,
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        grafanaVersion = {
            type = "string",
        },
    },
}

M.UpdateWorkspaceConfigurationOutput = {
    type = "structure",
    id = "UpdateWorkspaceConfigurationOutput",
}

M.DisassociateLicenseInput = {
    type = "structure",
    id = "DisassociateLicenseInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        licenseType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateLicenseOutput = {
    type = "structure",
    id = "DisassociateLicenseOutput",
    members = {
        workspace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkspaceDescription }),
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
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

M.ListVersionsInput = {
    type = "structure",
    id = "ListVersionsInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                http_query = "workspace-id",
            },
        },
    },
}

M.ListVersionsOutput = {
    type = "structure",
    id = "ListVersionsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        grafanaVersions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UserType = {
    SSO_USER = "SSO_USER",
    SSO_GROUP = "SSO_GROUP",
}

M.ListPermissionsInput = {
    type = "structure",
    id = "ListPermissionsInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        userType = {
            type = "string",
            traits = {
                http_query = "userType",
            },
        },
        userId = {
            type = "string",
            traits = {
                http_query = "userId",
            },
        },
        groupId = {
            type = "string",
            traits = {
                http_query = "groupId",
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Role = {
    ADMIN = "ADMIN",
    EDITOR = "EDITOR",
    VIEWER = "VIEWER",
}

M.User = {
    type = "structure",
    id = "User",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PermissionEntry = {
    type = "structure",
    id = "PermissionEntry",
    members = {
        user = setmetatable({ traits = {
            required = true,
        } }, { __index = M.User }),
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListPermissionsOutput = {
    type = "structure",
    id = "ListPermissionsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        permissions = {
            type = "list",
            member = M.PermissionEntry,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAction = {
    ADD = "ADD",
    REVOKE = "REVOKE",
}

M.UpdateInstruction = {
    type = "structure",
    id = "UpdateInstruction",
    members = {
        action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        users = {
            type = "list",
            member = M.User,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePermissionsInput = {
    type = "structure",
    id = "UpdatePermissionsInput",
    members = {
        updateInstructionBatch = {
            type = "list",
            member = M.UpdateInstruction,
            traits = {
                required = true,
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateError = {
    type = "structure",
    id = "UpdateError",
    members = {
        code = {
            type = "integer",
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
        causedBy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UpdateInstruction }),
    },
}

M.UpdatePermissionsOutput = {
    type = "structure",
    id = "UpdatePermissionsOutput",
    members = {
        errors = {
            type = "list",
            member = M.UpdateError,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateWorkspaceServiceAccountInput = {
    type = "structure",
    id = "CreateWorkspaceServiceAccountInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        grafanaRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateWorkspaceServiceAccountOutput = {
    type = "structure",
    id = "CreateWorkspaceServiceAccountOutput",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        grafanaRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWorkspaceServiceAccountInput = {
    type = "structure",
    id = "DeleteWorkspaceServiceAccountInput",
    members = {
        serviceAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWorkspaceServiceAccountOutput = {
    type = "structure",
    id = "DeleteWorkspaceServiceAccountOutput",
    members = {
        serviceAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWorkspaceServiceAccountsInput = {
    type = "structure",
    id = "ListWorkspaceServiceAccountsInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ServiceAccountSummary = {
    type = "structure",
    id = "ServiceAccountSummary",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        isDisabled = {
            type = "string",
            traits = {
                required = true,
            },
        },
        grafanaRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWorkspaceServiceAccountsOutput = {
    type = "structure",
    id = "ListWorkspaceServiceAccountsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        serviceAccounts = {
            type = "list",
            member = M.ServiceAccountSummary,
            traits = {
                required = true,
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateWorkspaceServiceAccountTokenInput = {
    type = "structure",
    id = "CreateWorkspaceServiceAccountTokenInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secondsToLive = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        serviceAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ServiceAccountTokenSummaryWithKey = {
    type = "structure",
    id = "ServiceAccountTokenSummaryWithKey",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateWorkspaceServiceAccountTokenOutput = {
    type = "structure",
    id = "CreateWorkspaceServiceAccountTokenOutput",
    members = {
        serviceAccountToken = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceAccountTokenSummaryWithKey }),
        serviceAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWorkspaceServiceAccountTokenInput = {
    type = "structure",
    id = "DeleteWorkspaceServiceAccountTokenInput",
    members = {
        tokenId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        serviceAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWorkspaceServiceAccountTokenOutput = {
    type = "structure",
    id = "DeleteWorkspaceServiceAccountTokenOutput",
    members = {
        tokenId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWorkspaceServiceAccountTokensInput = {
    type = "structure",
    id = "ListWorkspaceServiceAccountTokensInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        serviceAccountId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ServiceAccountTokenSummary = {
    type = "structure",
    id = "ServiceAccountTokenSummary",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
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
        expiresAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUsedAt = {
            type = "timestamp",
        },
    },
}

M.ListWorkspaceServiceAccountTokensOutput = {
    type = "structure",
    id = "ListWorkspaceServiceAccountTokensOutput",
    members = {
        nextToken = {
            type = "string",
        },
        serviceAccountTokens = {
            type = "list",
            member = M.ServiceAccountTokenSummary,
            traits = {
                required = true,
            },
        },
        serviceAccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workspaceId = {
            type = "string",
            traits = {
                required = true,
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
                http_label = true,
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

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.CreateWorkspaceInput = {
    type = "structure",
    id = "CreateWorkspaceInput",
    members = {
        accountAccessType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        organizationRoleName = {
            type = "string",
        },
        permissionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stackSetName = {
            type = "string",
        },
        workspaceDataSources = {
            type = "list",
            member = { type = "string" },
        },
        workspaceDescription = {
            type = "string",
        },
        workspaceName = {
            type = "string",
        },
        workspaceNotificationDestinations = {
            type = "list",
            member = { type = "string" },
        },
        workspaceOrganizationalUnits = {
            type = "list",
            member = { type = "string" },
        },
        workspaceRoleArn = {
            type = "string",
        },
        authenticationProviders = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        vpcConfiguration = M.VpcConfiguration,
        configuration = {
            type = "string",
            traits = {
                media_type = "application/json",
            },
        },
        networkAccessControl = M.NetworkAccessConfiguration,
        grafanaVersion = {
            type = "string",
        },
        kmsKeyId = {
            type = "string",
        },
    },
}

M.CreateWorkspaceOutput = {
    type = "structure",
    id = "CreateWorkspaceOutput",
    members = {
        workspace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkspaceDescription }),
    },
}

M.DeleteWorkspaceInput = {
    type = "structure",
    id = "DeleteWorkspaceInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWorkspaceOutput = {
    type = "structure",
    id = "DeleteWorkspaceOutput",
    members = {
        workspace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkspaceDescription }),
    },
}

M.DescribeWorkspaceInput = {
    type = "structure",
    id = "DescribeWorkspaceInput",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeWorkspaceOutput = {
    type = "structure",
    id = "DescribeWorkspaceOutput",
    members = {
        workspace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkspaceDescription }),
    },
}

M.ListWorkspacesInput = {
    type = "structure",
    id = "ListWorkspacesInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.WorkspaceSummary = {
    type = "structure",
    id = "WorkspaceSummary",
    members = {
        created = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        grafanaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modified = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        notificationDestinations = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authentication = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AuthenticationSummary }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        licenseType = {
            type = "string",
        },
        grafanaToken = {
            type = "string",
        },
    },
}

M.ListWorkspacesOutput = {
    type = "structure",
    id = "ListWorkspacesOutput",
    members = {
        workspaces = {
            type = "list",
            member = M.WorkspaceSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateWorkspaceInput = {
    type = "structure",
    id = "UpdateWorkspaceInput",
    members = {
        accountAccessType = {
            type = "string",
        },
        organizationRoleName = {
            type = "string",
        },
        permissionType = {
            type = "string",
        },
        stackSetName = {
            type = "string",
        },
        workspaceDataSources = {
            type = "list",
            member = { type = "string" },
        },
        workspaceDescription = {
            type = "string",
        },
        workspaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workspaceName = {
            type = "string",
        },
        workspaceNotificationDestinations = {
            type = "list",
            member = { type = "string" },
        },
        workspaceOrganizationalUnits = {
            type = "list",
            member = { type = "string" },
        },
        workspaceRoleArn = {
            type = "string",
        },
        vpcConfiguration = M.VpcConfiguration,
        removeVpcConfiguration = {
            type = "boolean",
        },
        networkAccessControl = M.NetworkAccessConfiguration,
        removeNetworkAccessConfiguration = {
            type = "boolean",
        },
    },
}

M.UpdateWorkspaceOutput = {
    type = "structure",
    id = "UpdateWorkspaceOutput",
    members = {
        workspace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkspaceDescription }),
    },
}

return M
