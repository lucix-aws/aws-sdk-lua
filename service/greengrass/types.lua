local M = {}

M.ConnectivityInfo = {
    type = "structure",
    id = "ConnectivityInfo",
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
    id = "Connector",
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
    id = "Core",
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
    id = "DefinitionInformation",
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
    id = "Device",
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
    id = "FunctionRunAsConfig",
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
    id = "FunctionExecutionConfig",
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
    id = "ResourceAccessPolicy",
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
    id = "FunctionConfigurationEnvironment",
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
    id = "FunctionConfiguration",
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
    id = "Function",
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
    id = "GroupCertificateAuthorityProperties",
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
    id = "GroupInformation",
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
    id = "Logger",
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
    id = "GroupOwnerSetting",
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
    id = "LocalDeviceResourceData",
    members = {
        GroupOwnerSetting = M.GroupOwnerSetting,
        SourcePath = {
            type = "string",
        },
    },
}

M.LocalVolumeResourceData = {
    type = "structure",
    id = "LocalVolumeResourceData",
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
    id = "ResourceDownloadOwnerSetting",
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
    id = "S3MachineLearningModelResourceData",
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
    id = "SageMakerMachineLearningModelResourceData",
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
    id = "SecretsManagerSecretResourceData",
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
    id = "ResourceDataContainer",
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
    id = "Resource",
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
    id = "Subscription",
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
    id = "VersionInformation",
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
    id = "AssociateRoleToGroupInput",
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
    id = "AssociateRoleToGroupOutput",
    members = {
        AssociatedAt = {
            type = "string",
        },
    },
}

M.ErrorDetail = {
    type = "structure",
    id = "ErrorDetail",
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
    id = "BadRequestException",
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
    id = "InternalServerErrorException",
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
    id = "AssociateServiceRoleToAccountInput",
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
    id = "AssociateServiceRoleToAccountOutput",
    members = {
        AssociatedAt = {
            type = "string",
        },
    },
}

M.BulkDeployment = {
    type = "structure",
    id = "BulkDeployment",
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
    id = "BulkDeploymentMetrics",
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
    id = "BulkDeploymentResult",
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
    id = "ConnectorDefinitionVersion",
    members = {
        Connectors = {
            type = "list",
            member = M.Connector,
        },
    },
}

M.CoreDefinitionVersion = {
    type = "structure",
    id = "CoreDefinitionVersion",
    members = {
        Cores = {
            type = "list",
            member = M.Core,
        },
    },
}

M.CreateConnectorDefinitionInput = {
    type = "structure",
    id = "CreateConnectorDefinitionInput",
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
    id = "CreateConnectorDefinitionOutput",
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
    id = "CreateConnectorDefinitionVersionInput",
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
    id = "CreateConnectorDefinitionVersionOutput",
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
    id = "CreateCoreDefinitionInput",
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
    id = "CreateCoreDefinitionOutput",
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
    id = "CreateCoreDefinitionVersionInput",
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
    id = "CreateCoreDefinitionVersionOutput",
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
    id = "CreateDeploymentInput",
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
    id = "CreateDeploymentOutput",
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
    id = "DeviceDefinitionVersion",
    members = {
        Devices = {
            type = "list",
            member = M.Device,
        },
    },
}

M.CreateDeviceDefinitionInput = {
    type = "structure",
    id = "CreateDeviceDefinitionInput",
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
    id = "CreateDeviceDefinitionOutput",
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
    id = "CreateDeviceDefinitionVersionInput",
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
    id = "CreateDeviceDefinitionVersionOutput",
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
    id = "FunctionDefaultExecutionConfig",
    members = {
        IsolationMode = {
            type = "string",
        },
        RunAs = M.FunctionRunAsConfig,
    },
}

M.FunctionDefaultConfig = {
    type = "structure",
    id = "FunctionDefaultConfig",
    members = {
        Execution = M.FunctionDefaultExecutionConfig,
    },
}

