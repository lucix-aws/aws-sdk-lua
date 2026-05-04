local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchLoadDataFormat = {
    CSV = "CSV",
}

M.BatchLoadProgressReport = {
    type = "structure",
    members = {
        RecordsProcessed = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        RecordsIngested = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        ParseFailures = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        RecordIngestionFailures = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        FileFailures = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        BytesMetered = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.BatchLoadStatus = {
    CREATED = "CREATED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    PROGRESS_STOPPED = "PROGRESS_STOPPED",
    PENDING_RESUME = "PENDING_RESUME",
}

M.BatchLoadTask = {
    type = "structure",
    members = {
        TaskId = {
            type = "string",
        },
        TaskStatus = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        ResumableUntil = {
            type = "timestamp",
        },
    },
}

M.DimensionMapping = {
    type = "structure",
    members = {
        SourceColumn = {
            type = "string",
        },
        DestinationColumn = {
            type = "string",
        },
    },
}

M.MeasureValueType = {
    DOUBLE = "DOUBLE",
    BIGINT = "BIGINT",
    VARCHAR = "VARCHAR",
    BOOLEAN = "BOOLEAN",
    TIMESTAMP = "TIMESTAMP",
    MULTI = "MULTI",
}

M.ScalarMeasureValueType = {
    DOUBLE = "DOUBLE",
    BIGINT = "BIGINT",
    BOOLEAN = "BOOLEAN",
    VARCHAR = "VARCHAR",
    TIMESTAMP = "TIMESTAMP",
}

M.MultiMeasureAttributeMapping = {
    type = "structure",
    members = {
        SourceColumn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetMultiMeasureAttributeName = {
            type = "string",
        },
        MeasureValueType = {
            type = "string",
        },
    },
}

M.MixedMeasureMapping = {
    type = "structure",
    members = {
        MeasureName = {
            type = "string",
        },
        SourceColumn = {
            type = "string",
        },
        TargetMeasureName = {
            type = "string",
        },
        MeasureValueType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MultiMeasureAttributeMappings = {
            type = "list",
            member = M.MultiMeasureAttributeMapping,
        },
    },
}

M.MultiMeasureMappings = {
    type = "structure",
    members = {
        TargetMultiMeasureName = {
            type = "string",
        },
        MultiMeasureAttributeMappings = {
            type = "list",
            member = M.MultiMeasureAttributeMapping,
            traits = {
                required = true,
            },
        },
    },
}

M.TimeUnit = {
    MILLISECONDS = "MILLISECONDS",
    SECONDS = "SECONDS",
    MICROSECONDS = "MICROSECONDS",
    NANOSECONDS = "NANOSECONDS",
}

M.DataModel = {
    type = "structure",
    members = {
        TimeColumn = {
            type = "string",
        },
        TimeUnit = {
            type = "string",
        },
        DimensionMappings = {
            type = "list",
            member = M.DimensionMapping,
            traits = {
                required = true,
            },
        },
        MultiMeasureMappings = M.MultiMeasureMappings,
        MixedMeasureMappings = {
            type = "list",
            member = M.MixedMeasureMapping,
        },
        MeasureNameColumn = {
            type = "string",
        },
    },
}

M.DataModelS3Configuration = {
    type = "structure",
    members = {
        BucketName = {
            type = "string",
        },
        ObjectKey = {
            type = "string",
        },
    },
}

M.DataModelConfiguration = {
    type = "structure",
    members = {
        DataModel = M.DataModel,
        DataModelS3Configuration = M.DataModelS3Configuration,
    },
}

M.CsvConfiguration = {
    type = "structure",
    members = {
        ColumnSeparator = {
            type = "string",
        },
        EscapeChar = {
            type = "string",
        },
        QuoteChar = {
            type = "string",
        },
        NullValue = {
            type = "string",
        },
        TrimWhiteSpace = {
            type = "boolean",
        },
    },
}

M.DataSourceS3Configuration = {
    type = "structure",
    members = {
        BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectKeyPrefix = {
            type = "string",
        },
    },
}

M.DataSourceConfiguration = {
    type = "structure",
    members = {
        DataSourceS3Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSourceS3Configuration }),
        CsvConfiguration = M.CsvConfiguration,
        DataFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3EncryptionOption = {
    SSE_S3 = "SSE_S3",
    SSE_KMS = "SSE_KMS",
}

M.ReportS3Configuration = {
    type = "structure",
    members = {
        BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ObjectKeyPrefix = {
            type = "string",
        },
        EncryptionOption = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.ReportConfiguration = {
    type = "structure",
    members = {
        ReportS3Configuration = M.ReportS3Configuration,
    },
}

M.BatchLoadTaskDescription = {
    type = "structure",
    members = {
        TaskId = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
        DataSourceConfiguration = M.DataSourceConfiguration,
        ProgressReport = M.BatchLoadProgressReport,
        ReportConfiguration = M.ReportConfiguration,
        DataModelConfiguration = M.DataModelConfiguration,
        TargetDatabaseName = {
            type = "string",
        },
        TargetTableName = {
            type = "string",
        },
        TaskStatus = {
            type = "string",
        },
        RecordVersion = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        ResumableUntil = {
            type = "timestamp",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateBatchLoadTaskInput = {
    type = "structure",
    members = {
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        DataModelConfiguration = M.DataModelConfiguration,
        DataSourceConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSourceConfiguration }),
        ReportConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ReportConfiguration }),
        TargetDatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetTableName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecordVersion = {
            type = "long",
            traits = {
                default = nil,
            },
        },
    },
}

M.CreateBatchLoadTaskOutput = {
    type = "structure",
    members = {
        TaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidEndpointException = {
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

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
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
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDatabaseInput = {
    type = "structure",
    members = {
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.Database = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        TableCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        KmsKeyId = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.CreateDatabaseOutput = {
    type = "structure",
    members = {
        Database = M.Database,
    },
}

M.S3Configuration = {
    type = "structure",
    members = {
        BucketName = {
            type = "string",
        },
        ObjectKeyPrefix = {
            type = "string",
        },
        EncryptionOption = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
    },
}

M.MagneticStoreRejectedDataLocation = {
    type = "structure",
    members = {
        S3Configuration = M.S3Configuration,
    },
}

M.MagneticStoreWriteProperties = {
    type = "structure",
    members = {
        EnableMagneticStoreWrites = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        MagneticStoreRejectedDataLocation = M.MagneticStoreRejectedDataLocation,
    },
}

M.RetentionProperties = {
    type = "structure",
    members = {
        MemoryStoreRetentionPeriodInHours = {
            type = "long",
            traits = {
                required = true,
            },
        },
        MagneticStoreRetentionPeriodInDays = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.PartitionKeyEnforcementLevel = {
    REQUIRED = "REQUIRED",
    OPTIONAL = "OPTIONAL",
}

M.PartitionKeyType = {
    DIMENSION = "DIMENSION",
    MEASURE = "MEASURE",
}

M.PartitionKey = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
        },
        EnforcementInRecord = {
            type = "string",
        },
    },
}

M.Schema = {
    type = "structure",
    members = {
        CompositePartitionKey = {
            type = "list",
            member = M.PartitionKey,
        },
    },
}

M.CreateTableInput = {
    type = "structure",
    members = {
        DatabaseName = {
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
        RetentionProperties = M.RetentionProperties,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        MagneticStoreWriteProperties = M.MagneticStoreWriteProperties,
        Schema = M.Schema,
    },
}

M.TableStatus = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    RESTORING = "RESTORING",
}

M.Table = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        DatabaseName = {
            type = "string",
        },
        TableStatus = {
            type = "string",
        },
        RetentionProperties = M.RetentionProperties,
        CreationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        MagneticStoreWriteProperties = M.MagneticStoreWriteProperties,
        Schema = M.Schema,
    },
}

M.CreateTableOutput = {
    type = "structure",
    members = {
        Table = M.Table,
    },
}

M.DeleteDatabaseInput = {
    type = "structure",
    members = {
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDatabaseOutput = {
    type = "structure",
}

M.DeleteTableInput = {
    type = "structure",
    members = {
        DatabaseName = {
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
    },
}

M.DeleteTableOutput = {
    type = "structure",
}

M.DescribeBatchLoadTaskInput = {
    type = "structure",
    members = {
        TaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeBatchLoadTaskOutput = {
    type = "structure",
    members = {
        BatchLoadTaskDescription = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BatchLoadTaskDescription }),
    },
}

M.DescribeDatabaseInput = {
    type = "structure",
    members = {
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDatabaseOutput = {
    type = "structure",
    members = {
        Database = M.Database,
    },
}

M.DescribeEndpointsInput = {
    type = "structure",
}

M.Endpoint = {
    type = "structure",
    members = {
        Address = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CachePeriodInMinutes = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.DescribeEndpointsOutput = {
    type = "structure",
    members = {
        Endpoints = {
            type = "list",
            member = M.Endpoint,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeTableInput = {
    type = "structure",
    members = {
        DatabaseName = {
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
    },
}

M.DescribeTableOutput = {
    type = "structure",
    members = {
        Table = M.Table,
    },
}

M.DimensionValueType = {
    VARCHAR = "VARCHAR",
}

M.Dimension = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DimensionValueType = {
            type = "string",
        },
    },
}

M.ListBatchLoadTasksInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        TaskStatus = {
            type = "string",
        },
    },
}

M.ListBatchLoadTasksOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        BatchLoadTasks = {
            type = "list",
            member = M.BatchLoadTask,
        },
    },
}

M.ListDatabasesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListDatabasesOutput = {
    type = "structure",
    members = {
        Databases = {
            type = "list",
            member = M.Database,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTablesInput = {
    type = "structure",
    members = {
        DatabaseName = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListTablesOutput = {
    type = "structure",
    members = {
        Tables = {
            type = "list",
            member = M.Table,
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

M.MeasureValue = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Record = {
    type = "structure",
    members = {
        Dimensions = {
            type = "list",
            member = M.Dimension,
        },
        MeasureName = {
            type = "string",
        },
        MeasureValue = {
            type = "string",
        },
        MeasureValueType = {
            type = "string",
        },
        Time = {
            type = "string",
        },
        TimeUnit = {
            type = "string",
        },
        Version = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        MeasureValues = {
            type = "list",
            member = M.MeasureValue,
        },
    },
}

M.RecordsIngested = {
    type = "structure",
    members = {
        Total = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MemoryStore = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MagneticStore = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.RejectedRecord = {
    type = "structure",
    members = {
        RecordIndex = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Reason = {
            type = "string",
        },
        ExistingVersion = {
            type = "long",
            traits = {
                default = nil,
            },
        },
    },
}

M.RejectedRecordsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        RejectedRecords = {
            type = "list",
            member = M.RejectedRecord,
        },
    },
}

M.ResumeBatchLoadTaskInput = {
    type = "structure",
    members = {
        TaskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResumeBatchLoadTaskOutput = {
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

M.UpdateDatabaseInput = {
    type = "structure",
    members = {
        DatabaseName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KmsKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDatabaseOutput = {
    type = "structure",
    members = {
        Database = M.Database,
    },
}

M.UpdateTableInput = {
    type = "structure",
    members = {
        DatabaseName = {
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
        RetentionProperties = M.RetentionProperties,
        MagneticStoreWriteProperties = M.MagneticStoreWriteProperties,
        Schema = M.Schema,
    },
}

M.UpdateTableOutput = {
    type = "structure",
    members = {
        Table = M.Table,
    },
}

M.WriteRecordsInput = {
    type = "structure",
    members = {
        DatabaseName = {
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
        CommonAttributes = M.Record,
        Records = {
            type = "list",
            member = M.Record,
            traits = {
                required = true,
            },
        },
    },
}

M.WriteRecordsOutput = {
    type = "structure",
    members = {
        RecordsIngested = M.RecordsIngested,
    },
}

return M
