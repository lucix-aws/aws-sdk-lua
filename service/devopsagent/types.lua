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

M.RegisteredAzureDevOpsServiceDetails = {
    type = "structure",
    members = {
        organizationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisteredAzureIdentityDetails = {
    type = "structure",
    members = {
        tenantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        webIdentityRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        webIdentityTokenAudiences = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GithubRepoOwnerType = {
    ORGANIZATION = "organization",
    USER = "user",
}

M.RegisteredGithubServiceDetails = {
    type = "structure",
    members = {
        owner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetUrl = {
            type = "string",
        },
    },
}

M.GitLabTokenType = {
    PERSONAL = "personal",
    GROUP = "group",
}

M.RegisteredGitLabServiceDetails = {
    type = "structure",
    members = {
        targetUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tokenType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groupId = {
            type = "string",
        },
    },
}

M.MCPServerAuthorizationMethod = {
    OAUTH_CLIENT_CREDENTIALS = "oauth-client-credentials",
    OAUTH_3LO = "oauth-3lo",
    API_KEY = "api-key",
    BEARER_TOKEN = "bearer-token",
}

M.RegisteredMCPServerDetails = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizationMethod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        apiKeyHeader = {
            type = "string",
        },
    },
}

M.RegisteredGrafanaServerDetails = {
    type = "structure",
    members = {
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizationMethod = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NewRelicRegion = {
    US = "US",
    EU = "EU",
}

M.RegisteredNewRelicDetails = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.RegisteredPagerDutyDetails = {
    type = "structure",
    members = {
        scopes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisteredServiceNowDetails = {
    type = "structure",
    members = {
        instanceUrl = {
            type = "string",
        },
    },
}

M.RegisteredSlackServiceDetails = {
    type = "structure",
    members = {
        teamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        teamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AdditionalServiceDetails = {
    type = "union",
    members = {
        github = {
            type = "structure",
        },
        slack = {
            type = "structure",
        },
        mcpserverdatadog = {
            type = "structure",
        },
        mcpserver = {
            type = "structure",
        },
        servicenow = {
            type = "structure",
        },
        gitlab = {
            type = "structure",
        },
        mcpserversplunk = {
            type = "structure",
        },
        mcpservernewrelic = {
            type = "structure",
        },
        azuredevops = {
            type = "structure",
        },
        azureidentity = {
            type = "structure",
        },
        mcpservergrafana = {
            type = "structure",
        },
        pagerduty = {
            type = "structure",
        },
    },
}

M.OAuthAdditionalStepDetails = {
    type = "structure",
    members = {
        authorizationUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AdditionalServiceRegistrationStep = {
    type = "union",
    members = {
        oauth = {
            type = "structure",
        },
    },
}

M.AgentSpace = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        locale = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        kmsKeyArn = {
            type = "string",
        },
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MonitorAccountType = {
    MONITOR = "monitor",
}

M.AWSConfiguration = {
    type = "structure",
    members = {
        assumableRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AzureConfiguration = {
    type = "structure",
    members = {
        subscriptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AzureDevOpsConfiguration = {
    type = "structure",
    members = {
        organizationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DynatraceConfiguration = {
    type = "structure",
    members = {
        envId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resources = {
            type = "list",
            member_type = "string",
        },
    },
}

M.EventChannelConfiguration = {
    type = "structure",
}

M.GitHubConfiguration = {
    type = "structure",
    members = {
        repoName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        repoId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        owner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ownerType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceIdentifier = {
            type = "string",
        },
    },
}

M.GitLabConfiguration = {
    type = "structure",
    members = {
        projectId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        projectPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instanceIdentifier = {
            type = "string",
        },
    },
}

M.MCPServerConfiguration = {
    type = "structure",
    members = {
        tools = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MCPServerDatadogConfiguration = {
    type = "structure",
}

M.MCPServerGrafanaConfiguration = {
    type = "structure",
    members = {
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        organizationId = {
            type = "string",
        },
        tools = {
            type = "list",
            member_type = "string",
        },
    },
}

M.MCPServerNewRelicConfiguration = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MCPServerSplunkConfiguration = {
    type = "structure",
}

M.PagerDutyConfiguration = {
    type = "structure",
    members = {
        services = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        customerEmail = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceNowConfiguration = {
    type = "structure",
    members = {
        instanceId = {
            type = "string",
        },
        authScopes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SlackChannel = {
    type = "structure",
    members = {
        channelName = {
            type = "string",
        },
        channelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SlackTransmissionTarget = {
    type = "structure",
    members = {
        opsOncallTarget = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        opsSRETarget = {
            type = "structure",
        },
    },
}

M.SlackConfiguration = {
    type = "structure",
    members = {
        workspaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workspaceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        transmissionTarget = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SourceAccountType = {
    SOURCE = "source",
}

M.SourceAwsConfiguration = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        assumableRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        externalId = {
            type = "string",
        },
    },
}

M.ServiceConfiguration = {
    type = "union",
    members = {
        sourceAws = {
            type = "structure",
        },
        aws = {
            type = "structure",
        },
        github = {
            type = "structure",
        },
        slack = {
            type = "structure",
        },
        dynatrace = {
            type = "structure",
        },
        servicenow = {
            type = "structure",
        },
        mcpservernewrelic = {
            type = "structure",
        },
        mcpserverdatadog = {
            type = "structure",
        },
        mcpserver = {
            type = "structure",
        },
        gitlab = {
            type = "structure",
        },
        mcpserversplunk = {
            type = "structure",
        },
        eventChannel = {
            type = "structure",
        },
        azure = {
            type = "structure",
        },
        azuredevops = {
            type = "structure",
        },
        mcpservergrafana = {
            type = "structure",
        },
        pagerduty = {
            type = "structure",
        },
    },
}

M.AssociateServiceInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        serviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationStatus = {
    VALID = "valid",
    INVALID = "invalid",
    PENDING_CONFIRMATION = "pending-confirmation",
}

M.Association = {
    type = "structure",
    members = {
        agentSpaceId = {
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
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        status = {
            type = "string",
        },
        associationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.WebhookType = {
    HMAC = "hmac",
    API_KEY = "apikey",
    GITLAB = "gitlab",
    PAGERDUTY = "pagerduty",
}

M.GenericWebhook = {
    type = "structure",
    members = {
        webhookUrl = {
            type = "string",
        },
        webhookId = {
            type = "string",
        },
        webhookType = {
            type = "string",
        },
        webhookSecret = {
            type = "string",
        },
        apiKey = {
            type = "string",
        },
    },
}

M.AssociateServiceOutput = {
    type = "structure",
    members = {
        association = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        webhook = {
            type = "structure",
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
    },
}

M.ContentSizeExceededException = {
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

M.InvalidParameterException = {
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
            member_type = "structure",
        },
    },
}

M.DisassociateServiceInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        associationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateServiceOutput = {
    type = "structure",
}

M.GetAssociationInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        associationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAssociationOutput = {
    type = "structure",
    members = {
        association = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAssociationsInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
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
        filterServiceTypes = {
            type = "string",
            traits = {
                http_query = "filterServiceTypes",
            },
        },
    },
}

M.ListAssociationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        associations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWebhooksInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        associationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Webhook = {
    type = "structure",
    members = {
        webhookUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        webhookType = {
            type = "string",
        },
        webhookId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListWebhooksOutput = {
    type = "structure",
    members = {
        webhooks = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAssociationInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        associationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        configuration = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAssociationOutput = {
    type = "structure",
    members = {
        association = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        webhook = {
            type = "structure",
        },
    },
}

M.ValidateAwsAssociationsInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ValidateAwsAssociationsOutput = {
    type = "structure",
}

M.CreateAgentSpaceInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        locale = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateAgentSpaceOutput = {
    type = "structure",
    members = {
        agentSpace = {
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
    },
}

M.DeleteAgentSpaceInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteAgentSpaceOutput = {
    type = "structure",
}

M.AuthFlow = {
    IAM = "iam",
    IDC = "idc",
    IDP = "idp",
}

M.DisableOperatorAppInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        authFlow = {
            type = "string",
            traits = {
                http_header = "x-amzn-app-auth-flow",
            },
        },
    },
}

M.DisableOperatorAppOutput = {
    type = "structure",
}

M.IdentityCenterServiceException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        underlyingErrorCode = {
            type = "string",
        },
    },
}

M.EnableOperatorAppInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        authFlow = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operatorAppRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idcInstanceArn = {
            type = "string",
        },
        issuerUrl = {
            type = "string",
        },
        idpClientId = {
            type = "string",
        },
        idpClientSecret = {
            type = "string",
        },
        provider = {
            type = "string",
        },
    },
}

M.IamAuthConfiguration = {
    type = "structure",
    members = {
        operatorAppRoleArn = {
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
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.IdcAuthConfiguration = {
    type = "structure",
    members = {
        operatorAppRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idcInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idcApplicationArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.IdpAuthConfiguration = {
    type = "structure",
    members = {
        issuerUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operatorAppRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        provider = {
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
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.EnableOperatorAppOutput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        iam = {
            type = "structure",
        },
        idc = {
            type = "structure",
        },
        idp = {
            type = "structure",
        },
    },
}

M.GetAgentSpaceInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAgentSpaceOutput = {
    type = "structure",
    members = {
        agentSpace = {
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
    },
}

M.GetOperatorAppInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetOperatorAppOutput = {
    type = "structure",
    members = {
        iam = {
            type = "structure",
        },
        idc = {
            type = "structure",
        },
        idp = {
            type = "structure",
        },
    },
}

M.ListAgentSpacesInput = {
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

M.ListAgentSpacesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        agentSpaces = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAgentSpaceInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        locale = {
            type = "string",
        },
    },
}

M.UpdateAgentSpaceOutput = {
    type = "structure",
    members = {
        agentSpace = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateOperatorAppIdpConfigInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        idpClientSecret = {
            type = "string",
        },
    },
}

M.UpdateOperatorAppIdpConfigOutput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idp = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AssistantMessageBlock = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
        toolUse = {
            type = "document",
        },
    },
}

M.ChatExecution = {
    type = "structure",
    members = {
        executionId = {
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
        updatedAt = {
            type = "timestamp",
        },
        summary = {
            type = "string",
        },
    },
}

M.Priority = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
    MINIMAL = "MINIMAL",
}

M.ReferenceInput = {
    type = "structure",
    members = {
        system = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
        },
        referenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        referenceUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TaskType = {
    INVESTIGATION = "INVESTIGATION",
    EVALUATION = "EVALUATION",
}

M.CreateBacklogTaskInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        reference = {
            type = "structure",
        },
        taskType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        priority = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.ReferenceOutput = {
    type = "structure",
    members = {
        system = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
        },
        referenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        referenceUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TaskStatus = {
    PENDING_TRIAGE = "PENDING_TRIAGE",
    LINKED = "LINKED",
    PENDING_START = "PENDING_START",
    IN_PROGRESS = "IN_PROGRESS",
    PENDING_CUSTOMER_APPROVAL = "PENDING_CUSTOMER_APPROVAL",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
    CANCELED = "CANCELED",
}

M.Task = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionId = {
            type = "string",
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        reference = {
            type = "structure",
        },
        taskType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        priority = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
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
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        version = {
            type = "number",
            traits = {
                required = true,
            },
        },
        supportMetadata = {
            type = "document",
        },
        metadata = {
            type = "document",
        },
        primaryTaskId = {
            type = "string",
        },
        statusReason = {
            type = "string",
        },
        hasLinkedTasks = {
            type = "boolean",
        },
    },
}

M.CreateBacklogTaskOutput = {
    type = "structure",
    members = {
        task = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UserType = {
    IAM = "IAM",
    IDC = "IDC",
    IDP = "IDP",
}

M.CreateChatInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_query = "userId",
            },
        },
        userType = {
            type = "string",
            traits = {
                http_query = "userType",
            },
        },
    },
}

M.CreateChatOutput = {
    type = "structure",
    members = {
        executionId = {
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

M.SelfManagedInput = {
    type = "structure",
    members = {
        resourceConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificate = {
            type = "string",
        },
    },
}

M.IpAddressType = {
    IPV4 = "IPV4",
    IPV6 = "IPV6",
    DUAL_STACK = "DUAL_STACK",
}

M.ServiceManagedInput = {
    type = "structure",
    members = {
        hostAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpcId = {
            type = "string",
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
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
        ipAddressType = {
            type = "string",
        },
        ipv4AddressesPerEni = {
            type = "number",
        },
        portRanges = {
            type = "list",
            member_type = "string",
        },
        certificate = {
            type = "string",
        },
    },
}

M.PrivateConnectionMode = {
    type = "union",
    members = {
        serviceManaged = {
            type = "structure",
        },
        selfManaged = {
            type = "structure",
        },
    },
}

M.CreatePrivateConnectionInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mode = {
            type = "union",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.PrivateConnectionStatus = {
    ACTIVE = "ACTIVE",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
}

M.PrivateConnectionType = {
    SELF_MANAGED = "SELF_MANAGED",
    SERVICE_MANAGED = "SERVICE_MANAGED",
}

M.CreatePrivateConnectionOutput = {
    type = "structure",
    members = {
        name = {
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
        resourceGatewayId = {
            type = "string",
        },
        hostAddress = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        resourceConfigurationId = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificateExpiryTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.MCPServerAuthorizationDiscoveryConfig = {
    type = "structure",
    members = {
        returnToEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DatadogAuthorizationConfig = {
    type = "union",
    members = {
        authorizationDiscovery = {
            type = "structure",
        },
    },
}

M.DatadogServiceDetails = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        authorizationConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePrivateConnectionInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePrivateConnectionOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeregisterServiceInput = {
    type = "structure",
    members = {
        serviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeregisterServiceOutput = {
    type = "structure",
}

M.DescribePrivateConnectionInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribePrivateConnectionOutput = {
    type = "structure",
    members = {
        name = {
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
        resourceGatewayId = {
            type = "string",
        },
        hostAddress = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        resourceConfigurationId = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificateExpiryTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.GetAccountUsageInput = {
    type = "structure",
}

M.UsageMetric = {
    type = "structure",
    members = {
        limit = {
            type = "number",
            traits = {
                required = true,
            },
        },
        usage = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAccountUsageOutput = {
    type = "structure",
    members = {
        monthlyAccountInvestigationHours = {
            type = "structure",
        },
        monthlyAccountEvaluationHours = {
            type = "structure",
        },
        monthlyAccountSystemLearningHours = {
            type = "structure",
        },
        monthlyAccountOnDemandHours = {
            type = "structure",
        },
        usagePeriodStartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        usagePeriodEndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetBacklogTaskInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBacklogTaskOutput = {
    type = "structure",
    members = {
        task = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRecommendationInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        recommendationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        recommendationVersion = {
            type = "number",
            traits = {
                http_query = "recommendationVersion",
            },
        },
    },
}

M.RecommendationContent = {
    type = "structure",
    members = {
        summary = {
            type = "string",
            traits = {
                required = true,
            },
        },
        spec = {
            type = "string",
        },
    },
}

M.RecommendationPriority = {
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
}

M.RecommendationStatus = {
    PROPOSED = "PROPOSED",
    ACCEPTED = "ACCEPTED",
    REJECTED = "REJECTED",
    CLOSED = "CLOSED",
    COMPLETED = "COMPLETED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
}

M.Recommendation = {
    type = "structure",
    members = {
        agentSpaceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recommendationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        goalId = {
            type = "string",
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        priority = {
            type = "string",
            traits = {
                required = true,
            },
        },
        goalVersion = {
            type = "number",
        },
        additionalContext = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        version = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRecommendationOutput = {
    type = "structure",
    members = {
        recommendation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TaskFilter = {
    type = "structure",
    members = {
        createdAfter = {
            type = "timestamp",
        },
        createdBefore = {
            type = "timestamp",
        },
        priority = {
            type = "list",
            member_type = "string",
        },
        status = {
            type = "list",
            member_type = "string",
        },
        taskType = {
            type = "list",
            member_type = "string",
        },
        primaryTaskId = {
            type = "string",
        },
    },
}

M.TaskSortOrder = {
    ASC = "ASC",
    DESC = "DESC",
}

M.TaskSortField = {
    CREATED_AT = "CREATED_AT",
    PRIORITY = "PRIORITY",
}

M.ListBacklogTasksInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        filter = {
            type = "structure",
        },
        limit = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        sortField = {
            type = "string",
        },
        order = {
            type = "string",
        },
    },
}

M.ListBacklogTasksOutput = {
    type = "structure",
    members = {
        tasks = {
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

M.ListChatsInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_query = "userId",
            },
        },
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

M.ListChatsOutput = {
    type = "structure",
    members = {
        executions = {
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

M.ListExecutionsInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        limit = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ExecutionStatus = {
    FAILED = "FAILED",
    RUNNING = "RUNNING",
    STOPPED = "STOPPED",
    CANCELED = "CANCELED",
    TIMED_OUT = "TIMED_OUT",
}

M.Execution = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parentExecutionId = {
            type = "string",
        },
        agentSubTask = {
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
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        executionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        agentType = {
            type = "string",
        },
        uid = {
            type = "string",
        },
    },
}

M.ListExecutionsOutput = {
    type = "structure",
    members = {
        executions = {
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

M.GoalType = {
    CUSTOMER_DEFINED = "CUSTOMER_DEFINED",
    ONCALL_REPORT = "ONCALL_REPORT",
}

M.GoalStatus = {
    ACTIVE = "ACTIVE",
    PAUSED = "PAUSED",
    COMPLETE = "COMPLETE",
}

M.ListGoalsInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
        },
        goalType = {
            type = "string",
        },
        limit = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GoalContent = {
    type = "structure",
    members = {
        description = {
            type = "string",
            traits = {
                required = true,
            },
        },
        objectives = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SchedulerState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.GoalSchedule = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expression = {
            type = "string",
        },
    },
}

M.Goal = {
    type = "structure",
    members = {
        agentSpaceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        goalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        goalType = {
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
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastEvaluatedAt = {
            type = "timestamp",
        },
        lastTaskId = {
            type = "string",
        },
        lastSuccessfulTaskId = {
            type = "string",
        },
        version = {
            type = "number",
            traits = {
                required = true,
            },
        },
        evaluationSchedule = {
            type = "structure",
        },
    },
}

M.ListGoalsOutput = {
    type = "structure",
    members = {
        goals = {
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

M.OrderType = {
    ASC = "ASC",
    DESC = "DESC",
}

M.ListJournalRecordsInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        limit = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        recordType = {
            type = "string",
        },
        order = {
            type = "string",
        },
    },
}

M.UserReference = {
    type = "structure",
    members = {
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JournalRecord = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        recordId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "document",
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
        recordType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userReference = {
            type = "structure",
        },
    },
}

M.ListJournalRecordsOutput = {
    type = "structure",
    members = {
        records = {
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

M.ListPendingMessagesInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UserMessageBlock = {
    type = "union",
    members = {
        text = {
            type = "string",
        },
        toolResult = {
            type = "document",
        },
    },
}

M.Message = {
    type = "union",
    members = {
        userMessage = {
            type = "list",
            member_type = "union",
        },
        assistantMessage = {
            type = "list",
            member_type = "union",
        },
    },
}

M.PendingMessage = {
    type = "structure",
    members = {
        messageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ListPendingMessagesOutput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        messages = {
            type = "list",
            member_type = "structure",
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

M.ListRecommendationsInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        taskId = {
            type = "string",
        },
        goalId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        priority = {
            type = "string",
        },
        limit = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRecommendationsOutput = {
    type = "structure",
    members = {
        recommendations = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.ListPrivateConnectionsInput = {
    type = "structure",
}

M.PrivateConnectionSummary = {
    type = "structure",
    members = {
        name = {
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
        resourceGatewayId = {
            type = "string",
        },
        hostAddress = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        resourceConfigurationId = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificateExpiryTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListPrivateConnectionsOutput = {
    type = "structure",
    members = {
        privateConnections = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePrivateConnectionCertificateInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        certificate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePrivateConnectionCertificateOutput = {
    type = "structure",
    members = {
        name = {
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
        resourceGatewayId = {
            type = "string",
        },
        hostAddress = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
        resourceConfigurationId = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        certificateExpiryTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.SendMessageContext = {
    type = "structure",
    members = {
        currentPage = {
            type = "string",
        },
        lastMessage = {
            type = "string",
        },
        userActionResponse = {
            type = "string",
        },
    },
}

M.SendMessageInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        executionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        context = {
            type = "structure",
        },
        userId = {
            type = "string",
        },
    },
}

M.SendMessageJsonDelta = {
    type = "structure",
    members = {
        partialJson = {
            type = "string",
        },
    },
}

M.SendMessageTextDelta = {
    type = "structure",
    members = {
        text = {
            type = "string",
        },
    },
}

M.SendMessageContentBlockDelta = {
    type = "union",
    members = {
        textDelta = {
            type = "structure",
        },
        jsonDelta = {
            type = "structure",
        },
    },
}

M.SendMessageContentBlockDeltaEvent = {
    type = "structure",
    members = {
        index = {
            type = "number",
        },
        delta = {
            type = "union",
        },
        sequenceNumber = {
            type = "number",
        },
    },
}

M.SendMessageContentBlockStartEvent = {
    type = "structure",
    members = {
        index = {
            type = "number",
        },
        type = {
            type = "string",
        },
        id = {
            type = "string",
        },
        parentId = {
            type = "string",
        },
        sequenceNumber = {
            type = "number",
        },
    },
}

M.SendMessageContentBlockStopEvent = {
    type = "structure",
    members = {
        index = {
            type = "number",
        },
        type = {
            type = "string",
        },
        text = {
            type = "string",
        },
        last = {
            type = "boolean",
        },
        sequenceNumber = {
            type = "number",
        },
    },
}

M.SendMessageHeartbeatEvent = {
    type = "structure",
}

M.SendMessageUsageInfo = {
    type = "structure",
    members = {
        inputTokens = {
            type = "number",
        },
        outputTokens = {
            type = "number",
        },
        totalTokens = {
            type = "number",
        },
    },
}

M.SendMessageResponseCompletedEvent = {
    type = "structure",
    members = {
        responseId = {
            type = "string",
        },
        usage = {
            type = "structure",
        },
        sequenceNumber = {
            type = "number",
        },
    },
}

M.SendMessageResponseCreatedEvent = {
    type = "structure",
    members = {
        responseId = {
            type = "string",
        },
        sequenceNumber = {
            type = "number",
        },
    },
}

M.SendMessageResponseFailedEvent = {
    type = "structure",
    members = {
        responseId = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        sequenceNumber = {
            type = "number",
        },
    },
}

M.SendMessageResponseInProgressEvent = {
    type = "structure",
    members = {
        responseId = {
            type = "string",
        },
        sequenceNumber = {
            type = "number",
        },
    },
}

M.SendMessageSummaryEvent = {
    type = "structure",
    members = {
        content = {
            type = "string",
        },
        sequenceNumber = {
            type = "number",
        },
    },
}

M.SendMessageEvents = {
    type = "union",
    members = {
        responseCreated = {
            type = "structure",
        },
        responseInProgress = {
            type = "structure",
        },
        responseCompleted = {
            type = "structure",
        },
        responseFailed = {
            type = "structure",
        },
        summary = {
            type = "structure",
        },
        heartbeat = {
            type = "structure",
        },
        contentBlockStart = {
            type = "structure",
        },
        contentBlockDelta = {
            type = "structure",
        },
        contentBlockStop = {
            type = "structure",
        },
    },
}

M.SendMessageOutput = {
    type = "structure",
    members = {
        events = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetServiceInput = {
    type = "structure",
    members = {
        serviceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Service = {
    GITHUB = "github",
    SLACK = "slack",
    AZURE = "azure",
    AZURE_DEVOPS = "azuredevops",
    DYNATRACE = "dynatrace",
    SERVICENOW = "servicenow",
    PAGERDUTY = "pagerduty",
    GITLAB = "gitlab",
    EVENTCHANNEL = "eventChannel",
    MCP_SERVER_NEWRELIC = "mcpservernewrelic",
    MCP_SERVER_GRAFANA = "mcpservergrafana",
    MCP_SERVER_DATADOG = "mcpserverdatadog",
    MCP_SERVER = "mcpserver",
    MCP_SERVER_SPLUNK = "mcpserversplunk",
    AZURE_IDENTITY = "azureidentity",
}

M.RegisteredService = {
    type = "structure",
    members = {
        serviceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        accessibleResources = {
            type = "list",
            member_type = "document",
        },
        additionalServiceDetails = {
            type = "union",
        },
        kmsKeyArn = {
            type = "string",
        },
        privateConnectionName = {
            type = "string",
        },
    },
}

M.GetServiceOutput = {
    type = "structure",
    members = {
        service = {
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
    },
}

M.ListServicesInput = {
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
        filterServiceType = {
            type = "string",
            traits = {
                http_query = "filterServiceType",
            },
        },
    },
}

M.ListServicesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        services = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PostRegisterServiceSupportedService = {
    DYNATRACE = "dynatrace",
    SERVICENOW = "servicenow",
    PAGERDUTY = "pagerduty",
    GITLAB = "gitlab",
    EVENTCHANNEL = "eventChannel",
    MCP_SERVER_NEWRELIC = "mcpservernewrelic",
    MCP_SERVER_GRAFANA = "mcpservergrafana",
    MCP_SERVER_DATADOG = "mcpserverdatadog",
    MCP_SERVER = "mcpserver",
    MCP_SERVER_SPLUNK = "mcpserversplunk",
    AZURE_IDENTITY = "azureidentity",
}

M.DynatraceOAuthClientCredentialsConfig = {
    type = "structure",
    members = {
        clientName = {
            type = "string",
        },
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exchangeParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DynatraceServiceAuthorizationConfig = {
    type = "union",
    members = {
        oAuthClientCredentials = {
            type = "structure",
        },
    },
}

M.DynatraceServiceDetails = {
    type = "structure",
    members = {
        accountUrn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizationConfig = {
            type = "union",
        },
    },
}

M.EventChannelType = {
    WEBHOOK = "webhook",
}

M.EventChannelDetails = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
    },
}

M.GitLabDetails = {
    type = "structure",
    members = {
        targetUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tokenType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tokenValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groupId = {
            type = "string",
        },
    },
}

M.MCPServerAPIKeyConfig = {
    type = "structure",
    members = {
        apiKeyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        apiKeyValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        apiKeyHeader = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MCPServerBearerTokenConfig = {
    type = "structure",
    members = {
        tokenName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tokenValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizationHeader = {
            type = "string",
        },
    },
}

M.MCPServerOAuth3LOConfig = {
    type = "structure",
    members = {
        clientName = {
            type = "string",
        },
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exchangeParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        returnToEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizationUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exchangeUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientSecret = {
            type = "string",
        },
        supportCodeChallenge = {
            type = "boolean",
        },
        scopes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.MCPServerOAuthClientCredentialsConfig = {
    type = "structure",
    members = {
        clientName = {
            type = "string",
        },
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exchangeParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exchangeUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scopes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.MCPServerAuthorizationConfig = {
    type = "union",
    members = {
        oAuthClientCredentials = {
            type = "structure",
        },
        oAuth3LO = {
            type = "structure",
        },
        apiKey = {
            type = "structure",
        },
        bearerToken = {
            type = "structure",
        },
        authorizationDiscovery = {
            type = "structure",
        },
    },
}

M.MCPServerDetails = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        authorizationConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.GrafanaServiceDetails = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        authorizationConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.NewRelicApiKeyConfig = {
    type = "structure",
    members = {
        apiKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        applicationIds = {
            type = "list",
            member_type = "string",
        },
        entityGuids = {
            type = "list",
            member_type = "string",
        },
        alertPolicyIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.NewRelicServiceAuthorizationConfig = {
    type = "union",
    members = {
        apiKey = {
            type = "structure",
        },
    },
}

M.NewRelicServiceDetails = {
    type = "structure",
    members = {
        authorizationConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.PagerDutyOAuthClientCredentialsConfig = {
    type = "structure",
    members = {
        clientName = {
            type = "string",
        },
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exchangeParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PagerDutyAuthorizationConfig = {
    type = "union",
    members = {
        oAuthClientCredentials = {
            type = "structure",
        },
    },
}

M.PagerDutyDetails = {
    type = "structure",
    members = {
        scopes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        authorizationConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceNowOAuthClientCredentialsConfig = {
    type = "structure",
    members = {
        clientName = {
            type = "string",
        },
        clientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exchangeParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        clientSecret = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceNowServiceAuthorizationConfig = {
    type = "union",
    members = {
        oAuthClientCredentials = {
            type = "structure",
        },
    },
}

M.ServiceNowServiceDetails = {
    type = "structure",
    members = {
        instanceUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizationConfig = {
            type = "union",
        },
    },
}

M.ServiceDetails = {
    type = "union",
    members = {
        dynatrace = {
            type = "structure",
        },
        servicenow = {
            type = "structure",
        },
        mcpserverdatadog = {
            type = "structure",
        },
        mcpserver = {
            type = "structure",
        },
        gitlab = {
            type = "structure",
        },
        mcpserversplunk = {
            type = "structure",
        },
        mcpservernewrelic = {
            type = "structure",
        },
        eventChannel = {
            type = "structure",
        },
        mcpservergrafana = {
            type = "structure",
        },
        pagerduty = {
            type = "structure",
        },
        azureidentity = {
            type = "structure",
        },
    },
}

M.RegisterServiceInput = {
    type = "structure",
    members = {
        service = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        serviceDetails = {
            type = "union",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
        privateConnectionName = {
            type = "string",
        },
        name = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.RegisterServiceOutput = {
    type = "structure",
    members = {
        serviceId = {
            type = "string",
        },
        additionalStep = {
            type = "union",
        },
        kmsKeyArn = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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

M.UpdateBacklogTaskInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        taskStatus = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateBacklogTaskOutput = {
    type = "structure",
    members = {
        task = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GoalScheduleInput = {
    type = "structure",
    members = {
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateGoalInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        goalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        evaluationSchedule = {
            type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateGoalOutput = {
    type = "structure",
    members = {
        goal = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateRecommendationInput = {
    type = "structure",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        recommendationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
        },
        additionalContext = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateRecommendationOutput = {
    type = "structure",
    members = {
        recommendation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

return M
