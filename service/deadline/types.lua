local M = {}

M.AcceleratorCountRange = {
    type = "structure",
    members = {
        min = {
            type = "number",
            traits = {
                required = true,
            },
        },
        max = {
            type = "number",
        },
    },
}

M.AcceleratorName = {
    T4 = "t4",
    A10G = "a10g",
    L4 = "l4",
    L40S = "l40s",
    RTX_PRO_SERVER_6000 = "rtx-pro-server-6000",
}

M.AcceleratorSelection = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runtime = {
            type = "string",
        },
    },
}

M.AcceleratorCapabilities = {
    type = "structure",
    members = {
        selections = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        count = {
            type = "structure",
        },
    },
}

M.AcceleratorTotalMemoryMiBRange = {
    type = "structure",
    members = {
        min = {
            type = "number",
            traits = {
                required = true,
            },
        },
        max = {
            type = "number",
        },
    },
}

M.AcceleratorType = {
    GPU = "gpu",
}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        context = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.AcquiredLimit = {
    type = "structure",
    members = {
        limitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        count = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.AssignedEnvironmentEnterSessionActionDefinition = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AssignedEnvironmentExitSessionActionDefinition = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LogConfiguration = {
    type = "structure",
    members = {
        logDriver = {
            type = "string",
            traits = {
                required = true,
            },
        },
        options = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        error = {
            type = "string",
        },
    },
}

M.AssignedSyncInputJobAttachmentsSessionActionDefinition = {
    type = "structure",
    members = {
        stepId = {
            type = "string",
        },
    },
}

M.TaskParameterValue = {
    type = "union",
    members = {
        int = {
            type = "string",
        },
        float = {
            type = "string",
        },
        string = {
            type = "string",
        },
        path = {
            type = "string",
        },
        chunkInt = {
            type = "string",
        },
    },
}

M.AssignedTaskRunSessionActionDefinition = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.AssignedSessionActionDefinition = {
    type = "union",
    members = {
        envEnter = {
            type = "structure",
        },
        envExit = {
            type = "structure",
        },
        taskRun = {
            type = "structure",
        },
        syncInputJobAttachments = {
            type = "structure",
        },
    },
}

M.AssignedSessionAction = {
    type = "structure",
    members = {
        sessionActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.AssignedSession = {
    type = "structure",
    members = {
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionActions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        logConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.MembershipLevel = {
    VIEWER = "VIEWER",
    CONTRIBUTOR = "CONTRIBUTOR",
    OWNER = "OWNER",
    MANAGER = "MANAGER",
}

M.DeadlinePrincipalType = {
    USER = "USER",
    GROUP = "GROUP",
}

M.AssociateMemberToFarmInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principalType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AssociateMemberToFarmOutput = {
    type = "structure",
}

M.InternalServerErrorException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
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
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        context = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ServiceQuotaExceededExceptionReason = {
    SERVICE_QUOTA_EXCEEDED_EXCEPTION = "SERVICE_QUOTA_EXCEEDED_EXCEPTION",
    KMS_KEY_LIMIT_EXCEEDED = "KMS_KEY_LIMIT_EXCEEDED",
    DEPENDENCY_LIMIT_EXCEEDED = "DEPENDENCY_LIMIT_EXCEEDED",
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
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
        },
        context = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
        },
        quotaCode = {
            type = "string",
        },
        retryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
        context = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    CANNOT_PARSE = "CANNOT_PARSE",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    OTHER = "OTHER",
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
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member_type = "structure",
        },
        context = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.AssociateMemberToFleetInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principalType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AssociateMemberToFleetOutput = {
    type = "structure",
}

M.AssociateMemberToJobInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principalType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AssociateMemberToJobOutput = {
    type = "structure",
}

M.AssociateMemberToQueueInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principalType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AssociateMemberToQueueOutput = {
    type = "structure",
}

M.AssumeFleetRoleForReadInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AwsCredentials = {
    type = "structure",
    members = {
        accessKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        secretAccessKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiration = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.AssumeFleetRoleForReadOutput = {
    type = "structure",
    members = {
        credentials = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AssumeFleetRoleForWorkerInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AssumeFleetRoleForWorkerOutput = {
    type = "structure",
    members = {
        credentials = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictExceptionReason = {
    CONFLICT_EXCEPTION = "CONFLICT_EXCEPTION",
    CONCURRENT_MODIFICATION = "CONCURRENT_MODIFICATION",
    RESOURCE_ALREADY_EXISTS = "RESOURCE_ALREADY_EXISTS",
    RESOURCE_IN_USE = "RESOURCE_IN_USE",
    STATUS_CONFLICT = "STATUS_CONFLICT",
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
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        context = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.AssumeQueueRoleForReadInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AssumeQueueRoleForReadOutput = {
    type = "structure",
    members = {
        credentials = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AssumeQueueRoleForUserInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.AssumeQueueRoleForUserOutput = {
    type = "structure",
    members = {
        credentials = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AssumeQueueRoleForWorkerInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_query = "queueId",
                required = true,
            },
        },
    },
}

M.AssumeQueueRoleForWorkerOutput = {
    type = "structure",
    members = {
        credentials = {
            type = "structure",
        },
    },
}

M.JobAttachmentsFileSystem = {
    COPIED = "COPIED",
    VIRTUAL = "VIRTUAL",
}

M.PathFormat = {
    WINDOWS = "windows",
    POSIX = "posix",
}

M.ManifestProperties = {
    type = "structure",
    members = {
        fileSystemLocationName = {
            type = "string",
        },
        rootPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rootPathFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputRelativeDirectories = {
            type = "list",
            member_type = "string",
        },
        inputManifestPath = {
            type = "string",
        },
        inputManifestHash = {
            type = "string",
        },
    },
}

M.Attachments = {
    type = "structure",
    members = {
        manifests = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        fileSystem = {
            type = "string",
        },
    },
}

M.AutoScalingMode = {
    NO_SCALING = "NO_SCALING",
    EVENT_BASED_AUTO_SCALING = "EVENT_BASED_AUTO_SCALING",
}

M.AutoScalingStatus = {
    GROWING = "GROWING",
    STEADY = "STEADY",
    SHRINKING = "SHRINKING",
}

M.BatchGetJobIdentifier = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetJobInput = {
    type = "structure",
    members = {
        identifiers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetJobErrorCode = {
    InternalServerErrorException = "InternalServerErrorException",
    ResourceNotFoundException = "ResourceNotFoundException",
    ValidationException = "ValidationException",
    AccessDeniedException = "AccessDeniedException",
    ThrottlingException = "ThrottlingException",
}

M.BatchGetJobError = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
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

M.JobLifecycleStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    CREATE_COMPLETE = "CREATE_COMPLETE",
    UPLOAD_IN_PROGRESS = "UPLOAD_IN_PROGRESS",
    UPLOAD_FAILED = "UPLOAD_FAILED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_FAILED = "UPDATE_FAILED",
    UPDATE_SUCCEEDED = "UPDATE_SUCCEEDED",
    ARCHIVED = "ARCHIVED",
}

M.JobParameter = {
    type = "union",
    members = {
        int = {
            type = "string",
        },
        float = {
            type = "string",
        },
        string = {
            type = "string",
        },
        path = {
            type = "string",
        },
    },
}

M.JobTargetTaskRunStatus = {
    READY = "READY",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    CANCELED = "CANCELED",
    SUSPENDED = "SUSPENDED",
    PENDING = "PENDING",
}

M.TaskRunStatus = {
    PENDING = "PENDING",
    READY = "READY",
    ASSIGNED = "ASSIGNED",
    STARTING = "STARTING",
    SCHEDULED = "SCHEDULED",
    INTERRUPTING = "INTERRUPTING",
    RUNNING = "RUNNING",
    SUSPENDED = "SUSPENDED",
    CANCELED = "CANCELED",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    NOT_COMPATIBLE = "NOT_COMPATIBLE",
}

M.BatchGetJobItem = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycleStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycleStatusMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        priority = {
            type = "number",
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
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        startedAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        taskRunStatus = {
            type = "string",
        },
        targetTaskRunStatus = {
            type = "string",
        },
        taskRunStatusCounts = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        taskFailureRetryCount = {
            type = "number",
        },
        storageProfileId = {
            type = "string",
        },
        maxFailedTasksCount = {
            type = "number",
        },
        maxRetriesPerTask = {
            type = "number",
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        attachments = {
            type = "structure",
        },
        description = {
            type = "string",
        },
        maxWorkerCount = {
            type = "number",
        },
        sourceJobId = {
            type = "string",
        },
    },
}

M.BatchGetJobOutput = {
    type = "structure",
    members = {
        jobs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EnvironmentDetailsIdentifiers = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobAttachmentDetailsIdentifiers = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobDetailsIdentifiers = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StepDetailsIdentifiers = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobEntityIdentifiersUnion = {
    type = "union",
    members = {
        jobDetails = {
            type = "structure",
        },
        jobAttachmentDetails = {
            type = "structure",
        },
        stepDetails = {
            type = "structure",
        },
        environmentDetails = {
            type = "structure",
        },
    },
}

M.BatchGetJobEntityInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        identifiers = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.EnvironmentDetailsEntity = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        template = {
            type = "document",
            traits = {
                required = true,
            },
        },
    },
}

M.JobAttachmentDetailsEntity = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attachments = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.JobAttachmentSettings = {
    type = "structure",
    members = {
        s3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rootPrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PosixUser = {
    type = "structure",
    members = {
        user = {
            type = "string",
            traits = {
                required = true,
            },
        },
        group = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RunAs = {
    QUEUE_CONFIGURED_USER = "QUEUE_CONFIGURED_USER",
    WORKER_AGENT_USER = "WORKER_AGENT_USER",
}

M.WindowsUser = {
    type = "structure",
    members = {
        user = {
            type = "string",
            traits = {
                required = true,
            },
        },
        passwordArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobRunAsUser = {
    type = "structure",
    members = {
        posix = {
            type = "structure",
        },
        windows = {
            type = "structure",
        },
        runAs = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PathMappingRule = {
    type = "structure",
    members = {
        sourcePathFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sourcePath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destinationPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobDetailsEntity = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobAttachmentSettings = {
            type = "structure",
        },
        jobRunAsUser = {
            type = "structure",
        },
        logGroupName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueRoleArn = {
            type = "string",
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        schemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pathMappingRules = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.StepDetailsEntity = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        schemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        template = {
            type = "document",
            traits = {
                required = true,
            },
        },
        dependencies = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobEntity = {
    type = "union",
    members = {
        jobDetails = {
            type = "structure",
        },
        jobAttachmentDetails = {
            type = "structure",
        },
        stepDetails = {
            type = "structure",
        },
        environmentDetails = {
            type = "structure",
        },
    },
}

M.JobEntityErrorCode = {
    AccessDeniedException = "AccessDeniedException",
    InternalServerException = "InternalServerException",
    ValidationException = "ValidationException",
    ResourceNotFoundException = "ResourceNotFoundException",
    MaxPayloadSizeExceeded = "MaxPayloadSizeExceeded",
    ConflictException = "ConflictException",
}

M.EnvironmentDetailsError = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
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

M.JobAttachmentDetailsError = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
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

M.JobDetailsError = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
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

M.StepDetailsError = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
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

M.GetJobEntityError = {
    type = "union",
    members = {
        jobDetails = {
            type = "structure",
        },
        jobAttachmentDetails = {
            type = "structure",
        },
        stepDetails = {
            type = "structure",
        },
        environmentDetails = {
            type = "structure",
        },
    },
}

M.BatchGetJobEntityOutput = {
    type = "structure",
    members = {
        entities = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetSessionIdentifier = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
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

M.BatchGetSessionInput = {
    type = "structure",
    members = {
        identifiers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetSessionErrorCode = {
    InternalServerErrorException = "InternalServerErrorException",
    ResourceNotFoundException = "ResourceNotFoundException",
    ValidationException = "ValidationException",
}

M.BatchGetSessionError = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
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
        code = {
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

M.IpAddresses = {
    type = "structure",
    members = {
        ipV4Addresses = {
            type = "list",
            member_type = "string",
        },
        ipV6Addresses = {
            type = "list",
            member_type = "string",
        },
    },
}

M.HostPropertiesResponse = {
    type = "structure",
    members = {
        ipAddresses = {
            type = "structure",
        },
        hostName = {
            type = "string",
        },
        ec2InstanceArn = {
            type = "string",
        },
        ec2InstanceType = {
            type = "string",
        },
    },
}

M.SessionLifecycleStatus = {
    STARTED = "STARTED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_SUCCEEDED = "UPDATE_SUCCEEDED",
    UPDATE_FAILED = "UPDATE_FAILED",
    ENDED = "ENDED",
}

M.SessionLifecycleTargetStatus = {
    ENDED = "ENDED",
}

M.BatchGetSessionItem = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
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
        fleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lifecycleStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endedAt = {
            type = "timestamp",
        },
        targetLifecycleStatus = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        log = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        hostProperties = {
            type = "structure",
        },
        workerLog = {
            type = "structure",
        },
    },
}

M.BatchGetSessionOutput = {
    type = "structure",
    members = {
        sessions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetSessionActionIdentifier = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetSessionActionInput = {
    type = "structure",
    members = {
        identifiers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetSessionActionErrorCode = {
    InternalServerErrorException = "InternalServerErrorException",
    ResourceNotFoundException = "ResourceNotFoundException",
    ValidationException = "ValidationException",
}

M.BatchGetSessionActionError = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
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

M.EnvironmentEnterSessionActionDefinition = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnvironmentExitSessionActionDefinition = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SyncInputJobAttachmentsSessionActionDefinition = {
    type = "structure",
    members = {
        stepId = {
            type = "string",
        },
    },
}

M.TaskRunSessionActionDefinition = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.SessionActionDefinition = {
    type = "union",
    members = {
        envEnter = {
            type = "structure",
        },
        envExit = {
            type = "structure",
        },
        taskRun = {
            type = "structure",
        },
        syncInputJobAttachments = {
            type = "structure",
        },
    },
}

M.TaskRunManifestPropertiesResponse = {
    type = "structure",
    members = {
        outputManifestPath = {
            type = "string",
        },
        outputManifestHash = {
            type = "string",
        },
    },
}

M.SessionActionStatus = {
    ASSIGNED = "ASSIGNED",
    RUNNING = "RUNNING",
    CANCELING = "CANCELING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    INTERRUPTED = "INTERRUPTED",
    CANCELED = "CANCELED",
    NEVER_ATTEMPTED = "NEVER_ATTEMPTED",
    SCHEDULED = "SCHEDULED",
    RECLAIMING = "RECLAIMING",
    RECLAIMED = "RECLAIMED",
}

M.BatchGetSessionActionItem = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
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
        workerUpdatedAt = {
            type = "timestamp",
        },
        progressPercent = {
            type = "number",
        },
        manifests = {
            type = "list",
            member_type = "structure",
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        processExitCode = {
            type = "number",
        },
        progressMessage = {
            type = "string",
        },
        acquiredLimits = {
            type = "list",
            member_type = "structure",
        },
        definition = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetSessionActionOutput = {
    type = "structure",
    members = {
        sessionActions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetStepIdentifier = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetStepInput = {
    type = "structure",
    members = {
        identifiers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetStepErrorCode = {
    InternalServerErrorException = "InternalServerErrorException",
    ResourceNotFoundException = "ResourceNotFoundException",
    ValidationException = "ValidationException",
    AccessDeniedException = "AccessDeniedException",
    ThrottlingException = "ThrottlingException",
}

M.BatchGetStepError = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
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

M.DependencyCounts = {
    type = "structure",
    members = {
        dependenciesResolved = {
            type = "number",
            traits = {
                required = true,
            },
        },
        dependenciesUnresolved = {
            type = "number",
            traits = {
                required = true,
            },
        },
        consumersResolved = {
            type = "number",
            traits = {
                required = true,
            },
        },
        consumersUnresolved = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.StepLifecycleStatus = {
    CREATE_COMPLETE = "CREATE_COMPLETE",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_FAILED = "UPDATE_FAILED",
    UPDATE_SUCCEEDED = "UPDATE_SUCCEEDED",
}

M.RangeConstraint = {
    CONTIGUOUS = "CONTIGUOUS",
    NONCONTIGUOUS = "NONCONTIGUOUS",
}

M.StepParameterChunks = {
    type = "structure",
    members = {
        defaultTaskCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        targetRuntimeSeconds = {
            type = "number",
        },
        rangeConstraint = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StepParameterType = {
    INT = "INT",
    FLOAT = "FLOAT",
    STRING = "STRING",
    PATH = "PATH",
    CHUNK_INT = "CHUNK_INT",
}

M.StepParameter = {
    type = "structure",
    members = {
        name = {
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
        chunks = {
            type = "structure",
        },
    },
}

M.ParameterSpace = {
    type = "structure",
    members = {
        parameters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        combination = {
            type = "string",
        },
    },
}

M.StepAmountCapability = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        min = {
            type = "number",
        },
        max = {
            type = "number",
        },
        value = {
            type = "number",
        },
    },
}

M.StepAttributeCapability = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        anyOf = {
            type = "list",
            member_type = "string",
        },
        allOf = {
            type = "list",
            member_type = "string",
        },
    },
}

M.StepRequiredCapabilities = {
    type = "structure",
    members = {
        attributes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        amounts = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StepTargetTaskRunStatus = {
    READY = "READY",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    CANCELED = "CANCELED",
    SUSPENDED = "SUSPENDED",
    PENDING = "PENDING",
}

M.BatchGetStepItem = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycleStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycleStatusMessage = {
            type = "string",
        },
        taskRunStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskRunStatusCounts = {
            type = "map",
            key_type = "string",
            value_type = "number",
            traits = {
                required = true,
            },
        },
        taskFailureRetryCount = {
            type = "number",
        },
        targetTaskRunStatus = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
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
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        startedAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        dependencyCounts = {
            type = "structure",
        },
        requiredCapabilities = {
            type = "structure",
        },
        parameterSpace = {
            type = "structure",
        },
        description = {
            type = "string",
        },
    },
}

M.BatchGetStepOutput = {
    type = "structure",
    members = {
        steps = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetTaskIdentifier = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetTaskInput = {
    type = "structure",
    members = {
        identifiers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetTaskErrorCode = {
    InternalServerErrorException = "InternalServerErrorException",
    ResourceNotFoundException = "ResourceNotFoundException",
    ValidationException = "ValidationException",
    AccessDeniedException = "AccessDeniedException",
    ThrottlingException = "ThrottlingException",
}

M.BatchGetTaskError = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
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

M.TaskTargetRunStatus = {
    READY = "READY",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    CANCELED = "CANCELED",
    SUSPENDED = "SUSPENDED",
    PENDING = "PENDING",
}

M.BatchGetTaskItem = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskId = {
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
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetRunStatus = {
            type = "string",
        },
        failureRetryCount = {
            type = "number",
        },
        startedAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        latestSessionActionId = {
            type = "string",
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
    },
}

M.BatchGetTaskOutput = {
    type = "structure",
    members = {
        tasks = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetWorkerIdentifier = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetWorkerInput = {
    type = "structure",
    members = {
        identifiers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetWorkerErrorCode = {
    InternalServerErrorException = "InternalServerErrorException",
    ResourceNotFoundException = "ResourceNotFoundException",
    ValidationException = "ValidationException",
}

M.BatchGetWorkerError = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
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

M.WorkerStatus = {
    CREATED = "CREATED",
    STARTED = "STARTED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    NOT_RESPONDING = "NOT_RESPONDING",
    NOT_COMPATIBLE = "NOT_COMPATIBLE",
    RUNNING = "RUNNING",
    IDLE = "IDLE",
}

M.BatchGetWorkerItem = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hostProperties = {
            type = "structure",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        log = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
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
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
    },
}

M.BatchGetWorkerOutput = {
    type = "structure",
    members = {
        workers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateJobLifecycleStatus = {
    ARCHIVED = "ARCHIVED",
}

M.BatchUpdateJobItem = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetTaskRunStatus = {
            type = "string",
        },
        priority = {
            type = "number",
        },
        maxFailedTasksCount = {
            type = "number",
        },
        maxRetriesPerTask = {
            type = "number",
        },
        lifecycleStatus = {
            type = "string",
        },
        maxWorkerCount = {
            type = "number",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.BatchUpdateJobInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        jobs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateJobErrorCode = {
    ConflictException = "ConflictException",
    InternalServerErrorException = "InternalServerErrorException",
    ResourceNotFoundException = "ResourceNotFoundException",
    ValidationException = "ValidationException",
    AccessDeniedException = "AccessDeniedException",
    ThrottlingException = "ThrottlingException",
}

M.BatchUpdateJobError = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
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

M.BatchUpdateJobOutput = {
    type = "structure",
    members = {
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateTaskItem = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetRunStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateTaskInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        tasks = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateTaskErrorCode = {
    ConflictException = "ConflictException",
    InternalServerErrorException = "InternalServerErrorException",
    ResourceNotFoundException = "ResourceNotFoundException",
    ValidationException = "ValidationException",
    AccessDeniedException = "AccessDeniedException",
    ThrottlingException = "ThrottlingException",
}

M.BatchUpdateTaskError = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        code = {
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

M.BatchUpdateTaskOutput = {
    type = "structure",
    members = {
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BudgetActionType = {
    STOP_SCHEDULING_AND_COMPLETE_TASKS = "STOP_SCHEDULING_AND_COMPLETE_TASKS",
    STOP_SCHEDULING_AND_CANCEL_TASKS = "STOP_SCHEDULING_AND_CANCEL_TASKS",
}

M.BudgetActionToAdd = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        thresholdPercentage = {
            type = "number",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.BudgetActionToRemove = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        thresholdPercentage = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.FixedBudgetSchedule = {
    type = "structure",
    members = {
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.BudgetSchedule = {
    type = "union",
    members = {
        fixed = {
            type = "structure",
        },
    },
}

M.UsageTrackingResource = {
    type = "union",
    members = {
        queueId = {
            type = "string",
        },
    },
}

M.CreateBudgetInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        usageTrackingResource = {
            type = "union",
            traits = {
                required = true,
            },
        },
        approximateDollarLimit = {
            type = "number",
            traits = {
                required = true,
            },
        },
        actions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        schedule = {
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
    },
}

M.CreateBudgetOutput = {
    type = "structure",
    members = {
        budgetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBudgetInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        budgetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBudgetOutput = {
    type = "structure",
}

M.GetBudgetInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        budgetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ResponseBudgetAction = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        thresholdPercentage = {
            type = "number",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.BudgetStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.ConsumedUsages = {
    type = "structure",
    members = {
        approximateDollarUsage = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetBudgetOutput = {
    type = "structure",
    members = {
        budgetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageTrackingResource = {
            type = "union",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        approximateDollarLimit = {
            type = "number",
            traits = {
                required = true,
            },
        },
        usages = {
            type = "structure",
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
        updatedBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
        actions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        schedule = {
            type = "union",
            traits = {
                required = true,
            },
        },
        queueStoppedAt = {
            type = "timestamp",
        },
    },
}

M.ListBudgetsInput = {
    type = "structure",
    members = {
        farmId = {
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
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
    },
}

M.BudgetSummary = {
    type = "structure",
    members = {
        budgetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        usageTrackingResource = {
            type = "union",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        approximateDollarLimit = {
            type = "number",
            traits = {
                required = true,
            },
        },
        usages = {
            type = "structure",
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
        updatedBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        description = {
            type = "string",
        },
    },
}

M.ListBudgetsOutput = {
    type = "structure",
    members = {
        budgets = {
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

M.UpdateBudgetInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        budgetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        approximateDollarLimit = {
            type = "number",
        },
        actionsToAdd = {
            type = "list",
            member_type = "structure",
        },
        actionsToRemove = {
            type = "list",
            member_type = "structure",
        },
        schedule = {
            type = "union",
        },
    },
}

M.UpdateBudgetOutput = {
    type = "structure",
}

M.ComparisonOperator = {
    EQUAL = "EQUAL",
    NOT_EQUAL = "NOT_EQUAL",
    GREATER_THAN_EQUAL_TO = "GREATER_THAN_EQUAL_TO",
    GREATER_THAN = "GREATER_THAN",
    LESS_THAN_EQUAL_TO = "LESS_THAN_EQUAL_TO",
    LESS_THAN = "LESS_THAN",
    ANY_EQUALS = "ANY_EQUALS",
    ALL_NOT_EQUALS = "ALL_NOT_EQUALS",
}

M.CompletedStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    INTERRUPTED = "INTERRUPTED",
    CANCELED = "CANCELED",
    NEVER_ATTEMPTED = "NEVER_ATTEMPTED",
}

M.S3Location = {
    type = "structure",
    members = {
        bucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CopyJobTemplateInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        targetS3Location = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.JobTemplateType = {
    JSON = "JSON",
    YAML = "YAML",
}

M.CopyJobTemplateOutput = {
    type = "structure",
    members = {
        templateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CpuArchitectureType = {
    X86_64 = "x86_64",
    ARM64 = "arm64",
}

M.CreateFarmInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        costScaleFactor = {
            type = "number",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateFarmOutput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomerManagedAutoScalingConfiguration = {
    type = "structure",
    members = {
        standbyWorkerCount = {
            type = "number",
        },
        workerIdleDurationSeconds = {
            type = "number",
        },
        scaleOutWorkersPerMinute = {
            type = "number",
        },
    },
}

M.TagPropagationMode = {
    NO_PROPAGATION = "NO_PROPAGATION",
    PROPAGATE_TAGS_TO_WORKERS_AT_LAUNCH = "PROPAGATE_TAGS_TO_WORKERS_AT_LAUNCH",
}

M.FleetAmountCapability = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        min = {
            type = "number",
            traits = {
                required = true,
            },
        },
        max = {
            type = "number",
        },
    },
}

M.FleetAttributeCapability = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MemoryMiBRange = {
    type = "structure",
    members = {
        min = {
            type = "number",
            traits = {
                required = true,
            },
        },
        max = {
            type = "number",
        },
    },
}

M.CustomerManagedFleetOperatingSystemFamily = {
    WINDOWS = "WINDOWS",
    LINUX = "LINUX",
    MACOS = "MACOS",
}

M.VCpuCountRange = {
    type = "structure",
    members = {
        min = {
            type = "number",
            traits = {
                required = true,
            },
        },
        max = {
            type = "number",
        },
    },
}

M.CustomerManagedWorkerCapabilities = {
    type = "structure",
    members = {
        vCpuCount = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        memoryMiB = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        acceleratorTypes = {
            type = "list",
            member_type = "string",
        },
        acceleratorCount = {
            type = "structure",
        },
        acceleratorTotalMemoryMiB = {
            type = "structure",
        },
        osFamily = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cpuArchitectureType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        customAmounts = {
            type = "list",
            member_type = "structure",
        },
        customAttributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CustomerManagedFleetConfiguration = {
    type = "structure",
    members = {
        mode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        autoScalingConfiguration = {
            type = "structure",
        },
        workerCapabilities = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        storageProfileId = {
            type = "string",
        },
        tagPropagationMode = {
            type = "string",
        },
    },
}

M.ServiceManagedEc2AutoScalingConfiguration = {
    type = "structure",
    members = {
        standbyWorkerCount = {
            type = "number",
        },
        workerIdleDurationSeconds = {
            type = "number",
        },
        scaleOutWorkersPerMinute = {
            type = "number",
        },
    },
}

M.ServiceManagedFleetOperatingSystemFamily = {
    WINDOWS = "WINDOWS",
    LINUX = "LINUX",
}

M.Ec2EbsVolume = {
    type = "structure",
    members = {
        sizeGiB = {
            type = "number",
        },
        iops = {
            type = "number",
        },
        throughputMiB = {
            type = "number",
        },
    },
}

M.ServiceManagedEc2InstanceCapabilities = {
    type = "structure",
    members = {
        vCpuCount = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        memoryMiB = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        osFamily = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cpuArchitectureType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rootEbsVolume = {
            type = "structure",
        },
        acceleratorCapabilities = {
            type = "structure",
        },
        allowedInstanceTypes = {
            type = "list",
            member_type = "string",
        },
        excludedInstanceTypes = {
            type = "list",
            member_type = "string",
        },
        customAmounts = {
            type = "list",
            member_type = "structure",
        },
        customAttributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Ec2MarketType = {
    ON_DEMAND = "on-demand",
    SPOT = "spot",
    WAIT_AND_SAVE = "wait-and-save",
}

M.ServiceManagedEc2InstanceMarketOptions = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.VpcConfiguration = {
    type = "structure",
    members = {
        resourceConfigurationArns = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ServiceManagedEc2FleetConfiguration = {
    type = "structure",
    members = {
        instanceCapabilities = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        instanceMarketOptions = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        vpcConfiguration = {
            type = "structure",
        },
        storageProfileId = {
            type = "string",
        },
        autoScalingConfiguration = {
            type = "structure",
        },
    },
}

M.FleetConfiguration = {
    type = "union",
    members = {
        customerManaged = {
            type = "structure",
        },
        serviceManagedEc2 = {
            type = "structure",
        },
    },
}

M.HostConfiguration = {
    type = "structure",
    members = {
        scriptBody = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scriptTimeoutSeconds = {
            type = "number",
        },
    },
}

M.CreateFleetInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minWorkerCount = {
            type = "number",
        },
        maxWorkerCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        configuration = {
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
        hostConfiguration = {
            type = "structure",
        },
    },
}

M.CreateFleetOutput = {
    type = "structure",
    members = {
        fleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateJobTargetTaskRunStatus = {
    READY = "READY",
    SUSPENDED = "SUSPENDED",
}

M.CreateJobInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        template = {
            type = "string",
        },
        templateType = {
            type = "string",
        },
        priority = {
            type = "number",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        attachments = {
            type = "structure",
        },
        storageProfileId = {
            type = "string",
        },
        targetTaskRunStatus = {
            type = "string",
        },
        maxFailedTasksCount = {
            type = "number",
        },
        maxRetriesPerTask = {
            type = "number",
        },
        maxWorkerCount = {
            type = "number",
        },
        sourceJobId = {
            type = "string",
        },
        nameOverride = {
            type = "string",
        },
        descriptionOverride = {
            type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateJobOutput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLicenseEndpointInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        vpcId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subnetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateLicenseEndpointOutput = {
    type = "structure",
    members = {
        licenseEndpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateLimitInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        amountRequirementName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.CreateLimitOutput = {
    type = "structure",
    members = {
        limitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateMonitorInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityCenterInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityCenterRegion = {
            type = "string",
        },
        subdomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateMonitorOutput = {
    type = "structure",
    members = {
        monitorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityCenterApplicationArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DefaultQueueBudgetAction = {
    NONE = "NONE",
    STOP_SCHEDULING_AND_COMPLETE_TASKS = "STOP_SCHEDULING_AND_COMPLETE_TASKS",
    STOP_SCHEDULING_AND_CANCEL_TASKS = "STOP_SCHEDULING_AND_CANCEL_TASKS",
}

M.PriorityBalancedSchedulingConfiguration = {
    type = "structure",
    members = {
        renderingTaskBuffer = {
            type = "number",
        },
    },
}

M.PriorityFifoSchedulingConfiguration = {
    type = "structure",
}

M.SchedulingMaxPriorityOverrideAlwaysScheduleFirst = {
    type = "structure",
}

M.SchedulingMaxPriorityOverride = {
    type = "union",
    members = {
        alwaysScheduleFirst = {
            type = "structure",
        },
    },
}

M.SchedulingMinPriorityOverrideAlwaysScheduleLast = {
    type = "structure",
}

M.SchedulingMinPriorityOverride = {
    type = "union",
    members = {
        alwaysScheduleLast = {
            type = "structure",
        },
    },
}

M.WeightedBalancedSchedulingConfiguration = {
    type = "structure",
    members = {
        priorityWeight = {
            type = "number",
        },
        errorWeight = {
            type = "number",
        },
        submissionTimeWeight = {
            type = "number",
        },
        renderingTaskWeight = {
            type = "number",
        },
        renderingTaskBuffer = {
            type = "number",
        },
        maxPriorityOverride = {
            type = "union",
        },
        minPriorityOverride = {
            type = "union",
        },
    },
}

M.SchedulingConfiguration = {
    type = "union",
    members = {
        priorityFifo = {
            type = "structure",
        },
        priorityBalanced = {
            type = "structure",
        },
        weightedBalanced = {
            type = "structure",
        },
    },
}

M.CreateQueueInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        defaultBudgetAction = {
            type = "string",
        },
        jobAttachmentSettings = {
            type = "structure",
        },
        roleArn = {
            type = "string",
        },
        jobRunAsUser = {
            type = "structure",
        },
        requiredFileSystemLocationNames = {
            type = "list",
            member_type = "string",
        },
        allowedStorageProfileIds = {
            type = "list",
            member_type = "string",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        schedulingConfiguration = {
            type = "union",
        },
    },
}

M.CreateQueueOutput = {
    type = "structure",
    members = {
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnvironmentTemplateType = {
    JSON = "JSON",
    YAML = "YAML",
}

M.CreateQueueEnvironmentInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        priority = {
            type = "number",
            traits = {
                required = true,
            },
        },
        templateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        template = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateQueueEnvironmentOutput = {
    type = "structure",
    members = {
        queueEnvironmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateQueueFleetAssociationInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateQueueFleetAssociationOutput = {
    type = "structure",
}

M.CreateQueueLimitAssociationInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        limitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateQueueLimitAssociationOutput = {
    type = "structure",
}

M.FileSystemLocationType = {
    SHARED = "SHARED",
    LOCAL = "LOCAL",
}

M.FileSystemLocation = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        path = {
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
    },
}

M.StorageProfileOperatingSystemFamily = {
    WINDOWS = "WINDOWS",
    LINUX = "LINUX",
    MACOS = "MACOS",
}

M.CreateStorageProfileInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        osFamily = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileSystemLocations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateStorageProfileOutput = {
    type = "structure",
    members = {
        storageProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HostPropertiesRequest = {
    type = "structure",
    members = {
        ipAddresses = {
            type = "structure",
        },
        hostName = {
            type = "string",
        },
    },
}

M.CreateWorkerInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        hostProperties = {
            type = "structure",
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateWorkerOutput = {
    type = "structure",
    members = {
        workerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DateTimeFilterExpression = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dateTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.DeleteQueueFleetAssociationInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteQueueFleetAssociationOutput = {
    type = "structure",
}

M.DeleteQueueLimitAssociationInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        limitId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteQueueLimitAssociationOutput = {
    type = "structure",
}

M.DeleteFarmInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFarmOutput = {
    type = "structure",
}

M.DeleteLimitInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        limitId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteLimitOutput = {
    type = "structure",
}

M.DeleteStorageProfileInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        storageProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteStorageProfileOutput = {
    type = "structure",
}

M.DisassociateMemberFromFarmInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateMemberFromFarmOutput = {
    type = "structure",
}

M.DeleteFleetInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
    },
}

M.DeleteFleetOutput = {
    type = "structure",
}

M.DisassociateMemberFromFleetInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateMemberFromFleetOutput = {
    type = "structure",
}

M.GetFleetInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.FleetCapabilities = {
    type = "structure",
    members = {
        amounts = {
            type = "list",
            member_type = "structure",
        },
        attributes = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.FleetStatus = {
    ACTIVE = "ACTIVE",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    SUSPENDED = "SUSPENDED",
}

M.GetFleetOutput = {
    type = "structure",
    members = {
        fleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
        autoScalingStatus = {
            type = "string",
        },
        targetWorkerCount = {
            type = "number",
        },
        workerCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        minWorkerCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        maxWorkerCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "union",
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
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        description = {
            type = "string",
        },
        hostConfiguration = {
            type = "structure",
        },
        capabilities = {
            type = "structure",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFleetMembersInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
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

M.FleetMember = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principalType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFleetMembersOutput = {
    type = "structure",
    members = {
        members = {
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

M.ListFleetsInput = {
    type = "structure",
    members = {
        farmId = {
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
        principalId = {
            type = "string",
            traits = {
                http_query = "principalId",
            },
        },
        displayName = {
            type = "string",
            traits = {
                http_query = "displayName",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
    },
}

M.FleetSummary = {
    type = "structure",
    members = {
        fleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
        autoScalingStatus = {
            type = "string",
        },
        targetWorkerCount = {
            type = "number",
        },
        workerCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        minWorkerCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        maxWorkerCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "union",
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
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
    },
}

M.ListFleetsOutput = {
    type = "structure",
    members = {
        fleets = {
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

M.UpdateFleetInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        minWorkerCount = {
            type = "number",
        },
        maxWorkerCount = {
            type = "number",
        },
        configuration = {
            type = "union",
        },
        hostConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateFleetOutput = {
    type = "structure",
}

M.DeleteWorkerInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteWorkerOutput = {
    type = "structure",
}

M.GetWorkerInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetWorkerOutput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hostProperties = {
            type = "structure",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        log = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
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
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
    },
}

M.ListSessionsForWorkerInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workerId = {
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

M.WorkerSessionSummary = {
    type = "structure",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lifecycleStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endedAt = {
            type = "timestamp",
        },
        targetLifecycleStatus = {
            type = "string",
        },
    },
}

M.ListSessionsForWorkerOutput = {
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

M.ListWorkersInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
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

M.WorkerSummary = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hostProperties = {
            type = "structure",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        log = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
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
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
    },
}

M.ListWorkersOutput = {
    type = "structure",
    members = {
        workers = {
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

M.WorkerAmountCapability = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkerAttributeCapability = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkerCapabilities = {
    type = "structure",
    members = {
        amounts = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        attributes = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatedWorkerStatus = {
    STARTED = "STARTED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
}

M.UpdateWorkerInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
        },
        capabilities = {
            type = "structure",
        },
        hostProperties = {
            type = "structure",
        },
    },
}

M.UpdateWorkerOutput = {
    type = "structure",
    members = {
        log = {
            type = "structure",
        },
        hostConfiguration = {
            type = "structure",
        },
    },
}

M.TaskRunManifestPropertiesRequest = {
    type = "structure",
    members = {
        outputManifestPath = {
            type = "string",
        },
        outputManifestHash = {
            type = "string",
        },
    },
}

M.UpdatedSessionActionInfo = {
    type = "structure",
    members = {
        completedStatus = {
            type = "string",
        },
        processExitCode = {
            type = "number",
        },
        progressMessage = {
            type = "string",
        },
        startedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        endedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        progressPercent = {
            type = "number",
        },
        manifests = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateWorkerScheduleInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        workerId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        updatedSessionActions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.DesiredWorkerStatus = {
    STOPPED = "STOPPED",
}

M.UpdateWorkerScheduleOutput = {
    type = "structure",
    members = {
        assignedSessions = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
        cancelSessionActions = {
            type = "map",
            key_type = "string",
            value_type = "list",
            traits = {
                required = true,
            },
        },
        desiredWorkerStatus = {
            type = "string",
        },
        updateIntervalSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFarmInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetFarmOutput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
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
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        description = {
            type = "string",
        },
        costScaleFactor = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetLimitInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        limitId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetLimitOutput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        limitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        currentCount = {
            type = "number",
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
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        amountRequirementName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.GetStorageProfileInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        storageProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetStorageProfileOutput = {
    type = "structure",
    members = {
        storageProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        osFamily = {
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
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        fileSystemLocations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListFarmMembersInput = {
    type = "structure",
    members = {
        farmId = {
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

M.FarmMember = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principalType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFarmMembersOutput = {
    type = "structure",
    members = {
        members = {
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

M.ListFarmsInput = {
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
        principalId = {
            type = "string",
            traits = {
                http_query = "principalId",
            },
        },
    },
}

M.FarmSummary = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
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
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
    },
}

M.ListFarmsOutput = {
    type = "structure",
    members = {
        farms = {
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

M.ListLimitsInput = {
    type = "structure",
    members = {
        farmId = {
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

M.LimitSummary = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        limitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        currentCount = {
            type = "number",
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
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        amountRequirementName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ListLimitsOutput = {
    type = "structure",
    members = {
        limits = {
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

M.ListStorageProfilesInput = {
    type = "structure",
    members = {
        farmId = {
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

M.StorageProfileSummary = {
    type = "structure",
    members = {
        storageProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        osFamily = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListStorageProfilesOutput = {
    type = "structure",
    members = {
        storageProfiles = {
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

M.DeleteQueueInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteQueueOutput = {
    type = "structure",
}

M.DeleteQueueEnvironmentInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueEnvironmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteQueueEnvironmentOutput = {
    type = "structure",
}

M.DisassociateMemberFromQueueInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateMemberFromQueueOutput = {
    type = "structure",
}

M.GetQueueInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.QueueBlockedReason = {
    NO_BUDGET_CONFIGURED = "NO_BUDGET_CONFIGURED",
    BUDGET_THRESHOLD_REACHED = "BUDGET_THRESHOLD_REACHED",
}

M.QueueStatus = {
    IDLE = "IDLE",
    SCHEDULING = "SCHEDULING",
    SCHEDULING_BLOCKED = "SCHEDULING_BLOCKED",
}

M.GetQueueOutput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        defaultBudgetAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockedReason = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
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
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        description = {
            type = "string",
        },
        jobAttachmentSettings = {
            type = "structure",
        },
        roleArn = {
            type = "string",
        },
        requiredFileSystemLocationNames = {
            type = "list",
            member_type = "string",
        },
        allowedStorageProfileIds = {
            type = "list",
            member_type = "string",
        },
        jobRunAsUser = {
            type = "structure",
        },
        schedulingConfiguration = {
            type = "union",
        },
    },
}

M.GetQueueEnvironmentInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueEnvironmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetQueueEnvironmentOutput = {
    type = "structure",
    members = {
        queueEnvironmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        priority = {
            type = "number",
            traits = {
                required = true,
            },
        },
        templateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        template = {
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
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
    },
}

M.GetStorageProfileForQueueInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        storageProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetStorageProfileForQueueOutput = {
    type = "structure",
    members = {
        storageProfileId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        osFamily = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fileSystemLocations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DisassociateMemberFromJobInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        principalId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DisassociateMemberFromJobOutput = {
    type = "structure",
}

M.GetJobInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetJobOutput = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycleStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycleStatusMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        priority = {
            type = "number",
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
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        startedAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        taskRunStatus = {
            type = "string",
        },
        targetTaskRunStatus = {
            type = "string",
        },
        taskRunStatusCounts = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        taskFailureRetryCount = {
            type = "number",
        },
        storageProfileId = {
            type = "string",
        },
        maxFailedTasksCount = {
            type = "number",
        },
        maxRetriesPerTask = {
            type = "number",
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        attachments = {
            type = "structure",
        },
        description = {
            type = "string",
        },
        maxWorkerCount = {
            type = "number",
        },
        sourceJobId = {
            type = "string",
        },
    },
}

M.GetSessionInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
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

M.GetSessionOutput = {
    type = "structure",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lifecycleStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endedAt = {
            type = "timestamp",
        },
        targetLifecycleStatus = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        log = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        hostProperties = {
            type = "structure",
        },
        workerLog = {
            type = "structure",
        },
    },
}

M.GetSessionActionInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionActionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSessionActionOutput = {
    type = "structure",
    members = {
        sessionActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
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
        workerUpdatedAt = {
            type = "timestamp",
        },
        progressPercent = {
            type = "number",
        },
        manifests = {
            type = "list",
            member_type = "structure",
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        processExitCode = {
            type = "number",
        },
        progressMessage = {
            type = "string",
        },
        acquiredLimits = {
            type = "list",
            member_type = "structure",
        },
        definition = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.GetStepInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stepId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetStepOutput = {
    type = "structure",
    members = {
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycleStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycleStatusMessage = {
            type = "string",
        },
        taskRunStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskRunStatusCounts = {
            type = "map",
            key_type = "string",
            value_type = "number",
            traits = {
                required = true,
            },
        },
        taskFailureRetryCount = {
            type = "number",
        },
        targetTaskRunStatus = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
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
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        startedAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        dependencyCounts = {
            type = "structure",
        },
        requiredCapabilities = {
            type = "structure",
        },
        parameterSpace = {
            type = "structure",
        },
        description = {
            type = "string",
        },
    },
}

M.GetTaskInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stepId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTaskOutput = {
    type = "structure",
    members = {
        taskId = {
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
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetRunStatus = {
            type = "string",
        },
        failureRetryCount = {
            type = "number",
        },
        startedAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        latestSessionActionId = {
            type = "string",
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
    },
}

M.ListJobMembersInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
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

M.JobMember = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principalType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListJobMembersOutput = {
    type = "structure",
    members = {
        members = {
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

M.ListJobParameterDefinitionsInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
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

M.ListJobParameterDefinitionsOutput = {
    type = "structure",
    members = {
        jobParameterDefinitions = {
            type = "list",
            member_type = "document",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListJobsInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
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
        principalId = {
            type = "string",
            traits = {
                http_query = "principalId",
            },
        },
    },
}

M.JobSummary = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycleStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycleStatusMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        priority = {
            type = "number",
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
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        startedAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        taskRunStatus = {
            type = "string",
        },
        targetTaskRunStatus = {
            type = "string",
        },
        taskRunStatusCounts = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        taskFailureRetryCount = {
            type = "number",
        },
        maxFailedTasksCount = {
            type = "number",
        },
        maxRetriesPerTask = {
            type = "number",
        },
        maxWorkerCount = {
            type = "number",
        },
        sourceJobId = {
            type = "string",
        },
    },
}

M.ListJobsOutput = {
    type = "structure",
    members = {
        jobs = {
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

M.ListSessionActionsInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
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
        sessionId = {
            type = "string",
            traits = {
                http_query = "sessionId",
            },
        },
        taskId = {
            type = "string",
            traits = {
                http_query = "taskId",
            },
        },
    },
}

M.EnvironmentEnterSessionActionDefinitionSummary = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EnvironmentExitSessionActionDefinitionSummary = {
    type = "structure",
    members = {
        environmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SyncInputJobAttachmentsSessionActionDefinitionSummary = {
    type = "structure",
    members = {
        stepId = {
            type = "string",
        },
    },
}

M.TaskRunSessionActionDefinitionSummary = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
    },
}

M.SessionActionDefinitionSummary = {
    type = "union",
    members = {
        envEnter = {
            type = "structure",
        },
        envExit = {
            type = "structure",
        },
        taskRun = {
            type = "structure",
        },
        syncInputJobAttachments = {
            type = "structure",
        },
    },
}

M.SessionActionSummary = {
    type = "structure",
    members = {
        sessionActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
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
        workerUpdatedAt = {
            type = "timestamp",
        },
        progressPercent = {
            type = "number",
        },
        manifests = {
            type = "list",
            member_type = "structure",
        },
        definition = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSessionActionsOutput = {
    type = "structure",
    members = {
        sessionActions = {
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

M.ListSessionsInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
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

M.SessionSummary = {
    type = "structure",
    members = {
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lifecycleStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endedAt = {
            type = "timestamp",
        },
        targetLifecycleStatus = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
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

M.ListStepConsumersInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stepId = {
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

M.DependencyConsumerResolutionStatus = {
    RESOLVED = "RESOLVED",
    UNRESOLVED = "UNRESOLVED",
}

M.StepConsumer = {
    type = "structure",
    members = {
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListStepConsumersOutput = {
    type = "structure",
    members = {
        consumers = {
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

M.ListStepDependenciesInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stepId = {
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

M.StepDependency = {
    type = "structure",
    members = {
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListStepDependenciesOutput = {
    type = "structure",
    members = {
        dependencies = {
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

M.ListStepsInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
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

M.StepSummary = {
    type = "structure",
    members = {
        stepId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycleStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lifecycleStatusMessage = {
            type = "string",
        },
        taskRunStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskRunStatusCounts = {
            type = "map",
            key_type = "string",
            value_type = "number",
            traits = {
                required = true,
            },
        },
        taskFailureRetryCount = {
            type = "number",
        },
        targetTaskRunStatus = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
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
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        startedAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        dependencyCounts = {
            type = "structure",
        },
    },
}

M.ListStepsOutput = {
    type = "structure",
    members = {
        steps = {
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

M.ListTasksInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stepId = {
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

M.TaskSummary = {
    type = "structure",
    members = {
        taskId = {
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
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        targetRunStatus = {
            type = "string",
        },
        failureRetryCount = {
            type = "number",
        },
        startedAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        latestSessionActionId = {
            type = "string",
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
    },
}

M.ListTasksOutput = {
    type = "structure",
    members = {
        tasks = {
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

M.UpdateJobInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        targetTaskRunStatus = {
            type = "string",
        },
        priority = {
            type = "number",
        },
        maxFailedTasksCount = {
            type = "number",
        },
        maxRetriesPerTask = {
            type = "number",
        },
        lifecycleStatus = {
            type = "string",
        },
        maxWorkerCount = {
            type = "number",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateJobOutput = {
    type = "structure",
}

M.UpdateSessionInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
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
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        targetLifecycleStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSessionOutput = {
    type = "structure",
}

M.UpdateStepInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stepId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        targetTaskRunStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateStepOutput = {
    type = "structure",
}

M.UpdateTaskInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stepId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        taskId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        targetRunStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateTaskOutput = {
    type = "structure",
}

M.ListQueueEnvironmentsInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
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

M.QueueEnvironmentSummary = {
    type = "structure",
    members = {
        queueEnvironmentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        priority = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ListQueueEnvironmentsOutput = {
    type = "structure",
    members = {
        environments = {
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

M.ListQueueMembersInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
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

M.QueueMember = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principalId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principalType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityStoreId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        membershipLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListQueueMembersOutput = {
    type = "structure",
    members = {
        members = {
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

M.ListQueuesInput = {
    type = "structure",
    members = {
        farmId = {
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
        principalId = {
            type = "string",
            traits = {
                http_query = "principalId",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
    },
}

M.QueueSummary = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        defaultBudgetAction = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockedReason = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
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
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
    },
}

M.ListQueuesOutput = {
    type = "structure",
    members = {
        queues = {
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

M.ListStorageProfilesForQueueInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
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

M.ListStorageProfilesForQueueOutput = {
    type = "structure",
    members = {
        storageProfiles = {
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

M.UpdateQueueInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        defaultBudgetAction = {
            type = "string",
        },
        jobAttachmentSettings = {
            type = "structure",
        },
        roleArn = {
            type = "string",
        },
        jobRunAsUser = {
            type = "structure",
        },
        requiredFileSystemLocationNamesToAdd = {
            type = "list",
            member_type = "string",
        },
        requiredFileSystemLocationNamesToRemove = {
            type = "list",
            member_type = "string",
        },
        allowedStorageProfileIdsToAdd = {
            type = "list",
            member_type = "string",
        },
        allowedStorageProfileIdsToRemove = {
            type = "list",
            member_type = "string",
        },
        schedulingConfiguration = {
            type = "union",
        },
    },
}

M.UpdateQueueOutput = {
    type = "structure",
}

M.UpdateQueueEnvironmentInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueEnvironmentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        priority = {
            type = "number",
        },
        templateType = {
            type = "string",
        },
        template = {
            type = "string",
        },
    },
}

M.UpdateQueueEnvironmentOutput = {
    type = "structure",
}

M.UpdateFarmInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        costScaleFactor = {
            type = "number",
        },
    },
}

M.UpdateFarmOutput = {
    type = "structure",
}

M.UpdateLimitInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        limitId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        displayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        maxCount = {
            type = "number",
        },
    },
}

M.UpdateLimitOutput = {
    type = "structure",
}

M.UpdateStorageProfileInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        storageProfileId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
            },
        },
        displayName = {
            type = "string",
        },
        osFamily = {
            type = "string",
        },
        fileSystemLocationsToAdd = {
            type = "list",
            member_type = "structure",
        },
        fileSystemLocationsToRemove = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateStorageProfileOutput = {
    type = "structure",
}

M.GetQueueFleetAssociationInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.QueueFleetAssociationStatus = {
    ACTIVE = "ACTIVE",
    STOP_SCHEDULING_AND_COMPLETE_TASKS = "STOP_SCHEDULING_AND_COMPLETE_TASKS",
    STOP_SCHEDULING_AND_CANCEL_TASKS = "STOP_SCHEDULING_AND_CANCEL_TASKS",
    STOPPED = "STOPPED",
}

M.GetQueueFleetAssociationOutput = {
    type = "structure",
    members = {
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
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
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
    },
}

M.GetQueueLimitAssociationInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        limitId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.QueueLimitAssociationStatus = {
    ACTIVE = "ACTIVE",
    STOP_LIMIT_USAGE_AND_COMPLETE_TASKS = "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS",
    STOP_LIMIT_USAGE_AND_CANCEL_TASKS = "STOP_LIMIT_USAGE_AND_CANCEL_TASKS",
    STOPPED = "STOPPED",
}

M.GetQueueLimitAssociationOutput = {
    type = "structure",
    members = {
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        limitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
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
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
    },
}

M.GetSessionsStatisticsAggregationInput = {
    type = "structure",
    members = {
        farmId = {
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
        aggregationId = {
            type = "string",
            traits = {
                http_query = "aggregationId",
                required = true,
            },
        },
    },
}

M.Stats = {
    type = "structure",
    members = {
        min = {
            type = "number",
        },
        max = {
            type = "number",
        },
        avg = {
            type = "number",
        },
        sum = {
            type = "number",
        },
    },
}

M.UsageType = {
    COMPUTE = "COMPUTE",
    LICENSE = "LICENSE",
}

M.Statistics = {
    type = "structure",
    members = {
        queueId = {
            type = "string",
        },
        fleetId = {
            type = "string",
        },
        jobId = {
            type = "string",
        },
        jobName = {
            type = "string",
        },
        userId = {
            type = "string",
        },
        usageType = {
            type = "string",
        },
        licenseProduct = {
            type = "string",
        },
        instanceType = {
            type = "string",
        },
        count = {
            type = "number",
            traits = {
                required = true,
            },
        },
        costInUsd = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        runtimeInSeconds = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        aggregationStartTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        aggregationEndTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.SessionsStatisticsAggregationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    TIMEOUT = "TIMEOUT",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.GetSessionsStatisticsAggregationOutput = {
    type = "structure",
    members = {
        statistics = {
            type = "list",
            member_type = "structure",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DeleteLicenseEndpointInput = {
    type = "structure",
    members = {
        licenseEndpointId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteLicenseEndpointOutput = {
    type = "structure",
}

M.DeleteMeteredProductInput = {
    type = "structure",
    members = {
        licenseEndpointId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        productId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMeteredProductOutput = {
    type = "structure",
}

M.GetLicenseEndpointInput = {
    type = "structure",
    members = {
        licenseEndpointId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.LicenseEndpointStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    READY = "READY",
    NOT_READY = "NOT_READY",
}

M.GetLicenseEndpointOutput = {
    type = "structure",
    members = {
        licenseEndpointId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vpcId = {
            type = "string",
        },
        dnsName = {
            type = "string",
        },
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

M.ListLicenseEndpointsInput = {
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
    },
}

M.LicenseEndpointSummary = {
    type = "structure",
    members = {
        licenseEndpointId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        vpcId = {
            type = "string",
        },
    },
}

M.ListLicenseEndpointsOutput = {
    type = "structure",
    members = {
        licenseEndpoints = {
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

M.ListMeteredProductsInput = {
    type = "structure",
    members = {
        licenseEndpointId = {
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

M.MeteredProductSummary = {
    type = "structure",
    members = {
        productId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        family = {
            type = "string",
            traits = {
                required = true,
            },
        },
        vendor = {
            type = "string",
            traits = {
                required = true,
            },
        },
        port = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMeteredProductsOutput = {
    type = "structure",
    members = {
        meteredProducts = {
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

M.PutMeteredProductInput = {
    type = "structure",
    members = {
        licenseEndpointId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        productId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PutMeteredProductOutput = {
    type = "structure",
}

M.ListAvailableMeteredProductsInput = {
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
    },
}

M.ListAvailableMeteredProductsOutput = {
    type = "structure",
    members = {
        meteredProducts = {
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

M.ListQueueFleetAssociationsInput = {
    type = "structure",
    members = {
        farmId = {
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
        queueId = {
            type = "string",
            traits = {
                http_query = "queueId",
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_query = "fleetId",
            },
        },
    },
}

M.QueueFleetAssociationSummary = {
    type = "structure",
    members = {
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
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
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
    },
}

M.ListQueueFleetAssociationsOutput = {
    type = "structure",
    members = {
        queueFleetAssociations = {
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

M.ListQueueLimitAssociationsInput = {
    type = "structure",
    members = {
        farmId = {
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
        queueId = {
            type = "string",
            traits = {
                http_query = "queueId",
            },
        },
        limitId = {
            type = "string",
            traits = {
                http_query = "limitId",
            },
        },
    },
}

M.QueueLimitAssociationSummary = {
    type = "structure",
    members = {
        queueId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        limitId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
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
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
    },
}

M.ListQueueLimitAssociationsOutput = {
    type = "structure",
    members = {
        queueLimitAssociations = {
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

M.DeleteMonitorInput = {
    type = "structure",
    members = {
        monitorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteMonitorOutput = {
    type = "structure",
}

M.GetMonitorInput = {
    type = "structure",
    members = {
        monitorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMonitorOutput = {
    type = "structure",
    members = {
        monitorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subdomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityCenterInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityCenterRegion = {
            type = "string",
        },
        identityCenterApplicationArn = {
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
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
    },
}

M.GetMonitorSettingsInput = {
    type = "structure",
    members = {
        monitorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetMonitorSettingsOutput = {
    type = "structure",
    members = {
        settings = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListMonitorsInput = {
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
    },
}

M.MonitorSummary = {
    type = "structure",
    members = {
        monitorId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        displayName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subdomain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        url = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityCenterInstanceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        identityCenterRegion = {
            type = "string",
        },
        identityCenterApplicationArn = {
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
        createdBy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
    },
}

M.ListMonitorsOutput = {
    type = "structure",
    members = {
        monitors = {
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

M.UpdateMonitorInput = {
    type = "structure",
    members = {
        monitorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        subdomain = {
            type = "string",
        },
        displayName = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
    },
}

M.UpdateMonitorOutput = {
    type = "structure",
}

M.UpdateMonitorSettingsInput = {
    type = "structure",
    members = {
        monitorId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        settings = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateMonitorSettingsOutput = {
    type = "structure",
}

M.ParameterFilterExpression = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchTermMatchingType = {
    FUZZY_MATCH = "FUZZY_MATCH",
    CONTAINS = "CONTAINS",
}

M.SearchTermFilterExpression = {
    type = "structure",
    members = {
        searchTerm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        matchType = {
            type = "string",
        },
    },
}

M.StringFilterExpression = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StringListFilterExpression = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LogicalOperator = {
    AND = "AND",
    OR = "OR",
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.FieldSortExpression = {
    type = "structure",
    members = {
        sortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ParameterSortExpression = {
    type = "structure",
    members = {
        sortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UserJobsFirst = {
    type = "structure",
    members = {
        userIdentityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchSortExpression = {
    type = "union",
    members = {
        userJobsFirst = {
            type = "structure",
        },
        fieldSort = {
            type = "structure",
        },
        parameterSort = {
            type = "structure",
        },
    },
}

M.JobSearchSummary = {
    type = "structure",
    members = {
        jobId = {
            type = "string",
        },
        queueId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        lifecycleStatus = {
            type = "string",
        },
        lifecycleStatusMessage = {
            type = "string",
        },
        taskRunStatus = {
            type = "string",
        },
        targetTaskRunStatus = {
            type = "string",
        },
        taskRunStatusCounts = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        taskFailureRetryCount = {
            type = "number",
        },
        priority = {
            type = "number",
        },
        maxFailedTasksCount = {
            type = "number",
        },
        maxRetriesPerTask = {
            type = "number",
        },
        createdBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        startedAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        jobParameters = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        maxWorkerCount = {
            type = "number",
        },
        sourceJobId = {
            type = "string",
        },
    },
}

M.SearchJobsOutput = {
    type = "structure",
    members = {
        jobs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextItemOffset = {
            type = "number",
        },
        totalResults = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.StepSearchSummary = {
    type = "structure",
    members = {
        stepId = {
            type = "string",
        },
        jobId = {
            type = "string",
        },
        queueId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        lifecycleStatus = {
            type = "string",
        },
        lifecycleStatusMessage = {
            type = "string",
        },
        taskRunStatus = {
            type = "string",
        },
        targetTaskRunStatus = {
            type = "string",
        },
        taskRunStatusCounts = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        taskFailureRetryCount = {
            type = "number",
        },
        createdAt = {
            type = "timestamp",
        },
        createdBy = {
            type = "string",
        },
        startedAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        parameterSpace = {
            type = "structure",
        },
    },
}

M.SearchStepsOutput = {
    type = "structure",
    members = {
        steps = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextItemOffset = {
            type = "number",
        },
        totalResults = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TaskSearchSummary = {
    type = "structure",
    members = {
        taskId = {
            type = "string",
        },
        stepId = {
            type = "string",
        },
        jobId = {
            type = "string",
        },
        queueId = {
            type = "string",
        },
        runStatus = {
            type = "string",
        },
        targetRunStatus = {
            type = "string",
        },
        parameters = {
            type = "map",
            key_type = "string",
            value_type = "union",
        },
        failureRetryCount = {
            type = "number",
        },
        startedAt = {
            type = "timestamp",
        },
        endedAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        latestSessionActionId = {
            type = "string",
        },
    },
}

M.SearchTasksOutput = {
    type = "structure",
    members = {
        tasks = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextItemOffset = {
            type = "number",
        },
        totalResults = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkerSearchSummary = {
    type = "structure",
    members = {
        fleetId = {
            type = "string",
        },
        workerId = {
            type = "string",
        },
        status = {
            type = "string",
        },
        hostProperties = {
            type = "structure",
        },
        createdBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
        },
    },
}

M.SearchWorkersOutput = {
    type = "structure",
    members = {
        workers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextItemOffset = {
            type = "number",
        },
        totalResults = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.UsageGroupByField = {
    QUEUE_ID = "QUEUE_ID",
    FLEET_ID = "FLEET_ID",
    JOB_ID = "JOB_ID",
    USER_ID = "USER_ID",
    USAGE_TYPE = "USAGE_TYPE",
    INSTANCE_TYPE = "INSTANCE_TYPE",
    LICENSE_PRODUCT = "LICENSE_PRODUCT",
}

M.Period = {
    HOURLY = "HOURLY",
    DAILY = "DAILY",
    WEEKLY = "WEEKLY",
    MONTHLY = "MONTHLY",
}

M.SessionsStatisticsResources = {
    type = "union",
    members = {
        queueIds = {
            type = "list",
            member_type = "string",
        },
        fleetIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.UsageStatistic = {
    SUM = "SUM",
    MIN = "MIN",
    MAX = "MAX",
    AVG = "AVG",
}

M.StartSessionsStatisticsAggregationInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resourceIds = {
            type = "union",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        timezone = {
            type = "string",
        },
        period = {
            type = "string",
        },
        groupBy = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        statistics = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartSessionsStatisticsAggregationOutput = {
    type = "structure",
    members = {
        aggregationId = {
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

M.UpdateQueueFleetAssociationStatus = {
    ACTIVE = "ACTIVE",
    STOP_SCHEDULING_AND_COMPLETE_TASKS = "STOP_SCHEDULING_AND_COMPLETE_TASKS",
    STOP_SCHEDULING_AND_CANCEL_TASKS = "STOP_SCHEDULING_AND_CANCEL_TASKS",
}

M.UpdateQueueFleetAssociationInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fleetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateQueueFleetAssociationOutput = {
    type = "structure",
}

M.UpdateQueueLimitAssociationStatus = {
    ACTIVE = "ACTIVE",
    STOP_LIMIT_USAGE_AND_COMPLETE_TASKS = "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS",
    STOP_LIMIT_USAGE_AND_CANCEL_TASKS = "STOP_LIMIT_USAGE_AND_CANCEL_TASKS",
}

M.UpdateQueueLimitAssociationInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        queueId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        limitId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateQueueLimitAssociationOutput = {
    type = "structure",
}

M.SearchFilterExpression = {
    type = "union",
    members = {
        dateTimeFilter = {
            type = "structure",
        },
        parameterFilter = {
            type = "structure",
        },
        searchTermFilter = {
            type = "structure",
        },
        stringFilter = {
            type = "structure",
        },
        stringListFilter = {
            type = "structure",
        },
        groupFilter = {
            type = "structure",
        },
    },
}

M.SearchGroupedFilterExpressions = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchJobsInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        filterExpressions = {
            type = "structure",
        },
        sortExpressions = {
            type = "list",
            member_type = "union",
        },
        itemOffset = {
            type = "number",
            traits = {
                required = true,
            },
        },
        pageSize = {
            type = "number",
        },
        queueIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchStepsInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        filterExpressions = {
            type = "structure",
        },
        sortExpressions = {
            type = "list",
            member_type = "union",
        },
        itemOffset = {
            type = "number",
            traits = {
                required = true,
            },
        },
        pageSize = {
            type = "number",
        },
        queueIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
        },
    },
}

M.SearchTasksInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        filterExpressions = {
            type = "structure",
        },
        sortExpressions = {
            type = "list",
            member_type = "union",
        },
        itemOffset = {
            type = "number",
            traits = {
                required = true,
            },
        },
        pageSize = {
            type = "number",
        },
        queueIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
        },
    },
}

M.SearchWorkersInput = {
    type = "structure",
    members = {
        farmId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        filterExpressions = {
            type = "structure",
        },
        sortExpressions = {
            type = "list",
            member_type = "union",
        },
        itemOffset = {
            type = "number",
            traits = {
                required = true,
            },
        },
        pageSize = {
            type = "number",
        },
        fleetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

return M
