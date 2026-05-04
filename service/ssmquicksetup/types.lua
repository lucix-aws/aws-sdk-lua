local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConfigurationDefinition = {
    type = "structure",
    id = "ConfigurationDefinition",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        TypeVersion = {
            type = "string",
        },
        LocalDeploymentExecutionRoleName = {
            type = "string",
        },
        LocalDeploymentAdministrationRoleArn = {
            type = "string",
        },
        Id = {
            type = "string",
        },
    },
}

M.ConfigurationDefinitionInput = {
    type = "structure",
    id = "ConfigurationDefinitionInput",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        TypeVersion = {
            type = "string",
        },
        LocalDeploymentExecutionRoleName = {
            type = "string",
        },
        LocalDeploymentAdministrationRoleArn = {
            type = "string",
        },
    },
}

M.ConfigurationDefinitionSummary = {
    type = "structure",
    id = "ConfigurationDefinitionSummary",
    members = {
        Id = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        TypeVersion = {
            type = "string",
        },
        FirstClassParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Status = {
    INITIALIZING = "INITIALIZING",
    DEPLOYING = "DEPLOYING",
    SUCCEEDED = "SUCCEEDED",
    DELETING = "DELETING",
    STOPPING = "STOPPING",
    FAILED = "FAILED",
    STOPPED = "STOPPED",
    DELETE_FAILED = "DELETE_FAILED",
    STOP_FAILED = "STOP_FAILED",
    NONE = "NONE",
}

M.StatusType = {
    DEPLOYMENT = "Deployment",
    ASYNC_EXECUTIONS = "AsyncExecutions",
}

M.StatusSummary = {
    type = "structure",
    id = "StatusSummary",
    members = {
        StatusType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        LastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        StatusDetails = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ConfigurationManagerSummary = {
    type = "structure",
    id = "ConfigurationManagerSummary",
    members = {
        ManagerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        StatusSummaries = {
            type = "list",
            member = M.StatusSummary,
        },
        ConfigurationDefinitionSummaries = {
            type = "list",
            member = M.ConfigurationDefinitionSummary,
        },
    },
}

M.ConfigurationSummary = {
    type = "structure",
    id = "ConfigurationSummary",
    members = {
        Id = {
            type = "string",
        },
        ManagerArn = {
            type = "string",
        },
        ConfigurationDefinitionId = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        TypeVersion = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        Account = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        FirstClassParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        StatusSummaries = {
            type = "list",
            member = M.StatusSummary,
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateConfigurationManagerInput = {
    type = "structure",
    id = "CreateConfigurationManagerInput",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ConfigurationDefinitions = {
            type = "list",
            member = M.ConfigurationDefinitionInput,
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateConfigurationManagerOutput = {
    type = "structure",
    id = "CreateConfigurationManagerOutput",
    members = {
        ManagerArn = {
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
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
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
        Message = {
            type = "string",
        },
    },
}

M.DeleteConfigurationManagerInput = {
    type = "structure",
    id = "DeleteConfigurationManagerInput",
    members = {
        ManagerArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConfigurationManagerOutput = {
    type = "structure",
    id = "DeleteConfigurationManagerOutput",
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

M.Filter = {
    type = "structure",
    id = "Filter",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetConfigurationInput = {
    type = "structure",
    id = "GetConfigurationInput",
    members = {
        ConfigurationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConfigurationOutput = {
    type = "structure",
    id = "GetConfigurationOutput",
    members = {
        Id = {
            type = "string",
        },
        ManagerArn = {
            type = "string",
        },
        ConfigurationDefinitionId = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        TypeVersion = {
            type = "string",
        },
        Account = {
            type = "string",
        },
        Region = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        LastModifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        StatusSummaries = {
            type = "list",
            member = M.StatusSummary,
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetConfigurationManagerInput = {
    type = "structure",
    id = "GetConfigurationManagerInput",
    members = {
        ManagerArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConfigurationManagerOutput = {
    type = "structure",
    id = "GetConfigurationManagerOutput",
    members = {
        ManagerArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        CreatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        LastModifiedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        StatusSummaries = {
            type = "list",
            member = M.StatusSummary,
        },
        ConfigurationDefinitions = {
            type = "list",
            member = M.ConfigurationDefinition,
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetServiceSettingsInput = {
    type = "structure",
    id = "GetServiceSettingsInput",
}

M.ServiceSettings = {
    type = "structure",
    id = "ServiceSettings",
    members = {
        ExplorerEnablingRoleArn = {
            type = "string",
        },
    },
}

M.GetServiceSettingsOutput = {
    type = "structure",
    id = "GetServiceSettingsOutput",
    members = {
        ServiceSettings = M.ServiceSettings,
    },
}

M.ListConfigurationManagersInput = {
    type = "structure",
    id = "ListConfigurationManagersInput",
    members = {
        StartingToken = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
    },
}

M.ListConfigurationManagersOutput = {
    type = "structure",
    id = "ListConfigurationManagersOutput",
    members = {
        ConfigurationManagersList = {
            type = "list",
            member = M.ConfigurationManagerSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConfigurationsInput = {
    type = "structure",
    id = "ListConfigurationsInput",
    members = {
        StartingToken = {
            type = "string",
        },
        MaxItems = {
            type = "integer",
        },
        Filters = {
            type = "list",
            member = M.Filter,
        },
        ManagerArn = {
            type = "string",
        },
        ConfigurationDefinitionId = {
            type = "string",
        },
    },
}

M.ListConfigurationsOutput = {
    type = "structure",
    id = "ListConfigurationsOutput",
    members = {
        ConfigurationsList = {
            type = "list",
            member = M.ConfigurationSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListQuickSetupTypesInput = {
    type = "structure",
    id = "ListQuickSetupTypesInput",
}

M.QuickSetupTypeOutput = {
    type = "structure",
    id = "QuickSetupTypeOutput",
    members = {
        Type = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
    },
}

M.ListQuickSetupTypesOutput = {
    type = "structure",
    id = "ListQuickSetupTypesOutput",
    members = {
        QuickSetupTypeList = {
            type = "list",
            member = M.QuickSetupTypeOutput,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TagEntry = {
    type = "structure",
    id = "TagEntry",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.TagEntry,
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
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
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
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

M.UpdateConfigurationDefinitionInput = {
    type = "structure",
    id = "UpdateConfigurationDefinitionInput",
    members = {
        ManagerArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TypeVersion = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LocalDeploymentExecutionRoleName = {
            type = "string",
        },
        LocalDeploymentAdministrationRoleArn = {
            type = "string",
        },
    },
}

M.UpdateConfigurationDefinitionOutput = {
    type = "structure",
    id = "UpdateConfigurationDefinitionOutput",
}

M.UpdateConfigurationManagerInput = {
    type = "structure",
    id = "UpdateConfigurationManagerInput",
    members = {
        ManagerArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateConfigurationManagerOutput = {
    type = "structure",
    id = "UpdateConfigurationManagerOutput",
}

M.UpdateServiceSettingsInput = {
    type = "structure",
    id = "UpdateServiceSettingsInput",
    members = {
        ExplorerEnablingRoleArn = {
            type = "string",
        },
    },
}

M.UpdateServiceSettingsOutput = {
    type = "structure",
    id = "UpdateServiceSettingsOutput",
}

return M
