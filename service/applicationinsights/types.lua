local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Tier = {
    CUSTOM = "CUSTOM",
    DEFAULT = "DEFAULT",
    DOT_NET_CORE = "DOT_NET_CORE",
    DOT_NET_WORKER = "DOT_NET_WORKER",
    DOT_NET_WEB_TIER = "DOT_NET_WEB_TIER",
    DOT_NET_WEB = "DOT_NET_WEB",
    SQL_SERVER = "SQL_SERVER",
    SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP = "SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP",
    MYSQL = "MYSQL",
    POSTGRESQL = "POSTGRESQL",
    JAVA_JMX = "JAVA_JMX",
    ORACLE = "ORACLE",
    SAP_HANA_MULTI_NODE = "SAP_HANA_MULTI_NODE",
    SAP_HANA_SINGLE_NODE = "SAP_HANA_SINGLE_NODE",
    SAP_HANA_HIGH_AVAILABILITY = "SAP_HANA_HIGH_AVAILABILITY",
    SAP_ASE_SINGLE_NODE = "SAP_ASE_SINGLE_NODE",
    SAP_ASE_HIGH_AVAILABILITY = "SAP_ASE_HIGH_AVAILABILITY",
    SQL_SERVER_FAILOVER_CLUSTER_INSTANCE = "SQL_SERVER_FAILOVER_CLUSTER_INSTANCE",
    SHAREPOINT = "SHAREPOINT",
    ACTIVE_DIRECTORY = "ACTIVE_DIRECTORY",
    SAP_NETWEAVER_STANDARD = "SAP_NETWEAVER_STANDARD",
    SAP_NETWEAVER_DISTRIBUTED = "SAP_NETWEAVER_DISTRIBUTED",
    SAP_NETWEAVER_HIGH_AVAILABILITY = "SAP_NETWEAVER_HIGH_AVAILABILITY",
}

M.WorkloadConfiguration = {
    type = "structure",
    id = "WorkloadConfiguration",
    members = {
        WorkloadName = {
            type = "string",
        },
        Tier = {
            type = "string",
        },
        Configuration = {
            type = "string",
        },
    },
}

M.AddWorkloadInput = {
    type = "structure",
    id = "AddWorkloadInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkloadConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkloadConfiguration }),
    },
}

