local M = {}

M.ActionGroup = {
    AGENT_PERMISSIONS = "agentPermissions",
}

M.EventPublisher = {
    ANOMALY_DETECTION = "AnomalyDetection",
}

M.Channel = {
    type = "structure",
    id = "Channel",
    members = {
        id = {
            type = "string",
        },
        uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventPublishers = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AddNotificationChannelsInput = {
    type = "structure",
    id = "AddNotificationChannelsInput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        channels = {
            type = "list",
            member = M.Channel,
            traits = {
                required = true,
            },
        },
    },
}

M.NotificationConfiguration = {
    type = "structure",
    id = "NotificationConfiguration",
    members = {
        channels = {
            type = "list",
            member = M.Channel,
        },
    },
}

M.AddNotificationChannelsOutput = {
    type = "structure",
    id = "AddNotificationChannelsOutput",
    members = {
        notificationConfiguration = M.NotificationConfiguration,
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
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
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
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
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AgentParameterField = {
    SAMPLING_INTERVAL_IN_MILLISECONDS = "SamplingIntervalInMilliseconds",
    REPORTING_INTERVAL_IN_MILLISECONDS = "ReportingIntervalInMilliseconds",
    MINIMUM_TIME_FOR_REPORTING_IN_MILLISECONDS = "MinimumTimeForReportingInMilliseconds",
    MEMORY_USAGE_LIMIT_PERCENT = "MemoryUsageLimitPercent",
    MAX_STACK_DEPTH = "MaxStackDepth",
}

M.AgentConfiguration = {
    type = "structure",
    id = "AgentConfiguration",
    members = {
        shouldProfile = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        periodInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        agentParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AgentOrchestrationConfig = {
    type = "structure",
    id = "AgentOrchestrationConfig",
    members = {
        profilingEnabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.AggregationPeriod = {
    PT5M = "PT5M",
    PT1H = "PT1H",
    P1D = "P1D",
}

M.AggregatedProfileTime = {
    type = "structure",
    id = "AggregatedProfileTime",
    members = {
        start = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        period = {
            type = "string",
        },
    },
}

M.FeedbackType = {
    Positive = "Positive",
    Negative = "Negative",
}

M.UserFeedback = {
    type = "structure",
    id = "UserFeedback",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AnomalyInstance = {
    type = "structure",
    id = "AnomalyInstance",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        userFeedback = M.UserFeedback,
    },
}

M.MetricType = {
    AggregatedRelativeTotalTime = "AggregatedRelativeTotalTime",
}

M.Metric = {
    type = "structure",
    id = "Metric",
    members = {
        frameName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        threadStates = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Anomaly = {
    type = "structure",
    id = "Anomaly",
    members = {
        metric = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Metric }),
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instances = {
            type = "list",
            member = M.AnomalyInstance,
            traits = {
                required = true,
            },
        },
    },
}

M.FrameMetric = {
    type = "structure",
    id = "FrameMetric",
    members = {
        frameName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        threadStates = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetFrameMetricDataInput = {
    type = "structure",
    id = "BatchGetFrameMetricDataInput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
                timestamp_format = "date-time",
            },
        },
        period = {
            type = "string",
            traits = {
                http_query = "period",
            },
        },
        targetResolution = {
            type = "string",
            traits = {
                http_query = "targetResolution",
            },
        },
        frameMetrics = {
            type = "list",
            member = M.FrameMetric,
        },
    },
}

M.TimestampStructure = {
    type = "structure",
    id = "TimestampStructure",
    members = {
        value = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.FrameMetricDatum = {
    type = "structure",
    id = "FrameMetricDatum",
    members = {
        frameMetric = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FrameMetric }),
        values = {
            type = "list",
            member = { type = "double" },
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetFrameMetricDataOutput = {
    type = "structure",
    id = "BatchGetFrameMetricDataOutput",
    members = {
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        resolution = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endTimes = {
            type = "list",
            member = M.TimestampStructure,
            traits = {
                required = true,
            },
        },
        unprocessedEndTimes = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                required = true,
            },
        },
        frameMetricData = {
            type = "list",
            member = M.FrameMetricDatum,
            traits = {
                required = true,
            },
        },
    },
}

M.GetFindingsReportAccountSummaryInput = {
    type = "structure",
    id = "GetFindingsReportAccountSummaryInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        dailyReportsOnly = {
            type = "boolean",
            traits = {
                http_query = "dailyReportsOnly",
            },
        },
    },
}

M.FindingsReportSummary = {
    type = "structure",
    id = "FindingsReportSummary",
    members = {
        id = {
            type = "string",
        },
        profilingGroupName = {
            type = "string",
        },
        profileStartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        profileEndTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        totalNumberOfFindings = {
            type = "integer",
        },
    },
}

M.GetFindingsReportAccountSummaryOutput = {
    type = "structure",
    id = "GetFindingsReportAccountSummaryOutput",
    members = {
        reportSummaries = {
            type = "list",
            member = M.FindingsReportSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.MetadataField = {
    COMPUTE_PLATFORM = "ComputePlatform",
    AGENT_ID = "AgentId",
    AWS_REQUEST_ID = "AwsRequestId",
    EXECUTION_ENVIRONMENT = "ExecutionEnvironment",
    LAMBDA_FUNCTION_ARN = "LambdaFunctionArn",
    LAMBDA_MEMORY_LIMIT_IN_MB = "LambdaMemoryLimitInMB",
    LAMBDA_REMAINING_TIME_IN_MILLISECONDS = "LambdaRemainingTimeInMilliseconds",
    LAMBDA_TIME_GAP_BETWEEN_INVOKES_IN_MILLISECONDS = "LambdaTimeGapBetweenInvokesInMilliseconds",
    LAMBDA_PREVIOUS_EXECUTION_TIME_IN_MILLISECONDS = "LambdaPreviousExecutionTimeInMilliseconds",
}

M.ConfigureAgentInput = {
    type = "structure",
    id = "ConfigureAgentInput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetInstanceId = {
            type = "string",
        },
        metadata = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ConfigureAgentOutput = {
    type = "structure",
    id = "ConfigureAgentOutput",
    members = {
        configuration = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.AgentConfiguration }),
    },
}

M.ComputePlatform = {
    DEFAULT = "Default",
    AWSLAMBDA = "AWSLambda",
}

M.CreateProfilingGroupInput = {
    type = "structure",
    id = "CreateProfilingGroupInput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        computePlatform = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                http_query = "clientToken",
                idempotency_token = true,
                required = true,
            },
        },
        agentOrchestrationConfig = M.AgentOrchestrationConfig,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ProfilingStatus = {
    type = "structure",
    id = "ProfilingStatus",
    members = {
        latestAgentProfileReportedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        latestAggregatedProfile = M.AggregatedProfileTime,
        latestAgentOrchestratedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ProfilingGroupDescription = {
    type = "structure",
    id = "ProfilingGroupDescription",
    members = {
        name = {
            type = "string",
        },
        agentOrchestrationConfig = M.AgentOrchestrationConfig,
        arn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        profilingStatus = M.ProfilingStatus,
        computePlatform = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateProfilingGroupOutput = {
    type = "structure",
    id = "CreateProfilingGroupOutput",
    members = {
        profilingGroup = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ProfilingGroupDescription }),
    },
}

M.DeleteProfilingGroupInput = {
    type = "structure",
    id = "DeleteProfilingGroupInput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteProfilingGroupOutput = {
    type = "structure",
    id = "DeleteProfilingGroupOutput",
}

M.DescribeProfilingGroupInput = {
    type = "structure",
    id = "DescribeProfilingGroupInput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeProfilingGroupOutput = {
    type = "structure",
    id = "DescribeProfilingGroupOutput",
    members = {
        profilingGroup = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ProfilingGroupDescription }),
    },
}

M.GetNotificationConfigurationInput = {
    type = "structure",
    id = "GetNotificationConfigurationInput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetNotificationConfigurationOutput = {
    type = "structure",
    id = "GetNotificationConfigurationOutput",
    members = {
        notificationConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NotificationConfiguration }),
    },
}

M.GetPolicyInput = {
    type = "structure",
    id = "GetPolicyInput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetPolicyOutput = {
    type = "structure",
    id = "GetPolicyOutput",
    members = {
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetProfileInput = {
    type = "structure",
    id = "GetProfileInput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
                timestamp_format = "date-time",
            },
        },
        period = {
            type = "string",
            traits = {
                http_query = "period",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
                timestamp_format = "date-time",
            },
        },
        maxDepth = {
            type = "integer",
            traits = {
                http_query = "maxDepth",
            },
        },
        accept = {
            type = "string",
            traits = {
                http_header = "Accept",
            },
        },
    },
}

M.GetProfileOutput = {
    type = "structure",
    id = "GetProfileOutput",
    members = {
        profile = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
                required = true,
            },
        },
        contentEncoding = {
            type = "string",
            traits = {
                http_header = "Content-Encoding",
            },
        },
    },
}

