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
            type = "long",
            traits = {
                required = true,
            },
        },
        CloudWatchLoggingOption = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CloudWatchLoggingOption }),
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
        KinesisStreamsOutputDescription = M.KinesisStreamsOutputDescription,
        KinesisFirehoseOutputDescription = M.KinesisFirehoseOutputDescription,
        LambdaOutputDescription = M.LambdaOutputDescription,
        DestinationSchema = M.DestinationSchema,
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
        S3ReferenceDataSourceDescription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3ReferenceDataSourceDescription }),
        ReferenceSchema = M.SourceSchema,
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
        CloudWatchLoggingOptionDescriptions = {
            type = "list",
            member = M.CloudWatchLoggingOptionDescription,
        },
        ApplicationCode = {
            type = "string",
        },
        ApplicationVersionId = {
            type = "long",
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
            type = "integer",
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
        S3ReferenceDataSourceUpdate = M.S3ReferenceDataSourceUpdate,
        ReferenceSchemaUpdate = M.SourceSchema,
    },
}

M.ApplicationUpdate = {
    type = "structure",
    members = {
        InputUpdates = {
            type = "list",
            member = M.InputUpdate,
        },
        ApplicationCodeUpdate = {
            type = "string",
        },
        OutputUpdates = {
            type = "list",
            member = M.OutputUpdate,
        },
        ReferenceDataSourceUpdates = {
            type = "list",
            member = M.ReferenceDataSourceUpdate,
        },
        CloudWatchLoggingOptionUpdates = {
            type = "list",
            member = M.CloudWatchLoggingOptionUpdate,
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
            member = M.Input,
        },
        Outputs = {
            type = "list",
            member = M.Output,
        },
        CloudWatchLoggingOptions = {
            type = "list",
            member = M.CloudWatchLoggingOption,
        },
        ApplicationCode = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        ApplicationSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApplicationSummary }),
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
            type = "long",
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
        ApplicationDetail = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApplicationDetail }),
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
            member = { type = "string" },
        },
        ProcessedInputRecords = {
            type = "list",
            member = { type = "string" },
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
        InputStartingPositionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputStartingPositionConfiguration }),
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
            type = "integer",
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
            member = M.ApplicationSummary,
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
            member = M.Tag,
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
            member = M.InputConfiguration,
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
            traits = {
                required = true,
            },
        },
        ApplicationUpdate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApplicationUpdate }),
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
}

return M
