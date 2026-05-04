local M = {}

M.AcceleratorCountRange = {
    type = "structure",
    members = {
        min = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        max = {
            type = "integer",
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
            traits = {
                default = "latest",
            },
        },
    },
}

M.AcceleratorCapabilities = {
    type = "structure",
    members = {
        selections = {
            type = "list",
            member = M.AcceleratorSelection,
            traits = {
                required = true,
            },
        },
        count = M.AcceleratorCountRange,
    },
}

M.AcceleratorTotalMemoryMiBRange = {
    type = "structure",
    members = {
        min = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        max = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
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
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            key = { type = "string" },
            value = M.TaskParameterValue,
            traits = {
                required = true,
            },
        },
    },
}

M.AssignedSessionActionDefinition = {
    type = "union",
    members = {
        envEnter = M.AssignedEnvironmentEnterSessionActionDefinition,
        envExit = M.AssignedEnvironmentExitSessionActionDefinition,
        taskRun = M.AssignedTaskRunSessionActionDefinition,
        syncInputJobAttachments = M.AssignedSyncInputJobAttachmentsSessionActionDefinition,
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
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AssignedSessionActionDefinition }),
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
            member = M.AssignedSessionAction,
            traits = {
                required = true,
            },
        },
        logConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LogConfiguration }),
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
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
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
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
        context = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            member = M.ValidationExceptionField,
        },
        context = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
        credentials = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AwsCredentials }),
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
        credentials = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AwsCredentials }),
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
            key = { type = "string" },
            value = { type = "string" },
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
        credentials = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AwsCredentials }),
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
        credentials = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AwsCredentials }),
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
        credentials = M.AwsCredentials,
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
            member = { type = "string" },
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
            member = M.ManifestProperties,
            traits = {
                required = true,
            },
        },
        fileSystem = {
            type = "string",
            traits = {
                default = "COPIED",
            },
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
            member = M.BatchGetJobIdentifier,
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
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
        taskRunStatus = {
            type = "string",
        },
        targetTaskRunStatus = {
            type = "string",
        },
        taskRunStatusCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        taskFailureRetryCount = {
            type = "integer",
        },
        storageProfileId = {
            type = "string",
        },
        maxFailedTasksCount = {
            type = "integer",
        },
        maxRetriesPerTask = {
            type = "integer",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = M.JobParameter,
        },
        attachments = M.Attachments,
        description = {
            type = "string",
        },
        maxWorkerCount = {
            type = "integer",
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
            member = M.BatchGetJobItem,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchGetJobError,
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
        jobDetails = M.JobDetailsIdentifiers,
        jobAttachmentDetails = M.JobAttachmentDetailsIdentifiers,
        stepDetails = M.StepDetailsIdentifiers,
        environmentDetails = M.EnvironmentDetailsIdentifiers,
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
            member = M.JobEntityIdentifiersUnion,
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
        attachments = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Attachments }),
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
        posix = M.PosixUser,
        windows = M.WindowsUser,
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
        jobAttachmentSettings = M.JobAttachmentSettings,
        jobRunAsUser = M.JobRunAsUser,
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
            key = { type = "string" },
            value = M.JobParameter,
        },
        schemaVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pathMappingRules = {
            type = "list",
            member = M.PathMappingRule,
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.JobEntity = {
    type = "union",
    members = {
        jobDetails = M.JobDetailsEntity,
        jobAttachmentDetails = M.JobAttachmentDetailsEntity,
        stepDetails = M.StepDetailsEntity,
        environmentDetails = M.EnvironmentDetailsEntity,
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
        jobDetails = M.JobDetailsError,
        jobAttachmentDetails = M.JobAttachmentDetailsError,
        stepDetails = M.StepDetailsError,
        environmentDetails = M.EnvironmentDetailsError,
    },
}

M.BatchGetJobEntityOutput = {
    type = "structure",
    members = {
        entities = {
            type = "list",
            member = M.JobEntity,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.GetJobEntityError,
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
            member = M.BatchGetSessionIdentifier,
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
            member = { type = "string" },
        },
        ipV6Addresses = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.HostPropertiesResponse = {
    type = "structure",
    members = {
        ipAddresses = M.IpAddresses,
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
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        targetLifecycleStatus = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
        },
        log = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LogConfiguration }),
        hostProperties = M.HostPropertiesResponse,
        workerLog = M.LogConfiguration,
    },
}

