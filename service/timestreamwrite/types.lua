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
            type = "number",
        },
        RecordsIngested = {
            type = "number",
        },
        ParseFailures = {
            type = "number",
        },
        RecordIngestionFailures = {
            type = "number",
        },
        FileFailures = {
            type = "number",
        },
        BytesMetered = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        MultiMeasureMappings = {
            type = "structure",
        },
        MixedMeasureMappings = {
            type = "list",
            member_type = "structure",
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
        DataModel = {
            type = "structure",
        },
        DataModelS3Configuration = {
            type = "structure",
        },
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
        DataSourceS3Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        CsvConfiguration = {
            type = "structure",
        },
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
        ReportS3Configuration = {
            type = "structure",
        },
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
        DataSourceConfiguration = {
            type = "structure",
        },
        ProgressReport = {
            type = "structure",
        },
        ReportConfiguration = {
            type = "structure",
        },
        DataModelConfiguration = {
            type = "structure",
        },
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
            type = "number",
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
        },
        DataModelConfiguration = {
            type = "structure",
        },
        DataSourceConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ReportConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
        Database = {
            type = "structure",
        },
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
        S3Configuration = {
            type = "structure",
        },
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
        MagneticStoreRejectedDataLocation = {
            type = "structure",
        },
    },
}

M.RetentionProperties = {
    type = "structure",
    members = {
        MemoryStoreRetentionPeriodInHours = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MagneticStoreRetentionPeriodInDays = {
            type = "number",
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
            member_type = "structure",
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
        RetentionProperties = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        MagneticStoreWriteProperties = {
            type = "structure",
        },
        Schema = {
            type = "structure",
        },
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
        RetentionProperties = {
            type = "structure",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        MagneticStoreWriteProperties = {
            type = "structure",
        },
        Schema = {
            type = "structure",
        },
    },
}

M.CreateTableOutput = {
    type = "structure",
    members = {
        Table = {
            type = "structure",
        },
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
        BatchLoadTaskDescription = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        Database = {
            type = "structure",
        },
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
            type = "number",
            traits = {
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
            member_type = "structure",
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
        Table = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListDatabasesOutput = {
    type = "structure",
    members = {
        Databases = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
    },
}

M.ListTablesOutput = {
    type = "structure",
    members = {
        Tables = {
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
            member_type = "structure",
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
            type = "number",
        },
        MeasureValues = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RecordsIngested = {
    type = "structure",
    members = {
        Total = {
            type = "number",
        },
        MemoryStore = {
            type = "number",
        },
        MagneticStore = {
            type = "number",
        },
    },
}

M.RejectedRecord = {
    type = "structure",
    members = {
        RecordIndex = {
            type = "number",
        },
        Reason = {
            type = "string",
        },
        ExistingVersion = {
            type = "number",
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
            member_type = "structure",
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
        Database = {
            type = "structure",
        },
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
        RetentionProperties = {
            type = "structure",
        },
        MagneticStoreWriteProperties = {
            type = "structure",
        },
        Schema = {
            type = "structure",
        },
    },
}

M.UpdateTableOutput = {
    type = "structure",
    members = {
        Table = {
            type = "structure",
        },
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
        CommonAttributes = {
            type = "structure",
        },
        Records = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.WriteRecordsOutput = {
    type = "structure",
    members = {
        RecordsIngested = {
            type = "structure",
        },
    },
}

return M
