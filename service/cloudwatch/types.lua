local M = {}

M.ActionsSuppressedBy = {
    WaitPeriod = "WaitPeriod",
    ExtensionPeriod = "ExtensionPeriod",
    Alarm = "Alarm",
}

M.AlarmContributor = {
    type = "structure",
    members = {
        ContributorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContributorAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        StateReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StateTransitionedTimestamp = {
            type = "timestamp",
        },
    },
}

M.AlarmType = {
    CompositeAlarm = "CompositeAlarm",
    MetricAlarm = "MetricAlarm",
}

M.HistoryItemType = {
    ConfigurationUpdate = "ConfigurationUpdate",
    StateUpdate = "StateUpdate",
    Action = "Action",
    AlarmContributorStateUpdate = "AlarmContributorStateUpdate",
    AlarmContributorAction = "AlarmContributorAction",
}

M.AlarmHistoryItem = {
    type = "structure",
    members = {
        AlarmName = {
            type = "string",
        },
        AlarmContributorId = {
            type = "string",
        },
        AlarmType = {
            type = "string",
        },
        Timestamp = {
            type = "timestamp",
        },
        HistoryItemType = {
            type = "string",
        },
        HistorySummary = {
            type = "string",
        },
        HistoryData = {
            type = "string",
        },
        AlarmContributorAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.AlarmMuteRuleStatus = {
    SCHEDULED = "SCHEDULED",
    ACTIVE = "ACTIVE",
    EXPIRED = "EXPIRED",
}

M.AlarmMuteRuleSummary = {
    type = "structure",
    members = {
        AlarmMuteRuleArn = {
            type = "string",
        },
        ExpireDate = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        MuteType = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.AlarmPromQLCriteria = {
    type = "structure",
    members = {
        Query = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PendingPeriod = {
            type = "integer",
        },
        RecoveryPeriod = {
            type = "integer",
        },
    },
}

M.Range = {
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
    },
}

M.AnomalyDetectorConfiguration = {
    type = "structure",
    members = {
        ExcludedTimeRanges = {
            type = "list",
            member = M.Range,
        },
        MetricTimezone = {
            type = "string",
        },
    },
}

M.Dimension = {
    type = "structure",
    members = {
        Name = {
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

M.MetricCharacteristics = {
    type = "structure",
    members = {
        PeriodicSpikes = {
            type = "boolean",
        },
    },
}

M.Metric = {
    type = "structure",
    members = {
        Namespace = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member = M.Dimension,
        },
    },
}

M.StandardUnit = {
    Seconds = "Seconds",
    Microseconds = "Microseconds",
    Milliseconds = "Milliseconds",
    Bytes = "Bytes",
    Kilobytes = "Kilobytes",
    Megabytes = "Megabytes",
    Gigabytes = "Gigabytes",
    Terabytes = "Terabytes",
    Bits = "Bits",
    Kilobits = "Kilobits",
    Megabits = "Megabits",
    Gigabits = "Gigabits",
    Terabits = "Terabits",
    Percent = "Percent",
    Count = "Count",
    Bytes_Second = "Bytes/Second",
    Kilobytes_Second = "Kilobytes/Second",
    Megabytes_Second = "Megabytes/Second",
    Gigabytes_Second = "Gigabytes/Second",
    Terabytes_Second = "Terabytes/Second",
    Bits_Second = "Bits/Second",
    Kilobits_Second = "Kilobits/Second",
    Megabits_Second = "Megabits/Second",
    Gigabits_Second = "Gigabits/Second",
    Terabits_Second = "Terabits/Second",
    Count_Second = "Count/Second",
    None = "None",
}

M.MetricStat = {
    type = "structure",
    members = {
        Metric = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Metric }),
        Period = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Stat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Unit = {
            type = "string",
        },
    },
}

M.MetricDataQuery = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricStat = M.MetricStat,
        Expression = {
            type = "string",
        },
        Label = {
            type = "string",
        },
        ReturnData = {
            type = "boolean",
        },
        Period = {
            type = "integer",
        },
        AccountId = {
            type = "string",
        },
    },
}

M.MetricMathAnomalyDetector = {
    type = "structure",
    members = {
        MetricDataQueries = {
            type = "list",
            member = M.MetricDataQuery,
        },
    },
}

M.SingleMetricAnomalyDetector = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member = M.Dimension,
        },
        Stat = {
            type = "string",
        },
    },
}

