local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.devopsguru"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AccountInsightHealth = schema.new({
    id = id.from(_N, "AccountInsightHealth"),
    type = "structure",
    members = {
        OpenProactiveInsights = schema.new({
            id = id.from(_N, "AccountInsightHealth", "OpenProactiveInsights"),
            type = "integer",
            name = "OpenProactiveInsights",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        OpenReactiveInsights = schema.new({
            id = id.from(_N, "AccountInsightHealth", "OpenReactiveInsights"),
            type = "integer",
            name = "OpenReactiveInsights",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.AccountHealth = schema.new({
    id = id.from(_N, "AccountHealth"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "AccountHealth", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        Insight = schema.new({
            id = id.from(_N, "AccountHealth", "Insight"),
            type = "structure",
            name = "Insight",
            target_id = id.from(_N, "AccountInsightHealth"),
            target = M.AccountInsightHealth,
        }),
    },
})

M.NotificationFilterConfig = schema.new({
    id = id.from(_N, "NotificationFilterConfig"),
    type = "structure",
    members = {
        Severities = schema.new({
            id = id.from(_N, "NotificationFilterConfig", "Severities"),
            type = "list",
            name = "Severities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MessageTypes = schema.new({
            id = id.from(_N, "NotificationFilterConfig", "MessageTypes"),
            type = "list",
            name = "MessageTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.SnsChannelConfig = schema.new({
    id = id.from(_N, "SnsChannelConfig"),
    type = "structure",
    members = {
        TopicArn = schema.new({
            id = id.from(_N, "SnsChannelConfig", "TopicArn"),
            type = "string",
            name = "TopicArn",
            target_id = prelude.String.id,
        }),
    },
})

M.NotificationChannelConfig = schema.new({
    id = id.from(_N, "NotificationChannelConfig"),
    type = "structure",
    members = {
        Sns = schema.new({
            id = id.from(_N, "NotificationChannelConfig", "Sns"),
            type = "structure",
            name = "Sns",
            target_id = id.from(_N, "SnsChannelConfig"),
            target = M.SnsChannelConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "NotificationChannelConfig", "Filters"),
            type = "structure",
            name = "Filters",
            target_id = id.from(_N, "NotificationFilterConfig"),
            target = M.NotificationFilterConfig,
        }),
    },
})

M.AddNotificationChannelInput = schema.new({
    id = id.from(_N, "AddNotificationChannelInput"),
    type = "structure",
    members = {
        Config = schema.new({
            id = id.from(_N, "AddNotificationChannelInput", "Config"),
            type = "structure",
            name = "Config",
            target_id = id.from(_N, "NotificationChannelConfig"),
            target = M.NotificationChannelConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddNotificationChannelOutput = schema.new({
    id = id.from(_N, "AddNotificationChannelOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "AddNotificationChannelOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ConflictException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ConflictException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RetryAfterSeconds = schema.new({
            id = id.from(_N, "InternalServerException", "RetryAfterSeconds"),
            type = "integer",
            name = "RetryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "ThrottlingException", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
        }),
        ServiceCode = schema.new({
            id = id.from(_N, "ThrottlingException", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
        }),
        RetryAfterSeconds = schema.new({
            id = id.from(_N, "ThrottlingException", "RetryAfterSeconds"),
            type = "integer",
            name = "RetryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
    },
})

M.ValidationExceptionField = schema.new({
    id = id.from(_N, "ValidationExceptionField"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ValidationExceptionField", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ValidationExceptionField", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "ValidationException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
        Fields = schema.new({
            id = id.from(_N, "ValidationException", "Fields"),
            type = "list",
            name = "Fields",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.AmazonCodeGuruProfilerIntegration = schema.new({
    id = id.from(_N, "AmazonCodeGuruProfilerIntegration"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "AmazonCodeGuruProfilerIntegration", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.LogAnomalyClass = schema.new({
    id = id.from(_N, "LogAnomalyClass"),
    type = "structure",
    members = {
        LogStreamName = schema.new({
            id = id.from(_N, "LogAnomalyClass", "LogStreamName"),
            type = "string",
            name = "LogStreamName",
            target_id = prelude.String.id,
        }),
        LogAnomalyType = schema.new({
            id = id.from(_N, "LogAnomalyClass", "LogAnomalyType"),
            type = "string",
            name = "LogAnomalyType",
            target_id = prelude.String.id,
        }),
        LogAnomalyToken = schema.new({
            id = id.from(_N, "LogAnomalyClass", "LogAnomalyToken"),
            type = "string",
            name = "LogAnomalyToken",
            target_id = prelude.String.id,
        }),
        LogEventId = schema.new({
            id = id.from(_N, "LogAnomalyClass", "LogEventId"),
            type = "string",
            name = "LogEventId",
            target_id = prelude.String.id,
        }),
        Explanation = schema.new({
            id = id.from(_N, "LogAnomalyClass", "Explanation"),
            type = "string",
            name = "Explanation",
            target_id = prelude.String.id,
        }),
        NumberOfLogLinesOccurrences = schema.new({
            id = id.from(_N, "LogAnomalyClass", "NumberOfLogLinesOccurrences"),
            type = "integer",
            name = "NumberOfLogLinesOccurrences",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        LogEventTimestamp = schema.new({
            id = id.from(_N, "LogAnomalyClass", "LogEventTimestamp"),
            type = "timestamp",
            name = "LogEventTimestamp",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.LogAnomalyShowcase = schema.new({
    id = id.from(_N, "LogAnomalyShowcase"),
    type = "structure",
    members = {
        LogAnomalyClasses = schema.new({
            id = id.from(_N, "LogAnomalyShowcase", "LogAnomalyClasses"),
            type = "list",
            name = "LogAnomalyClasses",
            target_id = prelude.Document.id,
            list_member = M.LogAnomalyClass,
        }),
    },
})

M.AnomalousLogGroup = schema.new({
    id = id.from(_N, "AnomalousLogGroup"),
    type = "structure",
    members = {
        LogGroupName = schema.new({
            id = id.from(_N, "AnomalousLogGroup", "LogGroupName"),
            type = "string",
            name = "LogGroupName",
            target_id = prelude.String.id,
        }),
        ImpactStartTime = schema.new({
            id = id.from(_N, "AnomalousLogGroup", "ImpactStartTime"),
            type = "timestamp",
            name = "ImpactStartTime",
            target_id = prelude.Timestamp.id,
        }),
        ImpactEndTime = schema.new({
            id = id.from(_N, "AnomalousLogGroup", "ImpactEndTime"),
            type = "timestamp",
            name = "ImpactEndTime",
            target_id = prelude.Timestamp.id,
        }),
        NumberOfLogLinesScanned = schema.new({
            id = id.from(_N, "AnomalousLogGroup", "NumberOfLogLinesScanned"),
            type = "integer",
            name = "NumberOfLogLinesScanned",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        LogAnomalyShowcases = schema.new({
            id = id.from(_N, "AnomalousLogGroup", "LogAnomalyShowcases"),
            type = "list",
            name = "LogAnomalyShowcases",
            target_id = prelude.Document.id,
            list_member = M.LogAnomalyShowcase,
        }),
    },
})

M.AnomalyReportedTimeRange = schema.new({
    id = id.from(_N, "AnomalyReportedTimeRange"),
    type = "structure",
    members = {
        OpenTime = schema.new({
            id = id.from(_N, "AnomalyReportedTimeRange", "OpenTime"),
            type = "timestamp",
            name = "OpenTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CloseTime = schema.new({
            id = id.from(_N, "AnomalyReportedTimeRange", "CloseTime"),
            type = "timestamp",
            name = "CloseTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.AnomalyResource = schema.new({
    id = id.from(_N, "AnomalyResource"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "AnomalyResource", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "AnomalyResource", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudWatchMetricsDimension = schema.new({
    id = id.from(_N, "CloudWatchMetricsDimension"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CloudWatchMetricsDimension", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "CloudWatchMetricsDimension", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.TimestampMetricValuePair = schema.new({
    id = id.from(_N, "TimestampMetricValuePair"),
    type = "structure",
    members = {
        Timestamp = schema.new({
            id = id.from(_N, "TimestampMetricValuePair", "Timestamp"),
            type = "timestamp",
            name = "Timestamp",
            target_id = prelude.Timestamp.id,
        }),
        MetricValue = schema.new({
            id = id.from(_N, "TimestampMetricValuePair", "MetricValue"),
            type = "double",
            name = "MetricValue",
            target_id = prelude.Double.id,
        }),
    },
})

M.CloudWatchMetricsDataSummary = schema.new({
    id = id.from(_N, "CloudWatchMetricsDataSummary"),
    type = "structure",
    members = {
        TimestampMetricValuePairList = schema.new({
            id = id.from(_N, "CloudWatchMetricsDataSummary", "TimestampMetricValuePairList"),
            type = "list",
            name = "TimestampMetricValuePairList",
            target_id = prelude.Document.id,
            list_member = M.TimestampMetricValuePair,
        }),
        StatusCode = schema.new({
            id = id.from(_N, "CloudWatchMetricsDataSummary", "StatusCode"),
            type = "string",
            name = "StatusCode",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudWatchMetricsDetail = schema.new({
    id = id.from(_N, "CloudWatchMetricsDetail"),
    type = "structure",
    members = {
        MetricName = schema.new({
            id = id.from(_N, "CloudWatchMetricsDetail", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        Namespace = schema.new({
            id = id.from(_N, "CloudWatchMetricsDetail", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
        Dimensions = schema.new({
            id = id.from(_N, "CloudWatchMetricsDetail", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = M.CloudWatchMetricsDimension,
        }),
        Stat = schema.new({
            id = id.from(_N, "CloudWatchMetricsDetail", "Stat"),
            type = "string",
            name = "Stat",
            target_id = prelude.String.id,
        }),
        Unit = schema.new({
            id = id.from(_N, "CloudWatchMetricsDetail", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
        Period = schema.new({
            id = id.from(_N, "CloudWatchMetricsDetail", "Period"),
            type = "integer",
            name = "Period",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MetricDataSummary = schema.new({
            id = id.from(_N, "CloudWatchMetricsDetail", "MetricDataSummary"),
            type = "structure",
            name = "MetricDataSummary",
            target_id = id.from(_N, "CloudWatchMetricsDataSummary"),
            target = M.CloudWatchMetricsDataSummary,
        }),
    },
})

M.PerformanceInsightsMetricDimensionGroup = schema.new({
    id = id.from(_N, "PerformanceInsightsMetricDimensionGroup"),
    type = "structure",
    members = {
        Group = schema.new({
            id = id.from(_N, "PerformanceInsightsMetricDimensionGroup", "Group"),
            type = "string",
            name = "Group",
            target_id = prelude.String.id,
        }),
        Dimensions = schema.new({
            id = id.from(_N, "PerformanceInsightsMetricDimensionGroup", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Limit = schema.new({
            id = id.from(_N, "PerformanceInsightsMetricDimensionGroup", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
        }),
    },
})

M.PerformanceInsightsMetricQuery = schema.new({
    id = id.from(_N, "PerformanceInsightsMetricQuery"),
    type = "structure",
    members = {
        Metric = schema.new({
            id = id.from(_N, "PerformanceInsightsMetricQuery", "Metric"),
            type = "string",
            name = "Metric",
            target_id = prelude.String.id,
        }),
        GroupBy = schema.new({
            id = id.from(_N, "PerformanceInsightsMetricQuery", "GroupBy"),
            type = "structure",
            name = "GroupBy",
            target_id = id.from(_N, "PerformanceInsightsMetricDimensionGroup"),
            target = M.PerformanceInsightsMetricDimensionGroup,
        }),
        Filter = schema.new({
            id = id.from(_N, "PerformanceInsightsMetricQuery", "Filter"),
            type = "map",
            name = "Filter",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.PerformanceInsightsReferenceMetric = schema.new({
    id = id.from(_N, "PerformanceInsightsReferenceMetric"),
    type = "structure",
    members = {
        MetricQuery = schema.new({
            id = id.from(_N, "PerformanceInsightsReferenceMetric", "MetricQuery"),
            type = "structure",
            name = "MetricQuery",
            target_id = id.from(_N, "PerformanceInsightsMetricQuery"),
            target = M.PerformanceInsightsMetricQuery,
        }),
    },
})

M.PerformanceInsightsReferenceScalar = schema.new({
    id = id.from(_N, "PerformanceInsightsReferenceScalar"),
    type = "structure",
    members = {
        Value = schema.new({
            id = id.from(_N, "PerformanceInsightsReferenceScalar", "Value"),
            type = "double",
            name = "Value",
            target_id = prelude.Double.id,
        }),
    },
})

M.PerformanceInsightsReferenceComparisonValues = schema.new({
    id = id.from(_N, "PerformanceInsightsReferenceComparisonValues"),
    type = "structure",
    members = {
        ReferenceScalar = schema.new({
            id = id.from(_N, "PerformanceInsightsReferenceComparisonValues", "ReferenceScalar"),
            type = "structure",
            name = "ReferenceScalar",
            target_id = id.from(_N, "PerformanceInsightsReferenceScalar"),
            target = M.PerformanceInsightsReferenceScalar,
        }),
        ReferenceMetric = schema.new({
            id = id.from(_N, "PerformanceInsightsReferenceComparisonValues", "ReferenceMetric"),
            type = "structure",
            name = "ReferenceMetric",
            target_id = id.from(_N, "PerformanceInsightsReferenceMetric"),
            target = M.PerformanceInsightsReferenceMetric,
        }),
    },
})

M.PerformanceInsightsReferenceData = schema.new({
    id = id.from(_N, "PerformanceInsightsReferenceData"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "PerformanceInsightsReferenceData", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ComparisonValues = schema.new({
            id = id.from(_N, "PerformanceInsightsReferenceData", "ComparisonValues"),
            type = "structure",
            name = "ComparisonValues",
            target_id = id.from(_N, "PerformanceInsightsReferenceComparisonValues"),
            target = M.PerformanceInsightsReferenceComparisonValues,
        }),
    },
})

M.PerformanceInsightsStat = schema.new({
    id = id.from(_N, "PerformanceInsightsStat"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "PerformanceInsightsStat", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "PerformanceInsightsStat", "Value"),
            type = "double",
            name = "Value",
            target_id = prelude.Double.id,
        }),
    },
})

M.PerformanceInsightsMetricsDetail = schema.new({
    id = id.from(_N, "PerformanceInsightsMetricsDetail"),
    type = "structure",
    members = {
        MetricDisplayName = schema.new({
            id = id.from(_N, "PerformanceInsightsMetricsDetail", "MetricDisplayName"),
            type = "string",
            name = "MetricDisplayName",
            target_id = prelude.String.id,
        }),
        Unit = schema.new({
            id = id.from(_N, "PerformanceInsightsMetricsDetail", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
        MetricQuery = schema.new({
            id = id.from(_N, "PerformanceInsightsMetricsDetail", "MetricQuery"),
            type = "structure",
            name = "MetricQuery",
            target_id = id.from(_N, "PerformanceInsightsMetricQuery"),
            target = M.PerformanceInsightsMetricQuery,
        }),
        ReferenceData = schema.new({
            id = id.from(_N, "PerformanceInsightsMetricsDetail", "ReferenceData"),
            type = "list",
            name = "ReferenceData",
            target_id = prelude.Document.id,
            list_member = M.PerformanceInsightsReferenceData,
        }),
        StatsAtAnomaly = schema.new({
            id = id.from(_N, "PerformanceInsightsMetricsDetail", "StatsAtAnomaly"),
            type = "list",
            name = "StatsAtAnomaly",
            target_id = prelude.Document.id,
            list_member = M.PerformanceInsightsStat,
        }),
        StatsAtBaseline = schema.new({
            id = id.from(_N, "PerformanceInsightsMetricsDetail", "StatsAtBaseline"),
            type = "list",
            name = "StatsAtBaseline",
            target_id = prelude.Document.id,
            list_member = M.PerformanceInsightsStat,
        }),
    },
})

M.AnomalySourceDetails = schema.new({
    id = id.from(_N, "AnomalySourceDetails"),
    type = "structure",
    members = {
        CloudWatchMetrics = schema.new({
            id = id.from(_N, "AnomalySourceDetails", "CloudWatchMetrics"),
            type = "list",
            name = "CloudWatchMetrics",
            target_id = prelude.Document.id,
            list_member = M.CloudWatchMetricsDetail,
        }),
        PerformanceInsightsMetrics = schema.new({
            id = id.from(_N, "AnomalySourceDetails", "PerformanceInsightsMetrics"),
            type = "list",
            name = "PerformanceInsightsMetrics",
            target_id = prelude.Document.id,
            list_member = M.PerformanceInsightsMetricsDetail,
        }),
    },
})

M.AnomalySourceMetadata = schema.new({
    id = id.from(_N, "AnomalySourceMetadata"),
    type = "structure",
    members = {
        Source = schema.new({
            id = id.from(_N, "AnomalySourceMetadata", "Source"),
            type = "string",
            name = "Source",
            target_id = prelude.String.id,
        }),
        SourceResourceName = schema.new({
            id = id.from(_N, "AnomalySourceMetadata", "SourceResourceName"),
            type = "string",
            name = "SourceResourceName",
            target_id = prelude.String.id,
        }),
        SourceResourceType = schema.new({
            id = id.from(_N, "AnomalySourceMetadata", "SourceResourceType"),
            type = "string",
            name = "SourceResourceType",
            target_id = prelude.String.id,
        }),
    },
})

M.AnomalyTimeRange = schema.new({
    id = id.from(_N, "AnomalyTimeRange"),
    type = "structure",
    members = {
        StartTime = schema.new({
            id = id.from(_N, "AnomalyTimeRange", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "AnomalyTimeRange", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DeleteInsightInput = schema.new({
    id = id.from(_N, "DeleteInsightInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteInsightInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteInsightOutput = schema.new({
    id = id.from(_N, "DeleteInsightOutput"),
    type = "structure",
})

M.DescribeAccountHealthInput = schema.new({
    id = id.from(_N, "DescribeAccountHealthInput"),
    type = "structure",
})

M.DescribeAccountHealthOutput = schema.new({
    id = id.from(_N, "DescribeAccountHealthOutput"),
    type = "structure",
    members = {
        OpenReactiveInsights = schema.new({
            id = id.from(_N, "DescribeAccountHealthOutput", "OpenReactiveInsights"),
            type = "integer",
            name = "OpenReactiveInsights",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        OpenProactiveInsights = schema.new({
            id = id.from(_N, "DescribeAccountHealthOutput", "OpenProactiveInsights"),
            type = "integer",
            name = "OpenProactiveInsights",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MetricsAnalyzed = schema.new({
            id = id.from(_N, "DescribeAccountHealthOutput", "MetricsAnalyzed"),
            type = "integer",
            name = "MetricsAnalyzed",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ResourceHours = schema.new({
            id = id.from(_N, "DescribeAccountHealthOutput", "ResourceHours"),
            type = "long",
            name = "ResourceHours",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AnalyzedResourceCount = schema.new({
            id = id.from(_N, "DescribeAccountHealthOutput", "AnalyzedResourceCount"),
            type = "long",
            name = "AnalyzedResourceCount",
            target_id = prelude.Long.id,
        }),
    },
})

M.DescribeAccountOverviewInput = schema.new({
    id = id.from(_N, "DescribeAccountOverviewInput"),
    type = "structure",
    members = {
        FromTime = schema.new({
            id = id.from(_N, "DescribeAccountOverviewInput", "FromTime"),
            type = "timestamp",
            name = "FromTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ToTime = schema.new({
            id = id.from(_N, "DescribeAccountOverviewInput", "ToTime"),
            type = "timestamp",
            name = "ToTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DescribeAccountOverviewOutput = schema.new({
    id = id.from(_N, "DescribeAccountOverviewOutput"),
    type = "structure",
    members = {
        ReactiveInsights = schema.new({
            id = id.from(_N, "DescribeAccountOverviewOutput", "ReactiveInsights"),
            type = "integer",
            name = "ReactiveInsights",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ProactiveInsights = schema.new({
            id = id.from(_N, "DescribeAccountOverviewOutput", "ProactiveInsights"),
            type = "integer",
            name = "ProactiveInsights",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MeanTimeToRecoverInMilliseconds = schema.new({
            id = id.from(_N, "DescribeAccountOverviewOutput", "MeanTimeToRecoverInMilliseconds"),
            type = "long",
            name = "MeanTimeToRecoverInMilliseconds",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeAnomalyInput = schema.new({
    id = id.from(_N, "DescribeAnomalyInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DescribeAnomalyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "DescribeAnomalyInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "AccountId" },
            },
        }),
    },
})

M.PredictionTimeRange = schema.new({
    id = id.from(_N, "PredictionTimeRange"),
    type = "structure",
    members = {
        StartTime = schema.new({
            id = id.from(_N, "PredictionTimeRange", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "PredictionTimeRange", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CloudFormationCollection = schema.new({
    id = id.from(_N, "CloudFormationCollection"),
    type = "structure",
    members = {
        StackNames = schema.new({
            id = id.from(_N, "CloudFormationCollection", "StackNames"),
            type = "list",
            name = "StackNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.TagCollection = schema.new({
    id = id.from(_N, "TagCollection"),
    type = "structure",
    members = {
        AppBoundaryKey = schema.new({
            id = id.from(_N, "TagCollection", "AppBoundaryKey"),
            type = "string",
            name = "AppBoundaryKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagValues = schema.new({
            id = id.from(_N, "TagCollection", "TagValues"),
            type = "list",
            name = "TagValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceCollection = schema.new({
    id = id.from(_N, "ResourceCollection"),
    type = "structure",
    members = {
        CloudFormation = schema.new({
            id = id.from(_N, "ResourceCollection", "CloudFormation"),
            type = "structure",
            name = "CloudFormation",
            target_id = id.from(_N, "CloudFormationCollection"),
            target = M.CloudFormationCollection,
        }),
        Tags = schema.new({
            id = id.from(_N, "ResourceCollection", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagCollection,
        }),
    },
})

M.ProactiveAnomaly = schema.new({
    id = id.from(_N, "ProactiveAnomaly"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ProactiveAnomaly", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Severity = schema.new({
            id = id.from(_N, "ProactiveAnomaly", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ProactiveAnomaly", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        UpdateTime = schema.new({
            id = id.from(_N, "ProactiveAnomaly", "UpdateTime"),
            type = "timestamp",
            name = "UpdateTime",
            target_id = prelude.Timestamp.id,
        }),
        AnomalyTimeRange = schema.new({
            id = id.from(_N, "ProactiveAnomaly", "AnomalyTimeRange"),
            type = "structure",
            name = "AnomalyTimeRange",
            target_id = id.from(_N, "AnomalyTimeRange"),
            target = M.AnomalyTimeRange,
        }),
        AnomalyReportedTimeRange = schema.new({
            id = id.from(_N, "ProactiveAnomaly", "AnomalyReportedTimeRange"),
            type = "structure",
            name = "AnomalyReportedTimeRange",
            target_id = id.from(_N, "AnomalyReportedTimeRange"),
            target = M.AnomalyReportedTimeRange,
        }),
        PredictionTimeRange = schema.new({
            id = id.from(_N, "ProactiveAnomaly", "PredictionTimeRange"),
            type = "structure",
            name = "PredictionTimeRange",
            target_id = id.from(_N, "PredictionTimeRange"),
            target = M.PredictionTimeRange,
        }),
        SourceDetails = schema.new({
            id = id.from(_N, "ProactiveAnomaly", "SourceDetails"),
            type = "structure",
            name = "SourceDetails",
            target_id = id.from(_N, "AnomalySourceDetails"),
            target = M.AnomalySourceDetails,
        }),
        AssociatedInsightId = schema.new({
            id = id.from(_N, "ProactiveAnomaly", "AssociatedInsightId"),
            type = "string",
            name = "AssociatedInsightId",
            target_id = prelude.String.id,
        }),
        ResourceCollection = schema.new({
            id = id.from(_N, "ProactiveAnomaly", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "ResourceCollection"),
            target = M.ResourceCollection,
        }),
        Limit = schema.new({
            id = id.from(_N, "ProactiveAnomaly", "Limit"),
            type = "double",
            name = "Limit",
            target_id = prelude.Double.id,
        }),
        SourceMetadata = schema.new({
            id = id.from(_N, "ProactiveAnomaly", "SourceMetadata"),
            type = "structure",
            name = "SourceMetadata",
            target_id = id.from(_N, "AnomalySourceMetadata"),
            target = M.AnomalySourceMetadata,
        }),
        AnomalyResources = schema.new({
            id = id.from(_N, "ProactiveAnomaly", "AnomalyResources"),
            type = "list",
            name = "AnomalyResources",
            target_id = prelude.Document.id,
            list_member = M.AnomalyResource,
        }),
        Description = schema.new({
            id = id.from(_N, "ProactiveAnomaly", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.ReactiveAnomaly = schema.new({
    id = id.from(_N, "ReactiveAnomaly"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ReactiveAnomaly", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Severity = schema.new({
            id = id.from(_N, "ReactiveAnomaly", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ReactiveAnomaly", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        AnomalyTimeRange = schema.new({
            id = id.from(_N, "ReactiveAnomaly", "AnomalyTimeRange"),
            type = "structure",
            name = "AnomalyTimeRange",
            target_id = id.from(_N, "AnomalyTimeRange"),
            target = M.AnomalyTimeRange,
        }),
        AnomalyReportedTimeRange = schema.new({
            id = id.from(_N, "ReactiveAnomaly", "AnomalyReportedTimeRange"),
            type = "structure",
            name = "AnomalyReportedTimeRange",
            target_id = id.from(_N, "AnomalyReportedTimeRange"),
            target = M.AnomalyReportedTimeRange,
        }),
        SourceDetails = schema.new({
            id = id.from(_N, "ReactiveAnomaly", "SourceDetails"),
            type = "structure",
            name = "SourceDetails",
            target_id = id.from(_N, "AnomalySourceDetails"),
            target = M.AnomalySourceDetails,
        }),
        AssociatedInsightId = schema.new({
            id = id.from(_N, "ReactiveAnomaly", "AssociatedInsightId"),
            type = "string",
            name = "AssociatedInsightId",
            target_id = prelude.String.id,
        }),
        ResourceCollection = schema.new({
            id = id.from(_N, "ReactiveAnomaly", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "ResourceCollection"),
            target = M.ResourceCollection,
        }),
        Type = schema.new({
            id = id.from(_N, "ReactiveAnomaly", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ReactiveAnomaly", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ReactiveAnomaly", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CausalAnomalyId = schema.new({
            id = id.from(_N, "ReactiveAnomaly", "CausalAnomalyId"),
            type = "string",
            name = "CausalAnomalyId",
            target_id = prelude.String.id,
        }),
        AnomalyResources = schema.new({
            id = id.from(_N, "ReactiveAnomaly", "AnomalyResources"),
            type = "list",
            name = "AnomalyResources",
            target_id = prelude.Document.id,
            list_member = M.AnomalyResource,
        }),
    },
})

M.DescribeAnomalyOutput = schema.new({
    id = id.from(_N, "DescribeAnomalyOutput"),
    type = "structure",
    members = {
        ProactiveAnomaly = schema.new({
            id = id.from(_N, "DescribeAnomalyOutput", "ProactiveAnomaly"),
            type = "structure",
            name = "ProactiveAnomaly",
            target_id = id.from(_N, "ProactiveAnomaly"),
            target = M.ProactiveAnomaly,
        }),
        ReactiveAnomaly = schema.new({
            id = id.from(_N, "DescribeAnomalyOutput", "ReactiveAnomaly"),
            type = "structure",
            name = "ReactiveAnomaly",
            target_id = id.from(_N, "ReactiveAnomaly"),
            target = M.ReactiveAnomaly,
        }),
    },
})

M.DescribeEventSourcesConfigInput = schema.new({
    id = id.from(_N, "DescribeEventSourcesConfigInput"),
    type = "structure",
})

M.EventSourcesConfig = schema.new({
    id = id.from(_N, "EventSourcesConfig"),
    type = "structure",
    members = {
        AmazonCodeGuruProfiler = schema.new({
            id = id.from(_N, "EventSourcesConfig", "AmazonCodeGuruProfiler"),
            type = "structure",
            name = "AmazonCodeGuruProfiler",
            target_id = id.from(_N, "AmazonCodeGuruProfilerIntegration"),
            target = M.AmazonCodeGuruProfilerIntegration,
        }),
    },
})

M.DescribeEventSourcesConfigOutput = schema.new({
    id = id.from(_N, "DescribeEventSourcesConfigOutput"),
    type = "structure",
    members = {
        EventSources = schema.new({
            id = id.from(_N, "DescribeEventSourcesConfigOutput", "EventSources"),
            type = "structure",
            name = "EventSources",
            target_id = id.from(_N, "EventSourcesConfig"),
            target = M.EventSourcesConfig,
        }),
    },
})

M.DescribeFeedbackInput = schema.new({
    id = id.from(_N, "DescribeFeedbackInput"),
    type = "structure",
    members = {
        InsightId = schema.new({
            id = id.from(_N, "DescribeFeedbackInput", "InsightId"),
            type = "string",
            name = "InsightId",
            target_id = prelude.String.id,
        }),
    },
})

M.InsightFeedback = schema.new({
    id = id.from(_N, "InsightFeedback"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "InsightFeedback", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Feedback = schema.new({
            id = id.from(_N, "InsightFeedback", "Feedback"),
            type = "string",
            name = "Feedback",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeFeedbackOutput = schema.new({
    id = id.from(_N, "DescribeFeedbackOutput"),
    type = "structure",
    members = {
        InsightFeedback = schema.new({
            id = id.from(_N, "DescribeFeedbackOutput", "InsightFeedback"),
            type = "structure",
            name = "InsightFeedback",
            target_id = id.from(_N, "InsightFeedback"),
            target = M.InsightFeedback,
        }),
    },
})

M.DescribeInsightInput = schema.new({
    id = id.from(_N, "DescribeInsightInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DescribeInsightInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AccountId = schema.new({
            id = id.from(_N, "DescribeInsightInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "AccountId" },
            },
        }),
    },
})

M.InsightTimeRange = schema.new({
    id = id.from(_N, "InsightTimeRange"),
    type = "structure",
    members = {
        StartTime = schema.new({
            id = id.from(_N, "InsightTimeRange", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "InsightTimeRange", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ProactiveInsight = schema.new({
    id = id.from(_N, "ProactiveInsight"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ProactiveInsight", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ProactiveInsight", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Severity = schema.new({
            id = id.from(_N, "ProactiveInsight", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ProactiveInsight", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        InsightTimeRange = schema.new({
            id = id.from(_N, "ProactiveInsight", "InsightTimeRange"),
            type = "structure",
            name = "InsightTimeRange",
            target_id = id.from(_N, "InsightTimeRange"),
            target = M.InsightTimeRange,
        }),
        PredictionTimeRange = schema.new({
            id = id.from(_N, "ProactiveInsight", "PredictionTimeRange"),
            type = "structure",
            name = "PredictionTimeRange",
            target_id = id.from(_N, "PredictionTimeRange"),
            target = M.PredictionTimeRange,
        }),
        ResourceCollection = schema.new({
            id = id.from(_N, "ProactiveInsight", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "ResourceCollection"),
            target = M.ResourceCollection,
        }),
        SsmOpsItemId = schema.new({
            id = id.from(_N, "ProactiveInsight", "SsmOpsItemId"),
            type = "string",
            name = "SsmOpsItemId",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ProactiveInsight", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.ReactiveInsight = schema.new({
    id = id.from(_N, "ReactiveInsight"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ReactiveInsight", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ReactiveInsight", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Severity = schema.new({
            id = id.from(_N, "ReactiveInsight", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ReactiveInsight", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        InsightTimeRange = schema.new({
            id = id.from(_N, "ReactiveInsight", "InsightTimeRange"),
            type = "structure",
            name = "InsightTimeRange",
            target_id = id.from(_N, "InsightTimeRange"),
            target = M.InsightTimeRange,
        }),
        ResourceCollection = schema.new({
            id = id.from(_N, "ReactiveInsight", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "ResourceCollection"),
            target = M.ResourceCollection,
        }),
        SsmOpsItemId = schema.new({
            id = id.from(_N, "ReactiveInsight", "SsmOpsItemId"),
            type = "string",
            name = "SsmOpsItemId",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ReactiveInsight", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeInsightOutput = schema.new({
    id = id.from(_N, "DescribeInsightOutput"),
    type = "structure",
    members = {
        ProactiveInsight = schema.new({
            id = id.from(_N, "DescribeInsightOutput", "ProactiveInsight"),
            type = "structure",
            name = "ProactiveInsight",
            target_id = id.from(_N, "ProactiveInsight"),
            target = M.ProactiveInsight,
        }),
        ReactiveInsight = schema.new({
            id = id.from(_N, "DescribeInsightOutput", "ReactiveInsight"),
            type = "structure",
            name = "ReactiveInsight",
            target_id = id.from(_N, "ReactiveInsight"),
            target = M.ReactiveInsight,
        }),
    },
})

M.DescribeOrganizationHealthInput = schema.new({
    id = id.from(_N, "DescribeOrganizationHealthInput"),
    type = "structure",
    members = {
        AccountIds = schema.new({
            id = id.from(_N, "DescribeOrganizationHealthInput", "AccountIds"),
            type = "list",
            name = "AccountIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        OrganizationalUnitIds = schema.new({
            id = id.from(_N, "DescribeOrganizationHealthInput", "OrganizationalUnitIds"),
            type = "list",
            name = "OrganizationalUnitIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeOrganizationHealthOutput = schema.new({
    id = id.from(_N, "DescribeOrganizationHealthOutput"),
    type = "structure",
    members = {
        OpenReactiveInsights = schema.new({
            id = id.from(_N, "DescribeOrganizationHealthOutput", "OpenReactiveInsights"),
            type = "integer",
            name = "OpenReactiveInsights",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        OpenProactiveInsights = schema.new({
            id = id.from(_N, "DescribeOrganizationHealthOutput", "OpenProactiveInsights"),
            type = "integer",
            name = "OpenProactiveInsights",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MetricsAnalyzed = schema.new({
            id = id.from(_N, "DescribeOrganizationHealthOutput", "MetricsAnalyzed"),
            type = "integer",
            name = "MetricsAnalyzed",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ResourceHours = schema.new({
            id = id.from(_N, "DescribeOrganizationHealthOutput", "ResourceHours"),
            type = "long",
            name = "ResourceHours",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeOrganizationOverviewInput = schema.new({
    id = id.from(_N, "DescribeOrganizationOverviewInput"),
    type = "structure",
    members = {
        FromTime = schema.new({
            id = id.from(_N, "DescribeOrganizationOverviewInput", "FromTime"),
            type = "timestamp",
            name = "FromTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ToTime = schema.new({
            id = id.from(_N, "DescribeOrganizationOverviewInput", "ToTime"),
            type = "timestamp",
            name = "ToTime",
            target_id = prelude.Timestamp.id,
        }),
        AccountIds = schema.new({
            id = id.from(_N, "DescribeOrganizationOverviewInput", "AccountIds"),
            type = "list",
            name = "AccountIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        OrganizationalUnitIds = schema.new({
            id = id.from(_N, "DescribeOrganizationOverviewInput", "OrganizationalUnitIds"),
            type = "list",
            name = "OrganizationalUnitIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DescribeOrganizationOverviewOutput = schema.new({
    id = id.from(_N, "DescribeOrganizationOverviewOutput"),
    type = "structure",
    members = {
        ReactiveInsights = schema.new({
            id = id.from(_N, "DescribeOrganizationOverviewOutput", "ReactiveInsights"),
            type = "integer",
            name = "ReactiveInsights",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ProactiveInsights = schema.new({
            id = id.from(_N, "DescribeOrganizationOverviewOutput", "ProactiveInsights"),
            type = "integer",
            name = "ProactiveInsights",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.DescribeOrganizationResourceCollectionHealthInput = schema.new({
    id = id.from(_N, "DescribeOrganizationResourceCollectionHealthInput"),
    type = "structure",
    members = {
        OrganizationResourceCollectionType = schema.new({
            id = id.from(_N, "DescribeOrganizationResourceCollectionHealthInput", "OrganizationResourceCollectionType"),
            type = "string",
            name = "OrganizationResourceCollectionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccountIds = schema.new({
            id = id.from(_N, "DescribeOrganizationResourceCollectionHealthInput", "AccountIds"),
            type = "list",
            name = "AccountIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        OrganizationalUnitIds = schema.new({
            id = id.from(_N, "DescribeOrganizationResourceCollectionHealthInput", "OrganizationalUnitIds"),
            type = "list",
            name = "OrganizationalUnitIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeOrganizationResourceCollectionHealthInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeOrganizationResourceCollectionHealthInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.InsightHealth = schema.new({
    id = id.from(_N, "InsightHealth"),
    type = "structure",
    members = {
        OpenProactiveInsights = schema.new({
            id = id.from(_N, "InsightHealth", "OpenProactiveInsights"),
            type = "integer",
            name = "OpenProactiveInsights",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        OpenReactiveInsights = schema.new({
            id = id.from(_N, "InsightHealth", "OpenReactiveInsights"),
            type = "integer",
            name = "OpenReactiveInsights",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        MeanTimeToRecoverInMilliseconds = schema.new({
            id = id.from(_N, "InsightHealth", "MeanTimeToRecoverInMilliseconds"),
            type = "long",
            name = "MeanTimeToRecoverInMilliseconds",
            target_id = prelude.Long.id,
        }),
    },
})

M.CloudFormationHealth = schema.new({
    id = id.from(_N, "CloudFormationHealth"),
    type = "structure",
    members = {
        StackName = schema.new({
            id = id.from(_N, "CloudFormationHealth", "StackName"),
            type = "string",
            name = "StackName",
            target_id = prelude.String.id,
        }),
        Insight = schema.new({
            id = id.from(_N, "CloudFormationHealth", "Insight"),
            type = "structure",
            name = "Insight",
            target_id = id.from(_N, "InsightHealth"),
            target = M.InsightHealth,
        }),
        AnalyzedResourceCount = schema.new({
            id = id.from(_N, "CloudFormationHealth", "AnalyzedResourceCount"),
            type = "long",
            name = "AnalyzedResourceCount",
            target_id = prelude.Long.id,
        }),
    },
})

M.ServiceInsightHealth = schema.new({
    id = id.from(_N, "ServiceInsightHealth"),
    type = "structure",
    members = {
        OpenProactiveInsights = schema.new({
            id = id.from(_N, "ServiceInsightHealth", "OpenProactiveInsights"),
            type = "integer",
            name = "OpenProactiveInsights",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        OpenReactiveInsights = schema.new({
            id = id.from(_N, "ServiceInsightHealth", "OpenReactiveInsights"),
            type = "integer",
            name = "OpenReactiveInsights",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ServiceHealth = schema.new({
    id = id.from(_N, "ServiceHealth"),
    type = "structure",
    members = {
        ServiceName = schema.new({
            id = id.from(_N, "ServiceHealth", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
        }),
        Insight = schema.new({
            id = id.from(_N, "ServiceHealth", "Insight"),
            type = "structure",
            name = "Insight",
            target_id = id.from(_N, "ServiceInsightHealth"),
            target = M.ServiceInsightHealth,
        }),
        AnalyzedResourceCount = schema.new({
            id = id.from(_N, "ServiceHealth", "AnalyzedResourceCount"),
            type = "long",
            name = "AnalyzedResourceCount",
            target_id = prelude.Long.id,
        }),
    },
})

M.TagHealth = schema.new({
    id = id.from(_N, "TagHealth"),
    type = "structure",
    members = {
        AppBoundaryKey = schema.new({
            id = id.from(_N, "TagHealth", "AppBoundaryKey"),
            type = "string",
            name = "AppBoundaryKey",
            target_id = prelude.String.id,
        }),
        TagValue = schema.new({
            id = id.from(_N, "TagHealth", "TagValue"),
            type = "string",
            name = "TagValue",
            target_id = prelude.String.id,
        }),
        Insight = schema.new({
            id = id.from(_N, "TagHealth", "Insight"),
            type = "structure",
            name = "Insight",
            target_id = id.from(_N, "InsightHealth"),
            target = M.InsightHealth,
        }),
        AnalyzedResourceCount = schema.new({
            id = id.from(_N, "TagHealth", "AnalyzedResourceCount"),
            type = "long",
            name = "AnalyzedResourceCount",
            target_id = prelude.Long.id,
        }),
    },
})

M.DescribeOrganizationResourceCollectionHealthOutput = schema.new({
    id = id.from(_N, "DescribeOrganizationResourceCollectionHealthOutput"),
    type = "structure",
    members = {
        CloudFormation = schema.new({
            id = id.from(_N, "DescribeOrganizationResourceCollectionHealthOutput", "CloudFormation"),
            type = "list",
            name = "CloudFormation",
            target_id = prelude.Document.id,
            list_member = M.CloudFormationHealth,
        }),
        Service = schema.new({
            id = id.from(_N, "DescribeOrganizationResourceCollectionHealthOutput", "Service"),
            type = "list",
            name = "Service",
            target_id = prelude.Document.id,
            list_member = M.ServiceHealth,
        }),
        Account = schema.new({
            id = id.from(_N, "DescribeOrganizationResourceCollectionHealthOutput", "Account"),
            type = "list",
            name = "Account",
            target_id = prelude.Document.id,
            list_member = M.AccountHealth,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeOrganizationResourceCollectionHealthOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeOrganizationResourceCollectionHealthOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagHealth,
        }),
    },
})

M.DescribeResourceCollectionHealthInput = schema.new({
    id = id.from(_N, "DescribeResourceCollectionHealthInput"),
    type = "structure",
    members = {
        ResourceCollectionType = schema.new({
            id = id.from(_N, "DescribeResourceCollectionHealthInput", "ResourceCollectionType"),
            type = "string",
            name = "ResourceCollectionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeResourceCollectionHealthInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.DescribeResourceCollectionHealthOutput = schema.new({
    id = id.from(_N, "DescribeResourceCollectionHealthOutput"),
    type = "structure",
    members = {
        CloudFormation = schema.new({
            id = id.from(_N, "DescribeResourceCollectionHealthOutput", "CloudFormation"),
            type = "list",
            name = "CloudFormation",
            target_id = prelude.Document.id,
            list_member = M.CloudFormationHealth,
        }),
        Service = schema.new({
            id = id.from(_N, "DescribeResourceCollectionHealthOutput", "Service"),
            type = "list",
            name = "Service",
            target_id = prelude.Document.id,
            list_member = M.ServiceHealth,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeResourceCollectionHealthOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "DescribeResourceCollectionHealthOutput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagHealth,
        }),
    },
})

M.DescribeServiceIntegrationInput = schema.new({
    id = id.from(_N, "DescribeServiceIntegrationInput"),
    type = "structure",
})

M.KMSServerSideEncryptionIntegration = schema.new({
    id = id.from(_N, "KMSServerSideEncryptionIntegration"),
    type = "structure",
    members = {
        KMSKeyId = schema.new({
            id = id.from(_N, "KMSServerSideEncryptionIntegration", "KMSKeyId"),
            type = "string",
            name = "KMSKeyId",
            target_id = prelude.String.id,
        }),
        OptInStatus = schema.new({
            id = id.from(_N, "KMSServerSideEncryptionIntegration", "OptInStatus"),
            type = "string",
            name = "OptInStatus",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "KMSServerSideEncryptionIntegration", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.LogsAnomalyDetectionIntegration = schema.new({
    id = id.from(_N, "LogsAnomalyDetectionIntegration"),
    type = "structure",
    members = {
        OptInStatus = schema.new({
            id = id.from(_N, "LogsAnomalyDetectionIntegration", "OptInStatus"),
            type = "string",
            name = "OptInStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsCenterIntegration = schema.new({
    id = id.from(_N, "OpsCenterIntegration"),
    type = "structure",
    members = {
        OptInStatus = schema.new({
            id = id.from(_N, "OpsCenterIntegration", "OptInStatus"),
            type = "string",
            name = "OptInStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceIntegrationConfig = schema.new({
    id = id.from(_N, "ServiceIntegrationConfig"),
    type = "structure",
    members = {
        OpsCenter = schema.new({
            id = id.from(_N, "ServiceIntegrationConfig", "OpsCenter"),
            type = "structure",
            name = "OpsCenter",
            target_id = id.from(_N, "OpsCenterIntegration"),
            target = M.OpsCenterIntegration,
        }),
        LogsAnomalyDetection = schema.new({
            id = id.from(_N, "ServiceIntegrationConfig", "LogsAnomalyDetection"),
            type = "structure",
            name = "LogsAnomalyDetection",
            target_id = id.from(_N, "LogsAnomalyDetectionIntegration"),
            target = M.LogsAnomalyDetectionIntegration,
        }),
        KMSServerSideEncryption = schema.new({
            id = id.from(_N, "ServiceIntegrationConfig", "KMSServerSideEncryption"),
            type = "structure",
            name = "KMSServerSideEncryption",
            target_id = id.from(_N, "KMSServerSideEncryptionIntegration"),
            target = M.KMSServerSideEncryptionIntegration,
        }),
    },
})

M.DescribeServiceIntegrationOutput = schema.new({
    id = id.from(_N, "DescribeServiceIntegrationOutput"),
    type = "structure",
    members = {
        ServiceIntegration = schema.new({
            id = id.from(_N, "DescribeServiceIntegrationOutput", "ServiceIntegration"),
            type = "structure",
            name = "ServiceIntegration",
            target_id = id.from(_N, "ServiceIntegrationConfig"),
            target = M.ServiceIntegrationConfig,
        }),
    },
})

M.GetCostEstimationInput = schema.new({
    id = id.from(_N, "GetCostEstimationInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "GetCostEstimationInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ServiceResourceCost = schema.new({
    id = id.from(_N, "ServiceResourceCost"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ServiceResourceCost", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        State = schema.new({
            id = id.from(_N, "ServiceResourceCost", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
        }),
        Count = schema.new({
            id = id.from(_N, "ServiceResourceCost", "Count"),
            type = "integer",
            name = "Count",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        UnitCost = schema.new({
            id = id.from(_N, "ServiceResourceCost", "UnitCost"),
            type = "double",
            name = "UnitCost",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Cost = schema.new({
            id = id.from(_N, "ServiceResourceCost", "Cost"),
            type = "double",
            name = "Cost",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.CloudFormationCostEstimationResourceCollectionFilter = schema.new({
    id = id.from(_N, "CloudFormationCostEstimationResourceCollectionFilter"),
    type = "structure",
    members = {
        StackNames = schema.new({
            id = id.from(_N, "CloudFormationCostEstimationResourceCollectionFilter", "StackNames"),
            type = "list",
            name = "StackNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.TagCostEstimationResourceCollectionFilter = schema.new({
    id = id.from(_N, "TagCostEstimationResourceCollectionFilter"),
    type = "structure",
    members = {
        AppBoundaryKey = schema.new({
            id = id.from(_N, "TagCostEstimationResourceCollectionFilter", "AppBoundaryKey"),
            type = "string",
            name = "AppBoundaryKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagValues = schema.new({
            id = id.from(_N, "TagCostEstimationResourceCollectionFilter", "TagValues"),
            type = "list",
            name = "TagValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CostEstimationResourceCollectionFilter = schema.new({
    id = id.from(_N, "CostEstimationResourceCollectionFilter"),
    type = "structure",
    members = {
        CloudFormation = schema.new({
            id = id.from(_N, "CostEstimationResourceCollectionFilter", "CloudFormation"),
            type = "structure",
            name = "CloudFormation",
            target_id = id.from(_N, "CloudFormationCostEstimationResourceCollectionFilter"),
            target = M.CloudFormationCostEstimationResourceCollectionFilter,
        }),
        Tags = schema.new({
            id = id.from(_N, "CostEstimationResourceCollectionFilter", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagCostEstimationResourceCollectionFilter,
        }),
    },
})

M.CostEstimationTimeRange = schema.new({
    id = id.from(_N, "CostEstimationTimeRange"),
    type = "structure",
    members = {
        StartTime = schema.new({
            id = id.from(_N, "CostEstimationTimeRange", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
        }),
        EndTime = schema.new({
            id = id.from(_N, "CostEstimationTimeRange", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetCostEstimationOutput = schema.new({
    id = id.from(_N, "GetCostEstimationOutput"),
    type = "structure",
    members = {
        ResourceCollection = schema.new({
            id = id.from(_N, "GetCostEstimationOutput", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "CostEstimationResourceCollectionFilter"),
            target = M.CostEstimationResourceCollectionFilter,
        }),
        Status = schema.new({
            id = id.from(_N, "GetCostEstimationOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Costs = schema.new({
            id = id.from(_N, "GetCostEstimationOutput", "Costs"),
            type = "list",
            name = "Costs",
            target_id = prelude.Document.id,
            list_member = M.ServiceResourceCost,
        }),
        TimeRange = schema.new({
            id = id.from(_N, "GetCostEstimationOutput", "TimeRange"),
            type = "structure",
            name = "TimeRange",
            target_id = id.from(_N, "CostEstimationTimeRange"),
            target = M.CostEstimationTimeRange,
        }),
        TotalCost = schema.new({
            id = id.from(_N, "GetCostEstimationOutput", "TotalCost"),
            type = "double",
            name = "TotalCost",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetCostEstimationOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetResourceCollectionInput = schema.new({
    id = id.from(_N, "GetResourceCollectionInput"),
    type = "structure",
    members = {
        ResourceCollectionType = schema.new({
            id = id.from(_N, "GetResourceCollectionInput", "ResourceCollectionType"),
            type = "string",
            name = "ResourceCollectionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetResourceCollectionInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.CloudFormationCollectionFilter = schema.new({
    id = id.from(_N, "CloudFormationCollectionFilter"),
    type = "structure",
    members = {
        StackNames = schema.new({
            id = id.from(_N, "CloudFormationCollectionFilter", "StackNames"),
            type = "list",
            name = "StackNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.TagCollectionFilter = schema.new({
    id = id.from(_N, "TagCollectionFilter"),
    type = "structure",
    members = {
        AppBoundaryKey = schema.new({
            id = id.from(_N, "TagCollectionFilter", "AppBoundaryKey"),
            type = "string",
            name = "AppBoundaryKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagValues = schema.new({
            id = id.from(_N, "TagCollectionFilter", "TagValues"),
            type = "list",
            name = "TagValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceCollectionFilter = schema.new({
    id = id.from(_N, "ResourceCollectionFilter"),
    type = "structure",
    members = {
        CloudFormation = schema.new({
            id = id.from(_N, "ResourceCollectionFilter", "CloudFormation"),
            type = "structure",
            name = "CloudFormation",
            target_id = id.from(_N, "CloudFormationCollectionFilter"),
            target = M.CloudFormationCollectionFilter,
        }),
        Tags = schema.new({
            id = id.from(_N, "ResourceCollectionFilter", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.TagCollectionFilter,
        }),
    },
})

M.GetResourceCollectionOutput = schema.new({
    id = id.from(_N, "GetResourceCollectionOutput"),
    type = "structure",
    members = {
        ResourceCollection = schema.new({
            id = id.from(_N, "GetResourceCollectionOutput", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "ResourceCollectionFilter"),
            target = M.ResourceCollectionFilter,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetResourceCollectionOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceCollection = schema.new({
    id = id.from(_N, "ServiceCollection"),
    type = "structure",
    members = {
        ServiceNames = schema.new({
            id = id.from(_N, "ServiceCollection", "ServiceNames"),
            type = "list",
            name = "ServiceNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListAnomaliesForInsightFilters = schema.new({
    id = id.from(_N, "ListAnomaliesForInsightFilters"),
    type = "structure",
    members = {
        ServiceCollection = schema.new({
            id = id.from(_N, "ListAnomaliesForInsightFilters", "ServiceCollection"),
            type = "structure",
            name = "ServiceCollection",
            target_id = id.from(_N, "ServiceCollection"),
            target = M.ServiceCollection,
        }),
    },
})

M.StartTimeRange = schema.new({
    id = id.from(_N, "StartTimeRange"),
    type = "structure",
    members = {
        FromTime = schema.new({
            id = id.from(_N, "StartTimeRange", "FromTime"),
            type = "timestamp",
            name = "FromTime",
            target_id = prelude.Timestamp.id,
        }),
        ToTime = schema.new({
            id = id.from(_N, "StartTimeRange", "ToTime"),
            type = "timestamp",
            name = "ToTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListAnomaliesForInsightInput = schema.new({
    id = id.from(_N, "ListAnomaliesForInsightInput"),
    type = "structure",
    members = {
        InsightId = schema.new({
            id = id.from(_N, "ListAnomaliesForInsightInput", "InsightId"),
            type = "string",
            name = "InsightId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        StartTimeRange = schema.new({
            id = id.from(_N, "ListAnomaliesForInsightInput", "StartTimeRange"),
            type = "structure",
            name = "StartTimeRange",
            target_id = id.from(_N, "StartTimeRange"),
            target = M.StartTimeRange,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAnomaliesForInsightInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAnomaliesForInsightInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        AccountId = schema.new({
            id = id.from(_N, "ListAnomaliesForInsightInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "ListAnomaliesForInsightInput", "Filters"),
            type = "structure",
            name = "Filters",
            target_id = id.from(_N, "ListAnomaliesForInsightFilters"),
            target = M.ListAnomaliesForInsightFilters,
        }),
    },
})

M.ProactiveAnomalySummary = schema.new({
    id = id.from(_N, "ProactiveAnomalySummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ProactiveAnomalySummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Severity = schema.new({
            id = id.from(_N, "ProactiveAnomalySummary", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ProactiveAnomalySummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        UpdateTime = schema.new({
            id = id.from(_N, "ProactiveAnomalySummary", "UpdateTime"),
            type = "timestamp",
            name = "UpdateTime",
            target_id = prelude.Timestamp.id,
        }),
        AnomalyTimeRange = schema.new({
            id = id.from(_N, "ProactiveAnomalySummary", "AnomalyTimeRange"),
            type = "structure",
            name = "AnomalyTimeRange",
            target_id = id.from(_N, "AnomalyTimeRange"),
            target = M.AnomalyTimeRange,
        }),
        AnomalyReportedTimeRange = schema.new({
            id = id.from(_N, "ProactiveAnomalySummary", "AnomalyReportedTimeRange"),
            type = "structure",
            name = "AnomalyReportedTimeRange",
            target_id = id.from(_N, "AnomalyReportedTimeRange"),
            target = M.AnomalyReportedTimeRange,
        }),
        PredictionTimeRange = schema.new({
            id = id.from(_N, "ProactiveAnomalySummary", "PredictionTimeRange"),
            type = "structure",
            name = "PredictionTimeRange",
            target_id = id.from(_N, "PredictionTimeRange"),
            target = M.PredictionTimeRange,
        }),
        SourceDetails = schema.new({
            id = id.from(_N, "ProactiveAnomalySummary", "SourceDetails"),
            type = "structure",
            name = "SourceDetails",
            target_id = id.from(_N, "AnomalySourceDetails"),
            target = M.AnomalySourceDetails,
        }),
        AssociatedInsightId = schema.new({
            id = id.from(_N, "ProactiveAnomalySummary", "AssociatedInsightId"),
            type = "string",
            name = "AssociatedInsightId",
            target_id = prelude.String.id,
        }),
        ResourceCollection = schema.new({
            id = id.from(_N, "ProactiveAnomalySummary", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "ResourceCollection"),
            target = M.ResourceCollection,
        }),
        Limit = schema.new({
            id = id.from(_N, "ProactiveAnomalySummary", "Limit"),
            type = "double",
            name = "Limit",
            target_id = prelude.Double.id,
        }),
        SourceMetadata = schema.new({
            id = id.from(_N, "ProactiveAnomalySummary", "SourceMetadata"),
            type = "structure",
            name = "SourceMetadata",
            target_id = id.from(_N, "AnomalySourceMetadata"),
            target = M.AnomalySourceMetadata,
        }),
        AnomalyResources = schema.new({
            id = id.from(_N, "ProactiveAnomalySummary", "AnomalyResources"),
            type = "list",
            name = "AnomalyResources",
            target_id = prelude.Document.id,
            list_member = M.AnomalyResource,
        }),
        Description = schema.new({
            id = id.from(_N, "ProactiveAnomalySummary", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.ReactiveAnomalySummary = schema.new({
    id = id.from(_N, "ReactiveAnomalySummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ReactiveAnomalySummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Severity = schema.new({
            id = id.from(_N, "ReactiveAnomalySummary", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ReactiveAnomalySummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        AnomalyTimeRange = schema.new({
            id = id.from(_N, "ReactiveAnomalySummary", "AnomalyTimeRange"),
            type = "structure",
            name = "AnomalyTimeRange",
            target_id = id.from(_N, "AnomalyTimeRange"),
            target = M.AnomalyTimeRange,
        }),
        AnomalyReportedTimeRange = schema.new({
            id = id.from(_N, "ReactiveAnomalySummary", "AnomalyReportedTimeRange"),
            type = "structure",
            name = "AnomalyReportedTimeRange",
            target_id = id.from(_N, "AnomalyReportedTimeRange"),
            target = M.AnomalyReportedTimeRange,
        }),
        SourceDetails = schema.new({
            id = id.from(_N, "ReactiveAnomalySummary", "SourceDetails"),
            type = "structure",
            name = "SourceDetails",
            target_id = id.from(_N, "AnomalySourceDetails"),
            target = M.AnomalySourceDetails,
        }),
        AssociatedInsightId = schema.new({
            id = id.from(_N, "ReactiveAnomalySummary", "AssociatedInsightId"),
            type = "string",
            name = "AssociatedInsightId",
            target_id = prelude.String.id,
        }),
        ResourceCollection = schema.new({
            id = id.from(_N, "ReactiveAnomalySummary", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "ResourceCollection"),
            target = M.ResourceCollection,
        }),
        Type = schema.new({
            id = id.from(_N, "ReactiveAnomalySummary", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ReactiveAnomalySummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "ReactiveAnomalySummary", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        CausalAnomalyId = schema.new({
            id = id.from(_N, "ReactiveAnomalySummary", "CausalAnomalyId"),
            type = "string",
            name = "CausalAnomalyId",
            target_id = prelude.String.id,
        }),
        AnomalyResources = schema.new({
            id = id.from(_N, "ReactiveAnomalySummary", "AnomalyResources"),
            type = "list",
            name = "AnomalyResources",
            target_id = prelude.Document.id,
            list_member = M.AnomalyResource,
        }),
    },
})

M.ListAnomaliesForInsightOutput = schema.new({
    id = id.from(_N, "ListAnomaliesForInsightOutput"),
    type = "structure",
    members = {
        ProactiveAnomalies = schema.new({
            id = id.from(_N, "ListAnomaliesForInsightOutput", "ProactiveAnomalies"),
            type = "list",
            name = "ProactiveAnomalies",
            target_id = prelude.Document.id,
            list_member = M.ProactiveAnomalySummary,
        }),
        ReactiveAnomalies = schema.new({
            id = id.from(_N, "ListAnomaliesForInsightOutput", "ReactiveAnomalies"),
            type = "list",
            name = "ReactiveAnomalies",
            target_id = prelude.Document.id,
            list_member = M.ReactiveAnomalySummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAnomaliesForInsightOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAnomalousLogGroupsInput = schema.new({
    id = id.from(_N, "ListAnomalousLogGroupsInput"),
    type = "structure",
    members = {
        InsightId = schema.new({
            id = id.from(_N, "ListAnomalousLogGroupsInput", "InsightId"),
            type = "string",
            name = "InsightId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAnomalousLogGroupsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAnomalousLogGroupsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAnomalousLogGroupsOutput = schema.new({
    id = id.from(_N, "ListAnomalousLogGroupsOutput"),
    type = "structure",
    members = {
        InsightId = schema.new({
            id = id.from(_N, "ListAnomalousLogGroupsOutput", "InsightId"),
            type = "string",
            name = "InsightId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AnomalousLogGroups = schema.new({
            id = id.from(_N, "ListAnomalousLogGroupsOutput", "AnomalousLogGroups"),
            type = "list",
            name = "AnomalousLogGroups",
            target_id = prelude.Document.id,
            list_member = M.AnomalousLogGroup,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAnomalousLogGroupsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.EventTimeRange = schema.new({
    id = id.from(_N, "EventTimeRange"),
    type = "structure",
    members = {
        FromTime = schema.new({
            id = id.from(_N, "EventTimeRange", "FromTime"),
            type = "timestamp",
            name = "FromTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ToTime = schema.new({
            id = id.from(_N, "EventTimeRange", "ToTime"),
            type = "timestamp",
            name = "ToTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListEventsFilters = schema.new({
    id = id.from(_N, "ListEventsFilters"),
    type = "structure",
    members = {
        InsightId = schema.new({
            id = id.from(_N, "ListEventsFilters", "InsightId"),
            type = "string",
            name = "InsightId",
            target_id = prelude.String.id,
        }),
        EventTimeRange = schema.new({
            id = id.from(_N, "ListEventsFilters", "EventTimeRange"),
            type = "structure",
            name = "EventTimeRange",
            target_id = id.from(_N, "EventTimeRange"),
            target = M.EventTimeRange,
        }),
        EventClass = schema.new({
            id = id.from(_N, "ListEventsFilters", "EventClass"),
            type = "string",
            name = "EventClass",
            target_id = prelude.String.id,
        }),
        EventSource = schema.new({
            id = id.from(_N, "ListEventsFilters", "EventSource"),
            type = "string",
            name = "EventSource",
            target_id = prelude.String.id,
        }),
        DataSource = schema.new({
            id = id.from(_N, "ListEventsFilters", "DataSource"),
            type = "string",
            name = "DataSource",
            target_id = prelude.String.id,
        }),
        ResourceCollection = schema.new({
            id = id.from(_N, "ListEventsFilters", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "ResourceCollection"),
            target = M.ResourceCollection,
        }),
    },
})

M.ListEventsInput = schema.new({
    id = id.from(_N, "ListEventsInput"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "ListEventsInput", "Filters"),
            type = "structure",
            name = "Filters",
            target_id = id.from(_N, "ListEventsFilters"),
            target = M.ListEventsFilters,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListEventsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEventsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        AccountId = schema.new({
            id = id.from(_N, "ListEventsInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.EventResource = schema.new({
    id = id.from(_N, "EventResource"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "EventResource", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "EventResource", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "EventResource", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
    },
})

M.Event = schema.new({
    id = id.from(_N, "Event"),
    type = "structure",
    members = {
        ResourceCollection = schema.new({
            id = id.from(_N, "Event", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "ResourceCollection"),
            target = M.ResourceCollection,
        }),
        Id = schema.new({
            id = id.from(_N, "Event", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Time = schema.new({
            id = id.from(_N, "Event", "Time"),
            type = "timestamp",
            name = "Time",
            target_id = prelude.Timestamp.id,
        }),
        EventSource = schema.new({
            id = id.from(_N, "Event", "EventSource"),
            type = "string",
            name = "EventSource",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Event", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        DataSource = schema.new({
            id = id.from(_N, "Event", "DataSource"),
            type = "string",
            name = "DataSource",
            target_id = prelude.String.id,
        }),
        EventClass = schema.new({
            id = id.from(_N, "Event", "EventClass"),
            type = "string",
            name = "EventClass",
            target_id = prelude.String.id,
        }),
        Resources = schema.new({
            id = id.from(_N, "Event", "Resources"),
            type = "list",
            name = "Resources",
            target_id = prelude.Document.id,
            list_member = M.EventResource,
        }),
    },
})

M.ListEventsOutput = schema.new({
    id = id.from(_N, "ListEventsOutput"),
    type = "structure",
    members = {
        Events = schema.new({
            id = id.from(_N, "ListEventsOutput", "Events"),
            type = "list",
            name = "Events",
            target_id = prelude.Document.id,
            list_member = M.Event,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListEventsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListInsightsAnyStatusFilter = schema.new({
    id = id.from(_N, "ListInsightsAnyStatusFilter"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ListInsightsAnyStatusFilter", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTimeRange = schema.new({
            id = id.from(_N, "ListInsightsAnyStatusFilter", "StartTimeRange"),
            type = "structure",
            name = "StartTimeRange",
            target_id = id.from(_N, "StartTimeRange"),
            target = M.StartTimeRange,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EndTimeRange = schema.new({
    id = id.from(_N, "EndTimeRange"),
    type = "structure",
    members = {
        FromTime = schema.new({
            id = id.from(_N, "EndTimeRange", "FromTime"),
            type = "timestamp",
            name = "FromTime",
            target_id = prelude.Timestamp.id,
        }),
        ToTime = schema.new({
            id = id.from(_N, "EndTimeRange", "ToTime"),
            type = "timestamp",
            name = "ToTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListInsightsClosedStatusFilter = schema.new({
    id = id.from(_N, "ListInsightsClosedStatusFilter"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ListInsightsClosedStatusFilter", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTimeRange = schema.new({
            id = id.from(_N, "ListInsightsClosedStatusFilter", "EndTimeRange"),
            type = "structure",
            name = "EndTimeRange",
            target_id = id.from(_N, "EndTimeRange"),
            target = M.EndTimeRange,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListInsightsOngoingStatusFilter = schema.new({
    id = id.from(_N, "ListInsightsOngoingStatusFilter"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ListInsightsOngoingStatusFilter", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListInsightsStatusFilter = schema.new({
    id = id.from(_N, "ListInsightsStatusFilter"),
    type = "structure",
    members = {
        Ongoing = schema.new({
            id = id.from(_N, "ListInsightsStatusFilter", "Ongoing"),
            type = "structure",
            name = "Ongoing",
            target_id = id.from(_N, "ListInsightsOngoingStatusFilter"),
            target = M.ListInsightsOngoingStatusFilter,
        }),
        Closed = schema.new({
            id = id.from(_N, "ListInsightsStatusFilter", "Closed"),
            type = "structure",
            name = "Closed",
            target_id = id.from(_N, "ListInsightsClosedStatusFilter"),
            target = M.ListInsightsClosedStatusFilter,
        }),
        Any = schema.new({
            id = id.from(_N, "ListInsightsStatusFilter", "Any"),
            type = "structure",
            name = "Any",
            target_id = id.from(_N, "ListInsightsAnyStatusFilter"),
            target = M.ListInsightsAnyStatusFilter,
        }),
    },
})

M.ListInsightsInput = schema.new({
    id = id.from(_N, "ListInsightsInput"),
    type = "structure",
    members = {
        StatusFilter = schema.new({
            id = id.from(_N, "ListInsightsInput", "StatusFilter"),
            type = "structure",
            name = "StatusFilter",
            target_id = id.from(_N, "ListInsightsStatusFilter"),
            target = M.ListInsightsStatusFilter,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListInsightsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListInsightsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ProactiveInsightSummary = schema.new({
    id = id.from(_N, "ProactiveInsightSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ProactiveInsightSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ProactiveInsightSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Severity = schema.new({
            id = id.from(_N, "ProactiveInsightSummary", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ProactiveInsightSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        InsightTimeRange = schema.new({
            id = id.from(_N, "ProactiveInsightSummary", "InsightTimeRange"),
            type = "structure",
            name = "InsightTimeRange",
            target_id = id.from(_N, "InsightTimeRange"),
            target = M.InsightTimeRange,
        }),
        PredictionTimeRange = schema.new({
            id = id.from(_N, "ProactiveInsightSummary", "PredictionTimeRange"),
            type = "structure",
            name = "PredictionTimeRange",
            target_id = id.from(_N, "PredictionTimeRange"),
            target = M.PredictionTimeRange,
        }),
        ResourceCollection = schema.new({
            id = id.from(_N, "ProactiveInsightSummary", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "ResourceCollection"),
            target = M.ResourceCollection,
        }),
        ServiceCollection = schema.new({
            id = id.from(_N, "ProactiveInsightSummary", "ServiceCollection"),
            type = "structure",
            name = "ServiceCollection",
            target_id = id.from(_N, "ServiceCollection"),
            target = M.ServiceCollection,
        }),
        AssociatedResourceArns = schema.new({
            id = id.from(_N, "ProactiveInsightSummary", "AssociatedResourceArns"),
            type = "list",
            name = "AssociatedResourceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ReactiveInsightSummary = schema.new({
    id = id.from(_N, "ReactiveInsightSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ReactiveInsightSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ReactiveInsightSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Severity = schema.new({
            id = id.from(_N, "ReactiveInsightSummary", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ReactiveInsightSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        InsightTimeRange = schema.new({
            id = id.from(_N, "ReactiveInsightSummary", "InsightTimeRange"),
            type = "structure",
            name = "InsightTimeRange",
            target_id = id.from(_N, "InsightTimeRange"),
            target = M.InsightTimeRange,
        }),
        ResourceCollection = schema.new({
            id = id.from(_N, "ReactiveInsightSummary", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "ResourceCollection"),
            target = M.ResourceCollection,
        }),
        ServiceCollection = schema.new({
            id = id.from(_N, "ReactiveInsightSummary", "ServiceCollection"),
            type = "structure",
            name = "ServiceCollection",
            target_id = id.from(_N, "ServiceCollection"),
            target = M.ServiceCollection,
        }),
        AssociatedResourceArns = schema.new({
            id = id.from(_N, "ReactiveInsightSummary", "AssociatedResourceArns"),
            type = "list",
            name = "AssociatedResourceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ListInsightsOutput = schema.new({
    id = id.from(_N, "ListInsightsOutput"),
    type = "structure",
    members = {
        ProactiveInsights = schema.new({
            id = id.from(_N, "ListInsightsOutput", "ProactiveInsights"),
            type = "list",
            name = "ProactiveInsights",
            target_id = prelude.Document.id,
            list_member = M.ProactiveInsightSummary,
        }),
        ReactiveInsights = schema.new({
            id = id.from(_N, "ListInsightsOutput", "ReactiveInsights"),
            type = "list",
            name = "ReactiveInsights",
            target_id = prelude.Document.id,
            list_member = M.ReactiveInsightSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListInsightsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMonitoredResourcesFilters = schema.new({
    id = id.from(_N, "ListMonitoredResourcesFilters"),
    type = "structure",
    members = {
        ResourcePermission = schema.new({
            id = id.from(_N, "ListMonitoredResourcesFilters", "ResourcePermission"),
            type = "string",
            name = "ResourcePermission",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceTypeFilters = schema.new({
            id = id.from(_N, "ListMonitoredResourcesFilters", "ResourceTypeFilters"),
            type = "list",
            name = "ResourceTypeFilters",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListMonitoredResourcesInput = schema.new({
    id = id.from(_N, "ListMonitoredResourcesInput"),
    type = "structure",
    members = {
        Filters = schema.new({
            id = id.from(_N, "ListMonitoredResourcesInput", "Filters"),
            type = "structure",
            name = "Filters",
            target_id = id.from(_N, "ListMonitoredResourcesFilters"),
            target = M.ListMonitoredResourcesFilters,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListMonitoredResourcesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMonitoredResourcesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.MonitoredResourceIdentifier = schema.new({
    id = id.from(_N, "MonitoredResourceIdentifier"),
    type = "structure",
    members = {
        MonitoredResourceName = schema.new({
            id = id.from(_N, "MonitoredResourceIdentifier", "MonitoredResourceName"),
            type = "string",
            name = "MonitoredResourceName",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "MonitoredResourceIdentifier", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        ResourcePermission = schema.new({
            id = id.from(_N, "MonitoredResourceIdentifier", "ResourcePermission"),
            type = "string",
            name = "ResourcePermission",
            target_id = prelude.String.id,
        }),
        LastUpdated = schema.new({
            id = id.from(_N, "MonitoredResourceIdentifier", "LastUpdated"),
            type = "timestamp",
            name = "LastUpdated",
            target_id = prelude.Timestamp.id,
        }),
        ResourceCollection = schema.new({
            id = id.from(_N, "MonitoredResourceIdentifier", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "ResourceCollection"),
            target = M.ResourceCollection,
        }),
    },
})

M.ListMonitoredResourcesOutput = schema.new({
    id = id.from(_N, "ListMonitoredResourcesOutput"),
    type = "structure",
    members = {
        MonitoredResourceIdentifiers = schema.new({
            id = id.from(_N, "ListMonitoredResourcesOutput", "MonitoredResourceIdentifiers"),
            type = "list",
            name = "MonitoredResourceIdentifiers",
            target_id = prelude.Document.id,
            list_member = M.MonitoredResourceIdentifier,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListMonitoredResourcesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListNotificationChannelsInput = schema.new({
    id = id.from(_N, "ListNotificationChannelsInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListNotificationChannelsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.NotificationChannel = schema.new({
    id = id.from(_N, "NotificationChannel"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "NotificationChannel", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Config = schema.new({
            id = id.from(_N, "NotificationChannel", "Config"),
            type = "structure",
            name = "Config",
            target_id = id.from(_N, "NotificationChannelConfig"),
            target = M.NotificationChannelConfig,
        }),
    },
})

M.ListNotificationChannelsOutput = schema.new({
    id = id.from(_N, "ListNotificationChannelsOutput"),
    type = "structure",
    members = {
        Channels = schema.new({
            id = id.from(_N, "ListNotificationChannelsOutput", "Channels"),
            type = "list",
            name = "Channels",
            target_id = prelude.Document.id,
            list_member = M.NotificationChannel,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListNotificationChannelsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOrganizationInsightsInput = schema.new({
    id = id.from(_N, "ListOrganizationInsightsInput"),
    type = "structure",
    members = {
        StatusFilter = schema.new({
            id = id.from(_N, "ListOrganizationInsightsInput", "StatusFilter"),
            type = "structure",
            name = "StatusFilter",
            target_id = id.from(_N, "ListInsightsStatusFilter"),
            target = M.ListInsightsStatusFilter,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListOrganizationInsightsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        AccountIds = schema.new({
            id = id.from(_N, "ListOrganizationInsightsInput", "AccountIds"),
            type = "list",
            name = "AccountIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        OrganizationalUnitIds = schema.new({
            id = id.from(_N, "ListOrganizationInsightsInput", "OrganizationalUnitIds"),
            type = "list",
            name = "OrganizationalUnitIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOrganizationInsightsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ProactiveOrganizationInsightSummary = schema.new({
    id = id.from(_N, "ProactiveOrganizationInsightSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ProactiveOrganizationInsightSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        AccountId = schema.new({
            id = id.from(_N, "ProactiveOrganizationInsightSummary", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        OrganizationalUnitId = schema.new({
            id = id.from(_N, "ProactiveOrganizationInsightSummary", "OrganizationalUnitId"),
            type = "string",
            name = "OrganizationalUnitId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ProactiveOrganizationInsightSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Severity = schema.new({
            id = id.from(_N, "ProactiveOrganizationInsightSummary", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ProactiveOrganizationInsightSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        InsightTimeRange = schema.new({
            id = id.from(_N, "ProactiveOrganizationInsightSummary", "InsightTimeRange"),
            type = "structure",
            name = "InsightTimeRange",
            target_id = id.from(_N, "InsightTimeRange"),
            target = M.InsightTimeRange,
        }),
        PredictionTimeRange = schema.new({
            id = id.from(_N, "ProactiveOrganizationInsightSummary", "PredictionTimeRange"),
            type = "structure",
            name = "PredictionTimeRange",
            target_id = id.from(_N, "PredictionTimeRange"),
            target = M.PredictionTimeRange,
        }),
        ResourceCollection = schema.new({
            id = id.from(_N, "ProactiveOrganizationInsightSummary", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "ResourceCollection"),
            target = M.ResourceCollection,
        }),
        ServiceCollection = schema.new({
            id = id.from(_N, "ProactiveOrganizationInsightSummary", "ServiceCollection"),
            type = "structure",
            name = "ServiceCollection",
            target_id = id.from(_N, "ServiceCollection"),
            target = M.ServiceCollection,
        }),
    },
})

M.ReactiveOrganizationInsightSummary = schema.new({
    id = id.from(_N, "ReactiveOrganizationInsightSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ReactiveOrganizationInsightSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        AccountId = schema.new({
            id = id.from(_N, "ReactiveOrganizationInsightSummary", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
        OrganizationalUnitId = schema.new({
            id = id.from(_N, "ReactiveOrganizationInsightSummary", "OrganizationalUnitId"),
            type = "string",
            name = "OrganizationalUnitId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "ReactiveOrganizationInsightSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Severity = schema.new({
            id = id.from(_N, "ReactiveOrganizationInsightSummary", "Severity"),
            type = "string",
            name = "Severity",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ReactiveOrganizationInsightSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        InsightTimeRange = schema.new({
            id = id.from(_N, "ReactiveOrganizationInsightSummary", "InsightTimeRange"),
            type = "structure",
            name = "InsightTimeRange",
            target_id = id.from(_N, "InsightTimeRange"),
            target = M.InsightTimeRange,
        }),
        ResourceCollection = schema.new({
            id = id.from(_N, "ReactiveOrganizationInsightSummary", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "ResourceCollection"),
            target = M.ResourceCollection,
        }),
        ServiceCollection = schema.new({
            id = id.from(_N, "ReactiveOrganizationInsightSummary", "ServiceCollection"),
            type = "structure",
            name = "ServiceCollection",
            target_id = id.from(_N, "ServiceCollection"),
            target = M.ServiceCollection,
        }),
    },
})

M.ListOrganizationInsightsOutput = schema.new({
    id = id.from(_N, "ListOrganizationInsightsOutput"),
    type = "structure",
    members = {
        ProactiveInsights = schema.new({
            id = id.from(_N, "ListOrganizationInsightsOutput", "ProactiveInsights"),
            type = "list",
            name = "ProactiveInsights",
            target_id = prelude.Document.id,
            list_member = M.ProactiveOrganizationInsightSummary,
        }),
        ReactiveInsights = schema.new({
            id = id.from(_N, "ListOrganizationInsightsOutput", "ReactiveInsights"),
            type = "list",
            name = "ReactiveInsights",
            target_id = prelude.Document.id,
            list_member = M.ReactiveOrganizationInsightSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListOrganizationInsightsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRecommendationsInput = schema.new({
    id = id.from(_N, "ListRecommendationsInput"),
    type = "structure",
    members = {
        InsightId = schema.new({
            id = id.from(_N, "ListRecommendationsInput", "InsightId"),
            type = "string",
            name = "InsightId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRecommendationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Locale = schema.new({
            id = id.from(_N, "ListRecommendationsInput", "Locale"),
            type = "string",
            name = "Locale",
            target_id = prelude.String.id,
        }),
        AccountId = schema.new({
            id = id.from(_N, "ListRecommendationsInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.RecommendationRelatedAnomalyResource = schema.new({
    id = id.from(_N, "RecommendationRelatedAnomalyResource"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RecommendationRelatedAnomalyResource", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "RecommendationRelatedAnomalyResource", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.RecommendationRelatedCloudWatchMetricsSourceDetail = schema.new({
    id = id.from(_N, "RecommendationRelatedCloudWatchMetricsSourceDetail"),
    type = "structure",
    members = {
        MetricName = schema.new({
            id = id.from(_N, "RecommendationRelatedCloudWatchMetricsSourceDetail", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        Namespace = schema.new({
            id = id.from(_N, "RecommendationRelatedCloudWatchMetricsSourceDetail", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
    },
})

M.RecommendationRelatedAnomalySourceDetail = schema.new({
    id = id.from(_N, "RecommendationRelatedAnomalySourceDetail"),
    type = "structure",
    members = {
        CloudWatchMetrics = schema.new({
            id = id.from(_N, "RecommendationRelatedAnomalySourceDetail", "CloudWatchMetrics"),
            type = "list",
            name = "CloudWatchMetrics",
            target_id = prelude.Document.id,
            list_member = M.RecommendationRelatedCloudWatchMetricsSourceDetail,
        }),
    },
})

M.RecommendationRelatedAnomaly = schema.new({
    id = id.from(_N, "RecommendationRelatedAnomaly"),
    type = "structure",
    members = {
        Resources = schema.new({
            id = id.from(_N, "RecommendationRelatedAnomaly", "Resources"),
            type = "list",
            name = "Resources",
            target_id = prelude.Document.id,
            list_member = M.RecommendationRelatedAnomalyResource,
        }),
        SourceDetails = schema.new({
            id = id.from(_N, "RecommendationRelatedAnomaly", "SourceDetails"),
            type = "list",
            name = "SourceDetails",
            target_id = prelude.Document.id,
            list_member = M.RecommendationRelatedAnomalySourceDetail,
        }),
        AnomalyId = schema.new({
            id = id.from(_N, "RecommendationRelatedAnomaly", "AnomalyId"),
            type = "string",
            name = "AnomalyId",
            target_id = prelude.String.id,
        }),
    },
})

M.RecommendationRelatedEventResource = schema.new({
    id = id.from(_N, "RecommendationRelatedEventResource"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RecommendationRelatedEventResource", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "RecommendationRelatedEventResource", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.RecommendationRelatedEvent = schema.new({
    id = id.from(_N, "RecommendationRelatedEvent"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "RecommendationRelatedEvent", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Resources = schema.new({
            id = id.from(_N, "RecommendationRelatedEvent", "Resources"),
            type = "list",
            name = "Resources",
            target_id = prelude.Document.id,
            list_member = M.RecommendationRelatedEventResource,
        }),
    },
})

M.Recommendation = schema.new({
    id = id.from(_N, "Recommendation"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "Recommendation", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Link = schema.new({
            id = id.from(_N, "Recommendation", "Link"),
            type = "string",
            name = "Link",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "Recommendation", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Reason = schema.new({
            id = id.from(_N, "Recommendation", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
        RelatedEvents = schema.new({
            id = id.from(_N, "Recommendation", "RelatedEvents"),
            type = "list",
            name = "RelatedEvents",
            target_id = prelude.Document.id,
            list_member = M.RecommendationRelatedEvent,
        }),
        RelatedAnomalies = schema.new({
            id = id.from(_N, "Recommendation", "RelatedAnomalies"),
            type = "list",
            name = "RelatedAnomalies",
            target_id = prelude.Document.id,
            list_member = M.RecommendationRelatedAnomaly,
        }),
        Category = schema.new({
            id = id.from(_N, "Recommendation", "Category"),
            type = "string",
            name = "Category",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRecommendationsOutput = schema.new({
    id = id.from(_N, "ListRecommendationsOutput"),
    type = "structure",
    members = {
        Recommendations = schema.new({
            id = id.from(_N, "ListRecommendationsOutput", "Recommendations"),
            type = "list",
            name = "Recommendations",
            target_id = prelude.Document.id,
            list_member = M.Recommendation,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRecommendationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PutFeedbackInput = schema.new({
    id = id.from(_N, "PutFeedbackInput"),
    type = "structure",
    members = {
        InsightFeedback = schema.new({
            id = id.from(_N, "PutFeedbackInput", "InsightFeedback"),
            type = "structure",
            name = "InsightFeedback",
            target_id = id.from(_N, "InsightFeedback"),
            target = M.InsightFeedback,
        }),
    },
})

M.PutFeedbackOutput = schema.new({
    id = id.from(_N, "PutFeedbackOutput"),
    type = "structure",
})

M.RemoveNotificationChannelInput = schema.new({
    id = id.from(_N, "RemoveNotificationChannelInput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "RemoveNotificationChannelInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RemoveNotificationChannelOutput = schema.new({
    id = id.from(_N, "RemoveNotificationChannelOutput"),
    type = "structure",
})

M.SearchInsightsFilters = schema.new({
    id = id.from(_N, "SearchInsightsFilters"),
    type = "structure",
    members = {
        Severities = schema.new({
            id = id.from(_N, "SearchInsightsFilters", "Severities"),
            type = "list",
            name = "Severities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Statuses = schema.new({
            id = id.from(_N, "SearchInsightsFilters", "Statuses"),
            type = "list",
            name = "Statuses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ResourceCollection = schema.new({
            id = id.from(_N, "SearchInsightsFilters", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "ResourceCollection"),
            target = M.ResourceCollection,
        }),
        ServiceCollection = schema.new({
            id = id.from(_N, "SearchInsightsFilters", "ServiceCollection"),
            type = "structure",
            name = "ServiceCollection",
            target_id = id.from(_N, "ServiceCollection"),
            target = M.ServiceCollection,
        }),
    },
})

M.SearchInsightsInput = schema.new({
    id = id.from(_N, "SearchInsightsInput"),
    type = "structure",
    members = {
        StartTimeRange = schema.new({
            id = id.from(_N, "SearchInsightsInput", "StartTimeRange"),
            type = "structure",
            name = "StartTimeRange",
            target_id = id.from(_N, "StartTimeRange"),
            target = M.StartTimeRange,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "SearchInsightsInput", "Filters"),
            type = "structure",
            name = "Filters",
            target_id = id.from(_N, "SearchInsightsFilters"),
            target = M.SearchInsightsFilters,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "SearchInsightsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "SearchInsightsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "SearchInsightsInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SearchInsightsOutput = schema.new({
    id = id.from(_N, "SearchInsightsOutput"),
    type = "structure",
    members = {
        ProactiveInsights = schema.new({
            id = id.from(_N, "SearchInsightsOutput", "ProactiveInsights"),
            type = "list",
            name = "ProactiveInsights",
            target_id = prelude.Document.id,
            list_member = M.ProactiveInsightSummary,
        }),
        ReactiveInsights = schema.new({
            id = id.from(_N, "SearchInsightsOutput", "ReactiveInsights"),
            type = "list",
            name = "ReactiveInsights",
            target_id = prelude.Document.id,
            list_member = M.ReactiveInsightSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "SearchInsightsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SearchOrganizationInsightsFilters = schema.new({
    id = id.from(_N, "SearchOrganizationInsightsFilters"),
    type = "structure",
    members = {
        Severities = schema.new({
            id = id.from(_N, "SearchOrganizationInsightsFilters", "Severities"),
            type = "list",
            name = "Severities",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Statuses = schema.new({
            id = id.from(_N, "SearchOrganizationInsightsFilters", "Statuses"),
            type = "list",
            name = "Statuses",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        ResourceCollection = schema.new({
            id = id.from(_N, "SearchOrganizationInsightsFilters", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "ResourceCollection"),
            target = M.ResourceCollection,
        }),
        ServiceCollection = schema.new({
            id = id.from(_N, "SearchOrganizationInsightsFilters", "ServiceCollection"),
            type = "structure",
            name = "ServiceCollection",
            target_id = id.from(_N, "ServiceCollection"),
            target = M.ServiceCollection,
        }),
    },
})

M.SearchOrganizationInsightsInput = schema.new({
    id = id.from(_N, "SearchOrganizationInsightsInput"),
    type = "structure",
    members = {
        AccountIds = schema.new({
            id = id.from(_N, "SearchOrganizationInsightsInput", "AccountIds"),
            type = "list",
            name = "AccountIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartTimeRange = schema.new({
            id = id.from(_N, "SearchOrganizationInsightsInput", "StartTimeRange"),
            type = "structure",
            name = "StartTimeRange",
            target_id = id.from(_N, "StartTimeRange"),
            target = M.StartTimeRange,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Filters = schema.new({
            id = id.from(_N, "SearchOrganizationInsightsInput", "Filters"),
            type = "structure",
            name = "Filters",
            target_id = id.from(_N, "SearchOrganizationInsightsFilters"),
            target = M.SearchOrganizationInsightsFilters,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "SearchOrganizationInsightsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "SearchOrganizationInsightsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "SearchOrganizationInsightsInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SearchOrganizationInsightsOutput = schema.new({
    id = id.from(_N, "SearchOrganizationInsightsOutput"),
    type = "structure",
    members = {
        ProactiveInsights = schema.new({
            id = id.from(_N, "SearchOrganizationInsightsOutput", "ProactiveInsights"),
            type = "list",
            name = "ProactiveInsights",
            target_id = prelude.Document.id,
            list_member = M.ProactiveInsightSummary,
        }),
        ReactiveInsights = schema.new({
            id = id.from(_N, "SearchOrganizationInsightsOutput", "ReactiveInsights"),
            type = "list",
            name = "ReactiveInsights",
            target_id = prelude.Document.id,
            list_member = M.ReactiveInsightSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "SearchOrganizationInsightsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StartCostEstimationInput = schema.new({
    id = id.from(_N, "StartCostEstimationInput"),
    type = "structure",
    members = {
        ResourceCollection = schema.new({
            id = id.from(_N, "StartCostEstimationInput", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "CostEstimationResourceCollectionFilter"),
            target = M.CostEstimationResourceCollectionFilter,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "StartCostEstimationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.StartCostEstimationOutput = schema.new({
    id = id.from(_N, "StartCostEstimationOutput"),
    type = "structure",
})

M.UpdateEventSourcesConfigInput = schema.new({
    id = id.from(_N, "UpdateEventSourcesConfigInput"),
    type = "structure",
    members = {
        EventSources = schema.new({
            id = id.from(_N, "UpdateEventSourcesConfigInput", "EventSources"),
            type = "structure",
            name = "EventSources",
            target_id = id.from(_N, "EventSourcesConfig"),
            target = M.EventSourcesConfig,
        }),
    },
})

M.UpdateEventSourcesConfigOutput = schema.new({
    id = id.from(_N, "UpdateEventSourcesConfigOutput"),
    type = "structure",
})

M.UpdateCloudFormationCollectionFilter = schema.new({
    id = id.from(_N, "UpdateCloudFormationCollectionFilter"),
    type = "structure",
    members = {
        StackNames = schema.new({
            id = id.from(_N, "UpdateCloudFormationCollectionFilter", "StackNames"),
            type = "list",
            name = "StackNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateTagCollectionFilter = schema.new({
    id = id.from(_N, "UpdateTagCollectionFilter"),
    type = "structure",
    members = {
        AppBoundaryKey = schema.new({
            id = id.from(_N, "UpdateTagCollectionFilter", "AppBoundaryKey"),
            type = "string",
            name = "AppBoundaryKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TagValues = schema.new({
            id = id.from(_N, "UpdateTagCollectionFilter", "TagValues"),
            type = "list",
            name = "TagValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateResourceCollectionFilter = schema.new({
    id = id.from(_N, "UpdateResourceCollectionFilter"),
    type = "structure",
    members = {
        CloudFormation = schema.new({
            id = id.from(_N, "UpdateResourceCollectionFilter", "CloudFormation"),
            type = "structure",
            name = "CloudFormation",
            target_id = id.from(_N, "UpdateCloudFormationCollectionFilter"),
            target = M.UpdateCloudFormationCollectionFilter,
        }),
        Tags = schema.new({
            id = id.from(_N, "UpdateResourceCollectionFilter", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.UpdateTagCollectionFilter,
        }),
    },
})

M.UpdateResourceCollectionInput = schema.new({
    id = id.from(_N, "UpdateResourceCollectionInput"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "UpdateResourceCollectionInput", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceCollection = schema.new({
            id = id.from(_N, "UpdateResourceCollectionInput", "ResourceCollection"),
            type = "structure",
            name = "ResourceCollection",
            target_id = id.from(_N, "UpdateResourceCollectionFilter"),
            target = M.UpdateResourceCollectionFilter,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateResourceCollectionOutput = schema.new({
    id = id.from(_N, "UpdateResourceCollectionOutput"),
    type = "structure",
})

M.KMSServerSideEncryptionIntegrationConfig = schema.new({
    id = id.from(_N, "KMSServerSideEncryptionIntegrationConfig"),
    type = "structure",
    members = {
        KMSKeyId = schema.new({
            id = id.from(_N, "KMSServerSideEncryptionIntegrationConfig", "KMSKeyId"),
            type = "string",
            name = "KMSKeyId",
            target_id = prelude.String.id,
        }),
        OptInStatus = schema.new({
            id = id.from(_N, "KMSServerSideEncryptionIntegrationConfig", "OptInStatus"),
            type = "string",
            name = "OptInStatus",
            target_id = prelude.String.id,
        }),
        Type = schema.new({
            id = id.from(_N, "KMSServerSideEncryptionIntegrationConfig", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
    },
})

M.LogsAnomalyDetectionIntegrationConfig = schema.new({
    id = id.from(_N, "LogsAnomalyDetectionIntegrationConfig"),
    type = "structure",
    members = {
        OptInStatus = schema.new({
            id = id.from(_N, "LogsAnomalyDetectionIntegrationConfig", "OptInStatus"),
            type = "string",
            name = "OptInStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.OpsCenterIntegrationConfig = schema.new({
    id = id.from(_N, "OpsCenterIntegrationConfig"),
    type = "structure",
    members = {
        OptInStatus = schema.new({
            id = id.from(_N, "OpsCenterIntegrationConfig", "OptInStatus"),
            type = "string",
            name = "OptInStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateServiceIntegrationConfig = schema.new({
    id = id.from(_N, "UpdateServiceIntegrationConfig"),
    type = "structure",
    members = {
        OpsCenter = schema.new({
            id = id.from(_N, "UpdateServiceIntegrationConfig", "OpsCenter"),
            type = "structure",
            name = "OpsCenter",
            target_id = id.from(_N, "OpsCenterIntegrationConfig"),
            target = M.OpsCenterIntegrationConfig,
        }),
        LogsAnomalyDetection = schema.new({
            id = id.from(_N, "UpdateServiceIntegrationConfig", "LogsAnomalyDetection"),
            type = "structure",
            name = "LogsAnomalyDetection",
            target_id = id.from(_N, "LogsAnomalyDetectionIntegrationConfig"),
            target = M.LogsAnomalyDetectionIntegrationConfig,
        }),
        KMSServerSideEncryption = schema.new({
            id = id.from(_N, "UpdateServiceIntegrationConfig", "KMSServerSideEncryption"),
            type = "structure",
            name = "KMSServerSideEncryption",
            target_id = id.from(_N, "KMSServerSideEncryptionIntegrationConfig"),
            target = M.KMSServerSideEncryptionIntegrationConfig,
        }),
    },
})

M.UpdateServiceIntegrationInput = schema.new({
    id = id.from(_N, "UpdateServiceIntegrationInput"),
    type = "structure",
    members = {
        ServiceIntegration = schema.new({
            id = id.from(_N, "UpdateServiceIntegrationInput", "ServiceIntegration"),
            type = "structure",
            name = "ServiceIntegration",
            target_id = id.from(_N, "UpdateServiceIntegrationConfig"),
            target = M.UpdateServiceIntegrationConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateServiceIntegrationOutput = schema.new({
    id = id.from(_N, "UpdateServiceIntegrationOutput"),
    type = "structure",
})

return M
