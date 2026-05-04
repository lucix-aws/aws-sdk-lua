local M = {}

M.DeletionProtectionSettings = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
        },
        ProtectionPeriodInMinutes = {
            type = "number",
        },
    },
}

M.Action = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Uri = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.ActionInvocation = {
    type = "structure",
    members = {
        ExtensionIdentifier = {
            type = "string",
        },
        ActionName = {
            type = "string",
        },
        Uri = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        InvocationId = {
            type = "string",
        },
    },
}

M.ActionPoint = {
    PRE_CREATE_HOSTED_CONFIGURATION_VERSION = "PRE_CREATE_HOSTED_CONFIGURATION_VERSION",
    PRE_START_DEPLOYMENT = "PRE_START_DEPLOYMENT",
    AT_DEPLOYMENT_TICK = "AT_DEPLOYMENT_TICK",
    ON_DEPLOYMENT_START = "ON_DEPLOYMENT_START",
    ON_DEPLOYMENT_STEP = "ON_DEPLOYMENT_STEP",
    ON_DEPLOYMENT_BAKING = "ON_DEPLOYMENT_BAKING",
    ON_DEPLOYMENT_COMPLETE = "ON_DEPLOYMENT_COMPLETE",
    ON_DEPLOYMENT_ROLLED_BACK = "ON_DEPLOYMENT_ROLLED_BACK",
}

M.InvalidConfigurationDetail = {
    type = "structure",
    members = {
        Constraint = {
            type = "string",
        },
        Location = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.BadRequestDetails = {
    type = "union",
    members = {
        InvalidConfiguration = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BadRequestReason = {
    INVALID_CONFIGURATION = "InvalidConfiguration",
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        Details = {
            type = "union",
        },
    },
}

M.CreateApplicationInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
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

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidatorType = {
    JSON_SCHEMA = "JSON_SCHEMA",
    LAMBDA = "LAMBDA",
}

M.Validator = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Content = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateConfigurationProfileInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        LocationUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetrievalRoleArn = {
            type = "string",
        },
        Validators = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Type = {
            type = "string",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
    },
}

M.CreateConfigurationProfileOutput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        RetrievalRoleArn = {
            type = "string",
        },
        Validators = {
            type = "list",
            member_type = "structure",
        },
        Type = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceName = {
            type = "string",
        },
    },
}

M.GrowthType = {
    LINEAR = "LINEAR",
    EXPONENTIAL = "EXPONENTIAL",
}

M.ReplicateTo = {
    NONE = "NONE",
    SSM_DOCUMENT = "SSM_DOCUMENT",
}

M.CreateDeploymentStrategyInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DeploymentDurationInMinutes = {
            type = "number",
            traits = {
                required = true,
            },
        },
        FinalBakeTimeInMinutes = {
            type = "number",
        },
        GrowthFactor = {
            type = "number",
            traits = {
                required = true,
            },
        },
        GrowthType = {
            type = "string",
        },
        ReplicateTo = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateDeploymentStrategyOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DeploymentDurationInMinutes = {
            type = "number",
        },
        GrowthType = {
            type = "string",
        },
        GrowthFactor = {
            type = "number",
        },
        FinalBakeTimeInMinutes = {
            type = "number",
        },
        ReplicateTo = {
            type = "string",
        },
    },
}

M.Monitor = {
    type = "structure",
    members = {
        AlarmArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlarmRoleArn = {
            type = "string",
        },
    },
}

M.CreateEnvironmentInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Monitors = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.EnvironmentState = {
    READY_FOR_DEPLOYMENT = "READY_FOR_DEPLOYMENT",
    DEPLOYING = "DEPLOYING",
    ROLLING_BACK = "ROLLING_BACK",
    ROLLED_BACK = "ROLLED_BACK",
    REVERTED = "REVERTED",
}

M.CreateEnvironmentOutput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Monitors = {
            type = "list",
            member_type = "structure",
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

M.Parameter = {
    type = "structure",
    members = {
        Description = {
            type = "string",
        },
        Required = {
            type = "boolean",
        },
        Dynamic = {
            type = "boolean",
        },
    },
}

M.CreateExtensionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Actions = {
            type = "map",
            key_type = "string",
            value_type = "list",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        LatestVersionNumber = {
            type = "number",
            traits = {
                http_header = "Latest-Version-Number",
            },
        },
    },
}

