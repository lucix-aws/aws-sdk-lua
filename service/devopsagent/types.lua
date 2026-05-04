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

M.RegisteredAzureDevOpsServiceDetails = {
    type = "structure",
    id = "RegisteredAzureDevOpsServiceDetails",
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
    id = "RegisteredAzureIdentityDetails",
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
            member = { type = "string" },
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
    id = "RegisteredGithubServiceDetails",
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
    id = "RegisteredGitLabServiceDetails",
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
    id = "RegisteredMCPServerDetails",
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
    id = "RegisteredGrafanaServerDetails",
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
    id = "RegisteredNewRelicDetails",
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
    id = "RegisteredPagerDutyDetails",
    members = {
        scopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.RegisteredServiceNowDetails = {
    type = "structure",
    id = "RegisteredServiceNowDetails",
    members = {
        instanceUrl = {
            type = "string",
        },
    },
}

M.RegisteredSlackServiceDetails = {
    type = "structure",
    id = "RegisteredSlackServiceDetails",
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
    id = "AdditionalServiceDetails",
    members = {
        github = M.RegisteredGithubServiceDetails,
        slack = M.RegisteredSlackServiceDetails,
        mcpserverdatadog = M.RegisteredMCPServerDetails,
        mcpserver = M.RegisteredMCPServerDetails,
        servicenow = M.RegisteredServiceNowDetails,
        gitlab = M.RegisteredGitLabServiceDetails,
        mcpserversplunk = M.RegisteredMCPServerDetails,
        mcpservernewrelic = M.RegisteredNewRelicDetails,
        azuredevops = M.RegisteredAzureDevOpsServiceDetails,
        azureidentity = M.RegisteredAzureIdentityDetails,
        mcpservergrafana = M.RegisteredGrafanaServerDetails,
        pagerduty = M.RegisteredPagerDutyDetails,
    },
}

M.OAuthAdditionalStepDetails = {
    type = "structure",
    id = "OAuthAdditionalStepDetails",
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
    id = "AdditionalServiceRegistrationStep",
    members = {
        oauth = M.OAuthAdditionalStepDetails,
    },
}

M.AgentSpace = {
    type = "structure",
    id = "AgentSpace",
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
    id = "AWSConfiguration",
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
    id = "AzureConfiguration",
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
    id = "AzureDevOpsConfiguration",
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
    id = "DynatraceConfiguration",
    members = {
        envId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resources = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.EventChannelConfiguration = {
    type = "structure",
    id = "EventChannelConfiguration",
}

M.GitHubConfiguration = {
    type = "structure",
    id = "GitHubConfiguration",
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
    id = "GitLabConfiguration",
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
    id = "MCPServerConfiguration",
    members = {
        tools = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.MCPServerDatadogConfiguration = {
    type = "structure",
    id = "MCPServerDatadogConfiguration",
}

M.MCPServerGrafanaConfiguration = {
    type = "structure",
    id = "MCPServerGrafanaConfiguration",
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
            member = { type = "string" },
        },
    },
}

M.MCPServerNewRelicConfiguration = {
    type = "structure",
    id = "MCPServerNewRelicConfiguration",
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
    id = "MCPServerSplunkConfiguration",
}

M.PagerDutyConfiguration = {
    type = "structure",
    id = "PagerDutyConfiguration",
    members = {
        services = {
            type = "list",
            member = { type = "string" },
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
    id = "ServiceNowConfiguration",
    members = {
        instanceId = {
            type = "string",
        },
        authScopes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SlackChannel = {
    type = "structure",
    id = "SlackChannel",
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
    id = "SlackTransmissionTarget",
    members = {
        opsOncallTarget = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SlackChannel }),
        opsSRETarget = M.SlackChannel,
    },
}

M.SlackConfiguration = {
    type = "structure",
    id = "SlackConfiguration",
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
        transmissionTarget = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SlackTransmissionTarget }),
    },
}

M.SourceAccountType = {
    SOURCE = "source",
}

M.SourceAwsConfiguration = {
    type = "structure",
    id = "SourceAwsConfiguration",
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
    id = "ServiceConfiguration",
    members = {
        sourceAws = M.SourceAwsConfiguration,
        aws = M.AWSConfiguration,
        github = M.GitHubConfiguration,
        slack = M.SlackConfiguration,
        dynatrace = M.DynatraceConfiguration,
        servicenow = M.ServiceNowConfiguration,
        mcpservernewrelic = M.MCPServerNewRelicConfiguration,
        mcpserverdatadog = M.MCPServerDatadogConfiguration,
        mcpserver = M.MCPServerConfiguration,
        gitlab = M.GitLabConfiguration,
        mcpserversplunk = M.MCPServerSplunkConfiguration,
        eventChannel = M.EventChannelConfiguration,
        azure = M.AzureConfiguration,
        azuredevops = M.AzureDevOpsConfiguration,
        mcpservergrafana = M.MCPServerGrafanaConfiguration,
        pagerduty = M.PagerDutyConfiguration,
    },
}

M.AssociateServiceInput = {
    type = "structure",
    id = "AssociateServiceInput",
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
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceConfiguration }),
    },
}