M.FunctionDefinitionVersion = {
    type = "structure",
    id = "FunctionDefinitionVersion",
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
    id = "CreateFunctionDefinitionInput",
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
    id = "CreateFunctionDefinitionOutput",
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
    id = "CreateFunctionDefinitionVersionInput",
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
    id = "CreateFunctionDefinitionVersionOutput",
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
    id = "GroupVersion",
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
    id = "CreateGroupInput",
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
    id = "CreateGroupOutput",
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
    id = "CreateGroupCertificateAuthorityInput",
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
    id = "CreateGroupCertificateAuthorityOutput",
    members = {
        GroupCertificateAuthorityArn = {
            type = "string",
        },
    },
}

M.CreateGroupVersionInput = {
    type = "structure",
    id = "CreateGroupVersionInput",
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
    id = "CreateGroupVersionOutput",
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
    id = "LoggerDefinitionVersion",
    members = {
        Loggers = {
            type = "list",
            member = M.Logger,
        },
    },
}

M.CreateLoggerDefinitionInput = {
    type = "structure",
    id = "CreateLoggerDefinitionInput",
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
    id = "CreateLoggerDefinitionOutput",
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
    id = "CreateLoggerDefinitionVersionInput",
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
    id = "CreateLoggerDefinitionVersionOutput",
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
    id = "ResourceDefinitionVersion",
    members = {
        Resources = {
            type = "list",
            member = M.Resource,
        },
    },
}

M.CreateResourceDefinitionInput = {
    type = "structure",
    id = "CreateResourceDefinitionInput",
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
    id = "CreateResourceDefinitionOutput",
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
    id = "CreateResourceDefinitionVersionInput",
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
    id = "CreateResourceDefinitionVersionOutput",
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
    id = "CreateSoftwareUpdateJobInput",
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
    id = "CreateSoftwareUpdateJobOutput",
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
    id = "SubscriptionDefinitionVersion",
    members = {
        Subscriptions = {
            type = "list",
            member = M.Subscription,
        },
    },
}

M.CreateSubscriptionDefinitionInput = {
    type = "structure",
    id = "CreateSubscriptionDefinitionInput",
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
    id = "CreateSubscriptionDefinitionOutput",
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
    id = "CreateSubscriptionDefinitionVersionInput",
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
    id = "CreateSubscriptionDefinitionVersionOutput",
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
    id = "DeleteConnectorDefinitionInput",
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
    id = "DeleteConnectorDefinitionOutput",
}

M.DeleteCoreDefinitionInput = {
    type = "structure",
    id = "DeleteCoreDefinitionInput",
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
    id = "DeleteCoreDefinitionOutput",
}

M.DeleteDeviceDefinitionInput = {
    type = "structure",
    id = "DeleteDeviceDefinitionInput",
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
    id = "DeleteDeviceDefinitionOutput",
}

M.DeleteFunctionDefinitionInput = {
    type = "structure",
    id = "DeleteFunctionDefinitionInput",
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
    id = "DeleteFunctionDefinitionOutput",
}

M.DeleteGroupInput = {
    type = "structure",
    id = "DeleteGroupInput",
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
    id = "DeleteGroupOutput",
}

M.DeleteLoggerDefinitionInput = {
    type = "structure",
    id = "DeleteLoggerDefinitionInput",
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
    id = "DeleteLoggerDefinitionOutput",
}

M.DeleteResourceDefinitionInput = {
    type = "structure",
    id = "DeleteResourceDefinitionInput",
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
    id = "DeleteResourceDefinitionOutput",
}

M.DeleteSubscriptionDefinitionInput = {
    type = "structure",
    id = "DeleteSubscriptionDefinitionInput",
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
    id = "DeleteSubscriptionDefinitionOutput",
}

M.Deployment = {
    type = "structure",
    id = "Deployment",
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
    id = "DisassociateRoleFromGroupInput",
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
    id = "DisassociateRoleFromGroupOutput",
    members = {
        DisassociatedAt = {
            type = "string",
        },
    },
}

M.DisassociateServiceRoleFromAccountInput = {
    type = "structure",
    id = "DisassociateServiceRoleFromAccountInput",
}

M.DisassociateServiceRoleFromAccountOutput = {
    type = "structure",
    id = "DisassociateServiceRoleFromAccountOutput",
    members = {
        DisassociatedAt = {
            type = "string",
        },
    },
}

