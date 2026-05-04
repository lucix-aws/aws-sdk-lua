local M = {}

M.Alias = {
    type = "structure",
    id = "Alias",
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
    id = "AnnotationValue",
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
    id = "ServiceId",
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
    id = "ValueWithServiceIds",
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
    id = "AnomalousService",
    members = {
        ServiceId = M.ServiceId,
    },
}

M.AvailabilityZoneDetail = {
    type = "structure",
    id = "AvailabilityZoneDetail",
    members = {
        Name = {
            type = "string",
        },
    },
}

M.BatchGetTracesInput = {
    type = "structure",
    id = "BatchGetTracesInput",
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
    id = "Segment",
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
    id = "Trace",
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
    id = "BatchGetTracesOutput",
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
    id = "InvalidRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottledException = {
    type = "structure",
    id = "ThrottledException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CancelTraceRetrievalInput = {
    type = "structure",
    id = "CancelTraceRetrievalInput",
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
    id = "CancelTraceRetrievalOutput",
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
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
    id = "InsightsConfiguration",
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

M.CreateGroupInput = {
    type = "structure",
    id = "CreateGroupInput",
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
    id = "Group",
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
    id = "CreateGroupOutput",
    members = {
        Group = M.Group,
    },
}

M.SamplingRateBoost = {
    type = "structure",
    id = "SamplingRateBoost",
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
    id = "SamplingRule",
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
    id = "CreateSamplingRuleInput",
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
    id = "SamplingRuleRecord",
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
    id = "CreateSamplingRuleOutput",
    members = {
        SamplingRuleRecord = M.SamplingRuleRecord,
    },
}

M.RuleLimitExceededException = {
    type = "structure",
    id = "RuleLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteGroupInput = {
    type = "structure",
    id = "DeleteGroupInput",
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
    id = "DeleteGroupOutput",
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
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
    id = "DeleteResourcePolicyOutput",
}

M.InvalidPolicyRevisionIdException = {
    type = "structure",
    id = "InvalidPolicyRevisionIdException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteSamplingRuleInput = {
    type = "structure",
    id = "DeleteSamplingRuleInput",
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
    id = "DeleteSamplingRuleOutput",
    members = {
        SamplingRuleRecord = M.SamplingRuleRecord,
    },
}

M.GetEncryptionConfigInput = {
    type = "structure",
    id = "GetEncryptionConfigInput",
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
    id = "EncryptionConfig",
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
    id = "GetEncryptionConfigOutput",
    members = {
        EncryptionConfig = M.EncryptionConfig,
    },
}

M.GetGroupInput = {
    type = "structure",
    id = "GetGroupInput",
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
    id = "GetGroupOutput",
    members = {
        Group = M.Group,
    },
}

M.GetGroupsInput = {
    type = "structure",
    id = "GetGroupsInput",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.GroupSummary = {
    type = "structure",
    id = "GroupSummary",
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
    id = "GetGroupsOutput",
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
    id = "GetIndexingRulesInput",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.ProbabilisticRuleValue = {
    type = "structure",
    id = "ProbabilisticRuleValue",
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
    id = "IndexingRuleValue",
    members = {
        Probabilistic = M.ProbabilisticRuleValue,
    },
}

M.IndexingRule = {
    type = "structure",
    id = "IndexingRule",
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
    id = "GetIndexingRulesOutput",
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
    id = "GetInsightInput",
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
    id = "RequestImpactStatistics",
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
    id = "Insight",
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
    id = "GetInsightOutput",
    members = {
        Insight = M.Insight,
    },
}

M.GetInsightEventsInput = {
    type = "structure",
    id = "GetInsightEventsInput",
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
    id = "InsightEvent",
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
    id = "GetInsightEventsOutput",
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
    id = "GetInsightImpactGraphInput",
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
    id = "InsightImpactGraphEdge",
    members = {
        ReferenceId = {
            type = "integer",
        },
    },
}

M.InsightImpactGraphService = {
    type = "structure",
    id = "InsightImpactGraphService",
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
    id = "GetInsightImpactGraphOutput",
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
    id = "GetInsightSummariesInput",
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
    id = "InsightSummary",
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
    id = "GetInsightSummariesOutput",
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
    id = "GetRetrievedTracesGraphInput",
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
    id = "GraphLink",
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
    id = "HistogramEntry",
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
    id = "ErrorStatistics",
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
    id = "FaultStatistics",
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
    id = "EdgeStatistics",
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
    id = "Edge",
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
    id = "ServiceStatistics",
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
    id = "Service",
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
    id = "RetrievedService",
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
    id = "GetRetrievedTracesGraphOutput",
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
    id = "GetSamplingRulesInput",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.GetSamplingRulesOutput = {
    type = "structure",
    id = "GetSamplingRulesOutput",
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
    id = "GetSamplingStatisticSummariesInput",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.SamplingStatisticSummary = {
    type = "structure",
    id = "SamplingStatisticSummary",
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
    id = "GetSamplingStatisticSummariesOutput",
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
    id = "SamplingBoostStatisticsDocument",
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
    id = "SamplingStatisticsDocument",
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
    id = "GetSamplingTargetsInput",
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
    id = "SamplingBoost",
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
    id = "SamplingTargetDocument",
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
    id = "UnprocessedStatistics",
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
    id = "GetSamplingTargetsOutput",
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
    id = "GetServiceGraphInput",
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
    id = "GetServiceGraphOutput",
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
    id = "GetTimeSeriesServiceStatisticsInput",
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
    id = "ForecastStatistics",
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
    id = "TimeSeriesServiceStatistics",
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
    id = "GetTimeSeriesServiceStatisticsOutput",
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
    id = "GetTraceGraphInput",
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
    id = "GetTraceGraphOutput",
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
    id = "GetTraceSegmentDestinationInput",
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
    id = "GetTraceSegmentDestinationOutput",
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
    id = "SamplingStrategy",
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
    id = "GetTraceSummariesInput",
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
    id = "RootCauseException",
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
    id = "ErrorRootCauseEntity",
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
    id = "ErrorRootCauseService",
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
    id = "ErrorRootCause",
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
    id = "FaultRootCauseEntity",
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
    id = "FaultRootCauseService",
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
    id = "FaultRootCause",
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
    id = "Http",
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
    id = "InstanceIdDetail",
    members = {
        Id = {
            type = "string",
        },
    },
}

M.ResourceARNDetail = {
    type = "structure",
    id = "ResourceARNDetail",
    members = {
        ARN = {
            type = "string",
        },
    },
}

M.ResponseTimeRootCauseEntity = {
    type = "structure",
    id = "ResponseTimeRootCauseEntity",
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
    id = "ResponseTimeRootCauseService",
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
    id = "ResponseTimeRootCause",
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
    id = "TraceUser",
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
    id = "TraceSummary",
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
    id = "GetTraceSummariesOutput",
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
    id = "ListResourcePoliciesInput",
    members = {
        NextToken = {
            type = "string",
        },
    },
}

M.ResourcePolicy = {
    type = "structure",
    id = "ResourcePolicy",
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
    id = "ListResourcePoliciesOutput",
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
    id = "ListRetrievedTracesInput",
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
    id = "Span",
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
    id = "RetrievedTrace",
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
    id = "ListRetrievedTracesOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
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
    id = "PutEncryptionConfigInput",
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
    id = "PutEncryptionConfigOutput",
    members = {
        EncryptionConfig = M.EncryptionConfig,
    },
}

M.LockoutPreventionException = {
    type = "structure",
    id = "LockoutPreventionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.MalformedPolicyDocumentException = {
    type = "structure",
    id = "MalformedPolicyDocumentException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PolicyCountLimitExceededException = {
    type = "structure",
    id = "PolicyCountLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PolicySizeLimitExceededException = {
    type = "structure",
    id = "PolicySizeLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.PutResourcePolicyInput = {
    type = "structure",
    id = "PutResourcePolicyInput",
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
    id = "PutResourcePolicyOutput",
    members = {
        ResourcePolicy = M.ResourcePolicy,
    },
}

M.BackendConnectionErrors = {
    type = "structure",
    id = "BackendConnectionErrors",
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
    id = "TelemetryRecord",
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
    id = "PutTelemetryRecordsInput",
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
    id = "PutTelemetryRecordsOutput",
}

M.PutTraceSegmentsInput = {
    type = "structure",
    id = "PutTraceSegmentsInput",
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
    id = "UnprocessedTraceSegment",
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
    id = "PutTraceSegmentsOutput",
    members = {
        UnprocessedTraceSegments = {
            type = "list",
            member = M.UnprocessedTraceSegment,
        },
    },
}

M.StartTraceRetrievalInput = {
    type = "structure",
    id = "StartTraceRetrievalInput",
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
    id = "StartTraceRetrievalOutput",
    members = {
        RetrievalToken = {
            type = "string",
        },
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

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
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

M.UpdateGroupInput = {
    type = "structure",
    id = "UpdateGroupInput",
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
    id = "UpdateGroupOutput",
    members = {
        Group = M.Group,
    },
}

M.ProbabilisticRuleValueUpdate = {
    type = "structure",
    id = "ProbabilisticRuleValueUpdate",
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
    id = "IndexingRuleValueUpdate",
    members = {
        Probabilistic = M.ProbabilisticRuleValueUpdate,
    },
}

M.UpdateIndexingRuleInput = {
    type = "structure",
    id = "UpdateIndexingRuleInput",
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
    id = "UpdateIndexingRuleOutput",
    members = {
        IndexingRule = M.IndexingRule,
    },
}

M.SamplingRuleUpdate = {
    type = "structure",
    id = "SamplingRuleUpdate",
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
    id = "UpdateSamplingRuleInput",
    members = {
        SamplingRuleUpdate = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SamplingRuleUpdate }),
    },
}

M.UpdateSamplingRuleOutput = {
    type = "structure",
    id = "UpdateSamplingRuleOutput",
    members = {
        SamplingRuleRecord = M.SamplingRuleRecord,
    },
}

M.UpdateTraceSegmentDestinationInput = {
    type = "structure",
    id = "UpdateTraceSegmentDestinationInput",
    members = {
        Destination = {
            type = "string",
        },
    },
}

M.UpdateTraceSegmentDestinationOutput = {
    type = "structure",
    id = "UpdateTraceSegmentDestinationOutput",
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