M.GetRecommendationsInput = {
    type = "structure",
    id = "GetRecommendationsInput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
                required = true,
                timestamp_format = "date-time",
            },
        },
        locale = {
            type = "string",
            traits = {
                http_query = "locale",
            },
        },
    },
}

M.Pattern = {
    type = "structure",
    id = "Pattern",
    members = {
        id = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        resolutionSteps = {
            type = "string",
        },
        targetFrames = {
            type = "list",
            member = { type = "list" },
        },
        thresholdPercent = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        countersToAggregate = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Match = {
    type = "structure",
    id = "Match",
    members = {
        targetFramesIndex = {
            type = "integer",
        },
        frameAddress = {
            type = "string",
        },
        thresholdBreachValue = {
            type = "double",
        },
    },
}

M.Recommendation = {
    type = "structure",
    id = "Recommendation",
    members = {
        allMatchesCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        allMatchesSum = {
            type = "double",
            traits = {
                required = true,
            },
        },
        pattern = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Pattern }),
        topMatches = {
            type = "list",
            member = M.Match,
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.GetRecommendationsOutput = {
    type = "structure",
    id = "GetRecommendationsOutput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        profileStartTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        profileEndTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        recommendations = {
            type = "list",
            member = M.Recommendation,
            traits = {
                required = true,
            },
        },
        anomalies = {
            type = "list",
            member = M.Anomaly,
            traits = {
                required = true,
            },
        },
    },
}

M.ListFindingsReportsInput = {
    type = "structure",
    id = "ListFindingsReportsInput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
                required = true,
                timestamp_format = "date-time",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        dailyReportsOnly = {
            type = "boolean",
            traits = {
                http_query = "dailyReportsOnly",
            },
        },
    },
}