M.ValidationStatus = {
    VALID = "valid",
    INVALID = "invalid",
    PENDING_CONFIRMATION = "pending-confirmation",
}

M.Association = {
    type = "structure",
    id = "Association",
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
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceConfiguration }),
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
    id = "GenericWebhook",
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
    id = "AssociateServiceOutput",
    members = {
        association = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Association }),
        webhook = M.GenericWebhook,
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
    },
}

M.ContentSizeExceededException = {
    type = "structure",
    id = "ContentSizeExceededException",
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

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
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
    id = "ResourceNotFoundException",
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
    id = "ServiceQuotaExceededException",
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
    id = "ThrottlingException",
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

M.DisassociateServiceInput = {
    type = "structure",
    id = "DisassociateServiceInput",
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
    id = "DisassociateServiceOutput",
}

M.GetAssociationInput = {
    type = "structure",
    id = "GetAssociationInput",
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
    id = "GetAssociationOutput",
    members = {
        association = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Association }),
    },
}

M.ListAssociationsInput = {
    type = "structure",
    id = "ListAssociationsInput",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 20,
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
    id = "ListAssociationsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        associations = {
            type = "list",
            member = M.Association,
            traits = {
                required = true,
            },
        },
    },
}

M.ListWebhooksInput = {
    type = "structure",
    id = "ListWebhooksInput",
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
    id = "Webhook",
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
    id = "ListWebhooksOutput",
    members = {
        webhooks = {
            type = "list",
            member = M.Webhook,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAssociationInput = {
    type = "structure",
    id = "UpdateAssociationInput",
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
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceConfiguration }),
    },
}

M.UpdateAssociationOutput = {
    type = "structure",
    id = "UpdateAssociationOutput",
    members = {
        association = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Association }),
        webhook = M.GenericWebhook,
    },
}

M.ValidateAwsAssociationsInput = {
    type = "structure",
    id = "ValidateAwsAssociationsInput",
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
    id = "ValidateAwsAssociationsOutput",
}

