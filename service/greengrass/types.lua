local M = {}

M.ConnectivityInfo = {
    type = "structure",
    members = {
        HostAddress = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Metadata = {
            type = "string",
        },
        PortNumber = {
            type = "integer",
        },
    },
}

M.Connector = {
    type = "structure",
    members = {
        ConnectorArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
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
    },
}

M.Core = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SyncShadow = {
            type = "boolean",
        },
        ThingArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DefinitionInformation = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        LatestVersionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                json_name = "tags",
            },
        },
    },
}

M.Device = {
    type = "structure",
    members = {
        CertificateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SyncShadow = {
            type = "boolean",
        },
        ThingArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EncodingType = {
    binary = "binary",
    json = "json",
}

M.FunctionIsolationMode = {
    GreengrassContainer = "GreengrassContainer",
    NoContainer = "NoContainer",
}

M.FunctionRunAsConfig = {
    type = "structure",
    members = {
        Gid = {
            type = "integer",
        },
        Uid = {
            type = "integer",
        },
    },
}

M.FunctionExecutionConfig = {
    type = "structure",
    members = {
        IsolationMode = {
            type = "string",
        },
        RunAs = M.FunctionRunAsConfig,
    },
}

M.Permission = {
    ro = "ro",
    rw = "rw",
}

M.ResourceAccessPolicy = {
    type = "structure",
    members = {
        Permission = {
            type = "string",
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FunctionConfigurationEnvironment = {
    type = "structure",
    members = {
        AccessSysfs = {
            type = "boolean",
        },
        Execution = M.FunctionExecutionConfig,
        ResourceAccessPolicies = {
            type = "list",
            member = M.ResourceAccessPolicy,
        },
        Variables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.FunctionConfiguration = {
    type = "structure",
    members = {
        EncodingType = {
            type = "string",
        },
        Environment = M.FunctionConfigurationEnvironment,
        ExecArgs = {
            type = "string",
        },
        Executable = {
            type = "string",
        },
        MemorySize = {
            type = "integer",
        },
        Pinned = {
            type = "boolean",
        },
        Timeout = {
            type = "integer",
        },
        FunctionRuntimeOverride = {
            type = "string",
        },
    },
}

M.Function = {
    type = "structure",
    members = {
        FunctionArn = {
            type = "string",
        },
        FunctionConfiguration = M.FunctionConfiguration,
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GroupCertificateAuthorityProperties = {
    type = "structure",
    members = {
        GroupCertificateAuthorityArn = {
            type = "string",
        },
        GroupCertificateAuthorityId = {
            type = "string",
        },
    },
}

M.GroupInformation = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        LatestVersionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.LoggerComponent = {
    GreengrassSystem = "GreengrassSystem",
    Lambda = "Lambda",
}

M.LoggerLevel = {
    DEBUG = "DEBUG",
    INFO = "INFO",
    WARN = "WARN",
    ERROR = "ERROR",
    FATAL = "FATAL",
}

M.LoggerType = {
    FileSystem = "FileSystem",
    AWSCloudWatch = "AWSCloudWatch",
}

M.Logger = {
    type = "structure",
    members = {
        Component = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Level = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Space = {
            type = "integer",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GroupOwnerSetting = {
    type = "structure",
    members = {
        AutoAddGroupOwner = {
            type = "boolean",
        },
        GroupOwner = {
            type = "string",
        },
    },
}

M.LocalDeviceResourceData = {
    type = "structure",
    members = {
        GroupOwnerSetting = M.GroupOwnerSetting,
        SourcePath = {
            type = "string",
        },
    },
}

M.LocalVolumeResourceData = {
    type = "structure",
    members = {
        DestinationPath = {
            type = "string",
        },
        GroupOwnerSetting = M.GroupOwnerSetting,
        SourcePath = {
            type = "string",
        },
    },
}

M.ResourceDownloadOwnerSetting = {
    type = "structure",
    members = {
        GroupOwner = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupPermission = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3MachineLearningModelResourceData = {
    type = "structure",
    members = {
        DestinationPath = {
            type = "string",
        },
        OwnerSetting = M.ResourceDownloadOwnerSetting,
        S3Uri = {
            type = "string",
        },
    },
}

M.SageMakerMachineLearningModelResourceData = {
    type = "structure",
    members = {
        DestinationPath = {
            type = "string",
        },
        OwnerSetting = M.ResourceDownloadOwnerSetting,
        SageMakerJobArn = {
            type = "string",
        },
    },
}

M.SecretsManagerSecretResourceData = {
    type = "structure",
    members = {
        ARN = {
            type = "string",
        },
        AdditionalStagingLabelsToDownload = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ResourceDataContainer = {
    type = "structure",
    members = {
        LocalDeviceResourceData = M.LocalDeviceResourceData,
        LocalVolumeResourceData = M.LocalVolumeResourceData,
        S3MachineLearningModelResourceData = M.S3MachineLearningModelResourceData,
        SageMakerMachineLearningModelResourceData = M.SageMakerMachineLearningModelResourceData,
        SecretsManagerSecretResourceData = M.SecretsManagerSecretResourceData,
    },
}

M.Resource = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceDataContainer = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResourceDataContainer }),
    },
}

M.Subscription = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Source = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subject = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Target = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VersionInformation = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.AssociateRoleToGroupInput = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateRoleToGroupOutput = {
    type = "structure",
    members = {
        AssociatedAt = {
            type = "string",
        },
    },
}

M.ErrorDetail = {
    type = "structure",
    members = {
        DetailedErrorCode = {
            type = "string",
        },
        DetailedErrorMessage = {
            type = "string",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        ErrorDetails = {
            type = "list",
            member = M.ErrorDetail,
        },
        Message = {
            type = "string",
        },
    },
}

M.InternalServerErrorException = {
    type = "structure",
    error = "server",
    members = {
        ErrorDetails = {
            type = "list",
            member = M.ErrorDetail,
        },
        Message = {
            type = "string",
        },
    },
}

M.AssociateServiceRoleToAccountInput = {
    type = "structure",
    members = {
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateServiceRoleToAccountOutput = {
    type = "structure",
    members = {
        AssociatedAt = {
            type = "string",
        },
    },
}

M.BulkDeployment = {
    type = "structure",
    members = {
        BulkDeploymentArn = {
            type = "string",
        },
        BulkDeploymentId = {
            type = "string",
        },
        CreatedAt = {
            type = "string",
        },
    },
}

M.BulkDeploymentMetrics = {
    type = "structure",
    members = {
        InvalidInputRecords = {
            type = "integer",
        },
        RecordsProcessed = {
            type = "integer",
        },
        RetryAttempts = {
            type = "integer",
        },
    },
}

M.DeploymentType = {
    NewDeployment = "NewDeployment",
    Redeployment = "Redeployment",
    ResetDeployment = "ResetDeployment",
    ForceResetDeployment = "ForceResetDeployment",
}

M.BulkDeploymentResult = {
    type = "structure",
    members = {
        CreatedAt = {
            type = "string",
        },
        DeploymentArn = {
            type = "string",
        },
        DeploymentId = {
            type = "string",
        },
        DeploymentStatus = {
            type = "string",
        },
        DeploymentType = {
            type = "string",
        },
        ErrorDetails = {
            type = "list",
            member = M.ErrorDetail,
        },
        ErrorMessage = {
            type = "string",
        },
        GroupArn = {
            type = "string",
        },
    },
}

M.BulkDeploymentStatus = {
    Initializing = "Initializing",
    Running = "Running",
    Completed = "Completed",
    Stopping = "Stopping",
    Stopped = "Stopped",
    Failed = "Failed",
}

M.ConfigurationSyncStatus = {
    InSync = "InSync",
    OutOfSync = "OutOfSync",
}

M.ConnectorDefinitionVersion = {
    type = "structure",
    members = {
        Connectors = {
            type = "list",
            member = M.Connector,
        },
    },
}

M.CoreDefinitionVersion = {
    type = "structure",
    members = {
        Cores = {
            type = "list",
            member = M.Core,
        },
    },
}

M.CreateConnectorDefinitionInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        InitialVersion = M.ConnectorDefinitionVersion,
        Name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateConnectorDefinitionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        LatestVersionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.CreateConnectorDefinitionVersionInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        ConnectorDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Connectors = {
            type = "list",
            member = M.Connector,
        },
    },
}

M.CreateConnectorDefinitionVersionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.CreateCoreDefinitionInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        InitialVersion = M.CoreDefinitionVersion,
        Name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateCoreDefinitionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        LatestVersionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.CreateCoreDefinitionVersionInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        CoreDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Cores = {
            type = "list",
            member = M.Core,
        },
    },
}

M.CreateCoreDefinitionVersionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.CreateDeploymentInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        DeploymentId = {
            type = "string",
        },
        DeploymentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GroupVersionId = {
            type = "string",
        },
    },
}

M.CreateDeploymentOutput = {
    type = "structure",
    members = {
        DeploymentArn = {
            type = "string",
        },
        DeploymentId = {
            type = "string",
        },
    },
}

M.DeviceDefinitionVersion = {
    type = "structure",
    members = {
        Devices = {
            type = "list",
            member = M.Device,
        },
    },
}

M.CreateDeviceDefinitionInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        InitialVersion = M.DeviceDefinitionVersion,
        Name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateDeviceDefinitionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        LatestVersionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.CreateDeviceDefinitionVersionInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        DeviceDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Devices = {
            type = "list",
            member = M.Device,
        },
    },
}

M.CreateDeviceDefinitionVersionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.FunctionDefaultExecutionConfig = {
    type = "structure",
    members = {
        IsolationMode = {
            type = "string",
        },
        RunAs = M.FunctionRunAsConfig,
    },
}

M.FunctionDefaultConfig = {
    type = "structure",
    members = {
        Execution = M.FunctionDefaultExecutionConfig,
    },
}

M.FunctionDefinitionVersion = {
    type = "structure",
    members = {
        DefaultConfig = M.FunctionDefaultConfig,
        Functions = {
            type = "list",
            member = M.Function,
        },
    },
}

M.CreateFunctionDefinitionInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        InitialVersion = M.FunctionDefinitionVersion,
        Name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateFunctionDefinitionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        LatestVersionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.CreateFunctionDefinitionVersionInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        DefaultConfig = M.FunctionDefaultConfig,
        FunctionDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Functions = {
            type = "list",
            member = M.Function,
        },
    },
}

M.CreateFunctionDefinitionVersionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.GroupVersion = {
    type = "structure",
    members = {
        ConnectorDefinitionVersionArn = {
            type = "string",
        },
        CoreDefinitionVersionArn = {
            type = "string",
        },
        DeviceDefinitionVersionArn = {
            type = "string",
        },
        FunctionDefinitionVersionArn = {
            type = "string",
        },
        LoggerDefinitionVersionArn = {
            type = "string",
        },
        ResourceDefinitionVersionArn = {
            type = "string",
        },
        SubscriptionDefinitionVersionArn = {
            type = "string",
        },
    },
}

M.CreateGroupInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        InitialVersion = M.GroupVersion,
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateGroupOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        LatestVersionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.CreateGroupCertificateAuthorityInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        GroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CreateGroupCertificateAuthorityOutput = {
    type = "structure",
    members = {
        GroupCertificateAuthorityArn = {
            type = "string",
        },
    },
}

M.CreateGroupVersionInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        ConnectorDefinitionVersionArn = {
            type = "string",
        },
        CoreDefinitionVersionArn = {
            type = "string",
        },
        DeviceDefinitionVersionArn = {
            type = "string",
        },
        FunctionDefinitionVersionArn = {
            type = "string",
        },
        GroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LoggerDefinitionVersionArn = {
            type = "string",
        },
        ResourceDefinitionVersionArn = {
            type = "string",
        },
        SubscriptionDefinitionVersionArn = {
            type = "string",
        },
    },
}

M.CreateGroupVersionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.LoggerDefinitionVersion = {
    type = "structure",
    members = {
        Loggers = {
            type = "list",
            member = M.Logger,
        },
    },
}

M.CreateLoggerDefinitionInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        InitialVersion = M.LoggerDefinitionVersion,
        Name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateLoggerDefinitionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        LatestVersionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.CreateLoggerDefinitionVersionInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        LoggerDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Loggers = {
            type = "list",
            member = M.Logger,
        },
    },
}

M.CreateLoggerDefinitionVersionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.ResourceDefinitionVersion = {
    type = "structure",
    members = {
        Resources = {
            type = "list",
            member = M.Resource,
        },
    },
}

M.CreateResourceDefinitionInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        InitialVersion = M.ResourceDefinitionVersion,
        Name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateResourceDefinitionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        LatestVersionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.CreateResourceDefinitionVersionInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        ResourceDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Resources = {
            type = "list",
            member = M.Resource,
        },
    },
}

M.CreateResourceDefinitionVersionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.SoftwareToUpdate = {
    core = "core",
    ota_agent = "ota_agent",
}

M.UpdateAgentLogLevel = {
    NONE = "NONE",
    TRACE = "TRACE",
    DEBUG = "DEBUG",
    VERBOSE = "VERBOSE",
    INFO = "INFO",
    WARN = "WARN",
    ERROR = "ERROR",
    FATAL = "FATAL",
}

M.UpdateTargetsArchitecture = {
    armv6l = "armv6l",
    armv7l = "armv7l",
    x86_64 = "x86_64",
    aarch64 = "aarch64",
}

M.UpdateTargetsOperatingSystem = {
    ubuntu = "ubuntu",
    raspbian = "raspbian",
    amazon_linux = "amazon_linux",
    openwrt = "openwrt",
}

M.CreateSoftwareUpdateJobInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        S3UrlSignerRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SoftwareToUpdate = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateAgentLogLevel = {
            type = "string",
        },
        UpdateTargets = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        UpdateTargetsArchitecture = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateTargetsOperatingSystem = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSoftwareUpdateJobOutput = {
    type = "structure",
    members = {
        IotJobArn = {
            type = "string",
        },
        IotJobId = {
            type = "string",
        },
        PlatformSoftwareVersion = {
            type = "string",
        },
    },
}

