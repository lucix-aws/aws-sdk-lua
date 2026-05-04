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
            member = { type = "string" },
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
            type = "integer",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.Interval = {
    type = "union",
    members = {
        RollingInterval = M.RollingInterval,
        CalendarInterval = M.CalendarInterval,
    },
}

M.Goal = {
    type = "structure",
    members = {
        Interval = M.Interval,
        AttainmentGoal = {
            type = "double",
        },
        WarningThreshold = {
            type = "double",
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
        SelectionConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SelectionConfig }),
        Components = {
            type = "list",
            member = M.CompositeSliComponent,
        },
    },
}

M.DependencyConfig = {
    type = "structure",
    members = {
        DependencyKeyAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        MetricSourceAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = M.Dimension,
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
            traits = {
                default = nil,
            },
        },
        Period = {
            type = "integer",
            traits = {
                default = nil,
            },
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
            member = M.MetricDataQuery,
        },
        BadCountMetric = {
            type = "list",
            member = M.MetricDataQuery,
        },
    },
}

M.RequestBasedServiceLevelIndicatorMetric = {
    type = "structure",
    members = {
        KeyAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        OperationName = {
            type = "string",
        },
        MetricType = {
            type = "string",
        },
        TotalRequestCountMetric = {
            type = "list",
            member = M.MetricDataQuery,
            traits = {
                required = true,
            },
        },
        MonitoredRequestCountMetric = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MonitoredRequestCountMetricDataQueries }),
        DependencyConfig = M.DependencyConfig,
        MetricSource = M.MetricSource,
        CompositeSliConfig = M.CompositeSliConfig,
    },
}

M.RequestBasedServiceLevelIndicator = {
    type = "structure",
    members = {
        RequestBasedSliMetric = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RequestBasedServiceLevelIndicatorMetric }),
        MetricThreshold = {
            type = "double",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        OperationName = {
            type = "string",
        },
        MetricType = {
            type = "string",
        },
        MetricDataQueries = {
            type = "list",
            member = M.MetricDataQuery,
            traits = {
                required = true,
            },
        },
        DependencyConfig = M.DependencyConfig,
        MetricSource = M.MetricSource,
        CompositeSliConfig = M.CompositeSliConfig,
    },
}

M.ServiceLevelIndicator = {
    type = "structure",
    members = {
        SliMetric = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceLevelIndicatorMetric }),
        MetricThreshold = {
            type = "double",
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
            type = "double",
        },
        TotalBudgetSeconds = {
            type = "integer",
        },
        BudgetSecondsRemaining = {
            type = "integer",
        },
        TotalBudgetRequests = {
            type = "integer",
        },
        BudgetRequestsRemaining = {
            type = "integer",
        },
        Sli = M.ServiceLevelIndicator,
        RequestBasedSli = M.RequestBasedServiceLevelIndicator,
        Goal = M.Goal,
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
            member = M.ServiceLevelObjectiveBudgetReport,
            traits = {
                required = true,
            },
        },
        Errors = {
            type = "list",
            member = M.ServiceLevelObjectiveBudgetReportError,
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
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ExclusionWindow = {
    type = "structure",
    members = {
        Window = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Window }),
        StartTime = {
            type = "timestamp",
        },
        RecurrenceRule = M.RecurrenceRule,
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        AddExclusionWindows = {
            type = "list",
            member = M.ExclusionWindow,
        },
        RemoveExclusionWindows = {
            type = "list",
            member = M.ExclusionWindow,
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        Errors = {
            type = "list",
            member = M.BatchUpdateExclusionWindowsError,
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
            key = { type = "string" },
            value = { type = "string" },
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
            member = M.Dimension,
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        AttributeMaps = {
            type = "list",
            member = { type = "map" },
        },
        ServiceGroups = {
            type = "list",
            member = M.ServiceGroup,
        },
        MetricReferences = {
            type = "list",
            member = M.MetricReference,
            traits = {
                required = true,
            },
        },
        LogGroupReferences = {
            type = "list",
            member = { type = "map" },
        },
    },
}

M.GetServiceOutput = {
    type = "structure",
    members = {
        Service = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Service }),
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
            member = { type = "map" },
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
        Service = M.ServiceEntity,
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
        Service = M.ServiceEntity,
        Slo = M.ServiceLevelObjectiveEntity,
        ServiceOperation = M.ServiceOperationEntity,
        Canary = M.CanaryEntity,
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
        Data = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AuditTargetEntity }),
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
            member = { type = "string" },
        },
        AuditTargets = {
            type = "list",
            member = M.AuditTarget,
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
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
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
            type = "double",
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
            key = { type = "string" },
            value = { type = "string" },
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
            type = "double",
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
            member = M.Node,
        },
        Edges = {
            type = "list",
            member = M.Edge,
        },
    },
}