M.AnomalyDetectorStateValue = {
    PENDING_TRAINING = "PENDING_TRAINING",
    TRAINED_INSUFFICIENT_DATA = "TRAINED_INSUFFICIENT_DATA",
    TRAINED = "TRAINED",
}

M.AnomalyDetector = {
    type = "structure",
    members = {
        Namespace = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member = M.Dimension,
        },
        Stat = {
            type = "string",
        },
        Configuration = M.AnomalyDetectorConfiguration,
        StateValue = {
            type = "string",
        },
        MetricCharacteristics = M.MetricCharacteristics,
        SingleMetricAnomalyDetector = M.SingleMetricAnomalyDetector,
        MetricMathAnomalyDetector = M.MetricMathAnomalyDetector,
    },
}

M.AnomalyDetectorType = {
    SINGLE_METRIC = "SINGLE_METRIC",
    METRIC_MATH = "METRIC_MATH",
}

M.PartialFailure = {
    type = "structure",
    members = {
        FailureResource = {
            type = "string",
        },
        ExceptionType = {
            type = "string",
        },
        FailureCode = {
            type = "string",
        },
        FailureDescription = {
            type = "string",
        },
    },
}

M.ComparisonOperator = {
    GreaterThanOrEqualToThreshold = "GreaterThanOrEqualToThreshold",
    GreaterThanThreshold = "GreaterThanThreshold",
    LessThanThreshold = "LessThanThreshold",
    LessThanOrEqualToThreshold = "LessThanOrEqualToThreshold",
    LessThanLowerOrGreaterThanUpperThreshold = "LessThanLowerOrGreaterThanUpperThreshold",
    LessThanLowerThreshold = "LessThanLowerThreshold",
    GreaterThanUpperThreshold = "GreaterThanUpperThreshold",
}

M.StateValue = {
    OK = "OK",
    ALARM = "ALARM",
    INSUFFICIENT_DATA = "INSUFFICIENT_DATA",
}

M.CompositeAlarm = {
    type = "structure",
    members = {
        ActionsEnabled = {
            type = "boolean",
        },
        AlarmActions = {
            type = "list",
            member = { type = "string" },
        },
        AlarmArn = {
            type = "string",
        },
        AlarmConfigurationUpdatedTimestamp = {
            type = "timestamp",
        },
        AlarmDescription = {
            type = "string",
        },
        AlarmName = {
            type = "string",
        },
        AlarmRule = {
            type = "string",
        },
        InsufficientDataActions = {
            type = "list",
            member = { type = "string" },
        },
        OKActions = {
            type = "list",
            member = { type = "string" },
        },
        StateReason = {
            type = "string",
        },
        StateReasonData = {
            type = "string",
        },
        StateUpdatedTimestamp = {
            type = "timestamp",
        },
        StateValue = {
            type = "string",
        },
        StateTransitionedTimestamp = {
            type = "timestamp",
        },
        ActionsSuppressedBy = {
            type = "string",
        },
        ActionsSuppressedReason = {
            type = "string",
        },
        ActionsSuppressor = {
            type = "string",
        },
        ActionsSuppressorWaitPeriod = {
            type = "integer",
        },
        ActionsSuppressorExtensionPeriod = {
            type = "integer",
        },
    },
}

M.ConcurrentModificationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DashboardEntry = {
    type = "structure",
    members = {
        DashboardName = {
            type = "string",
        },
        DashboardArn = {
            type = "string",
        },
        LastModified = {
            type = "timestamp",
        },
        Size = {
            type = "long",
        },
    },
}

