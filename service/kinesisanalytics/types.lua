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
        RoleARN = {
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
            traits = {
                required = true,
            },
        },
        CloudWatchLoggingOption = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AddApplicationCloudWatchLoggingOptionOutput = {
    type = "structure",
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidArgumentException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
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

M.UnsupportedOperationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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
        RoleARN = {
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
        RoleARN = {
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
        RoleARN = {
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

M.AddApplicationInputOutput = {
    type = "structure",
}

M.CodeValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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
        RoleARN = {
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
        RoleARN = {
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
        RoleARN = {
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

M.AddApplicationOutputOutput = {
    type = "structure",
}

M.S3ReferenceDataSource = {
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
            traits = {
                required = true,
            },
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

M.AddApplicationReferenceDataSourceOutput = {
    type = "structure",
}

M.ApplicationStatus = {
    DELETING = "DELETING",
    STARTING = "STARTING",
    STOPPING = "STOPPING",
    READY = "READY",
    RUNNING = "RUNNING",
    UPDATING = "UPDATING",
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

M.KinesisFirehoseOutputDescription = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
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
            traits = {
                required = true,
            },
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

M.ApplicationDetail = {
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
        CreateTimestamp = {
            type = "timestamp",
        },
        LastUpdateTimestamp = {
            type = "timestamp",
        },
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
        CloudWatchLoggingOptionDescriptions = {
            type = "list",
            member_type = "structure",
        },
        ApplicationCode = {
            type = "string",
        },
        ApplicationVersionId = {
            type = "number",
            traits = {
                required = true,
            },
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
        RoleARNUpdate = {
            type = "string",
        },
    },
}

M.InputParallelismUpdate = {
    type = "structure",
    members = {
        CountUpdate = {
            type = "number",
        },
    },
}

M.InputLambdaProcessorUpdate = {
    type = "structure",
    members = {
        ResourceARNUpdate = {
            type = "string",
        },
        RoleARNUpdate = {
            type = "string",
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
        },
        RoleARNUpdate = {
            type = "string",
        },
    },
}

M.KinesisStreamsInputUpdate = {
    type = "structure",
    members = {
        ResourceARNUpdate = {
            type = "string",
        },
        RoleARNUpdate = {
            type = "string",
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
        },
        RoleARNUpdate = {
            type = "string",
        },
    },
}

M.KinesisStreamsOutputUpdate = {
    type = "structure",
    members = {
        ResourceARNUpdate = {
            type = "string",
        },
        RoleARNUpdate = {
            type = "string",
        },
    },
}

M.LambdaOutputUpdate = {
    type = "structure",
    members = {
        ResourceARNUpdate = {
            type = "string",
        },
        RoleARNUpdate = {
            type = "string",
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
        ReferenceRoleARNUpdate = {
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

M.ApplicationUpdate = {
    type = "structure",
    members = {
        InputUpdates = {
            type = "list",
            member_type = "structure",
        },
        ApplicationCodeUpdate = {
            type = "string",
        },
        OutputUpdates = {
            type = "list",
            member_type = "structure",
        },
        ReferenceDataSourceUpdates = {
            type = "list",
            member_type = "structure",
        },
        CloudWatchLoggingOptionUpdates = {
            type = "list",
            member_type = "structure",
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
        Inputs = {
            type = "list",
            member_type = "structure",
        },
        Outputs = {
            type = "list",
            member_type = "structure",
        },
        CloudWatchLoggingOptions = {
            type = "list",
            member_type = "structure",
        },
        ApplicationCode = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        ApplicationSummary = {
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
        message = {
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
            traits = {
                required = true,
            },
        },
        CloudWatchLoggingOptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationCloudWatchLoggingOptionOutput = {
    type = "structure",
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

M.S3Configuration = {
    type = "structure",
    members = {
        RoleARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
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
        RoleARN = {
            type = "string",
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
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnableToDetectSchemaException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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

M.InputConfiguration = {
    type = "structure",
    members = {
        Id = {
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

M.InvalidApplicationConfigurationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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
        ExclusiveStartApplicationName = {
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
        HasMoreApplications = {
            type = "boolean",
            traits = {
                required = true,
            },
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

M.StartApplicationInput = {
    type = "structure",
    members = {
        ApplicationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InputConfigurations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartApplicationOutput = {
    type = "structure",
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
    },
}

M.StopApplicationOutput = {
    type = "structure",
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
            traits = {
                required = true,
            },
        },
        ApplicationUpdate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
}

return M
