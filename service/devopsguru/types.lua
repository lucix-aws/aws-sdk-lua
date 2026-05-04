local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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

M.AccountInsightHealth = {
    type = "structure",
    id = "AccountInsightHealth",
    members = {
        OpenProactiveInsights = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        OpenReactiveInsights = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.AccountHealth = {
    type = "structure",
    id = "AccountHealth",
    members = {
        AccountId = {
            type = "string",
        },
        Insight = M.AccountInsightHealth,
    },
}

M.NotificationMessageType = {
    NEW_INSIGHT = "NEW_INSIGHT",
    CLOSED_INSIGHT = "CLOSED_INSIGHT",
    NEW_ASSOCIATION = "NEW_ASSOCIATION",
    SEVERITY_UPGRADED = "SEVERITY_UPGRADED",
    NEW_RECOMMENDATION = "NEW_RECOMMENDATION",
}

M.InsightSeverity = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.NotificationFilterConfig = {
    type = "structure",
    id = "NotificationFilterConfig",
    members = {
        Severities = {
            type = "list",
            member = { type = "string" },
        },
        MessageTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SnsChannelConfig = {
    type = "structure",
    id = "SnsChannelConfig",
    members = {
        TopicArn = {
            type = "string",
        },
    },
}

M.NotificationChannelConfig = {
    type = "structure",
    id = "NotificationChannelConfig",
    members = {
        Sns = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SnsChannelConfig }),
        Filters = M.NotificationFilterConfig,
    },
}

M.AddNotificationChannelInput = {
    type = "structure",
    id = "AddNotificationChannelInput",
    members = {
        Config = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NotificationChannelConfig }),
    },
}

