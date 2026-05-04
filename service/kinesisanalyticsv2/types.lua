local M = {}

M.CloudWatchLoggingOption = {
    type = "structure",
    members = {
        LogStreamARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AddApplicationCloudWatchLoggingOptionInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentApplicationVersionId = {
            type = "long",
        },
        CloudWatchLoggingOption = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CloudWatchLoggingOption }),
        ConditionalToken = {
            type = "string",
        },
    },
}

M.CloudWatchLoggingOptionDescription = {
    type = "structure",
    members = {
        CloudWatchLoggingOptionId = {
            type = "string",
        },
        LogStreamARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleARN = {
            type = "string",
        },
    },
}

M.AddApplicationCloudWatchLoggingOptionOutput = {
    type = "structure",
    members = {
        ApplicationARN = {
            type = "string",
        },
        ApplicationVersionId = {
            type = "long",
        },
        CloudWatchLoggingOptionDescriptions = {
            type = "list",
            member = M.CloudWatchLoggingOptionDescription,
        },
        OperationId = {
            type = "string",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidApplicationConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidArgumentException = {
    type = "structure",
    error = "client",
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
        Message = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
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
    },
}

M.InputParallelism = {
    type = "structure",
    members = {
        Count = {
            type = "integer",
        },
    },
}

M.InputLambdaProcessor = {
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

M.InputProcessingConfiguration = {
    type = "structure",
    members = {
        InputLambdaProcessor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputLambdaProcessor }),
    },
}

M.RecordColumn = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Mapping = {
            type = "string",
        },
        SqlType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CSVMappingParameters = {
    type = "structure",
    members = {
        RecordRowDelimiter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecordColumnDelimiter = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JSONMappingParameters = {
    type = "structure",
    members = {
        RecordRowPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MappingParameters = {
    type = "structure",
    members = {
        JSONMappingParameters = M.JSONMappingParameters,
        CSVMappingParameters = M.CSVMappingParameters,
    },
}

M.RecordFormatType = {
    JSON = "JSON",
    CSV = "CSV",
}

M.RecordFormat = {
    type = "structure",
    members = {
        RecordFormatType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MappingParameters = M.MappingParameters,
    },
}

M.SourceSchema = {
    type = "structure",
    members = {
        RecordFormat = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecordFormat }),
        RecordEncoding = {
            type = "string",
        },
        RecordColumns = {
            type = "list",
            member = M.RecordColumn,
            traits = {
                required = true,
            },
        },
    },
}

M.KinesisFirehoseInput = {
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

M.KinesisStreamsInput = {
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

M.Input = {
    type = "structure",
    members = {
        NamePrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputProcessingConfiguration = M.InputProcessingConfiguration,
        KinesisStreamsInput = M.KinesisStreamsInput,
        KinesisFirehoseInput = M.KinesisFirehoseInput,
        InputParallelism = M.InputParallelism,
        InputSchema = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SourceSchema }),
    },
}

M.AddApplicationInputInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentApplicationVersionId = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Input }),
    },
}

M.InputLambdaProcessorDescription = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleARN = {
            type = "string",
        },
    },
}

M.InputProcessingConfigurationDescription = {
    type = "structure",
    members = {
        InputLambdaProcessorDescription = M.InputLambdaProcessorDescription,
    },
}

M.InputStartingPosition = {
    NOW = "NOW",
    TRIM_HORIZON = "TRIM_HORIZON",
    LAST_STOPPED_POINT = "LAST_STOPPED_POINT",
}

M.InputStartingPositionConfiguration = {
    type = "structure",
    members = {
        InputStartingPosition = {
            type = "string",
        },
    },
}

M.KinesisFirehoseInputDescription = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleARN = {
            type = "string",
        },
    },
}

M.KinesisStreamsInputDescription = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleARN = {
            type = "string",
        },
    },
}

M.InputDescription = {
    type = "structure",
    members = {
        InputId = {
            type = "string",
        },
        NamePrefix = {
            type = "string",
        },
        InAppStreamNames = {
            type = "list",
            member = { type = "string" },
        },
        InputProcessingConfigurationDescription = M.InputProcessingConfigurationDescription,
        KinesisStreamsInputDescription = M.KinesisStreamsInputDescription,
        KinesisFirehoseInputDescription = M.KinesisFirehoseInputDescription,
        InputSchema = M.SourceSchema,
        InputParallelism = M.InputParallelism,
        InputStartingPositionConfiguration = M.InputStartingPositionConfiguration,
    },
}

M.AddApplicationInputOutput = {
    type = "structure",
    members = {
        ApplicationARN = {
            type = "string",
        },
        ApplicationVersionId = {
            type = "long",
        },
        InputDescriptions = {
            type = "list",
            member = M.InputDescription,
        },
    },
}

M.CodeValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AddApplicationInputProcessingConfigurationInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentApplicationVersionId = {
            type = "long",
            traits = {
                required = true,
            },
        },
        InputId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputProcessingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputProcessingConfiguration }),
    },
}

M.AddApplicationInputProcessingConfigurationOutput = {
    type = "structure",
    members = {
        ApplicationARN = {
            type = "string",
        },
        ApplicationVersionId = {
            type = "long",
        },
        InputId = {
            type = "string",
        },
        InputProcessingConfigurationDescription = M.InputProcessingConfigurationDescription,
    },
}

