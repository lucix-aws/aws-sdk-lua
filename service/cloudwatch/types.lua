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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
        },
        RecoveryPeriod = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
        Metric = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Period = {
            type = "number",
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
        MetricStat = {
            type = "structure",
        },
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        Stat = {
            type = "string",
        },
        Configuration = {
            type = "structure",
        },
        StateValue = {
            type = "string",
        },
        MetricCharacteristics = {
            type = "structure",
        },
        SingleMetricAnomalyDetector = {
            type = "structure",
        },
        MetricMathAnomalyDetector = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "string",
        },
        OKActions = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        ActionsSuppressorExtensionPeriod = {
            type = "number",
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
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        Average = {
            type = "number",
        },
        Sum = {
            type = "number",
        },
        Minimum = {
            type = "number",
        },
        Maximum = {
            type = "number",
        },
        Unit = {
            type = "string",
        },
        ExtendedStatistics = {
            type = "map",
            key_type = "string",
            value_type = "number",
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
            member_type = "string",
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
            member_type = "structure",
        },
        Stat = {
            type = "string",
        },
        SingleMetricAnomalyDetector = {
            type = "structure",
        },
        MetricMathAnomalyDetector = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
        },
        AlarmNamePrefix = {
            type = "string",
        },
        AlarmTypes = {
            type = "list",
            member_type = "string",
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
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.EvaluationCriteria = {
    type = "union",
    members = {
        PromQLCriteria = {
            type = "structure",
        },
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
            member_type = "string",
        },
        AlarmActions = {
            type = "list",
            member_type = "string",
        },
        InsufficientDataActions = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        Period = {
            type = "number",
        },
        Unit = {
            type = "string",
        },
        EvaluationPeriods = {
            type = "number",
        },
        DatapointsToAlarm = {
            type = "number",
        },
        Threshold = {
            type = "number",
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
            member_type = "structure",
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
        EvaluationCriteria = {
            type = "union",
        },
        EvaluationInterval = {
            type = "number",
        },
    },
}

M.DescribeAlarmsOutput = {
    type = "structure",
    members = {
        CompositeAlarms = {
            type = "list",
            member_type = "structure",
        },
        MetricAlarms = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        Period = {
            type = "number",
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
            member_type = "structure",
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
            type = "number",
        },
        Namespace = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        Dimensions = {
            type = "list",
            member_type = "structure",
        },
        AnomalyDetectorTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeAnomalyDetectorsOutput = {
    type = "structure",
    members = {
        AnomalyDetectors = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
        },
    },
}

M.EnableAlarmActionsInput = {
    type = "structure",
    members = {
        AlarmNames = {
            type = "list",
            member_type = "string",
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
            member_type = "string",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        Attributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StatisticSet = {
    type = "structure",
    members = {
        SampleCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Sum = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Minimum = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Maximum = {
            type = "number",
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
            member_type = "structure",
        },
        Timestamp = {
            type = "timestamp",
        },
        Value = {
            type = "number",
        },
        StatisticValues = {
            type = "structure",
        },
        Values = {
            type = "list",
            member_type = "number",
        },
        Counts = {
            type = "list",
            member_type = "number",
        },
        Unit = {
            type = "string",
        },
        StorageResolution = {
            type = "number",
        },
    },
}

M.EntityMetricData = {
    type = "structure",
    members = {
        Entity = {
            type = "structure",
        },
        MetricData = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
        Schedule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        Rule = {
            type = "structure",
        },
        MuteTargets = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                required = true,
            },
        },
        MaxContributorCount = {
            type = "number",
        },
        Metrics = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
        ApproximateAggregateValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Datapoints = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        MaxContributorValue = {
            type = "number",
        },
        SampleCount = {
            type = "number",
        },
        Average = {
            type = "number",
        },
        Sum = {
            type = "number",
        },
        Minimum = {
            type = "number",
        },
        Maximum = {
            type = "number",
        },
    },
}

M.GetInsightRuleReportOutput = {
    type = "structure",
    members = {
        KeyLabels = {
            type = "list",
            member_type = "string",
        },
        AggregationStatistic = {
            type = "string",
        },
        AggregateValue = {
            type = "number",
        },
        ApproximateUniqueCount = {
            type = "number",
        },
        Contributors = {
            type = "list",
            member_type = "structure",
        },
        MetricDatapoints = {
            type = "list",
            member_type = "structure",
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
        NextToken = {
            type = "string",
        },
        ScanBy = {
            type = "string",
        },
        MaxDatapoints = {
            type = "number",
        },
        LabelOptions = {
            type = "structure",
        },
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
            member_type = "timestamp",
        },
        Values = {
            type = "list",
            member_type = "number",
        },
        StatusCode = {
            type = "string",
        },
        Messages = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetMetricDataOutput = {
    type = "structure",
    members = {
        MetricDataResults = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        Messages = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        Statistics = {
            type = "list",
            member_type = "string",
        },
        ExtendedStatistics = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        AdditionalStatistics = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        ExcludeFilters = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
        },
        MaxRecords = {
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            type = "number",
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
        RuleState = {
            type = "structure",
        },
    },
}

M.ListManagedInsightRulesOutput = {
    type = "structure",
    members = {
        ManagedRules = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        OwningAccounts = {
            type = "list",
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
        Rule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MuteTargets = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        Stat = {
            type = "string",
        },
        Configuration = {
            type = "structure",
        },
        MetricCharacteristics = {
            type = "structure",
        },
        SingleMetricAnomalyDetector = {
            type = "structure",
        },
        MetricMathAnomalyDetector = {
            type = "structure",
        },
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
            member_type = "string",
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
            member_type = "string",
        },
        OKActions = {
            type = "list",
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ActionsSuppressor = {
            type = "string",
        },
        ActionsSuppressorWaitPeriod = {
            type = "number",
        },
        ActionsSuppressorExtensionPeriod = {
            type = "number",
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
            member_type = "structure",
        },
    },
}

M.PutDashboardOutput = {
    type = "structure",
    members = {
        DashboardValidationMessages = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
        },
    },
}

M.PutManagedInsightRulesInput = {
    type = "structure",
    members = {
        ManagedRules = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "string",
        },
        AlarmActions = {
            type = "list",
            member_type = "string",
        },
        InsufficientDataActions = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
        },
        Period = {
            type = "number",
        },
        Unit = {
            type = "string",
        },
        EvaluationPeriods = {
            type = "number",
        },
        DatapointsToAlarm = {
            type = "number",
        },
        Threshold = {
            type = "number",
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
            member_type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        ThresholdMetricId = {
            type = "string",
        },
        EvaluationCriteria = {
            type = "union",
        },
        EvaluationInterval = {
            type = "number",
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
            member_type = "structure",
        },
        EntityMetricData = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        ExcludeFilters = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
        },
        StatisticsConfigurations = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "string",
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

return M