M.CreateExtensionOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VersionNumber = {
            type = "number",
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Actions = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.CreateExtensionAssociationInput = {
    type = "structure",
    members = {
        ExtensionIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExtensionVersionNumber = {
            type = "number",
        },
        ResourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateExtensionAssociationOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        ExtensionArn = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ExtensionVersionNumber = {
            type = "number",
        },
    },
}

M.CreateHostedConfigurationVersionInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConfigurationProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
            traits = {
                http_header = "Description",
            },
        },
        Content = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
                required = true,
            },
        },
        LatestVersionNumber = {
            type = "number",
            traits = {
                http_header = "Latest-Version-Number",
            },
        },
        VersionLabel = {
            type = "string",
            traits = {
                http_header = "VersionLabel",
            },
        },
    },
}

M.CreateHostedConfigurationVersionOutput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_header = "Application-Id",
            },
        },
        ConfigurationProfileId = {
            type = "string",
            traits = {
                http_header = "Configuration-Profile-Id",
            },
        },
        VersionNumber = {
            type = "number",
            traits = {
                http_header = "Version-Number",
            },
        },
        Description = {
            type = "string",
            traits = {
                http_header = "Description",
            },
        },
        Content = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        VersionLabel = {
            type = "string",
            traits = {
                http_header = "VersionLabel",
            },
        },
        KmsKeyArn = {
            type = "string",
            traits = {
                http_header = "KmsKeyArn",
            },
        },
    },
}

M.BytesMeasure = {
    KILOBYTES = "KILOBYTES",
}

M.PayloadTooLargeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Measure = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
        Size = {
            type = "number",
        },
    },
}

M.DeleteApplicationInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApplicationOutput = {
    type = "structure",
}

M.DeletionProtectionCheck = {
    ACCOUNT_DEFAULT = "ACCOUNT_DEFAULT",
    APPLY = "APPLY",
    BYPASS = "BYPASS",
}

M.DeleteConfigurationProfileInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConfigurationProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeletionProtectionCheck = {
            type = "string",
            traits = {
                http_header = "x-amzn-deletion-protection-check",
            },
        },
    },
}

M.DeleteConfigurationProfileOutput = {
    type = "structure",
}

