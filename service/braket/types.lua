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

M.ActionMetadata = {
    type = "structure",
    members = {
        actionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        programCount = {
            type = "number",
        },
        executableCount = {
            type = "number",
        },
    },
}

M.ContainerImage = {
    type = "structure",
    members = {
        uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CompressionType = {
    NONE = "NONE",
    GZIP = "GZIP",
}

M.ScriptModeConfig = {
    type = "structure",
    members = {
        entryPoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        compressionType = {
            type = "string",
        },
    },
}

M.AlgorithmSpecification = {
    type = "structure",
    members = {
        scriptModeConfig = {
            type = "structure",
        },
        containerImage = {
            type = "structure",
        },
    },
}

M.AssociationType = {
    RESERVATION_TIME_WINDOW_ARN = "RESERVATION_TIME_WINDOW_ARN",
}

M.Association = {
    type = "structure",
    members = {
        arn = {
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

M.GetDeviceInput = {
    type = "structure",
    members = {
        deviceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.QueueName = {
    QUANTUM_TASKS_QUEUE = "QUANTUM_TASKS_QUEUE",
    JOBS_QUEUE = "JOBS_QUEUE",
}

M.QueuePriority = {
    NORMAL = "Normal",
    PRIORITY = "Priority",
}

M.DeviceQueueInfo = {
    type = "structure",
    members = {
        queue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queueSize = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queuePriority = {
            type = "string",
        },
    },
}

M.DeviceStatus = {
    ONLINE = "ONLINE",
    OFFLINE = "OFFLINE",
    RETIRED = "RETIRED",
}

M.DeviceType = {
    QPU = "QPU",
    SIMULATOR = "SIMULATOR",
}

M.GetDeviceOutput = {
    type = "structure",
    members = {
        deviceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceCapabilities = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceQueueInfo = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    error = "server",
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
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ProgramSetValidationFailure = {
    type = "structure",
    members = {
        programIndex = {
            type = "number",
            traits = {
                required = true,
            },
        },
        inputsIndex = {
            type = "number",
        },
        errors = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ValidationExceptionReason = {
    PROGRAM_SET_VALIDATION_FAILED = "ProgramSetValidationFailed",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        programSetValidationFailures = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SearchDevicesFilter = {
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

M.SearchDevicesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        filters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeviceSummary = {
    type = "structure",
    members = {
        deviceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        providerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchDevicesOutput = {
    type = "structure",
    members = {
        devices = {
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

M.CancelJobInput = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancellationStatus = {
    CANCELLING = "CANCELLING",
    CANCELLED = "CANCELLED",
}

M.CancelJobOutput = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cancellationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.JobCheckpointConfig = {
    type = "structure",
    members = {
        localPath = {
            type = "string",
        },
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeviceConfig = {
    type = "structure",
    members = {
        device = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.S3DataSource = {
    type = "structure",
    members = {
        s3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataSource = {
    type = "structure",
    members = {
        s3DataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InputFileConfig = {
    type = "structure",
    members = {
        channelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentType = {
            type = "string",
        },
        dataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InstanceType = {
    ML_T3_LARGE = "ml.t3.large",
    ML_T3_XLARGE = "ml.t3.xlarge",
    ML_T3_2XLARGE = "ml.t3.2xlarge",
    ML_M4_XLARGE = "ml.m4.xlarge",
    ML_M4_2XLARGE = "ml.m4.2xlarge",
    ML_M4_4XLARGE = "ml.m4.4xlarge",
    ML_M4_10XLARGE = "ml.m4.10xlarge",
    ML_M4_16XLARGE = "ml.m4.16xlarge",
    ML_M5_LARGE = "ml.m5.large",
    ML_M5_XLARGE = "ml.m5.xlarge",
    ML_M5_2XLARGE = "ml.m5.2xlarge",
    ML_M5_4XLARGE = "ml.m5.4xlarge",
    ML_M5_12XLARGE = "ml.m5.12xlarge",
    ML_M5_24XLARGE = "ml.m5.24xlarge",
    ML_C4_XLARGE = "ml.c4.xlarge",
    ML_C4_2XLARGE = "ml.c4.2xlarge",
    ML_C4_4XLARGE = "ml.c4.4xlarge",
    ML_C4_8XLARGE = "ml.c4.8xlarge",
    ML_C5_XLARGE = "ml.c5.xlarge",
    ML_C5_2XLARGE = "ml.c5.2xlarge",
    ML_C5_4XLARGE = "ml.c5.4xlarge",
    ML_C5_9XLARGE = "ml.c5.9xlarge",
    ML_C5_18XLARGE = "ml.c5.18xlarge",
    ML_C5N_XLARGE = "ml.c5n.xlarge",
    ML_C5N_2XLARGE = "ml.c5n.2xlarge",
    ML_C5N_4XLARGE = "ml.c5n.4xlarge",
    ML_C5N_9XLARGE = "ml.c5n.9xlarge",
    ML_C5N_18XLARGE = "ml.c5n.18xlarge",
    ML_P2_XLARGE = "ml.p2.xlarge",
    ML_P2_8XLARGE = "ml.p2.8xlarge",
    ML_P2_16XLARGE = "ml.p2.16xlarge",
    ML_P3_2XLARGE = "ml.p3.2xlarge",
    ML_P3_8XLARGE = "ml.p3.8xlarge",
    ML_P3_16XLARGE = "ml.p3.16xlarge",
    ML_P3DN_24XLARGE = "ml.p3dn.24xlarge",
    ML_P4D_24XLARGE = "ml.p4d.24xlarge",
    ML_G4DN_XLARGE = "ml.g4dn.xlarge",
    ML_G4DN_2XLARGE = "ml.g4dn.2xlarge",
    ML_G4DN_4XLARGE = "ml.g4dn.4xlarge",
    ML_G4DN_8XLARGE = "ml.g4dn.8xlarge",
    ML_G4DN_12XLARGE = "ml.g4dn.12xlarge",
    ML_G4DN_16XLARGE = "ml.g4dn.16xlarge",
    ML_G6_XLARGE = "ml.g6.xlarge",
    ML_G6_2XLARGE = "ml.g6.2xlarge",
    ML_G6_4XLARGE = "ml.g6.4xlarge",
    ML_G6_8XLARGE = "ml.g6.8xlarge",
    ML_G6_12XLARGE = "ml.g6.12xlarge",
    ML_G6_16XLARGE = "ml.g6.16xlarge",
    ML_G6_24XLARGE = "ml.g6.24xlarge",
    ML_G6_48XLARGE = "ml.g6.48xlarge",
    ML_G6E_XLARGE = "ml.g6e.xlarge",
    ML_G6E_2XLARGE = "ml.g6e.2xlarge",
    ML_G6E_4XLARGE = "ml.g6e.4xlarge",
    ML_G6E_8XLARGE = "ml.g6e.8xlarge",
    ML_G6E_12XLARGE = "ml.g6e.12xlarge",
    ML_G6E_16XLARGE = "ml.g6e.16xlarge",
    ML_G6E_24XLARGE = "ml.g6e.24xlarge",
    ML_G6E_48XLARGE = "ml.g6e.48xlarge",
}

M.InstanceConfig = {
    type = "structure",
    members = {
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        volumeSizeInGb = {
            type = "number",
            traits = {
                required = true,
            },
        },
        instanceCount = {
            type = "number",
        },
    },
}

M.JobOutputDataConfig = {
    type = "structure",
    members = {
        kmsKeyId = {
            type = "string",
        },
        s3Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobStoppingCondition = {
    type = "structure",
    members = {
        maxRuntimeInSeconds = {
            type = "number",
        },
    },
}

M.CreateJobInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        algorithmSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        inputDataConfig = {
            type = "list",
            member_type = "structure",
        },
        outputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        checkpointConfig = {
            type = "structure",
        },
        jobName = {
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
        stoppingCondition = {
            type = "structure",
        },
        instanceConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        hyperParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        deviceConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        associations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateJobOutput = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeviceOfflineException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeviceRetiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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
        },
    },
}

M.HybridJobAdditionalAttributeName = {
    QUEUE_INFO = "QueueInfo",
}

M.GetJobInput = {
    type = "structure",
    members = {
        jobArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        additionalAttributeNames = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "additionalAttributeNames",
            },
        },
    },
}

M.JobEventType = {
    WAITING_FOR_PRIORITY = "WAITING_FOR_PRIORITY",
    QUEUED_FOR_EXECUTION = "QUEUED_FOR_EXECUTION",
    STARTING_INSTANCE = "STARTING_INSTANCE",
    DOWNLOADING_DATA = "DOWNLOADING_DATA",
    RUNNING = "RUNNING",
    DEPRIORITIZED_DUE_TO_INACTIVITY = "DEPRIORITIZED_DUE_TO_INACTIVITY",
    UPLOADING_RESULTS = "UPLOADING_RESULTS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    MAX_RUNTIME_EXCEEDED = "MAX_RUNTIME_EXCEEDED",
    CANCELLED = "CANCELLED",
}

M.JobEventDetails = {
    type = "structure",
    members = {
        eventType = {
            type = "string",
        },
        timeOfEvent = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        message = {
            type = "string",
        },
    },
}

M.HybridJobQueueInfo = {
    type = "structure",
    members = {
        queue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        position = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.JobPrimaryStatus = {
    QUEUED = "QUEUED",
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELLING = "CANCELLING",
    CANCELLED = "CANCELLED",
}

M.GetJobOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobArn = {
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
        failureReason = {
            type = "string",
        },
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        hyperParameters = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        inputDataConfig = {
            type = "list",
            member_type = "structure",
        },
        outputDataConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        stoppingCondition = {
            type = "structure",
        },
        checkpointConfig = {
            type = "structure",
        },
        algorithmSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        instanceConfig = {
            type = "structure",
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
        billableDuration = {
            type = "number",
        },
        deviceConfig = {
            type = "structure",
        },
        events = {
            type = "list",
            member_type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        queueInfo = {
            type = "structure",
        },
        associations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SearchJobsFilterOperator = {
    LT = "LT",
    LTE = "LTE",
    EQUAL = "EQUAL",
    GT = "GT",
    GTE = "GTE",
    BETWEEN = "BETWEEN",
    CONTAINS = "CONTAINS",
}

M.SearchJobsFilter = {
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
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        filters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.JobSummary = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        device = {
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
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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

M.CancelQuantumTaskInput = {
    type = "structure",
    members = {
        quantumTaskArn = {
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
    },
}

M.CancelQuantumTaskOutput = {
    type = "structure",
    members = {
        quantumTaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cancellationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExperimentalCapabilitiesEnablementType = {
    ALL = "ALL",
    NONE = "NONE",
}

M.ExperimentalCapabilities = {
    type = "union",
    members = {
        enabled = {
            type = "string",
        },
    },
}

M.CreateQuantumTaskInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceParameters = {
            type = "string",
        },
        shots = {
            type = "number",
            traits = {
                required = true,
            },
        },
        outputS3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputS3KeyPrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
        action = {
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
        jobToken = {
            type = "string",
        },
        associations = {
            type = "list",
            member_type = "structure",
        },
        experimentalCapabilities = {
            type = "union",
        },
    },
}

M.CreateQuantumTaskOutput = {
    type = "structure",
    members = {
        quantumTaskArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QuantumTaskAdditionalAttributeName = {
    QUEUE_INFO = "QueueInfo",
}

M.GetQuantumTaskInput = {
    type = "structure",
    members = {
        quantumTaskArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        additionalAttributeNames = {
            type = "list",
            member_type = "string",
            traits = {
                http_query = "additionalAttributeNames",
            },
        },
    },
}

M.QuantumTaskQueueInfo = {
    type = "structure",
    members = {
        queue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        position = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queuePriority = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.QuantumTaskStatus = {
    CREATED = "CREATED",
    QUEUED = "QUEUED",
    RUNNING = "RUNNING",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELLING = "CANCELLING",
    CANCELLED = "CANCELLED",
}

M.GetQuantumTaskOutput = {
    type = "structure",
    members = {
        quantumTaskArn = {
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
        failureReason = {
            type = "string",
        },
        deviceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceParameters = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shots = {
            type = "number",
            traits = {
                required = true,
            },
        },
        outputS3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputS3Directory = {
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
        endedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        jobArn = {
            type = "string",
        },
        queueInfo = {
            type = "structure",
        },
        associations = {
            type = "list",
            member_type = "structure",
        },
        numSuccessfulShots = {
            type = "number",
        },
        actionMetadata = {
            type = "structure",
        },
        experimentalCapabilities = {
            type = "union",
        },
    },
}

M.SearchQuantumTasksFilterOperator = {
    LT = "LT",
    LTE = "LTE",
    EQUAL = "EQUAL",
    GT = "GT",
    GTE = "GTE",
    BETWEEN = "BETWEEN",
}

M.SearchQuantumTasksFilter = {
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
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchQuantumTasksInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        filters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.QuantumTaskSummary = {
    type = "structure",
    members = {
        quantumTaskArn = {
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
        deviceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shots = {
            type = "number",
            traits = {
                required = true,
            },
        },
        outputS3Bucket = {
            type = "string",
            traits = {
                required = true,
            },
        },
        outputS3Directory = {
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
        endedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.SearchQuantumTasksOutput = {
    type = "structure",
    members = {
        quantumTasks = {
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

M.TimePeriod = {
    type = "structure",
    members = {
        startAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
        endAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "epoch-seconds",
            },
        },
    },
}

M.CreateSpendingLimitInput = {
    type = "structure",
    members = {
        clientToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        spendingLimit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timePeriod = {
            type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateSpendingLimitOutput = {
    type = "structure",
    members = {
        spendingLimitArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSpendingLimitInput = {
    type = "structure",
    members = {
        spendingLimitArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSpendingLimitOutput = {
    type = "structure",
}

M.SearchSpendingLimitsFilterOperator = {
    EQUAL = "EQUAL",
}

M.SearchSpendingLimitsFilter = {
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
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchSpendingLimitsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SpendingLimitSummary = {
    type = "structure",
    members = {
        spendingLimitArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deviceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timePeriod = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        spendingLimit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queuedSpend = {
            type = "string",
            traits = {
                required = true,
            },
        },
        totalSpend = {
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
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.SearchSpendingLimitsOutput = {
    type = "structure",
    members = {
        spendingLimits = {
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

M.UpdateSpendingLimitInput = {
    type = "structure",
    members = {
        spendingLimitArn = {
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
        spendingLimit = {
            type = "string",
        },
        timePeriod = {
            type = "structure",
        },
    },
}

M.UpdateSpendingLimitOutput = {
    type = "structure",
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

return M