M.SubscriptionDefinitionVersion = {
    type = "structure",
    members = {
        Subscriptions = {
            type = "list",
            member = M.Subscription,
        },
    },
}

M.CreateSubscriptionDefinitionInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        InitialVersion = M.SubscriptionDefinitionVersion,
        Name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateSubscriptionDefinitionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        LatestVersionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
    },
}

M.CreateSubscriptionDefinitionVersionInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        SubscriptionDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Subscriptions = {
            type = "list",
            member = M.Subscription,
        },
    },
}

M.CreateSubscriptionDefinitionVersionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.DeleteConnectorDefinitionInput = {
    type = "structure",
    members = {
        ConnectorDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteConnectorDefinitionOutput = {
    type = "structure",
}

M.DeleteCoreDefinitionInput = {
    type = "structure",
    members = {
        CoreDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCoreDefinitionOutput = {
    type = "structure",
}

M.DeleteDeviceDefinitionInput = {
    type = "structure",
    members = {
        DeviceDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDeviceDefinitionOutput = {
    type = "structure",
}

M.DeleteFunctionDefinitionInput = {
    type = "structure",
    members = {
        FunctionDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFunctionDefinitionOutput = {
    type = "structure",
}

M.DeleteGroupInput = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteGroupOutput = {
    type = "structure",
}

M.DeleteLoggerDefinitionInput = {
    type = "structure",
    members = {
        LoggerDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteLoggerDefinitionOutput = {
    type = "structure",
}

M.DeleteResourceDefinitionInput = {
    type = "structure",
    members = {
        ResourceDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteResourceDefinitionOutput = {
    type = "structure",
}

M.DeleteSubscriptionDefinitionInput = {
    type = "structure",
    members = {
        SubscriptionDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSubscriptionDefinitionOutput = {
    type = "structure",
}

M.Deployment = {
    type = "structure",
    members = {
        CreatedAt = {
            type = "string",
        },
        DeploymentArn = {
            type = "string",
        },
        DeploymentId = {
            type = "string",
        },
        DeploymentType = {
            type = "string",
        },
        GroupArn = {
            type = "string",
        },
    },
}

M.DisassociateRoleFromGroupInput = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateRoleFromGroupOutput = {
    type = "structure",
    members = {
        DisassociatedAt = {
            type = "string",
        },
    },
}

M.DisassociateServiceRoleFromAccountInput = {
    type = "structure",
}

M.DisassociateServiceRoleFromAccountOutput = {
    type = "structure",
    members = {
        DisassociatedAt = {
            type = "string",
        },
    },
}

M.GetAssociatedRoleInput = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetAssociatedRoleOutput = {
    type = "structure",
    members = {
        AssociatedAt = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.GetBulkDeploymentStatusInput = {
    type = "structure",
    members = {
        BulkDeploymentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBulkDeploymentStatusOutput = {
    type = "structure",
    members = {
        BulkDeploymentMetrics = M.BulkDeploymentMetrics,
        BulkDeploymentStatus = {
            type = "string",
        },
        CreatedAt = {
            type = "string",
        },
        ErrorDetails = {
            type = "list",
            member = M.ErrorDetail,
        },
        ErrorMessage = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetConnectivityInfoInput = {
    type = "structure",
    members = {
        ThingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConnectivityInfoOutput = {
    type = "structure",
    members = {
        ConnectivityInfo = {
            type = "list",
            member = M.ConnectivityInfo,
        },
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
    },
}

M.GetConnectorDefinitionInput = {
    type = "structure",
    members = {
        ConnectorDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetConnectorDefinitionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        LatestVersionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetConnectorDefinitionVersionInput = {
    type = "structure",
    members = {
        ConnectorDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ConnectorDefinitionVersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.GetConnectorDefinitionVersionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Definition = M.ConnectorDefinitionVersion,
        Id = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.GetCoreDefinitionInput = {
    type = "structure",
    members = {
        CoreDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCoreDefinitionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        LatestVersionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetCoreDefinitionVersionInput = {
    type = "structure",
    members = {
        CoreDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        CoreDefinitionVersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetCoreDefinitionVersionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Definition = M.CoreDefinitionVersion,
        Id = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.GetDeploymentStatusInput = {
    type = "structure",
    members = {
        DeploymentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDeploymentStatusOutput = {
    type = "structure",
    members = {
        DeploymentStatus = {
            type = "string",
        },
        DeploymentType = {
            type = "string",
        },
        ErrorDetails = {
            type = "list",
            member = M.ErrorDetail,
        },
        ErrorMessage = {
            type = "string",
        },
        UpdatedAt = {
            type = "string",
        },
    },
}

M.GetDeviceDefinitionInput = {
    type = "structure",
    members = {
        DeviceDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDeviceDefinitionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        LatestVersionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetDeviceDefinitionVersionInput = {
    type = "structure",
    members = {
        DeviceDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeviceDefinitionVersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.GetDeviceDefinitionVersionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Definition = M.DeviceDefinitionVersion,
        Id = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.GetFunctionDefinitionInput = {
    type = "structure",
    members = {
        FunctionDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFunctionDefinitionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        LatestVersionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetFunctionDefinitionVersionInput = {
    type = "structure",
    members = {
        FunctionDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        FunctionDefinitionVersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.GetFunctionDefinitionVersionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Definition = M.FunctionDefinitionVersion,
        Id = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.GetGroupInput = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGroupOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        LatestVersionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetGroupCertificateAuthorityInput = {
    type = "structure",
    members = {
        CertificateAuthorityId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGroupCertificateAuthorityOutput = {
    type = "structure",
    members = {
        GroupCertificateAuthorityArn = {
            type = "string",
        },
        GroupCertificateAuthorityId = {
            type = "string",
        },
        PemEncodedCertificate = {
            type = "string",
        },
    },
}

M.GetGroupCertificateConfigurationInput = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGroupCertificateConfigurationOutput = {
    type = "structure",
    members = {
        CertificateAuthorityExpiryInMilliseconds = {
            type = "string",
        },
        CertificateExpiryInMilliseconds = {
            type = "string",
        },
        GroupId = {
            type = "string",
        },
    },
}

M.GetGroupVersionInput = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        GroupVersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGroupVersionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Definition = M.GroupVersion,
        Id = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.GetLoggerDefinitionInput = {
    type = "structure",
    members = {
        LoggerDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetLoggerDefinitionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        LatestVersionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetLoggerDefinitionVersionInput = {
    type = "structure",
    members = {
        LoggerDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        LoggerDefinitionVersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.GetLoggerDefinitionVersionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Definition = M.LoggerDefinitionVersion,
        Id = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.GetResourceDefinitionInput = {
    type = "structure",
    members = {
        ResourceDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetResourceDefinitionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        LatestVersionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetResourceDefinitionVersionInput = {
    type = "structure",
    members = {
        ResourceDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceDefinitionVersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetResourceDefinitionVersionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Definition = M.ResourceDefinitionVersion,
        Id = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.GetServiceRoleForAccountInput = {
    type = "structure",
}

M.GetServiceRoleForAccountOutput = {
    type = "structure",
    members = {
        AssociatedAt = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
    },
}

M.GetSubscriptionDefinitionInput = {
    type = "structure",
    members = {
        SubscriptionDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSubscriptionDefinitionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "string",
        },
        LatestVersion = {
            type = "string",
        },
        LatestVersionArn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetSubscriptionDefinitionVersionInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        SubscriptionDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        SubscriptionDefinitionVersionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSubscriptionDefinitionVersionOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationTimestamp = {
            type = "string",
        },
        Definition = M.SubscriptionDefinitionVersion,
        Id = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        Version = {
            type = "string",
        },
    },
}

M.GetThingRuntimeConfigurationInput = {
    type = "structure",
    members = {
        ThingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Telemetry = {
    On = "On",
    Off = "Off",
}

M.TelemetryConfiguration = {
    type = "structure",
    members = {
        ConfigurationSyncStatus = {
            type = "string",
        },
        Telemetry = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RuntimeConfiguration = {
    type = "structure",
    members = {
        TelemetryConfiguration = M.TelemetryConfiguration,
    },
}

M.GetThingRuntimeConfigurationOutput = {
    type = "structure",
    members = {
        RuntimeConfiguration = M.RuntimeConfiguration,
    },
}

M.ListBulkDeploymentDetailedReportsInput = {
    type = "structure",
    members = {
        BulkDeploymentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListBulkDeploymentDetailedReportsOutput = {
    type = "structure",
    members = {
        Deployments = {
            type = "list",
            member = M.BulkDeploymentResult,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListBulkDeploymentsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListBulkDeploymentsOutput = {
    type = "structure",
    members = {
        BulkDeployments = {
            type = "list",
            member = M.BulkDeployment,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConnectorDefinitionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListConnectorDefinitionsOutput = {
    type = "structure",
    members = {
        Definitions = {
            type = "list",
            member = M.DefinitionInformation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConnectorDefinitionVersionsInput = {
    type = "structure",
    members = {
        ConnectorDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListConnectorDefinitionVersionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Versions = {
            type = "list",
            member = M.VersionInformation,
        },
    },
}

M.ListCoreDefinitionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListCoreDefinitionsOutput = {
    type = "structure",
    members = {
        Definitions = {
            type = "list",
            member = M.DefinitionInformation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListCoreDefinitionVersionsInput = {
    type = "structure",
    members = {
        CoreDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListCoreDefinitionVersionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Versions = {
            type = "list",
            member = M.VersionInformation,
        },
    },
}

M.ListDeploymentsInput = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListDeploymentsOutput = {
    type = "structure",
    members = {
        Deployments = {
            type = "list",
            member = M.Deployment,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDeviceDefinitionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListDeviceDefinitionsOutput = {
    type = "structure",
    members = {
        Definitions = {
            type = "list",
            member = M.DefinitionInformation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDeviceDefinitionVersionsInput = {
    type = "structure",
    members = {
        DeviceDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListDeviceDefinitionVersionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Versions = {
            type = "list",
            member = M.VersionInformation,
        },
    },
}

M.ListFunctionDefinitionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListFunctionDefinitionsOutput = {
    type = "structure",
    members = {
        Definitions = {
            type = "list",
            member = M.DefinitionInformation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListFunctionDefinitionVersionsInput = {
    type = "structure",
    members = {
        FunctionDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListFunctionDefinitionVersionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Versions = {
            type = "list",
            member = M.VersionInformation,
        },
    },
}

M.ListGroupCertificateAuthoritiesInput = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListGroupCertificateAuthoritiesOutput = {
    type = "structure",
    members = {
        GroupCertificateAuthorities = {
            type = "list",
            member = M.GroupCertificateAuthorityProperties,
        },
    },
}

M.ListGroupsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListGroupsOutput = {
    type = "structure",
    members = {
        Groups = {
            type = "list",
            member = M.GroupInformation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGroupVersionsInput = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListGroupVersionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Versions = {
            type = "list",
            member = M.VersionInformation,
        },
    },
}

M.ListLoggerDefinitionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListLoggerDefinitionsOutput = {
    type = "structure",
    members = {
        Definitions = {
            type = "list",
            member = M.DefinitionInformation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLoggerDefinitionVersionsInput = {
    type = "structure",
    members = {
        LoggerDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListLoggerDefinitionVersionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Versions = {
            type = "list",
            member = M.VersionInformation,
        },
    },
}

M.ListResourceDefinitionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListResourceDefinitionsOutput = {
    type = "structure",
    members = {
        Definitions = {
            type = "list",
            member = M.DefinitionInformation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourceDefinitionVersionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        ResourceDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListResourceDefinitionVersionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Versions = {
            type = "list",
            member = M.VersionInformation,
        },
    },
}

M.ListSubscriptionDefinitionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.ListSubscriptionDefinitionsOutput = {
    type = "structure",
    members = {
        Definitions = {
            type = "list",
            member = M.DefinitionInformation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSubscriptionDefinitionVersionsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "string",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        SubscriptionDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListSubscriptionDefinitionVersionsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Versions = {
            type = "list",
            member = M.VersionInformation,
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ResetDeploymentsInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        Force = {
            type = "boolean",
        },
        GroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ResetDeploymentsOutput = {
    type = "structure",
    members = {
        DeploymentArn = {
            type = "string",
        },
        DeploymentId = {
            type = "string",
        },
    },
}

M.StartBulkDeploymentInput = {
    type = "structure",
    members = {
        AmznClientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        ExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputFileUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartBulkDeploymentOutput = {
    type = "structure",
    members = {
        BulkDeploymentArn = {
            type = "string",
        },
        BulkDeploymentId = {
            type = "string",
        },
    },
}

M.StopBulkDeploymentInput = {
    type = "structure",
    members = {
        BulkDeploymentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopBulkDeploymentOutput = {
    type = "structure",
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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

M.UpdateConnectivityInfoInput = {
    type = "structure",
    members = {
        ConnectivityInfo = {
            type = "list",
            member = M.ConnectivityInfo,
        },
        ThingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateConnectivityInfoOutput = {
    type = "structure",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
            },
        },
        Version = {
            type = "string",
        },
    },
}

M.UpdateConnectorDefinitionInput = {
    type = "structure",
    members = {
        ConnectorDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
    },
}

M.UpdateConnectorDefinitionOutput = {
    type = "structure",
}

M.UpdateCoreDefinitionInput = {
    type = "structure",
    members = {
        CoreDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
    },
}

M.UpdateCoreDefinitionOutput = {
    type = "structure",
}

M.UpdateDeviceDefinitionInput = {
    type = "structure",
    members = {
        DeviceDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
    },
}

M.UpdateDeviceDefinitionOutput = {
    type = "structure",
}

M.UpdateFunctionDefinitionInput = {
    type = "structure",
    members = {
        FunctionDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
    },
}

M.UpdateFunctionDefinitionOutput = {
    type = "structure",
}

M.UpdateGroupInput = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
    },
}

M.UpdateGroupOutput = {
    type = "structure",
}

M.UpdateGroupCertificateConfigurationInput = {
    type = "structure",
    members = {
        CertificateExpiryInMilliseconds = {
            type = "string",
        },
        GroupId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateGroupCertificateConfigurationOutput = {
    type = "structure",
    members = {
        CertificateAuthorityExpiryInMilliseconds = {
            type = "string",
        },
        CertificateExpiryInMilliseconds = {
            type = "string",
        },
        GroupId = {
            type = "string",
        },
    },
}

M.UpdateLoggerDefinitionInput = {
    type = "structure",
    members = {
        LoggerDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Name = {
            type = "string",
        },
    },
}

M.UpdateLoggerDefinitionOutput = {
    type = "structure",
}

M.UpdateResourceDefinitionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ResourceDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateResourceDefinitionOutput = {
    type = "structure",
}

M.UpdateSubscriptionDefinitionInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        SubscriptionDefinitionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateSubscriptionDefinitionOutput = {
    type = "structure",
}

M.TelemetryConfigurationUpdate = {
    type = "structure",
    members = {
        Telemetry = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateThingRuntimeConfigurationInput = {
    type = "structure",
    members = {
        TelemetryConfiguration = M.TelemetryConfigurationUpdate,
        ThingName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateThingRuntimeConfigurationOutput = {
    type = "structure",
}

return M