M.CreateAgentSpaceInput = {
    type = "structure",
    id = "CreateAgentSpaceInput",
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
            traits = {
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateAgentSpaceOutput = {
    type = "structure",
    id = "CreateAgentSpaceOutput",
    members = {
        agentSpace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentSpace }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.DeleteAgentSpaceInput = {
    type = "structure",
    id = "DeleteAgentSpaceInput",
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
    id = "DeleteAgentSpaceOutput",
}

M.AuthFlow = {
    IAM = "iam",
    IDC = "idc",
    IDP = "idp",
}

M.DisableOperatorAppInput = {
    type = "structure",
    id = "DisableOperatorAppInput",
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
    id = "DisableOperatorAppOutput",
}

M.IdentityCenterServiceException = {
    type = "structure",
    id = "IdentityCenterServiceException",
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
    id = "EnableOperatorAppInput",
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
    id = "IamAuthConfiguration",
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
    id = "IdcAuthConfiguration",
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
    id = "IdpAuthConfiguration",
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
    id = "EnableOperatorAppOutput",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        iam = M.IamAuthConfiguration,
        idc = M.IdcAuthConfiguration,
        idp = M.IdpAuthConfiguration,
    },
}

M.GetAgentSpaceInput = {
    type = "structure",
    id = "GetAgentSpaceInput",
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
    id = "GetAgentSpaceOutput",
    members = {
        agentSpace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentSpace }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetOperatorAppInput = {
    type = "structure",
    id = "GetOperatorAppInput",
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
    id = "GetOperatorAppOutput",
    members = {
        iam = M.IamAuthConfiguration,
        idc = M.IdcAuthConfiguration,
        idp = M.IdpAuthConfiguration,
    },
}

M.ListAgentSpacesInput = {
    type = "structure",
    id = "ListAgentSpacesInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                default = 20,
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
    id = "ListAgentSpacesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        agentSpaces = {
            type = "list",
            member = M.AgentSpace,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateAgentSpaceInput = {
    type = "structure",
    id = "UpdateAgentSpaceInput",
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
    id = "UpdateAgentSpaceOutput",
    members = {
        agentSpace = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentSpace }),
    },
}

M.UpdateOperatorAppIdpConfigInput = {
    type = "structure",
    id = "UpdateOperatorAppIdpConfigInput",
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
    id = "UpdateOperatorAppIdpConfigOutput",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idp = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IdpAuthConfiguration }),
    },
}

M.AssistantMessageBlock = {
    type = "union",
    id = "AssistantMessageBlock",
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
    id = "ChatExecution",
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
    id = "ReferenceInput",
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
    id = "CreateBacklogTaskInput",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        reference = M.ReferenceInput,
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.ReferenceOutput = {
    type = "structure",
    id = "ReferenceOutput",
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
    id = "Task",
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
        reference = M.ReferenceOutput,
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
        version = {
            type = "integer",
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
            traits = {
                default = false,
            },
        },
    },
}

M.CreateBacklogTaskOutput = {
    type = "structure",
    id = "CreateBacklogTaskOutput",
    members = {
        task = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Task }),
    },
}

M.UserType = {
    IAM = "IAM",
    IDC = "IDC",
    IDP = "IDP",
}

M.CreateChatInput = {
    type = "structure",
    id = "CreateChatInput",
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
    id = "CreateChatOutput",
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
    id = "SelfManagedInput",
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
    id = "ServiceManagedInput",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        ipAddressType = {
            type = "string",
        },
        ipv4AddressesPerEni = {
            type = "integer",
        },
        portRanges = {
            type = "list",
            member = { type = "string" },
        },
        certificate = {
            type = "string",
        },
    },
}

M.PrivateConnectionMode = {
    type = "union",
    id = "PrivateConnectionMode",
    members = {
        serviceManaged = M.ServiceManagedInput,
        selfManaged = M.SelfManagedInput,
    },
}

M.CreatePrivateConnectionInput = {
    type = "structure",
    id = "CreatePrivateConnectionInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mode = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PrivateConnectionMode }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "CreatePrivateConnectionOutput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.MCPServerAuthorizationDiscoveryConfig = {
    type = "structure",
    id = "MCPServerAuthorizationDiscoveryConfig",
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
    id = "DatadogAuthorizationConfig",
    members = {
        authorizationDiscovery = M.MCPServerAuthorizationDiscoveryConfig,
    },
}

M.DatadogServiceDetails = {
    type = "structure",
    id = "DatadogServiceDetails",
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
        authorizationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DatadogAuthorizationConfig }),
    },
}

M.DeletePrivateConnectionInput = {
    type = "structure",
    id = "DeletePrivateConnectionInput",
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
    id = "DeletePrivateConnectionOutput",
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
    id = "DeregisterServiceInput",
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
    id = "DeregisterServiceOutput",
}

M.DescribePrivateConnectionInput = {
    type = "structure",
    id = "DescribePrivateConnectionInput",
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
    id = "DescribePrivateConnectionOutput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetAccountUsageInput = {
    type = "structure",
    id = "GetAccountUsageInput",
}

