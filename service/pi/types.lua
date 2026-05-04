local M = {}

M.AcceptLanguage = {
    EN_US = "EN_US",
}

M.PerformanceInsightsMetric = {
    type = "structure",
    members = {
        Metric = {
            type = "string",
        },
        DisplayName = {
            type = "string",
        },
        Dimensions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Filter = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Value = {
            type = "double",
        },
    },
}

M.Data = {
    type = "structure",
    members = {
        PerformanceInsightsMetric = M.PerformanceInsightsMetric,
    },
}

M.ContextType = {
    CAUSAL = "CAUSAL",
    CONTEXTUAL = "CONTEXTUAL",
}

M.Recommendation = {
    type = "structure",
    members = {
        RecommendationId = {
            type = "string",
        },
        RecommendationDescription = {
            type = "string",
        },
    },
}

M.Severity = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.ServiceType = {
    RDS = "RDS",
    DOCDB = "DOCDB",
}

M.AnalysisStatus = {
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
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

M.AnalysisReportSummary = {
    type = "structure",
    members = {
        AnalysisReportId = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.FineGrainedAction = {
    DESCRIBE_DIMENSION_KEYS = "DescribeDimensionKeys",
    GET_DIMENSION_KEY_DETAILS = "GetDimensionKeyDetails",
    GET_RESOURCE_METRICS = "GetResourceMetrics",
}

M.CreatePerformanceAnalysisReportInput = {
    type = "structure",
    members = {
        ServiceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
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
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreatePerformanceAnalysisReportOutput = {
    type = "structure",
    members = {
        AnalysisReportId = {
            type = "string",
        },
    },
}

M.InternalServiceError = {
    type = "structure",
    error = "server",
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

M.NotAuthorizedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DataPoint = {
    type = "structure",
    members = {
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePerformanceAnalysisReportInput = {
    type = "structure",
    members = {
        ServiceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalysisReportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePerformanceAnalysisReportOutput = {
    type = "structure",
}

M.DimensionGroup = {
    type = "structure",
    members = {
        Group = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Dimensions = {
            type = "list",
            member = { type = "string" },
        },
        Limit = {
            type = "integer",
        },
    },
}

M.DescribeDimensionKeysInput = {
    type = "structure",
    members = {
        ServiceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
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
        Metric = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PeriodInSeconds = {
            type = "integer",
        },
        GroupBy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DimensionGroup }),
        AdditionalMetrics = {
            type = "list",
            member = { type = "string" },
        },
        PartitionBy = M.DimensionGroup,
        Filter = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DimensionKeyDescription = {
    type = "structure",
    members = {
        Dimensions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Total = {
            type = "double",
        },
        AdditionalMetrics = {
            type = "map",
            key = { type = "string" },
            value = { type = "double" },
        },
        Partitions = {
            type = "list",
            member = { type = "double" },
        },
    },
}

M.ResponsePartitionKey = {
    type = "structure",
    members = {
        Dimensions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDimensionKeysOutput = {
    type = "structure",
    members = {
        AlignedStartTime = {
            type = "timestamp",
        },
        AlignedEndTime = {
            type = "timestamp",
        },
        PartitionKeys = {
            type = "list",
            member = M.ResponsePartitionKey,
        },
        Keys = {
            type = "list",
            member = M.DimensionKeyDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DetailStatus = {
    AVAILABLE = "AVAILABLE",
    PROCESSING = "PROCESSING",
    UNAVAILABLE = "UNAVAILABLE",
}

M.DimensionDetail = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
        },
    },
}

M.DimensionGroupDetail = {
    type = "structure",
    members = {
        Group = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member = M.DimensionDetail,
        },
    },
}

M.DimensionKeyDetail = {
    type = "structure",
    members = {
        Value = {
            type = "string",
        },
        Dimension = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.FeatureStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    UNSUPPORTED = "UNSUPPORTED",
    ENABLED_PENDING_REBOOT = "ENABLED_PENDING_REBOOT",
    DISABLED_PENDING_REBOOT = "DISABLED_PENDING_REBOOT",
    UNKNOWN = "UNKNOWN",
}

M.FeatureMetadata = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.GetDimensionKeyDetailsInput = {
    type = "structure",
    members = {
        ServiceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Group = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RequestedDimensions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetDimensionKeyDetailsOutput = {
    type = "structure",
    members = {
        Dimensions = {
            type = "list",
            member = M.DimensionKeyDetail,
        },
    },
}

M.TextFormat = {
    PLAIN_TEXT = "PLAIN_TEXT",
    MARKDOWN = "MARKDOWN",
}

M.GetPerformanceAnalysisReportInput = {
    type = "structure",
    members = {
        ServiceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnalysisReportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TextFormat = {
            type = "string",
        },
        AcceptLanguage = {
            type = "string",
        },
    },
}

M.GetResourceMetadataInput = {
    type = "structure",
    members = {
        ServiceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetResourceMetadataOutput = {
    type = "structure",
    members = {
        Identifier = {
            type = "string",
        },
        Features = {
            type = "map",
            key = { type = "string" },
            value = M.FeatureMetadata,
        },
    },
}

M.MetricQuery = {
    type = "structure",
    members = {
        Metric = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupBy = M.DimensionGroup,
        Filter = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PeriodAlignment = {
    END_TIME = "END_TIME",
    START_TIME = "START_TIME",
}

M.GetResourceMetricsInput = {
    type = "structure",
    members = {
        ServiceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricQueries = {
            type = "list",
            member = M.MetricQuery,
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
        PeriodInSeconds = {
            type = "integer",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        PeriodAlignment = {
            type = "string",
        },
    },
}

M.ResponseResourceMetricKey = {
    type = "structure",
    members = {
        Metric = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Dimensions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.MetricKeyDataPoints = {
    type = "structure",
    members = {
        Key = M.ResponseResourceMetricKey,
        DataPoints = {
            type = "list",
            member = M.DataPoint,
        },
    },
}

M.GetResourceMetricsOutput = {
    type = "structure",
    members = {
        AlignedStartTime = {
            type = "timestamp",
        },
        AlignedEndTime = {
            type = "timestamp",
        },
        Identifier = {
            type = "string",
        },
        MetricList = {
            type = "list",
            member = M.MetricKeyDataPoints,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAvailableResourceDimensionsInput = {
    type = "structure",
    members = {
        ServiceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Metrics = {
            type = "list",
            member = { type = "string" },
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
        AuthorizedActions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MetricDimensionGroups = {
    type = "structure",
    members = {
        Metric = {
            type = "string",
        },
        Groups = {
            type = "list",
            member = M.DimensionGroupDetail,
        },
    },
}

M.ListAvailableResourceDimensionsOutput = {
    type = "structure",
    members = {
        MetricDimensions = {
            type = "list",
            member = M.MetricDimensionGroups,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAvailableResourceMetricsInput = {
    type = "structure",
    members = {
        ServiceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ResponseResourceMetric = {
    type = "structure",
    members = {
        Metric = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Unit = {
            type = "string",
        },
    },
}

M.ListAvailableResourceMetricsOutput = {
    type = "structure",
    members = {
        Metrics = {
            type = "list",
            member = M.ResponseResourceMetric,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListPerformanceAnalysisReportsInput = {
    type = "structure",
    members = {
        ServiceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        ListTags = {
            type = "boolean",
        },
    },
}

M.ListPerformanceAnalysisReportsOutput = {
    type = "structure",
    members = {
        AnalysisReports = {
            type = "list",
            member = M.AnalysisReportSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ServiceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
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

M.TagResourceInput = {
    type = "structure",
    members = {
        ServiceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
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
        ServiceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
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

M.Insight = {
    type = "structure",
    members = {
        InsightId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InsightType = {
            type = "string",
        },
        Context = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Severity = {
            type = "string",
        },
        SupportingInsights = {
            type = "list",
            member = M.Insight,
        },
        Description = {
            type = "string",
        },
        Recommendations = {
            type = "list",
            member = M.Recommendation,
        },
        InsightData = {
            type = "list",
            member = M.Data,
        },
        BaselineData = {
            type = "list",
            member = M.Data,
        },
    },
}

M.AnalysisReport = {
    type = "structure",
    members = {
        AnalysisReportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Identifier = {
            type = "string",
        },
        ServiceType = {
            type = "string",
        },
        CreateTime = {
            type = "timestamp",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        Insights = {
            type = "list",
            member = M.Insight,
        },
    },
}

M.GetPerformanceAnalysisReportOutput = {
    type = "structure",
    members = {
        AnalysisReport = M.AnalysisReport,
    },
}

return M