M.DestinationSchema = {
    type = "structure",
    members = {
        RecordFormatType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KinesisFirehoseOutput = {
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

M.KinesisStreamsOutput = {
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

M.LambdaOutput = {
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

M.Output = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KinesisStreamsOutput = M.KinesisStreamsOutput,
        KinesisFirehoseOutput = M.KinesisFirehoseOutput,
        LambdaOutput = M.LambdaOutput,
        DestinationSchema = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DestinationSchema }),
    },
}

M.AddApplicationOutputInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentApplicationVersionId = {
            type = "long",
            traits = {
                required = true,
            },
        },
        Output = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Output }),
    },
}

M.KinesisFirehoseOutputDescription = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleARN = {
            type = "string",
        },
    },
}

M.KinesisStreamsOutputDescription = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleARN = {
            type = "string",
        },
    },
}

M.LambdaOutputDescription = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleARN = {
            type = "string",
        },
    },
}

M.OutputDescription = {
    type = "structure",
    members = {
        OutputId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        KinesisStreamsOutputDescription = M.KinesisStreamsOutputDescription,
        KinesisFirehoseOutputDescription = M.KinesisFirehoseOutputDescription,
        LambdaOutputDescription = M.LambdaOutputDescription,
        DestinationSchema = M.DestinationSchema,
    },
}

M.AddApplicationOutputOutput = {
    type = "structure",
    members = {
        ApplicationARN = {
            type = "string",
        },
        ApplicationVersionId = {
            type = "long",
        },
        OutputDescriptions = {
            type = "list",
            member = M.OutputDescription,
        },
    },
}

M.S3ReferenceDataSource = {
    type = "structure",
    members = {
        BucketARN = {
            type = "string",
        },
        FileKey = {
            type = "string",
        },
    },
}

M.ReferenceDataSource = {
    type = "structure",
    members = {
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3ReferenceDataSource = M.S3ReferenceDataSource,
        ReferenceSchema = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SourceSchema }),
    },
}

M.AddApplicationReferenceDataSourceInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentApplicationVersionId = {
            type = "long",
            traits = {
                required = true,
            },
        },
        ReferenceDataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReferenceDataSource }),
    },
}

M.S3ReferenceDataSourceDescription = {
    type = "structure",
    members = {
        BucketARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ReferenceRoleARN = {
            type = "string",
        },
    },
}

M.ReferenceDataSourceDescription = {
    type = "structure",
    members = {
        ReferenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3ReferenceDataSourceDescription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3ReferenceDataSourceDescription }),
        ReferenceSchema = M.SourceSchema,
    },
}

M.AddApplicationReferenceDataSourceOutput = {
    type = "structure",
    members = {
        ApplicationARN = {
            type = "string",
        },
        ApplicationVersionId = {
            type = "long",
        },
        ReferenceDataSourceDescriptions = {
            type = "list",
            member = M.ReferenceDataSourceDescription,
        },
    },
}

M.VpcConfiguration = {
    type = "structure",
    members = {
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AddApplicationVpcConfigurationInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentApplicationVersionId = {
            type = "long",
        },
        VpcConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VpcConfiguration }),
        ConditionalToken = {
            type = "string",
        },
    },
}