M.UsageMetric = {
    type = "structure",
    id = "UsageMetric",
    members = {
        limit = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        usage = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAccountUsageOutput = {
    type = "structure",
    id = "GetAccountUsageOutput",
    members = {
        monthlyAccountInvestigationHours = M.UsageMetric,
        monthlyAccountEvaluationHours = M.UsageMetric,
        monthlyAccountSystemLearningHours = M.UsageMetric,
        monthlyAccountOnDemandHours = M.UsageMetric,
        usagePeriodStartTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        usagePeriodEndTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetBacklogTaskInput = {
    type = "structure",
    id = "GetBacklogTaskInput",
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
    id = "GetBacklogTaskOutput",
    members = {
        task = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Task }),
    },
}

M.GetRecommendationInput = {
    type = "structure",
    id = "GetRecommendationInput",
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
            type = "long",
            traits = {
                http_query = "recommendationVersion",
            },
        },
    },
}

M.RecommendationContent = {
    type = "structure",
    id = "RecommendationContent",
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
    id = "Recommendation",
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
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecommendationContent }),
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
            type = "long",
        },
        additionalContext = {
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
        version = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRecommendationOutput = {
    type = "structure",
    id = "GetRecommendationOutput",
    members = {
        recommendation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Recommendation }),
    },
}

