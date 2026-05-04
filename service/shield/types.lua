local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AccessDeniedForDependencyException = {
    type = "structure",
    id = "AccessDeniedForDependencyException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BlockAction = {
    type = "structure",
    id = "BlockAction",
}

M.CountAction = {
    type = "structure",
    id = "CountAction",
}

M.ResponseAction = {
    type = "structure",
    id = "ResponseAction",
    members = {
        Block = M.BlockAction,
        Count = M.CountAction,
    },
}

M.ApplicationLayerAutomaticResponseStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ApplicationLayerAutomaticResponseConfiguration = {
    type = "structure",
    id = "ApplicationLayerAutomaticResponseConfiguration",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResponseAction }),
    },
}

M.AssociateDRTLogBucketInput = {
    type = "structure",
    id = "AssociateDRTLogBucketInput",
    members = {
        LogBucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateDRTLogBucketOutput = {
    type = "structure",
    id = "AssociateDRTLogBucketOutput",
}

M.InternalErrorException = {
    type = "structure",
    id = "InternalErrorException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidOperationException = {
    type = "structure",
    id = "InvalidOperationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    OTHER = "OTHER",
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        fields = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

M.LimitsExceededException = {
    type = "structure",
    id = "LimitsExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Limit = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.NoAssociatedRoleException = {
    type = "structure",
    id = "NoAssociatedRoleException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OptimisticLockException = {
    type = "structure",
    id = "OptimisticLockException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.AssociateDRTRoleInput = {
    type = "structure",
    id = "AssociateDRTRoleInput",
    members = {
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateDRTRoleOutput = {
    type = "structure",
    id = "AssociateDRTRoleOutput",
}

M.AssociateHealthCheckInput = {
    type = "structure",
    id = "AssociateHealthCheckInput",
    members = {
        ProtectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HealthCheckArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateHealthCheckOutput = {
    type = "structure",
    id = "AssociateHealthCheckOutput",
}

M.InvalidResourceException = {
    type = "structure",
    id = "InvalidResourceException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EmergencyContact = {
    type = "structure",
    id = "EmergencyContact",
    members = {
        EmailAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PhoneNumber = {
            type = "string",
        },
        ContactNotes = {
            type = "string",
        },
    },
}

M.AssociateProactiveEngagementDetailsInput = {
    type = "structure",
    id = "AssociateProactiveEngagementDetailsInput",
    members = {
        EmergencyContactList = {
            type = "list",
            member = M.EmergencyContact,
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateProactiveEngagementDetailsOutput = {
    type = "structure",
    id = "AssociateProactiveEngagementDetailsOutput",
}

M.SummarizedCounter = {
    type = "structure",
    id = "SummarizedCounter",
    members = {
        Name = {
            type = "string",
        },
        Max = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Average = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        Sum = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        N = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        Unit = {
            type = "string",
        },
    },
}

M.AttackLayer = {
    NETWORK = "NETWORK",
    APPLICATION = "APPLICATION",
}

M.AttackPropertyIdentifier = {
    DESTINATION_URL = "DESTINATION_URL",
    REFERRER = "REFERRER",
    SOURCE_ASN = "SOURCE_ASN",
    SOURCE_COUNTRY = "SOURCE_COUNTRY",
    SOURCE_IP_ADDRESS = "SOURCE_IP_ADDRESS",
    SOURCE_USER_AGENT = "SOURCE_USER_AGENT",
    WORDPRESS_PINGBACK_REFLECTOR = "WORDPRESS_PINGBACK_REFLECTOR",
    WORDPRESS_PINGBACK_SOURCE = "WORDPRESS_PINGBACK_SOURCE",
}

M.Contributor = {
    type = "structure",
    id = "Contributor",
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.Unit = {
    BITS = "BITS",
    BYTES = "BYTES",
    PACKETS = "PACKETS",
    REQUESTS = "REQUESTS",
}

M.AttackProperty = {
    type = "structure",
    id = "AttackProperty",
    members = {
        AttackLayer = {
            type = "string",
        },
        AttackPropertyIdentifier = {
            type = "string",
        },
        TopContributors = {
            type = "list",
            member = M.Contributor,
        },
        Unit = {
            type = "string",
        },
        Total = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.Mitigation = {
    type = "structure",
    id = "Mitigation",
    members = {
        MitigationName = {
            type = "string",
        },
    },
}

M.SummarizedAttackVector = {
    type = "structure",
    id = "SummarizedAttackVector",
    members = {
        VectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VectorCounters = {
            type = "list",
            member = M.SummarizedCounter,
        },
    },
}

M.SubResourceType = {
    IP = "IP",
    URL = "URL",
}

M.SubResourceSummary = {
    type = "structure",
    id = "SubResourceSummary",
    members = {
        Type = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        AttackVectors = {
            type = "list",
            member = M.SummarizedAttackVector,
        },
        Counters = {
            type = "list",
            member = M.SummarizedCounter,
        },
    },
}

M.AttackDetail = {
    type = "structure",
    id = "AttackDetail",
    members = {
        AttackId = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        SubResources = {
            type = "list",
            member = M.SubResourceSummary,
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        AttackCounters = {
            type = "list",
            member = M.SummarizedCounter,
        },
        AttackProperties = {
            type = "list",
            member = M.AttackProperty,
        },
        Mitigations = {
            type = "list",
            member = M.Mitigation,
        },
    },
}

M.AttackVolumeStatistics = {
    type = "structure",
    id = "AttackVolumeStatistics",
    members = {
        Max = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.AttackVolume = {
    type = "structure",
    id = "AttackVolume",
    members = {
        BitsPerSecond = M.AttackVolumeStatistics,
        PacketsPerSecond = M.AttackVolumeStatistics,
        RequestsPerSecond = M.AttackVolumeStatistics,
    },
}

M.AttackStatisticsDataItem = {
    type = "structure",
    id = "AttackStatisticsDataItem",
    members = {
        AttackVolume = M.AttackVolume,
        AttackCount = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.AttackVectorDescription = {
    type = "structure",
    id = "AttackVectorDescription",
    members = {
        VectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AttackSummary = {
    type = "structure",
    id = "AttackSummary",
    members = {
        AttackId = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        AttackVectors = {
            type = "list",
            member = M.AttackVectorDescription,
        },
    },
}

M.AutoRenew = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        Key = {
            type = "string",
        },
        Value = {
            type = "string",
        },
    },
}

M.CreateProtectionInput = {
    type = "structure",
    id = "CreateProtectionInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
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

M.CreateProtectionOutput = {
    type = "structure",
    id = "CreateProtectionOutput",
    members = {
        ProtectionId = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    id = "ResourceAlreadyExistsException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
    },
}

M.ProtectionGroupAggregation = {
    SUM = "SUM",
    MEAN = "MEAN",
    MAX = "MAX",
}

M.ProtectionGroupPattern = {
    ALL = "ALL",
    ARBITRARY = "ARBITRARY",
    BY_RESOURCE_TYPE = "BY_RESOURCE_TYPE",
}

M.ProtectedResourceType = {
    CLOUDFRONT_DISTRIBUTION = "CLOUDFRONT_DISTRIBUTION",
    ROUTE_53_HOSTED_ZONE = "ROUTE_53_HOSTED_ZONE",
    ELASTIC_IP_ALLOCATION = "ELASTIC_IP_ALLOCATION",
    CLASSIC_LOAD_BALANCER = "CLASSIC_LOAD_BALANCER",
    APPLICATION_LOAD_BALANCER = "APPLICATION_LOAD_BALANCER",
    GLOBAL_ACCELERATOR = "GLOBAL_ACCELERATOR",
}

M.CreateProtectionGroupInput = {
    type = "structure",
    id = "CreateProtectionGroupInput",
    members = {
        ProtectionGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Aggregation = {
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
        ResourceType = {
            type = "string",
        },
        Members = {
            type = "list",
            member = { type = "string" },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.CreateProtectionGroupOutput = {
    type = "structure",
    id = "CreateProtectionGroupOutput",
}

M.CreateSubscriptionInput = {
    type = "structure",
    id = "CreateSubscriptionInput",
}

M.CreateSubscriptionOutput = {
    type = "structure",
    id = "CreateSubscriptionOutput",
}

M.DeleteProtectionInput = {
    type = "structure",
    id = "DeleteProtectionInput",
    members = {
        ProtectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProtectionOutput = {
    type = "structure",
    id = "DeleteProtectionOutput",
}

M.DeleteProtectionGroupInput = {
    type = "structure",
    id = "DeleteProtectionGroupInput",
    members = {
        ProtectionGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteProtectionGroupOutput = {
    type = "structure",
    id = "DeleteProtectionGroupOutput",
}

M.DeleteSubscriptionInput = {
    type = "structure",
    id = "DeleteSubscriptionInput",
}

M.DeleteSubscriptionOutput = {
    type = "structure",
    id = "DeleteSubscriptionOutput",
}

M.LockedSubscriptionException = {
    type = "structure",
    id = "LockedSubscriptionException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeAttackInput = {
    type = "structure",
    id = "DescribeAttackInput",
    members = {
        AttackId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeAttackOutput = {
    type = "structure",
    id = "DescribeAttackOutput",
    members = {
        Attack = M.AttackDetail,
    },
}

M.DescribeAttackStatisticsInput = {
    type = "structure",
    id = "DescribeAttackStatisticsInput",
}

M.TimeRange = {
    type = "structure",
    id = "TimeRange",
    members = {
        FromInclusive = {
            type = "timestamp",
        },
        ToExclusive = {
            type = "timestamp",
        },
    },
}

M.DescribeAttackStatisticsOutput = {
    type = "structure",
    id = "DescribeAttackStatisticsOutput",
    members = {
        TimeRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimeRange }),
        DataItems = {
            type = "list",
            member = M.AttackStatisticsDataItem,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDRTAccessInput = {
    type = "structure",
    id = "DescribeDRTAccessInput",
}

M.DescribeDRTAccessOutput = {
    type = "structure",
    id = "DescribeDRTAccessOutput",
    members = {
        RoleArn = {
            type = "string",
        },
        LogBucketList = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeEmergencyContactSettingsInput = {
    type = "structure",
    id = "DescribeEmergencyContactSettingsInput",
}

M.DescribeEmergencyContactSettingsOutput = {
    type = "structure",
    id = "DescribeEmergencyContactSettingsOutput",
    members = {
        EmergencyContactList = {
            type = "list",
            member = M.EmergencyContact,
        },
    },
}

M.DescribeProtectionInput = {
    type = "structure",
    id = "DescribeProtectionInput",
    members = {
        ProtectionId = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
    },
}

M.Protection = {
    type = "structure",
    id = "Protection",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        HealthCheckIds = {
            type = "list",
            member = { type = "string" },
        },
        ProtectionArn = {
            type = "string",
        },
        ApplicationLayerAutomaticResponseConfiguration = M.ApplicationLayerAutomaticResponseConfiguration,
    },
}

M.DescribeProtectionOutput = {
    type = "structure",
    id = "DescribeProtectionOutput",
    members = {
        Protection = M.Protection,
    },
}

M.DescribeProtectionGroupInput = {
    type = "structure",
    id = "DescribeProtectionGroupInput",
    members = {
        ProtectionGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectionGroup = {
    type = "structure",
    id = "ProtectionGroup",
    members = {
        ProtectionGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Aggregation = {
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
        ResourceType = {
            type = "string",
        },
        Members = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        ProtectionGroupArn = {
            type = "string",
        },
    },
}

M.DescribeProtectionGroupOutput = {
    type = "structure",
    id = "DescribeProtectionGroupOutput",
    members = {
        ProtectionGroup = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectionGroup }),
    },
}

M.DescribeSubscriptionInput = {
    type = "structure",
    id = "DescribeSubscriptionInput",
}

M.Limit = {
    type = "structure",
    id = "Limit",
    members = {
        Type = {
            type = "string",
        },
        Max = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ProactiveEngagementStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    PENDING = "PENDING",
}

M.ProtectionGroupArbitraryPatternLimits = {
    type = "structure",
    id = "ProtectionGroupArbitraryPatternLimits",
    members = {
        MaxMembers = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ProtectionGroupPatternTypeLimits = {
    type = "structure",
    id = "ProtectionGroupPatternTypeLimits",
    members = {
        ArbitraryPatternLimits = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectionGroupArbitraryPatternLimits }),
    },
}

M.ProtectionGroupLimits = {
    type = "structure",
    id = "ProtectionGroupLimits",
    members = {
        MaxProtectionGroups = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        PatternTypeLimits = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectionGroupPatternTypeLimits }),
    },
}

M.ProtectionLimits = {
    type = "structure",
    id = "ProtectionLimits",
    members = {
        ProtectedResourceTypeLimits = {
            type = "list",
            member = M.Limit,
            traits = {
                required = true,
            },
        },
    },
}

M.SubscriptionLimits = {
    type = "structure",
    id = "SubscriptionLimits",
    members = {
        ProtectionLimits = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectionLimits }),
        ProtectionGroupLimits = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ProtectionGroupLimits }),
    },
}

M.Subscription = {
    type = "structure",
    id = "Subscription",
    members = {
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        TimeCommitmentInSeconds = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        AutoRenew = {
            type = "string",
        },
        Limits = {
            type = "list",
            member = M.Limit,
        },
        ProactiveEngagementStatus = {
            type = "string",
        },
        SubscriptionLimits = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubscriptionLimits }),
        SubscriptionArn = {
            type = "string",
        },
    },
}

M.DescribeSubscriptionOutput = {
    type = "structure",
    id = "DescribeSubscriptionOutput",
    members = {
        Subscription = M.Subscription,
    },
}

M.DisableApplicationLayerAutomaticResponseInput = {
    type = "structure",
    id = "DisableApplicationLayerAutomaticResponseInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisableApplicationLayerAutomaticResponseOutput = {
    type = "structure",
    id = "DisableApplicationLayerAutomaticResponseOutput",
}

M.DisableProactiveEngagementInput = {
    type = "structure",
    id = "DisableProactiveEngagementInput",
}

M.DisableProactiveEngagementOutput = {
    type = "structure",
    id = "DisableProactiveEngagementOutput",
}

M.DisassociateDRTLogBucketInput = {
    type = "structure",
    id = "DisassociateDRTLogBucketInput",
    members = {
        LogBucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateDRTLogBucketOutput = {
    type = "structure",
    id = "DisassociateDRTLogBucketOutput",
}

M.DisassociateDRTRoleInput = {
    type = "structure",
    id = "DisassociateDRTRoleInput",
}

M.DisassociateDRTRoleOutput = {
    type = "structure",
    id = "DisassociateDRTRoleOutput",
}

M.DisassociateHealthCheckInput = {
    type = "structure",
    id = "DisassociateHealthCheckInput",
    members = {
        ProtectionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HealthCheckArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateHealthCheckOutput = {
    type = "structure",
    id = "DisassociateHealthCheckOutput",
}

M.EnableApplicationLayerAutomaticResponseInput = {
    type = "structure",
    id = "EnableApplicationLayerAutomaticResponseInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResponseAction }),
    },
}

M.EnableApplicationLayerAutomaticResponseOutput = {
    type = "structure",
    id = "EnableApplicationLayerAutomaticResponseOutput",
}

M.EnableProactiveEngagementInput = {
    type = "structure",
    id = "EnableProactiveEngagementInput",
}

M.EnableProactiveEngagementOutput = {
    type = "structure",
    id = "EnableProactiveEngagementOutput",
}

M.GetSubscriptionStateInput = {
    type = "structure",
    id = "GetSubscriptionStateInput",
}

M.SubscriptionState = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.GetSubscriptionStateOutput = {
    type = "structure",
    id = "GetSubscriptionStateOutput",
    members = {
        SubscriptionState = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAttacksInput = {
    type = "structure",
    id = "ListAttacksInput",
    members = {
        ResourceArns = {
            type = "list",
            member = { type = "string" },
        },
        StartTime = M.TimeRange,
        EndTime = M.TimeRange,
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListAttacksOutput = {
    type = "structure",
    id = "ListAttacksOutput",
    members = {
        AttackSummaries = {
            type = "list",
            member = M.AttackSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidPaginationTokenException = {
    type = "structure",
    id = "InvalidPaginationTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InclusionProtectionGroupFilters = {
    type = "structure",
    id = "InclusionProtectionGroupFilters",
    members = {
        ProtectionGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Patterns = {
            type = "list",
            member = { type = "string" },
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
        Aggregations = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListProtectionGroupsInput = {
    type = "structure",
    id = "ListProtectionGroupsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        InclusionFilters = M.InclusionProtectionGroupFilters,
    },
}

M.ListProtectionGroupsOutput = {
    type = "structure",
    id = "ListProtectionGroupsOutput",
    members = {
        ProtectionGroups = {
            type = "list",
            member = M.ProtectionGroup,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InclusionProtectionFilters = {
    type = "structure",
    id = "InclusionProtectionFilters",
    members = {
        ResourceArns = {
            type = "list",
            member = { type = "string" },
        },
        ProtectionNames = {
            type = "list",
            member = { type = "string" },
        },
        ResourceTypes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListProtectionsInput = {
    type = "structure",
    id = "ListProtectionsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        InclusionFilters = M.InclusionProtectionFilters,
    },
}

M.ListProtectionsOutput = {
    type = "structure",
    id = "ListProtectionsOutput",
    members = {
        Protections = {
            type = "list",
            member = M.Protection,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourcesInProtectionGroupInput = {
    type = "structure",
    id = "ListResourcesInProtectionGroupInput",
    members = {
        ProtectionGroupId = {
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

M.ListResourcesInProtectionGroupOutput = {
    type = "structure",
    id = "ListResourcesInProtectionGroupOutput",
    members = {
        ResourceArns = {
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

M.UpdateApplicationLayerAutomaticResponseInput = {
    type = "structure",
    id = "UpdateApplicationLayerAutomaticResponseInput",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResponseAction }),
    },
}

M.UpdateApplicationLayerAutomaticResponseOutput = {
    type = "structure",
    id = "UpdateApplicationLayerAutomaticResponseOutput",
}

M.UpdateEmergencyContactSettingsInput = {
    type = "structure",
    id = "UpdateEmergencyContactSettingsInput",
    members = {
        EmergencyContactList = {
            type = "list",
            member = M.EmergencyContact,
        },
    },
}

M.UpdateEmergencyContactSettingsOutput = {
    type = "structure",
    id = "UpdateEmergencyContactSettingsOutput",
}

M.UpdateProtectionGroupInput = {
    type = "structure",
    id = "UpdateProtectionGroupInput",
    members = {
        ProtectionGroupId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Aggregation = {
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
        ResourceType = {
            type = "string",
        },
        Members = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.UpdateProtectionGroupOutput = {
    type = "structure",
    id = "UpdateProtectionGroupOutput",
}

M.UpdateSubscriptionInput = {
    type = "structure",
    id = "UpdateSubscriptionInput",
    members = {
        AutoRenew = {
            type = "string",
        },
    },
}

M.UpdateSubscriptionOutput = {
    type = "structure",
    id = "UpdateSubscriptionOutput",
}

return M
