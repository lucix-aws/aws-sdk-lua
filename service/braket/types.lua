local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ActionMetadata = {
    type = "structure",
    id = "ActionMetadata",
    members = {
        actionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        programCount = {
            type = "long",
        },
        executableCount = {
            type = "long",
        },
    },
}

M.ContainerImage = {
    type = "structure",
    id = "ContainerImage",
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
    id = "ScriptModeConfig",
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
    id = "AlgorithmSpecification",
    members = {
        scriptModeConfig = M.ScriptModeConfig,
        containerImage = M.ContainerImage,
    },
}

M.AssociationType = {
    RESERVATION_TIME_WINDOW_ARN = "RESERVATION_TIME_WINDOW_ARN",
}

M.Association = {
    type = "structure",
    id = "Association",
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
    id = "GetDeviceInput",
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
    id = "DeviceQueueInfo",
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
    id = "GetDeviceOutput",
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
                media_type = "application/json",
                required = true,
            },
        },
        deviceQueueInfo = {
            type = "list",
            member = M.DeviceQueueInfo,
        },
    },
}

M.InternalServiceException = {
    type = "structure",
    id = "InternalServiceException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ProgramSetValidationFailure = {
    type = "structure",
    id = "ProgramSetValidationFailure",
    members = {
        programIndex = {
            type = "long",
            traits = {
                required = true,
            },
        },
        inputsIndex = {
            type = "long",
        },
        errors = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ValidationExceptionReason = {
    PROGRAM_SET_VALIDATION_FAILED = "ProgramSetValidationFailed",
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
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
            member = M.ProgramSetValidationFailure,
        },
    },
}

M.SearchDevicesFilter = {
    type = "structure",
    id = "SearchDevicesFilter",
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

M.SearchDevicesInput = {
    type = "structure",
    id = "SearchDevicesInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filters = {
            type = "list",
            member = M.SearchDevicesFilter,
            traits = {
                required = true,
            },
        },
    },
}

M.DeviceSummary = {
    type = "structure",
    id = "DeviceSummary",
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
    id = "SearchDevicesOutput",
    members = {
        devices = {
            type = "list",
            member = M.DeviceSummary,
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
    id = "CancelJobInput",
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
    id = "CancelJobOutput",
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
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.JobCheckpointConfig = {
    type = "structure",
    id = "JobCheckpointConfig",
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
    id = "DeviceConfig",
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
    id = "S3DataSource",
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
    id = "DataSource",
    members = {
        s3DataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3DataSource }),
    },
}

M.InputFileConfig = {
    type = "structure",
    id = "InputFileConfig",
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
        dataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataSource }),
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
    id = "InstanceConfig",
    members = {
        instanceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        volumeSizeInGb = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        instanceCount = {
            type = "integer",
        },
    },
}

M.JobOutputDataConfig = {
    type = "structure",
    id = "JobOutputDataConfig",
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
    id = "JobStoppingCondition",
    members = {
        maxRuntimeInSeconds = {
            type = "integer",
        },
    },
}

M.CreateJobInput = {
    type = "structure",
    id = "CreateJobInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
                required = true,
            },
        },
        algorithmSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AlgorithmSpecification }),
        inputDataConfig = {
            type = "list",
            member = M.InputFileConfig,
        },
        outputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobOutputDataConfig }),
        checkpointConfig = M.JobCheckpointConfig,
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
        stoppingCondition = M.JobStoppingCondition,
        instanceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceConfig }),
        hyperParameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        deviceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DeviceConfig }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        associations = {
            type = "list",
            member = M.Association,
        },
    },
}

M.CreateJobOutput = {
    type = "structure",
    id = "CreateJobOutput",
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
    id = "DeviceOfflineException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeviceRetiredException = {
    type = "structure",
    id = "DeviceRetiredException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
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
    id = "GetJobInput",
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
            member = { type = "string" },
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
    id = "JobEventDetails",
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
    id = "HybridJobQueueInfo",
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
    id = "GetJobOutput",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        inputDataConfig = {
            type = "list",
            member = M.InputFileConfig,
        },
        outputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.JobOutputDataConfig }),
        stoppingCondition = M.JobStoppingCondition,
        checkpointConfig = M.JobCheckpointConfig,
        algorithmSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AlgorithmSpecification }),
        instanceConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InstanceConfig }),
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
            type = "integer",
        },
        deviceConfig = M.DeviceConfig,
        events = {
            type = "list",
            member = M.JobEventDetails,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        queueInfo = M.HybridJobQueueInfo,
        associations = {
            type = "list",
            member = M.Association,
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
    id = "SearchJobsFilter",
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
    id = "SearchJobsInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filters = {
            type = "list",
            member = M.SearchJobsFilter,
            traits = {
                required = true,
            },
        },
    },
}

