local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BatchGetServiceLevelObjectiveBudgetReportInput = {
    type = "structure",
    members = {
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        SloIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceLevelObjectiveBudgetReportError = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceLevelObjectiveBudgetStatus = {
    OK = "OK",
    WARNING = "WARNING",
    BREACHED = "BREACHED",
    INSUFFICIENT_DATA = "INSUFFICIENT_DATA",
}

M.EvaluationType = {
    PERIOD_BASED = "PeriodBased",
    REQUEST_BASED = "RequestBased",
}

M.DurationUnit = {
    MINUTE = "MINUTE",
    HOUR = "HOUR",
    DAY = "DAY",
    MONTH = "MONTH",
}

M.CalendarInterval = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        DurationUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Duration = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RollingInterval = {
    type = "structure",
    members = {
        DurationUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Duration = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.Interval = {
    type = "union",
    members = {
        RollingInterval = {
            type = "structure",
        },
        CalendarInterval = {
            type = "structure",
        },
    },
}

M.Goal = {
    type = "structure",
    members = {
        Interval = {
            type = "union",
        },
        AttainmentGoal = {
            type = "number",
        },
        WarningThreshold = {
            type = "number",
        },
    },
}

M.ServiceLevelIndicatorComparisonOperator = {
    GREATER_THAN_OR_EQUAL_TO = "GreaterThanOrEqualTo",
    GREATER_THAN = "GreaterThan",
    LESS_THAN = "LessThan",
    LESS_THAN_OR_EQUAL_TO = "LessThanOrEqualTo",
}

M.CompositeSliComponent = {
    type = "union",
    members = {
        OperationName = {
            type = "string",
        },
    },
}

M.SelectionType = {
    EXPLICIT = "EXPLICIT",
    PREFIX = "PREFIX",
    REGEX = "REGEX",
}

M.SelectionConfig = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Pattern = {
            type = "string",
        },
    },
}

M.CompositeSliConfig = {
    type = "structure",
    members = {
        SelectionConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Components = {
            type = "list",
            member_type = "union",
        },
    },
}

M.DependencyConfig = {
    type = "structure",
    members = {
        DependencyKeyAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        DependencyOperationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetricSource = {
    type = "structure",
    members = {
        MetricSourceKeyAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        MetricSourceAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ServiceLevelIndicatorMetricType = {
    LATENCY = "LATENCY",
    AVAILABILITY = "AVAILABILITY",
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
    MICROSECONDS = "Microseconds",
    MILLISECONDS = "Milliseconds",
    SECONDS = "Seconds",
    BYTES = "Bytes",
    KILOBYTES = "Kilobytes",
    MEGABYTES = "Megabytes",
    GIGABYTES = "Gigabytes",
    TERABYTES = "Terabytes",
    BITS = "Bits",
    KILOBITS = "Kilobits",
    MEGABITS = "Megabits",
    GIGABITS = "Gigabits",
    TERABITS = "Terabits",
    PERCENT = "Percent",
    COUNT = "Count",
    BYTES_SECOND = "Bytes/Second",
    KILOBYTES_SECOND = "Kilobytes/Second",
    MEGABYTES_SECOND = "Megabytes/Second",
    GIGABYTES_SECOND = "Gigabytes/Second",
    TERABYTES_SECOND = "Terabytes/Second",
    BITS_SECOND = "Bits/Second",
    KILOBITS_SECOND = "Kilobits/Second",
    MEGABITS_SECOND = "Megabits/Second",
    GIGABITS_SECOND = "Gigabits/Second",
    TERABITS_SECOND = "Terabits/Second",
    COUNT_SECOND = "Count/Second",
    NONE = "None",
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

M.MonitoredRequestCountMetricDataQueries = {
    type = "union",
    members = {
        GoodCountMetric = {
            type = "list",
            member_type = "structure",
        },
        BadCountMetric = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RequestBasedServiceLevelIndicatorMetric = {
    type = "structure",
    members = {
        KeyAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OperationName = {
            type = "string",
        },
        MetricType = {
            type = "string",
        },
        TotalRequestCountMetric = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        MonitoredRequestCountMetric = {
            type = "union",
            traits = {
                required = true,
            },
        },
        DependencyConfig = {
            type = "structure",
        },
        MetricSource = {
            type = "structure",
        },
        CompositeSliConfig = {
            type = "structure",
        },
    },
}

M.RequestBasedServiceLevelIndicator = {
    type = "structure",
    members = {
        RequestBasedSliMetric = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MetricThreshold = {
            type = "number",
        },
        ComparisonOperator = {
            type = "string",
        },
    },
}

M.ServiceLevelIndicatorMetric = {
    type = "structure",
    members = {
        KeyAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OperationName = {
            type = "string",
        },
        MetricType = {
            type = "string",
        },
        MetricDataQueries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        DependencyConfig = {
            type = "structure",
        },
        MetricSource = {
            type = "structure",
        },
        CompositeSliConfig = {
            type = "structure",
        },
    },
}

M.ServiceLevelIndicator = {
    type = "structure",
    members = {
        SliMetric = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MetricThreshold = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ComparisonOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceLevelObjectiveBudgetReport = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EvaluationType = {
            type = "string",
        },
        BudgetStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Attainment = {
            type = "number",
        },
        TotalBudgetSeconds = {
            type = "number",
        },
        BudgetSecondsRemaining = {
            type = "number",
        },
        TotalBudgetRequests = {
            type = "number",
        },
        BudgetRequestsRemaining = {
            type = "number",
        },
        Sli = {
            type = "structure",
        },
        RequestBasedSli = {
            type = "structure",
        },
        Goal = {
            type = "structure",
        },
    },
}

M.BatchGetServiceLevelObjectiveBudgetReportOutput = {
    type = "structure",
    members = {
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Reports = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        Errors = {
            type = "list",
            member_type = "structure",
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
        Message = {
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
        },
    },
}

M.RecurrenceRule = {
    type = "structure",
    members = {
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Window = {
    type = "structure",
    members = {
        DurationUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Duration = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ExclusionWindow = {
    type = "structure",
    members = {
        Window = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        StartTime = {
            type = "timestamp",
        },
        RecurrenceRule = {
            type = "structure",
        },
        Reason = {
            type = "string",
        },
    },
}

M.BatchUpdateExclusionWindowsInput = {
    type = "structure",
    members = {
        SloIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        AddExclusionWindows = {
            type = "list",
            member_type = "structure",
        },
        RemoveExclusionWindows = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchUpdateExclusionWindowsError = {
    type = "structure",
    members = {
        SloId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ErrorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateExclusionWindowsOutput = {
    type = "structure",
    members = {
        SloIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        Errors = {
            type = "list",
            member_type = "structure",
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
        ResourceType = {
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
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteGroupingConfigurationInput = {
    type = "structure",
}

M.DeleteGroupingConfigurationOutput = {
    type = "structure",
}

M.GetServiceInput = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
            traits = {
                http_query = "StartTime",
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                http_query = "EndTime",
                required = true,
            },
        },
        KeyAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MetricReference = {
    type = "structure",
    members = {
        Namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Dimensions = {
            type = "list",
            member_type = "structure",
        },
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AccountId = {
            type = "string",
        },
    },
}

M.ServiceGroup = {
    type = "structure",
    members = {
        GroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupSource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Service = {
    type = "structure",
    members = {
        KeyAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        AttributeMaps = {
            type = "list",
            member_type = "map",
        },
        ServiceGroups = {
            type = "list",
            member_type = "structure",
        },
        MetricReferences = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        LogGroupReferences = {
            type = "list",
            member_type = "map",
        },
    },
}

M.GetServiceOutput = {
    type = "structure",
    members = {
        Service = {
            type = "structure",
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
        LogGroupReferences = {
            type = "list",
            member_type = "map",
        },
    },
}

M.CanaryEntity = {
    type = "structure",
    members = {
        CanaryName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceEntity = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Environment = {
            type = "string",
        },
        AwsAccountId = {
            type = "string",
        },
    },
}

M.ServiceOperationEntity = {
    type = "structure",
    members = {
        Service = {
            type = "structure",
        },
        Operation = {
            type = "string",
        },
        MetricType = {
            type = "string",
        },
    },
}

M.ServiceLevelObjectiveEntity = {
    type = "structure",
    members = {
        SloName = {
            type = "string",
        },
        SloArn = {
            type = "string",
        },
    },
}

M.AuditTargetEntity = {
    type = "union",
    members = {
        Service = {
            type = "structure",
        },
        Slo = {
            type = "structure",
        },
        ServiceOperation = {
            type = "structure",
        },
        Canary = {
            type = "structure",
        },
    },
}

M.AuditTarget = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Data = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.DetailLevel = {
    BRIEF = "BRIEF",
    DETAILED = "DETAILED",
}

M.ListAuditFindingsInput = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
            traits = {
                http_query = "StartTime",
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                http_query = "EndTime",
                required = true,
            },
        },
        Auditors = {
            type = "list",
            member_type = "string",
        },
        AuditTargets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        DetailLevel = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.Severity = {
    CRITICAL = "CRITICAL",
    HIGH = "HIGH",
    MEDIUM = "MEDIUM",
    LOW = "LOW",
    NONE = "NONE",
}

M.AuditorResult = {
    type = "structure",
    members = {
        Auditor = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        Data = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        Severity = {
            type = "string",
        },
    },
}

M.ConnectionType = {
    INDIRECT = "INDIRECT",
    DIRECT = "DIRECT",
}

M.Edge = {
    type = "structure",
    members = {
        SourceNodeId = {
            type = "string",
        },
        DestinationNodeId = {
            type = "string",
        },
        Duration = {
            type = "number",
        },
        ConnectionType = {
            type = "string",
        },
    },
}

M.Node = {
    type = "structure",
    members = {
        KeyAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NodeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Operation = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Duration = {
            type = "number",
        },
        Status = {
            type = "string",
        },
    },
}

M.DependencyGraph = {
    type = "structure",
    members = {
        Nodes = {
            type = "list",
            member_type = "structure",
        },
        Edges = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.MetricGraph = {
    type = "structure",
    members = {
        MetricDataQueries = {
            type = "list",
            member_type = "structure",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
    },
}

M.AuditFinding = {
    type = "structure",
    members = {
        KeyAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        AuditorResults = {
            type = "list",
            member_type = "structure",
        },
        Operation = {
            type = "string",
        },
        MetricGraph = {
            type = "structure",
        },
        DependencyGraph = {
            type = "structure",
        },
        Type = {
            type = "string",
        },
    },
}

M.ListAuditFindingsOutput = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        AuditFindings = {
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

M.ListEntityEventsInput = {
    type = "structure",
    members = {
        Entity = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
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

M.ChangeEventType = {
    DEPLOYMENT = "DEPLOYMENT",
    CONFIGURATION = "CONFIGURATION",
}

M.ChangeEvent = {
    type = "structure",
    members = {
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Entity = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        ChangeEventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UserName = {
            type = "string",
        },
        EventName = {
            type = "string",
        },
    },
}

M.ListEntityEventsOutput = {
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
        ChangeEvents = {
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

M.ListGroupingAttributeDefinitionsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_query = "AwsAccountId",
            },
        },
        IncludeLinkedAccounts = {
            type = "boolean",
            traits = {
                http_query = "IncludeLinkedAccounts",
            },
        },
    },
}

M.GroupingAttributeDefinition = {
    type = "structure",
    members = {
        GroupingName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        GroupingSourceKeys = {
            type = "list",
            member_type = "string",
        },
        DefaultGroupingValue = {
            type = "string",
        },
    },
}

M.ListGroupingAttributeDefinitionsOutput = {
    type = "structure",
    members = {
        GroupingAttributeDefinitions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        UpdatedAt = {
            type = "timestamp",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListServiceDependenciesInput = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
            traits = {
                http_query = "StartTime",
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                http_query = "EndTime",
                required = true,
            },
        },
        KeyAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
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

M.ServiceDependency = {
    type = "structure",
    members = {
        OperationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DependencyKeyAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        DependencyOperationName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricReferences = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListServiceDependenciesOutput = {
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
        ServiceDependencies = {
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

M.ListServiceDependentsInput = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
            traits = {
                http_query = "StartTime",
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                http_query = "EndTime",
                required = true,
            },
        },
        KeyAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
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

M.ServiceDependent = {
    type = "structure",
    members = {
        OperationName = {
            type = "string",
        },
        DependentKeyAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        DependentOperationName = {
            type = "string",
        },
        MetricReferences = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListServiceDependentsOutput = {
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
        ServiceDependents = {
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

M.ListServiceLevelObjectiveExclusionWindowsInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
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

M.ListServiceLevelObjectiveExclusionWindowsOutput = {
    type = "structure",
    members = {
        ExclusionWindows = {
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

M.ListServiceOperationsInput = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
            traits = {
                http_query = "StartTime",
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                http_query = "EndTime",
                required = true,
            },
        },
        KeyAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
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

M.ServiceOperation = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricReferences = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListServiceOperationsOutput = {
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
        ServiceOperations = {
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

M.ListServicesInput = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
            traits = {
                http_query = "StartTime",
                required = true,
            },
        },
        EndTime = {
            type = "timestamp",
            traits = {
                http_query = "EndTime",
                required = true,
            },
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        IncludeLinkedAccounts = {
            type = "boolean",
            traits = {
                http_query = "IncludeLinkedAccounts",
            },
        },
        AwsAccountId = {
            type = "string",
            traits = {
                http_query = "AwsAccountId",
            },
        },
    },
}

M.ServiceSummary = {
    type = "structure",
    members = {
        KeyAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        AttributeMaps = {
            type = "list",
            member_type = "map",
        },
        MetricReferences = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ServiceGroups = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListServicesOutput = {
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
        ServiceSummaries = {
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

M.AttributeFilter = {
    type = "structure",
    members = {
        AttributeFilterName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AttributeFilterValues = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListServiceStatesInput = {
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
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        IncludeLinkedAccounts = {
            type = "boolean",
        },
        AwsAccountId = {
            type = "string",
        },
        AttributeFilters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ServiceState = {
    type = "structure",
    members = {
        AttributeFilters = {
            type = "list",
            member_type = "structure",
        },
        Service = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
        LatestChangeEvents = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListServiceStatesOutput = {
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
        ServiceStates = {
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

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_query = "ResourceArn",
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

M.PutGroupingConfigurationInput = {
    type = "structure",
    members = {
        GroupingAttributeDefinitions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GroupingConfiguration = {
    type = "structure",
    members = {
        GroupingAttributeDefinitions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        UpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.PutGroupingConfigurationOutput = {
    type = "structure",
    members = {
        GroupingConfiguration = {
            type = "structure",
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
    },
}

M.BurnRateConfiguration = {
    type = "structure",
    members = {
        LookBackWindowMinutes = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RequestBasedServiceLevelIndicatorMetricConfig = {
    type = "structure",
    members = {
        KeyAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OperationName = {
            type = "string",
        },
        MetricType = {
            type = "string",
        },
        TotalRequestCountMetric = {
            type = "list",
            member_type = "structure",
        },
        MonitoredRequestCountMetric = {
            type = "union",
        },
        DependencyConfig = {
            type = "structure",
        },
        MetricSource = {
            type = "structure",
        },
        MetricName = {
            type = "string",
        },
        CompositeSliConfig = {
            type = "structure",
        },
    },
}

M.RequestBasedServiceLevelIndicatorConfig = {
    type = "structure",
    members = {
        RequestBasedSliMetricConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MetricThreshold = {
            type = "number",
        },
        ComparisonOperator = {
            type = "string",
        },
    },
}

M.ServiceLevelIndicatorMetricConfig = {
    type = "structure",
    members = {
        KeyAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OperationName = {
            type = "string",
        },
        MetricType = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        Statistic = {
            type = "string",
        },
        PeriodSeconds = {
            type = "number",
        },
        MetricSource = {
            type = "structure",
        },
        MetricDataQueries = {
            type = "list",
            member_type = "structure",
        },
        DependencyConfig = {
            type = "structure",
        },
        CompositeSliConfig = {
            type = "structure",
        },
    },
}

M.ServiceLevelIndicatorConfig = {
    type = "structure",
    members = {
        SliMetricConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MetricThreshold = {
            type = "number",
        },
        ComparisonOperator = {
            type = "string",
        },
    },
}

M.CreateServiceLevelObjectiveInput = {
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
        SliConfig = {
            type = "structure",
        },
        RequestBasedSliConfig = {
            type = "structure",
        },
        Goal = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
        BurnRateConfigurations = {
            type = "list",
            member_type = "structure",
        },
        CreateRecommendedSlo = {
            type = "boolean",
        },
        AutoInvestigationEnabled = {
            type = "boolean",
        },
    },
}

M.MetricSourceType = {
    SERVICE_OPERATION = "ServiceOperation",
    CLOUDWATCH_METRIC = "CloudWatchMetric",
    SERVICE_DEPENDENCY = "ServiceDependency",
    APPMONITOR = "AppMonitor",
    CANARY = "Canary",
    SERVICE = "Service",
}

M.ServiceLevelObjective = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        CreatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        LastUpdatedTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Sli = {
            type = "structure",
        },
        RequestBasedSli = {
            type = "structure",
        },
        EvaluationType = {
            type = "string",
        },
        Goal = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        BurnRateConfigurations = {
            type = "list",
            member_type = "structure",
        },
        MetricSourceType = {
            type = "string",
        },
        AutoInvestigationEnabled = {
            type = "boolean",
        },
    },
}

M.CreateServiceLevelObjectiveOutput = {
    type = "structure",
    members = {
        Slo = {
            type = "structure",
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
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteServiceLevelObjectiveInput = {
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

M.DeleteServiceLevelObjectiveOutput = {
    type = "structure",
}

M.GetServiceLevelObjectiveInput = {
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

M.GetServiceLevelObjectiveOutput = {
    type = "structure",
    members = {
        Slo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListServiceLevelObjectivesInput = {
    type = "structure",
    members = {
        KeyAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OperationName = {
            type = "string",
            traits = {
                http_query = "OperationName",
            },
        },
        DependencyConfig = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
            traits = {
                http_query = "MaxResults",
            },
        },
        NextToken = {
            type = "string",
            traits = {
                http_query = "NextToken",
            },
        },
        MetricSourceTypes = {
            type = "list",
            member_type = "string",
        },
        IncludeLinkedAccounts = {
            type = "boolean",
            traits = {
                http_query = "IncludeLinkedAccounts",
            },
        },
        SloOwnerAwsAccountId = {
            type = "string",
            traits = {
                http_query = "SloOwnerAwsAccountId",
            },
        },
        MetricSource = {
            type = "structure",
        },
    },
}

M.ServiceLevelObjectiveSummary = {
    type = "structure",
    members = {
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        KeyAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        OperationName = {
            type = "string",
        },
        DependencyConfig = {
            type = "structure",
        },
        CreatedTime = {
            type = "timestamp",
        },
        EvaluationType = {
            type = "string",
        },
        MetricSourceType = {
            type = "string",
        },
        MetricSource = {
            type = "structure",
        },
        CompositeSliConfig = {
            type = "structure",
        },
    },
}

M.ListServiceLevelObjectivesOutput = {
    type = "structure",
    members = {
        SloSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateServiceLevelObjectiveInput = {
    type = "structure",
    members = {
        Id = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Description = {
            type = "string",
        },
        SliConfig = {
            type = "structure",
        },
        RequestBasedSliConfig = {
            type = "structure",
        },
        Goal = {
            type = "structure",
        },
        BurnRateConfigurations = {
            type = "list",
            member_type = "structure",
        },
        AutoInvestigationEnabled = {
            type = "boolean",
        },
    },
}

M.UpdateServiceLevelObjectiveOutput = {
    type = "structure",
    members = {
        Slo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartDiscoveryInput = {
    type = "structure",
}

M.StartDiscoveryOutput = {
    type = "structure",
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
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
        ResourceArn = {
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
