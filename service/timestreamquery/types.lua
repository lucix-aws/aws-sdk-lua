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
        SnsConfiguration = M.SnsConfiguration,
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
        S3Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Configuration }),
    },
}

M.NotificationConfiguration = {
    type = "structure",
    members = {
        SnsConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SnsConfiguration }),
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

M.TargetConfiguration = {
    type = "structure",
    members = {
        TimestreamConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimestreamConfiguration }),
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
        ScheduleConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScheduleConfiguration }),
        NotificationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NotificationConfiguration }),
        TargetConfiguration = M.TargetConfiguration,
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        ScheduledQueryExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        KmsKeyId = {
            type = "string",
        },
        ErrorReportConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ErrorReportConfiguration }),
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
            type = "integer",
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
            type = "integer",
        },
        NotificationConfiguration = M.AccountSettingsNotificationConfiguration,
        LastUpdate = M.LastUpdate,
    },
}

M.QueryComputeResponse = {
    type = "structure",
    members = {
        ComputeMode = {
            type = "string",
        },
        ProvisionedCapacity = M.ProvisionedCapacityResponse,
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
            type = "integer",
        },
        QueryPricingModel = {
            type = "string",
        },
        QueryCompute = M.QueryComputeResponse,
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
        S3ReportLocation = M.S3ReportLocation,
    },
}

M.ExecutionStats = {
    type = "structure",
    members = {
        ExecutionTimeInMillis = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        DataWrites = {
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
        CumulativeBytesScanned = {
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
        QueryResultRows = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.QuerySpatialCoverageMax = {
    type = "structure",
    members = {
        Value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        TableArn = {
            type = "string",
        },
        PartitionKey = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.QuerySpatialCoverage = {
    type = "structure",
    members = {
        Max = M.QuerySpatialCoverageMax,
    },
}

M.QueryTemporalRangeMax = {
    type = "structure",
    members = {
        Value = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        TableArn = {
            type = "string",
        },
    },
}

M.QueryTemporalRange = {
    type = "structure",
    members = {
        Max = M.QueryTemporalRangeMax,
    },
}

M.ScheduledQueryInsightsResponse = {
    type = "structure",
    members = {
        QuerySpatialCoverage = M.QuerySpatialCoverage,
        QueryTemporalRange = M.QueryTemporalRange,
        QueryTableCount = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        OutputRows = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        OutputBytes = {
            type = "long",
            traits = {
                default = nil,
            },
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
        ExecutionStats = M.ExecutionStats,
        QueryInsightsResponse = M.ScheduledQueryInsightsResponse,
        ErrorReportLocation = M.ErrorReportLocation,
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
        ScheduleConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScheduleConfiguration }),
        NotificationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NotificationConfiguration }),
        TargetConfiguration = M.TargetConfiguration,
        ScheduledQueryExecutionRoleArn = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        ErrorReportConfiguration = M.ErrorReportConfiguration,
        LastRunSummary = M.ScheduledQueryRunSummary,
        RecentlyFailedRuns = {
            type = "list",
            member = M.ScheduledQueryRunSummary,
        },
    },
}

M.DescribeScheduledQueryOutput = {
    type = "structure",
    members = {
        ScheduledQuery = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScheduledQueryDescription }),
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
            traits = {
                idempotency_token = true,
            },
        },
        QueryInsights = M.ScheduledQueryInsights,
    },
}

M.ExecuteScheduledQueryOutput = {
    type = "structure",
}

M.ListScheduledQueriesInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "integer",
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
        TimestreamDestination = M.TimestreamDestination,
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
        ErrorReportConfiguration = M.ErrorReportConfiguration,
        TargetDestination = M.TargetDestination,
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
            member = M.ScheduledQuery,
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
            type = "integer",
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
            member = M.Tag,
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        NotificationConfiguration = M.AccountSettingsNotificationConfiguration,
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
            traits = {
                idempotency_token = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxRows = {
            type = "integer",
        },
        QueryInsights = M.QueryInsights,
    },
}

M.QueryInsightsResponse = {
    type = "structure",
    members = {
        QuerySpatialCoverage = M.QuerySpatialCoverage,
        QueryTemporalRange = M.QueryTemporalRange,
        QueryTableCount = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        OutputRows = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        OutputBytes = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        UnloadPartitionCount = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        UnloadWrittenRows = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        UnloadWrittenBytes = {
            type = "long",
            traits = {
                default = nil,
            },
        },
    },
}

M.QueryStatus = {
    type = "structure",
    members = {
        ProgressPercentage = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        CumulativeBytesScanned = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        CumulativeBytesMetered = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.QueryComputeRequest = {
    type = "structure",
    members = {
        ComputeMode = {
            type = "string",
        },
        ProvisionedCapacity = M.ProvisionedCapacityRequest,
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

M.UpdateAccountSettingsInput = {
    type = "structure",
    members = {
        MaxQueryTCU = {
            type = "integer",
        },
        QueryPricingModel = {
            type = "string",
        },
        QueryCompute = M.QueryComputeRequest,
    },
}

M.UpdateAccountSettingsOutput = {
    type = "structure",
    members = {
        MaxQueryTCU = {
            type = "integer",
        },
        QueryPricingModel = {
            type = "string",
        },
        QueryCompute = M.QueryComputeResponse,
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
        Type = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Type }),
    },
}

M.Type = {
    type = "structure",
    members = {
        ScalarType = {
            type = "string",
        },
        ArrayColumnInfo = M.ColumnInfo,
        TimeSeriesMeasureValueColumnInfo = M.ColumnInfo,
        RowColumnInfo = {
            type = "list",
            member = M.ColumnInfo,
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
            member = M.TimeSeriesDataPoint,
        },
        ArrayValue = {
            type = "list",
            member = M.Datum,
        },
        RowValue = M.Row,
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
        Type = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Type }),
    },
}

M.SelectColumn = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Type = M.Type,
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
        Value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Datum }),
    },
}

M.Row = {
    type = "structure",
    members = {
        Data = {
            type = "list",
            member = M.Datum,
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
            member = M.Row,
            traits = {
                required = true,
            },
        },
        ColumnInfo = {
            type = "list",
            member = M.ColumnInfo,
            traits = {
                required = true,
            },
        },
        QueryStatus = M.QueryStatus,
        QueryInsightsResponse = M.QueryInsightsResponse,
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
            member = M.SelectColumn,
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "list",
            member = M.ParameterMapping,
            traits = {
                required = true,
            },
        },
    },
}

return M
