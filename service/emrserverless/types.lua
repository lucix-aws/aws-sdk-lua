local M = {}

M.Architecture = {
    ARM64 = "ARM64",
    X86_64 = "X86_64",
}

M.AutoStartConfig = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
        },
    },
}

M.AutoStopConfig = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
        },
        idleTimeoutMinutes = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.DiskEncryptionConfiguration = {
    type = "structure",
    members = {
        encryptionContext = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        encryptionKeyArn = {
            type = "string",
        },
    },
}

M.IdentityCenterConfiguration = {
    type = "structure",
    members = {
        identityCenterInstanceArn = {
            type = "string",
        },
        identityCenterApplicationArn = {
            type = "string",
        },
        userBackgroundSessionsEnabled = {
            type = "boolean",
        },
    },
}

M.ImageConfiguration = {
    type = "structure",
    members = {
        imageUri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resolvedImageDigest = {
            type = "string",
        },
    },
}

M.WorkerResourceConfig = {
    type = "structure",
    members = {
        cpu = {
            type = "string",
            traits = {
                required = true,
            },
        },
        memory = {
            type = "string",
            traits = {
                required = true,
            },
        },
        disk = {
            type = "string",
        },
        diskType = {
            type = "string",
        },
    },
}

M.InitialCapacityConfig = {
    type = "structure",
    members = {
        workerCount = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        workerConfiguration = M.WorkerResourceConfig,
    },
}

M.InteractiveConfiguration = {
    type = "structure",
    members = {
        studioEnabled = {
            type = "boolean",
        },
        livyEndpointEnabled = {
            type = "boolean",
        },
        sessionEnabled = {
            type = "boolean",
        },
    },
}

M.JobLevelCostAllocationConfiguration = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
        },
    },
}

M.MaximumAllowedResources = {
    type = "structure",
    members = {
        cpu = {
            type = "string",
            traits = {
                required = true,
            },
        },
        memory = {
            type = "string",
            traits = {
                required = true,
            },
        },
        disk = {
            type = "string",
        },
    },
}

M.CloudWatchLoggingConfiguration = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        logGroupName = {
            type = "string",
        },
        logStreamNamePrefix = {
            type = "string",
        },
        encryptionKeyArn = {
            type = "string",
        },
        logTypes = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.ManagedPersistenceMonitoringConfiguration = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
        },
        encryptionKeyArn = {
            type = "string",
        },
    },
}

M.PrometheusMonitoringConfiguration = {
    type = "structure",
    members = {
        remoteWriteUrl = {
            type = "string",
        },
    },
}

M.S3MonitoringConfiguration = {
    type = "structure",
    members = {
        logUri = {
            type = "string",
        },
        encryptionKeyArn = {
            type = "string",
        },
    },
}

M.MonitoringConfiguration = {
    type = "structure",
    members = {
        s3MonitoringConfiguration = M.S3MonitoringConfiguration,
        managedPersistenceMonitoringConfiguration = M.ManagedPersistenceMonitoringConfiguration,
        cloudWatchLoggingConfiguration = M.CloudWatchLoggingConfiguration,
        prometheusMonitoringConfiguration = M.PrometheusMonitoringConfiguration,
    },
}

M.NetworkConfiguration = {
    type = "structure",
    members = {
        subnetIds = {
            type = "list",
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SchedulerConfiguration = {
    type = "structure",
    members = {
        queueTimeoutMinutes = {
            type = "integer",
        },
        maxConcurrentRuns = {
            type = "integer",
        },
    },
}

M.ApplicationState = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    STARTING = "STARTING",
    STARTED = "STARTED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    TERMINATED = "TERMINATED",
}

M.WorkerTypeSpecification = {
    type = "structure",
    members = {
        imageConfiguration = M.ImageConfiguration,
    },
}

M.ApplicationSummary = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        releaseLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stateDetails = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        architecture = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IdentityCenterConfigurationInput = {
    type = "structure",
    members = {
        identityCenterInstanceArn = {
            type = "string",
        },
        userBackgroundSessionsEnabled = {
            type = "boolean",
        },
    },
}

M.ImageConfigurationInput = {
    type = "structure",
    members = {
        imageUri = {
            type = "string",
        },
    },
}

M.WorkerTypeSpecificationInput = {
    type = "structure",
    members = {
        imageConfiguration = M.ImageConfigurationInput,
    },
}

M.CreateApplicationOutput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
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
        message = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteApplicationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteApplicationOutput = {
    type = "structure",
}

M.GetApplicationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ResourceType = {
    SESSION = "SESSION",
}

M.GetResourceDashboardInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                http_query = "resourceId",
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
                required = true,
            },
        },
    },
}