M.JobSummary = {
    type = "structure",
    id = "JobSummary",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SearchJobsOutput = {
    type = "structure",
    id = "SearchJobsOutput",
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

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CancelQuantumTaskInput = {
    type = "structure",
    id = "CancelQuantumTaskInput",
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
                idempotency_token = true,
                required = true,
            },
        },
    },
}

M.CancelQuantumTaskOutput = {
    type = "structure",
    id = "CancelQuantumTaskOutput",
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
    id = "ExperimentalCapabilities",
    members = {
        enabled = {
            type = "string",
        },
    },
}

M.CreateQuantumTaskInput = {
    type = "structure",
    id = "CreateQuantumTaskInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
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
            traits = {
                media_type = "application/json",
            },
        },
        shots = {
            type = "long",
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
                media_type = "application/json",
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        jobToken = {
            type = "string",
        },
        associations = {
            type = "list",
            member = M.Association,
        },
        experimentalCapabilities = M.ExperimentalCapabilities,
    },
}

M.CreateQuantumTaskOutput = {
    type = "structure",
    id = "CreateQuantumTaskOutput",
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
    id = "GetQuantumTaskInput",
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
            member = { type = "string" },
            traits = {
                http_query = "additionalAttributeNames",
            },
        },
    },
}

M.QuantumTaskQueueInfo = {
    type = "structure",
    id = "QuantumTaskQueueInfo",
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
    id = "GetQuantumTaskOutput",
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
                media_type = "application/json",
                required = true,
            },
        },
        shots = {
            type = "long",
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
            key = { type = "string" },
            value = { type = "string" },
        },
        jobArn = {
            type = "string",
        },
        queueInfo = M.QuantumTaskQueueInfo,
        associations = {
            type = "list",
            member = M.Association,
        },
        numSuccessfulShots = {
            type = "long",
        },
        actionMetadata = M.ActionMetadata,
        experimentalCapabilities = M.ExperimentalCapabilities,
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
    id = "SearchQuantumTasksFilter",
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
    id = "SearchQuantumTasksInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filters = {
            type = "list",
            member = M.SearchQuantumTasksFilter,
            traits = {
                required = true,
            },
        },
    },
}

M.QuantumTaskSummary = {
    type = "structure",
    id = "QuantumTaskSummary",
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
            type = "long",
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SearchQuantumTasksOutput = {
    type = "structure",
    id = "SearchQuantumTasksOutput",
    members = {
        quantumTasks = {
            type = "list",
            member = M.QuantumTaskSummary,
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
    id = "TimePeriod",
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
    id = "CreateSpendingLimitInput",
    members = {
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
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
        timePeriod = M.TimePeriod,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateSpendingLimitOutput = {
    type = "structure",
    id = "CreateSpendingLimitOutput",
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
    id = "DeleteSpendingLimitInput",
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
    id = "DeleteSpendingLimitOutput",
}

M.SearchSpendingLimitsFilterOperator = {
    EQUAL = "EQUAL",
}

M.SearchSpendingLimitsFilter = {
    type = "structure",
    id = "SearchSpendingLimitsFilter",
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
    id = "SearchSpendingLimitsInput",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        filters = {
            type = "list",
            member = M.SearchSpendingLimitsFilter,
        },
    },
}

M.SpendingLimitSummary = {
    type = "structure",
    id = "SpendingLimitSummary",
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
        timePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimePeriod }),
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SearchSpendingLimitsOutput = {
    type = "structure",
    id = "SearchSpendingLimitsOutput",
    members = {
        spendingLimits = {
            type = "list",
            member = M.SpendingLimitSummary,
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
    id = "UpdateSpendingLimitInput",
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
                idempotency_token = true,
                required = true,
            },
        },
        spendingLimit = {
            type = "string",
        },
        timePeriod = M.TimePeriod,
    },
}

M.UpdateSpendingLimitOutput = {
    type = "structure",
    id = "UpdateSpendingLimitOutput",
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

return M
