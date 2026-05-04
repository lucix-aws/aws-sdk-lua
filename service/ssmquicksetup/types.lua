local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConfigurationDefinition = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateConfigurationManagerInput = {
    type = "structure",
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
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
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
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteConfigurationManagerInput = {
    type = "structure",
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

M.Filter = {
    type = "structure",
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
}

M.ServiceSettings = {
    type = "structure",
    members = {
        ExplorerEnablingRoleArn = {
            type = "string",
        },
    },
}

M.GetServiceSettingsOutput = {
    type = "structure",
    members = {
        ServiceSettings = M.ServiceSettings,
    },
}

M.ListConfigurationManagersInput = {
    type = "structure",
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
}

M.QuickSetupTypeOutput = {
    type = "structure",
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
    members = {
        QuickSetupTypeList = {
            type = "list",
            member = M.QuickSetupTypeOutput,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
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
    members = {
        Tags = {
            type = "list",
            member = M.TagEntry,
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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
}

M.UntagResourceInput = {
    type = "structure",
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
}

M.UpdateConfigurationDefinitionInput = {
    type = "structure",
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
}

M.UpdateConfigurationManagerInput = {
    type = "structure",
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
}

M.UpdateServiceSettingsInput = {
    type = "structure",
    members = {
        ExplorerEnablingRoleArn = {
            type = "string",
        },
    },
}

M.UpdateServiceSettingsOutput = {
    type = "structure",
}

return M
