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

M.EncryptionMode = {
    SSE_S3 = "SSE_S3",
    SSE_KMS = "SSE_KMS",
}

M.S3EncryptionConfig = {
    type = "structure",
    id = "S3EncryptionConfig",
    members = {
        EncryptionMode = {
            type = "string",
        },
        KmsKeyArn = {
            type = "string",
        },
    },
}

M.ArtifactConfigInput = {
    type = "structure",
    id = "ArtifactConfigInput",
    members = {
        S3Encryption = M.S3EncryptionConfig,
    },
}

M.ArtifactConfigOutput = {
    type = "structure",
    id = "ArtifactConfigOutput",
    members = {
        S3Encryption = M.S3EncryptionConfig,
    },
}

M.AssociateResourceInput = {
    type = "structure",
    id = "AssociateResourceInput",
    members = {
        GroupIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateResourceOutput = {
    type = "structure",
    id = "AssociateResourceOutput",
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
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

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
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

M.BaseScreenshot = {
    type = "structure",
    id = "BaseScreenshot",
    members = {
        ScreenshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IgnoreCoordinates = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.BrowserType = {
    CHROME = "CHROME",
    FIREFOX = "FIREFOX",
}

M.BrowserConfig = {
    type = "structure",
    id = "BrowserConfig",
    members = {
        BrowserType = {
            type = "string",
        },
    },
}

M.DependencyType = {
    LambdaLayer = "LambdaLayer",
}

M.Dependency = {
    type = "structure",
    id = "Dependency",
    members = {
        Type = {
            type = "string",
        },
        Reference = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CanaryCodeOutput = {
    type = "structure",
    id = "CanaryCodeOutput",
    members = {
        SourceLocationArn = {
            type = "string",
        },
        Handler = {
            type = "string",
        },
        BlueprintTypes = {
            type = "list",
            member = { type = "string" },
        },
        Dependencies = {
            type = "list",
            member = M.Dependency,
        },
    },
}

M.DryRunConfigOutput = {
    type = "structure",
    id = "DryRunConfigOutput",
    members = {
        DryRunId = {
            type = "string",
        },
        LastDryRunExecutionStatus = {
            type = "string",
        },
    },
}

M.EngineConfig = {
    type = "structure",
    id = "EngineConfig",
    members = {
        EngineArn = {
            type = "string",
        },
        BrowserType = {
            type = "string",
        },
    },
}

M.ProvisionedResourceCleanupSetting = {
    AUTOMATIC = "AUTOMATIC",
    OFF = "OFF",
}

M.CanaryRunConfigOutput = {
    type = "structure",
    id = "CanaryRunConfigOutput",
    members = {
        TimeoutInSeconds = {
            type = "integer",
        },
        MemoryInMB = {
            type = "integer",
        },
        ActiveTracing = {
            type = "boolean",
        },
        EphemeralStorage = {
            type = "integer",
        },
    },
}

M.RetryConfigOutput = {
    type = "structure",
    id = "RetryConfigOutput",
    members = {
        MaxRetries = {
            type = "integer",
        },
    },
}

M.CanaryScheduleOutput = {
    type = "structure",
    id = "CanaryScheduleOutput",
    members = {
        Expression = {
            type = "string",
        },
        DurationInSeconds = {
            type = "long",
        },
        RetryConfig = M.RetryConfigOutput,
    },
}

M.CanaryState = {
    CREATING = "CREATING",
    READY = "READY",
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    UPDATING = "UPDATING",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    ERROR = "ERROR",
    DELETING = "DELETING",
}

M.CanaryStateReasonCode = {
    INVALID_PERMISSIONS = "INVALID_PERMISSIONS",
    CREATE_PENDING = "CREATE_PENDING",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_PENDING = "UPDATE_PENDING",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_COMPLETE = "UPDATE_COMPLETE",
    ROLLBACK_COMPLETE = "ROLLBACK_COMPLETE",
    ROLLBACK_FAILED = "ROLLBACK_FAILED",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    DELETE_FAILED = "DELETE_FAILED",
    SYNC_DELETE_IN_PROGRESS = "SYNC_DELETE_IN_PROGRESS",
}

M.CanaryStatus = {
    type = "structure",
    id = "CanaryStatus",
    members = {
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        StateReasonCode = {
            type = "string",
        },
    },
}

M.CanaryTimeline = {
    type = "structure",
    id = "CanaryTimeline",
    members = {
        Created = {
            type = "timestamp",
        },
        LastModified = {
            type = "timestamp",
        },
        LastStarted = {
            type = "timestamp",
        },
        LastStopped = {
            type = "timestamp",
        },
    },
}

M.VisualReferenceOutput = {
    type = "structure",
    id = "VisualReferenceOutput",
    members = {
        BaseScreenshots = {
            type = "list",
            member = M.BaseScreenshot,
        },
        BaseCanaryRunId = {
            type = "string",
        },
        BrowserType = {
            type = "string",
        },
    },
}

M.VpcConfigOutput = {
    type = "structure",
    id = "VpcConfigOutput",
    members = {
        VpcId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Ipv6AllowedForDualStack = {
            type = "boolean",
        },
    },
}

M.Canary = {
    type = "structure",
    id = "Canary",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Code = M.CanaryCodeOutput,
        ExecutionRoleArn = {
            type = "string",
        },
        Schedule = M.CanaryScheduleOutput,
        RunConfig = M.CanaryRunConfigOutput,
        SuccessRetentionPeriodInDays = {
            type = "integer",
        },
        FailureRetentionPeriodInDays = {
            type = "integer",
        },
        Status = M.CanaryStatus,
        Timeline = M.CanaryTimeline,
        ArtifactS3Location = {
            type = "string",
        },
        EngineArn = {
            type = "string",
        },
        RuntimeVersion = {
            type = "string",
        },
        VpcConfig = M.VpcConfigOutput,
        VisualReference = M.VisualReferenceOutput,
        ProvisionedResourceCleanup = {
            type = "string",
        },
        BrowserConfigs = {
            type = "list",
            member = M.BrowserConfig,
        },
        EngineConfigs = {
            type = "list",
            member = M.EngineConfig,
        },
        VisualReferences = {
            type = "list",
            member = M.VisualReferenceOutput,
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ArtifactConfig = M.ArtifactConfigOutput,
        DryRunConfig = M.DryRunConfigOutput,
    },
}

M.CanaryDryRunConfigOutput = {
    type = "structure",
    id = "CanaryDryRunConfigOutput",
    members = {
        DryRunId = {
            type = "string",
        },
    },
}

M.CanaryRunState = {
    RUNNING = "RUNNING",
    PASSED = "PASSED",
    FAILED = "FAILED",
}

M.CanaryRunStateReasonCode = {
    CANARY_FAILURE = "CANARY_FAILURE",
    EXECUTION_FAILURE = "EXECUTION_FAILURE",
}

M.CanaryRunTestResult = {
    PASSED = "PASSED",
    FAILED = "FAILED",
    UNKNOWN = "UNKNOWN",
}

M.CanaryRunStatus = {
    type = "structure",
    id = "CanaryRunStatus",
    members = {
        State = {
            type = "string",
        },
        StateReason = {
            type = "string",
        },
        StateReasonCode = {
            type = "string",
        },
        TestResult = {
            type = "string",
        },
    },
}

M.CanaryRunTimeline = {
    type = "structure",
    id = "CanaryRunTimeline",
    members = {
        Started = {
            type = "timestamp",
        },
        Completed = {
            type = "timestamp",
        },
        MetricTimestampForRunAndRetries = {
            type = "timestamp",
        },
    },
}

M.CanaryRun = {
    type = "structure",
    id = "CanaryRun",
    members = {
        Id = {
            type = "string",
        },
        ScheduledRunId = {
            type = "string",
        },
        RetryAttempt = {
            type = "integer",
        },
        Name = {
            type = "string",
        },
        Status = M.CanaryRunStatus,
        Timeline = M.CanaryRunTimeline,
        ArtifactS3Location = {
            type = "string",
        },
        DryRunConfig = M.CanaryDryRunConfigOutput,
        BrowserType = {
            type = "string",
        },
    },
}

M.CanaryLastRun = {
    type = "structure",
    id = "CanaryLastRun",
    members = {
        CanaryName = {
            type = "string",
        },
        LastRun = M.CanaryRun,
    },
}

M.CanaryCodeInput = {
    type = "structure",
    id = "CanaryCodeInput",
    members = {
        S3Bucket = {
            type = "string",
        },
        S3Key = {
            type = "string",
        },
        S3Version = {
            type = "string",
        },
        ZipFile = {
            type = "blob",
        },
        Handler = {
            type = "string",
            traits = {
                default = "",
            },
        },
        BlueprintTypes = {
            type = "list",
            member = { type = "string" },
        },
        Dependencies = {
            type = "list",
            member = M.Dependency,
        },
    },
}

M.CanaryRunConfigInput = {
    type = "structure",
    id = "CanaryRunConfigInput",
    members = {
        TimeoutInSeconds = {
            type = "integer",
        },
        MemoryInMB = {
            type = "integer",
        },
        ActiveTracing = {
            type = "boolean",
        },
        EnvironmentVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        EphemeralStorage = {
            type = "integer",
        },
    },
}

M.RetryConfigInput = {
    type = "structure",
    id = "RetryConfigInput",
    members = {
        MaxRetries = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.CanaryScheduleInput = {
    type = "structure",
    id = "CanaryScheduleInput",
    members = {
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DurationInSeconds = {
            type = "long",
        },
        RetryConfig = M.RetryConfigInput,
    },
}

M.ResourceToTag = {
    LAMBDA_FUNCTION = "lambda-function",
}

M.VpcConfigInput = {
    type = "structure",
    id = "VpcConfigInput",
    members = {
        SubnetIds = {
            type = "list",
            member = { type = "string" },
        },
        SecurityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
        Ipv6AllowedForDualStack = {
            type = "boolean",
        },
    },
}

M.CreateCanaryInput = {
    type = "structure",
    id = "CreateCanaryInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Code = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CanaryCodeInput }),
        ArtifactS3Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Schedule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CanaryScheduleInput }),
        RunConfig = M.CanaryRunConfigInput,
        SuccessRetentionPeriodInDays = {
            type = "integer",
        },
        FailureRetentionPeriodInDays = {
            type = "integer",
        },
        RuntimeVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcConfig = M.VpcConfigInput,
        ResourcesToReplicateTags = {
            type = "list",
            member = { type = "string" },
        },
        ProvisionedResourceCleanup = {
            type = "string",
        },
        BrowserConfigs = {
            type = "list",
            member = M.BrowserConfig,
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        ArtifactConfig = M.ArtifactConfigInput,
    },
}

M.CreateCanaryOutput = {
    type = "structure",
    id = "CreateCanaryOutput",
    members = {
        Canary = M.Canary,
    },
}

M.RequestEntityTooLargeException = {
    type = "structure",
    id = "RequestEntityTooLargeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateGroupInput = {
    type = "structure",
    id = "CreateGroupInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.Group = {
    type = "structure",
    id = "Group",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        CreatedTime = {
            type = "timestamp",
        },
        LastModifiedTime = {
            type = "timestamp",
        },
    },
}

M.CreateGroupOutput = {
    type = "structure",
    id = "CreateGroupOutput",
    members = {
        Group = M.Group,
    },
}

M.DeleteCanaryInput = {
    type = "structure",
    id = "DeleteCanaryInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DeleteLambda = {
            type = "boolean",
            traits = {
                default = false,
                http_query = "deleteLambda",
            },
        },
    },
}

M.DeleteCanaryOutput = {
    type = "structure",
    id = "DeleteCanaryOutput",
}

M.DeleteGroupInput = {
    type = "structure",
    id = "DeleteGroupInput",
    members = {
        GroupIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteGroupOutput = {
    type = "structure",
    id = "DeleteGroupOutput",
}

M.DescribeCanariesInput = {
    type = "structure",
    id = "DescribeCanariesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Names = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeCanariesOutput = {
    type = "structure",
    id = "DescribeCanariesOutput",
    members = {
        Canaries = {
            type = "list",
            member = M.Canary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeCanariesLastRunInput = {
    type = "structure",
    id = "DescribeCanariesLastRunInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        Names = {
            type = "list",
            member = { type = "string" },
        },
        BrowserType = {
            type = "string",
        },
    },
}

M.DescribeCanariesLastRunOutput = {
    type = "structure",
    id = "DescribeCanariesLastRunOutput",
    members = {
        CanariesLastRun = {
            type = "list",
            member = M.CanaryLastRun,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeRuntimeVersionsInput = {
    type = "structure",
    id = "DescribeRuntimeVersionsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.RuntimeVersion = {
    type = "structure",
    id = "RuntimeVersion",
    members = {
        VersionName = {
            type = "string",
        },
        Description = {
            type = "string",
        },
        ReleaseDate = {
            type = "timestamp",
        },
        DeprecationDate = {
            type = "timestamp",
        },
    },
}

M.DescribeRuntimeVersionsOutput = {
    type = "structure",
    id = "DescribeRuntimeVersionsOutput",
    members = {
        RuntimeVersions = {
            type = "list",
            member = M.RuntimeVersion,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DisassociateResourceInput = {
    type = "structure",
    id = "DisassociateResourceInput",
    members = {
        GroupIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DisassociateResourceOutput = {
    type = "structure",
    id = "DisassociateResourceOutput",
}

M.GetCanaryInput = {
    type = "structure",
    id = "GetCanaryInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        DryRunId = {
            type = "string",
            traits = {
                http_query = "dryRunId",
            },
        },
    },
}

M.GetCanaryOutput = {
    type = "structure",
    id = "GetCanaryOutput",
    members = {
        Canary = M.Canary,
    },
}

M.RunType = {
    CANARY_RUN = "CANARY_RUN",
    DRY_RUN = "DRY_RUN",
}

M.GetCanaryRunsInput = {
    type = "structure",
    id = "GetCanaryRunsInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        DryRunId = {
            type = "string",
        },
        RunType = {
            type = "string",
        },
    },
}

M.GetCanaryRunsOutput = {
    type = "structure",
    id = "GetCanaryRunsOutput",
    members = {
        CanaryRuns = {
            type = "list",
            member = M.CanaryRun,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetGroupInput = {
    type = "structure",
    id = "GetGroupInput",
    members = {
        GroupIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetGroupOutput = {
    type = "structure",
    id = "GetGroupOutput",
    members = {
        Group = M.Group,
    },
}

M.GroupSummary = {
    type = "structure",
    id = "GroupSummary",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.InternalFailureException = {
    type = "structure",
    id = "InternalFailureException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListAssociatedGroupsInput = {
    type = "structure",
    id = "ListAssociatedGroupsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        ResourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListAssociatedGroupsOutput = {
    type = "structure",
    id = "ListAssociatedGroupsOutput",
    members = {
        Groups = {
            type = "list",
            member = M.GroupSummary,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGroupResourcesInput = {
    type = "structure",
    id = "ListGroupResourcesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
        GroupIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListGroupResourcesOutput = {
    type = "structure",
    id = "ListGroupResourcesOutput",
    members = {
        Resources = {
            type = "list",
            member = { type = "string" },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGroupsInput = {
    type = "structure",
    id = "ListGroupsInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ListGroupsOutput = {
    type = "structure",
    id = "ListGroupsOutput",
    members = {
        Groups = {
            type = "list",
            member = M.GroupSummary,
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartCanaryInput = {
    type = "structure",
    id = "StartCanaryInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartCanaryOutput = {
    type = "structure",
    id = "StartCanaryOutput",
}

M.VisualReferenceInput = {
    type = "structure",
    id = "VisualReferenceInput",
    members = {
        BaseScreenshots = {
            type = "list",
            member = M.BaseScreenshot,
        },
        BaseCanaryRunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BrowserType = {
            type = "string",
        },
    },
}

M.StartCanaryDryRunInput = {
    type = "structure",
    id = "StartCanaryDryRunInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Code = M.CanaryCodeInput,
        RuntimeVersion = {
            type = "string",
        },
        RunConfig = M.CanaryRunConfigInput,
        VpcConfig = M.VpcConfigInput,
        ExecutionRoleArn = {
            type = "string",
        },
        SuccessRetentionPeriodInDays = {
            type = "integer",
        },
        FailureRetentionPeriodInDays = {
            type = "integer",
        },
        VisualReference = M.VisualReferenceInput,
        ArtifactS3Location = {
            type = "string",
        },
        ArtifactConfig = M.ArtifactConfigInput,
        ProvisionedResourceCleanup = {
            type = "string",
        },
        BrowserConfigs = {
            type = "list",
            member = M.BrowserConfig,
        },
        VisualReferences = {
            type = "list",
            member = M.VisualReferenceInput,
        },
    },
}

M.StartCanaryDryRunOutput = {
    type = "structure",
    id = "StartCanaryDryRunOutput",
    members = {
        DryRunConfig = M.DryRunConfigOutput,
    },
}

M.StopCanaryInput = {
    type = "structure",
    id = "StopCanaryInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopCanaryOutput = {
    type = "structure",
    id = "StopCanaryOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

M.UpdateCanaryInput = {
    type = "structure",
    id = "UpdateCanaryInput",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Code = M.CanaryCodeInput,
        ExecutionRoleArn = {
            type = "string",
        },
        RuntimeVersion = {
            type = "string",
        },
        Schedule = M.CanaryScheduleInput,
        RunConfig = M.CanaryRunConfigInput,
        SuccessRetentionPeriodInDays = {
            type = "integer",
        },
        FailureRetentionPeriodInDays = {
            type = "integer",
        },
        VpcConfig = M.VpcConfigInput,
        VisualReference = M.VisualReferenceInput,
        ArtifactS3Location = {
            type = "string",
        },
        ArtifactConfig = M.ArtifactConfigInput,
        ProvisionedResourceCleanup = {
            type = "string",
        },
        DryRunId = {
            type = "string",
        },
        VisualReferences = {
            type = "list",
            member = M.VisualReferenceInput,
        },
        BrowserConfigs = {
            type = "list",
            member = M.BrowserConfig,
        },
    },
}

M.UpdateCanaryOutput = {
    type = "structure",
    id = "UpdateCanaryOutput",
}

return M
