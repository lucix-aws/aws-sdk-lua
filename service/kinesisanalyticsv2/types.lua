local M = {}

M.CloudWatchLoggingOption = {
    type = "structure",
    id = "CloudWatchLoggingOption",
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
    id = "AddApplicationCloudWatchLoggingOptionInput",
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
    id = "CloudWatchLoggingOptionDescription",
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
    id = "AddApplicationCloudWatchLoggingOptionOutput",
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
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidApplicationConfigurationException = {
    type = "structure",
    id = "InvalidApplicationConfigurationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidArgumentException = {
    type = "structure",
    id = "InvalidArgumentException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
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

M.InputParallelism = {
    type = "structure",
    id = "InputParallelism",
    members = {
        Count = {
            type = "integer",
        },
    },
}

M.InputLambdaProcessor = {
    type = "structure",
    id = "InputLambdaProcessor",
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
    id = "InputProcessingConfiguration",
    members = {
        InputLambdaProcessor = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputLambdaProcessor }),
    },
}

M.RecordColumn = {
    type = "structure",
    id = "RecordColumn",
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
    id = "CSVMappingParameters",
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
    id = "JSONMappingParameters",
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
    id = "MappingParameters",
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
    id = "RecordFormat",
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
    id = "SourceSchema",
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
    id = "KinesisFirehoseInput",
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
    id = "KinesisStreamsInput",
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
    id = "Input",
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
    id = "AddApplicationInputInput",
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
    id = "InputLambdaProcessorDescription",
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
    id = "InputProcessingConfigurationDescription",
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
    id = "InputStartingPositionConfiguration",
    members = {
        InputStartingPosition = {
            type = "string",
        },
    },
}

M.KinesisFirehoseInputDescription = {
    type = "structure",
    id = "KinesisFirehoseInputDescription",
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
    id = "KinesisStreamsInputDescription",
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
    id = "InputDescription",
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
    id = "AddApplicationInputOutput",
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
    id = "CodeValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AddApplicationInputProcessingConfigurationInput = {
    type = "structure",
    id = "AddApplicationInputProcessingConfigurationInput",
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
    id = "AddApplicationInputProcessingConfigurationOutput",
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
    id = "DestinationSchema",
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
    id = "KinesisFirehoseOutput",
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
    id = "KinesisStreamsOutput",
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
    id = "LambdaOutput",
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
    id = "Output",
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
    id = "AddApplicationOutputInput",
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
    id = "KinesisFirehoseOutputDescription",
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
    id = "KinesisStreamsOutputDescription",
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
    id = "LambdaOutputDescription",
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
    id = "OutputDescription",
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
    id = "AddApplicationOutputOutput",
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
    id = "S3ReferenceDataSource",
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
    id = "ReferenceDataSource",
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
    id = "AddApplicationReferenceDataSourceInput",
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
    id = "S3ReferenceDataSourceDescription",
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
    id = "ReferenceDataSourceDescription",
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
    id = "AddApplicationReferenceDataSourceOutput",
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
    id = "VpcConfiguration",
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
    id = "AddApplicationVpcConfigurationInput",
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
    id = "VpcConfigurationDescription",
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
    id = "AddApplicationVpcConfigurationOutput",
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
    id = "S3ContentLocation",
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
    id = "CodeContent",
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
    id = "ApplicationCodeConfiguration",
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
    id = "S3ApplicationCodeLocationDescription",
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
    id = "CodeContentDescription",
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
    id = "ApplicationCodeConfigurationDescription",
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
    id = "S3ContentLocationUpdate",
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
    id = "CodeContentUpdate",
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
    id = "ApplicationCodeConfigurationUpdate",
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
    id = "ApplicationEncryptionConfiguration",
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
    id = "ApplicationSnapshotConfiguration",
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
    id = "ApplicationSystemRollbackConfiguration",
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
    id = "PropertyGroup",
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
    id = "EnvironmentProperties",
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
    id = "CheckpointConfiguration",
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
    id = "MonitoringConfiguration",
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
    id = "ParallelismConfiguration",
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
    id = "FlinkApplicationConfiguration",
    members = {
        CheckpointConfiguration = M.CheckpointConfiguration,
        MonitoringConfiguration = M.MonitoringConfiguration,
        ParallelismConfiguration = M.ParallelismConfiguration,
    },
}

