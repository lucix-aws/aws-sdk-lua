local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SnsConfiguration = {
    type = "structure",
    members = {
        TopicArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AccountSettingsNotificationConfiguration = {
    type = "structure",
    members = {
        SnsConfiguration = {
            type = "structure",
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelQueryInput = {
    type = "structure",
    members = {
        QueryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelQueryOutput = {
    type = "structure",
    members = {
        CancellationMessage = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
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

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ScalarType = {
    VARCHAR = "VARCHAR",
    BOOLEAN = "BOOLEAN",
    BIGINT = "BIGINT",
    DOUBLE = "DOUBLE",
    TIMESTAMP = "TIMESTAMP",
    DATE = "DATE",
    TIME = "TIME",
    INTERVAL_DAY_TO_SECOND = "INTERVAL_DAY_TO_SECOND",
    INTERVAL_YEAR_TO_MONTH = "INTERVAL_YEAR_TO_MONTH",
    UNKNOWN = "UNKNOWN",
    INTEGER = "INTEGER",
}

M.ComputeMode = {
    ON_DEMAND = "ON_DEMAND",
    PROVISIONED = "PROVISIONED",
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.S3EncryptionOption = {
    SSE_S3 = "SSE_S3",
    SSE_KMS = "SSE_KMS",
}

M.S3Configuration = {
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
    },
}

M.ErrorReportConfiguration = {
    type = "structure",
    members = {
        S3Configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.NotificationConfiguration = {
    type = "structure",
    members = {
        SnsConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ScheduleConfiguration = {
    type = "structure",
    members = {
        ScheduleExpression = {
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

M.DimensionValueType = {
    VARCHAR = "VARCHAR",
}

M.DimensionMapping = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DimensionValueType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MeasureValueType = {
    BIGINT = "BIGINT",
    BOOLEAN = "BOOLEAN",
    DOUBLE = "DOUBLE",
    VARCHAR = "VARCHAR",
    MULTI = "MULTI",
}

M.ScalarMeasureValueType = {
    BIGINT = "BIGINT",
    BOOLEAN = "BOOLEAN",
    DOUBLE = "DOUBLE",
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
            traits = {
                required = true,
            },
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

M.TimestreamConfiguration = {
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
        TimeColumn = {
            type = "string",
            traits = {
                required = true,
            },
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

M.TargetConfiguration = {
    type = "structure",
    members = {
        TimestreamConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateScheduledQueryInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QueryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ScheduleConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NotificationConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TargetConfiguration = {
            type = "structure",
        },
        ClientToken = {
            type = "string",
        },
        ScheduledQueryExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        KmsKeyId = {
            type = "string",
        },
        ErrorReportConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateScheduledQueryOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
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

M.DeleteScheduledQueryInput = {
    type = "structure",
    members = {
        ScheduledQueryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteScheduledQueryOutput = {
    type = "structure",
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ScheduledQueryArn = {
            type = "string",
        },
    },
}

M.DescribeAccountSettingsInput = {
    type = "structure",
}

M.LastUpdateStatus = {
    PENDING = "PENDING",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.LastUpdate = {
    type = "structure",
    members = {
        TargetQueryTCU = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
    },
}

M.ProvisionedCapacityResponse = {
    type = "structure",
    members = {
        ActiveQueryTCU = {
            type = "number",
        },
        NotificationConfiguration = {
            type = "structure",
        },
        LastUpdate = {
            type = "structure",
        },
    },
}

M.QueryComputeResponse = {
    type = "structure",
    members = {
        ComputeMode = {
            type = "string",
        },
        ProvisionedCapacity = {
            type = "structure",
        },
    },
}

M.QueryPricingModel = {
    BYTES_SCANNED = "BYTES_SCANNED",
    COMPUTE_UNITS = "COMPUTE_UNITS",
}

M.DescribeAccountSettingsOutput = {
    type = "structure",
    members = {
        MaxQueryTCU = {
            type = "number",
        },
        QueryPricingModel = {
            type = "string",
        },
        QueryCompute = {
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

M.DescribeScheduledQueryInput = {
    type = "structure",
    members = {
        ScheduledQueryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3ReportLocation = {
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

M.ErrorReportLocation = {
    type = "structure",
    members = {
        S3ReportLocation = {
            type = "structure",
        },
    },
}

M.ExecutionStats = {
    type = "structure",
    members = {
        ExecutionTimeInMillis = {
            type = "number",
        },
        DataWrites = {
            type = "number",
        },
        BytesMetered = {
            type = "number",
        },
        CumulativeBytesScanned = {
            type = "number",
        },
        RecordsIngested = {
            type = "number",
        },
        QueryResultRows = {
            type = "number",
        },
    },
}

M.QuerySpatialCoverageMax = {
    type = "structure",
    members = {
        Value = {
            type = "number",
        },
        TableArn = {
            type = "string",
        },
        PartitionKey = {
            type = "list",
            member_type = "string",
        },
    },
}

M.QuerySpatialCoverage = {
    type = "structure",
    members = {
        Max = {
            type = "structure",
        },
    },
}

M.QueryTemporalRangeMax = {
    type = "structure",
    members = {
        Value = {
            type = "number",
        },
        TableArn = {
            type = "string",
        },
    },
}

M.QueryTemporalRange = {
    type = "structure",
    members = {
        Max = {
            type = "structure",
        },
    },
}

M.ScheduledQueryInsightsResponse = {
    type = "structure",
    members = {
        QuerySpatialCoverage = {
            type = "structure",
        },
        QueryTemporalRange = {
            type = "structure",
        },
        QueryTableCount = {
            type = "number",
        },
        OutputRows = {
            type = "number",
        },
        OutputBytes = {
            type = "number",
        },
    },
}

M.ScheduledQueryRunStatus = {
    AUTO_TRIGGER_SUCCESS = "AUTO_TRIGGER_SUCCESS",
    AUTO_TRIGGER_FAILURE = "AUTO_TRIGGER_FAILURE",
    MANUAL_TRIGGER_SUCCESS = "MANUAL_TRIGGER_SUCCESS",
    MANUAL_TRIGGER_FAILURE = "MANUAL_TRIGGER_FAILURE",
}

M.ScheduledQueryRunSummary = {
    type = "structure",
    members = {
        InvocationTime = {
            type = "timestamp",
        },
        TriggerTime = {
            type = "timestamp",
        },
        RunStatus = {
            type = "string",
        },
        ExecutionStats = {
            type = "structure",
        },
        QueryInsightsResponse = {
            type = "structure",
        },
        ErrorReportLocation = {
            type = "structure",
        },
        FailureReason = {
            type = "string",
        },
    },
}

M.ScheduledQueryState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ScheduledQueryDescription = {
    type = "structure",
    members = {
        Arn = {
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
        QueryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CreationTime = {
            type = "timestamp",
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PreviousInvocationTime = {
            type = "timestamp",
        },
        NextInvocationTime = {
            type = "timestamp",
        },
        ScheduleConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NotificationConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        TargetConfiguration = {
            type = "structure",
        },
        ScheduledQueryExecutionRoleArn = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        ErrorReportConfiguration = {
            type = "structure",
        },
        LastRunSummary = {
            type = "structure",
        },
        RecentlyFailedRuns = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeScheduledQueryOutput = {
    type = "structure",
    members = {
        ScheduledQuery = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ScheduledQueryInsightsMode = {
    ENABLED_WITH_RATE_CONTROL = "ENABLED_WITH_RATE_CONTROL",
    DISABLED = "DISABLED",
}

M.ScheduledQueryInsights = {
    type = "structure",
    members = {
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecuteScheduledQueryInput = {
    type = "structure",
    members = {
        ScheduledQueryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InvocationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
        QueryInsights = {
            type = "structure",
        },
    },
}

M.ExecuteScheduledQueryOutput = {
    type = "structure",
}

M.ListScheduledQueriesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TimestreamDestination = {
    type = "structure",
    members = {
        DatabaseName = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
    },
}

M.TargetDestination = {
    type = "structure",
    members = {
        TimestreamDestination = {
            type = "structure",
        },
    },
}

M.ScheduledQuery = {
    type = "structure",
    members = {
        Arn = {
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
        CreationTime = {
            type = "timestamp",
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PreviousInvocationTime = {
            type = "timestamp",
        },
        NextInvocationTime = {
            type = "timestamp",
        },
        ErrorReportConfiguration = {
            type = "structure",
        },
        TargetDestination = {
            type = "structure",
        },
        LastRunStatus = {
            type = "string",
        },
    },
}

M.ListScheduledQueriesOutput = {
    type = "structure",
    members = {
        ScheduledQueries = {
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

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
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

M.PrepareQueryInput = {
    type = "structure",
    members = {
        QueryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ValidateOnly = {
            type = "boolean",
        },
    },
}

M.ProvisionedCapacityRequest = {
    type = "structure",
    members = {
        TargetQueryTCU = {
            type = "number",
            traits = {
                required = true,
            },
        },
        NotificationConfiguration = {
            type = "structure",
        },
    },
}

M.QueryExecutionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.QueryInsightsMode = {
    ENABLED_WITH_RATE_CONTROL = "ENABLED_WITH_RATE_CONTROL",
    DISABLED = "DISABLED",
}

M.QueryInsights = {
    type = "structure",
    members = {
        Mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QueryInput = {
    type = "structure",
    members = {
        QueryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxRows = {
            type = "number",
        },
        QueryInsights = {
            type = "structure",
        },
    },
}

M.QueryInsightsResponse = {
    type = "structure",
    members = {
        QuerySpatialCoverage = {
            type = "structure",
        },
        QueryTemporalRange = {
            type = "structure",
        },
        QueryTableCount = {
            type = "number",
        },
        OutputRows = {
            type = "number",
        },
        OutputBytes = {
            type = "number",
        },
        UnloadPartitionCount = {
            type = "number",
        },
        UnloadWrittenRows = {
            type = "number",
        },
        UnloadWrittenBytes = {
            type = "number",
        },
    },
}

M.QueryStatus = {
    type = "structure",
    members = {
        ProgressPercentage = {
            type = "number",
        },
        CumulativeBytesScanned = {
            type = "number",
        },
        CumulativeBytesMetered = {
            type = "number",
        },
    },
}

M.QueryComputeRequest = {
    type = "structure",
    members = {
        ComputeMode = {
            type = "string",
        },
        ProvisionedCapacity = {
            type = "structure",
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

M.UpdateAccountSettingsInput = {
    type = "structure",
    members = {
        MaxQueryTCU = {
            type = "number",
        },
        QueryPricingModel = {
            type = "string",
        },
        QueryCompute = {
            type = "structure",
        },
    },
}

M.UpdateAccountSettingsOutput = {
    type = "structure",
    members = {
        MaxQueryTCU = {
            type = "number",
        },
        QueryPricingModel = {
            type = "string",
        },
        QueryCompute = {
            type = "structure",
        },
    },
}

M.UpdateScheduledQueryInput = {
    type = "structure",
    members = {
        ScheduledQueryArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateScheduledQueryOutput = {
    type = "structure",
}

M.ColumnInfo = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Type = {
    type = "structure",
    members = {
        ScalarType = {
            type = "string",
        },
        ArrayColumnInfo = {
            type = "structure",
        },
        TimeSeriesMeasureValueColumnInfo = {
            type = "structure",
        },
        RowColumnInfo = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Datum = {
    type = "structure",
    members = {
        ScalarValue = {
            type = "string",
        },
        TimeSeriesValue = {
            type = "list",
            member_type = "structure",
        },
        ArrayValue = {
            type = "list",
            member_type = "structure",
        },
        RowValue = {
            type = "structure",
        },
        NullValue = {
            type = "boolean",
        },
    },
}

M.ParameterMapping = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Type = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SelectColumn = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "structure",
        },
        DatabaseName = {
            type = "string",
        },
        TableName = {
            type = "string",
        },
        Aliased = {
            type = "boolean",
        },
    },
}

M.TimeSeriesDataPoint = {
    type = "structure",
    members = {
        Time = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Row = {
    type = "structure",
    members = {
        Data = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.QueryOutput = {
    type = "structure",
    members = {
        QueryId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        Rows = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ColumnInfo = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        QueryStatus = {
            type = "structure",
        },
        QueryInsightsResponse = {
            type = "structure",
        },
    },
}

M.PrepareQueryOutput = {
    type = "structure",
    members = {
        QueryString = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Columns = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

return M
