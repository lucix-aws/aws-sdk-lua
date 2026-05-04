local M = {}

M.Alias = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Names = {
            type = "list",
            member_type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.AnnotationValue = {
    type = "union",
    members = {
        NumberValue = {
            type = "number",
        },
        BooleanValue = {
            type = "boolean",
        },
        StringValue = {
            type = "string",
        },
    },
}

M.ServiceId = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Names = {
            type = "list",
            member_type = "string",
        },
        AccountId = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.ValueWithServiceIds = {
    type = "structure",
    members = {
        AnnotationValue = {
            type = "union",
        },
        ServiceIds = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AnomalousService = {
    type = "structure",
    members = {
        ServiceId = {
            type = "structure",
        },
    },
}

M.AvailabilityZoneDetail = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.BatchGetTracesInput = {
    type = "structure",
    members = {
        TraceIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Segment = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Document = {
            type = "string",
        },
    },
}

M.Trace = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Duration = {
            type = "number",
        },
        LimitExceeded = {
            type = "boolean",
        },
        Segments = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchGetTracesOutput = {
    type = "structure",
    members = {
        Traces = {
            type = "list",
            member_type = "structure",
        },
        UnprocessedTraceIds = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottledException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CancelTraceRetrievalInput = {
    type = "structure",
    members = {
        RetrievalToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelTraceRetrievalOutput = {
    type = "structure",
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceName = {
            type = "string",
        },
    },
}

M.InsightsConfiguration = {
    type = "structure",
    members = {
        InsightsEnabled = {
            type = "boolean",
        },
        NotificationsEnabled = {
            type = "boolean",
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

M.CreateGroupInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FilterExpression = {
            type = "string",
        },
        InsightsConfiguration = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Group = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
        },
        GroupARN = {
            type = "string",
        },
        FilterExpression = {
            type = "string",
        },
        InsightsConfiguration = {
            type = "structure",
        },
    },
}

M.CreateGroupOutput = {
    type = "structure",
    members = {
        Group = {
            type = "structure",
        },
    },
}

M.SamplingRateBoost = {
    type = "structure",
    members = {
        MaxRate = {
            type = "number",
            traits = {
                required = true,
            },
        },
        CooldownWindowMinutes = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SamplingRule = {
    type = "structure",
    members = {
        RuleName = {
            type = "string",
        },
        RuleARN = {
            type = "string",
        },
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Priority = {
            type = "number",
            traits = {
                required = true,
            },
        },
        FixedRate = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ReservoirSize = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Host = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HTTPMethod = {
            type = "string",
            traits = {
                required = true,
            },
        },
        URLPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Version = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SamplingRateBoost = {
            type = "structure",
        },
    },
}

M.CreateSamplingRuleInput = {
    type = "structure",
    members = {
        SamplingRule = {
            type = "structure",
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

M.SamplingRuleRecord = {
    type = "structure",
    members = {
        SamplingRule = {
            type = "structure",
        },
        CreatedAt = {
            type = "timestamp",
        },
        ModifiedAt = {
            type = "timestamp",
        },
    },
}

M.CreateSamplingRuleOutput = {
    type = "structure",
    members = {
        SamplingRuleRecord = {
            type = "structure",
        },
    },
}

M.RuleLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteGroupInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
        },
        GroupARN = {
            type = "string",
        },
    },
}

M.DeleteGroupOutput = {
    type = "structure",
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    members = {
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyRevisionId = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
}

M.InvalidPolicyRevisionIdException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteSamplingRuleInput = {
    type = "structure",
    members = {
        RuleName = {
            type = "string",
        },
        RuleARN = {
            type = "string",
        },
    },
}

M.DeleteSamplingRuleOutput = {
    type = "structure",
    members = {
        SamplingRuleRecord = {
            type = "structure",
        },
    },
}

M.GetEncryptionConfigInput = {
    type = "structure",
}

M.EncryptionStatus = {
    UPDATING = "UPDATING",
    ACTIVE = "ACTIVE",
}

M.EncryptionType = {
    NONE = "NONE",
    KMS = "KMS",
}

M.EncryptionConfig = {
    type = "structure",
    members = {
        KeyId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Type = {
            type = "string",
        },
    },
}

M.GetEncryptionConfigOutput = {
    type = "structure",
    members = {
        EncryptionConfig = {
            type = "structure",
        },
    },
}

M.GetGroupInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
        },
        GroupARN = {
            type = "string",
        },
    },
}

M.GetGroupOutput = {
    type = "structure",
    members = {
        Group = {
            type = "structure",
        },
    },
}

M.GetGroupsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.GroupSummary = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
        },
        GroupARN = {
            type = "string",
        },
        FilterExpression = {
            type = "string",
        },
        InsightsConfiguration = {
            type = "structure",
        },
    },
}

M.GetGroupsOutput = {
    type = "structure",
    members = {
        Groups = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetIndexingRulesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.ProbabilisticRuleValue = {
    type = "structure",
    members = {
        DesiredSamplingPercentage = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ActualSamplingPercentage = {
            type = "number",
        },
    },
}

M.IndexingRuleValue = {
    type = "union",
    members = {
        Probabilistic = {
            type = "structure",
        },
    },
}

M.IndexingRule = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        ModifiedAt = {
            type = "timestamp",
        },
        Rule = {
            type = "union",
        },
    },
}

M.GetIndexingRulesOutput = {
    type = "structure",
    members = {
        IndexingRules = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetInsightInput = {
    type = "structure",
    members = {
        InsightId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InsightCategory = {
    FAULT = "FAULT",
}

M.RequestImpactStatistics = {
    type = "structure",
    members = {
        FaultCount = {
            type = "number",
        },
        OkCount = {
            type = "number",
        },
        TotalCount = {
            type = "number",
        },
    },
}

M.InsightState = {
    ACTIVE = "ACTIVE",
    CLOSED = "CLOSED",
}

M.Insight = {
    type = "structure",
    members = {
        InsightId = {
            type = "string",
        },
        GroupARN = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
        RootCauseServiceId = {
            type = "structure",
        },
        Categories = {
            type = "list",
            member_type = "string",
        },
        State = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Summary = {
            type = "string",
        },
        ClientRequestImpactStatistics = {
            type = "structure",
        },
        RootCauseServiceRequestImpactStatistics = {
            type = "structure",
        },
        TopAnomalousServices = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetInsightOutput = {
    type = "structure",
    members = {
        Insight = {
            type = "structure",
        },
    },
}

M.GetInsightEventsInput = {
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

M.InsightEvent = {
    type = "structure",
    members = {
        Summary = {
            type = "string",
        },
        EventTime = {
            type = "timestamp",
        },
        ClientRequestImpactStatistics = {
            type = "structure",
        },
        RootCauseServiceRequestImpactStatistics = {
            type = "structure",
        },
        TopAnomalousServices = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetInsightEventsOutput = {
    type = "structure",
    members = {
        InsightEvents = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetInsightImpactGraphInput = {
    type = "structure",
    members = {
        InsightId = {
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
        NextToken = {
            type = "string",
        },
    },
}

M.InsightImpactGraphEdge = {
    type = "structure",
    members = {
        ReferenceId = {
            type = "number",
        },
    },
}

M.InsightImpactGraphService = {
    type = "structure",
    members = {
        ReferenceId = {
            type = "number",
        },
        Type = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Names = {
            type = "list",
            member_type = "string",
        },
        AccountId = {
            type = "string",
        },
        Edges = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetInsightImpactGraphOutput = {
    type = "structure",
    members = {
        InsightId = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        ServiceGraphStartTime = {
            type = "timestamp",
        },
        ServiceGraphEndTime = {
            type = "timestamp",
        },
        Services = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetInsightSummariesInput = {
    type = "structure",
    members = {
        States = {
            type = "list",
            member_type = "string",
        },
        GroupARN = {
            type = "string",
        },
        GroupName = {
            type = "string",
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
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InsightSummary = {
    type = "structure",
    members = {
        InsightId = {
            type = "string",
        },
        GroupARN = {
            type = "string",
        },
        GroupName = {
            type = "string",
        },
        RootCauseServiceId = {
            type = "structure",
        },
        Categories = {
            type = "list",
            member_type = "string",
        },
        State = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Summary = {
            type = "string",
        },
        ClientRequestImpactStatistics = {
            type = "structure",
        },
        RootCauseServiceRequestImpactStatistics = {
            type = "structure",
        },
        TopAnomalousServices = {
            type = "list",
            member_type = "structure",
        },
        LastUpdateTime = {
            type = "timestamp",
        },
    },
}

M.GetInsightSummariesOutput = {
    type = "structure",
    members = {
        InsightSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetRetrievedTracesGraphInput = {
    type = "structure",
    members = {
        RetrievalToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RetrievalStatus = {
    SCHEDULED = "SCHEDULED",
    RUNNING = "RUNNING",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
    TIMEOUT = "TIMEOUT",
}

M.GraphLink = {
    type = "structure",
    members = {
        ReferenceType = {
            type = "string",
        },
        SourceTraceId = {
            type = "string",
        },
        DestinationTraceIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.HistogramEntry = {
    type = "structure",
    members = {
        Value = {
            type = "number",
        },
        Count = {
            type = "number",
        },
    },
}

M.ErrorStatistics = {
    type = "structure",
    members = {
        ThrottleCount = {
            type = "number",
        },
        OtherCount = {
            type = "number",
        },
        TotalCount = {
            type = "number",
        },
    },
}

M.FaultStatistics = {
    type = "structure",
    members = {
        OtherCount = {
            type = "number",
        },
        TotalCount = {
            type = "number",
        },
    },
}

M.EdgeStatistics = {
    type = "structure",
    members = {
        OkCount = {
            type = "number",
        },
        ErrorStatistics = {
            type = "structure",
        },
        FaultStatistics = {
            type = "structure",
        },
        TotalCount = {
            type = "number",
        },
        TotalResponseTime = {
            type = "number",
        },
    },
}

M.Edge = {
    type = "structure",
    members = {
        ReferenceId = {
            type = "number",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        SummaryStatistics = {
            type = "structure",
        },
        ResponseTimeHistogram = {
            type = "list",
            member_type = "structure",
        },
        Aliases = {
            type = "list",
            member_type = "structure",
        },
        EdgeType = {
            type = "string",
        },
        ReceivedEventAgeHistogram = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ServiceStatistics = {
    type = "structure",
    members = {
        OkCount = {
            type = "number",
        },
        ErrorStatistics = {
            type = "structure",
        },
        FaultStatistics = {
            type = "structure",
        },
        TotalCount = {
            type = "number",
        },
        TotalResponseTime = {
            type = "number",
        },
    },
}

M.Service = {
    type = "structure",
    members = {
        ReferenceId = {
            type = "number",
        },
        Name = {
            type = "string",
        },
        Names = {
            type = "list",
            member_type = "string",
        },
        Root = {
            type = "boolean",
        },
        AccountId = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Edges = {
            type = "list",
            member_type = "structure",
        },
        SummaryStatistics = {
            type = "structure",
        },
        DurationHistogram = {
            type = "list",
            member_type = "structure",
        },
        ResponseTimeHistogram = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RetrievedService = {
    type = "structure",
    members = {
        Service = {
            type = "structure",
        },
        Links = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetRetrievedTracesGraphOutput = {
    type = "structure",
    members = {
        RetrievalStatus = {
            type = "string",
        },
        Services = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetSamplingRulesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.GetSamplingRulesOutput = {
    type = "structure",
    members = {
        SamplingRuleRecords = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetSamplingStatisticSummariesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.SamplingStatisticSummary = {
    type = "structure",
    members = {
        RuleName = {
            type = "string",
        },
        Timestamp = {
            type = "timestamp",
        },
        RequestCount = {
            type = "number",
        },
        BorrowCount = {
            type = "number",
        },
        SampledCount = {
            type = "number",
        },
    },
}

M.GetSamplingStatisticSummariesOutput = {
    type = "structure",
    members = {
        SamplingStatisticSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.SamplingBoostStatisticsDocument = {
    type = "structure",
    members = {
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        AnomalyCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        TotalCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        SampledAnomalyCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SamplingStatisticsDocument = {
    type = "structure",
    members = {
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ClientID = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        RequestCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        SampledCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        BorrowCount = {
            type = "number",
        },
    },
}

M.GetSamplingTargetsInput = {
    type = "structure",
    members = {
        SamplingStatisticsDocuments = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        SamplingBoostStatisticsDocuments = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SamplingBoost = {
    type = "structure",
    members = {
        BoostRate = {
            type = "number",
            traits = {
                required = true,
            },
        },
        BoostRateTTL = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.SamplingTargetDocument = {
    type = "structure",
    members = {
        RuleName = {
            type = "string",
        },
        FixedRate = {
            type = "number",
        },
        ReservoirQuota = {
            type = "number",
        },
        ReservoirQuotaTTL = {
            type = "timestamp",
        },
        Interval = {
            type = "number",
        },
        SamplingBoost = {
            type = "structure",
        },
    },
}

M.UnprocessedStatistics = {
    type = "structure",
    members = {
        RuleName = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.GetSamplingTargetsOutput = {
    type = "structure",
    members = {
        SamplingTargetDocuments = {
            type = "list",
            member_type = "structure",
        },
        LastRuleModification = {
            type = "timestamp",
        },
        UnprocessedStatistics = {
            type = "list",
            member_type = "structure",
        },
        UnprocessedBoostStatistics = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetServiceGraphInput = {
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
            traits = {
                required = true,
            },
        },
        GroupName = {
            type = "string",
        },
        GroupARN = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetServiceGraphOutput = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        Services = {
            type = "list",
            member_type = "structure",
        },
        ContainsOldGroupVersions = {
            type = "boolean",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetTimeSeriesServiceStatisticsInput = {
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
            traits = {
                required = true,
            },
        },
        GroupName = {
            type = "string",
        },
        GroupARN = {
            type = "string",
        },
        EntitySelectorExpression = {
            type = "string",
        },
        Period = {
            type = "number",
        },
        ForecastStatistics = {
            type = "boolean",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ForecastStatistics = {
    type = "structure",
    members = {
        FaultCountHigh = {
            type = "number",
        },
        FaultCountLow = {
            type = "number",
        },
    },
}

M.TimeSeriesServiceStatistics = {
    type = "structure",
    members = {
        Timestamp = {
            type = "timestamp",
        },
        EdgeSummaryStatistics = {
            type = "structure",
        },
        ServiceSummaryStatistics = {
            type = "structure",
        },
        ServiceForecastStatistics = {
            type = "structure",
        },
        ResponseTimeHistogram = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetTimeSeriesServiceStatisticsOutput = {
    type = "structure",
    members = {
        TimeSeriesServiceStatistics = {
            type = "list",
            member_type = "structure",
        },
        ContainsOldGroupVersions = {
            type = "boolean",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetTraceGraphInput = {
    type = "structure",
    members = {
        TraceIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetTraceGraphOutput = {
    type = "structure",
    members = {
        Services = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetTraceSegmentDestinationInput = {
    type = "structure",
}

M.TraceSegmentDestination = {
    XRay = "XRay",
    CloudWatchLogs = "CloudWatchLogs",
}

M.TraceSegmentDestinationStatus = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
}

M.GetTraceSegmentDestinationOutput = {
    type = "structure",
    members = {
        Destination = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

M.SamplingStrategyName = {
    PartialScan = "PartialScan",
    FixedRate = "FixedRate",
}

M.SamplingStrategy = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "number",
        },
    },
}

M.TimeRangeType = {
    TraceId = "TraceId",
    Event = "Event",
    Service = "Service",
}

M.GetTraceSummariesInput = {
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
            traits = {
                required = true,
            },
        },
        TimeRangeType = {
            type = "string",
        },
        Sampling = {
            type = "boolean",
        },
        SamplingStrategy = {
            type = "structure",
        },
        FilterExpression = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RootCauseException = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.ErrorRootCauseEntity = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Exceptions = {
            type = "list",
            member_type = "structure",
        },
        Remote = {
            type = "boolean",
        },
    },
}

M.ErrorRootCauseService = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Names = {
            type = "list",
            member_type = "string",
        },
        Type = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        EntityPath = {
            type = "list",
            member_type = "structure",
        },
        Inferred = {
            type = "boolean",
        },
    },
}

M.ErrorRootCause = {
    type = "structure",
    members = {
        Services = {
            type = "list",
            member_type = "structure",
        },
        ClientImpacting = {
            type = "boolean",
        },
    },
}

M.FaultRootCauseEntity = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Exceptions = {
            type = "list",
            member_type = "structure",
        },
        Remote = {
            type = "boolean",
        },
    },
}

M.FaultRootCauseService = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Names = {
            type = "list",
            member_type = "string",
        },
        Type = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        EntityPath = {
            type = "list",
            member_type = "structure",
        },
        Inferred = {
            type = "boolean",
        },
    },
}

M.FaultRootCause = {
    type = "structure",
    members = {
        Services = {
            type = "list",
            member_type = "structure",
        },
        ClientImpacting = {
            type = "boolean",
        },
    },
}

M.Http = {
    type = "structure",
    members = {
        HttpURL = {
            type = "string",
        },
        HttpStatus = {
            type = "number",
        },
        HttpMethod = {
            type = "string",
        },
        UserAgent = {
            type = "string",
        },
        ClientIp = {
            type = "string",
        },
    },
}

M.InstanceIdDetail = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.ResourceARNDetail = {
    type = "structure",
    members = {
        ARN = {
            type = "string",
        },
    },
}

M.ResponseTimeRootCauseEntity = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Coverage = {
            type = "number",
        },
        Remote = {
            type = "boolean",
        },
    },
}

M.ResponseTimeRootCauseService = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Names = {
            type = "list",
            member_type = "string",
        },
        Type = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        EntityPath = {
            type = "list",
            member_type = "structure",
        },
        Inferred = {
            type = "boolean",
        },
    },
}

M.ResponseTimeRootCause = {
    type = "structure",
    members = {
        Services = {
            type = "list",
            member_type = "structure",
        },
        ClientImpacting = {
            type = "boolean",
        },
    },
}

M.TraceUser = {
    type = "structure",
    members = {
        UserName = {
            type = "string",
        },
        ServiceIds = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TraceSummary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        Duration = {
            type = "number",
        },
        ResponseTime = {
            type = "number",
        },
        HasFault = {
            type = "boolean",
        },
        HasError = {
            type = "boolean",
        },
        HasThrottle = {
            type = "boolean",
        },
        IsPartial = {
            type = "boolean",
        },
        Http = {
            type = "structure",
        },
        Annotations = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        Users = {
            type = "list",
            member_type = "structure",
        },
        ServiceIds = {
            type = "list",
            member_type = "structure",
        },
        ResourceARNs = {
            type = "list",
            member_type = "structure",
        },
        InstanceIds = {
            type = "list",
            member_type = "structure",
        },
        AvailabilityZones = {
            type = "list",
            member_type = "structure",
        },
        EntryPoint = {
            type = "structure",
        },
        FaultRootCauses = {
            type = "list",
            member_type = "structure",
        },
        ErrorRootCauses = {
            type = "list",
            member_type = "structure",
        },
        ResponseTimeRootCauses = {
            type = "list",
            member_type = "structure",
        },
        Revision = {
            type = "number",
        },
        MatchedEventTime = {
            type = "timestamp",
        },
    },
}

M.GetTraceSummariesOutput = {
    type = "structure",
    members = {
        TraceSummaries = {
            type = "list",
            member_type = "structure",
        },
        ApproximateTime = {
            type = "timestamp",
        },
        TracesProcessedCount = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourcePoliciesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.ResourcePolicy = {
    type = "structure",
    members = {
        PolicyName = {
            type = "string",
        },
        PolicyDocument = {
            type = "string",
        },
        PolicyRevisionId = {
            type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.ListResourcePoliciesOutput = {
    type = "structure",
    members = {
        ResourcePolicies = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.TraceFormatType = {
    XRAY = "XRAY",
    OTEL = "OTEL",
}

M.ListRetrievedTracesInput = {
    type = "structure",
    members = {
        RetrievalToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TraceFormat = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.Span = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Document = {
            type = "string",
        },
    },
}

M.RetrievedTrace = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Duration = {
            type = "number",
        },
        Spans = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListRetrievedTracesOutput = {
    type = "structure",
    members = {
        RetrievalStatus = {
            type = "string",
        },
        TraceFormat = {
            type = "string",
        },
        Traces = {
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
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
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
        },
        NextToken = {
            type = "string",
        },
    },
}

M.PutEncryptionConfigInput = {
    type = "structure",
    members = {
        KeyId = {
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

M.PutEncryptionConfigOutput = {
    type = "structure",
    members = {
        EncryptionConfig = {
            type = "structure",
        },
    },
}

M.LockoutPreventionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MalformedPolicyDocumentException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PolicyCountLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PolicySizeLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    members = {
        PolicyName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyRevisionId = {
            type = "string",
        },
        BypassPolicyLockoutCheck = {
            type = "boolean",
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    members = {
        ResourcePolicy = {
            type = "structure",
        },
    },
}

M.BackendConnectionErrors = {
    type = "structure",
    members = {
        TimeoutCount = {
            type = "number",
        },
        ConnectionRefusedCount = {
            type = "number",
        },
        HTTPCode4XXCount = {
            type = "number",
        },
        HTTPCode5XXCount = {
            type = "number",
        },
        UnknownHostCount = {
            type = "number",
        },
        OtherCount = {
            type = "number",
        },
    },
}

M.TelemetryRecord = {
    type = "structure",
    members = {
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        SegmentsReceivedCount = {
            type = "number",
        },
        SegmentsSentCount = {
            type = "number",
        },
        SegmentsSpilloverCount = {
            type = "number",
        },
        SegmentsRejectedCount = {
            type = "number",
        },
        BackendConnectionErrors = {
            type = "structure",
        },
    },
}

M.PutTelemetryRecordsInput = {
    type = "structure",
    members = {
        TelemetryRecords = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        EC2InstanceId = {
            type = "string",
        },
        Hostname = {
            type = "string",
        },
        ResourceARN = {
            type = "string",
        },
    },
}

M.PutTelemetryRecordsOutput = {
    type = "structure",
}

M.PutTraceSegmentsInput = {
    type = "structure",
    members = {
        TraceSegmentDocuments = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UnprocessedTraceSegment = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.PutTraceSegmentsOutput = {
    type = "structure",
    members = {
        UnprocessedTraceSegments = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartTraceRetrievalInput = {
    type = "structure",
    members = {
        TraceIds = {
            type = "list",
            member_type = "string",
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
    },
}

M.StartTraceRetrievalOutput = {
    type = "structure",
    members = {
        RetrievalToken = {
            type = "string",
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

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        ResourceName = {
            type = "string",
        },
    },
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

M.UpdateGroupInput = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
        },
        GroupARN = {
            type = "string",
        },
        FilterExpression = {
            type = "string",
        },
        InsightsConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateGroupOutput = {
    type = "structure",
    members = {
        Group = {
            type = "structure",
        },
    },
}

M.ProbabilisticRuleValueUpdate = {
    type = "structure",
    members = {
        DesiredSamplingPercentage = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.IndexingRuleValueUpdate = {
    type = "union",
    members = {
        Probabilistic = {
            type = "structure",
        },
    },
}

M.UpdateIndexingRuleInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rule = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateIndexingRuleOutput = {
    type = "structure",
    members = {
        IndexingRule = {
            type = "structure",
        },
    },
}

M.SamplingRuleUpdate = {
    type = "structure",
    members = {
        RuleName = {
            type = "string",
        },
        RuleARN = {
            type = "string",
        },
        ResourceARN = {
            type = "string",
        },
        Priority = {
            type = "number",
        },
        FixedRate = {
            type = "number",
        },
        ReservoirSize = {
            type = "number",
        },
        Host = {
            type = "string",
        },
        ServiceName = {
            type = "string",
        },
        ServiceType = {
            type = "string",
        },
        HTTPMethod = {
            type = "string",
        },
        URLPath = {
            type = "string",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        SamplingRateBoost = {
            type = "structure",
        },
    },
}

M.UpdateSamplingRuleInput = {
    type = "structure",
    members = {
        SamplingRuleUpdate = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSamplingRuleOutput = {
    type = "structure",
    members = {
        SamplingRuleRecord = {
            type = "structure",
        },
    },
}

M.UpdateTraceSegmentDestinationInput = {
    type = "structure",
    members = {
        Destination = {
            type = "string",
        },
    },
}

M.UpdateTraceSegmentDestinationOutput = {
    type = "structure",
    members = {
        Destination = {
            type = "string",
        },
        Status = {
            type = "string",
        },
    },
}

return M