M.BatchGetSessionOutput = {
    type = "structure",
    members = {
        sessions = {
            type = "list",
            member = M.BatchGetSessionItem,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchGetSessionError,
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
            member = M.BatchGetSessionActionIdentifier,
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
            key = { type = "string" },
            value = M.TaskParameterValue,
            traits = {
                required = true,
            },
        },
    },
}

M.SessionActionDefinition = {
    type = "union",
    members = {
        envEnter = M.EnvironmentEnterSessionActionDefinition,
        envExit = M.EnvironmentExitSessionActionDefinition,
        taskRun = M.TaskRunSessionActionDefinition,
        syncInputJobAttachments = M.SyncInputJobAttachmentsSessionActionDefinition,
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
        workerUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        progressPercent = {
            type = "float",
        },
        manifests = {
            type = "list",
            member = M.TaskRunManifestPropertiesResponse,
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        processExitCode = {
            type = "integer",
        },
        progressMessage = {
            type = "string",
        },
        acquiredLimits = {
            type = "list",
            member = M.AcquiredLimit,
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SessionActionDefinition }),
    },
}

M.BatchGetSessionActionOutput = {
    type = "structure",
    members = {
        sessionActions = {
            type = "list",
            member = M.BatchGetSessionActionItem,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchGetSessionActionError,
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
            member = M.BatchGetStepIdentifier,
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        dependenciesUnresolved = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        consumersResolved = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        consumersUnresolved = {
            type = "integer",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        targetRuntimeSeconds = {
            type = "integer",
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
        chunks = M.StepParameterChunks,
    },
}

M.ParameterSpace = {
    type = "structure",
    members = {
        parameters = {
            type = "list",
            member = M.StepParameter,
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
            type = "double",
        },
        max = {
            type = "double",
        },
        value = {
            type = "double",
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
            member = { type = "string" },
        },
        allOf = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.StepRequiredCapabilities = {
    type = "structure",
    members = {
        attributes = {
            type = "list",
            member = M.StepAttributeCapability,
            traits = {
                required = true,
            },
        },
        amounts = {
            type = "list",
            member = M.StepAmountCapability,
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
            key = { type = "string" },
            value = { type = "integer" },
            traits = {
                required = true,
            },
        },
        taskFailureRetryCount = {
            type = "integer",
        },
        targetTaskRunStatus = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
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
        dependencyCounts = M.DependencyCounts,
        requiredCapabilities = M.StepRequiredCapabilities,
        parameterSpace = M.ParameterSpace,
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
            member = M.BatchGetStepItem,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchGetStepError,
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
            member = M.BatchGetTaskIdentifier,
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
                timestamp_format = "date-time",
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
            type = "integer",
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
        updatedBy = {
            type = "string",
        },
        latestSessionActionId = {
            type = "string",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = M.TaskParameterValue,
        },
    },
}

M.BatchGetTaskOutput = {
    type = "structure",
    members = {
        tasks = {
            type = "list",
            member = M.BatchGetTaskItem,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchGetTaskError,
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
            member = M.BatchGetWorkerIdentifier,
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
        hostProperties = M.HostPropertiesResponse,
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        log = M.LogConfiguration,
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
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
            member = M.BatchGetWorkerItem,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchGetWorkerError,
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
            type = "integer",
        },
        maxFailedTasksCount = {
            type = "integer",
        },
        maxRetriesPerTask = {
            type = "integer",
        },
        lifecycleStatus = {
            type = "string",
        },
        maxWorkerCount = {
            type = "integer",
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
                idempotency_token = true,
            },
        },
        jobs = {
            type = "list",
            member = M.BatchUpdateJobItem,
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
            member = M.BatchUpdateJobError,
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
                idempotency_token = true,
            },
        },
        tasks = {
            type = "list",
            member = M.BatchUpdateTaskItem,
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
            member = M.BatchUpdateTaskError,
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
            type = "float",
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
            type = "float",
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
    },
}

M.BudgetSchedule = {
    type = "union",
    members = {
        fixed = M.FixedBudgetSchedule,
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
            traits = {
                default = "",
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
                idempotency_token = true,
            },
        },
        usageTrackingResource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UsageTrackingResource }),
        approximateDollarLimit = {
            type = "float",
            traits = {
                required = true,
            },
        },
        actions = {
            type = "list",
            member = M.BudgetActionToAdd,
            traits = {
                required = true,
            },
        },
        schedule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BudgetSchedule }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            type = "float",
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
            type = "float",
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
        usageTrackingResource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UsageTrackingResource }),
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
            type = "float",
            traits = {
                required = true,
            },
        },
        usages = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConsumedUsages }),
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
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        description = {
            type = "string",
        },
        actions = {
            type = "list",
            member = M.ResponseBudgetAction,
            traits = {
                required = true,
            },
        },
        schedule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BudgetSchedule }),
        queueStoppedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
            type = "integer",
            traits = {
                default = 100,
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
        usageTrackingResource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UsageTrackingResource }),
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
            type = "float",
            traits = {
                required = true,
            },
        },
        usages = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConsumedUsages }),
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
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
            member = M.BudgetSummary,
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
                idempotency_token = true,
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
            type = "float",
        },
        actionsToAdd = {
            type = "list",
            member = M.BudgetActionToAdd,
        },
        actionsToRemove = {
            type = "list",
            member = M.BudgetActionToRemove,
        },
        schedule = M.BudgetSchedule,
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
        targetS3Location = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3Location }),
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
                idempotency_token = true,
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
            traits = {
                default = "",
            },
        },
        kmsKeyArn = {
            type = "string",
        },
        costScaleFactor = {
            type = "float",
            traits = {
                default = 1,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
            type = "integer",
        },
        workerIdleDurationSeconds = {
            type = "integer",
            traits = {
                default = 300,
            },
        },
        scaleOutWorkersPerMinute = {
            type = "integer",
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
            type = "float",
            traits = {
                required = true,
            },
        },
        max = {
            type = "float",
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
            member = { type = "string" },
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        max = {
            type = "integer",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        max = {
            type = "integer",
        },
    },
}

M.CustomerManagedWorkerCapabilities = {
    type = "structure",
    members = {
        vCpuCount = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VCpuCountRange }),
        memoryMiB = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemoryMiBRange }),
        acceleratorTypes = {
            type = "list",
            member = { type = "string" },
        },
        acceleratorCount = M.AcceleratorCountRange,
        acceleratorTotalMemoryMiB = M.AcceleratorTotalMemoryMiBRange,
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
            member = M.FleetAmountCapability,
        },
        customAttributes = {
            type = "list",
            member = M.FleetAttributeCapability,
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
        autoScalingConfiguration = M.CustomerManagedAutoScalingConfiguration,
        workerCapabilities = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CustomerManagedWorkerCapabilities }),
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
            type = "integer",
        },
        workerIdleDurationSeconds = {
            type = "integer",
            traits = {
                default = 300,
            },
        },
        scaleOutWorkersPerMinute = {
            type = "integer",
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
            type = "integer",
            traits = {
                default = 250,
            },
        },
        iops = {
            type = "integer",
            traits = {
                default = 3000,
            },
        },
        throughputMiB = {
            type = "integer",
            traits = {
                default = 125,
            },
        },
    },
}