M.AddNotificationChannelOutput = {
    type = "structure",
    id = "AddNotificationChannelOutput",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
            type = "string",
            traits = {
                required = true,
            },
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
            traits = {
                required = true,
            },
        },
        RetryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceType = {
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

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuotaCode = {
            type = "string",
        },
        ServiceCode = {
            type = "string",
        },
        RetryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    CANNOT_PARSE = "CANNOT_PARSE",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    OTHER = "OTHER",
    INVALID_PARAMETER_COMBINATION = "INVALID_PARAMETER_COMBINATION",
    PARAMETER_INCONSISTENT_WITH_SERVICE_STATE = "PARAMETER_INCONSISTENT_WITH_SERVICE_STATE",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Reason = {
            type = "string",
        },
        Fields = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.EventSourceOptInStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AmazonCodeGuruProfilerIntegration = {
    type = "structure",
    id = "AmazonCodeGuruProfilerIntegration",
    members = {
        Status = {
            type = "string",
        },
    },
}

M.LogAnomalyType = {
    KEYWORD = "KEYWORD",
    KEYWORD_TOKEN = "KEYWORD_TOKEN",
    FORMAT = "FORMAT",
    HTTP_CODE = "HTTP_CODE",
    BLOCK_FORMAT = "BLOCK_FORMAT",
    NUMERICAL_POINT = "NUMERICAL_POINT",
    NUMERICAL_NAN = "NUMERICAL_NAN",
    NEW_FIELD_NAME = "NEW_FIELD_NAME",
}

M.LogAnomalyClass = {
    type = "structure",
    id = "LogAnomalyClass",
    members = {
        LogStreamName = {
            type = "string",
        },
        LogAnomalyType = {
            type = "string",
        },
        LogAnomalyToken = {
            type = "string",
        },
        LogEventId = {
            type = "string",
        },
        Explanation = {
            type = "string",
        },
        NumberOfLogLinesOccurrences = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        LogEventTimestamp = {
            type = "timestamp",
        },
    },
}

M.LogAnomalyShowcase = {
    type = "structure",
    id = "LogAnomalyShowcase",
    members = {
        LogAnomalyClasses = {
            type = "list",
            member = M.LogAnomalyClass,
        },
    },
}

M.AnomalousLogGroup = {
    type = "structure",
    id = "AnomalousLogGroup",
    members = {
        LogGroupName = {
            type = "string",
        },
        ImpactStartTime = {
            type = "timestamp",
        },
        ImpactEndTime = {
            type = "timestamp",
        },
        NumberOfLogLinesScanned = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        LogAnomalyShowcases = {
            type = "list",
            member = M.LogAnomalyShowcase,
        },
    },
}

M.AnomalyReportedTimeRange = {
    type = "structure",
    id = "AnomalyReportedTimeRange",
    members = {
        OpenTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        CloseTime = {
            type = "timestamp",
        },
    },
}

M.AnomalyResource = {
    type = "structure",
    id = "AnomalyResource",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.AnomalySeverity = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.CloudWatchMetricsDimension = {
    type = "structure",
    id = "CloudWatchMetricsDimension",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.CloudWatchMetricDataStatusCode = {
    COMPLETE = "Complete",
    INTERNAL_ERROR = "InternalError",
    PARTIAL_DATA = "PartialData",
}

M.TimestampMetricValuePair = {
    type = "structure",
    id = "TimestampMetricValuePair",
    members = {
        Timestamp = {
            type = "timestamp",
        },
        MetricValue = {
            type = "double",
        },
    },
}

M.CloudWatchMetricsDataSummary = {
    type = "structure",
    id = "CloudWatchMetricsDataSummary",
    members = {
        TimestampMetricValuePairList = {
            type = "list",
            member = M.TimestampMetricValuePair,
        },
        StatusCode = {
            type = "string",
        },
    },
}

M.CloudWatchMetricsStat = {
    SUM = "Sum",
    AVERAGE = "Average",
    SAMPLE_COUNT = "SampleCount",
    MINIMUM = "Minimum",
    MAXIMUM = "Maximum",
    P99 = "p99",
    P90 = "p90",
    P50 = "p50",
}

M.CloudWatchMetricsDetail = {
    type = "structure",
    id = "CloudWatchMetricsDetail",
    members = {
        MetricName = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member = M.CloudWatchMetricsDimension,
        },
        Stat = {
            type = "string",
        },
        Unit = {
            type = "string",
        },
        Period = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MetricDataSummary = M.CloudWatchMetricsDataSummary,
    },
}

M.PerformanceInsightsMetricDimensionGroup = {
    type = "structure",
    id = "PerformanceInsightsMetricDimensionGroup",
    members = {
        Group = {
            type = "string",
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

M.PerformanceInsightsMetricQuery = {
    type = "structure",
    id = "PerformanceInsightsMetricQuery",
    members = {
        Metric = {
            type = "string",
        },
        GroupBy = M.PerformanceInsightsMetricDimensionGroup,
        Filter = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.PerformanceInsightsReferenceMetric = {
    type = "structure",
    id = "PerformanceInsightsReferenceMetric",
    members = {
        MetricQuery = M.PerformanceInsightsMetricQuery,
    },
}

M.PerformanceInsightsReferenceScalar = {
    type = "structure",
    id = "PerformanceInsightsReferenceScalar",
    members = {
        Value = {
            type = "double",
        },
    },
}

M.PerformanceInsightsReferenceComparisonValues = {
    type = "structure",
    id = "PerformanceInsightsReferenceComparisonValues",
    members = {
        ReferenceScalar = M.PerformanceInsightsReferenceScalar,
        ReferenceMetric = M.PerformanceInsightsReferenceMetric,
    },
}

M.PerformanceInsightsReferenceData = {
    type = "structure",
    id = "PerformanceInsightsReferenceData",
    members = {
        Name = {
            type = "string",
        },
        ComparisonValues = M.PerformanceInsightsReferenceComparisonValues,
    },
}

M.PerformanceInsightsStat = {
    type = "structure",
    id = "PerformanceInsightsStat",
    members = {
        Type = {
            type = "string",
        },
        Value = {
            type = "double",
        },
    },
}

M.PerformanceInsightsMetricsDetail = {
    type = "structure",
    id = "PerformanceInsightsMetricsDetail",
    members = {
        MetricDisplayName = {
            type = "string",
        },
        Unit = {
            type = "string",
        },
        MetricQuery = M.PerformanceInsightsMetricQuery,
        ReferenceData = {
            type = "list",
            member = M.PerformanceInsightsReferenceData,
        },
        StatsAtAnomaly = {
            type = "list",
            member = M.PerformanceInsightsStat,
        },
        StatsAtBaseline = {
            type = "list",
            member = M.PerformanceInsightsStat,
        },
    },
}

M.AnomalySourceDetails = {
    type = "structure",
    id = "AnomalySourceDetails",
    members = {
        CloudWatchMetrics = {
            type = "list",
            member = M.CloudWatchMetricsDetail,
        },
        PerformanceInsightsMetrics = {
            type = "list",
            member = M.PerformanceInsightsMetricsDetail,
        },
    },
}

M.AnomalySourceMetadata = {
    type = "structure",
    id = "AnomalySourceMetadata",
    members = {
        Source = {
            type = "string",
        },
        SourceResourceName = {
            type = "string",
        },
        SourceResourceType = {
            type = "string",
        },
    },
}

M.AnomalyStatus = {
    ONGOING = "ONGOING",
    CLOSED = "CLOSED",
}

M.AnomalyTimeRange = {
    type = "structure",
    id = "AnomalyTimeRange",
    members = {
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.AnomalyType = {
    CAUSAL = "CAUSAL",
    CONTEXTUAL = "CONTEXTUAL",
}

M.DeleteInsightInput = {
    type = "structure",
    id = "DeleteInsightInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteInsightOutput = {
    type = "structure",
    id = "DeleteInsightOutput",
}

M.DescribeAccountHealthInput = {
    type = "structure",
    id = "DescribeAccountHealthInput",
}

M.DescribeAccountHealthOutput = {
    type = "structure",
    id = "DescribeAccountHealthOutput",
    members = {
        OpenReactiveInsights = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        OpenProactiveInsights = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        MetricsAnalyzed = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        ResourceHours = {
            type = "long",
            traits = {
                required = true,
            },
        },
        AnalyzedResourceCount = {
            type = "long",
        },
    },
}

M.DescribeAccountOverviewInput = {
    type = "structure",
    id = "DescribeAccountOverviewInput",
    members = {
        FromTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ToTime = {
            type = "timestamp",
        },
    },
}

M.DescribeAccountOverviewOutput = {
    type = "structure",
    id = "DescribeAccountOverviewOutput",
    members = {
        ReactiveInsights = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        ProactiveInsights = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        MeanTimeToRecoverInMilliseconds = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAnomalyInput = {
    type = "structure",
    id = "DescribeAnomalyInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountId = {
            type = "string",
            traits = {
                http_query = "AccountId",
            },
        },
    },
}

M.PredictionTimeRange = {
    type = "structure",
    id = "PredictionTimeRange",
    members = {
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.CloudFormationCollection = {
    type = "structure",
    id = "CloudFormationCollection",
    members = {
        StackNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TagCollection = {
    type = "structure",
    id = "TagCollection",
    members = {
        AppBoundaryKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceCollection = {
    type = "structure",
    id = "ResourceCollection",
    members = {
        CloudFormation = M.CloudFormationCollection,
        Tags = {
            type = "list",
            member = M.TagCollection,
        },
    },
}

M.ProactiveAnomaly = {
    type = "structure",
    id = "ProactiveAnomaly",
    members = {
        Id = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        UpdateTime = {
            type = "timestamp",
        },
        AnomalyTimeRange = M.AnomalyTimeRange,
        AnomalyReportedTimeRange = M.AnomalyReportedTimeRange,
        PredictionTimeRange = M.PredictionTimeRange,
        SourceDetails = M.AnomalySourceDetails,
        AssociatedInsightId = {
            type = "string",
        },
        ResourceCollection = M.ResourceCollection,
        Limit = {
            type = "double",
        },
        SourceMetadata = M.AnomalySourceMetadata,
        AnomalyResources = {
            type = "list",
            member = M.AnomalyResource,
        },
        Description = {
            type = "string",
        },
    },
}

M.ReactiveAnomaly = {
    type = "structure",
    id = "ReactiveAnomaly",
    members = {
        Id = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AnomalyTimeRange = M.AnomalyTimeRange,
        AnomalyReportedTimeRange = M.AnomalyReportedTimeRange,
        SourceDetails = M.AnomalySourceDetails,
        AssociatedInsightId = {
            type = "string",
        },
        ResourceCollection = M.ResourceCollection,
        Type = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CausalAnomalyId = {
            type = "string",
        },
        AnomalyResources = {
            type = "list",
            member = M.AnomalyResource,
        },
    },
}

M.DescribeAnomalyOutput = {
    type = "structure",
    id = "DescribeAnomalyOutput",
    members = {
        ProactiveAnomaly = M.ProactiveAnomaly,
        ReactiveAnomaly = M.ReactiveAnomaly,
    },
}

M.DescribeEventSourcesConfigInput = {
    type = "structure",
    id = "DescribeEventSourcesConfigInput",
}

M.EventSourcesConfig = {
    type = "structure",
    id = "EventSourcesConfig",
    members = {
        AmazonCodeGuruProfiler = M.AmazonCodeGuruProfilerIntegration,
    },
}

M.DescribeEventSourcesConfigOutput = {
    type = "structure",
    id = "DescribeEventSourcesConfigOutput",
    members = {
        EventSources = M.EventSourcesConfig,
    },
}

M.DescribeFeedbackInput = {
    type = "structure",
    id = "DescribeFeedbackInput",
    members = {
        InsightId = {
            type = "string",
        },
    },
}

M.InsightFeedbackOption = {
    VALID_COLLECTION = "VALID_COLLECTION",
    RECOMMENDATION_USEFUL = "RECOMMENDATION_USEFUL",
    ALERT_TOO_SENSITIVE = "ALERT_TOO_SENSITIVE",
    DATA_NOISY_ANOMALY = "DATA_NOISY_ANOMALY",
    DATA_INCORRECT = "DATA_INCORRECT",
}

M.InsightFeedback = {
    type = "structure",
    id = "InsightFeedback",
    members = {
        Id = {
            type = "string",
        },
        Feedback = {
            type = "string",
        },
    },
}

M.DescribeFeedbackOutput = {
    type = "structure",
    id = "DescribeFeedbackOutput",
    members = {
        InsightFeedback = M.InsightFeedback,
    },
}

M.DescribeInsightInput = {
    type = "structure",
    id = "DescribeInsightInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        AccountId = {
            type = "string",
            traits = {
                http_query = "AccountId",
            },
        },
    },
}

M.InsightTimeRange = {
    type = "structure",
    id = "InsightTimeRange",
    members = {
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.InsightStatus = {
    ONGOING = "ONGOING",
    CLOSED = "CLOSED",
}

M.ProactiveInsight = {
    type = "structure",
    id = "ProactiveInsight",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        InsightTimeRange = M.InsightTimeRange,
        PredictionTimeRange = M.PredictionTimeRange,
        ResourceCollection = M.ResourceCollection,
        SsmOpsItemId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.ReactiveInsight = {
    type = "structure",
    id = "ReactiveInsight",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        InsightTimeRange = M.InsightTimeRange,
        ResourceCollection = M.ResourceCollection,
        SsmOpsItemId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
    },
}

M.DescribeInsightOutput = {
    type = "structure",
    id = "DescribeInsightOutput",
    members = {
        ProactiveInsight = M.ProactiveInsight,
        ReactiveInsight = M.ReactiveInsight,
    },
}

M.DescribeOrganizationHealthInput = {
    type = "structure",
    id = "DescribeOrganizationHealthInput",
    members = {
        AccountIds = {
            type = "list",
            member = { type = "string" },
        },
        OrganizationalUnitIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeOrganizationHealthOutput = {
    type = "structure",
    id = "DescribeOrganizationHealthOutput",
    members = {
        OpenReactiveInsights = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        OpenProactiveInsights = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        MetricsAnalyzed = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        ResourceHours = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeOrganizationOverviewInput = {
    type = "structure",
    id = "DescribeOrganizationOverviewInput",
    members = {
        FromTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ToTime = {
            type = "timestamp",
        },
        AccountIds = {
            type = "list",
            member = { type = "string" },
        },
        OrganizationalUnitIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeOrganizationOverviewOutput = {
    type = "structure",
    id = "DescribeOrganizationOverviewOutput",
    members = {
        ReactiveInsights = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        ProactiveInsights = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.OrganizationResourceCollectionType = {
    AWS_CLOUD_FORMATION = "AWS_CLOUD_FORMATION",
    AWS_SERVICE = "AWS_SERVICE",
    AWS_ACCOUNT = "AWS_ACCOUNT",
    AWS_TAGS = "AWS_TAGS",
}

M.DescribeOrganizationResourceCollectionHealthInput = {
    type = "structure",
    id = "DescribeOrganizationResourceCollectionHealthInput",
    members = {
        OrganizationResourceCollectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member = { type = "string" },
        },
        OrganizationalUnitIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.InsightHealth = {
    type = "structure",
    id = "InsightHealth",
    members = {
        OpenProactiveInsights = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        OpenReactiveInsights = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        MeanTimeToRecoverInMilliseconds = {
            type = "long",
        },
    },
}

M.CloudFormationHealth = {
    type = "structure",
    id = "CloudFormationHealth",
    members = {
        StackName = {
            type = "string",
        },
        Insight = M.InsightHealth,
        AnalyzedResourceCount = {
            type = "long",
        },
    },
}

M.ServiceInsightHealth = {
    type = "structure",
    id = "ServiceInsightHealth",
    members = {
        OpenProactiveInsights = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        OpenReactiveInsights = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ServiceName = {
    API_GATEWAY = "API_GATEWAY",
    APPLICATION_ELB = "APPLICATION_ELB",
    AUTO_SCALING_GROUP = "AUTO_SCALING_GROUP",
    CLOUD_FRONT = "CLOUD_FRONT",
    DYNAMO_DB = "DYNAMO_DB",
    EC2 = "EC2",
    ECS = "ECS",
    EKS = "EKS",
    ELASTIC_BEANSTALK = "ELASTIC_BEANSTALK",
    ELASTI_CACHE = "ELASTI_CACHE",
    ELB = "ELB",
    ES = "ES",
    KINESIS = "KINESIS",
    LAMBDA = "LAMBDA",
    NAT_GATEWAY = "NAT_GATEWAY",
    NETWORK_ELB = "NETWORK_ELB",
    RDS = "RDS",
    REDSHIFT = "REDSHIFT",
    ROUTE_53 = "ROUTE_53",
    S3 = "S3",
    SAGE_MAKER = "SAGE_MAKER",
    SNS = "SNS",
    SQS = "SQS",
    STEP_FUNCTIONS = "STEP_FUNCTIONS",
    SWF = "SWF",
}

M.ServiceHealth = {
    type = "structure",
    id = "ServiceHealth",
    members = {
        ServiceName = {
            type = "string",
        },
        Insight = M.ServiceInsightHealth,
        AnalyzedResourceCount = {
            type = "long",
        },
    },
}

M.TagHealth = {
    type = "structure",
    id = "TagHealth",
    members = {
        AppBoundaryKey = {
            type = "string",
        },
        TagValue = {
            type = "string",
        },
        Insight = M.InsightHealth,
        AnalyzedResourceCount = {
            type = "long",
        },
    },
}

M.DescribeOrganizationResourceCollectionHealthOutput = {
    type = "structure",
    id = "DescribeOrganizationResourceCollectionHealthOutput",
    members = {
        CloudFormation = {
            type = "list",
            member = M.CloudFormationHealth,
        },
        Service = {
            type = "list",
            member = M.ServiceHealth,
        },
        Account = {
            type = "list",
            member = M.AccountHealth,
        },
        NextToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.TagHealth,
        },
    },
}

M.ResourceCollectionType = {
    AWS_CLOUD_FORMATION = "AWS_CLOUD_FORMATION",
    AWS_SERVICE = "AWS_SERVICE",
    AWS_TAGS = "AWS_TAGS",
}

M.DescribeResourceCollectionHealthInput = {
    type = "structure",
    id = "DescribeResourceCollectionHealthInput",
    members = {
        ResourceCollectionType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.DescribeResourceCollectionHealthOutput = {
    type = "structure",
    id = "DescribeResourceCollectionHealthOutput",
    members = {
        CloudFormation = {
            type = "list",
            member = M.CloudFormationHealth,
        },
        Service = {
            type = "list",
            member = M.ServiceHealth,
        },
        NextToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.TagHealth,
        },
    },
}

M.DescribeServiceIntegrationInput = {
    type = "structure",
    id = "DescribeServiceIntegrationInput",
}

M.OptInStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ServerSideEncryptionType = {
    CUSTOMER_MANAGED_KEY = "CUSTOMER_MANAGED_KEY",
    AWS_OWNED_KMS_KEY = "AWS_OWNED_KMS_KEY",
}

M.KMSServerSideEncryptionIntegration = {
    type = "structure",
    id = "KMSServerSideEncryptionIntegration",
    members = {
        KMSKeyId = {
            type = "string",
        },
        OptInStatus = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.LogsAnomalyDetectionIntegration = {
    type = "structure",
    id = "LogsAnomalyDetectionIntegration",
    members = {
        OptInStatus = {
            type = "string",
        },
    },
}

M.OpsCenterIntegration = {
    type = "structure",
    id = "OpsCenterIntegration",
    members = {
        OptInStatus = {
            type = "string",
        },
    },
}

M.ServiceIntegrationConfig = {
    type = "structure",
    id = "ServiceIntegrationConfig",
    members = {
        OpsCenter = M.OpsCenterIntegration,
        LogsAnomalyDetection = M.LogsAnomalyDetectionIntegration,
        KMSServerSideEncryption = M.KMSServerSideEncryptionIntegration,
    },
}

M.DescribeServiceIntegrationOutput = {
    type = "structure",
    id = "DescribeServiceIntegrationOutput",
    members = {
        ServiceIntegration = M.ServiceIntegrationConfig,
    },
}

M.GetCostEstimationInput = {
    type = "structure",
    id = "GetCostEstimationInput",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.CostEstimationServiceResourceState = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.ServiceResourceCost = {
    type = "structure",
    id = "ServiceResourceCost",
    members = {
        Type = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        UnitCost = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Cost = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.CloudFormationCostEstimationResourceCollectionFilter = {
    type = "structure",
    id = "CloudFormationCostEstimationResourceCollectionFilter",
    members = {
        StackNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TagCostEstimationResourceCollectionFilter = {
    type = "structure",
    id = "TagCostEstimationResourceCollectionFilter",
    members = {
        AppBoundaryKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CostEstimationResourceCollectionFilter = {
    type = "structure",
    id = "CostEstimationResourceCollectionFilter",
    members = {
        CloudFormation = M.CloudFormationCostEstimationResourceCollectionFilter,
        Tags = {
            type = "list",
            member = M.TagCostEstimationResourceCollectionFilter,
        },
    },
}

M.CostEstimationStatus = {
    ONGOING = "ONGOING",
    COMPLETED = "COMPLETED",
}

M.CostEstimationTimeRange = {
    type = "structure",
    id = "CostEstimationTimeRange",
    members = {
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.GetCostEstimationOutput = {
    type = "structure",
    id = "GetCostEstimationOutput",
    members = {
        ResourceCollection = M.CostEstimationResourceCollectionFilter,
        Status = {
            type = "string",
        },
        Costs = {
            type = "list",
            member = M.ServiceResourceCost,
        },
        TimeRange = M.CostEstimationTimeRange,
        TotalCost = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetResourceCollectionInput = {
    type = "structure",
    id = "GetResourceCollectionInput",
    members = {
        ResourceCollectionType = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
    },
}

M.CloudFormationCollectionFilter = {
    type = "structure",
    id = "CloudFormationCollectionFilter",
    members = {
        StackNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TagCollectionFilter = {
    type = "structure",
    id = "TagCollectionFilter",
    members = {
        AppBoundaryKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceCollectionFilter = {
    type = "structure",
    id = "ResourceCollectionFilter",
    members = {
        CloudFormation = M.CloudFormationCollectionFilter,
        Tags = {
            type = "list",
            member = M.TagCollectionFilter,
        },
    },
}

M.GetResourceCollectionOutput = {
    type = "structure",
    id = "GetResourceCollectionOutput",
    members = {
        ResourceCollection = M.ResourceCollectionFilter,
        NextToken = {
            type = "string",
        },
    },
}

M.ServiceCollection = {
    type = "structure",
    id = "ServiceCollection",
    members = {
        ServiceNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListAnomaliesForInsightFilters = {
    type = "structure",
    id = "ListAnomaliesForInsightFilters",
    members = {
        ServiceCollection = M.ServiceCollection,
    },
}

M.StartTimeRange = {
    type = "structure",
    id = "StartTimeRange",
    members = {
        FromTime = {
            type = "timestamp",
        },
        ToTime = {
            type = "timestamp",
        },
    },
}

M.ListAnomaliesForInsightInput = {
    type = "structure",
    id = "ListAnomaliesForInsightInput",
    members = {
        InsightId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StartTimeRange = M.StartTimeRange,
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        Filters = M.ListAnomaliesForInsightFilters,
    },
}

M.ProactiveAnomalySummary = {
    type = "structure",
    id = "ProactiveAnomalySummary",
    members = {
        Id = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        UpdateTime = {
            type = "timestamp",
        },
        AnomalyTimeRange = M.AnomalyTimeRange,
        AnomalyReportedTimeRange = M.AnomalyReportedTimeRange,
        PredictionTimeRange = M.PredictionTimeRange,
        SourceDetails = M.AnomalySourceDetails,
        AssociatedInsightId = {
            type = "string",
        },
        ResourceCollection = M.ResourceCollection,
        Limit = {
            type = "double",
        },
        SourceMetadata = M.AnomalySourceMetadata,
        AnomalyResources = {
            type = "list",
            member = M.AnomalyResource,
        },
        Description = {
            type = "string",
        },
    },
}

M.ReactiveAnomalySummary = {
    type = "structure",
    id = "ReactiveAnomalySummary",
    members = {
        Id = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AnomalyTimeRange = M.AnomalyTimeRange,
        AnomalyReportedTimeRange = M.AnomalyReportedTimeRange,
        SourceDetails = M.AnomalySourceDetails,
        AssociatedInsightId = {
            type = "string",
        },
        ResourceCollection = M.ResourceCollection,
        Type = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        CausalAnomalyId = {
            type = "string",
        },
        AnomalyResources = {
            type = "list",
            member = M.AnomalyResource,
        },
    },
}

M.ListAnomaliesForInsightOutput = {
    type = "structure",
    id = "ListAnomaliesForInsightOutput",
    members = {
        ProactiveAnomalies = {
            type = "list",
            member = M.ProactiveAnomalySummary,
        },
        ReactiveAnomalies = {
            type = "list",
            member = M.ReactiveAnomalySummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAnomalousLogGroupsInput = {
    type = "structure",
    id = "ListAnomalousLogGroupsInput",
    members = {
        InsightId = {
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

M.ListAnomalousLogGroupsOutput = {
    type = "structure",
    id = "ListAnomalousLogGroupsOutput",
    members = {
        InsightId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnomalousLogGroups = {
            type = "list",
            member = M.AnomalousLogGroup,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.EventDataSource = {
    AWS_CLOUD_TRAIL = "AWS_CLOUD_TRAIL",
    AWS_CODE_DEPLOY = "AWS_CODE_DEPLOY",
}

M.EventClass = {
    INFRASTRUCTURE = "INFRASTRUCTURE",
    DEPLOYMENT = "DEPLOYMENT",
    SECURITY_CHANGE = "SECURITY_CHANGE",
    CONFIG_CHANGE = "CONFIG_CHANGE",
    SCHEMA_CHANGE = "SCHEMA_CHANGE",
}

M.EventTimeRange = {
    type = "structure",
    id = "EventTimeRange",
    members = {
        FromTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ToTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListEventsFilters = {
    type = "structure",
    id = "ListEventsFilters",
    members = {
        InsightId = {
            type = "string",
        },
        EventTimeRange = M.EventTimeRange,
        EventClass = {
            type = "string",
        },
        EventSource = {
            type = "string",
        },
        DataSource = {
            type = "string",
        },
        ResourceCollection = M.ResourceCollection,
    },
}

M.ListEventsInput = {
    type = "structure",
    id = "ListEventsInput",
    members = {
        Filters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ListEventsFilters }),
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
    },
}

M.EventResource = {
    type = "structure",
    id = "EventResource",
    members = {
        Type = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.Event = {
    type = "structure",
    id = "Event",
    members = {
        ResourceCollection = M.ResourceCollection,
        Id = {
            type = "string",
        },
        Time = {
            type = "timestamp",
        },
        EventSource = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        DataSource = {
            type = "string",
        },
        EventClass = {
            type = "string",
        },
        Resources = {
            type = "list",
            member = M.EventResource,
        },
    },
}

M.ListEventsOutput = {
    type = "structure",
    id = "ListEventsOutput",
    members = {
        Events = {
            type = "list",
            member = M.Event,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InsightType = {
    REACTIVE = "REACTIVE",
    PROACTIVE = "PROACTIVE",
}

M.ListInsightsAnyStatusFilter = {
    type = "structure",
    id = "ListInsightsAnyStatusFilter",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartTimeRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StartTimeRange }),
    },
}

M.EndTimeRange = {
    type = "structure",
    id = "EndTimeRange",
    members = {
        FromTime = {
            type = "timestamp",
        },
        ToTime = {
            type = "timestamp",
        },
    },
}

M.ListInsightsClosedStatusFilter = {
    type = "structure",
    id = "ListInsightsClosedStatusFilter",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndTimeRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EndTimeRange }),
    },
}

M.ListInsightsOngoingStatusFilter = {
    type = "structure",
    id = "ListInsightsOngoingStatusFilter",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListInsightsStatusFilter = {
    type = "structure",
    id = "ListInsightsStatusFilter",
    members = {
        Ongoing = M.ListInsightsOngoingStatusFilter,
        Closed = M.ListInsightsClosedStatusFilter,
        Any = M.ListInsightsAnyStatusFilter,
    },
}

M.ListInsightsInput = {
    type = "structure",
    id = "ListInsightsInput",
    members = {
        StatusFilter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ListInsightsStatusFilter }),
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ProactiveInsightSummary = {
    type = "structure",
    id = "ProactiveInsightSummary",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        InsightTimeRange = M.InsightTimeRange,
        PredictionTimeRange = M.PredictionTimeRange,
        ResourceCollection = M.ResourceCollection,
        ServiceCollection = M.ServiceCollection,
        AssociatedResourceArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ReactiveInsightSummary = {
    type = "structure",
    id = "ReactiveInsightSummary",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        InsightTimeRange = M.InsightTimeRange,
        ResourceCollection = M.ResourceCollection,
        ServiceCollection = M.ServiceCollection,
        AssociatedResourceArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListInsightsOutput = {
    type = "structure",
    id = "ListInsightsOutput",
    members = {
        ProactiveInsights = {
            type = "list",
            member = M.ProactiveInsightSummary,
        },
        ReactiveInsights = {
            type = "list",
            member = M.ReactiveInsightSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ResourcePermission = {
    FULL_PERMISSION = "FULL_PERMISSION",
    MISSING_PERMISSION = "MISSING_PERMISSION",
}

M.ResourceTypeFilter = {
    LOG_GROUPS = "LOG_GROUPS",
    CLOUDFRONT_DISTRIBUTION = "CLOUDFRONT_DISTRIBUTION",
    DYNAMODB_TABLE = "DYNAMODB_TABLE",
    EC2_NAT_GATEWAY = "EC2_NAT_GATEWAY",
    ECS_CLUSTER = "ECS_CLUSTER",
    ECS_SERVICE = "ECS_SERVICE",
    EKS_CLUSTER = "EKS_CLUSTER",
    ELASTIC_BEANSTALK_ENVIRONMENT = "ELASTIC_BEANSTALK_ENVIRONMENT",
    ELASTIC_LOAD_BALANCER_LOAD_BALANCER = "ELASTIC_LOAD_BALANCER_LOAD_BALANCER",
    ELASTIC_LOAD_BALANCING_V2_LOAD_BALANCER = "ELASTIC_LOAD_BALANCING_V2_LOAD_BALANCER",
    ELASTIC_LOAD_BALANCING_V2_TARGET_GROUP = "ELASTIC_LOAD_BALANCING_V2_TARGET_GROUP",
    ELASTICACHE_CACHE_CLUSTER = "ELASTICACHE_CACHE_CLUSTER",
    ELASTICSEARCH_DOMAIN = "ELASTICSEARCH_DOMAIN",
    KINESIS_STREAM = "KINESIS_STREAM",
    LAMBDA_FUNCTION = "LAMBDA_FUNCTION",
    OPEN_SEARCH_SERVICE_DOMAIN = "OPEN_SEARCH_SERVICE_DOMAIN",
    RDS_DB_INSTANCE = "RDS_DB_INSTANCE",
    RDS_DB_CLUSTER = "RDS_DB_CLUSTER",
    REDSHIFT_CLUSTER = "REDSHIFT_CLUSTER",
    ROUTE53_HOSTED_ZONE = "ROUTE53_HOSTED_ZONE",
    ROUTE53_HEALTH_CHECK = "ROUTE53_HEALTH_CHECK",
    S3_BUCKET = "S3_BUCKET",
    SAGEMAKER_ENDPOINT = "SAGEMAKER_ENDPOINT",
    SNS_TOPIC = "SNS_TOPIC",
    SQS_QUEUE = "SQS_QUEUE",
    STEP_FUNCTIONS_ACTIVITY = "STEP_FUNCTIONS_ACTIVITY",
    STEP_FUNCTIONS_STATE_MACHINE = "STEP_FUNCTIONS_STATE_MACHINE",
}

M.ListMonitoredResourcesFilters = {
    type = "structure",
    id = "ListMonitoredResourcesFilters",
    members = {
        ResourcePermission = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTypeFilters = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ListMonitoredResourcesInput = {
    type = "structure",
    id = "ListMonitoredResourcesInput",
    members = {
        Filters = M.ListMonitoredResourcesFilters,
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MonitoredResourceIdentifier = {
    type = "structure",
    id = "MonitoredResourceIdentifier",
    members = {
        MonitoredResourceName = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        ResourcePermission = {
            type = "string",
        },
        LastUpdated = {
            type = "timestamp",
        },
        ResourceCollection = M.ResourceCollection,
    },
}

M.ListMonitoredResourcesOutput = {
    type = "structure",
    id = "ListMonitoredResourcesOutput",
    members = {
        MonitoredResourceIdentifiers = {
            type = "list",
            member = M.MonitoredResourceIdentifier,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListNotificationChannelsInput = {
    type = "structure",
    id = "ListNotificationChannelsInput",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.NotificationChannel = {
    type = "structure",
    id = "NotificationChannel",
    members = {
        Id = {
            type = "string",
        },
        Config = M.NotificationChannelConfig,
    },
}

M.ListNotificationChannelsOutput = {
    type = "structure",
    id = "ListNotificationChannelsOutput",
    members = {
        Channels = {
            type = "list",
            member = M.NotificationChannel,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOrganizationInsightsInput = {
    type = "structure",
    id = "ListOrganizationInsightsInput",
    members = {
        StatusFilter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ListInsightsStatusFilter }),
        MaxResults = {
            type = "integer",
        },
        AccountIds = {
            type = "list",
            member = { type = "string" },
        },
        OrganizationalUnitIds = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ProactiveOrganizationInsightSummary = {
    type = "structure",
    id = "ProactiveOrganizationInsightSummary",
    members = {
        Id = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        OrganizationalUnitId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        InsightTimeRange = M.InsightTimeRange,
        PredictionTimeRange = M.PredictionTimeRange,
        ResourceCollection = M.ResourceCollection,
        ServiceCollection = M.ServiceCollection,
    },
}

M.ReactiveOrganizationInsightSummary = {
    type = "structure",
    id = "ReactiveOrganizationInsightSummary",
    members = {
        Id = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        OrganizationalUnitId = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Severity = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        InsightTimeRange = M.InsightTimeRange,
        ResourceCollection = M.ResourceCollection,
        ServiceCollection = M.ServiceCollection,
    },
}

M.ListOrganizationInsightsOutput = {
    type = "structure",
    id = "ListOrganizationInsightsOutput",
    members = {
        ProactiveInsights = {
            type = "list",
            member = M.ProactiveOrganizationInsightSummary,
        },
        ReactiveInsights = {
            type = "list",
            member = M.ReactiveOrganizationInsightSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Locale = {
    DE_DE = "DE_DE",
    EN_US = "EN_US",
    EN_GB = "EN_GB",
    ES_ES = "ES_ES",
    FR_FR = "FR_FR",
    IT_IT = "IT_IT",
    JA_JP = "JA_JP",
    KO_KR = "KO_KR",
    PT_BR = "PT_BR",
    ZH_CN = "ZH_CN",
    ZH_TW = "ZH_TW",
}

M.ListRecommendationsInput = {
    type = "structure",
    id = "ListRecommendationsInput",
    members = {
        InsightId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        Locale = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
    },
}

M.RecommendationRelatedAnomalyResource = {
    type = "structure",
    id = "RecommendationRelatedAnomalyResource",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.RecommendationRelatedCloudWatchMetricsSourceDetail = {
    type = "structure",
    id = "RecommendationRelatedCloudWatchMetricsSourceDetail",
    members = {
        MetricName = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
    },
}

M.RecommendationRelatedAnomalySourceDetail = {
    type = "structure",
    id = "RecommendationRelatedAnomalySourceDetail",
    members = {
        CloudWatchMetrics = {
            type = "list",
            member = M.RecommendationRelatedCloudWatchMetricsSourceDetail,
        },
    },
}

M.RecommendationRelatedAnomaly = {
    type = "structure",
    id = "RecommendationRelatedAnomaly",
    members = {
        Resources = {
            type = "list",
            member = M.RecommendationRelatedAnomalyResource,
        },
        SourceDetails = {
            type = "list",
            member = M.RecommendationRelatedAnomalySourceDetail,
        },
        AnomalyId = {
            type = "string",
        },
    },
}

M.RecommendationRelatedEventResource = {
    type = "structure",
    id = "RecommendationRelatedEventResource",
    members = {
        Name = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.RecommendationRelatedEvent = {
    type = "structure",
    id = "RecommendationRelatedEvent",
    members = {
        Name = {
            type = "string",
        },
        Resources = {
            type = "list",
            member = M.RecommendationRelatedEventResource,
        },
    },
}

M.Recommendation = {
    type = "structure",
    id = "Recommendation",
    members = {
        Description = {
            type = "string",
        },
        Link = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Reason = {
            type = "string",
        },
        RelatedEvents = {
            type = "list",
            member = M.RecommendationRelatedEvent,
        },
        RelatedAnomalies = {
            type = "list",
            member = M.RecommendationRelatedAnomaly,
        },
        Category = {
            type = "string",
        },
    },
}

M.ListRecommendationsOutput = {
    type = "structure",
    id = "ListRecommendationsOutput",
    members = {
        Recommendations = {
            type = "list",
            member = M.Recommendation,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutFeedbackInput = {
    type = "structure",
    id = "PutFeedbackInput",
    members = {
        InsightFeedback = M.InsightFeedback,
    },
}

M.PutFeedbackOutput = {
    type = "structure",
    id = "PutFeedbackOutput",
}

M.RemoveNotificationChannelInput = {
    type = "structure",
    id = "RemoveNotificationChannelInput",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.RemoveNotificationChannelOutput = {
    type = "structure",
    id = "RemoveNotificationChannelOutput",
}

M.SearchInsightsFilters = {
    type = "structure",
    id = "SearchInsightsFilters",
    members = {
        Severities = {
            type = "list",
            member = { type = "string" },
        },
        Statuses = {
            type = "list",
            member = { type = "string" },
        },
        ResourceCollection = M.ResourceCollection,
        ServiceCollection = M.ServiceCollection,
    },
}

M.SearchInsightsInput = {
    type = "structure",
    id = "SearchInsightsInput",
    members = {
        StartTimeRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StartTimeRange }),
        Filters = M.SearchInsightsFilters,
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchInsightsOutput = {
    type = "structure",
    id = "SearchInsightsOutput",
    members = {
        ProactiveInsights = {
            type = "list",
            member = M.ProactiveInsightSummary,
        },
        ReactiveInsights = {
            type = "list",
            member = M.ReactiveInsightSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SearchOrganizationInsightsFilters = {
    type = "structure",
    id = "SearchOrganizationInsightsFilters",
    members = {
        Severities = {
            type = "list",
            member = { type = "string" },
        },
        Statuses = {
            type = "list",
            member = { type = "string" },
        },
        ResourceCollection = M.ResourceCollection,
        ServiceCollection = M.ServiceCollection,
    },
}

M.SearchOrganizationInsightsInput = {
    type = "structure",
    id = "SearchOrganizationInsightsInput",
    members = {
        AccountIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        StartTimeRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.StartTimeRange }),
        Filters = M.SearchOrganizationInsightsFilters,
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchOrganizationInsightsOutput = {
    type = "structure",
    id = "SearchOrganizationInsightsOutput",
    members = {
        ProactiveInsights = {
            type = "list",
            member = M.ProactiveInsightSummary,
        },
        ReactiveInsights = {
            type = "list",
            member = M.ReactiveInsightSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartCostEstimationInput = {
    type = "structure",
    id = "StartCostEstimationInput",
    members = {
        ResourceCollection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CostEstimationResourceCollectionFilter }),
        ClientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartCostEstimationOutput = {
    type = "structure",
    id = "StartCostEstimationOutput",
}

M.UpdateEventSourcesConfigInput = {
    type = "structure",
    id = "UpdateEventSourcesConfigInput",
    members = {
        EventSources = M.EventSourcesConfig,
    },
}

M.UpdateEventSourcesConfigOutput = {
    type = "structure",
    id = "UpdateEventSourcesConfigOutput",
}

M.UpdateResourceCollectionAction = {
    ADD = "ADD",
    REMOVE = "REMOVE",
}

M.UpdateCloudFormationCollectionFilter = {
    type = "structure",
    id = "UpdateCloudFormationCollectionFilter",
    members = {
        StackNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateTagCollectionFilter = {
    type = "structure",
    id = "UpdateTagCollectionFilter",
    members = {
        AppBoundaryKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateResourceCollectionFilter = {
    type = "structure",
    id = "UpdateResourceCollectionFilter",
    members = {
        CloudFormation = M.UpdateCloudFormationCollectionFilter,
        Tags = {
            type = "list",
            member = M.UpdateTagCollectionFilter,
        },
    },
}

M.UpdateResourceCollectionInput = {
    type = "structure",
    id = "UpdateResourceCollectionInput",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceCollection = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UpdateResourceCollectionFilter }),
    },
}

M.UpdateResourceCollectionOutput = {
    type = "structure",
    id = "UpdateResourceCollectionOutput",
}

M.KMSServerSideEncryptionIntegrationConfig = {
    type = "structure",
    id = "KMSServerSideEncryptionIntegrationConfig",
    members = {
        KMSKeyId = {
            type = "string",
        },
        OptInStatus = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.LogsAnomalyDetectionIntegrationConfig = {
    type = "structure",
    id = "LogsAnomalyDetectionIntegrationConfig",
    members = {
        OptInStatus = {
            type = "string",
        },
    },
}

M.OpsCenterIntegrationConfig = {
    type = "structure",
    id = "OpsCenterIntegrationConfig",
    members = {
        OptInStatus = {
            type = "string",
        },
    },
}

M.UpdateServiceIntegrationConfig = {
    type = "structure",
    id = "UpdateServiceIntegrationConfig",
    members = {
        OpsCenter = M.OpsCenterIntegrationConfig,
        LogsAnomalyDetection = M.LogsAnomalyDetectionIntegrationConfig,
        KMSServerSideEncryption = M.KMSServerSideEncryptionIntegrationConfig,
    },
}

M.UpdateServiceIntegrationInput = {
    type = "structure",
    id = "UpdateServiceIntegrationInput",
    members = {
        ServiceIntegration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UpdateServiceIntegrationConfig }),
    },
}

M.UpdateServiceIntegrationOutput = {
    type = "structure",
    id = "UpdateServiceIntegrationOutput",
}

return M