M.SqlApplicationConfiguration = {
    type = "structure",
    id = "SqlApplicationConfiguration",
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
    id = "GlueDataCatalogConfiguration",
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
    id = "CatalogConfiguration",
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
    id = "MavenReference",
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
    id = "CustomArtifactConfiguration",
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
    id = "S3ContentBaseLocation",
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
    id = "DeployAsApplicationConfiguration",
    members = {
        S3ContentLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3ContentBaseLocation }),
    },
}

M.ZeppelinMonitoringConfiguration = {
    type = "structure",
    id = "ZeppelinMonitoringConfiguration",
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
    id = "ZeppelinApplicationConfiguration",
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
    id = "ApplicationConfiguration",
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
    id = "ApplicationEncryptionConfigurationDescription",
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
    id = "ApplicationSnapshotConfigurationDescription",
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
    id = "ApplicationSystemRollbackConfigurationDescription",
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
    id = "EnvironmentPropertyDescriptions",
    members = {
        PropertyGroupDescriptions = {
            type = "list",
            member = M.PropertyGroup,
        },
    },
}

M.CheckpointConfigurationDescription = {
    type = "structure",
    id = "CheckpointConfigurationDescription",
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
    id = "MonitoringConfigurationDescription",
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
    id = "ParallelismConfigurationDescription",
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
    id = "FlinkApplicationConfigurationDescription",
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
    id = "ApplicationRestoreConfiguration",
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
    id = "FlinkRunConfiguration",
    members = {
        AllowNonRestoredState = {
            type = "boolean",
        },
    },
}

M.RunConfigurationDescription = {
    type = "structure",
    id = "RunConfigurationDescription",
    members = {
        ApplicationRestoreConfigurationDescription = M.ApplicationRestoreConfiguration,
        FlinkRunConfigurationDescription = M.FlinkRunConfiguration,
    },
}

M.SqlApplicationConfigurationDescription = {
    type = "structure",
    id = "SqlApplicationConfigurationDescription",
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
    id = "GlueDataCatalogConfigurationDescription",
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
    id = "CatalogConfigurationDescription",
    members = {
        GlueDataCatalogConfigurationDescription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GlueDataCatalogConfigurationDescription }),
    },
}

M.CustomArtifactConfigurationDescription = {
    type = "structure",
    id = "CustomArtifactConfigurationDescription",
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
    id = "S3ContentBaseLocationDescription",
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
    id = "DeployAsApplicationConfigurationDescription",
    members = {
        S3ContentLocationDescription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3ContentBaseLocationDescription }),
    },
}

M.ZeppelinMonitoringConfigurationDescription = {
    type = "structure",
    id = "ZeppelinMonitoringConfigurationDescription",
    members = {
        LogLevel = {
            type = "string",
        },
    },
}

M.ZeppelinApplicationConfigurationDescription = {
    type = "structure",
    id = "ZeppelinApplicationConfigurationDescription",
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
    id = "ApplicationConfigurationDescription",
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
    id = "ApplicationEncryptionConfigurationUpdate",
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
    id = "ApplicationSnapshotConfigurationUpdate",
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
    id = "ApplicationSystemRollbackConfigurationUpdate",
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
    id = "EnvironmentPropertyUpdates",
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
    id = "CheckpointConfigurationUpdate",
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
    id = "MonitoringConfigurationUpdate",
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
    id = "ParallelismConfigurationUpdate",
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
    id = "FlinkApplicationConfigurationUpdate",
    members = {
        CheckpointConfigurationUpdate = M.CheckpointConfigurationUpdate,
        MonitoringConfigurationUpdate = M.MonitoringConfigurationUpdate,
        ParallelismConfigurationUpdate = M.ParallelismConfigurationUpdate,
    },
}