M.ServiceManagedEc2InstanceCapabilities = {
    type = "structure",
    members = {
        vCpuCount = setmetatable({ traits = {
            required = true,
        } }, { __index = M.VCpuCountRange }),
        memoryMiB = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MemoryMiBRange }),
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
        rootEbsVolume = M.Ec2EbsVolume,
        acceleratorCapabilities = M.AcceleratorCapabilities,
        allowedInstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        excludedInstanceTypes = {
            type = "list",
            member = { type = "string" },
        },
        customAmounts = {
            type = "list",
            member = M.FleetAmountCapability,
        },
        customAttributes = {
            type = "list",
            member = M.FleetAttributeCapability,
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
            member = { type = "string" },
        },
    },
}

M.ServiceManagedEc2FleetConfiguration = {
    type = "structure",
    members = {
        instanceCapabilities = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceManagedEc2InstanceCapabilities }),
        instanceMarketOptions = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ServiceManagedEc2InstanceMarketOptions }),
        vpcConfiguration = M.VpcConfiguration,
        storageProfileId = {
            type = "string",
        },
        autoScalingConfiguration = M.ServiceManagedEc2AutoScalingConfiguration,
    },
}

M.FleetConfiguration = {
    type = "union",
    members = {
        customerManaged = M.CustomerManagedFleetConfiguration,
        serviceManagedEc2 = M.ServiceManagedEc2FleetConfiguration,
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
            type = "integer",
            traits = {
                default = 300,
            },
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
                idempotency_token = true,
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
            traits = {
                default = "",
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        minWorkerCount = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        maxWorkerCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FleetConfiguration }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        hostConfiguration = M.HostConfiguration,
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
                idempotency_token = true,
            },
        },
        template = {
            type = "string",
        },
        templateType = {
            type = "string",
        },
        priority = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = M.JobParameter,
        },
        attachments = M.Attachments,
        storageProfileId = {
            type = "string",
        },
        targetTaskRunStatus = {
            type = "string",
            traits = {
                default = "READY",
            },
        },
        maxFailedTasksCount = {
            type = "integer",
            traits = {
                default = 20,
            },
        },
        maxRetriesPerTask = {
            type = "integer",
            traits = {
                default = 5,
            },
        },
        maxWorkerCount = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "string" },
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
                idempotency_token = true,
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
                idempotency_token = true,
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
            traits = {
                default = "",
            },
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
                idempotency_token = true,
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
            key = { type = "string" },
            value = { type = "string" },
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
            type = "integer",
            traits = {
                default = 1,
            },
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
        alwaysScheduleFirst = M.SchedulingMaxPriorityOverrideAlwaysScheduleFirst,
    },
}