M.VpcConfigurationDescription = {
    type = "structure",
    members = {
        VpcConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AddApplicationVpcConfigurationOutput = {
    type = "structure",
    members = {
        ApplicationARN = {
            type = "string",
        },
        ApplicationVersionId = {
            type = "long",
        },
        VpcConfigurationDescription = M.VpcConfigurationDescription,
        OperationId = {
            type = "string",
        },
    },
}

M.S3ContentLocation = {
    type = "structure",
    members = {
        BucketARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectVersion = {
            type = "string",
        },
    },
}

M.CodeContent = {
    type = "structure",
    members = {
        TextContent = {
            type = "string",
        },
        ZipFileContent = {
            type = "blob",
        },
        S3ContentLocation = M.S3ContentLocation,
    },
}

M.CodeContentType = {
    PLAINTEXT = "PLAINTEXT",
    ZIPFILE = "ZIPFILE",
}

M.ApplicationCodeConfiguration = {
    type = "structure",
    members = {
        CodeContent = M.CodeContent,
        CodeContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3ApplicationCodeLocationDescription = {
    type = "structure",
    members = {
        BucketARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectVersion = {
            type = "string",
        },
    },
}

M.CodeContentDescription = {
    type = "structure",
    members = {
        TextContent = {
            type = "string",
        },
        CodeMD5 = {
            type = "string",
        },
        CodeSize = {
            type = "long",
        },
        S3ApplicationCodeLocationDescription = M.S3ApplicationCodeLocationDescription,
    },
}

M.ApplicationCodeConfigurationDescription = {
    type = "structure",
    members = {
        CodeContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CodeContentDescription = M.CodeContentDescription,
    },
}

M.S3ContentLocationUpdate = {
    type = "structure",
    members = {
        BucketARNUpdate = {
            type = "string",
        },
        FileKeyUpdate = {
            type = "string",
        },
        ObjectVersionUpdate = {
            type = "string",
        },
    },
}

M.CodeContentUpdate = {
    type = "structure",
    members = {
        TextContentUpdate = {
            type = "string",
        },
        ZipFileContentUpdate = {
            type = "blob",
        },
        S3ContentLocationUpdate = M.S3ContentLocationUpdate,
    },
}

M.ApplicationCodeConfigurationUpdate = {
    type = "structure",
    members = {
        CodeContentTypeUpdate = {
            type = "string",
        },
        CodeContentUpdate = M.CodeContentUpdate,
    },
}

M.KeyType = {
    AWS_OWNED_KEY = "AWS_OWNED_KEY",
    CUSTOMER_MANAGED_KEY = "CUSTOMER_MANAGED_KEY",
}

M.ApplicationEncryptionConfiguration = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        KeyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationSnapshotConfiguration = {
    type = "structure",
    members = {
        SnapshotsEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationSystemRollbackConfiguration = {
    type = "structure",
    members = {
        RollbackEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.PropertyGroup = {
    type = "structure",
    members = {
        PropertyGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PropertyMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.EnvironmentProperties = {
    type = "structure",
    members = {
        PropertyGroups = {
            type = "list",
            member = M.PropertyGroup,
            traits = {
                required = true,
            },
        },
    },
}

M.ConfigurationType = {
    DEFAULT = "DEFAULT",
    CUSTOM = "CUSTOM",
}

M.CheckpointConfiguration = {
    type = "structure",
    members = {
        ConfigurationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CheckpointingEnabled = {
            type = "boolean",
        },
        CheckpointInterval = {
            type = "long",
        },
        MinPauseBetweenCheckpoints = {
            type = "long",
        },
    },
}

M.LogLevel = {
    INFO = "INFO",
    WARN = "WARN",
    ERROR = "ERROR",
    DEBUG = "DEBUG",
}

M.MetricsLevel = {
    APPLICATION = "APPLICATION",
    TASK = "TASK",
    OPERATOR = "OPERATOR",
    PARALLELISM = "PARALLELISM",
}

M.MonitoringConfiguration = {
    type = "structure",
    members = {
        ConfigurationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricsLevel = {
            type = "string",
        },
        LogLevel = {
            type = "string",
        },
    },
}

M.ParallelismConfiguration = {
    type = "structure",
    members = {
        ConfigurationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parallelism = {
            type = "integer",
        },
        ParallelismPerKPU = {
            type = "integer",
        },
        AutoScalingEnabled = {
            type = "boolean",
        },
    },
}

M.FlinkApplicationConfiguration = {
    type = "structure",
    members = {
        CheckpointConfiguration = M.CheckpointConfiguration,
        MonitoringConfiguration = M.MonitoringConfiguration,
        ParallelismConfiguration = M.ParallelismConfiguration,
    },
}

M.SqlApplicationConfiguration = {
    type = "structure",
    members = {
        Inputs = {
            type = "list",
            member = M.Input,
        },
        Outputs = {
            type = "list",
            member = M.Output,
        },
        ReferenceDataSources = {
            type = "list",
            member = M.ReferenceDataSource,
        },
    },
}

M.GlueDataCatalogConfiguration = {
    type = "structure",
    members = {
        DatabaseARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CatalogConfiguration = {
    type = "structure",
    members = {
        GlueDataCatalogConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GlueDataCatalogConfiguration }),
    },
}

M.ArtifactType = {
    UDF = "UDF",
    DEPENDENCY_JAR = "DEPENDENCY_JAR",
}

M.MavenReference = {
    type = "structure",
    members = {
        GroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ArtifactId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomArtifactConfiguration = {
    type = "structure",
    members = {
        ArtifactType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        S3ContentLocation = M.S3ContentLocation,
        MavenReference = M.MavenReference,
    },
}

M.S3ContentBaseLocation = {
    type = "structure",
    members = {
        BucketARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BasePath = {
            type = "string",
        },
    },
}

M.DeployAsApplicationConfiguration = {
    type = "structure",
    members = {
        S3ContentLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3ContentBaseLocation }),
    },
}

M.ZeppelinMonitoringConfiguration = {
    type = "structure",
    members = {
        LogLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ZeppelinApplicationConfiguration = {
    type = "structure",
    members = {
        MonitoringConfiguration = M.ZeppelinMonitoringConfiguration,
        CatalogConfiguration = M.CatalogConfiguration,
        DeployAsApplicationConfiguration = M.DeployAsApplicationConfiguration,
        CustomArtifactsConfiguration = {
            type = "list",
            member = M.CustomArtifactConfiguration,
        },
    },
}

M.ApplicationConfiguration = {
    type = "structure",
    members = {
        SqlApplicationConfiguration = M.SqlApplicationConfiguration,
        FlinkApplicationConfiguration = M.FlinkApplicationConfiguration,
        EnvironmentProperties = M.EnvironmentProperties,
        ApplicationCodeConfiguration = M.ApplicationCodeConfiguration,
        ApplicationSnapshotConfiguration = M.ApplicationSnapshotConfiguration,
        ApplicationSystemRollbackConfiguration = M.ApplicationSystemRollbackConfiguration,
        VpcConfigurations = {
            type = "list",
            member = M.VpcConfiguration,
        },
        ZeppelinApplicationConfiguration = M.ZeppelinApplicationConfiguration,
        ApplicationEncryptionConfiguration = M.ApplicationEncryptionConfiguration,
    },
}

M.ApplicationEncryptionConfigurationDescription = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        KeyType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationSnapshotConfigurationDescription = {
    type = "structure",
    members = {
        SnapshotsEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationSystemRollbackConfigurationDescription = {
    type = "structure",
    members = {
        RollbackEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.EnvironmentPropertyDescriptions = {
    type = "structure",
    members = {
        PropertyGroupDescriptions = {
            type = "list",
            member = M.PropertyGroup,
        },
    },
}

M.CheckpointConfigurationDescription = {
    type = "structure",
    members = {
        ConfigurationType = {
            type = "string",
        },
        CheckpointingEnabled = {
            type = "boolean",
        },
        CheckpointInterval = {
            type = "long",
        },
        MinPauseBetweenCheckpoints = {
            type = "long",
        },
    },
}

M.MonitoringConfigurationDescription = {
    type = "structure",
    members = {
        ConfigurationType = {
            type = "string",
        },
        MetricsLevel = {
            type = "string",
        },
        LogLevel = {
            type = "string",
        },
    },
}

M.ParallelismConfigurationDescription = {
    type = "structure",
    members = {
        ConfigurationType = {
            type = "string",
        },
        Parallelism = {
            type = "integer",
        },
        ParallelismPerKPU = {
            type = "integer",
        },
        CurrentParallelism = {
            type = "integer",
        },
        AutoScalingEnabled = {
            type = "boolean",
        },
    },
}

M.FlinkApplicationConfigurationDescription = {
    type = "structure",
    members = {
        CheckpointConfigurationDescription = M.CheckpointConfigurationDescription,
        MonitoringConfigurationDescription = M.MonitoringConfigurationDescription,
        ParallelismConfigurationDescription = M.ParallelismConfigurationDescription,
        JobPlanDescription = {
            type = "string",
        },
    },
}

M.ApplicationRestoreType = {
    SKIP_RESTORE_FROM_SNAPSHOT = "SKIP_RESTORE_FROM_SNAPSHOT",
    RESTORE_FROM_LATEST_SNAPSHOT = "RESTORE_FROM_LATEST_SNAPSHOT",
    RESTORE_FROM_CUSTOM_SNAPSHOT = "RESTORE_FROM_CUSTOM_SNAPSHOT",
}

M.ApplicationRestoreConfiguration = {
    type = "structure",
    members = {
        ApplicationRestoreType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotName = {
            type = "string",
        },
    },
}

M.FlinkRunConfiguration = {
    type = "structure",
    members = {
        AllowNonRestoredState = {
            type = "boolean",
        },
    },
}

M.RunConfigurationDescription = {
    type = "structure",
    members = {
        ApplicationRestoreConfigurationDescription = M.ApplicationRestoreConfiguration,
        FlinkRunConfigurationDescription = M.FlinkRunConfiguration,
    },
}

M.SqlApplicationConfigurationDescription = {
    type = "structure",
    members = {
        InputDescriptions = {
            type = "list",
            member = M.InputDescription,
        },
        OutputDescriptions = {
            type = "list",
            member = M.OutputDescription,
        },
        ReferenceDataSourceDescriptions = {
            type = "list",
            member = M.ReferenceDataSourceDescription,
        },
    },
}

M.GlueDataCatalogConfigurationDescription = {
    type = "structure",
    members = {
        DatabaseARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CatalogConfigurationDescription = {
    type = "structure",
    members = {
        GlueDataCatalogConfigurationDescription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GlueDataCatalogConfigurationDescription }),
    },
}

M.CustomArtifactConfigurationDescription = {
    type = "structure",
    members = {
        ArtifactType = {
            type = "string",
        },
        S3ContentLocationDescription = M.S3ContentLocation,
        MavenReferenceDescription = M.MavenReference,
    },
}

M.S3ContentBaseLocationDescription = {
    type = "structure",
    members = {
        BucketARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BasePath = {
            type = "string",
        },
    },
}

M.DeployAsApplicationConfigurationDescription = {
    type = "structure",
    members = {
        S3ContentLocationDescription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3ContentBaseLocationDescription }),
    },
}

M.ZeppelinMonitoringConfigurationDescription = {
    type = "structure",
    members = {
        LogLevel = {
            type = "string",
        },
    },
}

M.ZeppelinApplicationConfigurationDescription = {
    type = "structure",
    members = {
        MonitoringConfigurationDescription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ZeppelinMonitoringConfigurationDescription }),
        CatalogConfigurationDescription = M.CatalogConfigurationDescription,
        DeployAsApplicationConfigurationDescription = M.DeployAsApplicationConfigurationDescription,
        CustomArtifactsConfigurationDescription = {
            type = "list",
            member = M.CustomArtifactConfigurationDescription,
        },
    },
}

M.ApplicationConfigurationDescription = {
    type = "structure",
    members = {
        SqlApplicationConfigurationDescription = M.SqlApplicationConfigurationDescription,
        ApplicationCodeConfigurationDescription = M.ApplicationCodeConfigurationDescription,
        RunConfigurationDescription = M.RunConfigurationDescription,
        FlinkApplicationConfigurationDescription = M.FlinkApplicationConfigurationDescription,
        EnvironmentPropertyDescriptions = M.EnvironmentPropertyDescriptions,
        ApplicationSnapshotConfigurationDescription = M.ApplicationSnapshotConfigurationDescription,
        ApplicationSystemRollbackConfigurationDescription = M.ApplicationSystemRollbackConfigurationDescription,
        VpcConfigurationDescriptions = {
            type = "list",
            member = M.VpcConfigurationDescription,
        },
        ZeppelinApplicationConfigurationDescription = M.ZeppelinApplicationConfigurationDescription,
        ApplicationEncryptionConfigurationDescription = M.ApplicationEncryptionConfigurationDescription,
    },
}

M.ApplicationEncryptionConfigurationUpdate = {
    type = "structure",
    members = {
        KeyIdUpdate = {
            type = "string",
        },
        KeyTypeUpdate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationSnapshotConfigurationUpdate = {
    type = "structure",
    members = {
        SnapshotsEnabledUpdate = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationSystemRollbackConfigurationUpdate = {
    type = "structure",
    members = {
        RollbackEnabledUpdate = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.EnvironmentPropertyUpdates = {
    type = "structure",
    members = {
        PropertyGroups = {
            type = "list",
            member = M.PropertyGroup,
            traits = {
                required = true,
            },
        },
    },
}

M.CheckpointConfigurationUpdate = {
    type = "structure",
    members = {
        ConfigurationTypeUpdate = {
            type = "string",
        },
        CheckpointingEnabledUpdate = {
            type = "boolean",
        },
        CheckpointIntervalUpdate = {
            type = "long",
        },
        MinPauseBetweenCheckpointsUpdate = {
            type = "long",
        },
    },
}

M.MonitoringConfigurationUpdate = {
    type = "structure",
    members = {
        ConfigurationTypeUpdate = {
            type = "string",
        },
        MetricsLevelUpdate = {
            type = "string",
        },
        LogLevelUpdate = {
            type = "string",
        },
    },
}

M.ParallelismConfigurationUpdate = {
    type = "structure",
    members = {
        ConfigurationTypeUpdate = {
            type = "string",
        },
        ParallelismUpdate = {
            type = "integer",
        },
        ParallelismPerKPUUpdate = {
            type = "integer",
        },
        AutoScalingEnabledUpdate = {
            type = "boolean",
        },
    },
}

M.FlinkApplicationConfigurationUpdate = {
    type = "structure",
    members = {
        CheckpointConfigurationUpdate = M.CheckpointConfigurationUpdate,
        MonitoringConfigurationUpdate = M.MonitoringConfigurationUpdate,
        ParallelismConfigurationUpdate = M.ParallelismConfigurationUpdate,
    },
}

M.InputParallelismUpdate = {
    type = "structure",
    members = {
        CountUpdate = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.InputLambdaProcessorUpdate = {
    type = "structure",
    members = {
        ResourceARNUpdate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InputProcessingConfigurationUpdate = {
    type = "structure",
    members = {
        InputLambdaProcessorUpdate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputLambdaProcessorUpdate }),
    },
}

M.InputSchemaUpdate = {
    type = "structure",
    members = {
        RecordFormatUpdate = M.RecordFormat,
        RecordEncodingUpdate = {
            type = "string",
        },
        RecordColumnUpdates = {
            type = "list",
            member = M.RecordColumn,
        },
    },
}

M.KinesisFirehoseInputUpdate = {
    type = "structure",
    members = {
        ResourceARNUpdate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KinesisStreamsInputUpdate = {
    type = "structure",
    members = {
        ResourceARNUpdate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InputUpdate = {
    type = "structure",
    members = {
        InputId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NamePrefixUpdate = {
            type = "string",
        },
        InputProcessingConfigurationUpdate = M.InputProcessingConfigurationUpdate,
        KinesisStreamsInputUpdate = M.KinesisStreamsInputUpdate,
        KinesisFirehoseInputUpdate = M.KinesisFirehoseInputUpdate,
        InputSchemaUpdate = M.InputSchemaUpdate,
        InputParallelismUpdate = M.InputParallelismUpdate,
    },
}

M.KinesisFirehoseOutputUpdate = {
    type = "structure",
    members = {
        ResourceARNUpdate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KinesisStreamsOutputUpdate = {
    type = "structure",
    members = {
        ResourceARNUpdate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LambdaOutputUpdate = {
    type = "structure",
    members = {
        ResourceARNUpdate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OutputUpdate = {
    type = "structure",
    members = {
        OutputId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NameUpdate = {
            type = "string",
        },
        KinesisStreamsOutputUpdate = M.KinesisStreamsOutputUpdate,
        KinesisFirehoseOutputUpdate = M.KinesisFirehoseOutputUpdate,
        LambdaOutputUpdate = M.LambdaOutputUpdate,
        DestinationSchemaUpdate = M.DestinationSchema,
    },
}

M.S3ReferenceDataSourceUpdate = {
    type = "structure",
    members = {
        BucketARNUpdate = {
            type = "string",
        },
        FileKeyUpdate = {
            type = "string",
        },
    },
}

M.ReferenceDataSourceUpdate = {
    type = "structure",
    members = {
        ReferenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TableNameUpdate = {
            type = "string",
        },
        S3ReferenceDataSourceUpdate = M.S3ReferenceDataSourceUpdate,
        ReferenceSchemaUpdate = M.SourceSchema,
    },
}

M.SqlApplicationConfigurationUpdate = {
    type = "structure",
    members = {
        InputUpdates = {
            type = "list",
            member = M.InputUpdate,
        },
        OutputUpdates = {
            type = "list",
            member = M.OutputUpdate,
        },
        ReferenceDataSourceUpdates = {
            type = "list",
            member = M.ReferenceDataSourceUpdate,
        },
    },
}

M.VpcConfigurationUpdate = {
    type = "structure",
    members = {
        VpcConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SubnetIdUpdates = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupIdUpdates = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GlueDataCatalogConfigurationUpdate = {
    type = "structure",
    members = {
        DatabaseARNUpdate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CatalogConfigurationUpdate = {
    type = "structure",
    members = {
        GlueDataCatalogConfigurationUpdate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GlueDataCatalogConfigurationUpdate }),
    },
}

M.S3ContentBaseLocationUpdate = {
    type = "structure",
    members = {
        BucketARNUpdate = {
            type = "string",
        },
        BasePathUpdate = {
            type = "string",
        },
    },
}

M.DeployAsApplicationConfigurationUpdate = {
    type = "structure",
    members = {
        S3ContentLocationUpdate = M.S3ContentBaseLocationUpdate,
    },
}

M.ZeppelinMonitoringConfigurationUpdate = {
    type = "structure",
    members = {
        LogLevelUpdate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ZeppelinApplicationConfigurationUpdate = {
    type = "structure",
    members = {
        MonitoringConfigurationUpdate = M.ZeppelinMonitoringConfigurationUpdate,
        CatalogConfigurationUpdate = M.CatalogConfigurationUpdate,
        DeployAsApplicationConfigurationUpdate = M.DeployAsApplicationConfigurationUpdate,
        CustomArtifactsConfigurationUpdate = {
            type = "list",
            member = M.CustomArtifactConfiguration,
        },
    },
}

M.ApplicationConfigurationUpdate = {
    type = "structure",
    members = {
        SqlApplicationConfigurationUpdate = M.SqlApplicationConfigurationUpdate,
        ApplicationCodeConfigurationUpdate = M.ApplicationCodeConfigurationUpdate,
        FlinkApplicationConfigurationUpdate = M.FlinkApplicationConfigurationUpdate,
        EnvironmentPropertyUpdates = M.EnvironmentPropertyUpdates,
        ApplicationSnapshotConfigurationUpdate = M.ApplicationSnapshotConfigurationUpdate,
        ApplicationSystemRollbackConfigurationUpdate = M.ApplicationSystemRollbackConfigurationUpdate,
        VpcConfigurationUpdates = {
            type = "list",
            member = M.VpcConfigurationUpdate,
        },
        ZeppelinApplicationConfigurationUpdate = M.ZeppelinApplicationConfigurationUpdate,
        ApplicationEncryptionConfigurationUpdate = M.ApplicationEncryptionConfigurationUpdate,
    },
}

M.ApplicationMaintenanceConfigurationDescription = {
    type = "structure",
    members = {
        ApplicationMaintenanceWindowStartTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationMaintenanceWindowEndTime = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ApplicationMode = {
    STREAMING = "STREAMING",
    INTERACTIVE = "INTERACTIVE",
}

M.ApplicationStatus = {
    DELETING = "DELETING",
    STARTING = "STARTING",
    STOPPING = "STOPPING",
    READY = "READY",
    RUNNING = "RUNNING",
    UPDATING = "UPDATING",
    AUTOSCALING = "AUTOSCALING",
    FORCE_STOPPING = "FORCE_STOPPING",
    ROLLING_BACK = "ROLLING_BACK",
    MAINTENANCE = "MAINTENANCE",
    ROLLED_BACK = "ROLLED_BACK",
}

M.RuntimeEnvironment = {
    SQL_1_0 = "SQL-1_0",
    FLINK_1_6 = "FLINK-1_6",
    FLINK_1_8 = "FLINK-1_8",
    ZEPPELIN_FLINK_1_0 = "ZEPPELIN-FLINK-1_0",
    FLINK_1_11 = "FLINK-1_11",
    FLINK_1_13 = "FLINK-1_13",
    ZEPPELIN_FLINK_2_0 = "ZEPPELIN-FLINK-2_0",
    FLINK_1_15 = "FLINK-1_15",
    ZEPPELIN_FLINK_3_0 = "ZEPPELIN-FLINK-3_0",
    FLINK_1_18 = "FLINK-1_18",
    FLINK_1_19 = "FLINK-1_19",
    FLINK_1_20 = "FLINK-1_20",
    FLINK_2_2 = "FLINK-2_2",
}

M.ApplicationDetail = {
    type = "structure",
    members = {
        ApplicationARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationDescription = {
            type = "string",
        },
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuntimeEnvironment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceExecutionRole = {
            type = "string",
        },
        ApplicationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationVersionId = {
            type = "long",
            traits = {
                required = true,
            },
        },
        CreateTimestamp = {
            type = "timestamp",
        },
        LastUpdateTimestamp = {
            type = "timestamp",
        },
        ApplicationConfigurationDescription = M.ApplicationConfigurationDescription,
        CloudWatchLoggingOptionDescriptions = {
            type = "list",
            member = M.CloudWatchLoggingOptionDescription,
        },
        ApplicationMaintenanceConfigurationDescription = M.ApplicationMaintenanceConfigurationDescription,
        ApplicationVersionUpdatedFrom = {
            type = "long",
        },
        ApplicationVersionRolledBackFrom = {
            type = "long",
        },
        ApplicationVersionCreateTimestamp = {
            type = "timestamp",
        },
        ConditionalToken = {
            type = "string",
        },
        ApplicationVersionRolledBackTo = {
            type = "long",
        },
        ApplicationMode = {
            type = "string",
        },
    },
}

M.ApplicationMaintenanceConfigurationUpdate = {
    type = "structure",
    members = {
        ApplicationMaintenanceWindowStartTimeUpdate = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OperationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    CANCELLED = "CANCELLED",
    SUCCESSFUL = "SUCCESSFUL",
    FAILED = "FAILED",
}

M.ApplicationOperationInfo = {
    type = "structure",
    members = {
        Operation = {
            type = "string",
        },
        OperationId = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        OperationStatus = {
            type = "string",
        },
    },
}

M.ApplicationVersionChangeDetails = {
    type = "structure",
    members = {
        ApplicationVersionUpdatedFrom = {
            type = "long",
            traits = {
                required = true,
            },
        },
        ApplicationVersionUpdatedTo = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.ErrorInfo = {
    type = "structure",
    members = {
        ErrorString = {
            type = "string",
        },
    },
}

M.OperationFailureDetails = {
    type = "structure",
    members = {
        RollbackOperationId = {
            type = "string",
        },
        ErrorInfo = M.ErrorInfo,
    },
}

M.ApplicationOperationInfoDetails = {
    type = "structure",
    members = {
        Operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        OperationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationVersionChangeDetails = M.ApplicationVersionChangeDetails,
        OperationFailureDetails = M.OperationFailureDetails,
    },
}

M.ApplicationSummary = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationVersionId = {
            type = "long",
            traits = {
                required = true,
            },
        },
        RuntimeEnvironment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationMode = {
            type = "string",
        },
    },
}

M.ApplicationVersionSummary = {
    type = "structure",
    members = {
        ApplicationVersionId = {
            type = "long",
            traits = {
                required = true,
            },
        },
        ApplicationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CloudWatchLoggingOptionUpdate = {
    type = "structure",
    members = {
        CloudWatchLoggingOptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LogStreamARNUpdate = {
            type = "string",
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
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

M.CreateApplicationInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationDescription = {
            type = "string",
        },
        RuntimeEnvironment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceExecutionRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationConfiguration = M.ApplicationConfiguration,
        CloudWatchLoggingOptions = {
            type = "list",
            member = M.CloudWatchLoggingOption,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ApplicationMode = {
            type = "string",
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        ApplicationDetail = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApplicationDetail }),
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
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

M.UnsupportedOperationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UrlType = {
    FLINK_DASHBOARD_URL = "FLINK_DASHBOARD_URL",
    ZEPPELIN_UI_URL = "ZEPPELIN_UI_URL",
}

M.CreateApplicationPresignedUrlInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UrlType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionExpirationDurationInSeconds = {
            type = "long",
        },
    },
}

M.CreateApplicationPresignedUrlOutput = {
    type = "structure",
    members = {
        AuthorizedUrl = {
            type = "string",
        },
    },
}

M.CreateApplicationSnapshotInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateApplicationSnapshotOutput = {
    type = "structure",
}

M.DeleteApplicationInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreateTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationOperationOutput = {
    type = "structure",
}

M.DeleteApplicationCloudWatchLoggingOptionInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentApplicationVersionId = {
            type = "long",
        },
        CloudWatchLoggingOptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConditionalToken = {
            type = "string",
        },
    },
}

M.DeleteApplicationCloudWatchLoggingOptionOutput = {
    type = "structure",
    members = {
        ApplicationARN = {
            type = "string",
        },
        ApplicationVersionId = {
            type = "long",
        },
        CloudWatchLoggingOptionDescriptions = {
            type = "list",
            member = M.CloudWatchLoggingOptionDescription,
        },
        OperationId = {
            type = "string",
        },
    },
}

M.DeleteApplicationInputProcessingConfigurationInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentApplicationVersionId = {
            type = "long",
            traits = {
                required = true,
            },
        },
        InputId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationInputProcessingConfigurationOutput = {
    type = "structure",
    members = {
        ApplicationARN = {
            type = "string",
        },
        ApplicationVersionId = {
            type = "long",
        },
    },
}

M.DeleteApplicationOutputInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentApplicationVersionId = {
            type = "long",
            traits = {
                required = true,
            },
        },
        OutputId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationOutputOutput = {
    type = "structure",
    members = {
        ApplicationARN = {
            type = "string",
        },
        ApplicationVersionId = {
            type = "long",
        },
    },
}

M.DeleteApplicationReferenceDataSourceInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentApplicationVersionId = {
            type = "long",
            traits = {
                required = true,
            },
        },
        ReferenceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationReferenceDataSourceOutput = {
    type = "structure",
    members = {
        ApplicationARN = {
            type = "string",
        },
        ApplicationVersionId = {
            type = "long",
        },
    },
}

M.DeleteApplicationSnapshotInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotCreationTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationSnapshotOutput = {
    type = "structure",
}

M.DeleteApplicationVpcConfigurationInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentApplicationVersionId = {
            type = "long",
        },
        VpcConfigurationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ConditionalToken = {
            type = "string",
        },
    },
}

M.DeleteApplicationVpcConfigurationOutput = {
    type = "structure",
    members = {
        ApplicationARN = {
            type = "string",
        },
        ApplicationVersionId = {
            type = "long",
        },
        OperationId = {
            type = "string",
        },
    },
}

M.DescribeApplicationInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludeAdditionalDetails = {
            type = "boolean",
        },
    },
}

M.DescribeApplicationOutput = {
    type = "structure",
    members = {
        ApplicationDetail = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApplicationDetail }),
    },
}

M.DescribeApplicationOperationInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OperationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeApplicationOperationOutput = {
    type = "structure",
    members = {
        ApplicationOperationInfoDetails = M.ApplicationOperationInfoDetails,
    },
}

M.DescribeApplicationSnapshotInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SnapshotStatus = {
    CREATING = "CREATING",
    READY = "READY",
    DELETING = "DELETING",
    FAILED = "FAILED",
}

M.SnapshotDetails = {
    type = "structure",
    members = {
        SnapshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationVersionId = {
            type = "long",
            traits = {
                required = true,
            },
        },
        SnapshotCreationTimestamp = {
            type = "timestamp",
        },
        RuntimeEnvironment = {
            type = "string",
        },
        ApplicationEncryptionConfigurationDescription = M.ApplicationEncryptionConfigurationDescription,
    },
}

M.DescribeApplicationSnapshotOutput = {
    type = "structure",
    members = {
        SnapshotDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SnapshotDetails }),
    },
}

M.DescribeApplicationVersionInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationVersionId = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeApplicationVersionOutput = {
    type = "structure",
    members = {
        ApplicationVersionDetail = M.ApplicationDetail,
    },
}

M.S3Configuration = {
    type = "structure",
    members = {
        BucketARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FileKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DiscoverInputSchemaInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
        },
        ServiceExecutionRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputStartingPositionConfiguration = M.InputStartingPositionConfiguration,
        S3Configuration = M.S3Configuration,
        InputProcessingConfiguration = M.InputProcessingConfiguration,
    },
}

M.DiscoverInputSchemaOutput = {
    type = "structure",
    members = {
        InputSchema = M.SourceSchema,
        ParsedInputRecords = {
            type = "list",
            member = { type = "list" },
        },
        ProcessedInputRecords = {
            type = "list",
            member = { type = "string" },
        },
        RawInputRecords = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ResourceProvisionedThroughputExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnableToDetectSchemaException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RawInputRecords = {
            type = "list",
            member = { type = "string" },
        },
        ProcessedInputRecords = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListApplicationOperationsInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Operation = {
            type = "string",
        },
        OperationStatus = {
            type = "string",
        },
    },
}

M.ListApplicationOperationsOutput = {
    type = "structure",
    members = {
        ApplicationOperationInfoList = {
            type = "list",
            member = M.ApplicationOperationInfo,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApplicationsInput = {
    type = "structure",
    members = {
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApplicationsOutput = {
    type = "structure",
    members = {
        ApplicationSummaries = {
            type = "list",
            member = M.ApplicationSummary,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApplicationSnapshotsInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApplicationSnapshotsOutput = {
    type = "structure",
    members = {
        SnapshotSummaries = {
            type = "list",
            member = M.SnapshotDetails,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApplicationVersionsInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Limit = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListApplicationVersionsOutput = {
    type = "structure",
    members = {
        ApplicationVersionSummaries = {
            type = "list",
            member = M.ApplicationVersionSummary,
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
            member = M.Tag,
        },
    },
}

M.RollbackApplicationInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentApplicationVersionId = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.RollbackApplicationOutput = {
    type = "structure",
    members = {
        ApplicationDetail = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApplicationDetail }),
        OperationId = {
            type = "string",
        },
    },
}

M.SqlRunConfiguration = {
    type = "structure",
    members = {
        InputId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputStartingPositionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputStartingPositionConfiguration }),
    },
}

M.RunConfiguration = {
    type = "structure",
    members = {
        FlinkRunConfiguration = M.FlinkRunConfiguration,
        SqlRunConfigurations = {
            type = "list",
            member = M.SqlRunConfiguration,
        },
        ApplicationRestoreConfiguration = M.ApplicationRestoreConfiguration,
    },
}

M.StartApplicationInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RunConfiguration = M.RunConfiguration,
    },
}

M.StartApplicationOutput = {
    type = "structure",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.StopApplicationInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Force = {
            type = "boolean",
        },
    },
}

M.StopApplicationOutput = {
    type = "structure",
    members = {
        OperationId = {
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
            member = M.Tag,
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
}

M.RunConfigurationUpdate = {
    type = "structure",
    members = {
        FlinkRunConfiguration = M.FlinkRunConfiguration,
        ApplicationRestoreConfiguration = M.ApplicationRestoreConfiguration,
    },
}

M.UpdateApplicationInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentApplicationVersionId = {
            type = "long",
        },
        ApplicationConfigurationUpdate = M.ApplicationConfigurationUpdate,
        ServiceExecutionRoleUpdate = {
            type = "string",
        },
        RunConfigurationUpdate = M.RunConfigurationUpdate,
        CloudWatchLoggingOptionUpdates = {
            type = "list",
            member = M.CloudWatchLoggingOptionUpdate,
        },
        ConditionalToken = {
            type = "string",
        },
        RuntimeEnvironmentUpdate = {
            type = "string",
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
    members = {
        ApplicationDetail = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApplicationDetail }),
        OperationId = {
            type = "string",
        },
    },
}

M.UpdateApplicationMaintenanceConfigurationInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApplicationMaintenanceConfigurationUpdate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApplicationMaintenanceConfigurationUpdate }),
    },
}

M.UpdateApplicationMaintenanceConfigurationOutput = {
    type = "structure",
    members = {
        ApplicationARN = {
            type = "string",
        },
        ApplicationMaintenanceConfigurationDescription = M.ApplicationMaintenanceConfigurationDescription,
    },
}

return M