M.GetResourceDashboardOutput = {
    type = "structure",
    members = {
        url = {
            type = "string",
        },
    },
}

M.ListApplicationsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
        states = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "states",
            },
        },
    },
}

M.ListApplicationsOutput = {
    type = "structure",
    members = {
        applications = {
            type = "list",
            member = M.ApplicationSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartApplicationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StartApplicationOutput = {
    type = "structure",
}

M.StopApplicationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopApplicationOutput = {
    type = "structure",
}

M.CancelJobRunInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobRunId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        shutdownGracePeriodInSeconds = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "shutdownGracePeriodInSeconds",
            },
        },
    },
}

M.CancelJobRunOutput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobRunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDashboardForJobRunInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobRunId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        attempt = {
            type = "integer",
            traits = {
                http_query = "attempt",
            },
        },
        accessSystemProfileLogs = {
            type = "boolean",
            traits = {
                http_query = "accessSystemProfileLogs",
            },
        },
    },
}

M.GetDashboardForJobRunOutput = {
    type = "structure",
    members = {
        url = {
            type = "string",
        },
    },
}

M.GetJobRunInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobRunId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        attempt = {
            type = "integer",
            traits = {
                http_query = "attempt",
            },
        },
    },
}

M.ResourceUtilization = {
    type = "structure",
    members = {
        vCPUHour = {
            type = "double",
        },
        memoryGBHour = {
            type = "double",
        },
        storageGBHour = {
            type = "double",
        },
    },
}

M.JobRunExecutionIamPolicy = {
    type = "structure",
    members = {
        policy = {
            type = "string",
        },
        policyArns = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.Hive = {
    type = "structure",
    members = {
        query = {
            type = "string",
            traits = {
                required = true,
            },
        },
        initQueryFile = {
            type = "string",
        },
        parameters = {
            type = "string",
        },
    },
}

M.SparkSubmit = {
    type = "structure",
    members = {
        entryPoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        entryPointArguments = {
            type = "list",
            member = { type = "string" },
        },
        sparkSubmitParameters = {
            type = "string",
        },
    },
}

M.JobDriver = {
    type = "union",
    members = {
        sparkSubmit = M.SparkSubmit,
        hive = M.Hive,
    },
}

M.JobRunMode = {
    BATCH = "BATCH",
    STREAMING = "STREAMING",
}

M.RetryPolicy = {
    type = "structure",
    members = {
        maxAttempts = {
            type = "integer",
        },
        maxFailedAttemptsPerHour = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
    },
}

M.JobRunState = {
    SUBMITTED = "SUBMITTED",
    PENDING = "PENDING",
    SCHEDULED = "SCHEDULED",
    RUNNING = "RUNNING",
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    CANCELLING = "CANCELLING",
    CANCELLED = "CANCELLED",
    QUEUED = "QUEUED",
}

M.TotalResourceUtilization = {
    type = "structure",
    members = {
        vCPUHour = {
            type = "double",
        },
        memoryGBHour = {
            type = "double",
        },
        storageGBHour = {
            type = "double",
        },
    },
}

M.ListJobRunAttemptsInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobRunId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
    },
}

M.JobRunAttemptSummary = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        mode = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobCreatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        executionRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stateDetails = {
            type = "string",
            traits = {
                required = true,
            },
        },
        releaseLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
        attempt = {
            type = "integer",
        },
    },
}

M.ListJobRunAttemptsOutput = {
    type = "structure",
    members = {
        jobRunAttempts = {
            type = "list",
            member = M.JobRunAttemptSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListJobRunsInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
        createdAtAfter = {
            type = "timestamp",
            traits = {
                http_query = "createdAtAfter",
            },
        },
        createdAtBefore = {
            type = "timestamp",
            traits = {
                http_query = "createdAtBefore",
            },
        },
        states = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "states",
            },
        },
        mode = {
            type = "string",
            traits = {
                http_query = "mode",
            },
        },
    },
}