M.DeleteDeploymentStrategyInput = {
    type = "structure",
    members = {
        DeploymentStrategyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDeploymentStrategyOutput = {
    type = "structure",
}

M.DeleteEnvironmentInput = {
    type = "structure",
    members = {
        EnvironmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeletionProtectionCheck = {
            type = "string",
            traits = {
                http_header = "x-amzn-deletion-protection-check",
            },
        },
    },
}

M.DeleteEnvironmentOutput = {
    type = "structure",
}

M.DeleteExtensionInput = {
    type = "structure",
    members = {
        ExtensionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionNumber = {
            type = "number",
            traits = {
                http_query = "version",
            },
        },
    },
}

M.DeleteExtensionOutput = {
    type = "structure",
}

M.DeleteExtensionAssociationInput = {
    type = "structure",
    members = {
        ExtensionAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteExtensionAssociationOutput = {
    type = "structure",
}

M.DeleteHostedConfigurationVersionInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConfigurationProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionNumber = {
            type = "number",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteHostedConfigurationVersionOutput = {
    type = "structure",
}

M.GetAccountSettingsInput = {
    type = "structure",
}

M.GetAccountSettingsOutput = {
    type = "structure",
    members = {
        DeletionProtection = {
            type = "structure",
        },
    },
}

M.GetApplicationInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetApplicationOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.GetConfigurationInput = {
    type = "structure",
    members = {
        Application = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Environment = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Configuration = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ClientId = {
            type = "string",
            traits = {
                http_query = "client_id",
                required = true,
            },
        },
        ClientConfigurationVersion = {
            type = "string",
            traits = {
                http_query = "client_configuration_version",
            },
        },
    },
}

M.GetConfigurationOutput = {
    type = "structure",
    members = {
        Content = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        ConfigurationVersion = {
            type = "string",
            traits = {
                http_header = "Configuration-Version",
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
    },
}

M.GetConfigurationProfileInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConfigurationProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConfigurationProfileOutput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        RetrievalRoleArn = {
            type = "string",
        },
        Validators = {
            type = "list",
            member_type = "structure",
        },
        Type = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
    },
}

M.GetDeploymentInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EnvironmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeploymentNumber = {
            type = "number",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AppliedExtension = {
    type = "structure",
    members = {
        ExtensionId = {
            type = "string",
        },
        ExtensionAssociationId = {
            type = "string",
        },
        VersionNumber = {
            type = "number",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.DeploymentEventType = {
    PERCENTAGE_UPDATED = "PERCENTAGE_UPDATED",
    ROLLBACK_STARTED = "ROLLBACK_STARTED",
    ROLLBACK_COMPLETED = "ROLLBACK_COMPLETED",
    BAKE_TIME_STARTED = "BAKE_TIME_STARTED",
    DEPLOYMENT_STARTED = "DEPLOYMENT_STARTED",
    DEPLOYMENT_COMPLETED = "DEPLOYMENT_COMPLETED",
    REVERT_COMPLETED = "REVERT_COMPLETED",
}

M.TriggeredBy = {
    USER = "USER",
    APPCONFIG = "APPCONFIG",
    CLOUDWATCH_ALARM = "CLOUDWATCH_ALARM",
    INTERNAL_ERROR = "INTERNAL_ERROR",
}

M.DeploymentEvent = {
    type = "structure",
    members = {
        EventType = {
            type = "string",
        },
        TriggeredBy = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ActionInvocations = {
            type = "list",
            member_type = "structure",
        },
        OccurredAt = {
            type = "timestamp",
        },
    },
}

M.DeploymentState = {
    BAKING = "BAKING",
    VALIDATING = "VALIDATING",
    DEPLOYING = "DEPLOYING",
    COMPLETE = "COMPLETE",
    ROLLING_BACK = "ROLLING_BACK",
    ROLLED_BACK = "ROLLED_BACK",
    REVERTED = "REVERTED",
}

M.GetDeploymentOutput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        DeploymentStrategyId = {
            type = "string",
        },
        ConfigurationProfileId = {
            type = "string",
        },
        DeploymentNumber = {
            type = "number",
        },
        ConfigurationName = {
            type = "string",
        },
        ConfigurationLocationUri = {
            type = "string",
        },
        ConfigurationVersion = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DeploymentDurationInMinutes = {
            type = "number",
        },
        GrowthType = {
            type = "string",
        },
        GrowthFactor = {
            type = "number",
        },
        FinalBakeTimeInMinutes = {
            type = "number",
        },
        State = {
            type = "string",
        },
        EventLog = {
            type = "list",
            member_type = "structure",
        },
        PercentageComplete = {
            type = "number",
        },
        StartedAt = {
            type = "timestamp",
        },
        CompletedAt = {
            type = "timestamp",
        },
        AppliedExtensions = {
            type = "list",
            member_type = "structure",
        },
        KmsKeyArn = {
            type = "string",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
        VersionLabel = {
            type = "string",
        },
    },
}

M.GetDeploymentStrategyInput = {
    type = "structure",
    members = {
        DeploymentStrategyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDeploymentStrategyOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DeploymentDurationInMinutes = {
            type = "number",
        },
        GrowthType = {
            type = "string",
        },
        GrowthFactor = {
            type = "number",
        },
        FinalBakeTimeInMinutes = {
            type = "number",
        },
        ReplicateTo = {
            type = "string",
        },
    },
}

M.GetEnvironmentInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EnvironmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetEnvironmentOutput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Monitors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetExtensionInput = {
    type = "structure",
    members = {
        ExtensionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionNumber = {
            type = "number",
            traits = {
                http_query = "version_number",
            },
        },
    },
}

M.GetExtensionOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VersionNumber = {
            type = "number",
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Actions = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.GetExtensionAssociationInput = {
    type = "structure",
    members = {
        ExtensionAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetExtensionAssociationOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        ExtensionArn = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ExtensionVersionNumber = {
            type = "number",
        },
    },
}

M.GetHostedConfigurationVersionInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConfigurationProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        VersionNumber = {
            type = "number",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetHostedConfigurationVersionOutput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_header = "Application-Id",
            },
        },
        ConfigurationProfileId = {
            type = "string",
            traits = {
                http_header = "Configuration-Profile-Id",
            },
        },
        VersionNumber = {
            type = "number",
            traits = {
                http_header = "Version-Number",
            },
        },
        Description = {
            type = "string",
            traits = {
                http_header = "Description",
            },
        },
        Content = {
            type = "blob",
            traits = {
                http_payload = true,
            },
        },
        ContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        VersionLabel = {
            type = "string",
            traits = {
                http_header = "VersionLabel",
            },
        },
        KmsKeyArn = {
            type = "string",
            traits = {
                http_header = "KmsKeyArn",
            },
        },
    },
}

M.ListApplicationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max_results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
    },
}

M.Application = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.ListApplicationsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConfigurationProfilesInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max_results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
        Type = {
            type = "string",
            traits = {
                http_query = "type",
            },
        },
    },
}

M.ConfigurationProfileSummary = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        ValidatorTypes = {
            type = "list",
            member_type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.ListConfigurationProfilesOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDeploymentsInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EnvironmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max_results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
    },
}

M.DeploymentSummary = {
    type = "structure",
    members = {
        DeploymentNumber = {
            type = "number",
        },
        ConfigurationName = {
            type = "string",
        },
        ConfigurationVersion = {
            type = "string",
        },
        DeploymentDurationInMinutes = {
            type = "number",
        },
        GrowthType = {
            type = "string",
        },
        GrowthFactor = {
            type = "number",
        },
        FinalBakeTimeInMinutes = {
            type = "number",
        },
        State = {
            type = "string",
        },
        PercentageComplete = {
            type = "number",
        },
        StartedAt = {
            type = "timestamp",
        },
        CompletedAt = {
            type = "timestamp",
        },
        VersionLabel = {
            type = "string",
        },
    },
}

M.ListDeploymentsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDeploymentStrategiesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max_results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
    },
}

