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

M.EncryptionMode = {
    SSE_S3 = "SSE_S3",
    SSE_KMS = "SSE_KMS",
}

M.S3EncryptionConfig = {
    type = "structure",
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
    members = {
        S3Encryption = {
            type = "structure",
        },
    },
}

M.ArtifactConfigOutput = {
    type = "structure",
    members = {
        S3Encryption = {
            type = "structure",
        },
    },
}

M.AssociateResourceInput = {
    type = "structure",
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

M.InternalServerException = {
    type = "structure",
    error = "server",
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

M.ServiceQuotaExceededException = {
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

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.BaseScreenshot = {
    type = "structure",
    members = {
        ScreenshotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        IgnoreCoordinates = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BrowserType = {
    CHROME = "CHROME",
    FIREFOX = "FIREFOX",
}

M.BrowserConfig = {
    type = "structure",
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
    members = {
        SourceLocationArn = {
            type = "string",
        },
        Handler = {
            type = "string",
        },
        BlueprintTypes = {
            type = "list",
            member_type = "string",
        },
        Dependencies = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DryRunConfigOutput = {
    type = "structure",
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
    members = {
        TimeoutInSeconds = {
            type = "number",
        },
        MemoryInMB = {
            type = "number",
        },
        ActiveTracing = {
            type = "boolean",
        },
        EphemeralStorage = {
            type = "number",
        },
    },
}

M.RetryConfigOutput = {
    type = "structure",
    members = {
        MaxRetries = {
            type = "number",
        },
    },
}

M.CanaryScheduleOutput = {
    type = "structure",
    members = {
        Expression = {
            type = "string",
        },
        DurationInSeconds = {
            type = "number",
        },
        RetryConfig = {
            type = "structure",
        },
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
    members = {
        BaseScreenshots = {
            type = "list",
            member_type = "structure",
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
    members = {
        VpcId = {
            type = "string",
        },
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        Ipv6AllowedForDualStack = {
            type = "boolean",
        },
    },
}

M.Canary = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        Name = {
            type = "string",
        },
        Code = {
            type = "structure",
        },
        ExecutionRoleArn = {
            type = "string",
        },
        Schedule = {
            type = "structure",
        },
        RunConfig = {
            type = "structure",
        },
        SuccessRetentionPeriodInDays = {
            type = "number",
        },
        FailureRetentionPeriodInDays = {
            type = "number",
        },
        Status = {
            type = "structure",
        },
        Timeline = {
            type = "structure",
        },
        ArtifactS3Location = {
            type = "string",
        },
        EngineArn = {
            type = "string",
        },
        RuntimeVersion = {
            type = "string",
        },
        VpcConfig = {
            type = "structure",
        },
        VisualReference = {
            type = "structure",
        },
        ProvisionedResourceCleanup = {
            type = "string",
        },
        BrowserConfigs = {
            type = "list",
            member_type = "structure",
        },
        EngineConfigs = {
            type = "list",
            member_type = "structure",
        },
        VisualReferences = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ArtifactConfig = {
            type = "structure",
        },
        DryRunConfig = {
            type = "structure",
        },
    },
}

M.CanaryDryRunConfigOutput = {
    type = "structure",
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
    members = {
        Id = {
            type = "string",
        },
        ScheduledRunId = {
            type = "string",
        },
        RetryAttempt = {
            type = "number",
        },
        Name = {
            type = "string",
        },
        Status = {
            type = "structure",
        },
        Timeline = {
            type = "structure",
        },
        ArtifactS3Location = {
            type = "string",
        },
        DryRunConfig = {
            type = "structure",
        },
        BrowserType = {
            type = "string",
        },
    },
}

M.CanaryLastRun = {
    type = "structure",
    members = {
        CanaryName = {
            type = "string",
        },
        LastRun = {
            type = "structure",
        },
    },
}

M.CanaryCodeInput = {
    type = "structure",
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
        },
        BlueprintTypes = {
            type = "list",
            member_type = "string",
        },
        Dependencies = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CanaryRunConfigInput = {
    type = "structure",
    members = {
        TimeoutInSeconds = {
            type = "number",
        },
        MemoryInMB = {
            type = "number",
        },
        ActiveTracing = {
            type = "boolean",
        },
        EnvironmentVariables = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        EphemeralStorage = {
            type = "number",
        },
    },
}

M.RetryConfigInput = {
    type = "structure",
    members = {
        MaxRetries = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CanaryScheduleInput = {
    type = "structure",
    members = {
        Expression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DurationInSeconds = {
            type = "number",
        },
        RetryConfig = {
            type = "structure",
        },
    },
}

M.ResourceToTag = {
    LAMBDA_FUNCTION = "lambda-function",
}

M.VpcConfigInput = {
    type = "structure",
    members = {
        SubnetIds = {
            type = "list",
            member_type = "string",
        },
        SecurityGroupIds = {
            type = "list",
            member_type = "string",
        },
        Ipv6AllowedForDualStack = {
            type = "boolean",
        },
    },
}

M.CreateCanaryInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Code = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        Schedule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        RunConfig = {
            type = "structure",
        },
        SuccessRetentionPeriodInDays = {
            type = "number",
        },
        FailureRetentionPeriodInDays = {
            type = "number",
        },
        RuntimeVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        VpcConfig = {
            type = "structure",
        },
        ResourcesToReplicateTags = {
            type = "list",
            member_type = "string",
        },
        ProvisionedResourceCleanup = {
            type = "string",
        },
        BrowserConfigs = {
            type = "list",
            member_type = "structure",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        ArtifactConfig = {
            type = "structure",
        },
    },
}

M.CreateCanaryOutput = {
    type = "structure",
    members = {
        Canary = {
            type = "structure",
        },
    },
}

M.RequestEntityTooLargeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateGroupInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.Group = {
    type = "structure",
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
            key_type = "string",
            value_type = "string",
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
    members = {
        Group = {
            type = "structure",
        },
    },
}

M.DeleteCanaryInput = {
    type = "structure",
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
                http_query = "deleteLambda",
            },
        },
    },
}

M.DeleteCanaryOutput = {
    type = "structure",
}

M.DeleteGroupInput = {
    type = "structure",
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
}

M.DescribeCanariesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Names = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeCanariesOutput = {
    type = "structure",
    members = {
        Canaries = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeCanariesLastRunInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        Names = {
            type = "list",
            member_type = "string",
        },
        BrowserType = {
            type = "string",
        },
    },
}

M.DescribeCanariesLastRunOutput = {
    type = "structure",
    members = {
        CanariesLastRun = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeRuntimeVersionsInput = {
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

M.RuntimeVersion = {
    type = "structure",
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
    members = {
        RuntimeVersions = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DisassociateResourceInput = {
    type = "structure",
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
}

M.GetCanaryInput = {
    type = "structure",
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
    members = {
        Canary = {
            type = "structure",
        },
    },
}

M.RunType = {
    CANARY_RUN = "CANARY_RUN",
    DRY_RUN = "DRY_RUN",
}

M.GetCanaryRunsInput = {
    type = "structure",
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
            type = "number",
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
    members = {
        CanaryRuns = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.GetGroupInput = {
    type = "structure",
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
    members = {
        Group = {
            type = "structure",
        },
    },
}

M.GroupSummary = {
    type = "structure",
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
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListAssociatedGroupsInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
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
    members = {
        Groups = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGroupResourcesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
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
    members = {
        Resources = {
            type = "list",
            member_type = "string",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListGroupsInput = {
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

M.ListGroupsOutput = {
    type = "structure",
    members = {
        Groups = {
            type = "list",
            member_type = "structure",
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

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartCanaryInput = {
    type = "structure",
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
}

M.VisualReferenceInput = {
    type = "structure",
    members = {
        BaseScreenshots = {
            type = "list",
            member_type = "structure",
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
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Code = {
            type = "structure",
        },
        RuntimeVersion = {
            type = "string",
        },
        RunConfig = {
            type = "structure",
        },
        VpcConfig = {
            type = "structure",
        },
        ExecutionRoleArn = {
            type = "string",
        },
        SuccessRetentionPeriodInDays = {
            type = "number",
        },
        FailureRetentionPeriodInDays = {
            type = "number",
        },
        VisualReference = {
            type = "structure",
        },
        ArtifactS3Location = {
            type = "string",
        },
        ArtifactConfig = {
            type = "structure",
        },
        ProvisionedResourceCleanup = {
            type = "string",
        },
        BrowserConfigs = {
            type = "list",
            member_type = "structure",
        },
        VisualReferences = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StartCanaryDryRunOutput = {
    type = "structure",
    members = {
        DryRunConfig = {
            type = "structure",
        },
    },
}

M.StopCanaryInput = {
    type = "structure",
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

M.UpdateCanaryInput = {
    type = "structure",
    members = {
        Name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        Code = {
            type = "structure",
        },
        ExecutionRoleArn = {
            type = "string",
        },
        RuntimeVersion = {
            type = "string",
        },
        Schedule = {
            type = "structure",
        },
        RunConfig = {
            type = "structure",
        },
        SuccessRetentionPeriodInDays = {
            type = "number",
        },
        FailureRetentionPeriodInDays = {
            type = "number",
        },
        VpcConfig = {
            type = "structure",
        },
        VisualReference = {
            type = "structure",
        },
        ArtifactS3Location = {
            type = "string",
        },
        ArtifactConfig = {
            type = "structure",
        },
        ProvisionedResourceCleanup = {
            type = "string",
        },
        DryRunId = {
            type = "string",
        },
        VisualReferences = {
            type = "list",
            member_type = "structure",
        },
        BrowserConfigs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateCanaryOutput = {
    type = "structure",
}

return M
