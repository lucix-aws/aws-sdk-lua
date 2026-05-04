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
            type = "number",
        },
        CloudWatchLoggingOption = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
        },
        CloudWatchLoggingOptionDescriptions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        InputLambdaProcessor = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        JSONMappingParameters = {
            type = "structure",
        },
        CSVMappingParameters = {
            type = "structure",
        },
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
        MappingParameters = {
            type = "structure",
        },
    },
}

M.SourceSchema = {
    type = "structure",
    members = {
        RecordFormat = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RecordEncoding = {
            type = "string",
        },
        RecordColumns = {
            type = "list",
            member_type = "structure",
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
        InputProcessingConfiguration = {
            type = "structure",
        },
        KinesisStreamsInput = {
            type = "structure",
        },
        KinesisFirehoseInput = {
            type = "structure",
        },
        InputParallelism = {
            type = "structure",
        },
        InputSchema = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Input = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        InputLambdaProcessorDescription = {
            type = "structure",
        },
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
            member_type = "string",
        },
        InputProcessingConfigurationDescription = {
            type = "structure",
        },
        KinesisStreamsInputDescription = {
            type = "structure",
        },
        KinesisFirehoseInputDescription = {
            type = "structure",
        },
        InputSchema = {
            type = "structure",
        },
        InputParallelism = {
            type = "structure",
        },
        InputStartingPositionConfiguration = {
            type = "structure",
        },
    },
}

