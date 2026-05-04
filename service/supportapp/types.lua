local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AccountType = {
    MANAGEMENT = "management",
    MEMBER = "member",
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

M.NotificationSeverityLevel = {
    NONE = "none",
    ALL = "all",
    HIGH = "high",
}

M.CreateSlackChannelConfigurationInput = {
    type = "structure",
    id = "CreateSlackChannelConfigurationInput",
    members = {
        teamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelName = {
            type = "string",
        },
        notifyOnCreateOrReopenCase = {
            type = "boolean",
        },
        notifyOnAddCorrespondenceToCase = {
            type = "boolean",
        },
        notifyOnResolveCase = {
            type = "boolean",
        },
        notifyOnCaseSeverity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSlackChannelConfigurationOutput = {
    type = "structure",
    id = "CreateSlackChannelConfigurationOutput",
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
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
        },
    },
}

M.DeleteAccountAliasInput = {
    type = "structure",
    id = "DeleteAccountAliasInput",
}

M.DeleteAccountAliasOutput = {
    type = "structure",
    id = "DeleteAccountAliasOutput",
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

M.DeleteSlackChannelConfigurationInput = {
    type = "structure",
    id = "DeleteSlackChannelConfigurationInput",
    members = {
        teamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelId = {
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

M.DeleteSlackWorkspaceConfigurationInput = {
    type = "structure",
    id = "DeleteSlackWorkspaceConfigurationInput",
    members = {
        teamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSlackWorkspaceConfigurationOutput = {
    type = "structure",
    id = "DeleteSlackWorkspaceConfigurationOutput",
}

M.GetAccountAliasInput = {
    type = "structure",
    id = "GetAccountAliasInput",
}

M.GetAccountAliasOutput = {
    type = "structure",
    id = "GetAccountAliasOutput",
    members = {
        accountAlias = {
            type = "string",
        },
    },
}

M.ListSlackChannelConfigurationsInput = {
    type = "structure",
    id = "ListSlackChannelConfigurationsInput",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.SlackChannelConfiguration = {
    type = "structure",
    id = "SlackChannelConfiguration",
    members = {
        teamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelName = {
            type = "string",
        },
        notifyOnCreateOrReopenCase = {
            type = "boolean",
        },
        notifyOnAddCorrespondenceToCase = {
            type = "boolean",
        },
        notifyOnResolveCase = {
            type = "boolean",
        },
        notifyOnCaseSeverity = {
            type = "string",
        },
        channelRoleArn = {
            type = "string",
        },
    },
}

M.ListSlackChannelConfigurationsOutput = {
    type = "structure",
    id = "ListSlackChannelConfigurationsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        slackChannelConfigurations = {
            type = "list",
            member = M.SlackChannelConfiguration,
            traits = {
                required = true,
            },
        },
    },
}

M.ListSlackWorkspaceConfigurationsInput = {
    type = "structure",
    id = "ListSlackWorkspaceConfigurationsInput",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.SlackWorkspaceConfiguration = {
    type = "structure",
    id = "SlackWorkspaceConfiguration",
    members = {
        teamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        teamName = {
            type = "string",
        },
        allowOrganizationMemberAccount = {
            type = "boolean",
        },
    },
}

M.ListSlackWorkspaceConfigurationsOutput = {
    type = "structure",
    id = "ListSlackWorkspaceConfigurationsOutput",
    members = {
        nextToken = {
            type = "string",
        },
        slackWorkspaceConfigurations = {
            type = "list",
            member = M.SlackWorkspaceConfiguration,
        },
    },
}

M.PutAccountAliasInput = {
    type = "structure",
    id = "PutAccountAliasInput",
    members = {
        accountAlias = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutAccountAliasOutput = {
    type = "structure",
    id = "PutAccountAliasOutput",
}

M.RegisterSlackWorkspaceForOrganizationInput = {
    type = "structure",
    id = "RegisterSlackWorkspaceForOrganizationInput",
    members = {
        teamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterSlackWorkspaceForOrganizationOutput = {
    type = "structure",
    id = "RegisterSlackWorkspaceForOrganizationOutput",
    members = {
        teamId = {
            type = "string",
        },
        teamName = {
            type = "string",
        },
        accountType = {
            type = "string",
        },
    },
}

M.UpdateSlackChannelConfigurationInput = {
    type = "structure",
    id = "UpdateSlackChannelConfigurationInput",
    members = {
        teamId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channelName = {
            type = "string",
        },
        notifyOnCreateOrReopenCase = {
            type = "boolean",
        },
        notifyOnAddCorrespondenceToCase = {
            type = "boolean",
        },
        notifyOnResolveCase = {
            type = "boolean",
        },
        notifyOnCaseSeverity = {
            type = "string",
        },
        channelRoleArn = {
            type = "string",
        },
    },
}

M.UpdateSlackChannelConfigurationOutput = {
    type = "structure",
    id = "UpdateSlackChannelConfigurationOutput",
    members = {
        teamId = {
            type = "string",
        },
        channelId = {
            type = "string",
        },
        channelName = {
            type = "string",
        },
        notifyOnCreateOrReopenCase = {
            type = "boolean",
        },
        notifyOnAddCorrespondenceToCase = {
            type = "boolean",
        },
        notifyOnResolveCase = {
            type = "boolean",
        },
        notifyOnCaseSeverity = {
            type = "string",
        },
        channelRoleArn = {
            type = "string",
        },
    },
}

return M
