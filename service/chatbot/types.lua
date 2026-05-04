local M = {}

M.AccountPreferences = {
    type = "structure",
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
}

M.InternalServiceError = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnauthorizedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssociationListing = {
    type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateChimeWebhookConfigurationException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateChimeWebhookConfigurationInput = {
    type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
        },
    },
}

M.CreateChimeWebhookConfigurationOutput = {
    type = "structure",
    members = {
        WebhookConfiguration = {
            type = "structure",
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

M.CustomActionAttachmentCriteriaOperator = {
    HAS_VALUE = "HAS_VALUE",
    EQUALS = "EQUALS",
}

M.CustomActionAttachmentCriteria = {
    type = "structure",
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
    members = {
        NotificationType = {
            type = "string",
        },
        ButtonText = {
            type = "string",
        },
        Criteria = {
            type = "list",
            member_type = "structure",
        },
        Variables = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CustomActionDefinition = {
    type = "structure",
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
    members = {
        Definition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AliasName = {
            type = "string",
        },
        Attachments = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ClientToken = {
            type = "string",
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
            member_type = "string",
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
            member_type = "string",
        },
        UserAuthorizationRequired = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TeamsChannelConfiguration = {
    type = "structure",
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
            member_type = "string",
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
            member_type = "string",
        },
        UserAuthorizationRequired = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
    members = {
        ChannelConfiguration = {
            type = "structure",
        },
    },
}

M.CreateTeamsChannelConfigurationException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateSlackChannelConfigurationException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateSlackChannelConfigurationInput = {
    type = "structure",
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
            member_type = "string",
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
            member_type = "string",
        },
        UserAuthorizationRequired = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SlackChannelConfiguration = {
    type = "structure",
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
            member_type = "string",
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
            member_type = "string",
        },
        UserAuthorizationRequired = {
            type = "boolean",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
    members = {
        ChannelConfiguration = {
            type = "structure",
        },
    },
}

M.CustomAction = {
    type = "structure",
    members = {
        CustomActionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Definition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AliasName = {
            type = "string",
        },
        Attachments = {
            type = "list",
            member_type = "structure",
        },
        ActionName = {
            type = "string",
        },
    },
}

M.DeleteCustomActionInput = {
    type = "structure",
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
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetCustomActionInput = {
    type = "structure",
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
    members = {
        CustomAction = {
            type = "structure",
        },
    },
}

M.ListCustomActionsInput = {
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

M.ListCustomActionsOutput = {
    type = "structure",
    members = {
        CustomActions = {
            type = "list",
            member_type = "string",
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
    members = {
        CustomActionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Definition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AliasName = {
            type = "string",
        },
        Attachments = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateCustomActionOutput = {
    type = "structure",
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
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteChimeWebhookConfigurationInput = {
    type = "structure",
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
}

M.DeleteMicrosoftTeamsChannelConfigurationInput = {
    type = "structure",
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
}

M.DeleteTeamsChannelConfigurationException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteMicrosoftTeamsConfiguredTeamInput = {
    type = "structure",
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
}

M.DeleteTeamsConfiguredTeamException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteMicrosoftTeamsUserIdentityException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteMicrosoftTeamsUserIdentityInput = {
    type = "structure",
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
}

M.DeleteSlackChannelConfigurationException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteSlackChannelConfigurationInput = {
    type = "structure",
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
}

M.DeleteSlackUserIdentityException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteSlackUserIdentityInput = {
    type = "structure",
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
}

M.DeleteSlackWorkspaceAuthorizationFault = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteSlackWorkspaceAuthorizationInput = {
    type = "structure",
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
}

M.DescribeChimeWebhookConfigurationsException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeChimeWebhookConfigurationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
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
    members = {
        NextToken = {
            type = "string",
        },
        WebhookConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeSlackChannelConfigurationsException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeSlackChannelConfigurationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
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
    members = {
        NextToken = {
            type = "string",
        },
        SlackChannelConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeSlackUserIdentitiesException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeSlackUserIdentitiesInput = {
    type = "structure",
    members = {
        ChatConfigurationArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.SlackUserIdentity = {
    type = "structure",
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
    members = {
        SlackUserIdentities = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeSlackWorkspacesException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeSlackWorkspacesInput = {
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

M.SlackWorkspace = {
    type = "structure",
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
    members = {
        SlackWorkspaces = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DisassociateFromConfigurationInput = {
    type = "structure",
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
}

M.GetAccountPreferencesException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.GetAccountPreferencesInput = {
    type = "structure",
}

M.GetAccountPreferencesOutput = {
    type = "structure",
    members = {
        AccountPreferences = {
            type = "structure",
        },
    },
}

M.GetMicrosoftTeamsChannelConfigurationInput = {
    type = "structure",
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
    members = {
        ChannelConfiguration = {
            type = "structure",
        },
    },
}

M.GetTeamsChannelConfigurationException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListAssociationsInput = {
    type = "structure",
    members = {
        ChatConfiguration = {
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

M.ListAssociationsOutput = {
    type = "structure",
    members = {
        Associations = {
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

M.ListMicrosoftTeamsChannelConfigurationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
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
    members = {
        NextToken = {
            type = "string",
        },
        TeamChannelConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListTeamsChannelConfigurationsException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListMicrosoftTeamsConfiguredTeamsException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListMicrosoftTeamsConfiguredTeamsInput = {
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

M.ListMicrosoftTeamsConfiguredTeamsOutput = {
    type = "structure",
    members = {
        ConfiguredTeams = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListMicrosoftTeamsUserIdentitiesException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListMicrosoftTeamsUserIdentitiesInput = {
    type = "structure",
    members = {
        ChatConfigurationArn = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.TeamsUserIdentity = {
    type = "structure",
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
    members = {
        TeamsUserIdentities = {
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
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
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

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
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

M.UpdateAccountPreferencesException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateAccountPreferencesInput = {
    type = "structure",
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
    members = {
        AccountPreferences = {
            type = "structure",
        },
    },
}

M.UpdateChimeWebhookConfigurationException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateChimeWebhookConfigurationInput = {
    type = "structure",
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
            member_type = "string",
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
    members = {
        WebhookConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateMicrosoftTeamsChannelConfigurationInput = {
    type = "structure",
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
            member_type = "string",
        },
        IamRoleArn = {
            type = "string",
        },
        LoggingLevel = {
            type = "string",
        },
        GuardrailPolicyArns = {
            type = "list",
            member_type = "string",
        },
        UserAuthorizationRequired = {
            type = "boolean",
        },
    },
}

M.UpdateMicrosoftTeamsChannelConfigurationOutput = {
    type = "structure",
    members = {
        ChannelConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateTeamsChannelConfigurationException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateSlackChannelConfigurationException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UpdateSlackChannelConfigurationInput = {
    type = "structure",
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
            member_type = "string",
        },
        IamRoleArn = {
            type = "string",
        },
        LoggingLevel = {
            type = "string",
        },
        GuardrailPolicyArns = {
            type = "list",
            member_type = "string",
        },
        UserAuthorizationRequired = {
            type = "boolean",
        },
    },
}

M.UpdateSlackChannelConfigurationOutput = {
    type = "structure",
    members = {
        ChannelConfiguration = {
            type = "structure",
        },
    },
}

return M