M.GetAssociatedRoleInput = {
    type = "structure",
    id = "GetAssociatedRoleInput",
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
    id = "GetAssociatedRoleOutput",
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
    id = "GetBulkDeploymentStatusInput",
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
    id = "GetBulkDeploymentStatusOutput",
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
    id = "GetConnectivityInfoInput",
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
    id = "GetConnectivityInfoOutput",
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
    id = "GetConnectorDefinitionInput",
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
    id = "GetConnectorDefinitionOutput",
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
    id = "GetConnectorDefinitionVersionInput",
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
    id = "GetConnectorDefinitionVersionOutput",
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
    id = "GetCoreDefinitionInput",
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
    id = "GetCoreDefinitionOutput",
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
    id = "GetCoreDefinitionVersionInput",
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
    id = "GetCoreDefinitionVersionOutput",
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
    id = "GetDeploymentStatusInput",
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
    id = "GetDeploymentStatusOutput",
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
    id = "GetDeviceDefinitionInput",
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
    id = "GetDeviceDefinitionOutput",
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
    id = "GetDeviceDefinitionVersionInput",
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
    id = "GetDeviceDefinitionVersionOutput",
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
    id = "GetFunctionDefinitionInput",
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
    id = "GetFunctionDefinitionOutput",
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
    id = "GetFunctionDefinitionVersionInput",
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
    id = "GetFunctionDefinitionVersionOutput",
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
    id = "GetGroupInput",
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
    id = "GetGroupOutput",
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
    id = "GetGroupCertificateAuthorityInput",
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
    id = "GetGroupCertificateAuthorityOutput",
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
    id = "GetGroupCertificateConfigurationInput",
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
    id = "GetGroupCertificateConfigurationOutput",
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
    id = "GetGroupVersionInput",
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
    id = "GetGroupVersionOutput",
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
    id = "GetLoggerDefinitionInput",
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
    id = "GetLoggerDefinitionOutput",
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
    id = "GetLoggerDefinitionVersionInput",
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
    id = "GetLoggerDefinitionVersionOutput",
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
    id = "GetResourceDefinitionInput",
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
    id = "GetResourceDefinitionOutput",
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
    id = "GetResourceDefinitionVersionInput",
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
    id = "GetResourceDefinitionVersionOutput",
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
    id = "GetServiceRoleForAccountInput",
}

M.GetServiceRoleForAccountOutput = {
    type = "structure",
    id = "GetServiceRoleForAccountOutput",
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
    id = "GetSubscriptionDefinitionInput",
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
    id = "GetSubscriptionDefinitionOutput",
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
    id = "GetSubscriptionDefinitionVersionInput",
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
    id = "GetSubscriptionDefinitionVersionOutput",
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
    id = "GetThingRuntimeConfigurationInput",
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
    id = "TelemetryConfiguration",
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
    id = "RuntimeConfiguration",
    members = {
        TelemetryConfiguration = M.TelemetryConfiguration,
    },
}

M.GetThingRuntimeConfigurationOutput = {
    type = "structure",
    id = "GetThingRuntimeConfigurationOutput",
    members = {
        RuntimeConfiguration = M.RuntimeConfiguration,
    },
}