M.ListFindingsReportsOutput = {
    type = "structure",
    id = "ListFindingsReportsOutput",
    members = {
        findingsReportSummaries = {
            type = "list",
            member = M.FindingsReportSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.OrderBy = {
    TIMESTAMP_DESCENDING = "TimestampDescending",
    TIMESTAMP_ASCENDING = "TimestampAscending",
}

M.ListProfileTimesInput = {
    type = "structure",
    id = "ListProfileTimesInput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                http_query = "startTime",
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
                required = true,
                timestamp_format = "date-time",
            },
        },
        period = {
            type = "string",
            traits = {
                http_query = "period",
                required = true,
            },
        },
        orderBy = {
            type = "string",
            traits = {
                http_query = "orderBy",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.ProfileTime = {
    type = "structure",
    id = "ProfileTime",
    members = {
        start = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListProfileTimesOutput = {
    type = "structure",
    id = "ListProfileTimesOutput",
    members = {
        profileTimes = {
            type = "list",
            member = M.ProfileTime,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListProfilingGroupsInput = {
    type = "structure",
    id = "ListProfilingGroupsInput",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        includeDescription = {
            type = "boolean",
            traits = {
                http_query = "includeDescription",
            },
        },
    },
}

M.ListProfilingGroupsOutput = {
    type = "structure",
    id = "ListProfilingGroupsOutput",
    members = {
        profilingGroupNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        profilingGroups = {
            type = "list",
            member = M.ProfilingGroupDescription,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PostAgentProfileInput = {
    type = "structure",
    id = "PostAgentProfileInput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentProfile = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        profileToken = {
            type = "string",
            traits = {
                http_query = "profileToken",
                idempotency_token = true,
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
                required = true,
            },
        },
    },
}

M.PostAgentProfileOutput = {
    type = "structure",
    id = "PostAgentProfileOutput",
}

M.PutPermissionInput = {
    type = "structure",
    id = "PutPermissionInput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        actionGroup = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principals = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        revisionId = {
            type = "string",
        },
    },
}

M.PutPermissionOutput = {
    type = "structure",
    id = "PutPermissionOutput",
    members = {
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveNotificationChannelInput = {
    type = "structure",
    id = "RemoveNotificationChannelInput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        channelId = {
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
    members = {
        notificationConfiguration = M.NotificationConfiguration,
    },
}

M.RemovePermissionInput = {
    type = "structure",
    id = "RemovePermissionInput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        actionGroup = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        revisionId = {
            type = "string",
            traits = {
                http_query = "revisionId",
                required = true,
            },
        },
    },
}

M.RemovePermissionOutput = {
    type = "structure",
    id = "RemovePermissionOutput",
    members = {
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SubmitFeedbackInput = {
    type = "structure",
    id = "SubmitFeedbackInput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        anomalyInstanceId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        comment = {
            type = "string",
        },
    },
}

M.SubmitFeedbackOutput = {
    type = "structure",
    id = "SubmitFeedbackOutput",
}

M.UpdateProfilingGroupInput = {
    type = "structure",
    id = "UpdateProfilingGroupInput",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentOrchestrationConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AgentOrchestrationConfig }),
    },
}

M.UpdateProfilingGroupOutput = {
    type = "structure",
    id = "UpdateProfilingGroupOutput",
    members = {
        profilingGroup = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.ProfilingGroupDescription }),
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

return M
