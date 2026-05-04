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

M.AccountAccessType = {
    CURRENT_ACCOUNT = "CURRENT_ACCOUNT",
    ORGANIZATION = "ORGANIZATION",
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
            type = "number",
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
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
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
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.DeleteWorkspaceApiKeyInput = {
    type = "structure",
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
    members = {
        providers = {
            type = "list",
            member_type = "string",
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
    members = {
        prefixListIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        vpceIds = {
            type = "list",
            member_type = "string",
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
    members = {
        securityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkspaceDescription = {
    type = "structure",
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
            member_type = "string",
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
            member_type = "string",
        },
        organizationalUnits = {
            type = "list",
            member_type = "string",
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
        authentication = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        vpcConfiguration = {
            type = "structure",
        },
        networkAccessControl = {
            type = "structure",
        },
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
    members = {
        workspace = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWorkspaceAuthenticationInput = {
    type = "structure",
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
    members = {
        ssoClientId = {
            type = "string",
        },
    },
}

M.IdpMetadata = {
    type = "union",
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
    members = {
        editor = {
            type = "list",
            member_type = "string",
        },
        admin = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SamlConfiguration = {
    type = "structure",
    members = {
        idpMetadata = {
            type = "union",
            traits = {
                required = true,
            },
        },
        assertionAttributes = {
            type = "structure",
        },
        roleValues = {
            type = "structure",
        },
        allowedOrganizations = {
            type = "list",
            member_type = "string",
        },
        loginValidityDuration = {
            type = "number",
        },
    },
}

M.SamlAuthentication = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "structure",
        },
    },
}

M.AuthenticationDescription = {
    type = "structure",
    members = {
        providers = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        saml = {
            type = "structure",
        },
        awsSso = {
            type = "structure",
        },
    },
}

M.DescribeWorkspaceAuthenticationOutput = {
    type = "structure",
    members = {
        authentication = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateWorkspaceAuthenticationInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        samlConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateWorkspaceAuthenticationOutput = {
    type = "structure",
    members = {
        authentication = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWorkspaceConfigurationInput = {
    type = "structure",
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
    members = {
        configuration = {
            type = "string",
            traits = {
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
    members = {
        configuration = {
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
        grafanaVersion = {
            type = "string",
        },
    },
}

M.UpdateWorkspaceConfigurationOutput = {
    type = "structure",
}

M.DisassociateLicenseInput = {
    type = "structure",
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
    members = {
        workspace = {
            type = "structure",
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
                http_label = true,
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListVersionsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
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
    members = {
        nextToken = {
            type = "string",
        },
        grafanaVersions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UserType = {
    SSO_USER = "SSO_USER",
    SSO_GROUP = "SSO_GROUP",
}

M.ListPermissionsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
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
    members = {
        user = {
            type = "structure",
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
    },
}

M.ListPermissionsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        permissions = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePermissionsInput = {
    type = "structure",
    members = {
        updateInstructionBatch = {
            type = "list",
            member_type = "structure",
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
    members = {
        code = {
            type = "number",
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
        causedBy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePermissionsOutput = {
    type = "structure",
    members = {
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateWorkspaceServiceAccountInput = {
    type = "structure",
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
    members = {
        maxResults = {
            type = "number",
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
    members = {
        nextToken = {
            type = "string",
        },
        serviceAccounts = {
            type = "list",
            member_type = "structure",
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
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secondsToLive = {
            type = "number",
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
    members = {
        serviceAccountToken = {
            type = "structure",
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

M.DeleteWorkspaceServiceAccountTokenInput = {
    type = "structure",
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
    members = {
        maxResults = {
            type = "number",
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
    members = {
        nextToken = {
            type = "string",
        },
        serviceAccountTokens = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.CreateWorkspaceInput = {
    type = "structure",
    members = {
        accountAccessType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
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
            member_type = "string",
        },
        workspaceDescription = {
            type = "string",
        },
        workspaceName = {
            type = "string",
        },
        workspaceNotificationDestinations = {
            type = "list",
            member_type = "string",
        },
        workspaceOrganizationalUnits = {
            type = "list",
            member_type = "string",
        },
        workspaceRoleArn = {
            type = "string",
        },
        authenticationProviders = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        vpcConfiguration = {
            type = "structure",
        },
        configuration = {
            type = "string",
        },
        networkAccessControl = {
            type = "structure",
        },
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
    members = {
        workspace = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWorkspaceInput = {
    type = "structure",
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
    members = {
        workspace = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWorkspaceInput = {
    type = "structure",
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
    members = {
        workspace = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWorkspacesInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
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
            member_type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authentication = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
    members = {
        workspaces = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
        },
        workspaceOrganizationalUnits = {
            type = "list",
            member_type = "string",
        },
        workspaceRoleArn = {
            type = "string",
        },
        vpcConfiguration = {
            type = "structure",
        },
        removeVpcConfiguration = {
            type = "boolean",
        },
        networkAccessControl = {
            type = "structure",
        },
        removeNetworkAccessConfiguration = {
            type = "boolean",
        },
    },
}

M.UpdateWorkspaceOutput = {
    type = "structure",
    members = {
        workspace = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

return M
