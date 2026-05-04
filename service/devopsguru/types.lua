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

M.AccountInsightHealth = {
    type = "structure",
    members = {
        OpenProactiveInsights = {
            type = "number",
        },
        OpenReactiveInsights = {
            type = "number",
        },
    },
}

M.AccountHealth = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        Insight = {
            type = "structure",
        },
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
    members = {
        Severities = {
            type = "list",
            member_type = "string",
        },
        MessageTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SnsChannelConfig = {
    type = "structure",
    members = {
        TopicArn = {
            type = "string",
        },
    },
}

M.NotificationChannelConfig = {
    type = "structure",
    members = {
        Sns = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "structure",
        },
    },
}

M.AddNotificationChannelInput = {
    type = "structure",
    members = {
        Config = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AddNotificationChannelOutput = {
    type = "structure",
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
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RetryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
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
        QuotaCode = {
            type = "string",
        },
        ServiceCode = {
            type = "string",
        },
        RetryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.EventSourceOptInStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.AmazonCodeGuruProfilerIntegration = {
    type = "structure",
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
            type = "number",
        },
        LogEventTimestamp = {
            type = "timestamp",
        },
    },
}

M.LogAnomalyShowcase = {
    type = "structure",
    members = {
        LogAnomalyClasses = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AnomalousLogGroup = {
    type = "structure",
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
            type = "number",
        },
        LogAnomalyShowcases = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AnomalyReportedTimeRange = {
    type = "structure",
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
    members = {
        Timestamp = {
            type = "timestamp",
        },
        MetricValue = {
            type = "number",
        },
    },
}

M.CloudWatchMetricsDataSummary = {
    type = "structure",
    members = {
        TimestampMetricValuePairList = {
            type = "list",
            member_type = "structure",
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
    members = {
        MetricName = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member_type = "structure",
        },
        Stat = {
            type = "string",
        },
        Unit = {
            type = "string",
        },
        Period = {
            type = "number",
        },
        MetricDataSummary = {
            type = "structure",
        },
    },
}

M.PerformanceInsightsMetricDimensionGroup = {
    type = "structure",
    members = {
        Group = {
            type = "string",
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

M.PerformanceInsightsMetricQuery = {
    type = "structure",
    members = {
        Metric = {
            type = "string",
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

M.PerformanceInsightsReferenceMetric = {
    type = "structure",
    members = {
        MetricQuery = {
            type = "structure",
        },
    },
}

M.PerformanceInsightsReferenceScalar = {
    type = "structure",
    members = {
        Value = {
            type = "number",
        },
    },
}

M.PerformanceInsightsReferenceComparisonValues = {
    type = "structure",
    members = {
        ReferenceScalar = {
            type = "structure",
        },
        ReferenceMetric = {
            type = "structure",
        },
    },
}

M.PerformanceInsightsReferenceData = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ComparisonValues = {
            type = "structure",
        },
    },
}

M.PerformanceInsightsStat = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Value = {
            type = "number",
        },
    },
}

M.PerformanceInsightsMetricsDetail = {
    type = "structure",
    members = {
        MetricDisplayName = {
            type = "string",
        },
        Unit = {
            type = "string",
        },
        MetricQuery = {
            type = "structure",
        },
        ReferenceData = {
            type = "list",
            member_type = "structure",
        },
        StatsAtAnomaly = {
            type = "list",
            member_type = "structure",
        },
        StatsAtBaseline = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AnomalySourceDetails = {
    type = "structure",
    members = {
        CloudWatchMetrics = {
            type = "list",
            member_type = "structure",
        },
        PerformanceInsightsMetrics = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AnomalySourceMetadata = {
    type = "structure",
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
}

M.DescribeAccountHealthInput = {
    type = "structure",
}

M.DescribeAccountHealthOutput = {
    type = "structure",
    members = {
        OpenReactiveInsights = {
            type = "number",
            traits = {
                required = true,
            },
        },
        OpenProactiveInsights = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MetricsAnalyzed = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ResourceHours = {
            type = "number",
            traits = {
                required = true,
            },
        },
        AnalyzedResourceCount = {
            type = "number",
        },
    },
}

M.DescribeAccountOverviewInput = {
    type = "structure",
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
    members = {
        ReactiveInsights = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ProactiveInsights = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MeanTimeToRecoverInMilliseconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAnomalyInput = {
    type = "structure",
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
    members = {
        StackNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.TagCollection = {
    type = "structure",
    members = {
        AppBoundaryKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagValues = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceCollection = {
    type = "structure",
    members = {
        CloudFormation = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ProactiveAnomaly = {
    type = "structure",
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
        AnomalyTimeRange = {
            type = "structure",
        },
        AnomalyReportedTimeRange = {
            type = "structure",
        },
        PredictionTimeRange = {
            type = "structure",
        },
        SourceDetails = {
            type = "structure",
        },
        AssociatedInsightId = {
            type = "string",
        },
        ResourceCollection = {
            type = "structure",
        },
        Limit = {
            type = "number",
        },
        SourceMetadata = {
            type = "structure",
        },
        AnomalyResources = {
            type = "list",
            member_type = "structure",
        },
        Description = {
            type = "string",
        },
    },
}

M.ReactiveAnomaly = {
    type = "structure",
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
        AnomalyTimeRange = {
            type = "structure",
        },
        AnomalyReportedTimeRange = {
            type = "structure",
        },
        SourceDetails = {
            type = "structure",
        },
        AssociatedInsightId = {
            type = "string",
        },
        ResourceCollection = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.DescribeAnomalyOutput = {
    type = "structure",
    members = {
        ProactiveAnomaly = {
            type = "structure",
        },
        ReactiveAnomaly = {
            type = "structure",
        },
    },
}

M.DescribeEventSourcesConfigInput = {
    type = "structure",
}

M.EventSourcesConfig = {
    type = "structure",
    members = {
        AmazonCodeGuruProfiler = {
            type = "structure",
        },
    },
}

M.DescribeEventSourcesConfigOutput = {
    type = "structure",
    members = {
        EventSources = {
            type = "structure",
        },
    },
}

M.DescribeFeedbackInput = {
    type = "structure",
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
    members = {
        InsightFeedback = {
            type = "structure",
        },
    },
}

M.DescribeInsightInput = {
    type = "structure",
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
        InsightTimeRange = {
            type = "structure",
        },
        PredictionTimeRange = {
            type = "structure",
        },
        ResourceCollection = {
            type = "structure",
        },
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
        InsightTimeRange = {
            type = "structure",
        },
        ResourceCollection = {
            type = "structure",
        },
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
    members = {
        ProactiveInsight = {
            type = "structure",
        },
        ReactiveInsight = {
            type = "structure",
        },
    },
}

M.DescribeOrganizationHealthInput = {
    type = "structure",
    members = {
        AccountIds = {
            type = "list",
            member_type = "string",
        },
        OrganizationalUnitIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeOrganizationHealthOutput = {
    type = "structure",
    members = {
        OpenReactiveInsights = {
            type = "number",
            traits = {
                required = true,
            },
        },
        OpenProactiveInsights = {
            type = "number",
            traits = {
                required = true,
            },
        },
        MetricsAnalyzed = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ResourceHours = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeOrganizationOverviewInput = {
    type = "structure",
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
            member_type = "string",
        },
        OrganizationalUnitIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeOrganizationOverviewOutput = {
    type = "structure",
    members = {
        ReactiveInsights = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ProactiveInsights = {
            type = "number",
            traits = {
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
    members = {
        OrganizationResourceCollectionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountIds = {
            type = "list",
            member_type = "string",
        },
        OrganizationalUnitIds = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.InsightHealth = {
    type = "structure",
    members = {
        OpenProactiveInsights = {
            type = "number",
        },
        OpenReactiveInsights = {
            type = "number",
        },
        MeanTimeToRecoverInMilliseconds = {
            type = "number",
        },
    },
}

M.CloudFormationHealth = {
    type = "structure",
    members = {
        StackName = {
            type = "string",
        },
        Insight = {
            type = "structure",
        },
        AnalyzedResourceCount = {
            type = "number",
        },
    },
}

M.ServiceInsightHealth = {
    type = "structure",
    members = {
        OpenProactiveInsights = {
            type = "number",
        },
        OpenReactiveInsights = {
            type = "number",
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
    members = {
        ServiceName = {
            type = "string",
        },
        Insight = {
            type = "structure",
        },
        AnalyzedResourceCount = {
            type = "number",
        },
    },
}

M.TagHealth = {
    type = "structure",
    members = {
        AppBoundaryKey = {
            type = "string",
        },
        TagValue = {
            type = "string",
        },
        Insight = {
            type = "structure",
        },
        AnalyzedResourceCount = {
            type = "number",
        },
    },
}

M.DescribeOrganizationResourceCollectionHealthOutput = {
    type = "structure",
    members = {
        CloudFormation = {
            type = "list",
            member_type = "structure",
        },
        Service = {
            type = "list",
            member_type = "structure",
        },
        Account = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
    members = {
        CloudFormation = {
            type = "list",
            member_type = "structure",
        },
        Service = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeServiceIntegrationInput = {
    type = "structure",
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
    members = {
        OptInStatus = {
            type = "string",
        },
    },
}

M.OpsCenterIntegration = {
    type = "structure",
    members = {
        OptInStatus = {
            type = "string",
        },
    },
}

M.ServiceIntegrationConfig = {
    type = "structure",
    members = {
        OpsCenter = {
            type = "structure",
        },
        LogsAnomalyDetection = {
            type = "structure",
        },
        KMSServerSideEncryption = {
            type = "structure",
        },
    },
}

M.DescribeServiceIntegrationOutput = {
    type = "structure",
    members = {
        ServiceIntegration = {
            type = "structure",
        },
    },
}

M.GetCostEstimationInput = {
    type = "structure",
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
    members = {
        Type = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Count = {
            type = "number",
        },
        UnitCost = {
            type = "number",
        },
        Cost = {
            type = "number",
        },
    },
}

M.CloudFormationCostEstimationResourceCollectionFilter = {
    type = "structure",
    members = {
        StackNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.TagCostEstimationResourceCollectionFilter = {
    type = "structure",
    members = {
        AppBoundaryKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagValues = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CostEstimationResourceCollectionFilter = {
    type = "structure",
    members = {
        CloudFormation = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CostEstimationStatus = {
    ONGOING = "ONGOING",
    COMPLETED = "COMPLETED",
}

M.CostEstimationTimeRange = {
    type = "structure",
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
    members = {
        ResourceCollection = {
            type = "structure",
        },
        Status = {
            type = "string",
        },
        Costs = {
            type = "list",
            member_type = "structure",
        },
        TimeRange = {
            type = "structure",
        },
        TotalCost = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetResourceCollectionInput = {
    type = "structure",
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
    members = {
        StackNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.TagCollectionFilter = {
    type = "structure",
    members = {
        AppBoundaryKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagValues = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceCollectionFilter = {
    type = "structure",
    members = {
        CloudFormation = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetResourceCollectionOutput = {
    type = "structure",
    members = {
        ResourceCollection = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ServiceCollection = {
    type = "structure",
    members = {
        ServiceNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListAnomaliesForInsightFilters = {
    type = "structure",
    members = {
        ServiceCollection = {
            type = "structure",
        },
    },
}

M.StartTimeRange = {
    type = "structure",
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
    members = {
        InsightId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        StartTimeRange = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        Filters = {
            type = "structure",
        },
    },
}

M.ProactiveAnomalySummary = {
    type = "structure",
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
        AnomalyTimeRange = {
            type = "structure",
        },
        AnomalyReportedTimeRange = {
            type = "structure",
        },
        PredictionTimeRange = {
            type = "structure",
        },
        SourceDetails = {
            type = "structure",
        },
        AssociatedInsightId = {
            type = "string",
        },
        ResourceCollection = {
            type = "structure",
        },
        Limit = {
            type = "number",
        },
        SourceMetadata = {
            type = "structure",
        },
        AnomalyResources = {
            type = "list",
            member_type = "structure",
        },
        Description = {
            type = "string",
        },
    },
}

M.ReactiveAnomalySummary = {
    type = "structure",
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
        AnomalyTimeRange = {
            type = "structure",
        },
        AnomalyReportedTimeRange = {
            type = "structure",
        },
        SourceDetails = {
            type = "structure",
        },
        AssociatedInsightId = {
            type = "string",
        },
        ResourceCollection = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.ListAnomaliesForInsightOutput = {
    type = "structure",
    members = {
        ProactiveAnomalies = {
            type = "list",
            member_type = "structure",
        },
        ReactiveAnomalies = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAnomalousLogGroupsInput = {
    type = "structure",
    members = {
        InsightId = {
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

M.ListAnomalousLogGroupsOutput = {
    type = "structure",
    members = {
        InsightId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AnomalousLogGroups = {
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
    members = {
        InsightId = {
            type = "string",
        },
        EventTimeRange = {
            type = "structure",
        },
        EventClass = {
            type = "string",
        },
        EventSource = {
            type = "string",
        },
        DataSource = {
            type = "string",
        },
        ResourceCollection = {
            type = "structure",
        },
    },
}

M.ListEventsInput = {
    type = "structure",
    members = {
        Filters = {
            type = "structure",
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
        AccountId = {
            type = "string",
        },
    },
}

M.EventResource = {
    type = "structure",
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
    members = {
        ResourceCollection = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.ListEventsOutput = {
    type = "structure",
    members = {
        Events = {
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

M.InsightType = {
    REACTIVE = "REACTIVE",
    PROACTIVE = "PROACTIVE",
}

M.ListInsightsAnyStatusFilter = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartTimeRange = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EndTimeRange = {
    type = "structure",
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
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EndTimeRange = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListInsightsOngoingStatusFilter = {
    type = "structure",
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
    members = {
        Ongoing = {
            type = "structure",
        },
        Closed = {
            type = "structure",
        },
        Any = {
            type = "structure",
        },
    },
}

M.ListInsightsInput = {
    type = "structure",
    members = {
        StatusFilter = {
            type = "structure",
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

M.ProactiveInsightSummary = {
    type = "structure",
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
        InsightTimeRange = {
            type = "structure",
        },
        PredictionTimeRange = {
            type = "structure",
        },
        ResourceCollection = {
            type = "structure",
        },
        ServiceCollection = {
            type = "structure",
        },
        AssociatedResourceArns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ReactiveInsightSummary = {
    type = "structure",
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
        InsightTimeRange = {
            type = "structure",
        },
        ResourceCollection = {
            type = "structure",
        },
        ServiceCollection = {
            type = "structure",
        },
        AssociatedResourceArns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListInsightsOutput = {
    type = "structure",
    members = {
        ProactiveInsights = {
            type = "list",
            member_type = "structure",
        },
        ReactiveInsights = {
            type = "list",
            member_type = "structure",
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
    members = {
        ResourcePermission = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTypeFilters = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMonitoredResourcesInput = {
    type = "structure",
    members = {
        Filters = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MonitoredResourceIdentifier = {
    type = "structure",
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
        ResourceCollection = {
            type = "structure",
        },
    },
}

M.ListMonitoredResourcesOutput = {
    type = "structure",
    members = {
        MonitoredResourceIdentifiers = {
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

M.ListNotificationChannelsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.NotificationChannel = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Config = {
            type = "structure",
        },
    },
}

M.ListNotificationChannelsOutput = {
    type = "structure",
    members = {
        Channels = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListOrganizationInsightsInput = {
    type = "structure",
    members = {
        StatusFilter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        AccountIds = {
            type = "list",
            member_type = "string",
        },
        OrganizationalUnitIds = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ProactiveOrganizationInsightSummary = {
    type = "structure",
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
        InsightTimeRange = {
            type = "structure",
        },
        PredictionTimeRange = {
            type = "structure",
        },
        ResourceCollection = {
            type = "structure",
        },
        ServiceCollection = {
            type = "structure",
        },
    },
}

M.ReactiveOrganizationInsightSummary = {
    type = "structure",
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
        InsightTimeRange = {
            type = "structure",
        },
        ResourceCollection = {
            type = "structure",
        },
        ServiceCollection = {
            type = "structure",
        },
    },
}

M.ListOrganizationInsightsOutput = {
    type = "structure",
    members = {
        ProactiveInsights = {
            type = "list",
            member_type = "structure",
        },
        ReactiveInsights = {
            type = "list",
            member_type = "structure",
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
    members = {
        CloudWatchMetrics = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RecommendationRelatedAnomaly = {
    type = "structure",
    members = {
        Resources = {
            type = "list",
            member_type = "structure",
        },
        SourceDetails = {
            type = "list",
            member_type = "structure",
        },
        AnomalyId = {
            type = "string",
        },
    },
}

M.RecommendationRelatedEventResource = {
    type = "structure",
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
    members = {
        Name = {
            type = "string",
        },
        Resources = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Recommendation = {
    type = "structure",
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
            member_type = "structure",
        },
        RelatedAnomalies = {
            type = "list",
            member_type = "structure",
        },
        Category = {
            type = "string",
        },
    },
}

M.ListRecommendationsOutput = {
    type = "structure",
    members = {
        Recommendations = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutFeedbackInput = {
    type = "structure",
    members = {
        InsightFeedback = {
            type = "structure",
        },
    },
}

M.PutFeedbackOutput = {
    type = "structure",
}

M.RemoveNotificationChannelInput = {
    type = "structure",
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
}

M.SearchInsightsFilters = {
    type = "structure",
    members = {
        Severities = {
            type = "list",
            member_type = "string",
        },
        Statuses = {
            type = "list",
            member_type = "string",
        },
        ResourceCollection = {
            type = "structure",
        },
        ServiceCollection = {
            type = "structure",
        },
    },
}

M.SearchInsightsInput = {
    type = "structure",
    members = {
        StartTimeRange = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
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
    members = {
        ProactiveInsights = {
            type = "list",
            member_type = "structure",
        },
        ReactiveInsights = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SearchOrganizationInsightsFilters = {
    type = "structure",
    members = {
        Severities = {
            type = "list",
            member_type = "string",
        },
        Statuses = {
            type = "list",
            member_type = "string",
        },
        ResourceCollection = {
            type = "structure",
        },
        ServiceCollection = {
            type = "structure",
        },
    },
}

M.SearchOrganizationInsightsInput = {
    type = "structure",
    members = {
        AccountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        StartTimeRange = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Filters = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
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
    members = {
        ProactiveInsights = {
            type = "list",
            member_type = "structure",
        },
        ReactiveInsights = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StartCostEstimationInput = {
    type = "structure",
    members = {
        ResourceCollection = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ClientToken = {
            type = "string",
        },
    },
}

M.StartCostEstimationOutput = {
    type = "structure",
}

M.UpdateEventSourcesConfigInput = {
    type = "structure",
    members = {
        EventSources = {
            type = "structure",
        },
    },
}

M.UpdateEventSourcesConfigOutput = {
    type = "structure",
}

M.UpdateResourceCollectionAction = {
    ADD = "ADD",
    REMOVE = "REMOVE",
}

M.UpdateCloudFormationCollectionFilter = {
    type = "structure",
    members = {
        StackNames = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UpdateTagCollectionFilter = {
    type = "structure",
    members = {
        AppBoundaryKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagValues = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateResourceCollectionFilter = {
    type = "structure",
    members = {
        CloudFormation = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateResourceCollectionInput = {
    type = "structure",
    members = {
        Action = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceCollection = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateResourceCollectionOutput = {
    type = "structure",
}

M.KMSServerSideEncryptionIntegrationConfig = {
    type = "structure",
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
    members = {
        OptInStatus = {
            type = "string",
        },
    },
}

M.OpsCenterIntegrationConfig = {
    type = "structure",
    members = {
        OptInStatus = {
            type = "string",
        },
    },
}

M.UpdateServiceIntegrationConfig = {
    type = "structure",
    members = {
        OpsCenter = {
            type = "structure",
        },
        LogsAnomalyDetection = {
            type = "structure",
        },
        KMSServerSideEncryption = {
            type = "structure",
        },
    },
}

M.UpdateServiceIntegrationInput = {
    type = "structure",
    members = {
        ServiceIntegration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateServiceIntegrationOutput = {
    type = "structure",
}

return M