M.AddWorkloadOutput = {
    type = "structure",
    id = "AddWorkloadOutput",
    members = {
        WorkloadId = {
            type = "string",
        },
        WorkloadConfiguration = M.WorkloadConfiguration,
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OsType = {
    WINDOWS = "WINDOWS",
    LINUX = "LINUX",
}

M.ApplicationComponent = {
    type = "structure",
    id = "ApplicationComponent",
    members = {
        ComponentName = {
            type = "string",
        },
        ComponentRemarks = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        OsType = {
            type = "string",
        },
        Tier = {
            type = "string",
        },
        Monitor = {
            type = "boolean",
        },
        DetectedWorkload = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
    },
}

M.DiscoveryType = {
    RESOURCE_GROUP_BASED = "RESOURCE_GROUP_BASED",
    ACCOUNT_BASED = "ACCOUNT_BASED",
}

M.ApplicationInfo = {
    type = "structure",
    id = "ApplicationInfo",
    members = {
        AccountId = {
            type = "string",
        },
        ResourceGroupName = {
            type = "string",
        },
        LifeCycle = {
            type = "string",
        },
        OpsItemSNSTopicArn = {
            type = "string",
        },
        SNSNotificationArn = {
            type = "string",
        },
        OpsCenterEnabled = {
            type = "boolean",
        },
        CWEMonitorEnabled = {
            type = "boolean",
        },
        Remarks = {
            type = "string",
        },
        AutoConfigEnabled = {
            type = "boolean",
        },
        DiscoveryType = {
            type = "string",
        },
        AttachMissingPermission = {
            type = "boolean",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CloudWatchEventSource = {
    EC2 = "EC2",
    CODE_DEPLOY = "CODE_DEPLOY",
    HEALTH = "HEALTH",
    RDS = "RDS",
}

M.ConfigurationEventResourceType = {
    CLOUDWATCH_ALARM = "CLOUDWATCH_ALARM",
    CLOUDWATCH_LOG = "CLOUDWATCH_LOG",
    CLOUDFORMATION = "CLOUDFORMATION",
    SSM_ASSOCIATION = "SSM_ASSOCIATION",
}

M.ConfigurationEventStatus = {
    INFO = "INFO",
    WARN = "WARN",
    ERROR = "ERROR",
}

M.ConfigurationEvent = {
    type = "structure",
    id = "ConfigurationEvent",
    members = {
        ResourceGroupName = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        MonitoredResourceARN = {
            type = "string",
        },
        EventStatus = {
            type = "string",
        },
        EventResourceType = {
            type = "string",
        },
        EventTime = {
            type = "timestamp",
        },
        EventDetail = {
            type = "string",
        },
        EventResourceName = {
            type = "string",
        },
    },
}

M.GroupingType = {
    ACCOUNT_BASED = "ACCOUNT_BASED",
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

M.CreateApplicationInput = {
    type = "structure",
    id = "CreateApplicationInput",
    members = {
        ResourceGroupName = {
            type = "string",
        },
        OpsCenterEnabled = {
            type = "boolean",
        },
        CWEMonitorEnabled = {
            type = "boolean",
        },
        OpsItemSNSTopicArn = {
            type = "string",
        },
        SNSNotificationArn = {
            type = "string",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        AutoConfigEnabled = {
            type = "boolean",
        },
        AutoCreate = {
            type = "boolean",
        },
        GroupingType = {
            type = "string",
        },
        AttachMissingPermission = {
            type = "boolean",
        },
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    id = "CreateApplicationOutput",
    members = {
        ApplicationInfo = M.ApplicationInfo,
    },
}

M.TagsAlreadyExistException = {
    type = "structure",
    id = "TagsAlreadyExistException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateComponentInput = {
    type = "structure",
    id = "CreateComponentInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceList = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateComponentOutput = {
    type = "structure",
    id = "CreateComponentOutput",
}

M.CreateLogPatternInput = {
    type = "structure",
    id = "CreateLogPatternInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatternSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatternName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Pattern = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Rank = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.LogPattern = {
    type = "structure",
    id = "LogPattern",
    members = {
        PatternSetName = {
            type = "string",
        },
        PatternName = {
            type = "string",
        },
        Pattern = {
            type = "string",
        },
        Rank = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.CreateLogPatternOutput = {
    type = "structure",
    id = "CreateLogPatternOutput",
    members = {
        LogPattern = M.LogPattern,
        ResourceGroupName = {
            type = "string",
        },
    },
}

M.DeleteApplicationInput = {
    type = "structure",
    id = "DeleteApplicationInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationOutput = {
    type = "structure",
    id = "DeleteApplicationOutput",
}

M.DeleteComponentInput = {
    type = "structure",
    id = "DeleteComponentInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteComponentOutput = {
    type = "structure",
    id = "DeleteComponentOutput",
}

M.DeleteLogPatternInput = {
    type = "structure",
    id = "DeleteLogPatternInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatternSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatternName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLogPatternOutput = {
    type = "structure",
    id = "DeleteLogPatternOutput",
}

M.DescribeApplicationInput = {
    type = "structure",
    id = "DescribeApplicationInput",
    members = {
        ResourceGroupName = {
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

M.DescribeApplicationOutput = {
    type = "structure",
    id = "DescribeApplicationOutput",
    members = {
        ApplicationInfo = M.ApplicationInfo,
    },
}

M.DescribeComponentInput = {
    type = "structure",
    id = "DescribeComponentInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComponentName = {
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

M.DescribeComponentOutput = {
    type = "structure",
    id = "DescribeComponentOutput",
    members = {
        ApplicationComponent = M.ApplicationComponent,
        ResourceList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeComponentConfigurationInput = {
    type = "structure",
    id = "DescribeComponentConfigurationInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComponentName = {
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

M.DescribeComponentConfigurationOutput = {
    type = "structure",
    id = "DescribeComponentConfigurationOutput",
    members = {
        Monitor = {
            type = "boolean",
        },
        Tier = {
            type = "string",
        },
        ComponentConfiguration = {
            type = "string",
        },
    },
}

M.RecommendationType = {
    INFRA_ONLY = "INFRA_ONLY",
    WORKLOAD_ONLY = "WORKLOAD_ONLY",
    ALL = "ALL",
}

M.DescribeComponentConfigurationRecommendationInput = {
    type = "structure",
    id = "DescribeComponentConfigurationRecommendationInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkloadName = {
            type = "string",
        },
        RecommendationType = {
            type = "string",
        },
    },
}

M.DescribeComponentConfigurationRecommendationOutput = {
    type = "structure",
    id = "DescribeComponentConfigurationRecommendationOutput",
    members = {
        ComponentConfiguration = {
            type = "string",
        },
    },
}

M.DescribeLogPatternInput = {
    type = "structure",
    id = "DescribeLogPatternInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatternSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatternName = {
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

M.DescribeLogPatternOutput = {
    type = "structure",
    id = "DescribeLogPatternOutput",
    members = {
        ResourceGroupName = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        LogPattern = M.LogPattern,
    },
}

M.DescribeObservationInput = {
    type = "structure",
    id = "DescribeObservationInput",
    members = {
        ObservationId = {
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

M.LogFilter = {
    ERROR = "ERROR",
    WARN = "WARN",
    INFO = "INFO",
}

M.Observation = {
    type = "structure",
    id = "Observation",
    members = {
        Id = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        SourceType = {
            type = "string",
        },
        SourceARN = {
            type = "string",
        },
        LogGroup = {
            type = "string",
        },
        LineTime = {
            type = "timestamp",
        },
        LogText = {
            type = "string",
        },
        LogFilter = {
            type = "string",
        },
        MetricNamespace = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        Unit = {
            type = "string",
        },
        Value = {
            type = "double",
        },
        CloudWatchEventId = {
            type = "string",
        },
        CloudWatchEventSource = {
            type = "string",
        },
        CloudWatchEventDetailType = {
            type = "string",
        },
        HealthEventArn = {
            type = "string",
        },
        HealthService = {
            type = "string",
        },
        HealthEventTypeCode = {
            type = "string",
        },
        HealthEventTypeCategory = {
            type = "string",
        },
        HealthEventDescription = {
            type = "string",
        },
        CodeDeployDeploymentId = {
            type = "string",
        },
        CodeDeployDeploymentGroup = {
            type = "string",
        },
        CodeDeployState = {
            type = "string",
        },
        CodeDeployApplication = {
            type = "string",
        },
        CodeDeployInstanceGroupId = {
            type = "string",
        },
        Ec2State = {
            type = "string",
        },
        RdsEventCategories = {
            type = "string",
        },
        RdsEventMessage = {
            type = "string",
        },
        S3EventName = {
            type = "string",
        },
        StatesExecutionArn = {
            type = "string",
        },
        StatesArn = {
            type = "string",
        },
        StatesStatus = {
            type = "string",
        },
        StatesInput = {
            type = "string",
        },
        EbsEvent = {
            type = "string",
        },
        EbsResult = {
            type = "string",
        },
        EbsCause = {
            type = "string",
        },
        EbsRequestId = {
            type = "string",
        },
        XRayFaultPercent = {
            type = "integer",
        },
        XRayThrottlePercent = {
            type = "integer",
        },
        XRayErrorPercent = {
            type = "integer",
        },
        XRayRequestCount = {
            type = "integer",
        },
        XRayRequestAverageLatency = {
            type = "long",
        },
        XRayNodeName = {
            type = "string",
        },
        XRayNodeType = {
            type = "string",
        },
    },
}

M.DescribeObservationOutput = {
    type = "structure",
    id = "DescribeObservationOutput",
    members = {
        Observation = M.Observation,
    },
}

M.DescribeProblemInput = {
    type = "structure",
    id = "DescribeProblemInput",
    members = {
        ProblemId = {
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

M.FeedbackKey = {
    INSIGHTS_FEEDBACK = "INSIGHTS_FEEDBACK",
}

M.FeedbackValue = {
    NOT_SPECIFIED = "NOT_SPECIFIED",
    USEFUL = "USEFUL",
    NOT_USEFUL = "NOT_USEFUL",
}

M.ResolutionMethod = {
    MANUAL = "MANUAL",
    AUTOMATIC = "AUTOMATIC",
    UNRESOLVED = "UNRESOLVED",
}

M.SeverityLevel = {
    Informative = "Informative",
    Low = "Low",
    Medium = "Medium",
    High = "High",
}

M.Status = {
    IGNORE = "IGNORE",
    RESOLVED = "RESOLVED",
    PENDING = "PENDING",
    RECURRING = "RECURRING",
    RECOVERING = "RECOVERING",
}

M.Visibility = {
    IGNORED = "IGNORED",
    VISIBLE = "VISIBLE",
}

M.Problem = {
    type = "structure",
    id = "Problem",
    members = {
        Id = {
            type = "string",
        },
        Title = {
            type = "string",
        },
        ShortName = {
            type = "string",
        },
        Insights = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        AffectedResource = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        SeverityLevel = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        ResourceGroupName = {
            type = "string",
        },
        Feedback = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        RecurringCount = {
            type = "long",
        },
        LastRecurrenceTime = {
            type = "timestamp",
        },
        Visibility = {
            type = "string",
        },
        ResolutionMethod = {
            type = "string",
        },
    },
}

M.DescribeProblemOutput = {
    type = "structure",
    id = "DescribeProblemOutput",
    members = {
        Problem = M.Problem,
        SNSNotificationArn = {
            type = "string",
        },
    },
}

M.DescribeProblemObservationsInput = {
    type = "structure",
    id = "DescribeProblemObservationsInput",
    members = {
        ProblemId = {
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

M.RelatedObservations = {
    type = "structure",
    id = "RelatedObservations",
    members = {
        ObservationList = {
            type = "list",
            member = M.Observation,
        },
    },
}

M.DescribeProblemObservationsOutput = {
    type = "structure",
    id = "DescribeProblemObservationsOutput",
    members = {
        RelatedObservations = M.RelatedObservations,
    },
}

M.DescribeWorkloadInput = {
    type = "structure",
    id = "DescribeWorkloadInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkloadId = {
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

M.DescribeWorkloadOutput = {
    type = "structure",
    id = "DescribeWorkloadOutput",
    members = {
        WorkloadId = {
            type = "string",
        },
        WorkloadRemarks = {
            type = "string",
        },
        WorkloadConfiguration = M.WorkloadConfiguration,
    },
}

M.ListApplicationsInput = {
    type = "structure",
    id = "ListApplicationsInput",
    members = {
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
    },
}

M.ListApplicationsOutput = {
    type = "structure",
    id = "ListApplicationsOutput",
    members = {
        ApplicationInfoList = {
            type = "list",
            member = M.ApplicationInfo,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListComponentsInput = {
    type = "structure",
    id = "ListComponentsInput",
    members = {
        ResourceGroupName = {
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
        AccountId = {
            type = "string",
        },
    },
}

M.ListComponentsOutput = {
    type = "structure",
    id = "ListComponentsOutput",
    members = {
        ApplicationComponentList = {
            type = "list",
            member = M.ApplicationComponent,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConfigurationHistoryInput = {
    type = "structure",
    id = "ListConfigurationHistoryInput",
    members = {
        ResourceGroupName = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        EventStatus = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
    },
}

M.ListConfigurationHistoryOutput = {
    type = "structure",
    id = "ListConfigurationHistoryOutput",
    members = {
        EventList = {
            type = "list",
            member = M.ConfigurationEvent,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLogPatternsInput = {
    type = "structure",
    id = "ListLogPatternsInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatternSetName = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
    },
}

M.ListLogPatternsOutput = {
    type = "structure",
    id = "ListLogPatternsOutput",
    members = {
        ResourceGroupName = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        LogPatterns = {
            type = "list",
            member = M.LogPattern,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLogPatternSetsInput = {
    type = "structure",
    id = "ListLogPatternSetsInput",
    members = {
        ResourceGroupName = {
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
        AccountId = {
            type = "string",
        },
    },
}

M.ListLogPatternSetsOutput = {
    type = "structure",
    id = "ListLogPatternSetsOutput",
    members = {
        ResourceGroupName = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        LogPatternSets = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProblemsInput = {
    type = "structure",
    id = "ListProblemsInput",
    members = {
        AccountId = {
            type = "string",
        },
        ResourceGroupName = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
        ComponentName = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
    },
}

M.ListProblemsOutput = {
    type = "structure",
    id = "ListProblemsOutput",
    members = {
        ProblemList = {
            type = "list",
            member = M.Problem,
        },
        NextToken = {
            type = "string",
        },
        ResourceGroupName = {
            type = "string",
        },
        AccountId = {
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
    },
}

M.ListWorkloadsInput = {
    type = "structure",
    id = "ListWorkloadsInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComponentName = {
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
        AccountId = {
            type = "string",
        },
    },
}

M.Workload = {
    type = "structure",
    id = "Workload",
    members = {
        WorkloadId = {
            type = "string",
        },
        ComponentName = {
            type = "string",
        },
        WorkloadName = {
            type = "string",
        },
        Tier = {
            type = "string",
        },
        WorkloadRemarks = {
            type = "string",
        },
        MissingWorkloadConfig = {
            type = "boolean",
        },
    },
}

M.ListWorkloadsOutput = {
    type = "structure",
    id = "ListWorkloadsOutput",
    members = {
        WorkloadList = {
            type = "list",
            member = M.Workload,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RemoveWorkloadInput = {
    type = "structure",
    id = "RemoveWorkloadInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkloadId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RemoveWorkloadOutput = {
    type = "structure",
    id = "RemoveWorkloadOutput",
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

M.UpdateApplicationInput = {
    type = "structure",
    id = "UpdateApplicationInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OpsCenterEnabled = {
            type = "boolean",
        },
        CWEMonitorEnabled = {
            type = "boolean",
        },
        OpsItemSNSTopicArn = {
            type = "string",
        },
        SNSNotificationArn = {
            type = "string",
        },
        RemoveSNSTopic = {
            type = "boolean",
        },
        AutoConfigEnabled = {
            type = "boolean",
        },
        AttachMissingPermission = {
            type = "boolean",
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
    id = "UpdateApplicationOutput",
    members = {
        ApplicationInfo = M.ApplicationInfo,
    },
}

M.UpdateComponentInput = {
    type = "structure",
    id = "UpdateComponentInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewComponentName = {
            type = "string",
        },
        ResourceList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateComponentOutput = {
    type = "structure",
    id = "UpdateComponentOutput",
}

M.UpdateComponentConfigurationInput = {
    type = "structure",
    id = "UpdateComponentConfigurationInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Monitor = {
            type = "boolean",
        },
        Tier = {
            type = "string",
        },
        ComponentConfiguration = {
            type = "string",
        },
        AutoConfigEnabled = {
            type = "boolean",
        },
    },
}

M.UpdateComponentConfigurationOutput = {
    type = "structure",
    id = "UpdateComponentConfigurationOutput",
}

M.UpdateLogPatternInput = {
    type = "structure",
    id = "UpdateLogPatternInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatternSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PatternName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Pattern = {
            type = "string",
        },
        Rank = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.UpdateLogPatternOutput = {
    type = "structure",
    id = "UpdateLogPatternOutput",
    members = {
        ResourceGroupName = {
            type = "string",
        },
        LogPattern = M.LogPattern,
    },
}

M.UpdateStatus = {
    RESOLVED = "RESOLVED",
}

M.UpdateProblemInput = {
    type = "structure",
    id = "UpdateProblemInput",
    members = {
        ProblemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        UpdateStatus = {
            type = "string",
        },
        Visibility = {
            type = "string",
        },
    },
}

M.UpdateProblemOutput = {
    type = "structure",
    id = "UpdateProblemOutput",
}

M.UpdateWorkloadInput = {
    type = "structure",
    id = "UpdateWorkloadInput",
    members = {
        ResourceGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WorkloadId = {
            type = "string",
        },
        WorkloadConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkloadConfiguration }),
    },
}

M.UpdateWorkloadOutput = {
    type = "structure",
    id = "UpdateWorkloadOutput",
    members = {
        WorkloadId = {
            type = "string",
        },
        WorkloadConfiguration = M.WorkloadConfiguration,
    },
}

return M