M.DashboardValidationMessage = {
    type = "structure",
    members = {
        DataPath = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.DashboardInvalidInputError = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        dashboardValidationMessages = {
            type = "list",
            member = M.DashboardValidationMessage,
        },
    },
}

M.DashboardNotFoundError = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.Datapoint = {
    type = "structure",
    members = {
        Timestamp = {
            type = "timestamp",
        },
        SampleCount = {
            type = "double",
        },
        Average = {
            type = "double",
        },
        Sum = {
            type = "double",
        },
        Minimum = {
            type = "double",
        },
        Maximum = {
            type = "double",
        },
        Unit = {
            type = "string",
        },
        ExtendedStatistics = {
            type = "map",
            key = { type = "string" },
            value = { type = "double" },
        },
    },
}

M.DeleteAlarmMuteRuleInput = {
    type = "structure",
    members = {
        AlarmMuteRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAlarmMuteRuleOutput = {
    type = "structure",
}

M.DeleteAlarmsInput = {
    type = "structure",
    members = {
        AlarmNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteAlarmsOutput = {
    type = "structure",
}

M.ResourceNotFound = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteAnomalyDetectorInput = {
    type = "structure",
    members = {
        Namespace = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member = M.Dimension,
        },
        Stat = {
            type = "string",
        },
        SingleMetricAnomalyDetector = M.SingleMetricAnomalyDetector,
        MetricMathAnomalyDetector = M.MetricMathAnomalyDetector,
    },
}

M.DeleteAnomalyDetectorOutput = {
    type = "structure",
}

M.InternalServiceFault = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidParameterCombinationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterValueException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MissingRequiredParameterException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        ResourceType = {
            type = "string",
        },
        ResourceId = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.DeleteDashboardsInput = {
    type = "structure",
    members = {
        DashboardNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDashboardsOutput = {
    type = "structure",
}

M.DeleteInsightRulesInput = {
    type = "structure",
    members = {
        RuleNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteInsightRulesOutput = {
    type = "structure",
    members = {
        Failures = {
            type = "list",
            member = M.PartialFailure,
        },
    },
}

M.DeleteMetricStreamInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteMetricStreamOutput = {
    type = "structure",
}

M.DescribeAlarmContributorsInput = {
    type = "structure",
    members = {
        AlarmName = {
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

M.DescribeAlarmContributorsOutput = {
    type = "structure",
    members = {
        AlarmContributors = {
            type = "list",
            member = M.AlarmContributor,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidNextToken = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ScanBy = {
    TIMESTAMP_DESCENDING = "TimestampDescending",
    TIMESTAMP_ASCENDING = "TimestampAscending",
}

M.DescribeAlarmHistoryInput = {
    type = "structure",
    members = {
        AlarmName = {
            type = "string",
        },
        AlarmContributorId = {
            type = "string",
        },
        AlarmTypes = {
            type = "list",
            member = { type = "string" },
        },
        HistoryItemType = {
            type = "string",
        },
        StartDate = {
            type = "timestamp",
        },
        EndDate = {
            type = "timestamp",
        },
        MaxRecords = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        ScanBy = {
            type = "string",
        },
    },
}

M.DescribeAlarmHistoryOutput = {
    type = "structure",
    members = {
        AlarmHistoryItems = {
            type = "list",
            member = M.AlarmHistoryItem,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAlarmsInput = {
    type = "structure",
    members = {
        AlarmNames = {
            type = "list",
            member = { type = "string" },
        },
        AlarmNamePrefix = {
            type = "string",
        },
        AlarmTypes = {
            type = "list",
            member = { type = "string" },
        },
        ChildrenOfAlarmName = {
            type = "string",
        },
        ParentsOfAlarmName = {
            type = "string",
        },
        StateValue = {
            type = "string",
        },
        ActionPrefix = {
            type = "string",
        },
        MaxRecords = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.EvaluationCriteria = {
    type = "union",
    members = {
        PromQLCriteria = M.AlarmPromQLCriteria,
    },
}

M.EvaluationState = {
    PARTIAL_DATA = "PARTIAL_DATA",
    EVALUATION_FAILURE = "EVALUATION_FAILURE",
    EVALUATION_ERROR = "EVALUATION_ERROR",
}

M.Statistic = {
    SampleCount = "SampleCount",
    Average = "Average",
    Sum = "Sum",
    Minimum = "Minimum",
    Maximum = "Maximum",
}

M.MetricAlarm = {
    type = "structure",
    members = {
        AlarmName = {
            type = "string",
        },
        AlarmArn = {
            type = "string",
        },
        AlarmDescription = {
            type = "string",
        },
        AlarmConfigurationUpdatedTimestamp = {
            type = "timestamp",
        },
        ActionsEnabled = {
            type = "boolean",
        },
        OKActions = {
            type = "list",
            member = { type = "string" },
        },
        AlarmActions = {
            type = "list",
            member = { type = "string" },
        },
        InsufficientDataActions = {
            type = "list",
            member = { type = "string" },
        },
        StateValue = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        StateReasonData = {
            type = "string",
        },
        StateUpdatedTimestamp = {
            type = "timestamp",
        },
        MetricName = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        Statistic = {
            type = "string",
        },
        ExtendedStatistic = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member = M.Dimension,
        },
        Period = {
            type = "integer",
        },
        Unit = {
            type = "string",
        },
        EvaluationPeriods = {
            type = "integer",
        },
        DatapointsToAlarm = {
            type = "integer",
        },
        Threshold = {
            type = "double",
        },
        ComparisonOperator = {
            type = "string",
        },
        TreatMissingData = {
            type = "string",
        },
        EvaluateLowSampleCountPercentile = {
            type = "string",
        },
        Metrics = {
            type = "list",
            member = M.MetricDataQuery,
        },
        ThresholdMetricId = {
            type = "string",
        },
        EvaluationState = {
            type = "string",
        },
        StateTransitionedTimestamp = {
            type = "timestamp",
        },
        EvaluationCriteria = M.EvaluationCriteria,
        EvaluationInterval = {
            type = "integer",
        },
    },
}

M.DescribeAlarmsOutput = {
    type = "structure",
    members = {
        CompositeAlarms = {
            type = "list",
            member = M.CompositeAlarm,
        },
        MetricAlarms = {
            type = "list",
            member = M.MetricAlarm,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeAlarmsForMetricInput = {
    type = "structure",
    members = {
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Statistic = {
            type = "string",
        },
        ExtendedStatistic = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member = M.Dimension,
        },
        Period = {
            type = "integer",
        },
        Unit = {
            type = "string",
        },
    },
}

M.DescribeAlarmsForMetricOutput = {
    type = "structure",
    members = {
        MetricAlarms = {
            type = "list",
            member = M.MetricAlarm,
        },
    },
}

M.DescribeAnomalyDetectorsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Namespace = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member = M.Dimension,
        },
        AnomalyDetectorTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeAnomalyDetectorsOutput = {
    type = "structure",
    members = {
        AnomalyDetectors = {
            type = "list",
            member = M.AnomalyDetector,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeInsightRulesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.InsightRule = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Schema = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Definition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ManagedRule = {
            type = "boolean",
        },
        ApplyOnTransformedLogs = {
            type = "boolean",
        },
    },
}

M.DescribeInsightRulesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        InsightRules = {
            type = "list",
            member = M.InsightRule,
        },
    },
}

M.DimensionFilter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
        },
    },
}

M.DisableAlarmActionsInput = {
    type = "structure",
    members = {
        AlarmNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisableAlarmActionsOutput = {
    type = "structure",
}

M.DisableInsightRulesInput = {
    type = "structure",
    members = {
        RuleNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.DisableInsightRulesOutput = {
    type = "structure",
    members = {
        Failures = {
            type = "list",
            member = M.PartialFailure,
        },
    },
}

M.EnableAlarmActionsInput = {
    type = "structure",
    members = {
        AlarmNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.EnableAlarmActionsOutput = {
    type = "structure",
}

M.EnableInsightRulesInput = {
    type = "structure",
    members = {
        RuleNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.EnableInsightRulesOutput = {
    type = "structure",
    members = {
        Failures = {
            type = "list",
            member = M.PartialFailure,
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Entity = {
    type = "structure",
    members = {
        KeyAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        Attributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StatisticSet = {
    type = "structure",
    members = {
        SampleCount = {
            type = "double",
            traits = {
                required = true,
            },
        },
        Sum = {
            type = "double",
            traits = {
                required = true,
            },
        },
        Minimum = {
            type = "double",
            traits = {
                required = true,
            },
        },
        Maximum = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.MetricDatum = {
    type = "structure",
    members = {
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Dimensions = {
            type = "list",
            member = M.Dimension,
        },
        Timestamp = {
            type = "timestamp",
        },
        Value = {
            type = "double",
        },
        StatisticValues = M.StatisticSet,
        Values = {
            type = "list",
            member = { type = "double" },
        },
        Counts = {
            type = "list",
            member = { type = "double" },
        },
        Unit = {
            type = "string",
        },
        StorageResolution = {
            type = "integer",
        },
    },
}

M.EntityMetricData = {
    type = "structure",
    members = {
        Entity = M.Entity,
        MetricData = {
            type = "list",
            member = M.MetricDatum,
        },
    },
}

M.GetAlarmMuteRuleInput = {
    type = "structure",
    members = {
        AlarmMuteRuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MuteTargets = {
    type = "structure",
    members = {
        AlarmNames = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Schedule = {
    type = "structure",
    members = {
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Duration = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Timezone = {
            type = "string",
        },
    },
}

M.Rule = {
    type = "structure",
    members = {
        Schedule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Schedule }),
    },
}

M.GetAlarmMuteRuleOutput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        AlarmMuteRuleArn = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Rule = M.Rule,
        MuteTargets = M.MuteTargets,
        StartDate = {
            type = "timestamp",
        },
        ExpireDate = {
            type = "timestamp",
        },
        Status = {
            type = "string",
        },
        LastUpdatedTimestamp = {
            type = "timestamp",
        },
        MuteType = {
            type = "string",
        },
    },
}

M.GetDashboardInput = {
    type = "structure",
    members = {
        DashboardName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDashboardOutput = {
    type = "structure",
    members = {
        DashboardArn = {
            type = "string",
        },
        DashboardBody = {
            type = "string",
        },
        DashboardName = {
            type = "string",
        },
    },
}

M.GetInsightRuleReportInput = {
    type = "structure",
    members = {
        RuleName = {
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
        Period = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        MaxContributorCount = {
            type = "integer",
        },
        Metrics = {
            type = "list",
            member = { type = "string" },
        },
        OrderBy = {
            type = "string",
        },
    },
}

M.InsightRuleContributorDatapoint = {
    type = "structure",
    members = {
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        ApproximateValue = {
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.InsightRuleContributor = {
    type = "structure",
    members = {
        Keys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ApproximateAggregateValue = {
            type = "double",
            traits = {
                required = true,
            },
        },
        Datapoints = {
            type = "list",
            member = M.InsightRuleContributorDatapoint,
            traits = {
                required = true,
            },
        },
    },
}

M.InsightRuleMetricDatapoint = {
    type = "structure",
    members = {
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        UniqueContributors = {
            type = "double",
        },
        MaxContributorValue = {
            type = "double",
        },
        SampleCount = {
            type = "double",
        },
        Average = {
            type = "double",
        },
        Sum = {
            type = "double",
        },
        Minimum = {
            type = "double",
        },
        Maximum = {
            type = "double",
        },
    },
}

M.GetInsightRuleReportOutput = {
    type = "structure",
    members = {
        KeyLabels = {
            type = "list",
            member = { type = "string" },
        },
        AggregationStatistic = {
            type = "string",
        },
        AggregateValue = {
            type = "double",
        },
        ApproximateUniqueCount = {
            type = "long",
        },
        Contributors = {
            type = "list",
            member = M.InsightRuleContributor,
        },
        MetricDatapoints = {
            type = "list",
            member = M.InsightRuleMetricDatapoint,
        },
    },
}

M.LabelOptions = {
    type = "structure",
    members = {
        Timezone = {
            type = "string",
        },
    },
}

M.GetMetricDataInput = {
    type = "structure",
    members = {
        MetricDataQueries = {
            type = "list",
            member = M.MetricDataQuery,
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
        ScanBy = {
            type = "string",
        },
        MaxDatapoints = {
            type = "integer",
        },
        LabelOptions = M.LabelOptions,
    },
}

M.MessageData = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.StatusCode = {
    COMPLETE = "Complete",
    INTERNAL_ERROR = "InternalError",
    PARTIAL_DATA = "PartialData",
    FORBIDDEN = "Forbidden",
}

M.MetricDataResult = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Label = {
            type = "string",
        },
        Timestamps = {
            type = "list",
            member = { type = "timestamp" },
        },
        Values = {
            type = "list",
            member = { type = "double" },
        },
        StatusCode = {
            type = "string",
        },
        Messages = {
            type = "list",
            member = M.MessageData,
        },
    },
}

M.GetMetricDataOutput = {
    type = "structure",
    members = {
        MetricDataResults = {
            type = "list",
            member = M.MetricDataResult,
        },
        NextToken = {
            type = "string",
        },
        Messages = {
            type = "list",
            member = M.MessageData,
        },
    },
}

M.GetMetricStatisticsInput = {
    type = "structure",
    members = {
        Namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Dimensions = {
            type = "list",
            member = M.Dimension,
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
        Period = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        Statistics = {
            type = "list",
            member = { type = "string" },
        },
        ExtendedStatistics = {
            type = "list",
            member = { type = "string" },
        },
        Unit = {
            type = "string",
        },
    },
}

M.GetMetricStatisticsOutput = {
    type = "structure",
    members = {
        Label = {
            type = "string",
        },
        Datapoints = {
            type = "list",
            member = M.Datapoint,
        },
    },
}

M.GetMetricStreamInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetricStreamFilter = {
    type = "structure",
    members = {
        Namespace = {
            type = "string",
        },
        MetricNames = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MetricStreamOutputFormat = {
    JSON = "json",
    OPEN_TELEMETRY_0_7 = "opentelemetry0.7",
    OPEN_TELEMETRY_1_0 = "opentelemetry1.0",
}

M.MetricStreamStatisticsMetric = {
    type = "structure",
    members = {
        Namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetricStreamStatisticsConfiguration = {
    type = "structure",
    members = {
        IncludeMetrics = {
            type = "list",
            member = M.MetricStreamStatisticsMetric,
            traits = {
                required = true,
            },
        },
        AdditionalStatistics = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.GetMetricStreamOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        IncludeFilters = {
            type = "list",
            member = M.MetricStreamFilter,
        },
        ExcludeFilters = {
            type = "list",
            member = M.MetricStreamFilter,
        },
        FirehoseArn = {
            type = "string",
        },
        RoleArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        LastUpdateDate = {
            type = "timestamp",
        },
        OutputFormat = {
            type = "string",
        },
        StatisticsConfigurations = {
            type = "list",
            member = M.MetricStreamStatisticsConfiguration,
        },
        IncludeLinkedAccountsMetrics = {
            type = "boolean",
        },
    },
}

M.GetMetricWidgetImageInput = {
    type = "structure",
    members = {
        MetricWidget = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputFormat = {
            type = "string",
        },
    },
}

M.GetMetricWidgetImageOutput = {
    type = "structure",
    members = {
        MetricWidgetImage = {
            type = "blob",
        },
    },
}

M.GetOTelEnrichmentInput = {
    type = "structure",
}

M.OTelEnrichmentStatus = {
    RUNNING = "Running",
    STOPPED = "Stopped",
}

M.GetOTelEnrichmentOutput = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAlarmMuteRulesInput = {
    type = "structure",
    members = {
        AlarmName = {
            type = "string",
        },
        Statuses = {
            type = "list",
            member = { type = "string" },
        },
        MaxRecords = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListAlarmMuteRulesOutput = {
    type = "structure",
    members = {
        AlarmMuteRuleSummaries = {
            type = "list",
            member = M.AlarmMuteRuleSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDashboardsInput = {
    type = "structure",
    members = {
        DashboardNamePrefix = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListDashboardsOutput = {
    type = "structure",
    members = {
        DashboardEntries = {
            type = "list",
            member = M.DashboardEntry,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListManagedInsightRulesInput = {
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
        MaxResults = {
            type = "integer",
        },
    },
}

M.ManagedRuleState = {
    type = "structure",
    members = {
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        State = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedRuleDescription = {
    type = "structure",
    members = {
        TemplateName = {
            type = "string",
        },
        ResourceARN = {
            type = "string",
        },
        RuleState = M.ManagedRuleState,
    },
}

M.ListManagedInsightRulesOutput = {
    type = "structure",
    members = {
        ManagedRules = {
            type = "list",
            member = M.ManagedRuleDescription,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RecentlyActive = {
    PT3H = "PT3H",
}

M.ListMetricsInput = {
    type = "structure",
    members = {
        Namespace = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member = M.DimensionFilter,
        },
        NextToken = {
            type = "string",
        },
        RecentlyActive = {
            type = "string",
        },
        IncludeLinkedAccounts = {
            type = "boolean",
        },
        OwningAccount = {
            type = "string",
        },
    },
}

M.ListMetricsOutput = {
    type = "structure",
    members = {
        Metrics = {
            type = "list",
            member = M.Metric,
        },
        NextToken = {
            type = "string",
        },
        OwningAccounts = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListMetricStreamsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.MetricStreamEntry = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
        CreationDate = {
            type = "timestamp",
        },
        LastUpdateDate = {
            type = "timestamp",
        },
        Name = {
            type = "string",
        },
        FirehoseArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        OutputFormat = {
            type = "string",
        },
    },
}

M.ListMetricStreamsOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Entries = {
            type = "list",
            member = M.MetricStreamEntry,
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

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.LimitExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PutAlarmMuteRuleInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        Rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Rule }),
        MuteTargets = M.MuteTargets,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        StartDate = {
            type = "timestamp",
        },
        ExpireDate = {
            type = "timestamp",
        },
    },
}

M.PutAlarmMuteRuleOutput = {
    type = "structure",
}

M.PutAnomalyDetectorInput = {
    type = "structure",
    members = {
        Namespace = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member = M.Dimension,
        },
        Stat = {
            type = "string",
        },
        Configuration = M.AnomalyDetectorConfiguration,
        MetricCharacteristics = M.MetricCharacteristics,
        SingleMetricAnomalyDetector = M.SingleMetricAnomalyDetector,
        MetricMathAnomalyDetector = M.MetricMathAnomalyDetector,
    },
}

M.PutAnomalyDetectorOutput = {
    type = "structure",
}

M.PutCompositeAlarmInput = {
    type = "structure",
    members = {
        ActionsEnabled = {
            type = "boolean",
        },
        AlarmActions = {
            type = "list",
            member = { type = "string" },
        },
        AlarmDescription = {
            type = "string",
        },
        AlarmName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlarmRule = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InsufficientDataActions = {
            type = "list",
            member = { type = "string" },
        },
        OKActions = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ActionsSuppressor = {
            type = "string",
        },
        ActionsSuppressorWaitPeriod = {
            type = "integer",
        },
        ActionsSuppressorExtensionPeriod = {
            type = "integer",
        },
    },
}

M.PutCompositeAlarmOutput = {
    type = "structure",
}

M.PutDashboardInput = {
    type = "structure",
    members = {
        DashboardName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DashboardBody = {
            type = "string",
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

M.PutDashboardOutput = {
    type = "structure",
    members = {
        DashboardValidationMessages = {
            type = "list",
            member = M.DashboardValidationMessage,
        },
    },
}

M.PutInsightRuleInput = {
    type = "structure",
    members = {
        RuleName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RuleState = {
            type = "string",
        },
        RuleDefinition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ApplyOnTransformedLogs = {
            type = "boolean",
        },
    },
}

M.PutInsightRuleOutput = {
    type = "structure",
}

M.ManagedRule = {
    type = "structure",
    members = {
        TemplateName = {
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
        },
    },
}

M.PutManagedInsightRulesInput = {
    type = "structure",
    members = {
        ManagedRules = {
            type = "list",
            member = M.ManagedRule,
            traits = {
                required = true,
            },
        },
    },
}

M.PutManagedInsightRulesOutput = {
    type = "structure",
    members = {
        Failures = {
            type = "list",
            member = M.PartialFailure,
        },
    },
}

M.PutMetricAlarmInput = {
    type = "structure",
    members = {
        AlarmName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AlarmDescription = {
            type = "string",
        },
        ActionsEnabled = {
            type = "boolean",
        },
        OKActions = {
            type = "list",
            member = { type = "string" },
        },
        AlarmActions = {
            type = "list",
            member = { type = "string" },
        },
        InsufficientDataActions = {
            type = "list",
            member = { type = "string" },
        },
        MetricName = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        Statistic = {
            type = "string",
        },
        ExtendedStatistic = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member = M.Dimension,
        },
        Period = {
            type = "integer",
        },
        Unit = {
            type = "string",
        },
        EvaluationPeriods = {
            type = "integer",
        },
        DatapointsToAlarm = {
            type = "integer",
        },
        Threshold = {
            type = "double",
        },
        ComparisonOperator = {
            type = "string",
        },
        TreatMissingData = {
            type = "string",
        },
        EvaluateLowSampleCountPercentile = {
            type = "string",
        },
        Metrics = {
            type = "list",
            member = M.MetricDataQuery,
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        ThresholdMetricId = {
            type = "string",
        },
        EvaluationCriteria = M.EvaluationCriteria,
        EvaluationInterval = {
            type = "integer",
        },
    },
}

M.PutMetricAlarmOutput = {
    type = "structure",
}

M.PutMetricDataInput = {
    type = "structure",
    members = {
        Namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricData = {
            type = "list",
            member = M.MetricDatum,
        },
        EntityMetricData = {
            type = "list",
            member = M.EntityMetricData,
        },
        StrictEntityValidation = {
            type = "boolean",
        },
    },
}

M.PutMetricDataOutput = {
    type = "structure",
}

M.PutMetricStreamInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IncludeFilters = {
            type = "list",
            member = M.MetricStreamFilter,
        },
        ExcludeFilters = {
            type = "list",
            member = M.MetricStreamFilter,
        },
        FirehoseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OutputFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        StatisticsConfigurations = {
            type = "list",
            member = M.MetricStreamStatisticsConfiguration,
        },
        IncludeLinkedAccountsMetrics = {
            type = "boolean",
        },
    },
}

M.PutMetricStreamOutput = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
        },
    },
}

M.InvalidFormatFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SetAlarmStateInput = {
    type = "structure",
    members = {
        AlarmName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StateValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StateReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StateReasonData = {
            type = "string",
        },
    },
}

M.SetAlarmStateOutput = {
    type = "structure",
}

M.StartMetricStreamsInput = {
    type = "structure",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.StartMetricStreamsOutput = {
    type = "structure",
}

M.StartOTelEnrichmentInput = {
    type = "structure",
}

M.StartOTelEnrichmentOutput = {
    type = "structure",
}

M.StopMetricStreamsInput = {
    type = "structure",
    members = {
        Names = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.StopMetricStreamsOutput = {
    type = "structure",
}

M.StopOTelEnrichmentInput = {
    type = "structure",
}

M.StopOTelEnrichmentOutput = {
    type = "structure",
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

return M