M.JobRunSummary = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        mode = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        executionRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stateDetails = {
            type = "string",
            traits = {
                required = true,
            },
        },
        releaseLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
        attempt = {
            type = "integer",
        },
        attemptCreatedAt = {
            type = "timestamp",
        },
        attemptUpdatedAt = {
            type = "timestamp",
        },
    },
}

M.ListJobRunsOutput = {
    type = "structure",
    members = {
        jobRuns = {
            type = "list",
            member = M.JobRunSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartJobRunOutput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobRunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
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
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetSessionInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SessionState = {
    SUBMITTED = "SUBMITTED",
    STARTING = "STARTING",
    STARTED = "STARTED",
    IDLE = "IDLE",
    BUSY = "BUSY",
    FAILED = "FAILED",
    TERMINATING = "TERMINATING",
    TERMINATED = "TERMINATED",
}

M.GetSessionEndpointInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSessionEndpointOutput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        authTokenExpiresAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSessionsInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
                http_query = "maxResults",
            },
        },
        states = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "states",
            },
        },
        createdAtAfter = {
            type = "timestamp",
            traits = {
                http_query = "createdAtAfter",
            },
        },
        createdAtBefore = {
            type = "timestamp",
            traits = {
                http_query = "createdAtBefore",
            },
        },
    },
}

M.SessionSummary = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stateDetails = {
            type = "string",
            traits = {
                required = true,
            },
        },
        releaseLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSessionsOutput = {
    type = "structure",
    members = {
        sessions = {
            type = "list",
            member = M.SessionSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StartSessionOutput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TerminateSessionInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TerminateSessionOutput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
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

M.Configuration = {
    type = "structure",
    members = {
        classification = {
            type = "string",
            traits = {
                required = true,
            },
        },
        properties = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        configurations = {
            type = "list",
            member = M.Configuration,
        },
    },
}

M.Application = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        releaseLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stateDetails = {
            type = "string",
        },
        initialCapacity = {
            type = "map",
            key = { type = "string" },
            value = M.InitialCapacityConfig,
        },
        maximumCapacity = M.MaximumAllowedResources,
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        autoStartConfiguration = M.AutoStartConfig,
        autoStopConfiguration = M.AutoStopConfig,
        networkConfiguration = M.NetworkConfiguration,
        architecture = {
            type = "string",
        },
        imageConfiguration = M.ImageConfiguration,
        workerTypeSpecifications = {
            type = "map",
            key = { type = "string" },
            value = M.WorkerTypeSpecification,
        },
        runtimeConfiguration = {
            type = "list",
            member = M.Configuration,
        },
        monitoringConfiguration = M.MonitoringConfiguration,
        diskEncryptionConfiguration = M.DiskEncryptionConfiguration,
        interactiveConfiguration = M.InteractiveConfiguration,
        schedulerConfiguration = M.SchedulerConfiguration,
        identityCenterConfiguration = M.IdentityCenterConfiguration,
        jobLevelCostAllocationConfiguration = M.JobLevelCostAllocationConfiguration,
    },
}

M.ConfigurationOverrides = {
    type = "structure",
    members = {
        applicationConfiguration = {
            type = "list",
            member = M.Configuration,
        },
        monitoringConfiguration = M.MonitoringConfiguration,
        diskEncryptionConfiguration = M.DiskEncryptionConfiguration,
    },
}

M.CreateApplicationInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        releaseLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        initialCapacity = {
            type = "map",
            key = { type = "string" },
            value = M.InitialCapacityConfig,
        },
        maximumCapacity = M.MaximumAllowedResources,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        autoStartConfiguration = M.AutoStartConfig,
        autoStopConfiguration = M.AutoStopConfig,
        networkConfiguration = M.NetworkConfiguration,
        architecture = {
            type = "string",
        },
        imageConfiguration = M.ImageConfigurationInput,
        workerTypeSpecifications = {
            type = "map",
            key = { type = "string" },
            value = M.WorkerTypeSpecificationInput,
        },
        runtimeConfiguration = {
            type = "list",
            member = M.Configuration,
        },
        monitoringConfiguration = M.MonitoringConfiguration,
        diskEncryptionConfiguration = M.DiskEncryptionConfiguration,
        interactiveConfiguration = M.InteractiveConfiguration,
        schedulerConfiguration = M.SchedulerConfiguration,
        identityCenterConfiguration = M.IdentityCenterConfigurationInput,
        jobLevelCostAllocationConfiguration = M.JobLevelCostAllocationConfiguration,
    },
}