M.SchedulingMinPriorityOverrideAlwaysScheduleLast = {
    type = "structure",
}

M.SchedulingMinPriorityOverride = {
    type = "union",
    members = {
        alwaysScheduleLast = M.SchedulingMinPriorityOverrideAlwaysScheduleLast,
    },
}

M.WeightedBalancedSchedulingConfiguration = {
    type = "structure",
    members = {
        priorityWeight = {
            type = "double",
            traits = {
                default = 100,
            },
        },
        errorWeight = {
            type = "double",
            traits = {
                default = -10,
            },
        },
        submissionTimeWeight = {
            type = "double",
            traits = {
                default = 3,
            },
        },
        renderingTaskWeight = {
            type = "double",
            traits = {
                default = -100,
            },
        },
        renderingTaskBuffer = {
            type = "integer",
            traits = {
                default = 1,
            },
        },
        maxPriorityOverride = M.SchedulingMaxPriorityOverride,
        minPriorityOverride = M.SchedulingMinPriorityOverride,
    },
}

M.SchedulingConfiguration = {
    type = "union",
    members = {
        priorityFifo = M.PriorityFifoSchedulingConfiguration,
        priorityBalanced = M.PriorityBalancedSchedulingConfiguration,
        weightedBalanced = M.WeightedBalancedSchedulingConfiguration,
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
                idempotency_token = true,
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
            traits = {
                default = "",
            },
        },
        defaultBudgetAction = {
            type = "string",
            traits = {
                default = "NONE",
            },
        },
        jobAttachmentSettings = M.JobAttachmentSettings,
        roleArn = {
            type = "string",
        },
        jobRunAsUser = M.JobRunAsUser,
        requiredFileSystemLocationNames = {
            type = "list",
            member = { type = "string" },
        },
        allowedStorageProfileIds = {
            type = "list",
            member = { type = "string" },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        schedulingConfiguration = M.SchedulingConfiguration,
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
                idempotency_token = true,
            },
        },
        priority = {
            type = "integer",
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
                idempotency_token = true,
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
            member = M.FileSystemLocation,
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
        ipAddresses = M.IpAddresses,
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
        hostProperties = M.HostPropertiesRequest,
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amz-Client-Token",
                idempotency_token = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
                idempotency_token = true,
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
            member = M.FleetAmountCapability,
        },
        attributes = {
            type = "list",
            member = M.FleetAttributeCapability,
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
            type = "integer",
        },
        workerCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        minWorkerCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        maxWorkerCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FleetConfiguration }),
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
        },
        description = {
            type = "string",
        },
        hostConfiguration = M.HostConfiguration,
        capabilities = M.FleetCapabilities,
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
            type = "integer",
            traits = {
                default = 100,
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
            member = M.FleetMember,
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
            type = "integer",
            traits = {
                default = 100,
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
            type = "integer",
        },
        workerCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        minWorkerCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        maxWorkerCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FleetConfiguration }),
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
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
            member = M.FleetSummary,
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
                idempotency_token = true,
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
            type = "integer",
        },
        maxWorkerCount = {
            type = "integer",
        },
        configuration = M.FleetConfiguration,
        hostConfiguration = M.HostConfiguration,
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
        hostProperties = M.HostPropertiesResponse,
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        log = M.LogConfiguration,
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
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
            type = "integer",
            traits = {
                default = 100,
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
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
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
            member = M.WorkerSessionSummary,
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
            type = "integer",
            traits = {
                default = 100,
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
        hostProperties = M.HostPropertiesResponse,
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        log = M.LogConfiguration,
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
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
            member = M.WorkerSummary,
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
            type = "float",
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
            member = { type = "string" },
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
            member = M.WorkerAmountCapability,
            traits = {
                required = true,
            },
        },
        attributes = {
            type = "list",
            member = M.WorkerAttributeCapability,
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
        capabilities = M.WorkerCapabilities,
        hostProperties = M.HostPropertiesRequest,
    },
}