M.MetricGraph = {
    type = "structure",
    members = {
        MetricDataQueries = {
            type = "list",
            member = M.MetricDataQuery,
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        AuditorResults = {
            type = "list",
            member = M.AuditorResult,
        },
        Operation = {
            type = "string",
        },
        MetricGraph = M.MetricGraph,
        DependencyGraph = M.DependencyGraph,
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
            member = M.AuditFinding,
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
            key = { type = "string" },
            value = { type = "string" },
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
            type = "integer",
            traits = {
                default = 20,
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
            key = { type = "string" },
            value = { type = "string" },
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
            member = M.ChangeEvent,
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
                default = false,
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
            member = { type = "string" },
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
            member = M.GroupingAttributeDefinition,
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 20,
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
            key = { type = "string" },
            value = { type = "string" },
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
            member = M.MetricReference,
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
            member = M.ServiceDependency,
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 20,
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        DependentOperationName = {
            type = "string",
        },
        MetricReferences = {
            type = "list",
            member = M.MetricReference,
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
            member = M.ServiceDependent,
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
            type = "integer",
            traits = {
                default = nil,
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
            member = M.ExclusionWindow,
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 20,
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
            member = M.MetricReference,
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
            member = M.ServiceOperation,
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
            type = "integer",
            traits = {
                default = 50,
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
                default = false,
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
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        AttributeMaps = {
            type = "list",
            member = { type = "map" },
        },
        MetricReferences = {
            type = "list",
            member = M.MetricReference,
            traits = {
                required = true,
            },
        },
        ServiceGroups = {
            type = "list",
            member = M.ServiceGroup,
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
            member = M.ServiceSummary,
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
            member = { type = "string" },
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
            type = "integer",
            traits = {
                default = 20,
            },
        },
        NextToken = {
            type = "string",
        },
        IncludeLinkedAccounts = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        AwsAccountId = {
            type = "string",
        },
        AttributeFilters = {
            type = "list",
            member = M.AttributeFilter,
        },
    },
}

M.ServiceState = {
    type = "structure",
    members = {
        AttributeFilters = {
            type = "list",
            member = M.AttributeFilter,
        },
        Service = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        LatestChangeEvents = {
            type = "list",
            member = M.ChangeEvent,
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
            member = M.ServiceState,
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
            member = M.Tag,
        },
    },
}

M.PutGroupingConfigurationInput = {
    type = "structure",
    members = {
        GroupingAttributeDefinitions = {
            type = "list",
            member = M.GroupingAttributeDefinition,
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
            member = M.GroupingAttributeDefinition,
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
        GroupingConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.GroupingConfiguration }),
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
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        OperationName = {
            type = "string",
        },
        MetricType = {
            type = "string",
        },
        TotalRequestCountMetric = {
            type = "list",
            member = M.MetricDataQuery,
        },
        MonitoredRequestCountMetric = M.MonitoredRequestCountMetricDataQueries,
        DependencyConfig = M.DependencyConfig,
        MetricSource = M.MetricSource,
        MetricName = {
            type = "string",
        },
        CompositeSliConfig = M.CompositeSliConfig,
    },
}

M.RequestBasedServiceLevelIndicatorConfig = {
    type = "structure",
    members = {
        RequestBasedSliMetricConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RequestBasedServiceLevelIndicatorMetricConfig }),
        MetricThreshold = {
            type = "double",
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
            key = { type = "string" },
            value = { type = "string" },
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
            type = "integer",
        },
        MetricSource = M.MetricSource,
        MetricDataQueries = {
            type = "list",
            member = M.MetricDataQuery,
        },
        DependencyConfig = M.DependencyConfig,
        CompositeSliConfig = M.CompositeSliConfig,
    },
}

M.ServiceLevelIndicatorConfig = {
    type = "structure",
    members = {
        SliMetricConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceLevelIndicatorMetricConfig }),
        MetricThreshold = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        ComparisonOperator = {
            type = "string",
            traits = {
                default = "LessThan",
            },
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
        SliConfig = M.ServiceLevelIndicatorConfig,
        RequestBasedSliConfig = M.RequestBasedServiceLevelIndicatorConfig,
        Goal = M.Goal,
        Tags = {
            type = "list",
            member = M.Tag,
        },
        BurnRateConfigurations = {
            type = "list",
            member = M.BurnRateConfiguration,
        },
        CreateRecommendedSlo = {
            type = "boolean",
            traits = {
                default = false,
            },
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
        Sli = M.ServiceLevelIndicator,
        RequestBasedSli = M.RequestBasedServiceLevelIndicator,
        EvaluationType = {
            type = "string",
        },
        Goal = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Goal }),
        BurnRateConfigurations = {
            type = "list",
            member = M.BurnRateConfiguration,
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
        Slo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceLevelObjective }),
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
        Slo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceLevelObjective }),
    },
}

M.ListServiceLevelObjectivesInput = {
    type = "structure",
    members = {
        KeyAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        OperationName = {
            type = "string",
            traits = {
                http_query = "OperationName",
            },
        },
        DependencyConfig = M.DependencyConfig,
        MaxResults = {
            type = "integer",
            traits = {
                default = nil,
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
            member = { type = "string" },
        },
        IncludeLinkedAccounts = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "IncludeLinkedAccounts",
            },
        },
        SloOwnerAwsAccountId = {
            type = "string",
            traits = {
                http_query = "SloOwnerAwsAccountId",
            },
        },
        MetricSource = M.MetricSource,
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
            key = { type = "string" },
            value = { type = "string" },
        },
        OperationName = {
            type = "string",
        },
        DependencyConfig = M.DependencyConfig,
        CreatedTime = {
            type = "timestamp",
        },
        EvaluationType = {
            type = "string",
        },
        MetricSourceType = {
            type = "string",
        },
        MetricSource = M.MetricSource,
        CompositeSliConfig = M.CompositeSliConfig,
    },
}

M.ListServiceLevelObjectivesOutput = {
    type = "structure",
    members = {
        SloSummaries = {
            type = "list",
            member = M.ServiceLevelObjectiveSummary,
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
        SliConfig = M.ServiceLevelIndicatorConfig,
        RequestBasedSliConfig = M.RequestBasedServiceLevelIndicatorConfig,
        Goal = M.Goal,
        BurnRateConfigurations = {
            type = "list",
            member = M.BurnRateConfiguration,
        },
        AutoInvestigationEnabled = {
            type = "boolean",
        },
    },
}

M.UpdateServiceLevelObjectiveOutput = {
    type = "structure",
    members = {
        Slo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceLevelObjective }),
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
        ResourceArn = {
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