M.SessionConfigurationOverrides = {
    type = "structure",
    members = {
        runtimeConfiguration = {
            type = "list",
            member = M.Configuration,
        },
    },
}

M.UpdateApplicationInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        initialCapacity = {
            type = "map",
            key = { type = "string" },
            value = M.InitialCapacityConfig,
        },
        maximumCapacity = M.MaximumAllowedResources,
        autoStartConfiguration = M.AutoStartConfig,
        autoStopConfiguration = M.AutoStopConfig,
        networkConfiguration = M.NetworkConfiguration,
        architecture = {
            type = "string",
        },
        imageConfiguration = M.ImageConfigurationInput,
        workerTypeSpecifications = {
            type = "map",
            key = { type = "string" },
            value = M.WorkerTypeSpecificationInput,
        },
        interactiveConfiguration = M.InteractiveConfiguration,
        releaseLabel = {
            type = "string",
        },
        runtimeConfiguration = {
            type = "list",
            member = M.Configuration,
        },
        monitoringConfiguration = M.MonitoringConfiguration,
        diskEncryptionConfiguration = M.DiskEncryptionConfiguration,
        schedulerConfiguration = M.SchedulerConfiguration,
        identityCenterConfiguration = M.IdentityCenterConfigurationInput,
        jobLevelCostAllocationConfiguration = M.JobLevelCostAllocationConfiguration,
    },
}

M.GetApplicationOutput = {
    type = "structure",
    members = {
        application = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Application }),
    },
}

M.JobRun = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobRunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        executionRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionIamPolicy = M.JobRunExecutionIamPolicy,
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stateDetails = {
            type = "string",
            traits = {
                required = true,
            },
        },
        releaseLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurationOverrides = M.ConfigurationOverrides,
        jobDriver = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobDriver }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        totalResourceUtilization = M.TotalResourceUtilization,
        networkConfiguration = M.NetworkConfiguration,
        totalExecutionDurationSeconds = {
            type = "integer",
        },
        executionTimeoutMinutes = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        billedResourceUtilization = M.ResourceUtilization,
        mode = {
            type = "string",
        },
        retryPolicy = M.RetryPolicy,
        attempt = {
            type = "integer",
        },
        attemptCreatedAt = {
            type = "timestamp",
        },
        attemptUpdatedAt = {
            type = "timestamp",
        },
        startedAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        queuedDurationMilliseconds = {
            type = "long",
        },
    },
}

M.Session = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stateDetails = {
            type = "string",
            traits = {
                required = true,
            },
        },
        releaseLabel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        startedAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        idleSince = {
            type = "timestamp",
        },
        configurationOverrides = M.SessionConfigurationOverrides,
        networkConfiguration = M.NetworkConfiguration,
        idleTimeoutMinutes = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        totalResourceUtilization = M.TotalResourceUtilization,
        billedResourceUtilization = M.ResourceUtilization,
        totalExecutionDurationSeconds = {
            type = "long",
        },
    },
}

M.StartJobRunInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionIamPolicy = M.JobRunExecutionIamPolicy,
        jobDriver = M.JobDriver,
        configurationOverrides = M.ConfigurationOverrides,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        executionTimeoutMinutes = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        name = {
            type = "string",
        },
        mode = {
            type = "string",
        },
        retryPolicy = M.RetryPolicy,
    },
}

M.StartSessionInput = {
    type = "structure",
    members = {
        applicationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurationOverrides = M.SessionConfigurationOverrides,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        idleTimeoutMinutes = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        name = {
            type = "string",
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
    members = {
        application = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Application }),
    },
}

M.GetJobRunOutput = {
    type = "structure",
    members = {
        jobRun = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobRun }),
    },
}

M.GetSessionOutput = {
    type = "structure",
    members = {
        session = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Session }),
    },
}

return M
