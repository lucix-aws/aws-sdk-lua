local M = {}

M.AccessDeniedException = {
    type = "structure",
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
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteAccountAliasInput = {
    type = "structure",
}

M.DeleteAccountAliasOutput = {
    type = "structure",
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteSlackChannelConfigurationInput = {
    type = "structure",
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
}

M.DeleteSlackWorkspaceConfigurationInput = {
    type = "structure",
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
}

M.GetAccountAliasInput = {
    type = "structure",
}

M.GetAccountAliasOutput = {
    type = "structure",
    members = {
        accountAlias = {
            type = "string",
        },
    },
}

M.ListSlackChannelConfigurationsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.SlackChannelConfiguration = {
    type = "structure",
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
    members = {
        nextToken = {
            type = "string",
        },
        slackChannelConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSlackWorkspaceConfigurationsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
    },
}

M.SlackWorkspaceConfiguration = {
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
        },
        allowOrganizationMemberAccount = {
            type = "boolean",
        },
    },
}

M.ListSlackWorkspaceConfigurationsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        slackWorkspaceConfigurations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutAccountAliasInput = {
    type = "structure",
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
}

M.RegisterSlackWorkspaceForOrganizationInput = {
    type = "structure",
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