M.InputParallelismUpdate = {
    type = "structure",
    id = "InputParallelismUpdate",
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
    id = "InputLambdaProcessorUpdate",
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
    id = "InputProcessingConfigurationUpdate",
    members = {
        InputLambdaProcessorUpdate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputLambdaProcessorUpdate }),
    },
}

M.InputSchemaUpdate = {
    type = "structure",
    id = "InputSchemaUpdate",
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
    id = "KinesisFirehoseInputUpdate",
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
    id = "KinesisStreamsInputUpdate",
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
    id = "InputUpdate",
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
    id = "KinesisFirehoseOutputUpdate",
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
    id = "KinesisStreamsOutputUpdate",
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
    id = "LambdaOutputUpdate",
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
    id = "OutputUpdate",
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
    id = "S3ReferenceDataSourceUpdate",
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
    id = "ReferenceDataSourceUpdate",
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
    id = "SqlApplicationConfigurationUpdate",
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
    id = "VpcConfigurationUpdate",
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
    id = "GlueDataCatalogConfigurationUpdate",
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
    id = "CatalogConfigurationUpdate",
    members = {
        GlueDataCatalogConfigurationUpdate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GlueDataCatalogConfigurationUpdate }),
    },
}

M.S3ContentBaseLocationUpdate = {
    type = "structure",
    id = "S3ContentBaseLocationUpdate",
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
    id = "DeployAsApplicationConfigurationUpdate",
    members = {
        S3ContentLocationUpdate = M.S3ContentBaseLocationUpdate,
    },
}

M.ZeppelinMonitoringConfigurationUpdate = {
    type = "structure",
    id = "ZeppelinMonitoringConfigurationUpdate",
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
    id = "ZeppelinApplicationConfigurationUpdate",
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
    id = "ApplicationConfigurationUpdate",
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
    id = "ApplicationMaintenanceConfigurationDescription",
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
    id = "ApplicationDetail",
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
    id = "ApplicationMaintenanceConfigurationUpdate",
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
    id = "ApplicationOperationInfo",
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
    id = "ApplicationVersionChangeDetails",
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
    id = "ErrorInfo",
    members = {
        ErrorString = {
            type = "string",
        },
    },
}

M.OperationFailureDetails = {
    type = "structure",
    id = "OperationFailureDetails",
    members = {
        RollbackOperationId = {
            type = "string",
        },
        ErrorInfo = M.ErrorInfo,
    },
}

M.ApplicationOperationInfoDetails = {
    type = "structure",
    id = "ApplicationOperationInfoDetails",
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
    id = "ApplicationSummary",
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
    id = "ApplicationVersionSummary",
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
    id = "CloudWatchLoggingOptionUpdate",
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
    id = "Tag",
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
    id = "CreateApplicationInput",
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
    id = "CreateApplicationOutput",
    members = {
        ApplicationDetail = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApplicationDetail }),
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedOperationException = {
    type = "structure",
    id = "UnsupportedOperationException",
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
    id = "CreateApplicationPresignedUrlInput",
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
    id = "CreateApplicationPresignedUrlOutput",
    members = {
        AuthorizedUrl = {
            type = "string",
        },
    },
}

M.CreateApplicationSnapshotInput = {
    type = "structure",
    id = "CreateApplicationSnapshotInput",
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
    id = "CreateApplicationSnapshotOutput",
}

M.DeleteApplicationInput = {
    type = "structure",
    id = "DeleteApplicationInput",
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
    id = "DeleteApplicationOperationOutput",
}

