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
            type = "number",
        },
    },
}

M.DiskEncryptionConfiguration = {
    type = "structure",
    members = {
        encryptionContext = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        workerConfiguration = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "list",
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
        s3MonitoringConfiguration = {
            type = "structure",
        },
        managedPersistenceMonitoringConfiguration = {
            type = "structure",
        },
        cloudWatchLoggingConfiguration = {
            type = "structure",
        },
        prometheusMonitoringConfiguration = {
            type = "structure",
        },
    },
}

M.NetworkConfiguration = {
    type = "structure",
    members = {
        subnetIds = {
            type = "list",
            member_type = "string",
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.SchedulerConfiguration = {
    type = "structure",
    members = {
        queueTimeoutMinutes = {
            type = "number",
        },
        maxConcurrentRuns = {
            type = "number",
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
        imageConfiguration = {
            type = "structure",
        },
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
        imageConfiguration = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        states = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
            traits = {
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
            type = "number",
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
            type = "number",
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
            type = "number",
        },
        memoryGBHour = {
            type = "number",
        },
        storageGBHour = {
            type = "number",
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
            member_type = "string",
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
            member_type = "string",
        },
        sparkSubmitParameters = {
            type = "string",
        },
    },
}

M.JobDriver = {
    type = "union",
    members = {
        sparkSubmit = {
            type = "structure",
        },
        hive = {
            type = "structure",
        },
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
            type = "number",
        },
        maxFailedAttemptsPerHour = {
            type = "number",
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
            type = "number",
        },
        memoryGBHour = {
            type = "number",
        },
        storageGBHour = {
            type = "number",
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
            type = "number",
            traits = {
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
            type = "number",
        },
    },
}

M.ListJobRunAttemptsOutput = {
    type = "structure",
    members = {
        jobRunAttempts = {
            type = "list",
            member_type = "structure",
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
            type = "number",
            traits = {
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
            member_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        states = {
            type = "list",
            member_type = "string",
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
            member_type = "structure",
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
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
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
            key_type = "string",
            value_type = "string",
        },
        configurations = {
            type = "list",
            member_type = "structure",
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
            key_type = "string",
            value_type = "structure",
        },
        maximumCapacity = {
            type = "structure",
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
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        autoStartConfiguration = {
            type = "structure",
        },
        autoStopConfiguration = {
            type = "structure",
        },
        networkConfiguration = {
            type = "structure",
        },
        architecture = {
            type = "string",
        },
        imageConfiguration = {
            type = "structure",
        },
        workerTypeSpecifications = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        runtimeConfiguration = {
            type = "list",
            member_type = "structure",
        },
        monitoringConfiguration = {
            type = "structure",
        },
        diskEncryptionConfiguration = {
            type = "structure",
        },
        interactiveConfiguration = {
            type = "structure",
        },
        schedulerConfiguration = {
            type = "structure",
        },
        identityCenterConfiguration = {
            type = "structure",
        },
        jobLevelCostAllocationConfiguration = {
            type = "structure",
        },
    },
}

M.ConfigurationOverrides = {
    type = "structure",
    members = {
        applicationConfiguration = {
            type = "list",
            member_type = "structure",
        },
        monitoringConfiguration = {
            type = "structure",
        },
        diskEncryptionConfiguration = {
            type = "structure",
        },
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
                required = true,
            },
        },
        initialCapacity = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        maximumCapacity = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        autoStartConfiguration = {
            type = "structure",
        },
        autoStopConfiguration = {
            type = "structure",
        },
        networkConfiguration = {
            type = "structure",
        },
        architecture = {
            type = "string",
        },
        imageConfiguration = {
            type = "structure",
        },
        workerTypeSpecifications = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        runtimeConfiguration = {
            type = "list",
            member_type = "structure",
        },
        monitoringConfiguration = {
            type = "structure",
        },
        diskEncryptionConfiguration = {
            type = "structure",
        },
        interactiveConfiguration = {
            type = "structure",
        },
        schedulerConfiguration = {
            type = "structure",
        },
        identityCenterConfiguration = {
            type = "structure",
        },
        jobLevelCostAllocationConfiguration = {
            type = "structure",
        },
    },
}

M.SessionConfigurationOverrides = {
    type = "structure",
    members = {
        runtimeConfiguration = {
            type = "list",
            member_type = "structure",
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
                required = true,
            },
        },
        initialCapacity = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        maximumCapacity = {
            type = "structure",
        },
        autoStartConfiguration = {
            type = "structure",
        },
        autoStopConfiguration = {
            type = "structure",
        },
        networkConfiguration = {
            type = "structure",
        },
        architecture = {
            type = "string",
        },
        imageConfiguration = {
            type = "structure",
        },
        workerTypeSpecifications = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        interactiveConfiguration = {
            type = "structure",
        },
        releaseLabel = {
            type = "string",
        },
        runtimeConfiguration = {
            type = "list",
            member_type = "structure",
        },
        monitoringConfiguration = {
            type = "structure",
        },
        diskEncryptionConfiguration = {
            type = "structure",
        },
        schedulerConfiguration = {
            type = "structure",
        },
        identityCenterConfiguration = {
            type = "structure",
        },
        jobLevelCostAllocationConfiguration = {
            type = "structure",
        },
    },
}

M.GetApplicationOutput = {
    type = "structure",
    members = {
        application = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
        executionIamPolicy = {
            type = "structure",
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
        configurationOverrides = {
            type = "structure",
        },
        jobDriver = {
            type = "union",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        totalResourceUtilization = {
            type = "structure",
        },
        networkConfiguration = {
            type = "structure",
        },
        totalExecutionDurationSeconds = {
            type = "number",
        },
        executionTimeoutMinutes = {
            type = "number",
        },
        billedResourceUtilization = {
            type = "structure",
        },
        mode = {
            type = "string",
        },
        retryPolicy = {
            type = "structure",
        },
        attempt = {
            type = "number",
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
            type = "number",
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
        configurationOverrides = {
            type = "structure",
        },
        networkConfiguration = {
            type = "structure",
        },
        idleTimeoutMinutes = {
            type = "number",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        totalResourceUtilization = {
            type = "structure",
        },
        billedResourceUtilization = {
            type = "structure",
        },
        totalExecutionDurationSeconds = {
            type = "number",
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
                required = true,
            },
        },
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionIamPolicy = {
            type = "structure",
        },
        jobDriver = {
            type = "union",
        },
        configurationOverrides = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        executionTimeoutMinutes = {
            type = "number",
        },
        name = {
            type = "string",
        },
        mode = {
            type = "string",
        },
        retryPolicy = {
            type = "structure",
        },
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
                required = true,
            },
        },
        executionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        configurationOverrides = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        idleTimeoutMinutes = {
            type = "number",
        },
        name = {
            type = "string",
        },
    },
}

M.UpdateApplicationOutput = {
    type = "structure",
    members = {
        application = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetJobRunOutput = {
    type = "structure",
    members = {
        jobRun = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSessionOutput = {
    type = "structure",
    members = {
        session = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

return M