M.ListBulkDeploymentDetailedReportsInput = {
    type = "structure",
    id = "ListBulkDeploymentDetailedReportsInput",
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
    id = "ListBulkDeploymentDetailedReportsOutput",
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
    id = "ListBulkDeploymentsInput",
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
    id = "ListBulkDeploymentsOutput",
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
    id = "ListConnectorDefinitionsInput",
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
    id = "ListConnectorDefinitionsOutput",
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
    id = "ListConnectorDefinitionVersionsInput",
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
    id = "ListConnectorDefinitionVersionsOutput",
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
    id = "ListCoreDefinitionsInput",
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
    id = "ListCoreDefinitionsOutput",
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
    id = "ListCoreDefinitionVersionsInput",
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
    id = "ListCoreDefinitionVersionsOutput",
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
    id = "ListDeploymentsInput",
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
    id = "ListDeploymentsOutput",
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
    id = "ListDeviceDefinitionsInput",
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
    id = "ListDeviceDefinitionsOutput",
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
    id = "ListDeviceDefinitionVersionsInput",
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
    id = "ListDeviceDefinitionVersionsOutput",
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
    id = "ListFunctionDefinitionsInput",
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
    id = "ListFunctionDefinitionsOutput",
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
    id = "ListFunctionDefinitionVersionsInput",
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
    id = "ListFunctionDefinitionVersionsOutput",
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
    id = "ListGroupCertificateAuthoritiesInput",
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
    id = "ListGroupCertificateAuthoritiesOutput",
    members = {
        GroupCertificateAuthorities = {
            type = "list",
            member = M.GroupCertificateAuthorityProperties,
        },
    },
}

M.ListGroupsInput = {
    type = "structure",
    id = "ListGroupsInput",
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
    id = "ListGroupsOutput",
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
    id = "ListGroupVersionsInput",
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
    id = "ListGroupVersionsOutput",
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
    id = "ListLoggerDefinitionsInput",
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
    id = "ListLoggerDefinitionsOutput",
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
    id = "ListLoggerDefinitionVersionsInput",
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
    id = "ListLoggerDefinitionVersionsOutput",
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
    id = "ListResourceDefinitionsInput",
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
    id = "ListResourceDefinitionsOutput",
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
    id = "ListResourceDefinitionVersionsInput",
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
    id = "ListResourceDefinitionVersionsOutput",
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
    id = "ListSubscriptionDefinitionsInput",
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
    id = "ListSubscriptionDefinitionsOutput",
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
    id = "ListSubscriptionDefinitionVersionsInput",
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
    id = "ListSubscriptionDefinitionVersionsOutput",
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

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
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
    id = "ResetDeploymentsInput",
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
    id = "ResetDeploymentsOutput",
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
    id = "StartBulkDeploymentInput",
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
    id = "StartBulkDeploymentOutput",
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
    id = "StopBulkDeploymentInput",
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
    id = "StopBulkDeploymentOutput",
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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

M.UpdateConnectivityInfoInput = {
    type = "structure",
    id = "UpdateConnectivityInfoInput",
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
    id = "UpdateConnectivityInfoOutput",
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
    id = "UpdateConnectorDefinitionInput",
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
    id = "UpdateConnectorDefinitionOutput",
}

M.UpdateCoreDefinitionInput = {
    type = "structure",
    id = "UpdateCoreDefinitionInput",
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
    id = "UpdateCoreDefinitionOutput",
}

M.UpdateDeviceDefinitionInput = {
    type = "structure",
    id = "UpdateDeviceDefinitionInput",
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
    id = "UpdateDeviceDefinitionOutput",
}

M.UpdateFunctionDefinitionInput = {
    type = "structure",
    id = "UpdateFunctionDefinitionInput",
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
    id = "UpdateFunctionDefinitionOutput",
}

M.UpdateGroupInput = {
    type = "structure",
    id = "UpdateGroupInput",
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
    id = "UpdateGroupOutput",
}

M.UpdateGroupCertificateConfigurationInput = {
    type = "structure",
    id = "UpdateGroupCertificateConfigurationInput",
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
    id = "UpdateGroupCertificateConfigurationOutput",
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
    id = "UpdateLoggerDefinitionInput",
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
    id = "UpdateLoggerDefinitionOutput",
}

M.UpdateResourceDefinitionInput = {
    type = "structure",
    id = "UpdateResourceDefinitionInput",
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
    id = "UpdateResourceDefinitionOutput",
}

M.UpdateSubscriptionDefinitionInput = {
    type = "structure",
    id = "UpdateSubscriptionDefinitionInput",
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
    id = "UpdateSubscriptionDefinitionOutput",
}

M.TelemetryConfigurationUpdate = {
    type = "structure",
    id = "TelemetryConfigurationUpdate",
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
    id = "UpdateThingRuntimeConfigurationInput",
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
    id = "UpdateThingRuntimeConfigurationOutput",
}

return M