M.DeploymentStrategy = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DeploymentDurationInMinutes = {
            type = "number",
        },
        GrowthType = {
            type = "string",
        },
        GrowthFactor = {
            type = "number",
        },
        FinalBakeTimeInMinutes = {
            type = "number",
        },
        ReplicateTo = {
            type = "string",
        },
    },
}

M.ListDeploymentStrategiesOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEnvironmentsInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max_results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
    },
}

M.Environment = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Monitors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListEnvironmentsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListExtensionAssociationsInput = {
    type = "structure",
    members = {
        ResourceIdentifier = {
            type = "string",
            traits = {
                http_query = "resource_identifier",
            },
        },
        ExtensionIdentifier = {
            type = "string",
            traits = {
                http_query = "extension_identifier",
            },
        },
        ExtensionVersionNumber = {
            type = "number",
            traits = {
                http_query = "extension_version_number",
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max_results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
    },
}

M.ExtensionAssociationSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        ExtensionArn = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
    },
}

M.ListExtensionAssociationsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListExtensionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max_results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
        Name = {
            type = "string",
            traits = {
                http_query = "name",
            },
        },
    },
}

M.ExtensionSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VersionNumber = {
            type = "number",
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.ListExtensionsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListHostedConfigurationVersionsInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConfigurationProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "max_results",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "next_token",
            },
        },
        VersionLabel = {
            type = "string",
            traits = {
                http_query = "version_label",
            },
        },
    },
}

M.HostedConfigurationVersionSummary = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        ConfigurationProfileId = {
            type = "string",
        },
        VersionNumber = {
            type = "number",
        },
        Description = {
            type = "string",
        },
        ContentType = {
            type = "string",
        },
        VersionLabel = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
    },
}

