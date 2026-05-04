local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.SnsConfiguration = {
    type = "structure",
    id = "SnsConfiguration",
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
    id = "AccountSettingsNotificationConfiguration",
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
    id = "CancelQueryInput",
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
    id = "CancelQueryOutput",
    members = {
        CancellationMessage = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidEndpointException = {
    type = "structure",
    id = "InvalidEndpointException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
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
    id = "ConflictException",
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
    id = "S3Configuration",
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
    id = "ErrorReportConfiguration",
    members = {
        S3Configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Configuration }),
    },
}

M.NotificationConfiguration = {
    type = "structure",
    id = "NotificationConfiguration",
    members = {
        SnsConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SnsConfiguration }),
    },
}

M.ScheduleConfiguration = {
    type = "structure",
    id = "ScheduleConfiguration",
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
    id = "DimensionMapping",
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
    id = "MultiMeasureAttributeMapping",
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
    id = "MixedMeasureMapping",
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
    id = "MultiMeasureMappings",
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
    id = "TimestreamConfiguration",
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
    id = "TargetConfiguration",
    members = {
        TimestreamConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimestreamConfiguration }),
    },
}

M.CreateScheduledQueryInput = {
    type = "structure",
    id = "CreateScheduledQueryInput",
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
    id = "CreateScheduledQueryOutput",
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
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteScheduledQueryInput = {
    type = "structure",
    id = "DeleteScheduledQueryInput",
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
    id = "DeleteScheduledQueryOutput",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
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
    id = "DescribeAccountSettingsInput",
}

M.LastUpdateStatus = {
    PENDING = "PENDING",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.LastUpdate = {
    type = "structure",
    id = "LastUpdate",
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
    id = "ProvisionedCapacityResponse",
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
    id = "QueryComputeResponse",
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
    id = "DescribeAccountSettingsOutput",
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
    id = "DescribeEndpointsInput",
}

M.Endpoint = {
    type = "structure",
    id = "Endpoint",
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
    id = "DescribeEndpointsOutput",
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
    id = "DescribeScheduledQueryInput",
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
    id = "S3ReportLocation",
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
    id = "ErrorReportLocation",
    members = {
        S3ReportLocation = M.S3ReportLocation,
    },
}

M.ExecutionStats = {
    type = "structure",
    id = "ExecutionStats",
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
    id = "QuerySpatialCoverageMax",
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
    id = "QuerySpatialCoverage",
    members = {
        Max = M.QuerySpatialCoverageMax,
    },
}

M.QueryTemporalRangeMax = {
    type = "structure",
    id = "QueryTemporalRangeMax",
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
    id = "QueryTemporalRange",
    members = {
        Max = M.QueryTemporalRangeMax,
    },
}

M.ScheduledQueryInsightsResponse = {
    type = "structure",
    id = "ScheduledQueryInsightsResponse",
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
    id = "ScheduledQueryRunSummary",
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
    id = "ScheduledQueryDescription",
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
    id = "DescribeScheduledQueryOutput",
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
    id = "ScheduledQueryInsights",
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
    id = "ExecuteScheduledQueryInput",
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
    id = "ExecuteScheduledQueryOutput",
}

M.ListScheduledQueriesInput = {
    type = "structure",
    id = "ListScheduledQueriesInput",
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
    id = "TimestreamDestination",
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
    id = "TargetDestination",
    members = {
        TimestreamDestination = M.TimestreamDestination,
    },
}

M.ScheduledQuery = {
    type = "structure",
    id = "ScheduledQuery",
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
    id = "ListScheduledQueriesOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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
    id = "PrepareQueryInput",
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
    id = "ProvisionedCapacityRequest",
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
    id = "QueryExecutionException",
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
    id = "QueryInsights",
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
    id = "QueryInput",
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
    id = "QueryInsightsResponse",
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
    id = "QueryStatus",
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
    id = "QueryComputeRequest",
    members = {
        ComputeMode = {
            type = "string",
        },
        ProvisionedCapacity = M.ProvisionedCapacityRequest,
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

M.UpdateAccountSettingsInput = {
    type = "structure",
    id = "UpdateAccountSettingsInput",
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
    id = "UpdateAccountSettingsOutput",
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
    id = "UpdateScheduledQueryInput",
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
    id = "UpdateScheduledQueryOutput",
}

M.ColumnInfo = {
    type = "structure",
    id = "ColumnInfo",
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
    id = "Type",
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
    id = "Datum",
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
    id = "ParameterMapping",
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
    id = "SelectColumn",
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
    id = "TimeSeriesDataPoint",
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
    id = "Row",
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
    id = "QueryOutput",
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
    id = "PrepareQueryOutput",
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
