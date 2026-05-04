local M = {}

M.ActionGroup = {
    AGENT_PERMISSIONS = "agentPermissions",
}

M.EventPublisher = {
    ANOMALY_DETECTION = "AnomalyDetection",
}

M.Channel = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AddNotificationChannelsInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.NotificationConfiguration = {
    type = "structure",
    members = {
        channels = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AddNotificationChannelsOutput = {
    type = "structure",
    members = {
        notificationConfiguration = {
            type = "structure",
        },
    },
}

M.ConflictException = {
    type = "structure",
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
    members = {
        shouldProfile = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        periodInSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        agentParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.AgentOrchestrationConfig = {
    type = "structure",
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
    members = {
        start = {
            type = "timestamp",
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
            },
        },
        endTime = {
            type = "timestamp",
        },
        userFeedback = {
            type = "structure",
        },
    },
}

M.MetricType = {
    AggregatedRelativeTotalTime = "AggregatedRelativeTotalTime",
}

M.Metric = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Anomaly = {
    type = "structure",
    members = {
        metric = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        instances = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FrameMetric = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetFrameMetricDataInput = {
    type = "structure",
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
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
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
            member_type = "structure",
        },
    },
}

M.TimestampStructure = {
    type = "structure",
    members = {
        value = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.FrameMetricDatum = {
    type = "structure",
    members = {
        frameMetric = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetFrameMetricDataOutput = {
    type = "structure",
    members = {
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        unprocessedEndTimes = {
            type = "map",
            key_type = "string",
            value_type = "list",
            traits = {
                required = true,
            },
        },
        frameMetricData = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFindingsReportAccountSummaryInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        id = {
            type = "string",
        },
        profilingGroupName = {
            type = "string",
        },
        profileStartTime = {
            type = "timestamp",
        },
        profileEndTime = {
            type = "timestamp",
        },
        totalNumberOfFindings = {
            type = "number",
        },
    },
}

M.GetFindingsReportAccountSummaryOutput = {
    type = "structure",
    members = {
        reportSummaries = {
            type = "list",
            member_type = "structure",
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
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ConfigureAgentOutput = {
    type = "structure",
    members = {
        configuration = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.ComputePlatform = {
    DEFAULT = "Default",
    AWSLAMBDA = "AWSLambda",
}

M.CreateProfilingGroupInput = {
    type = "structure",
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
                required = true,
            },
        },
        agentOrchestrationConfig = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ProfilingStatus = {
    type = "structure",
    members = {
        latestAgentProfileReportedAt = {
            type = "timestamp",
        },
        latestAggregatedProfile = {
            type = "structure",
        },
        latestAgentOrchestratedAt = {
            type = "timestamp",
        },
    },
}

M.ProfilingGroupDescription = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        agentOrchestrationConfig = {
            type = "structure",
        },
        arn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        profilingStatus = {
            type = "structure",
        },
        computePlatform = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateProfilingGroupOutput = {
    type = "structure",
    members = {
        profilingGroup = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.DeleteProfilingGroupInput = {
    type = "structure",
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
}

M.DescribeProfilingGroupInput = {
    type = "structure",
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
    members = {
        profilingGroup = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetNotificationConfigurationInput = {
    type = "structure",
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
    members = {
        notificationConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetPolicyInput = {
    type = "structure",
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
            },
        },
        maxDepth = {
            type = "number",
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
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
                required = true,
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
            member_type = "list",
        },
        thresholdPercent = {
            type = "number",
        },
        countersToAggregate = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Match = {
    type = "structure",
    members = {
        targetFramesIndex = {
            type = "number",
        },
        frameAddress = {
            type = "string",
        },
        thresholdBreachValue = {
            type = "number",
        },
    },
}

M.Recommendation = {
    type = "structure",
    members = {
        allMatchesCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        allMatchesSum = {
            type = "number",
            traits = {
                required = true,
            },
        },
        pattern = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        topMatches = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetRecommendationsOutput = {
    type = "structure",
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
            },
        },
        profileEndTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        recommendations = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        anomalies = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFindingsReportsInput = {
    type = "structure",
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
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        findingsReportSummaries = {
            type = "list",
            member_type = "structure",
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
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                http_query = "endTime",
                required = true,
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
            type = "number",
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
    members = {
        start = {
            type = "timestamp",
        },
    },
}

M.ListProfileTimesOutput = {
    type = "structure",
    members = {
        profileTimes = {
            type = "list",
            member_type = "structure",
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
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "number",
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
    members = {
        profilingGroupNames = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        profilingGroups = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PostAgentProfileInput = {
    type = "structure",
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
}

M.PutPermissionInput = {
    type = "structure",
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
            member_type = "string",
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
    members = {
        notificationConfiguration = {
            type = "structure",
        },
    },
}

M.RemovePermissionInput = {
    type = "structure",
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
}

M.UpdateProfilingGroupInput = {
    type = "structure",
    members = {
        profilingGroupName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        agentOrchestrationConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateProfilingGroupOutput = {
    type = "structure",
    members = {
        profilingGroup = {
            type = "structure",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

return M
