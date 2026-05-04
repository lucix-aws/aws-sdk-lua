local M = {}

M.Alias = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Names = {
            type = "list",
            member = { type = "string" },
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
            type = "double",
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
            member = { type = "string" },
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
        AnnotationValue = M.AnnotationValue,
        ServiceIds = {
            type = "list",
            member = M.ServiceId,
        },
    },
}

M.AnomalousService = {
    type = "structure",
    members = {
        ServiceId = M.ServiceId,
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
            member = { type = "string" },
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
            type = "double",
        },
        LimitExceeded = {
            type = "boolean",
        },
        Segments = {
            type = "list",
            member = M.Segment,
        },
    },
}

M.BatchGetTracesOutput = {
    type = "structure",
    members = {
        Traces = {
            type = "list",
            member = M.Trace,
        },
        UnprocessedTraceIds = {
            type = "list",
            member = { type = "string" },
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
        InsightsConfiguration = M.InsightsConfiguration,
        Tags = {
            type = "list",
            member = M.Tag,
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
        InsightsConfiguration = M.InsightsConfiguration,
    },
}

M.CreateGroupOutput = {
    type = "structure",
    members = {
        Group = M.Group,
    },
}

M.SamplingRateBoost = {
    type = "structure",
    members = {
        MaxRate = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        CooldownWindowMinutes = {
            type = "integer",
            traits = {
                default = 0,
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        FixedRate = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        ReservoirSize = {
            type = "integer",
            traits = {
                default = 0,
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        SamplingRateBoost = M.SamplingRateBoost,
    },
}

M.CreateSamplingRuleInput = {
    type = "structure",
    members = {
        SamplingRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SamplingRule }),
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.SamplingRuleRecord = {
    type = "structure",
    members = {
        SamplingRule = M.SamplingRule,
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
        SamplingRuleRecord = M.SamplingRuleRecord,
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
        SamplingRuleRecord = M.SamplingRuleRecord,
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
        EncryptionConfig = M.EncryptionConfig,
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
        Group = M.Group,
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
        InsightsConfiguration = M.InsightsConfiguration,
    },
}

M.GetGroupsOutput = {
    type = "structure",
    members = {
        Groups = {
            type = "list",
            member = M.GroupSummary,
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
            type = "double",
            traits = {
                required = true,
            },
        },
        ActualSamplingPercentage = {
            type = "double",
        },
    },
}

M.IndexingRuleValue = {
    type = "union",
    members = {
        Probabilistic = M.ProbabilisticRuleValue,
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
        Rule = M.IndexingRuleValue,
    },
}

M.GetIndexingRulesOutput = {
    type = "structure",
    members = {
        IndexingRules = {
            type = "list",
            member = M.IndexingRule,
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
            type = "long",
        },
        OkCount = {
            type = "long",
        },
        TotalCount = {
            type = "long",
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
        RootCauseServiceId = M.ServiceId,
        Categories = {
            type = "list",
            member = { type = "string" },
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
        ClientRequestImpactStatistics = M.RequestImpactStatistics,
        RootCauseServiceRequestImpactStatistics = M.RequestImpactStatistics,
        TopAnomalousServices = {
            type = "list",
            member = M.AnomalousService,
        },
    },
}

M.GetInsightOutput = {
    type = "structure",
    members = {
        Insight = M.Insight,
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
            type = "integer",
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
        ClientRequestImpactStatistics = M.RequestImpactStatistics,
        RootCauseServiceRequestImpactStatistics = M.RequestImpactStatistics,
        TopAnomalousServices = {
            type = "list",
            member = M.AnomalousService,
        },
    },
}

M.GetInsightEventsOutput = {
    type = "structure",
    members = {
        InsightEvents = {
            type = "list",
            member = M.InsightEvent,
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
            type = "integer",
        },
    },
}

M.InsightImpactGraphService = {
    type = "structure",
    members = {
        ReferenceId = {
            type = "integer",
        },
        Type = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Names = {
            type = "list",
            member = { type = "string" },
        },
        AccountId = {
            type = "string",
        },
        Edges = {
            type = "list",
            member = M.InsightImpactGraphEdge,
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
            member = M.InsightImpactGraphService,
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
            member = { type = "string" },
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
            type = "integer",
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
        RootCauseServiceId = M.ServiceId,
        Categories = {
            type = "list",
            member = { type = "string" },
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
        ClientRequestImpactStatistics = M.RequestImpactStatistics,
        RootCauseServiceRequestImpactStatistics = M.RequestImpactStatistics,
        TopAnomalousServices = {
            type = "list",
            member = M.AnomalousService,
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
            member = M.InsightSummary,
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
            member = { type = "string" },
        },
    },
}

M.HistogramEntry = {
    type = "structure",
    members = {
        Value = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Count = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ErrorStatistics = {
    type = "structure",
    members = {
        ThrottleCount = {
            type = "long",
        },
        OtherCount = {
            type = "long",
        },
        TotalCount = {
            type = "long",
        },
    },
}

M.FaultStatistics = {
    type = "structure",
    members = {
        OtherCount = {
            type = "long",
        },
        TotalCount = {
            type = "long",
        },
    },
}

M.EdgeStatistics = {
    type = "structure",
    members = {
        OkCount = {
            type = "long",
        },
        ErrorStatistics = M.ErrorStatistics,
        FaultStatistics = M.FaultStatistics,
        TotalCount = {
            type = "long",
        },
        TotalResponseTime = {
            type = "double",
        },
    },
}

M.Edge = {
    type = "structure",
    members = {
        ReferenceId = {
            type = "integer",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        SummaryStatistics = M.EdgeStatistics,
        ResponseTimeHistogram = {
            type = "list",
            member = M.HistogramEntry,
        },
        Aliases = {
            type = "list",
            member = M.Alias,
        },
        EdgeType = {
            type = "string",
        },
        ReceivedEventAgeHistogram = {
            type = "list",
            member = M.HistogramEntry,
        },
    },
}

M.ServiceStatistics = {
    type = "structure",
    members = {
        OkCount = {
            type = "long",
        },
        ErrorStatistics = M.ErrorStatistics,
        FaultStatistics = M.FaultStatistics,
        TotalCount = {
            type = "long",
        },
        TotalResponseTime = {
            type = "double",
        },
    },
}

M.Service = {
    type = "structure",
    members = {
        ReferenceId = {
            type = "integer",
        },
        Name = {
            type = "string",
        },
        Names = {
            type = "list",
            member = { type = "string" },
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
            member = M.Edge,
        },
        SummaryStatistics = M.ServiceStatistics,
        DurationHistogram = {
            type = "list",
            member = M.HistogramEntry,
        },
        ResponseTimeHistogram = {
            type = "list",
            member = M.HistogramEntry,
        },
    },
}

M.RetrievedService = {
    type = "structure",
    members = {
        Service = M.Service,
        Links = {
            type = "list",
            member = M.GraphLink,
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
            member = M.RetrievedService,
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
            member = M.SamplingRuleRecord,
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
            type = "integer",
            traits = {
                default = 0,
            },
        },
        BorrowCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        SampledCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetSamplingStatisticSummariesOutput = {
    type = "structure",
    members = {
        SamplingStatisticSummaries = {
            type = "list",
            member = M.SamplingStatisticSummary,
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
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        TotalCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        SampledAnomalyCount = {
            type = "integer",
            traits = {
                default = 0,
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
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        SampledCount = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        BorrowCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.GetSamplingTargetsInput = {
    type = "structure",
    members = {
        SamplingStatisticsDocuments = {
            type = "list",
            member = M.SamplingStatisticsDocument,
            traits = {
                required = true,
            },
        },
        SamplingBoostStatisticsDocuments = {
            type = "list",
            member = M.SamplingBoostStatisticsDocument,
        },
    },
}

M.SamplingBoost = {
    type = "structure",
    members = {
        BoostRate = {
            type = "double",
            traits = {
                default = 0,
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
            type = "double",
            traits = {
                default = 0,
            },
        },
        ReservoirQuota = {
            type = "integer",
        },
        ReservoirQuotaTTL = {
            type = "timestamp",
        },
        Interval = {
            type = "integer",
        },
        SamplingBoost = M.SamplingBoost,
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
            member = M.SamplingTargetDocument,
        },
        LastRuleModification = {
            type = "timestamp",
        },
        UnprocessedStatistics = {
            type = "list",
            member = M.UnprocessedStatistics,
        },
        UnprocessedBoostStatistics = {
            type = "list",
            member = M.UnprocessedStatistics,
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
            member = M.Service,
        },
        ContainsOldGroupVersions = {
            type = "boolean",
            traits = {
                default = false,
            },
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
            type = "integer",
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
            type = "long",
        },
        FaultCountLow = {
            type = "long",
        },
    },
}

M.TimeSeriesServiceStatistics = {
    type = "structure",
    members = {
        Timestamp = {
            type = "timestamp",
        },
        EdgeSummaryStatistics = M.EdgeStatistics,
        ServiceSummaryStatistics = M.ServiceStatistics,
        ServiceForecastStatistics = M.ForecastStatistics,
        ResponseTimeHistogram = {
            type = "list",
            member = M.HistogramEntry,
        },
    },
}

M.GetTimeSeriesServiceStatisticsOutput = {
    type = "structure",
    members = {
        TimeSeriesServiceStatistics = {
            type = "list",
            member = M.TimeSeriesServiceStatistics,
        },
        ContainsOldGroupVersions = {
            type = "boolean",
            traits = {
                default = false,
            },
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
            member = { type = "string" },
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
            member = M.Service,
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
            type = "double",
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
        SamplingStrategy = M.SamplingStrategy,
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
            member = M.RootCauseException,
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
            member = { type = "string" },
        },
        Type = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        EntityPath = {
            type = "list",
            member = M.ErrorRootCauseEntity,
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
            member = M.ErrorRootCauseService,
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
            member = M.RootCauseException,
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
            member = { type = "string" },
        },
        Type = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        EntityPath = {
            type = "list",
            member = M.FaultRootCauseEntity,
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
            member = M.FaultRootCauseService,
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
            type = "integer",
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
            type = "double",
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
            member = { type = "string" },
        },
        Type = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        EntityPath = {
            type = "list",
            member = M.ResponseTimeRootCauseEntity,
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
            member = M.ResponseTimeRootCauseService,
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
            member = M.ServiceId,
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
            type = "double",
        },
        ResponseTime = {
            type = "double",
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
        Http = M.Http,
        Annotations = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        Users = {
            type = "list",
            member = M.TraceUser,
        },
        ServiceIds = {
            type = "list",
            member = M.ServiceId,
        },
        ResourceARNs = {
            type = "list",
            member = M.ResourceARNDetail,
        },
        InstanceIds = {
            type = "list",
            member = M.InstanceIdDetail,
        },
        AvailabilityZones = {
            type = "list",
            member = M.AvailabilityZoneDetail,
        },
        EntryPoint = M.ServiceId,
        FaultRootCauses = {
            type = "list",
            member = M.FaultRootCause,
        },
        ErrorRootCauses = {
            type = "list",
            member = M.ErrorRootCause,
        },
        ResponseTimeRootCauses = {
            type = "list",
            member = M.ResponseTimeRootCause,
        },
        Revision = {
            type = "integer",
            traits = {
                default = 0,
            },
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
            member = M.TraceSummary,
        },
        ApproximateTime = {
            type = "timestamp",
        },
        TracesProcessedCount = {
            type = "long",
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
            member = M.ResourcePolicy,
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
            type = "double",
        },
        Spans = {
            type = "list",
            member = M.Span,
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
            member = M.RetrievedTrace,
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
            member = M.Tag,
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
        EncryptionConfig = M.EncryptionConfig,
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
            traits = {
                default = false,
            },
        },
    },
}

M.PutResourcePolicyOutput = {
    type = "structure",
    members = {
        ResourcePolicy = M.ResourcePolicy,
    },
}

M.BackendConnectionErrors = {
    type = "structure",
    members = {
        TimeoutCount = {
            type = "integer",
        },
        ConnectionRefusedCount = {
            type = "integer",
        },
        HTTPCode4XXCount = {
            type = "integer",
        },
        HTTPCode5XXCount = {
            type = "integer",
        },
        UnknownHostCount = {
            type = "integer",
        },
        OtherCount = {
            type = "integer",
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
            type = "integer",
        },
        SegmentsSentCount = {
            type = "integer",
        },
        SegmentsSpilloverCount = {
            type = "integer",
        },
        SegmentsRejectedCount = {
            type = "integer",
        },
        BackendConnectionErrors = M.BackendConnectionErrors,
    },
}

M.PutTelemetryRecordsInput = {
    type = "structure",
    members = {
        TelemetryRecords = {
            type = "list",
            member = M.TelemetryRecord,
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
            member = { type = "string" },
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
            member = M.UnprocessedTraceSegment,
        },
    },
}

M.StartTraceRetrievalInput = {
    type = "structure",
    members = {
        TraceIds = {
            type = "list",
            member = { type = "string" },
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
        InsightsConfiguration = M.InsightsConfiguration,
    },
}

M.UpdateGroupOutput = {
    type = "structure",
    members = {
        Group = M.Group,
    },
}

M.ProbabilisticRuleValueUpdate = {
    type = "structure",
    members = {
        DesiredSamplingPercentage = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.IndexingRuleValueUpdate = {
    type = "union",
    members = {
        Probabilistic = M.ProbabilisticRuleValueUpdate,
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
        Rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IndexingRuleValueUpdate }),
    },
}

M.UpdateIndexingRuleOutput = {
    type = "structure",
    members = {
        IndexingRule = M.IndexingRule,
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
            type = "integer",
        },
        FixedRate = {
            type = "double",
        },
        ReservoirSize = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        SamplingRateBoost = M.SamplingRateBoost,
    },
}

M.UpdateSamplingRuleInput = {
    type = "structure",
    members = {
        SamplingRuleUpdate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SamplingRuleUpdate }),
    },
}

M.UpdateSamplingRuleOutput = {
    type = "structure",
    members = {
        SamplingRuleRecord = M.SamplingRuleRecord,
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