M.ListHostedConfigurationVersionsOutput = {
    type = "structure",
    members = {
        Items = {
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
        ResourceArn = {
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
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartDeploymentInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EnvironmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeploymentStrategyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConfigurationVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
        DynamicExtensionParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartDeploymentOutput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        DeploymentStrategyId = {
            type = "string",
        },
        ConfigurationProfileId = {
            type = "string",
        },
        DeploymentNumber = {
            type = "number",
        },
        ConfigurationName = {
            type = "string",
        },
        ConfigurationLocationUri = {
            type = "string",
        },
        ConfigurationVersion = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DeploymentDurationInMinutes = {
            type = "number",
        },
        GrowthType = {
            type = "string",
        },
        GrowthFactor = {
            type = "number",
        },
        FinalBakeTimeInMinutes = {
            type = "number",
        },
        State = {
            type = "string",
        },
        EventLog = {
            type = "list",
            member_type = "structure",
        },
        PercentageComplete = {
            type = "number",
        },
        StartedAt = {
            type = "timestamp",
        },
        CompletedAt = {
            type = "timestamp",
        },
        AppliedExtensions = {
            type = "list",
            member_type = "structure",
        },
        KmsKeyArn = {
            type = "string",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
        VersionLabel = {
            type = "string",
        },
    },
}

M.StopDeploymentInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EnvironmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeploymentNumber = {
            type = "number",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AllowRevert = {
            type = "boolean",
            traits = {
                http_header = "Allow-Revert",
            },
        },
    },
}

M.StopDeploymentOutput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        EnvironmentId = {
            type = "string",
        },
        DeploymentStrategyId = {
            type = "string",
        },
        ConfigurationProfileId = {
            type = "string",
        },
        DeploymentNumber = {
            type = "number",
        },
        ConfigurationName = {
            type = "string",
        },
        ConfigurationLocationUri = {
            type = "string",
        },
        ConfigurationVersion = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DeploymentDurationInMinutes = {
            type = "number",
        },
        GrowthType = {
            type = "string",
        },
        GrowthFactor = {
            type = "number",
        },
        FinalBakeTimeInMinutes = {
            type = "number",
        },
        State = {
            type = "string",
        },
        EventLog = {
            type = "list",
            member_type = "structure",
        },
        PercentageComplete = {
            type = "number",
        },
        StartedAt = {
            type = "timestamp",
        },
        CompletedAt = {
            type = "timestamp",
        },
        AppliedExtensions = {
            type = "list",
            member_type = "structure",
        },
        KmsKeyArn = {
            type = "string",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
        VersionLabel = {
            type = "string",
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
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
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

M.UpdateAccountSettingsInput = {
    type = "structure",
    members = {
        DeletionProtection = {
            type = "structure",
        },
    },
}

M.UpdateAccountSettingsOutput = {
    type = "structure",
    members = {
        DeletionProtection = {
            type = "structure",
        },
    },
}

M.UpdateApplicationInput = {
    type = "structure",
    members = {
        ApplicationId = {
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

M.UpdateApplicationOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.UpdateConfigurationProfileInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConfigurationProfileId = {
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
        RetrievalRoleArn = {
            type = "string",
        },
        Validators = {
            type = "list",
            member_type = "structure",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
    },
}

M.UpdateConfigurationProfileOutput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        LocationUri = {
            type = "string",
        },
        RetrievalRoleArn = {
            type = "string",
        },
        Validators = {
            type = "list",
            member_type = "structure",
        },
        Type = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
        KmsKeyIdentifier = {
            type = "string",
        },
    },
}

M.UpdateDeploymentStrategyInput = {
    type = "structure",
    members = {
        DeploymentStrategyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        DeploymentDurationInMinutes = {
            type = "number",
        },
        FinalBakeTimeInMinutes = {
            type = "number",
        },
        GrowthFactor = {
            type = "number",
        },
        GrowthType = {
            type = "string",
        },
    },
}

M.UpdateDeploymentStrategyOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        DeploymentDurationInMinutes = {
            type = "number",
        },
        GrowthType = {
            type = "string",
        },
        GrowthFactor = {
            type = "number",
        },
        FinalBakeTimeInMinutes = {
            type = "number",
        },
        ReplicateTo = {
            type = "string",
        },
    },
}

M.UpdateEnvironmentInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        EnvironmentId = {
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
        Monitors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateEnvironmentOutput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Monitors = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateExtensionInput = {
    type = "structure",
    members = {
        ExtensionIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Actions = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        VersionNumber = {
            type = "number",
        },
    },
}

M.UpdateExtensionOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        VersionNumber = {
            type = "number",
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Actions = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.UpdateExtensionAssociationInput = {
    type = "structure",
    members = {
        ExtensionAssociationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.UpdateExtensionAssociationOutput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        ExtensionArn = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ExtensionVersionNumber = {
            type = "number",
        },
    },
}

M.ValidateConfigurationInput = {
    type = "structure",
    members = {
        ApplicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConfigurationProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConfigurationVersion = {
            type = "string",
            traits = {
                http_query = "configuration_version",
                required = true,
            },
        },
    },
}

M.ValidateConfigurationOutput = {
    type = "structure",
}

return M
