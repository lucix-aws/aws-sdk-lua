local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AccessDeniedForDependencyException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BlockAction = {
    type = "structure",
}

M.CountAction = {
    type = "structure",
}

M.ResponseAction = {
    type = "structure",
    members = {
        Block = {
            type = "structure",
        },
        Count = {
            type = "structure",
        },
    },
}

M.ApplicationLayerAutomaticResponseStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ApplicationLayerAutomaticResponseConfiguration = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Action = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateDRTLogBucketInput = {
    type = "structure",
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
}

M.InternalErrorException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidOperationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.LimitsExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        Type = {
            type = "string",
        },
        Limit = {
            type = "number",
        },
    },
}

M.NoAssociatedRoleException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OptimisticLockException = {
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
}

M.AssociateHealthCheckInput = {
    type = "structure",
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
}

M.InvalidResourceException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EmergencyContact = {
    type = "structure",
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
    members = {
        EmergencyContactList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateProactiveEngagementDetailsOutput = {
    type = "structure",
}

M.SummarizedCounter = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        Max = {
            type = "number",
        },
        Average = {
            type = "number",
        },
        Sum = {
            type = "number",
        },
        N = {
            type = "number",
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
    members = {
        Name = {
            type = "string",
        },
        Value = {
            type = "number",
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
    members = {
        AttackLayer = {
            type = "string",
        },
        AttackPropertyIdentifier = {
            type = "string",
        },
        TopContributors = {
            type = "list",
            member_type = "structure",
        },
        Unit = {
            type = "string",
        },
        Total = {
            type = "number",
        },
    },
}

M.Mitigation = {
    type = "structure",
    members = {
        MitigationName = {
            type = "string",
        },
    },
}

M.SummarizedAttackVector = {
    type = "structure",
    members = {
        VectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VectorCounters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SubResourceType = {
    IP = "IP",
    URL = "URL",
}

M.SubResourceSummary = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Id = {
            type = "string",
        },
        AttackVectors = {
            type = "list",
            member_type = "structure",
        },
        Counters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AttackDetail = {
    type = "structure",
    members = {
        AttackId = {
            type = "string",
        },
        ResourceArn = {
            type = "string",
        },
        SubResources = {
            type = "list",
            member_type = "structure",
        },
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        AttackCounters = {
            type = "list",
            member_type = "structure",
        },
        AttackProperties = {
            type = "list",
            member_type = "structure",
        },
        Mitigations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AttackVolumeStatistics = {
    type = "structure",
    members = {
        Max = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.AttackVolume = {
    type = "structure",
    members = {
        BitsPerSecond = {
            type = "structure",
        },
        PacketsPerSecond = {
            type = "structure",
        },
        RequestsPerSecond = {
            type = "structure",
        },
    },
}

M.AttackStatisticsDataItem = {
    type = "structure",
    members = {
        AttackVolume = {
            type = "structure",
        },
        AttackCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.AttackVectorDescription = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.AutoRenew = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Tag = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.CreateProtectionOutput = {
    type = "structure",
    members = {
        ProtectionId = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
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
            member_type = "string",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateProtectionGroupOutput = {
    type = "structure",
}

M.CreateSubscriptionInput = {
    type = "structure",
}

M.CreateSubscriptionOutput = {
    type = "structure",
}

M.DeleteProtectionInput = {
    type = "structure",
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
}

M.DeleteProtectionGroupInput = {
    type = "structure",
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
}

M.DeleteSubscriptionInput = {
    type = "structure",
}

M.DeleteSubscriptionOutput = {
    type = "structure",
}

M.LockedSubscriptionException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeAttackInput = {
    type = "structure",
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
    members = {
        Attack = {
            type = "structure",
        },
    },
}

M.DescribeAttackStatisticsInput = {
    type = "structure",
}

M.TimeRange = {
    type = "structure",
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
    members = {
        TimeRange = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        DataItems = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDRTAccessInput = {
    type = "structure",
}

M.DescribeDRTAccessOutput = {
    type = "structure",
    members = {
        RoleArn = {
            type = "string",
        },
        LogBucketList = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeEmergencyContactSettingsInput = {
    type = "structure",
}

M.DescribeEmergencyContactSettingsOutput = {
    type = "structure",
    members = {
        EmergencyContactList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeProtectionInput = {
    type = "structure",
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
            member_type = "string",
        },
        ProtectionArn = {
            type = "string",
        },
        ApplicationLayerAutomaticResponseConfiguration = {
            type = "structure",
        },
    },
}

M.DescribeProtectionOutput = {
    type = "structure",
    members = {
        Protection = {
            type = "structure",
        },
    },
}

M.DescribeProtectionGroupInput = {
    type = "structure",
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
            member_type = "string",
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
    members = {
        ProtectionGroup = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeSubscriptionInput = {
    type = "structure",
}

M.Limit = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        Max = {
            type = "number",
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
    members = {
        MaxMembers = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectionGroupPatternTypeLimits = {
    type = "structure",
    members = {
        ArbitraryPatternLimits = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectionGroupLimits = {
    type = "structure",
    members = {
        MaxProtectionGroups = {
            type = "number",
            traits = {
                required = true,
            },
        },
        PatternTypeLimits = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ProtectionLimits = {
    type = "structure",
    members = {
        ProtectedResourceTypeLimits = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SubscriptionLimits = {
    type = "structure",
    members = {
        ProtectionLimits = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ProtectionGroupLimits = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Subscription = {
    type = "structure",
    members = {
        StartTime = {
            type = "timestamp",
        },
        EndTime = {
            type = "timestamp",
        },
        TimeCommitmentInSeconds = {
            type = "number",
        },
        AutoRenew = {
            type = "string",
        },
        Limits = {
            type = "list",
            member_type = "structure",
        },
        ProactiveEngagementStatus = {
            type = "string",
        },
        SubscriptionLimits = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SubscriptionArn = {
            type = "string",
        },
    },
}

M.DescribeSubscriptionOutput = {
    type = "structure",
    members = {
        Subscription = {
            type = "structure",
        },
    },
}

M.DisableApplicationLayerAutomaticResponseInput = {
    type = "structure",
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
}

M.DisableProactiveEngagementInput = {
    type = "structure",
}

M.DisableProactiveEngagementOutput = {
    type = "structure",
}

M.DisassociateDRTLogBucketInput = {
    type = "structure",
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
}

M.DisassociateDRTRoleInput = {
    type = "structure",
}

M.DisassociateDRTRoleOutput = {
    type = "structure",
}

M.DisassociateHealthCheckInput = {
    type = "structure",
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
}

M.EnableApplicationLayerAutomaticResponseInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Action = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EnableApplicationLayerAutomaticResponseOutput = {
    type = "structure",
}

M.EnableProactiveEngagementInput = {
    type = "structure",
}

M.EnableProactiveEngagementOutput = {
    type = "structure",
}

M.GetSubscriptionStateInput = {
    type = "structure",
}

M.SubscriptionState = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.GetSubscriptionStateOutput = {
    type = "structure",
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
    members = {
        ResourceArns = {
            type = "list",
            member_type = "string",
        },
        StartTime = {
            type = "structure",
        },
        EndTime = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListAttacksOutput = {
    type = "structure",
    members = {
        AttackSummaries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidPaginationTokenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InclusionProtectionGroupFilters = {
    type = "structure",
    members = {
        ProtectionGroupIds = {
            type = "list",
            member_type = "string",
        },
        Patterns = {
            type = "list",
            member_type = "string",
        },
        ResourceTypes = {
            type = "list",
            member_type = "string",
        },
        Aggregations = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListProtectionGroupsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        InclusionFilters = {
            type = "structure",
        },
    },
}

M.ListProtectionGroupsOutput = {
    type = "structure",
    members = {
        ProtectionGroups = {
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

M.InclusionProtectionFilters = {
    type = "structure",
    members = {
        ResourceArns = {
            type = "list",
            member_type = "string",
        },
        ProtectionNames = {
            type = "list",
            member_type = "string",
        },
        ResourceTypes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListProtectionsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        InclusionFilters = {
            type = "structure",
        },
    },
}

M.ListProtectionsOutput = {
    type = "structure",
    members = {
        Protections = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListResourcesInProtectionGroupInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ListResourcesInProtectionGroupOutput = {
    type = "structure",
    members = {
        ResourceArns = {
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

M.UpdateApplicationLayerAutomaticResponseInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Action = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateApplicationLayerAutomaticResponseOutput = {
    type = "structure",
}

M.UpdateEmergencyContactSettingsInput = {
    type = "structure",
    members = {
        EmergencyContactList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateEmergencyContactSettingsOutput = {
    type = "structure",
}

M.UpdateProtectionGroupInput = {
    type = "structure",
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
            member_type = "string",
        },
    },
}

M.UpdateProtectionGroupOutput = {
    type = "structure",
}

M.UpdateSubscriptionInput = {
    type = "structure",
    members = {
        AutoRenew = {
            type = "string",
        },
    },
}

M.UpdateSubscriptionOutput = {
    type = "structure",
}

return M