M.TaskFilter = {
    type = "structure",
    id = "TaskFilter",
    members = {
        createdAfter = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        createdBefore = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        priority = {
            type = "list",
            member = { type = "string" },
        },
        status = {
            type = "list",
            member = { type = "string" },
        },
        taskType = {
            type = "list",
            member = { type = "string" },
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
    id = "ListBacklogTasksInput",
    members = {
        agentSpaceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        filter = M.TaskFilter,
        limit = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        nextToken = {
            type = "string",
        },
        sortField = {
            type = "string",
        },
        order = {
            type = "string",
            traits = {
                default = "DESC",
            },
        },
    },
}

M.ListBacklogTasksOutput = {
    type = "structure",
    id = "ListBacklogTasksOutput",
    members = {
        tasks = {
            type = "list",
            member = M.Task,
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
    id = "ListChatsInput",
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

M.ListChatsOutput = {
    type = "structure",
    id = "ListChatsOutput",
    members = {
        executions = {
            type = "list",
            member = M.ChatExecution,
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
    id = "ListExecutionsInput",
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
            type = "integer",
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
    id = "Execution",
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
    id = "ListExecutionsOutput",
    members = {
        executions = {
            type = "list",
            member = M.Execution,
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
    id = "ListGoalsInput",
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
            type = "integer",
            traits = {
                default = 50,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GoalContent = {
    type = "structure",
    id = "GoalContent",
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
    id = "GoalSchedule",
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
    id = "Goal",
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
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GoalContent }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        goalType = {
            type = "string",
            traits = {
                default = "ONCALL_REPORT",
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
        lastEvaluatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastTaskId = {
            type = "string",
        },
        lastSuccessfulTaskId = {
            type = "string",
        },
        version = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        evaluationSchedule = M.GoalSchedule,
    },
}

M.ListGoalsOutput = {
    type = "structure",
    id = "ListGoalsOutput",
    members = {
        goals = {
            type = "list",
            member = M.Goal,
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
    id = "ListJournalRecordsInput",
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
            type = "integer",
            traits = {
                default = 100,
            },
        },
        nextToken = {
            type = "string",
        },
        recordType = {
            type = "string",
            traits = {
                default = "",
            },
        },
        order = {
            type = "string",
            traits = {
                default = "DESC",
            },
        },
    },
}

M.UserReference = {
    type = "structure",
    id = "UserReference",
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
    id = "JournalRecord",
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
        userReference = M.UserReference,
    },
}

M.ListJournalRecordsOutput = {
    type = "structure",
    id = "ListJournalRecordsOutput",
    members = {
        records = {
            type = "list",
            member = M.JournalRecord,
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
    id = "ListPendingMessagesInput",
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
    id = "UserMessageBlock",
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
    id = "Message",
    members = {
        userMessage = {
            type = "list",
            member = M.UserMessageBlock,
        },
        assistantMessage = {
            type = "list",
            member = M.AssistantMessageBlock,
        },
    },
}

M.PendingMessage = {
    type = "structure",
    id = "PendingMessage",
    members = {
        messageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Message }),
    },
}

M.ListPendingMessagesOutput = {
    type = "structure",
    id = "ListPendingMessagesOutput",
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
            member = M.PendingMessage,
            traits = {
                default = {},
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
    id = "ListRecommendationsInput",
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
            type = "integer",
            traits = {
                default = 50,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRecommendationsOutput = {
    type = "structure",
    id = "ListRecommendationsOutput",
    members = {
        recommendations = {
            type = "list",
            member = M.Recommendation,
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
            traits = {
                required = true,
            },
        },
    },
}

M.ListPrivateConnectionsInput = {
    type = "structure",
    id = "ListPrivateConnectionsInput",
}

M.PrivateConnectionSummary = {
    type = "structure",
    id = "PrivateConnectionSummary",
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
    id = "ListPrivateConnectionsOutput",
    members = {
        privateConnections = {
            type = "list",
            member = M.PrivateConnectionSummary,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePrivateConnectionCertificateInput = {
    type = "structure",
    id = "UpdatePrivateConnectionCertificateInput",
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
    id = "UpdatePrivateConnectionCertificateOutput",
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
    id = "SendMessageContext",
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
    id = "SendMessageInput",
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
        context = M.SendMessageContext,
        userId = {
            type = "string",
        },
    },
}

M.SendMessageJsonDelta = {
    type = "structure",
    id = "SendMessageJsonDelta",
    members = {
        partialJson = {
            type = "string",
        },
    },
}

M.SendMessageTextDelta = {
    type = "structure",
    id = "SendMessageTextDelta",
    members = {
        text = {
            type = "string",
        },
    },
}

M.SendMessageContentBlockDelta = {
    type = "union",
    id = "SendMessageContentBlockDelta",
    members = {
        textDelta = M.SendMessageTextDelta,
        jsonDelta = M.SendMessageJsonDelta,
    },
}

M.SendMessageContentBlockDeltaEvent = {
    type = "structure",
    id = "SendMessageContentBlockDeltaEvent",
    members = {
        index = {
            type = "integer",
        },
        delta = M.SendMessageContentBlockDelta,
        sequenceNumber = {
            type = "integer",
        },
    },
}

M.SendMessageContentBlockStartEvent = {
    type = "structure",
    id = "SendMessageContentBlockStartEvent",
    members = {
        index = {
            type = "integer",
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
            type = "integer",
        },
    },
}

M.SendMessageContentBlockStopEvent = {
    type = "structure",
    id = "SendMessageContentBlockStopEvent",
    members = {
        index = {
            type = "integer",
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
            type = "integer",
        },
    },
}

M.SendMessageHeartbeatEvent = {
    type = "structure",
    id = "SendMessageHeartbeatEvent",
}

M.SendMessageUsageInfo = {
    type = "structure",
    id = "SendMessageUsageInfo",
    members = {
        inputTokens = {
            type = "integer",
        },
        outputTokens = {
            type = "integer",
        },
        totalTokens = {
            type = "integer",
        },
    },
}

M.SendMessageResponseCompletedEvent = {
    type = "structure",
    id = "SendMessageResponseCompletedEvent",
    members = {
        responseId = {
            type = "string",
        },
        usage = M.SendMessageUsageInfo,
        sequenceNumber = {
            type = "integer",
        },
    },
}

M.SendMessageResponseCreatedEvent = {
    type = "structure",
    id = "SendMessageResponseCreatedEvent",
    members = {
        responseId = {
            type = "string",
        },
        sequenceNumber = {
            type = "integer",
        },
    },
}

M.SendMessageResponseFailedEvent = {
    type = "structure",
    id = "SendMessageResponseFailedEvent",
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
            type = "integer",
        },
    },
}

M.SendMessageResponseInProgressEvent = {
    type = "structure",
    id = "SendMessageResponseInProgressEvent",
    members = {
        responseId = {
            type = "string",
        },
        sequenceNumber = {
            type = "integer",
        },
    },
}

M.SendMessageSummaryEvent = {
    type = "structure",
    id = "SendMessageSummaryEvent",
    members = {
        content = {
            type = "string",
        },
        sequenceNumber = {
            type = "integer",
        },
    },
}

M.SendMessageEvents = {
    type = "union",
    id = "SendMessageEvents",
    members = {
        responseCreated = M.SendMessageResponseCreatedEvent,
        responseInProgress = M.SendMessageResponseInProgressEvent,
        responseCompleted = M.SendMessageResponseCompletedEvent,
        responseFailed = M.SendMessageResponseFailedEvent,
        summary = M.SendMessageSummaryEvent,
        heartbeat = M.SendMessageHeartbeatEvent,
        contentBlockStart = M.SendMessageContentBlockStartEvent,
        contentBlockDelta = M.SendMessageContentBlockDeltaEvent,
        contentBlockStop = M.SendMessageContentBlockStopEvent,
    },
}

M.SendMessageOutput = {
    type = "structure",
    id = "SendMessageOutput",
    members = {
        events = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.SendMessageEvents }),
    },
}

M.GetServiceInput = {
    type = "structure",
    id = "GetServiceInput",
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
    id = "RegisteredService",
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
            member = { type = "document" },
        },
        additionalServiceDetails = M.AdditionalServiceDetails,
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
    id = "GetServiceOutput",
    members = {
        service = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RegisteredService }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListServicesInput = {
    type = "structure",
    id = "ListServicesInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                default = 20,
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
    id = "ListServicesOutput",
    members = {
        nextToken = {
            type = "string",
        },
        services = {
            type = "list",
            member = M.RegisteredService,
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
    id = "DynatraceOAuthClientCredentialsConfig",
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "DynatraceServiceAuthorizationConfig",
    members = {
        oAuthClientCredentials = M.DynatraceOAuthClientCredentialsConfig,
    },
}

M.DynatraceServiceDetails = {
    type = "structure",
    id = "DynatraceServiceDetails",
    members = {
        accountUrn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizationConfig = M.DynatraceServiceAuthorizationConfig,
    },
}

M.EventChannelType = {
    WEBHOOK = "webhook",
}

M.EventChannelDetails = {
    type = "structure",
    id = "EventChannelDetails",
    members = {
        type = {
            type = "string",
        },
    },
}

M.GitLabDetails = {
    type = "structure",
    id = "GitLabDetails",
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
    id = "MCPServerAPIKeyConfig",
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
    id = "MCPServerBearerTokenConfig",
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
            traits = {
                default = "Authorization",
            },
        },
    },
}

M.MCPServerOAuth3LOConfig = {
    type = "structure",
    id = "MCPServerOAuth3LOConfig",
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
            key = { type = "string" },
            value = { type = "string" },
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
            traits = {
                default = false,
            },
        },
        scopes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MCPServerOAuthClientCredentialsConfig = {
    type = "structure",
    id = "MCPServerOAuthClientCredentialsConfig",
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
            key = { type = "string" },
            value = { type = "string" },
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
            member = { type = "string" },
        },
    },
}

M.MCPServerAuthorizationConfig = {
    type = "union",
    id = "MCPServerAuthorizationConfig",
    members = {
        oAuthClientCredentials = M.MCPServerOAuthClientCredentialsConfig,
        oAuth3LO = M.MCPServerOAuth3LOConfig,
        apiKey = M.MCPServerAPIKeyConfig,
        bearerToken = M.MCPServerBearerTokenConfig,
        authorizationDiscovery = M.MCPServerAuthorizationDiscoveryConfig,
    },
}

M.MCPServerDetails = {
    type = "structure",
    id = "MCPServerDetails",
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
        authorizationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MCPServerAuthorizationConfig }),
    },
}

M.GrafanaServiceDetails = {
    type = "structure",
    id = "GrafanaServiceDetails",
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
        authorizationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MCPServerAuthorizationConfig }),
    },
}

M.NewRelicApiKeyConfig = {
    type = "structure",
    id = "NewRelicApiKeyConfig",
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
            member = { type = "string" },
        },
        entityGuids = {
            type = "list",
            member = { type = "string" },
        },
        alertPolicyIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.NewRelicServiceAuthorizationConfig = {
    type = "union",
    id = "NewRelicServiceAuthorizationConfig",
    members = {
        apiKey = M.NewRelicApiKeyConfig,
    },
}

M.NewRelicServiceDetails = {
    type = "structure",
    id = "NewRelicServiceDetails",
    members = {
        authorizationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NewRelicServiceAuthorizationConfig }),
    },
}

M.PagerDutyOAuthClientCredentialsConfig = {
    type = "structure",
    id = "PagerDutyOAuthClientCredentialsConfig",
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "PagerDutyAuthorizationConfig",
    members = {
        oAuthClientCredentials = M.PagerDutyOAuthClientCredentialsConfig,
    },
}

M.PagerDutyDetails = {
    type = "structure",
    id = "PagerDutyDetails",
    members = {
        scopes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        authorizationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PagerDutyAuthorizationConfig }),
    },
}

