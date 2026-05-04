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
        WorkloadConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AddWorkloadOutput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        WorkloadConfiguration = {
            type = "structure",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
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
            key_type = "string",
            value_type = "map",
        },
    },
}

M.DiscoveryType = {
    RESOURCE_GROUP_BASED = "RESOURCE_GROUP_BASED",
    ACCOUNT_BASED = "ACCOUNT_BASED",
}

M.ApplicationInfo = {
    type = "structure",
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
            member_type = "structure",
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
    members = {
        ApplicationInfo = {
            type = "structure",
        },
    },
}

M.TagsAlreadyExistException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateComponentInput = {
    type = "structure",
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
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateComponentOutput = {
    type = "structure",
}

M.CreateLogPatternInput = {
    type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.LogPattern = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.CreateLogPatternOutput = {
    type = "structure",
    members = {
        LogPattern = {
            type = "structure",
        },
        ResourceGroupName = {
            type = "string",
        },
    },
}

M.DeleteApplicationInput = {
    type = "structure",
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
}

M.DeleteComponentInput = {
    type = "structure",
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
}

M.DeleteLogPatternInput = {
    type = "structure",
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
}

M.DescribeApplicationInput = {
    type = "structure",
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
    members = {
        ApplicationInfo = {
            type = "structure",
        },
    },
}

M.DescribeComponentInput = {
    type = "structure",
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
    members = {
        ApplicationComponent = {
            type = "structure",
        },
        ResourceList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeComponentConfigurationInput = {
    type = "structure",
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
    members = {
        ComponentConfiguration = {
            type = "string",
        },
    },
}

M.DescribeLogPatternInput = {
    type = "structure",
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
    members = {
        ResourceGroupName = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        LogPattern = {
            type = "structure",
        },
    },
}

M.DescribeObservationInput = {
    type = "structure",
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
            type = "number",
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
            type = "number",
        },
        XRayThrottlePercent = {
            type = "number",
        },
        XRayErrorPercent = {
            type = "number",
        },
        XRayRequestCount = {
            type = "number",
        },
        XRayRequestAverageLatency = {
            type = "number",
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
    members = {
        Observation = {
            type = "structure",
        },
    },
}

M.DescribeProblemInput = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
        },
        RecurringCount = {
            type = "number",
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
    members = {
        Problem = {
            type = "structure",
        },
        SNSNotificationArn = {
            type = "string",
        },
    },
}

M.DescribeProblemObservationsInput = {
    type = "structure",
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
    members = {
        ObservationList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeProblemObservationsOutput = {
    type = "structure",
    members = {
        RelatedObservations = {
            type = "structure",
        },
    },
}

M.DescribeWorkloadInput = {
    type = "structure",
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
    members = {
        WorkloadId = {
            type = "string",
        },
        WorkloadRemarks = {
            type = "string",
        },
        WorkloadConfiguration = {
            type = "structure",
        },
    },
}

M.ListApplicationsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
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
    members = {
        ApplicationInfoList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListComponentsInput = {
    type = "structure",
    members = {
        ResourceGroupName = {
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
        AccountId = {
            type = "string",
        },
    },
}

M.ListComponentsOutput = {
    type = "structure",
    members = {
        ApplicationComponentList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListConfigurationHistoryInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        EventList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLogPatternsInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        ResourceGroupName = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        LogPatterns = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListLogPatternSetsInput = {
    type = "structure",
    members = {
        ResourceGroupName = {
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
        AccountId = {
            type = "string",
        },
    },
}

M.ListLogPatternSetsOutput = {
    type = "structure",
    members = {
        ResourceGroupName = {
            type = "string",
        },
        AccountId = {
            type = "string",
        },
        LogPatternSets = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListProblemsInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        ProblemList = {
            type = "list",
            member_type = "structure",
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
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListWorkloadsInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        WorkloadList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.RemoveWorkloadInput = {
    type = "structure",
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

M.UpdateApplicationInput = {
    type = "structure",
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
    members = {
        ApplicationInfo = {
            type = "structure",
        },
    },
}

M.UpdateComponentInput = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.UpdateComponentOutput = {
    type = "structure",
}

M.UpdateComponentConfigurationInput = {
    type = "structure",
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
}

M.UpdateLogPatternInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.UpdateLogPatternOutput = {
    type = "structure",
    members = {
        ResourceGroupName = {
            type = "string",
        },
        LogPattern = {
            type = "structure",
        },
    },
}

M.UpdateStatus = {
    RESOLVED = "RESOLVED",
}

M.UpdateProblemInput = {
    type = "structure",
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
}

M.UpdateWorkloadInput = {
    type = "structure",
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
        WorkloadConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateWorkloadOutput = {
    type = "structure",
    members = {
        WorkloadId = {
            type = "string",
        },
        WorkloadConfiguration = {
            type = "structure",
        },
    },
}

return M