M.AddApplicationInputOutput = {
    type = "structure",
    members = {
        ApplicationARN = {
            type = "string",
        },
        ApplicationVersionId = {
            type = "number",
        },
        InputDescriptions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
        InputProcessingConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AddApplicationInputProcessingConfigurationOutput = {
    type = "structure",
    members = {
        ApplicationARN = {
            type = "string",
        },
        ApplicationVersionId = {
            type = "number",
        },
        InputId = {
            type = "string",
        },
        InputProcessingConfigurationDescription = {
            type = "structure",
        },
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
        KinesisStreamsOutput = {
            type = "structure",
        },
        KinesisFirehoseOutput = {
            type = "structure",
        },
        LambdaOutput = {
            type = "structure",
        },
        DestinationSchema = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Output = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        KinesisStreamsOutputDescription = {
            type = "structure",
        },
        KinesisFirehoseOutputDescription = {
            type = "structure",
        },
        LambdaOutputDescription = {
            type = "structure",
        },
        DestinationSchema = {
            type = "structure",
        },
    },
}

M.AddApplicationOutputOutput = {
    type = "structure",
    members = {
        ApplicationARN = {
            type = "string",
        },
        ApplicationVersionId = {
            type = "number",
        },
        OutputDescriptions = {
            type = "list",
            member_type = "structure",
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
        S3ReferenceDataSource = {
            type = "structure",
        },
        ReferenceSchema = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        ReferenceDataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        S3ReferenceDataSourceDescription = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ReferenceSchema = {
            type = "structure",
        },
    },
}

M.AddApplicationReferenceDataSourceOutput = {
    type = "structure",
    members = {
        ApplicationARN = {
            type = "string",
        },
        ApplicationVersionId = {
            type = "number",
        },
        ReferenceDataSourceDescriptions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.VpcConfiguration = {
    type = "structure",
    members = {
        SubnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        VpcConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        VpcConfigurationDescription = {
            type = "structure",
        },
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
        S3ContentLocation = {
            type = "structure",
        },
    },
}

M.CodeContentType = {
    PLAINTEXT = "PLAINTEXT",
    ZIPFILE = "ZIPFILE",
}

M.ApplicationCodeConfiguration = {
    type = "structure",
    members = {
        CodeContent = {
            type = "structure",
        },
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
            type = "number",
        },
        S3ApplicationCodeLocationDescription = {
            type = "structure",
        },
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
        CodeContentDescription = {
            type = "structure",
        },
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
        S3ContentLocationUpdate = {
            type = "structure",
        },
    },
}

M.ApplicationCodeConfigurationUpdate = {
    type = "structure",
    members = {
        CodeContentTypeUpdate = {
            type = "string",
        },
        CodeContentUpdate = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
            type = "number",
        },
        MinPauseBetweenCheckpoints = {
            type = "number",
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
            type = "number",
        },
        ParallelismPerKPU = {
            type = "number",
        },
        AutoScalingEnabled = {
            type = "boolean",
        },
    },
}

M.FlinkApplicationConfiguration = {
    type = "structure",
    members = {
        CheckpointConfiguration = {
            type = "structure",
        },
        MonitoringConfiguration = {
            type = "structure",
        },
        ParallelismConfiguration = {
            type = "structure",
        },
    },
}

M.SqlApplicationConfiguration = {
    type = "structure",
    members = {
        Inputs = {
            type = "list",
            member_type = "structure",
        },
        Outputs = {
            type = "list",
            member_type = "structure",
        },
        ReferenceDataSources = {
            type = "list",
            member_type = "structure",
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
        GlueDataCatalogConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        S3ContentLocation = {
            type = "structure",
        },
        MavenReference = {
            type = "structure",
        },
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
        S3ContentLocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        MonitoringConfiguration = {
            type = "structure",
        },
        CatalogConfiguration = {
            type = "structure",
        },
        DeployAsApplicationConfiguration = {
            type = "structure",
        },
        CustomArtifactsConfiguration = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ApplicationConfiguration = {
    type = "structure",
    members = {
        SqlApplicationConfiguration = {
            type = "structure",
        },
        FlinkApplicationConfiguration = {
            type = "structure",
        },
        EnvironmentProperties = {
            type = "structure",
        },
        ApplicationCodeConfiguration = {
            type = "structure",
        },
        ApplicationSnapshotConfiguration = {
            type = "structure",
        },
        ApplicationSystemRollbackConfiguration = {
            type = "structure",
        },
        VpcConfigurations = {
            type = "list",
            member_type = "structure",
        },
        ZeppelinApplicationConfiguration = {
            type = "structure",
        },
        ApplicationEncryptionConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
        },
        MinPauseBetweenCheckpoints = {
            type = "number",
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
            type = "number",
        },
        ParallelismPerKPU = {
            type = "number",
        },
        CurrentParallelism = {
            type = "number",
        },
        AutoScalingEnabled = {
            type = "boolean",
        },
    },
}

M.FlinkApplicationConfigurationDescription = {
    type = "structure",
    members = {
        CheckpointConfigurationDescription = {
            type = "structure",
        },
        MonitoringConfigurationDescription = {
            type = "structure",
        },
        ParallelismConfigurationDescription = {
            type = "structure",
        },
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
        ApplicationRestoreConfigurationDescription = {
            type = "structure",
        },
        FlinkRunConfigurationDescription = {
            type = "structure",
        },
    },
}

M.SqlApplicationConfigurationDescription = {
    type = "structure",
    members = {
        InputDescriptions = {
            type = "list",
            member_type = "structure",
        },
        OutputDescriptions = {
            type = "list",
            member_type = "structure",
        },
        ReferenceDataSourceDescriptions = {
            type = "list",
            member_type = "structure",
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
        GlueDataCatalogConfigurationDescription = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomArtifactConfigurationDescription = {
    type = "structure",
    members = {
        ArtifactType = {
            type = "string",
        },
        S3ContentLocationDescription = {
            type = "structure",
        },
        MavenReferenceDescription = {
            type = "structure",
        },
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
        S3ContentLocationDescription = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        MonitoringConfigurationDescription = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CatalogConfigurationDescription = {
            type = "structure",
        },
        DeployAsApplicationConfigurationDescription = {
            type = "structure",
        },
        CustomArtifactsConfigurationDescription = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ApplicationConfigurationDescription = {
    type = "structure",
    members = {
        SqlApplicationConfigurationDescription = {
            type = "structure",
        },
        ApplicationCodeConfigurationDescription = {
            type = "structure",
        },
        RunConfigurationDescription = {
            type = "structure",
        },
        FlinkApplicationConfigurationDescription = {
            type = "structure",
        },
        EnvironmentPropertyDescriptions = {
            type = "structure",
        },
        ApplicationSnapshotConfigurationDescription = {
            type = "structure",
        },
        ApplicationSystemRollbackConfigurationDescription = {
            type = "structure",
        },
        VpcConfigurationDescriptions = {
            type = "list",
            member_type = "structure",
        },
        ZeppelinApplicationConfigurationDescription = {
            type = "structure",
        },
        ApplicationEncryptionConfigurationDescription = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
        },
        MinPauseBetweenCheckpointsUpdate = {
            type = "number",
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
            type = "number",
        },
        ParallelismPerKPUUpdate = {
            type = "number",
        },
        AutoScalingEnabledUpdate = {
            type = "boolean",
        },
    },
}

M.FlinkApplicationConfigurationUpdate = {
    type = "structure",
    members = {
        CheckpointConfigurationUpdate = {
            type = "structure",
        },
        MonitoringConfigurationUpdate = {
            type = "structure",
        },
        ParallelismConfigurationUpdate = {
            type = "structure",
        },
    },
}

M.InputParallelismUpdate = {
    type = "structure",
    members = {
        CountUpdate = {
            type = "number",
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
        InputLambdaProcessorUpdate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InputSchemaUpdate = {
    type = "structure",
    members = {
        RecordFormatUpdate = {
            type = "structure",
        },
        RecordEncodingUpdate = {
            type = "string",
        },
        RecordColumnUpdates = {
            type = "list",
            member_type = "structure",
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
        InputProcessingConfigurationUpdate = {
            type = "structure",
        },
        KinesisStreamsInputUpdate = {
            type = "structure",
        },
        KinesisFirehoseInputUpdate = {
            type = "structure",
        },
        InputSchemaUpdate = {
            type = "structure",
        },
        InputParallelismUpdate = {
            type = "structure",
        },
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
        KinesisStreamsOutputUpdate = {
            type = "structure",
        },
        KinesisFirehoseOutputUpdate = {
            type = "structure",
        },
        LambdaOutputUpdate = {
            type = "structure",
        },
        DestinationSchemaUpdate = {
            type = "structure",
        },
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
        S3ReferenceDataSourceUpdate = {
            type = "structure",
        },
        ReferenceSchemaUpdate = {
            type = "structure",
        },
    },
}

M.SqlApplicationConfigurationUpdate = {
    type = "structure",
    members = {
        InputUpdates = {
            type = "list",
            member_type = "structure",
        },
        OutputUpdates = {
            type = "list",
            member_type = "structure",
        },
        ReferenceDataSourceUpdates = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
        },
        SecurityGroupIdUpdates = {
            type = "list",
            member_type = "string",
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
        GlueDataCatalogConfigurationUpdate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        S3ContentLocationUpdate = {
            type = "structure",
        },
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
        MonitoringConfigurationUpdate = {
            type = "structure",
        },
        CatalogConfigurationUpdate = {
            type = "structure",
        },
        DeployAsApplicationConfigurationUpdate = {
            type = "structure",
        },
        CustomArtifactsConfigurationUpdate = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ApplicationConfigurationUpdate = {
    type = "structure",
    members = {
        SqlApplicationConfigurationUpdate = {
            type = "structure",
        },
        ApplicationCodeConfigurationUpdate = {
            type = "structure",
        },
        FlinkApplicationConfigurationUpdate = {
            type = "structure",
        },
        EnvironmentPropertyUpdates = {
            type = "structure",
        },
        ApplicationSnapshotConfigurationUpdate = {
            type = "structure",
        },
        ApplicationSystemRollbackConfigurationUpdate = {
            type = "structure",
        },
        VpcConfigurationUpdates = {
            type = "list",
            member_type = "structure",
        },
        ZeppelinApplicationConfigurationUpdate = {
            type = "structure",
        },
        ApplicationEncryptionConfigurationUpdate = {
            type = "structure",
        },
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
            type = "number",
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
        ApplicationConfigurationDescription = {
            type = "structure",
        },
        CloudWatchLoggingOptionDescriptions = {
            type = "list",
            member_type = "structure",
        },
        ApplicationMaintenanceConfigurationDescription = {
            type = "structure",
        },
        ApplicationVersionUpdatedFrom = {
            type = "number",
        },
        ApplicationVersionRolledBackFrom = {
            type = "number",
        },
        ApplicationVersionCreateTimestamp = {
            type = "timestamp",
        },
        ConditionalToken = {
            type = "string",
        },
        ApplicationVersionRolledBackTo = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        ApplicationVersionUpdatedTo = {
            type = "number",
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
        ErrorInfo = {
            type = "structure",
        },
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
        ApplicationVersionChangeDetails = {
            type = "structure",
        },
        OperationFailureDetails = {
            type = "structure",
        },
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
            type = "number",
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
            type = "number",
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
        ApplicationConfiguration = {
            type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ApplicationMode = {
            type = "string",
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        ApplicationDetail = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            type = "number",
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
            type = "number",
        },
        CloudWatchLoggingOptionDescriptions = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
            type = "number",
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
        ApplicationDetail = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ApplicationOperationInfoDetails = {
            type = "structure",
        },
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
            type = "number",
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
        ApplicationEncryptionConfigurationDescription = {
            type = "structure",
        },
    },
}

M.DescribeApplicationSnapshotOutput = {
    type = "structure",
    members = {
        SnapshotDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeApplicationVersionOutput = {
    type = "structure",
    members = {
        ApplicationVersionDetail = {
            type = "structure",
        },
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
        InputStartingPositionConfiguration = {
            type = "structure",
        },
        S3Configuration = {
            type = "structure",
        },
        InputProcessingConfiguration = {
            type = "structure",
        },
    },
}

M.DiscoverInputSchemaOutput = {
    type = "structure",
    members = {
        InputSchema = {
            type = "structure",
        },
        ParsedInputRecords = {
            type = "list",
            member_type = "list",
        },
        ProcessedInputRecords = {
            type = "list",
            member_type = "string",
        },
        RawInputRecords = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
        },
        ProcessedInputRecords = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RollbackApplicationOutput = {
    type = "structure",
    members = {
        ApplicationDetail = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        InputStartingPositionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RunConfiguration = {
    type = "structure",
    members = {
        FlinkRunConfiguration = {
            type = "structure",
        },
        SqlRunConfigurations = {
            type = "list",
            member_type = "structure",
        },
        ApplicationRestoreConfiguration = {
            type = "structure",
        },
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
        RunConfiguration = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
        FlinkRunConfiguration = {
            type = "structure",
        },
        ApplicationRestoreConfiguration = {
            type = "structure",
        },
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
            type = "number",
        },
        ApplicationConfigurationUpdate = {
            type = "structure",
        },
        ServiceExecutionRoleUpdate = {
            type = "string",
        },
        RunConfigurationUpdate = {
            type = "structure",
        },
        CloudWatchLoggingOptionUpdates = {
            type = "list",
            member_type = "structure",
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
        ApplicationDetail = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        ApplicationMaintenanceConfigurationUpdate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateApplicationMaintenanceConfigurationOutput = {
    type = "structure",
    members = {
        ApplicationARN = {
            type = "string",
        },
        ApplicationMaintenanceConfigurationDescription = {
            type = "structure",
        },
    },
}

return M
