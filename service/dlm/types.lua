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
            type = "integer",
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
        EncryptionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionConfiguration }),
        RetainRule = M.CrossRegionCopyRetainRule,
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
            member = M.CrossRegionCopyAction,
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
            type = "integer",
        },
        Interval = {
            type = "integer",
        },
        IntervalUnit = {
            type = "string",
        },
    },
}

M.ArchiveRetainRule = {
    type = "structure",
    members = {
        RetentionArchiveTier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RetentionArchiveTier }),
    },
}

M.ArchiveRule = {
    type = "structure",
    members = {
        RetainRule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ArchiveRetainRule }),
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
            member = { type = "string" },
        },
        ExcludeTags = {
            type = "list",
            member = M.Tag,
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
            member = { type = "string" },
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
        Parameters = M.EventParameters,
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
            member = M.Tag,
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
            member = { type = "string" },
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
            type = "integer",
        },
        MaximumRetryCount = {
            type = "integer",
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
            type = "integer",
        },
        IntervalUnit = {
            type = "string",
        },
        Times = {
            type = "list",
            member = { type = "string" },
        },
        CronExpression = {
            type = "string",
        },
        Scripts = {
            type = "list",
            member = M.Script,
        },
    },
}

M.CrossRegionCopyDeprecateRule = {
    type = "structure",
    members = {
        Interval = {
            type = "integer",
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
        RetainRule = M.CrossRegionCopyRetainRule,
        DeprecateRule = M.CrossRegionCopyDeprecateRule,
    },
}

M.DeprecateRule = {
    type = "structure",
    members = {
        Count = {
            type = "integer",
        },
        Interval = {
            type = "integer",
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
            type = "integer",
        },
        Interval = {
            type = "integer",
        },
        IntervalUnit = {
            type = "string",
        },
        AvailabilityZones = {
            type = "list",
            member = { type = "string" },
        },
        AvailabilityZoneIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.RetainRule = {
    type = "structure",
    members = {
        Count = {
            type = "integer",
        },
        Interval = {
            type = "integer",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        UnshareInterval = {
            type = "integer",
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
            member = M.Tag,
        },
        VariableTags = {
            type = "list",
            member = M.Tag,
        },
        CreateRule = M.CreateRule,
        RetainRule = M.RetainRule,
        FastRestoreRule = M.FastRestoreRule,
        CrossRegionCopyRules = {
            type = "list",
            member = M.CrossRegionCopyRule,
        },
        ShareRules = {
            type = "list",
            member = M.ShareRule,
        },
        DeprecateRule = M.DeprecateRule,
        ArchiveRule = M.ArchiveRule,
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
            member = { type = "string" },
        },
        ResourceLocations = {
            type = "list",
            member = { type = "string" },
        },
        TargetTags = {
            type = "list",
            member = M.Tag,
        },
        Schedules = {
            type = "list",
            member = M.Schedule,
        },
        Parameters = M.Parameters,
        EventSource = M.EventSource,
        Actions = {
            type = "list",
            member = M.Action,
        },
        PolicyLanguage = {
            type = "string",
        },
        ResourceType = {
            type = "string",
        },
        CreateInterval = {
            type = "integer",
        },
        RetainInterval = {
            type = "integer",
        },
        CopyTags = {
            type = "boolean",
        },
        CrossRegionCopyTargets = {
            type = "list",
            member = M.CrossRegionCopyTarget,
        },
        ExtendDeletion = {
            type = "boolean",
        },
        Exclusions = M.Exclusions,
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
        PolicyDetails = M.PolicyDetails,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        DefaultPolicy = {
            type = "string",
        },
        CreateInterval = {
            type = "integer",
        },
        RetainInterval = {
            type = "integer",
        },
        CopyTags = {
            type = "boolean",
        },
        ExtendDeletion = {
            type = "boolean",
        },
        CrossRegionCopyTargets = {
            type = "list",
            member = M.CrossRegionCopyTarget,
        },
        Exclusions = M.Exclusions,
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
            member = { type = "string" },
        },
        MutuallyExclusiveParameters = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
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
            member = { type = "string" },
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
            member = { type = "string" },
            traits = {
                http_query = "resourceTypes",
            },
        },
        TargetTags = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "targetTags",
            },
        },
        TagsToAdd = {
            type = "list",
            member = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
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
            member = M.LifecyclePolicySummary,
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        DateModified = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        PolicyDetails = M.PolicyDetails,
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        Policy = M.LifecyclePolicy,
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
            key = { type = "string" },
            value = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
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
            member = { type = "string" },
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
        PolicyDetails = M.PolicyDetails,
        CreateInterval = {
            type = "integer",
        },
        RetainInterval = {
            type = "integer",
        },
        CopyTags = {
            type = "boolean",
        },
        ExtendDeletion = {
            type = "boolean",
        },
        CrossRegionCopyTargets = {
            type = "list",
            member = M.CrossRegionCopyTarget,
        },
        Exclusions = M.Exclusions,
    },
}

M.UpdateLifecyclePolicyOutput = {
    type = "structure",
}

return M