M.ServiceNowOAuthClientCredentialsConfig = {
    type = "structure",
    id = "ServiceNowOAuthClientCredentialsConfig",
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
            key = { type = "string" },
            value = { type = "string" },
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
    id = "ServiceNowServiceAuthorizationConfig",
    members = {
        oAuthClientCredentials = M.ServiceNowOAuthClientCredentialsConfig,
    },
}

M.ServiceNowServiceDetails = {
    type = "structure",
    id = "ServiceNowServiceDetails",
    members = {
        instanceUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authorizationConfig = M.ServiceNowServiceAuthorizationConfig,
    },
}

M.ServiceDetails = {
    type = "union",
    id = "ServiceDetails",
    members = {
        dynatrace = M.DynatraceServiceDetails,
        servicenow = M.ServiceNowServiceDetails,
        mcpserverdatadog = M.DatadogServiceDetails,
        mcpserver = M.MCPServerDetails,
        gitlab = M.GitLabDetails,
        mcpserversplunk = M.MCPServerDetails,
        mcpservernewrelic = M.NewRelicServiceDetails,
        eventChannel = M.EventChannelDetails,
        mcpservergrafana = M.GrafanaServiceDetails,
        pagerduty = M.PagerDutyDetails,
        azureidentity = M.RegisteredAzureIdentityDetails,
    },
}

