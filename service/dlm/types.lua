local M = {}

M.EncryptionConfiguration = {
    type = "structure",
    members = {
        Encrypted = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        CmkArn = {
            type = "string",
        },
    },
}

M.RetentionIntervalUnitValues = {
    DAYS = "DAYS",
    WEEKS = "WEEKS",
    MONTHS = "MONTHS",
    YEARS = "YEARS",
}

M.CrossRegionCopyRetainRule = {
    type = "structure",
    members = {
        Interval = {
            type = "number",
        },
        IntervalUnit = {
            type = "string",
        },
    },
}

M.CrossRegionCopyAction = {
    type = "structure",
    members = {
        Target = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EncryptionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RetainRule = {
            type = "structure",
        },
    },
}

M.Action = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CrossRegionCopy = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RetentionArchiveTier = {
    type = "structure",
    members = {
        Count = {
            type = "number",
        },
        Interval = {
            type = "number",
        },
        IntervalUnit = {
            type = "string",
        },
    },
}

M.ArchiveRetainRule = {
    type = "structure",
    members = {
        RetentionArchiveTier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ArchiveRule = {
    type = "structure",
    members = {
        RetainRule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CrossRegionCopyTarget = {
    type = "structure",
    members = {
        TargetRegion = {
            type = "string",
        },
    },
}

M.DefaultPolicyTypeValues = {
    VOLUME = "VOLUME",
    INSTANCE = "INSTANCE",
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

M.Exclusions = {
    type = "structure",
    members = {
        ExcludeBootVolumes = {
            type = "boolean",
        },
        ExcludeVolumeTypes = {
            type = "list",
            member_type = "string",
        },
        ExcludeTags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EventTypeValues = {
    SHARE_SNAPSHOT = "shareSnapshot",
}

M.EventParameters = {
    type = "structure",
    members = {
        EventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SnapshotOwner = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        DescriptionRegex = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EventSourceValues = {
    MANAGED_CWE = "MANAGED_CWE",
}

M.EventSource = {
    type = "structure",
    members = {
        Type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Parameters = {
            type = "structure",
        },
    },
}

M.Parameters = {
    type = "structure",
    members = {
        ExcludeBootVolume = {
            type = "boolean",
        },
        NoReboot = {
            type = "boolean",
        },
        ExcludeDataVolumeTags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PolicyLanguageValues = {
    SIMPLIFIED = "SIMPLIFIED",
    STANDARD = "STANDARD",
}

M.PolicyTypeValues = {
    EBS_SNAPSHOT_MANAGEMENT = "EBS_SNAPSHOT_MANAGEMENT",
    IMAGE_MANAGEMENT = "IMAGE_MANAGEMENT",
    EVENT_BASED_POLICY = "EVENT_BASED_POLICY",
}

M.ResourceLocationValues = {
    CLOUD = "CLOUD",
    OUTPOST = "OUTPOST",
    LOCAL_ZONE = "LOCAL_ZONE",
}

M.ResourceTypeValues = {
    VOLUME = "VOLUME",
    INSTANCE = "INSTANCE",
}

M.IntervalUnitValues = {
    HOURS = "HOURS",
}

M.LocationValues = {
    CLOUD = "CLOUD",
    OUTPOST_LOCAL = "OUTPOST_LOCAL",
    LOCAL_ZONE = "LOCAL_ZONE",
}

M.ExecutionHandlerServiceValues = {
    AWS_SYSTEMS_MANAGER = "AWS_SYSTEMS_MANAGER",
}

M.StageValues = {
    PRE = "PRE",
    POST = "POST",
}

M.Script = {
    type = "structure",
    members = {
        Stages = {
            type = "list",
            member_type = "string",
        },
        ExecutionHandlerService = {
            type = "string",
        },
        ExecutionHandler = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecuteOperationOnScriptFailure = {
            type = "boolean",
        },
        ExecutionTimeout = {
            type = "number",
        },
        MaximumRetryCount = {
            type = "number",
        },
    },
}

M.CreateRule = {
    type = "structure",
    members = {
        Location = {
            type = "string",
        },
        Interval = {
            type = "number",
        },
        IntervalUnit = {
            type = "string",
        },
        Times = {
            type = "list",
            member_type = "string",
        },
        CronExpression = {
            type = "string",
        },
        Scripts = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CrossRegionCopyDeprecateRule = {
    type = "structure",
    members = {
        Interval = {
            type = "number",
        },
        IntervalUnit = {
            type = "string",
        },
    },
}

M.CrossRegionCopyRule = {
    type = "structure",
    members = {
        TargetRegion = {
            type = "string",
        },
        Target = {
            type = "string",
        },
        Encrypted = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        CmkArn = {
            type = "string",
        },
        CopyTags = {
            type = "boolean",
        },
        RetainRule = {
            type = "structure",
        },
        DeprecateRule = {
            type = "structure",
        },
    },
}

M.DeprecateRule = {
    type = "structure",
    members = {
        Count = {
            type = "number",
        },
        Interval = {
            type = "number",
        },
        IntervalUnit = {
            type = "string",
        },
    },
}

M.FastRestoreRule = {
    type = "structure",
    members = {
        Count = {
            type = "number",
        },
        Interval = {
            type = "number",
        },
        IntervalUnit = {
            type = "string",
        },
        AvailabilityZones = {
            type = "list",
            member_type = "string",
        },
        AvailabilityZoneIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RetainRule = {
    type = "structure",
    members = {
        Count = {
            type = "number",
        },
        Interval = {
            type = "number",
        },
        IntervalUnit = {
            type = "string",
        },
    },
}

M.ShareRule = {
    type = "structure",
    members = {
        TargetAccounts = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        UnshareInterval = {
            type = "number",
        },
        UnshareIntervalUnit = {
            type = "string",
        },
    },
}

M.Schedule = {
    type = "structure",
    members = {
        Name = {
            type = "string",
        },
        CopyTags = {
            type = "boolean",
        },
        TagsToAdd = {
            type = "list",
            member_type = "structure",
        },
        VariableTags = {
            type = "list",
            member_type = "structure",
        },
        CreateRule = {
            type = "structure",
        },
        RetainRule = {
            type = "structure",
        },
        FastRestoreRule = {
            type = "structure",
        },
        CrossRegionCopyRules = {
            type = "list",
            member_type = "structure",
        },
        ShareRules = {
            type = "list",
            member_type = "structure",
        },
        DeprecateRule = {
            type = "structure",
        },
        ArchiveRule = {
            type = "structure",
        },
    },
}

M.PolicyDetails = {
    type = "structure",
    members = {
        PolicyType = {
            type = "string",
        },
        ResourceTypes = {
            type = "list",
            member_type = "string",
        },
        ResourceLocations = {
            type = "list",
            member_type = "string",
        },
        TargetTags = {
            type = "list",
            member_type = "structure",
        },
        Schedules = {
            type = "list",
            member_type = "structure",
        },
        Parameters = {
            type = "structure",
        },
        EventSource = {
            type = "structure",
        },
        Actions = {
            type = "list",
            member_type = "structure",
        },
        PolicyLanguage = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        CreateInterval = {
            type = "number",
        },
        RetainInterval = {
            type = "number",
        },
        CopyTags = {
            type = "boolean",
        },
        CrossRegionCopyTargets = {
            type = "list",
            member_type = "structure",
        },
        ExtendDeletion = {
            type = "boolean",
        },
        Exclusions = {
            type = "structure",
        },
    },
}

M.SettablePolicyStateValues = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CreateLifecyclePolicyInput = {
    type = "structure",
    members = {
        ExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Description = {
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
        PolicyDetails = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        DefaultPolicy = {
            type = "string",
        },
        CreateInterval = {
            type = "number",
        },
        RetainInterval = {
            type = "number",
        },
        CopyTags = {
            type = "boolean",
        },
        ExtendDeletion = {
            type = "boolean",
        },
        CrossRegionCopyTargets = {
            type = "list",
            member_type = "structure",
        },
        Exclusions = {
            type = "structure",
        },
    },
}

M.CreateLifecyclePolicyOutput = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
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
        Code = {
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
        Code = {
            type = "string",
        },
        RequiredParameters = {
            type = "list",
            member_type = "string",
        },
        MutuallyExclusiveParameters = {
            type = "list",
            member_type = "string",
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
        Code = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
    },
}

M.DefaultPoliciesTypeValues = {
    VOLUME = "VOLUME",
    INSTANCE = "INSTANCE",
    ALL = "ALL",
}

M.DeleteLifecyclePolicyInput = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteLifecyclePolicyOutput = {
    type = "structure",
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
        Code = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        ResourceIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GettablePolicyStateValues = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    ERROR = "ERROR",
}

M.GetLifecyclePoliciesInput = {
    type = "structure",
    members = {
        PolicyIds = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "policyIds",
            },
        },
        State = {
            type = "string",
            traits = {
                http_query = "state",
            },
        },
        ResourceTypes = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "resourceTypes",
            },
        },
        TargetTags = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "targetTags",
            },
        },
        TagsToAdd = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "tagsToAdd",
            },
        },
        DefaultPolicyType = {
            type = "string",
            traits = {
                http_query = "defaultPolicyType",
            },
        },
    },
}

M.LifecyclePolicySummary = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        PolicyType = {
            type = "string",
        },
        DefaultPolicy = {
            type = "boolean",
        },
    },
}

M.GetLifecyclePoliciesOutput = {
    type = "structure",
    members = {
        Policies = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetLifecyclePolicyInput = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LifecyclePolicy = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        State = {
            type = "string",
        },
        StatusMessage = {
            type = "string",
        },
        ExecutionRoleArn = {
            type = "string",
        },
        DateCreated = {
            type = "timestamp",
        },
        DateModified = {
            type = "timestamp",
        },
        PolicyDetails = {
            type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        PolicyArn = {
            type = "string",
        },
        DefaultPolicy = {
            type = "boolean",
        },
    },
}

M.GetLifecyclePolicyOutput = {
    type = "structure",
    members = {
        Policy = {
            type = "structure",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
                http_label = true,
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateLifecyclePolicyInput = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ExecutionRoleArn = {
            type = "string",
        },
        State = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        PolicyDetails = {
            type = "structure",
        },
        CreateInterval = {
            type = "number",
        },
        RetainInterval = {
            type = "number",
        },
        CopyTags = {
            type = "boolean",
        },
        ExtendDeletion = {
            type = "boolean",
        },
        CrossRegionCopyTargets = {
            type = "list",
            member_type = "structure",
        },
        Exclusions = {
            type = "structure",
        },
    },
}

M.UpdateLifecyclePolicyOutput = {
    type = "structure",
}

return M
