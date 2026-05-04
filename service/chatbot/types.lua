local M = {}

M.AccountPreferences = {
    type = "structure",
    id = "AccountPreferences",
    members = {
        UserAuthorizationRequired = {
            type = "boolean",
        },
        TrainingDataCollectionEnabled = {
            type = "boolean",
        },
    },
}

M.AssociateToConfigurationInput = {
    type = "structure",
    id = "AssociateToConfigurationInput",
    members = {
        Resource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChatConfiguration = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateToConfigurationOutput = {
    type = "structure",
    id = "AssociateToConfigurationOutput",
}

M.InternalServiceError = {
    type = "structure",
    id = "InternalServiceError",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    id = "UnauthorizedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssociationListing = {
    type = "structure",
    id = "AssociationListing",
    members = {
        Resource = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        TagKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChimeWebhookConfiguration = {
    type = "structure",
    id = "ChimeWebhookConfiguration",
    members = {
        WebhookDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChatConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnsTopicArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ConfigurationName = {
            type = "string",
        },
        LoggingLevel = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
    },
}

M.ConfiguredTeam = {
    type = "structure",
    id = "ConfiguredTeam",
    members = {
        TenantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TeamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TeamName = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
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
        },
    },
}

M.CreateChimeWebhookConfigurationException = {
    type = "structure",
    id = "CreateChimeWebhookConfigurationException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateChimeWebhookConfigurationInput = {
    type = "structure",
    id = "CreateChimeWebhookConfigurationInput",
    members = {
        WebhookDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WebhookUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnsTopicArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LoggingLevel = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateChimeWebhookConfigurationOutput = {
    type = "structure",
    id = "CreateChimeWebhookConfigurationOutput",
    members = {
        WebhookConfiguration = M.ChimeWebhookConfiguration,
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

M.CustomActionAttachmentCriteriaOperator = {
    HAS_VALUE = "HAS_VALUE",
    EQUALS = "EQUALS",
}

M.CustomActionAttachmentCriteria = {
    type = "structure",
    id = "CustomActionAttachmentCriteria",
    members = {
        Operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VariableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
    },
}

M.CustomActionAttachment = {
    type = "structure",
    id = "CustomActionAttachment",
    members = {
        NotificationType = {
            type = "string",
        },
        ButtonText = {
            type = "string",
        },
        Criteria = {
            type = "list",
            member = M.CustomActionAttachmentCriteria,
        },
        Variables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CustomActionDefinition = {
    type = "structure",
    id = "CustomActionDefinition",
    members = {
        CommandText = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCustomActionInput = {
    type = "structure",
    id = "CreateCustomActionInput",
    members = {
        Definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomActionDefinition }),
        AliasName = {
            type = "string",
        },
        Attachments = {
            type = "list",
            member = M.CustomActionAttachment,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ActionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateCustomActionOutput = {
    type = "structure",
    id = "CreateCustomActionOutput",
    members = {
        CustomActionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMicrosoftTeamsChannelConfigurationInput = {
    type = "structure",
    id = "CreateMicrosoftTeamsChannelConfigurationInput",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelName = {
            type = "string",
        },
        TeamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TeamName = {
            type = "string",
        },
        TenantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnsTopicArns = {
            type = "list",
            member = { type = "string" },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LoggingLevel = {
            type = "string",
        },
        GuardrailPolicyArns = {
            type = "list",
            member = { type = "string" },
        },
        UserAuthorizationRequired = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.TeamsChannelConfiguration = {
    type = "structure",
    id = "TeamsChannelConfiguration",
    members = {
        ChannelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelName = {
            type = "string",
        },
        TeamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TeamName = {
            type = "string",
        },
        TenantId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChatConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnsTopicArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ConfigurationName = {
            type = "string",
        },
        LoggingLevel = {
            type = "string",
        },
        GuardrailPolicyArns = {
            type = "list",
            member = { type = "string" },
        },
        UserAuthorizationRequired = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
    },
}

M.CreateMicrosoftTeamsChannelConfigurationOutput = {
    type = "structure",
    id = "CreateMicrosoftTeamsChannelConfigurationOutput",
    members = {
        ChannelConfiguration = M.TeamsChannelConfiguration,
    },
}

M.CreateTeamsChannelConfigurationException = {
    type = "structure",
    id = "CreateTeamsChannelConfigurationException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateSlackChannelConfigurationException = {
    type = "structure",
    id = "CreateSlackChannelConfigurationException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateSlackChannelConfigurationInput = {
    type = "structure",
    id = "CreateSlackChannelConfigurationInput",
    members = {
        SlackTeamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SlackChannelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SlackChannelName = {
            type = "string",
        },
        SnsTopicArns = {
            type = "list",
            member = { type = "string" },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LoggingLevel = {
            type = "string",
        },
        GuardrailPolicyArns = {
            type = "list",
            member = { type = "string" },
        },
        UserAuthorizationRequired = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.SlackChannelConfiguration = {
    type = "structure",
    id = "SlackChannelConfiguration",
    members = {
        SlackTeamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SlackTeamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SlackChannelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SlackChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChatConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnsTopicArns = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ConfigurationName = {
            type = "string",
        },
        LoggingLevel = {
            type = "string",
        },
        GuardrailPolicyArns = {
            type = "list",
            member = { type = "string" },
        },
        UserAuthorizationRequired = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
    },
}

M.CreateSlackChannelConfigurationOutput = {
    type = "structure",
    id = "CreateSlackChannelConfigurationOutput",
    members = {
        ChannelConfiguration = M.SlackChannelConfiguration,
    },
}

M.CustomAction = {
    type = "structure",
    id = "CustomAction",
    members = {
        CustomActionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomActionDefinition }),
        AliasName = {
            type = "string",
        },
        Attachments = {
            type = "list",
            member = M.CustomActionAttachment,
        },
        ActionName = {
            type = "string",
        },
    },
}

M.DeleteCustomActionInput = {
    type = "structure",
    id = "DeleteCustomActionInput",
    members = {
        CustomActionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCustomActionOutput = {
    type = "structure",
    id = "DeleteCustomActionOutput",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetCustomActionInput = {
    type = "structure",
    id = "GetCustomActionInput",
    members = {
        CustomActionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCustomActionOutput = {
    type = "structure",
    id = "GetCustomActionOutput",
    members = {
        CustomAction = M.CustomAction,
    },
}

M.ListCustomActionsInput = {
    type = "structure",
    id = "ListCustomActionsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCustomActionsOutput = {
    type = "structure",
    id = "ListCustomActionsOutput",
    members = {
        CustomActions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateCustomActionInput = {
    type = "structure",
    id = "UpdateCustomActionInput",
    members = {
        CustomActionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomActionDefinition }),
        AliasName = {
            type = "string",
        },
        Attachments = {
            type = "list",
            member = M.CustomActionAttachment,
        },
    },
}

M.UpdateCustomActionOutput = {
    type = "structure",
    id = "UpdateCustomActionOutput",
    members = {
        CustomActionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteChimeWebhookConfigurationException = {
    type = "structure",
    id = "DeleteChimeWebhookConfigurationException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteChimeWebhookConfigurationInput = {
    type = "structure",
    id = "DeleteChimeWebhookConfigurationInput",
    members = {
        ChatConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteChimeWebhookConfigurationOutput = {
    type = "structure",
    id = "DeleteChimeWebhookConfigurationOutput",
}

M.DeleteMicrosoftTeamsChannelConfigurationInput = {
    type = "structure",
    id = "DeleteMicrosoftTeamsChannelConfigurationInput",
    members = {
        ChatConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMicrosoftTeamsChannelConfigurationOutput = {
    type = "structure",
    id = "DeleteMicrosoftTeamsChannelConfigurationOutput",
}

M.DeleteTeamsChannelConfigurationException = {
    type = "structure",
    id = "DeleteTeamsChannelConfigurationException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteMicrosoftTeamsConfiguredTeamInput = {
    type = "structure",
    id = "DeleteMicrosoftTeamsConfiguredTeamInput",
    members = {
        TeamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMicrosoftTeamsConfiguredTeamOutput = {
    type = "structure",
    id = "DeleteMicrosoftTeamsConfiguredTeamOutput",
}

M.DeleteTeamsConfiguredTeamException = {
    type = "structure",
    id = "DeleteTeamsConfiguredTeamException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteMicrosoftTeamsUserIdentityException = {
    type = "structure",
    id = "DeleteMicrosoftTeamsUserIdentityException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteMicrosoftTeamsUserIdentityInput = {
    type = "structure",
    id = "DeleteMicrosoftTeamsUserIdentityInput",
    members = {
        ChatConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMicrosoftTeamsUserIdentityOutput = {
    type = "structure",
    id = "DeleteMicrosoftTeamsUserIdentityOutput",
}

M.DeleteSlackChannelConfigurationException = {
    type = "structure",
    id = "DeleteSlackChannelConfigurationException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteSlackChannelConfigurationInput = {
    type = "structure",
    id = "DeleteSlackChannelConfigurationInput",
    members = {
        ChatConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSlackChannelConfigurationOutput = {
    type = "structure",
    id = "DeleteSlackChannelConfigurationOutput",
}

M.DeleteSlackUserIdentityException = {
    type = "structure",
    id = "DeleteSlackUserIdentityException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteSlackUserIdentityInput = {
    type = "structure",
    id = "DeleteSlackUserIdentityInput",
    members = {
        ChatConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SlackTeamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SlackUserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSlackUserIdentityOutput = {
    type = "structure",
    id = "DeleteSlackUserIdentityOutput",
}

M.DeleteSlackWorkspaceAuthorizationFault = {
    type = "structure",
    id = "DeleteSlackWorkspaceAuthorizationFault",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteSlackWorkspaceAuthorizationInput = {
    type = "structure",
    id = "DeleteSlackWorkspaceAuthorizationInput",
    members = {
        SlackTeamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSlackWorkspaceAuthorizationOutput = {
    type = "structure",
    id = "DeleteSlackWorkspaceAuthorizationOutput",
}

M.DescribeChimeWebhookConfigurationsException = {
    type = "structure",
    id = "DescribeChimeWebhookConfigurationsException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeChimeWebhookConfigurationsInput = {
    type = "structure",
    id = "DescribeChimeWebhookConfigurationsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        ChatConfigurationArn = {
            type = "string",
        },
    },
}

M.DescribeChimeWebhookConfigurationsOutput = {
    type = "structure",
    id = "DescribeChimeWebhookConfigurationsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        WebhookConfigurations = {
            type = "list",
            member = M.ChimeWebhookConfiguration,
        },
    },
}

M.DescribeSlackChannelConfigurationsException = {
    type = "structure",
    id = "DescribeSlackChannelConfigurationsException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeSlackChannelConfigurationsInput = {
    type = "structure",
    id = "DescribeSlackChannelConfigurationsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        ChatConfigurationArn = {
            type = "string",
        },
    },
}

M.DescribeSlackChannelConfigurationsOutput = {
    type = "structure",
    id = "DescribeSlackChannelConfigurationsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        SlackChannelConfigurations = {
            type = "list",
            member = M.SlackChannelConfiguration,
        },
    },
}

M.DescribeSlackUserIdentitiesException = {
    type = "structure",
    id = "DescribeSlackUserIdentitiesException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeSlackUserIdentitiesInput = {
    type = "structure",
    id = "DescribeSlackUserIdentitiesInput",
    members = {
        ChatConfigurationArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.SlackUserIdentity = {
    type = "structure",
    id = "SlackUserIdentity",
    members = {
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChatConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SlackTeamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SlackUserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsUserIdentity = {
            type = "string",
        },
    },
}

M.DescribeSlackUserIdentitiesOutput = {
    type = "structure",
    id = "DescribeSlackUserIdentitiesOutput",
    members = {
        SlackUserIdentities = {
            type = "list",
            member = M.SlackUserIdentity,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeSlackWorkspacesException = {
    type = "structure",
    id = "DescribeSlackWorkspacesException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeSlackWorkspacesInput = {
    type = "structure",
    id = "DescribeSlackWorkspacesInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SlackWorkspace = {
    type = "structure",
    id = "SlackWorkspace",
    members = {
        SlackTeamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SlackTeamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
    },
}

M.DescribeSlackWorkspacesOutput = {
    type = "structure",
    id = "DescribeSlackWorkspacesOutput",
    members = {
        SlackWorkspaces = {
            type = "list",
            member = M.SlackWorkspace,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DisassociateFromConfigurationInput = {
    type = "structure",
    id = "DisassociateFromConfigurationInput",
    members = {
        Resource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChatConfiguration = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateFromConfigurationOutput = {
    type = "structure",
    id = "DisassociateFromConfigurationOutput",
}

M.GetAccountPreferencesException = {
    type = "structure",
    id = "GetAccountPreferencesException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetAccountPreferencesInput = {
    type = "structure",
    id = "GetAccountPreferencesInput",
}

M.GetAccountPreferencesOutput = {
    type = "structure",
    id = "GetAccountPreferencesOutput",
    members = {
        AccountPreferences = M.AccountPreferences,
    },
}

M.GetMicrosoftTeamsChannelConfigurationInput = {
    type = "structure",
    id = "GetMicrosoftTeamsChannelConfigurationInput",
    members = {
        ChatConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetMicrosoftTeamsChannelConfigurationOutput = {
    type = "structure",
    id = "GetMicrosoftTeamsChannelConfigurationOutput",
    members = {
        ChannelConfiguration = M.TeamsChannelConfiguration,
    },
}

M.GetTeamsChannelConfigurationException = {
    type = "structure",
    id = "GetTeamsChannelConfigurationException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListAssociationsInput = {
    type = "structure",
    id = "ListAssociationsInput",
    members = {
        ChatConfiguration = {
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

M.ListAssociationsOutput = {
    type = "structure",
    id = "ListAssociationsOutput",
    members = {
        Associations = {
            type = "list",
            member = M.AssociationListing,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMicrosoftTeamsChannelConfigurationsInput = {
    type = "structure",
    id = "ListMicrosoftTeamsChannelConfigurationsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        TeamId = {
            type = "string",
        },
    },
}

M.ListMicrosoftTeamsChannelConfigurationsOutput = {
    type = "structure",
    id = "ListMicrosoftTeamsChannelConfigurationsOutput",
    members = {
        NextToken = {
            type = "string",
        },
        TeamChannelConfigurations = {
            type = "list",
            member = M.TeamsChannelConfiguration,
        },
    },
}

M.ListTeamsChannelConfigurationsException = {
    type = "structure",
    id = "ListTeamsChannelConfigurationsException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListMicrosoftTeamsConfiguredTeamsException = {
    type = "structure",
    id = "ListMicrosoftTeamsConfiguredTeamsException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListMicrosoftTeamsConfiguredTeamsInput = {
    type = "structure",
    id = "ListMicrosoftTeamsConfiguredTeamsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMicrosoftTeamsConfiguredTeamsOutput = {
    type = "structure",
    id = "ListMicrosoftTeamsConfiguredTeamsOutput",
    members = {
        ConfiguredTeams = {
            type = "list",
            member = M.ConfiguredTeam,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMicrosoftTeamsUserIdentitiesException = {
    type = "structure",
    id = "ListMicrosoftTeamsUserIdentitiesException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListMicrosoftTeamsUserIdentitiesInput = {
    type = "structure",
    id = "ListMicrosoftTeamsUserIdentitiesInput",
    members = {
        ChatConfigurationArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.TeamsUserIdentity = {
    type = "structure",
    id = "TeamsUserIdentity",
    members = {
        IamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChatConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TeamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserId = {
            type = "string",
        },
        AwsUserIdentity = {
            type = "string",
        },
        TeamsChannelId = {
            type = "string",
        },
        TeamsTenantId = {
            type = "string",
        },
    },
}

M.ListMicrosoftTeamsUserIdentitiesOutput = {
    type = "structure",
    id = "ListMicrosoftTeamsUserIdentitiesOutput",
    members = {
        TeamsUserIdentities = {
            type = "list",
            member = M.TeamsUserIdentity,
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
        ResourceARN = {
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
            type = "list",
            member = M.Tag,
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceARN = {
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

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceARN = {
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

M.UpdateAccountPreferencesException = {
    type = "structure",
    id = "UpdateAccountPreferencesException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateAccountPreferencesInput = {
    type = "structure",
    id = "UpdateAccountPreferencesInput",
    members = {
        UserAuthorizationRequired = {
            type = "boolean",
        },
        TrainingDataCollectionEnabled = {
            type = "boolean",
        },
    },
}

M.UpdateAccountPreferencesOutput = {
    type = "structure",
    id = "UpdateAccountPreferencesOutput",
    members = {
        AccountPreferences = M.AccountPreferences,
    },
}

M.UpdateChimeWebhookConfigurationException = {
    type = "structure",
    id = "UpdateChimeWebhookConfigurationException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateChimeWebhookConfigurationInput = {
    type = "structure",
    id = "UpdateChimeWebhookConfigurationInput",
    members = {
        ChatConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WebhookDescription = {
            type = "string",
        },
        WebhookUrl = {
            type = "string",
        },
        SnsTopicArns = {
            type = "list",
            member = { type = "string" },
        },
        IamRoleArn = {
            type = "string",
        },
        LoggingLevel = {
            type = "string",
        },
    },
}

M.UpdateChimeWebhookConfigurationOutput = {
    type = "structure",
    id = "UpdateChimeWebhookConfigurationOutput",
    members = {
        WebhookConfiguration = M.ChimeWebhookConfiguration,
    },
}

M.UpdateMicrosoftTeamsChannelConfigurationInput = {
    type = "structure",
    id = "UpdateMicrosoftTeamsChannelConfigurationInput",
    members = {
        ChatConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelName = {
            type = "string",
        },
        SnsTopicArns = {
            type = "list",
            member = { type = "string" },
        },
        IamRoleArn = {
            type = "string",
        },
        LoggingLevel = {
            type = "string",
        },
        GuardrailPolicyArns = {
            type = "list",
            member = { type = "string" },
        },
        UserAuthorizationRequired = {
            type = "boolean",
        },
    },
}

M.UpdateMicrosoftTeamsChannelConfigurationOutput = {
    type = "structure",
    id = "UpdateMicrosoftTeamsChannelConfigurationOutput",
    members = {
        ChannelConfiguration = M.TeamsChannelConfiguration,
    },
}

M.UpdateTeamsChannelConfigurationException = {
    type = "structure",
    id = "UpdateTeamsChannelConfigurationException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateSlackChannelConfigurationException = {
    type = "structure",
    id = "UpdateSlackChannelConfigurationException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateSlackChannelConfigurationInput = {
    type = "structure",
    id = "UpdateSlackChannelConfigurationInput",
    members = {
        ChatConfigurationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SlackChannelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SlackChannelName = {
            type = "string",
        },
        SnsTopicArns = {
            type = "list",
            member = { type = "string" },
        },
        IamRoleArn = {
            type = "string",
        },
        LoggingLevel = {
            type = "string",
        },
        GuardrailPolicyArns = {
            type = "list",
            member = { type = "string" },
        },
        UserAuthorizationRequired = {
            type = "boolean",
        },
    },
}

M.UpdateSlackChannelConfigurationOutput = {
    type = "structure",
    id = "UpdateSlackChannelConfigurationOutput",
    members = {
        ChannelConfiguration = M.SlackChannelConfiguration,
    },
}

return M