M.RegisterServiceInput = {
    type = "structure",
    id = "RegisterServiceInput",
    members = {
        service = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        serviceDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceDetails }),
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.RegisterServiceOutput = {
    type = "structure",
    id = "RegisterServiceOutput",
    members = {
        serviceId = {
            type = "string",
        },
        additionalStep = M.AdditionalServiceRegistrationStep,
        kmsKeyArn = {
            type = "string",
        },
        tags = {
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

M.UpdateBacklogTaskInput = {
    type = "structure",
    id = "UpdateBacklogTaskInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateBacklogTaskOutput = {
    type = "structure",
    id = "UpdateBacklogTaskOutput",
    members = {
        task = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Task }),
    },
}

M.GoalScheduleInput = {
    type = "structure",
    id = "GoalScheduleInput",
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
    id = "UpdateGoalInput",
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
        evaluationSchedule = M.GoalScheduleInput,
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateGoalOutput = {
    type = "structure",
    id = "UpdateGoalOutput",
    members = {
        goal = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Goal }),
    },
}

M.UpdateRecommendationInput = {
    type = "structure",
    id = "UpdateRecommendationInput",
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
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.UpdateRecommendationOutput = {
    type = "structure",
    id = "UpdateRecommendationOutput",
    members = {
        recommendation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Recommendation }),
    },
}

return M