M.DeleteApplicationCloudWatchLoggingOptionInput = {
    type = "structure",
    id = "DeleteApplicationCloudWatchLoggingOptionInput",
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
    id = "DeleteApplicationCloudWatchLoggingOptionOutput",
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
    id = "DeleteApplicationInputProcessingConfigurationInput",
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
    id = "DeleteApplicationInputProcessingConfigurationOutput",
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
    id = "DeleteApplicationOutputInput",
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
    id = "DeleteApplicationOutputOutput",
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
    id = "DeleteApplicationReferenceDataSourceInput",
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
    id = "DeleteApplicationReferenceDataSourceOutput",
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
    id = "DeleteApplicationSnapshotInput",
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
    id = "DeleteApplicationSnapshotOutput",
}

M.DeleteApplicationVpcConfigurationInput = {
    type = "structure",
    id = "DeleteApplicationVpcConfigurationInput",
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
    id = "DeleteApplicationVpcConfigurationOutput",
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
    id = "DescribeApplicationInput",
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
    id = "DescribeApplicationOutput",
    members = {
        ApplicationDetail = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApplicationDetail }),
    },
}

M.DescribeApplicationOperationInput = {
    type = "structure",
    id = "DescribeApplicationOperationInput",
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
    id = "DescribeApplicationOperationOutput",
    members = {
        ApplicationOperationInfoDetails = M.ApplicationOperationInfoDetails,
    },
}

M.DescribeApplicationSnapshotInput = {
    type = "structure",
    id = "DescribeApplicationSnapshotInput",
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
    id = "SnapshotDetails",
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
    id = "DescribeApplicationSnapshotOutput",
    members = {
        SnapshotDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SnapshotDetails }),
    },
}

M.DescribeApplicationVersionInput = {
    type = "structure",
    id = "DescribeApplicationVersionInput",
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
    id = "DescribeApplicationVersionOutput",
    members = {
        ApplicationVersionDetail = M.ApplicationDetail,
    },
}

M.S3Configuration = {
    type = "structure",
    id = "S3Configuration",
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
    id = "DiscoverInputSchemaInput",
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
    id = "DiscoverInputSchemaOutput",
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
    id = "ResourceProvisionedThroughputExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UnableToDetectSchemaException = {
    type = "structure",
    id = "UnableToDetectSchemaException",
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
    id = "ListApplicationOperationsInput",
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
    id = "ListApplicationOperationsOutput",
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
    id = "ListApplicationsInput",
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
    id = "ListApplicationsOutput",
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
    id = "ListApplicationSnapshotsInput",
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
    id = "ListApplicationSnapshotsOutput",
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
    id = "ListApplicationVersionsInput",
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
    id = "ListApplicationVersionsOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.RollbackApplicationInput = {
    type = "structure",
    id = "RollbackApplicationInput",
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
    id = "RollbackApplicationOutput",
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
    id = "SqlRunConfiguration",
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
    id = "RunConfiguration",
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
    id = "StartApplicationInput",
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
    id = "StartApplicationOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.StopApplicationInput = {
    type = "structure",
    id = "StopApplicationInput",
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
    id = "StopApplicationOutput",
    members = {
        OperationId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.RunConfigurationUpdate = {
    type = "structure",
    id = "RunConfigurationUpdate",
    members = {
        FlinkRunConfiguration = M.FlinkRunConfiguration,
        ApplicationRestoreConfiguration = M.ApplicationRestoreConfiguration,
    },
}

M.UpdateApplicationInput = {
    type = "structure",
    id = "UpdateApplicationInput",
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
    id = "UpdateApplicationOutput",
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
    id = "UpdateApplicationMaintenanceConfigurationInput",
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
    id = "UpdateApplicationMaintenanceConfigurationOutput",
    members = {
        ApplicationARN = {
            type = "string",
        },
        ApplicationMaintenanceConfigurationDescription = M.ApplicationMaintenanceConfigurationDescription,
    },
}

return M
