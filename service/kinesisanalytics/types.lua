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
    id = "AddApplicationCloudWatchLoggingOptionOutput",
}

M.ConcurrentModificationException = {
    type = "structure",
    id = "ConcurrentModificationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidArgumentException = {
    type = "structure",
    id = "InvalidArgumentException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
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
        message = {
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
    id = "KinesisStreamsInput",
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

M.AddApplicationInputOutput = {
    type = "structure",
    id = "AddApplicationInputOutput",
}

M.CodeValidationException = {
    type = "structure",
    id = "CodeValidationException",
    error = "client",
    members = {
        message = {
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
    id = "KinesisStreamsOutput",
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
    id = "LambdaOutput",
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

M.AddApplicationOutputOutput = {
    type = "structure",
    id = "AddApplicationOutputOutput",
}

M.S3ReferenceDataSource = {
    type = "structure",
    id = "S3ReferenceDataSource",
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

M.AddApplicationReferenceDataSourceOutput = {
    type = "structure",
    id = "AddApplicationReferenceDataSourceOutput",
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
            traits = {
                required = true,
            },
        },
    },
}

M.InputLambdaProcessorDescription = {
    type = "structure",
    id = "InputLambdaProcessorDescription",
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

M.KinesisFirehoseOutputDescription = {
    type = "structure",
    id = "KinesisFirehoseOutputDescription",
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
    id = "KinesisStreamsOutputDescription",
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
    id = "LambdaOutputDescription",
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
            traits = {
                required = true,
            },
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

M.ApplicationDetail = {
    type = "structure",
    id = "ApplicationDetail",
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
        RoleARNUpdate = {
            type = "string",
        },
    },
}

M.InputParallelismUpdate = {
    type = "structure",
    id = "InputParallelismUpdate",
    members = {
        CountUpdate = {
            type = "integer",
        },
    },
}

M.InputLambdaProcessorUpdate = {
    type = "structure",
    id = "InputLambdaProcessorUpdate",
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
        },
        RoleARNUpdate = {
            type = "string",
        },
    },
}

M.KinesisStreamsInputUpdate = {
    type = "structure",
    id = "KinesisStreamsInputUpdate",
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
        },
        RoleARNUpdate = {
            type = "string",
        },
    },
}

M.KinesisStreamsOutputUpdate = {
    type = "structure",
    id = "KinesisStreamsOutputUpdate",
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
    id = "LambdaOutputUpdate",
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
        ReferenceRoleARNUpdate = {
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

M.ApplicationUpdate = {
    type = "structure",
    id = "ApplicationUpdate",
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
    id = "CreateApplicationOutput",
    members = {
        ApplicationSummary = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ApplicationSummary }),
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        message = {
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
    id = "DeleteApplicationCloudWatchLoggingOptionOutput",
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

M.S3Configuration = {
    type = "structure",
    id = "S3Configuration",
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
    id = "DiscoverInputSchemaInput",
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
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnableToDetectSchemaException = {
    type = "structure",
    id = "UnableToDetectSchemaException",
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
    id = "InputConfiguration",
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
    id = "InvalidApplicationConfigurationException",
    error = "client",
    members = {
        message = {
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
        ExclusiveStartApplicationName = {
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
    id = "StartApplicationOutput",
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
    },
}

M.StopApplicationOutput = {
    type = "structure",
    id = "StopApplicationOutput",
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
    id = "UpdateApplicationOutput",
}

return M
