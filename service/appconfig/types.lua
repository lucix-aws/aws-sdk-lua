local M = {}

M.DeletionProtectionSettings = {
    type = "structure",
    members = {
        Enabled = {
            type = "boolean",
            traits = {
                default = nil,
            },
        },
        ProtectionPeriodInMinutes = {
            type = "integer",
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
            member = M.InvalidConfigurationDetail,
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
        Details = M.BadRequestDetails,
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
            key = { type = "string" },
            value = { type = "string" },
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
            member = M.Validator,
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = M.Validator,
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
            type = "integer",
            traits = {
                default = nil,
                required = true,
            },
        },
        FinalBakeTimeInMinutes = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        GrowthFactor = {
            type = "float",
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
            key = { type = "string" },
            value = { type = "string" },
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        GrowthType = {
            type = "string",
        },
        GrowthFactor = {
            type = "float",
        },
        FinalBakeTimeInMinutes = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Monitor,
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = M.Monitor,
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
            traits = {
                default = false,
            },
        },
        Dynamic = {
            type = "boolean",
            traits = {
                default = false,
            },
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
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = M.Parameter,
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        LatestVersionNumber = {
            type = "integer",
            traits = {
                default = nil,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Actions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = M.Parameter,
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
            type = "integer",
            traits = {
                default = nil,
            },
        },
        ResourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
        },
        ExtensionVersionNumber = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            type = "integer",
            traits = {
                default = nil,
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
            type = "integer",
            traits = {
                default = 0,
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
            type = "float",
            traits = {
                default = 0,
            },
        },
        Size = {
            type = "float",
            traits = {
                default = 0,
            },
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
            type = "integer",
            traits = {
                default = nil,
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
            type = "integer",
            traits = {
                default = nil,
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
        DeletionProtection = M.DeletionProtectionSettings,
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
            member = M.Validator,
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
            type = "integer",
            traits = {
                default = nil,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = M.ActionInvocation,
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        GrowthType = {
            type = "string",
        },
        GrowthFactor = {
            type = "float",
        },
        FinalBakeTimeInMinutes = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        State = {
            type = "string",
        },
        EventLog = {
            type = "list",
            member = M.DeploymentEvent,
        },
        PercentageComplete = {
            type = "float",
        },
        StartedAt = {
            type = "timestamp",
        },
        CompletedAt = {
            type = "timestamp",
        },
        AppliedExtensions = {
            type = "list",
            member = M.AppliedExtension,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        GrowthType = {
            type = "string",
        },
        GrowthFactor = {
            type = "float",
        },
        FinalBakeTimeInMinutes = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Monitor,
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
            type = "integer",
            traits = {
                default = nil,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Actions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = M.Parameter,
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
            key = { type = "string" },
            value = { type = "string" },
        },
        ExtensionVersionNumber = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            type = "integer",
            traits = {
                default = nil,
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
            type = "integer",
            traits = {
                default = 0,
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
            type = "integer",
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
            member = M.Application,
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
            type = "integer",
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
            member = { type = "string" },
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
            member = M.ConfigurationProfileSummary,
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
            type = "integer",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        ConfigurationName = {
            type = "string",
        },
        ConfigurationVersion = {
            type = "string",
        },
        DeploymentDurationInMinutes = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        GrowthType = {
            type = "string",
        },
        GrowthFactor = {
            type = "float",
        },
        FinalBakeTimeInMinutes = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        State = {
            type = "string",
        },
        PercentageComplete = {
            type = "float",
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
            member = M.DeploymentSummary,
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
            type = "integer",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        GrowthType = {
            type = "string",
        },
        GrowthFactor = {
            type = "float",
        },
        FinalBakeTimeInMinutes = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.DeploymentStrategy,
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
            type = "integer",
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
            member = M.Monitor,
        },
    },
}

M.ListEnvironmentsOutput = {
    type = "structure",
    members = {
        Items = {
            type = "list",
            member = M.Environment,
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
            type = "integer",
            traits = {
                default = nil,
                http_query = "extension_version_number",
            },
        },
        MaxResults = {
            type = "integer",
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
            member = M.ExtensionAssociationSummary,
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
            type = "integer",
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.ExtensionSummary,
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
            type = "integer",
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.HostedConfigurationVersionSummary,
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
            key = { type = "string" },
            value = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
        },
        KmsKeyIdentifier = {
            type = "string",
        },
        DynamicExtensionParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        GrowthType = {
            type = "string",
        },
        GrowthFactor = {
            type = "float",
        },
        FinalBakeTimeInMinutes = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        State = {
            type = "string",
        },
        EventLog = {
            type = "list",
            member = M.DeploymentEvent,
        },
        PercentageComplete = {
            type = "float",
        },
        StartedAt = {
            type = "timestamp",
        },
        CompletedAt = {
            type = "timestamp",
        },
        AppliedExtensions = {
            type = "list",
            member = M.AppliedExtension,
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
            type = "integer",
            traits = {
                default = nil,
                http_label = true,
                required = true,
            },
        },
        AllowRevert = {
            type = "boolean",
            traits = {
                default = nil,
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
            type = "integer",
            traits = {
                default = 0,
            },
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        GrowthType = {
            type = "string",
        },
        GrowthFactor = {
            type = "float",
        },
        FinalBakeTimeInMinutes = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        State = {
            type = "string",
        },
        EventLog = {
            type = "list",
            member = M.DeploymentEvent,
        },
        PercentageComplete = {
            type = "float",
        },
        StartedAt = {
            type = "timestamp",
        },
        CompletedAt = {
            type = "timestamp",
        },
        AppliedExtensions = {
            type = "list",
            member = M.AppliedExtension,
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

M.UpdateAccountSettingsInput = {
    type = "structure",
    members = {
        DeletionProtection = M.DeletionProtectionSettings,
    },
}

M.UpdateAccountSettingsOutput = {
    type = "structure",
    members = {
        DeletionProtection = M.DeletionProtectionSettings,
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
            member = M.Validator,
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
            member = M.Validator,
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
            type = "integer",
            traits = {
                default = nil,
            },
        },
        FinalBakeTimeInMinutes = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        GrowthFactor = {
            type = "float",
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        GrowthType = {
            type = "string",
        },
        GrowthFactor = {
            type = "float",
        },
        FinalBakeTimeInMinutes = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.Monitor,
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
            member = M.Monitor,
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
            key = { type = "string" },
            value = { type = "list" },
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = M.Parameter,
        },
        VersionNumber = {
            type = "integer",
            traits = {
                default = nil,
            },
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Arn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Actions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        Parameters = {
            type = "map",
            key = { type = "string" },
            value = M.Parameter,
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
            key = { type = "string" },
            value = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
        },
        ExtensionVersionNumber = {
            type = "integer",
            traits = {
                default = 0,
            },
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
