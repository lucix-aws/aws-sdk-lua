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
            key_type = "string",
            value_type = "string",
        },
        Filter = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Value = {
            type = "number",
        },
    },
}

M.Data = {
    type = "structure",
    members = {
        PerformanceInsightsMetric = {
            type = "structure",
        },
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
        },
        Limit = {
            type = "number",
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
            type = "number",
        },
        GroupBy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        AdditionalMetrics = {
            type = "list",
            member_type = "string",
        },
        PartitionBy = {
            type = "structure",
        },
        Filter = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        MaxResults = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
        Total = {
            type = "number",
        },
        AdditionalMetrics = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        Partitions = {
            type = "list",
            member_type = "number",
        },
    },
}

M.ResponsePartitionKey = {
    type = "structure",
    members = {
        Dimensions = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
        },
        Keys = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
        },
    },
}

M.GetDimensionKeyDetailsOutput = {
    type = "structure",
    members = {
        Dimensions = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "structure",
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
        GroupBy = {
            type = "structure",
        },
        Filter = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
            type = "number",
        },
        MaxResults = {
            type = "number",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.MetricKeyDataPoints = {
    type = "structure",
    members = {
        Key = {
            type = "structure",
        },
        DataPoints = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
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
        AuthorizedActions = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
    },
}

M.ListAvailableResourceDimensionsOutput = {
    type = "structure",
    members = {
        MetricDimensions = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        Description = {
            type = "string",
        },
        Recommendations = {
            type = "list",
            member_type = "structure",
        },
        InsightData = {
            type = "list",
            member_type = "structure",
        },
        BaselineData = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.GetPerformanceAnalysisReportOutput = {
    type = "structure",
    members = {
        AnalysisReport = {
            type = "structure",
        },
    },
}

return M