M.UpdateWorkerOutput = {
    type = "structure",
    members = {
        log = M.LogConfiguration,
        hostConfiguration = M.HostConfiguration,
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
            type = "integer",
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
            type = "float",
        },
        manifests = {
            type = "list",
            member = M.TaskRunManifestPropertiesRequest,
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
            key = { type = "string" },
            value = M.UpdatedSessionActionInfo,
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
            key = { type = "string" },
            value = M.AssignedSession,
            traits = {
                required = true,
            },
        },
        cancelSessionActions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
            traits = {
                required = true,
            },
        },
        desiredWorkerStatus = {
            type = "string",
        },
        updateIntervalSeconds = {
            type = "integer",
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
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
        },
        description = {
            type = "string",
        },
        costScaleFactor = {
            type = "float",
            traits = {
                default = 1,
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
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
            type = "integer",
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
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
        },
        fileSystemLocations = {
            type = "list",
            member = M.FileSystemLocation,
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
            type = "integer",
            traits = {
                default = 100,
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
            member = M.FarmMember,
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
            type = "integer",
            traits = {
                default = 100,
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
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
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
            member = M.FarmSummary,
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
            type = "integer",
            traits = {
                default = 100,
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
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
            type = "integer",
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
            member = M.LimitSummary,
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
            type = "integer",
            traits = {
                default = 100,
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
            member = M.StorageProfileSummary,
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
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
        },
        description = {
            type = "string",
        },
        jobAttachmentSettings = M.JobAttachmentSettings,
        roleArn = {
            type = "string",
        },
        requiredFileSystemLocationNames = {
            type = "list",
            member = { type = "string" },
        },
        allowedStorageProfileIds = {
            type = "list",
            member = { type = "string" },
        },
        jobRunAsUser = M.JobRunAsUser,
        schedulingConfiguration = M.SchedulingConfiguration,
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
            type = "integer",
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
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
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
            member = M.FileSystemLocation,
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
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
        taskRunStatus = {
            type = "string",
        },
        targetTaskRunStatus = {
            type = "string",
        },
        taskRunStatusCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        taskFailureRetryCount = {
            type = "integer",
        },
        storageProfileId = {
            type = "string",
        },
        maxFailedTasksCount = {
            type = "integer",
        },
        maxRetriesPerTask = {
            type = "integer",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = M.JobParameter,
        },
        attachments = M.Attachments,
        description = {
            type = "string",
        },
        maxWorkerCount = {
            type = "integer",
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
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        targetLifecycleStatus = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
        },
        log = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LogConfiguration }),
        hostProperties = M.HostPropertiesResponse,
        workerLog = M.LogConfiguration,
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
        workerUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        progressPercent = {
            type = "float",
        },
        manifests = {
            type = "list",
            member = M.TaskRunManifestPropertiesResponse,
        },
        sessionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        processExitCode = {
            type = "integer",
        },
        progressMessage = {
            type = "string",
        },
        acquiredLimits = {
            type = "list",
            member = M.AcquiredLimit,
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SessionActionDefinition }),
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
            key = { type = "string" },
            value = { type = "integer" },
            traits = {
                required = true,
            },
        },
        taskFailureRetryCount = {
            type = "integer",
        },
        targetTaskRunStatus = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
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
        dependencyCounts = M.DependencyCounts,
        requiredCapabilities = M.StepRequiredCapabilities,
        parameterSpace = M.ParameterSpace,
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
                timestamp_format = "date-time",
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
            type = "integer",
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
        updatedBy = {
            type = "string",
        },
        latestSessionActionId = {
            type = "string",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = M.TaskParameterValue,
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
            type = "integer",
            traits = {
                default = 100,
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
            member = M.JobMember,
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
            type = "integer",
            traits = {
                default = 100,
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
            member = { type = "document" },
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
            type = "integer",
            traits = {
                default = 100,
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
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
        taskRunStatus = {
            type = "string",
        },
        targetTaskRunStatus = {
            type = "string",
        },
        taskRunStatusCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        taskFailureRetryCount = {
            type = "integer",
        },
        maxFailedTasksCount = {
            type = "integer",
        },
        maxRetriesPerTask = {
            type = "integer",
        },
        maxWorkerCount = {
            type = "integer",
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
            member = M.JobSummary,
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
            type = "integer",
            traits = {
                default = 100,
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
            key = { type = "string" },
            value = M.TaskParameterValue,
        },
    },
}

M.SessionActionDefinitionSummary = {
    type = "union",
    members = {
        envEnter = M.EnvironmentEnterSessionActionDefinitionSummary,
        envExit = M.EnvironmentExitSessionActionDefinitionSummary,
        taskRun = M.TaskRunSessionActionDefinitionSummary,
        syncInputJobAttachments = M.SyncInputJobAttachmentsSessionActionDefinitionSummary,
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
        workerUpdatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        progressPercent = {
            type = "float",
        },
        manifests = {
            type = "list",
            member = M.TaskRunManifestPropertiesResponse,
        },
        definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SessionActionDefinitionSummary }),
    },
}

M.ListSessionActionsOutput = {
    type = "structure",
    members = {
        sessionActions = {
            type = "list",
            member = M.SessionActionSummary,
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
            type = "integer",
            traits = {
                default = 100,
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
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        targetLifecycleStatus = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
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
            type = "integer",
            traits = {
                default = 100,
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
            member = M.StepConsumer,
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
            type = "integer",
            traits = {
                default = 100,
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
            member = M.StepDependency,
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
            type = "integer",
            traits = {
                default = 100,
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
            key = { type = "string" },
            value = { type = "integer" },
            traits = {
                required = true,
            },
        },
        taskFailureRetryCount = {
            type = "integer",
        },
        targetTaskRunStatus = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
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
        dependencyCounts = M.DependencyCounts,
    },
}

M.ListStepsOutput = {
    type = "structure",
    members = {
        steps = {
            type = "list",
            member = M.StepSummary,
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
            type = "integer",
            traits = {
                default = 100,
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
                timestamp_format = "date-time",
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
            type = "integer",
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
        updatedBy = {
            type = "string",
        },
        latestSessionActionId = {
            type = "string",
        },
        parameters = {
            type = "map",
            key = { type = "string" },
            value = M.TaskParameterValue,
        },
    },
}

M.ListTasksOutput = {
    type = "structure",
    members = {
        tasks = {
            type = "list",
            member = M.TaskSummary,
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
                idempotency_token = true,
            },
        },
        targetTaskRunStatus = {
            type = "string",
        },
        priority = {
            type = "integer",
        },
        maxFailedTasksCount = {
            type = "integer",
        },
        maxRetriesPerTask = {
            type = "integer",
        },
        lifecycleStatus = {
            type = "string",
        },
        maxWorkerCount = {
            type = "integer",
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
                idempotency_token = true,
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
                idempotency_token = true,
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
                idempotency_token = true,
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
            type = "integer",
            traits = {
                default = 100,
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
            type = "integer",
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
            member = M.QueueEnvironmentSummary,
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
            type = "integer",
            traits = {
                default = 100,
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
            member = M.QueueMember,
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
            type = "integer",
            traits = {
                default = 100,
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
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
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
            member = M.QueueSummary,
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
            type = "integer",
            traits = {
                default = 100,
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
            member = M.StorageProfileSummary,
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
                idempotency_token = true,
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
        jobAttachmentSettings = M.JobAttachmentSettings,
        roleArn = {
            type = "string",
        },
        jobRunAsUser = M.JobRunAsUser,
        requiredFileSystemLocationNamesToAdd = {
            type = "list",
            member = { type = "string" },
        },
        requiredFileSystemLocationNamesToRemove = {
            type = "list",
            member = { type = "string" },
        },
        allowedStorageProfileIdsToAdd = {
            type = "list",
            member = { type = "string" },
        },
        allowedStorageProfileIdsToRemove = {
            type = "list",
            member = { type = "string" },
        },
        schedulingConfiguration = M.SchedulingConfiguration,
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
                idempotency_token = true,
            },
        },
        priority = {
            type = "integer",
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
            type = "float",
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
            type = "integer",
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
                idempotency_token = true,
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
            member = M.FileSystemLocation,
        },
        fileSystemLocationsToRemove = {
            type = "list",
            member = M.FileSystemLocation,
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
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
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
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
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
            type = "integer",
            traits = {
                default = 100,
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
            type = "double",
        },
        max = {
            type = "double",
        },
        avg = {
            type = "double",
        },
        sum = {
            type = "double",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        costInUsd = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Stats }),
        runtimeInSeconds = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Stats }),
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
            member = M.Statistics,
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
            member = { type = "string" },
        },
        securityGroupIds = {
            type = "list",
            member = { type = "string" },
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
            type = "integer",
            traits = {
                default = 100,
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
            member = M.LicenseEndpointSummary,
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
            type = "integer",
            traits = {
                default = 100,
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
            type = "integer",
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
            member = M.MeteredProductSummary,
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
            type = "integer",
            traits = {
                default = 100,
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
            member = M.MeteredProductSummary,
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
            type = "integer",
            traits = {
                default = 100,
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
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
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
            member = M.QueueFleetAssociationSummary,
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
            type = "integer",
            traits = {
                default = 100,
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
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
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
            member = M.QueueLimitAssociationSummary,
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
            key = { type = "string" },
            value = { type = "string" },
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
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
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
            key = { type = "string" },
            value = { type = "string" },
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
            type = "integer",
            traits = {
                default = 100,
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
                timestamp_format = "date-time",
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
            traits = {
                timestamp_format = "date-time",
            },
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
            member = M.MonitorSummary,
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
            key = { type = "string" },
            value = { type = "string" },
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
            traits = {
                default = "FUZZY_MATCH",
            },
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
            member = { type = "string" },
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
        userJobsFirst = M.UserJobsFirst,
        fieldSort = M.FieldSortExpression,
        parameterSort = M.ParameterSortExpression,
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
            key = { type = "string" },
            value = { type = "integer" },
        },
        taskFailureRetryCount = {
            type = "integer",
        },
        priority = {
            type = "integer",
        },
        maxFailedTasksCount = {
            type = "integer",
        },
        maxRetriesPerTask = {
            type = "integer",
        },
        createdBy = {
            type = "string",
        },
        createdAt = {
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
        startedAt = {
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
        updatedBy = {
            type = "string",
        },
        jobParameters = {
            type = "map",
            key = { type = "string" },
            value = M.JobParameter,
        },
        maxWorkerCount = {
            type = "integer",
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
            member = M.JobSearchSummary,
            traits = {
                required = true,
            },
        },
        nextItemOffset = {
            type = "integer",
        },
        totalResults = {
            type = "integer",
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
            key = { type = "string" },
            value = { type = "integer" },
        },
        taskFailureRetryCount = {
            type = "integer",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        createdBy = {
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
        updatedBy = {
            type = "string",
        },
        parameterSpace = M.ParameterSpace,
    },
}

M.SearchStepsOutput = {
    type = "structure",
    members = {
        steps = {
            type = "list",
            member = M.StepSearchSummary,
            traits = {
                required = true,
            },
        },
        nextItemOffset = {
            type = "integer",
        },
        totalResults = {
            type = "integer",
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
            key = { type = "string" },
            value = M.TaskParameterValue,
        },
        failureRetryCount = {
            type = "integer",
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
            member = M.TaskSearchSummary,
            traits = {
                required = true,
            },
        },
        nextItemOffset = {
            type = "integer",
        },
        totalResults = {
            type = "integer",
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
        hostProperties = M.HostPropertiesResponse,
        createdBy = {
            type = "string",
        },
        createdAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedBy = {
            type = "string",
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.SearchWorkersOutput = {
    type = "structure",
    members = {
        workers = {
            type = "list",
            member = M.WorkerSearchSummary,
            traits = {
                required = true,
            },
        },
        nextItemOffset = {
            type = "integer",
        },
        totalResults = {
            type = "integer",
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
            member = { type = "string" },
        },
        fleetIds = {
            type = "list",
            member = { type = "string" },
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
        resourceIds = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SessionsStatisticsResources }),
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        statistics = {
            type = "list",
            member = { type = "string" },
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
            key = { type = "string" },
            value = { type = "string" },
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
        dateTimeFilter = M.DateTimeFilterExpression,
        parameterFilter = M.ParameterFilterExpression,
        searchTermFilter = M.SearchTermFilterExpression,
        stringFilter = M.StringFilterExpression,
        stringListFilter = M.StringListFilterExpression,
        groupFilter = M.SearchGroupedFilterExpressions,
    },
}

M.SearchGroupedFilterExpressions = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member = M.SearchFilterExpression,
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
        filterExpressions = M.SearchGroupedFilterExpressions,
        sortExpressions = {
            type = "list",
            member = M.SearchSortExpression,
        },
        itemOffset = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        pageSize = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        queueIds = {
            type = "list",
            member = { type = "string" },
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
        filterExpressions = M.SearchGroupedFilterExpressions,
        sortExpressions = {
            type = "list",
            member = M.SearchSortExpression,
        },
        itemOffset = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        pageSize = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        queueIds = {
            type = "list",
            member = { type = "string" },
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
        filterExpressions = M.SearchGroupedFilterExpressions,
        sortExpressions = {
            type = "list",
            member = M.SearchSortExpression,
        },
        itemOffset = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        pageSize = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        queueIds = {
            type = "list",
            member = { type = "string" },
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
        filterExpressions = M.SearchGroupedFilterExpressions,
        sortExpressions = {
            type = "list",
            member = M.SearchSortExpression,
        },
        itemOffset = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        pageSize = {
            type = "integer",
            traits = {
                default = 100,
            },
        },
        fleetIds = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

return M
