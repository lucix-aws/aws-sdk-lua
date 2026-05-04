local M = {}

M.ActivityAlreadyExists = {
    type = "structure",
    id = "ActivityAlreadyExists",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ActivityDoesNotExist = {
    type = "structure",
    id = "ActivityDoesNotExist",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ActivityFailedEventDetails = {
    type = "structure",
    id = "ActivityFailedEventDetails",
    members = {
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
    },
}

M.ActivityLimitExceeded = {
    type = "structure",
    id = "ActivityLimitExceeded",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ActivityListItem = {
    type = "structure",
    id = "ActivityListItem",
    members = {
        activityArn = {
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
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.HistoryEventExecutionDataDetails = {
    type = "structure",
    id = "HistoryEventExecutionDataDetails",
    members = {
        truncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ActivityScheduledEventDetails = {
    type = "structure",
    id = "ActivityScheduledEventDetails",
    members = {
        resource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        input = {
            type = "string",
        },
        inputDetails = M.HistoryEventExecutionDataDetails,
        timeoutInSeconds = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        heartbeatInSeconds = {
            type = "long",
            traits = {
                default = nil,
            },
        },
    },
}

M.ActivityScheduleFailedEventDetails = {
    type = "structure",
    id = "ActivityScheduleFailedEventDetails",
    members = {
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
    },
}

M.ActivityStartedEventDetails = {
    type = "structure",
    id = "ActivityStartedEventDetails",
    members = {
        workerName = {
            type = "string",
        },
    },
}

M.ActivitySucceededEventDetails = {
    type = "structure",
    id = "ActivitySucceededEventDetails",
    members = {
        output = {
            type = "string",
        },
        outputDetails = M.HistoryEventExecutionDataDetails,
    },
}

M.ActivityTimedOutEventDetails = {
    type = "structure",
    id = "ActivityTimedOutEventDetails",
    members = {
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
    },
}

M.ActivityWorkerLimitExceeded = {
    type = "structure",
    id = "ActivityWorkerLimitExceeded",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssignedVariablesDetails = {
    type = "structure",
    id = "AssignedVariablesDetails",
    members = {
        truncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.EncryptionType = {
    AWS_OWNED_KEY = "AWS_OWNED_KEY",
    CUSTOMER_MANAGED_KMS_KEY = "CUSTOMER_MANAGED_KMS_KEY",
}

M.EncryptionConfiguration = {
    type = "structure",
    id = "EncryptionConfiguration",
    members = {
        kmsKeyId = {
            type = "string",
        },
        kmsDataKeyReusePeriodSeconds = {
            type = "integer",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
    members = {
        key = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.CreateActivityInput = {
    type = "structure",
    id = "CreateActivityInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        encryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.CreateActivityOutput = {
    type = "structure",
    id = "CreateActivityOutput",
    members = {
        activityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidEncryptionConfiguration = {
    type = "structure",
    id = "InvalidEncryptionConfiguration",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidName = {
    type = "structure",
    id = "InvalidName",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsAccessDeniedException = {
    type = "structure",
    id = "KmsAccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsThrottlingException = {
    type = "structure",
    id = "KmsThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyTags = {
    type = "structure",
    id = "TooManyTags",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceName = {
            type = "string",
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

M.CloudWatchLogsLogGroup = {
    type = "structure",
    id = "CloudWatchLogsLogGroup",
    members = {
        logGroupArn = {
            type = "string",
        },
    },
}

M.LogDestination = {
    type = "structure",
    id = "LogDestination",
    members = {
        cloudWatchLogsLogGroup = M.CloudWatchLogsLogGroup,
    },
}

M.LogLevel = {
    ALL = "ALL",
    ERROR = "ERROR",
    FATAL = "FATAL",
    OFF = "OFF",
}

M.LoggingConfiguration = {
    type = "structure",
    id = "LoggingConfiguration",
    members = {
        level = {
            type = "string",
        },
        includeExecutionData = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        destinations = {
            type = "list",
            member = M.LogDestination,
        },
    },
}

M.TracingConfiguration = {
    type = "structure",
    id = "TracingConfiguration",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.StateMachineType = {
    STANDARD = "STANDARD",
    EXPRESS = "EXPRESS",
}

M.CreateStateMachineInput = {
    type = "structure",
    id = "CreateStateMachineInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = {
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
        type = {
            type = "string",
        },
        loggingConfiguration = M.LoggingConfiguration,
        tags = {
            type = "list",
            member = M.Tag,
        },
        tracingConfiguration = M.TracingConfiguration,
        publish = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        versionDescription = {
            type = "string",
        },
        encryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.CreateStateMachineOutput = {
    type = "structure",
    id = "CreateStateMachineOutput",
    members = {
        stateMachineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        stateMachineVersionArn = {
            type = "string",
        },
    },
}

M.InvalidArn = {
    type = "structure",
    id = "InvalidArn",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDefinition = {
    type = "structure",
    id = "InvalidDefinition",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidLoggingConfiguration = {
    type = "structure",
    id = "InvalidLoggingConfiguration",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTracingConfiguration = {
    type = "structure",
    id = "InvalidTracingConfiguration",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StateMachineAlreadyExists = {
    type = "structure",
    id = "StateMachineAlreadyExists",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StateMachineDeleting = {
    type = "structure",
    id = "StateMachineDeleting",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StateMachineLimitExceeded = {
    type = "structure",
    id = "StateMachineLimitExceeded",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StateMachineTypeNotSupported = {
    type = "structure",
    id = "StateMachineTypeNotSupported",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationExceptionReason = {
    API_DOES_NOT_SUPPORT_LABELED_ARNS = "API_DOES_NOT_SUPPORT_LABELED_ARNS",
    MISSING_REQUIRED_PARAMETER = "MISSING_REQUIRED_PARAMETER",
    CANNOT_UPDATE_COMPLETED_MAP_RUN = "CANNOT_UPDATE_COMPLETED_MAP_RUN",
    INVALID_ROUTING_CONFIGURATION = "INVALID_ROUTING_CONFIGURATION",
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
    },
}

M.RoutingConfigurationListItem = {
    type = "structure",
    id = "RoutingConfigurationListItem",
    members = {
        stateMachineVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        weight = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.CreateStateMachineAliasInput = {
    type = "structure",
    id = "CreateStateMachineAliasInput",
    members = {
        description = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        routingConfiguration = {
            type = "list",
            member = M.RoutingConfigurationListItem,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateStateMachineAliasOutput = {
    type = "structure",
    id = "CreateStateMachineAliasOutput",
    members = {
        stateMachineAliasArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFound = {
    type = "structure",
    id = "ResourceNotFound",
    error = "client",
    members = {
        message = {
            type = "string",
        },
        resourceName = {
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

M.DeleteActivityInput = {
    type = "structure",
    id = "DeleteActivityInput",
    members = {
        activityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteActivityOutput = {
    type = "structure",
    id = "DeleteActivityOutput",
}

M.DeleteStateMachineInput = {
    type = "structure",
    id = "DeleteStateMachineInput",
    members = {
        stateMachineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteStateMachineOutput = {
    type = "structure",
    id = "DeleteStateMachineOutput",
}

M.DeleteStateMachineAliasInput = {
    type = "structure",
    id = "DeleteStateMachineAliasInput",
    members = {
        stateMachineAliasArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteStateMachineAliasOutput = {
    type = "structure",
    id = "DeleteStateMachineAliasOutput",
}

M.DeleteStateMachineVersionInput = {
    type = "structure",
    id = "DeleteStateMachineVersionInput",
    members = {
        stateMachineVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteStateMachineVersionOutput = {
    type = "structure",
    id = "DeleteStateMachineVersionOutput",
}

M.DescribeActivityInput = {
    type = "structure",
    id = "DescribeActivityInput",
    members = {
        activityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeActivityOutput = {
    type = "structure",
    id = "DescribeActivityOutput",
    members = {
        activityArn = {
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
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        encryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.IncludedData = {
    ALL_DATA = "ALL_DATA",
    METADATA_ONLY = "METADATA_ONLY",
}

M.DescribeExecutionInput = {
    type = "structure",
    id = "DescribeExecutionInput",
    members = {
        executionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        includedData = {
            type = "string",
        },
    },
}

M.CloudWatchEventsExecutionDataDetails = {
    type = "structure",
    id = "CloudWatchEventsExecutionDataDetails",
    members = {
        included = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ExecutionRedriveStatus = {
    REDRIVABLE = "REDRIVABLE",
    NOT_REDRIVABLE = "NOT_REDRIVABLE",
    REDRIVABLE_BY_MAP_RUN = "REDRIVABLE_BY_MAP_RUN",
}

M.ExecutionStatus = {
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
    ABORTED = "ABORTED",
    PENDING_REDRIVE = "PENDING_REDRIVE",
}

M.DescribeExecutionOutput = {
    type = "structure",
    id = "DescribeExecutionOutput",
    members = {
        executionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stateMachineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        stopDate = {
            type = "timestamp",
        },
        input = {
            type = "string",
        },
        inputDetails = M.CloudWatchEventsExecutionDataDetails,
        output = {
            type = "string",
        },
        outputDetails = M.CloudWatchEventsExecutionDataDetails,
        traceHeader = {
            type = "string",
        },
        mapRunArn = {
            type = "string",
        },
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
        stateMachineVersionArn = {
            type = "string",
        },
        stateMachineAliasArn = {
            type = "string",
        },
        redriveCount = {
            type = "integer",
        },
        redriveDate = {
            type = "timestamp",
        },
        redriveStatus = {
            type = "string",
        },
        redriveStatusReason = {
            type = "string",
        },
    },
}

M.ExecutionDoesNotExist = {
    type = "structure",
    id = "ExecutionDoesNotExist",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsKeyState = {
    DISABLED = "DISABLED",
    PENDING_DELETION = "PENDING_DELETION",
    PENDING_IMPORT = "PENDING_IMPORT",
    UNAVAILABLE = "UNAVAILABLE",
    CREATING = "CREATING",
}

M.KmsInvalidStateException = {
    type = "structure",
    id = "KmsInvalidStateException",
    error = "client",
    members = {
        kmsKeyState = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.DescribeMapRunInput = {
    type = "structure",
    id = "DescribeMapRunInput",
    members = {
        mapRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MapRunExecutionCounts = {
    type = "structure",
    id = "MapRunExecutionCounts",
    members = {
        pending = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        running = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        succeeded = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        failed = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        timedOut = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        aborted = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        total = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        resultsWritten = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        failuresNotRedrivable = {
            type = "long",
        },
        pendingRedrive = {
            type = "long",
        },
    },
}

M.MapRunItemCounts = {
    type = "structure",
    id = "MapRunItemCounts",
    members = {
        pending = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        running = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        succeeded = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        failed = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        timedOut = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        aborted = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        total = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        resultsWritten = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        failuresNotRedrivable = {
            type = "long",
        },
        pendingRedrive = {
            type = "long",
        },
    },
}

M.MapRunStatus = {
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    ABORTED = "ABORTED",
}

M.DescribeMapRunOutput = {
    type = "structure",
    id = "DescribeMapRunOutput",
    members = {
        mapRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionArn = {
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
        startDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        stopDate = {
            type = "timestamp",
        },
        maxConcurrency = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        toleratedFailurePercentage = {
            type = "float",
            traits = {
                default = 0,
                required = true,
            },
        },
        toleratedFailureCount = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        itemCounts = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MapRunItemCounts }),
        executionCounts = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MapRunExecutionCounts }),
        redriveCount = {
            type = "integer",
        },
        redriveDate = {
            type = "timestamp",
        },
    },
}

M.DescribeStateMachineInput = {
    type = "structure",
    id = "DescribeStateMachineInput",
    members = {
        stateMachineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        includedData = {
            type = "string",
        },
    },
}

M.StateMachineStatus = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
}

M.DescribeStateMachineOutput = {
    type = "structure",
    id = "DescribeStateMachineOutput",
    members = {
        stateMachineArn = {
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
        status = {
            type = "string",
        },
        definition = {
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
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        loggingConfiguration = M.LoggingConfiguration,
        tracingConfiguration = M.TracingConfiguration,
        label = {
            type = "string",
        },
        revisionId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        encryptionConfiguration = M.EncryptionConfiguration,
        variableReferences = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.StateMachineDoesNotExist = {
    type = "structure",
    id = "StateMachineDoesNotExist",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeStateMachineAliasInput = {
    type = "structure",
    id = "DescribeStateMachineAliasInput",
    members = {
        stateMachineAliasArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeStateMachineAliasOutput = {
    type = "structure",
    id = "DescribeStateMachineAliasOutput",
    members = {
        stateMachineAliasArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        routingConfiguration = {
            type = "list",
            member = M.RoutingConfigurationListItem,
        },
        creationDate = {
            type = "timestamp",
        },
        updateDate = {
            type = "timestamp",
        },
    },
}

M.DescribeStateMachineForExecutionInput = {
    type = "structure",
    id = "DescribeStateMachineForExecutionInput",
    members = {
        executionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        includedData = {
            type = "string",
        },
    },
}

M.DescribeStateMachineForExecutionOutput = {
    type = "structure",
    id = "DescribeStateMachineForExecutionOutput",
    members = {
        stateMachineArn = {
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
        definition = {
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
        updateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        loggingConfiguration = M.LoggingConfiguration,
        tracingConfiguration = M.TracingConfiguration,
        mapRunArn = {
            type = "string",
        },
        label = {
            type = "string",
        },
        revisionId = {
            type = "string",
        },
        encryptionConfiguration = M.EncryptionConfiguration,
        variableReferences = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.GetActivityTaskInput = {
    type = "structure",
    id = "GetActivityTaskInput",
    members = {
        activityArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workerName = {
            type = "string",
        },
    },
}

M.GetActivityTaskOutput = {
    type = "structure",
    id = "GetActivityTaskOutput",
    members = {
        taskToken = {
            type = "string",
        },
        input = {
            type = "string",
        },
    },
}

M.GetExecutionHistoryInput = {
    type = "structure",
    id = "GetExecutionHistoryInput",
    members = {
        executionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        reverseOrder = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        nextToken = {
            type = "string",
        },
        includeExecutionData = {
            type = "boolean",
        },
    },
}

M.EvaluationFailedEventDetails = {
    type = "structure",
    id = "EvaluationFailedEventDetails",
    members = {
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
        location = {
            type = "string",
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecutionAbortedEventDetails = {
    type = "structure",
    id = "ExecutionAbortedEventDetails",
    members = {
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
    },
}

M.ExecutionFailedEventDetails = {
    type = "structure",
    id = "ExecutionFailedEventDetails",
    members = {
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
    },
}

M.ExecutionRedrivenEventDetails = {
    type = "structure",
    id = "ExecutionRedrivenEventDetails",
    members = {
        redriveCount = {
            type = "integer",
        },
    },
}

M.ExecutionStartedEventDetails = {
    type = "structure",
    id = "ExecutionStartedEventDetails",
    members = {
        input = {
            type = "string",
        },
        inputDetails = M.HistoryEventExecutionDataDetails,
        roleArn = {
            type = "string",
        },
        stateMachineAliasArn = {
            type = "string",
        },
        stateMachineVersionArn = {
            type = "string",
        },
    },
}

M.ExecutionSucceededEventDetails = {
    type = "structure",
    id = "ExecutionSucceededEventDetails",
    members = {
        output = {
            type = "string",
        },
        outputDetails = M.HistoryEventExecutionDataDetails,
    },
}

M.ExecutionTimedOutEventDetails = {
    type = "structure",
    id = "ExecutionTimedOutEventDetails",
    members = {
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
    },
}

M.LambdaFunctionFailedEventDetails = {
    type = "structure",
    id = "LambdaFunctionFailedEventDetails",
    members = {
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
    },
}

M.TaskCredentials = {
    type = "structure",
    id = "TaskCredentials",
    members = {
        roleArn = {
            type = "string",
        },
    },
}

M.LambdaFunctionScheduledEventDetails = {
    type = "structure",
    id = "LambdaFunctionScheduledEventDetails",
    members = {
        resource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        input = {
            type = "string",
        },
        inputDetails = M.HistoryEventExecutionDataDetails,
        timeoutInSeconds = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        taskCredentials = M.TaskCredentials,
    },
}

M.LambdaFunctionScheduleFailedEventDetails = {
    type = "structure",
    id = "LambdaFunctionScheduleFailedEventDetails",
    members = {
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
    },
}

M.LambdaFunctionStartFailedEventDetails = {
    type = "structure",
    id = "LambdaFunctionStartFailedEventDetails",
    members = {
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
    },
}

M.LambdaFunctionSucceededEventDetails = {
    type = "structure",
    id = "LambdaFunctionSucceededEventDetails",
    members = {
        output = {
            type = "string",
        },
        outputDetails = M.HistoryEventExecutionDataDetails,
    },
}

M.LambdaFunctionTimedOutEventDetails = {
    type = "structure",
    id = "LambdaFunctionTimedOutEventDetails",
    members = {
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
    },
}

M.MapIterationEventDetails = {
    type = "structure",
    id = "MapIterationEventDetails",
    members = {
        name = {
            type = "string",
        },
        index = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.MapRunFailedEventDetails = {
    type = "structure",
    id = "MapRunFailedEventDetails",
    members = {
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
    },
}

M.MapRunRedrivenEventDetails = {
    type = "structure",
    id = "MapRunRedrivenEventDetails",
    members = {
        mapRunArn = {
            type = "string",
        },
        redriveCount = {
            type = "integer",
        },
    },
}

M.MapRunStartedEventDetails = {
    type = "structure",
    id = "MapRunStartedEventDetails",
    members = {
        mapRunArn = {
            type = "string",
        },
    },
}

M.MapStateStartedEventDetails = {
    type = "structure",
    id = "MapStateStartedEventDetails",
    members = {
        length = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.StateEnteredEventDetails = {
    type = "structure",
    id = "StateEnteredEventDetails",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        input = {
            type = "string",
        },
        inputDetails = M.HistoryEventExecutionDataDetails,
    },
}

M.StateExitedEventDetails = {
    type = "structure",
    id = "StateExitedEventDetails",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        output = {
            type = "string",
        },
        outputDetails = M.HistoryEventExecutionDataDetails,
        assignedVariables = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        assignedVariablesDetails = M.AssignedVariablesDetails,
    },
}

M.TaskFailedEventDetails = {
    type = "structure",
    id = "TaskFailedEventDetails",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
    },
}

M.TaskScheduledEventDetails = {
    type = "structure",
    id = "TaskScheduledEventDetails",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        parameters = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timeoutInSeconds = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        heartbeatInSeconds = {
            type = "long",
            traits = {
                default = nil,
            },
        },
        taskCredentials = M.TaskCredentials,
    },
}

M.TaskStartedEventDetails = {
    type = "structure",
    id = "TaskStartedEventDetails",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TaskStartFailedEventDetails = {
    type = "structure",
    id = "TaskStartFailedEventDetails",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
    },
}

M.TaskSubmitFailedEventDetails = {
    type = "structure",
    id = "TaskSubmitFailedEventDetails",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
    },
}

M.TaskSubmittedEventDetails = {
    type = "structure",
    id = "TaskSubmittedEventDetails",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        output = {
            type = "string",
        },
        outputDetails = M.HistoryEventExecutionDataDetails,
    },
}

M.TaskSucceededEventDetails = {
    type = "structure",
    id = "TaskSucceededEventDetails",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        output = {
            type = "string",
        },
        outputDetails = M.HistoryEventExecutionDataDetails,
    },
}

M.TaskTimedOutEventDetails = {
    type = "structure",
    id = "TaskTimedOutEventDetails",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resource = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
    },
}

M.HistoryEventType = {
    ActivityFailed = "ActivityFailed",
    ActivityScheduled = "ActivityScheduled",
    ActivityScheduleFailed = "ActivityScheduleFailed",
    ActivityStarted = "ActivityStarted",
    ActivitySucceeded = "ActivitySucceeded",
    ActivityTimedOut = "ActivityTimedOut",
    ChoiceStateEntered = "ChoiceStateEntered",
    ChoiceStateExited = "ChoiceStateExited",
    ExecutionAborted = "ExecutionAborted",
    ExecutionFailed = "ExecutionFailed",
    ExecutionStarted = "ExecutionStarted",
    ExecutionSucceeded = "ExecutionSucceeded",
    ExecutionTimedOut = "ExecutionTimedOut",
    FailStateEntered = "FailStateEntered",
    LambdaFunctionFailed = "LambdaFunctionFailed",
    LambdaFunctionScheduled = "LambdaFunctionScheduled",
    LambdaFunctionScheduleFailed = "LambdaFunctionScheduleFailed",
    LambdaFunctionStarted = "LambdaFunctionStarted",
    LambdaFunctionStartFailed = "LambdaFunctionStartFailed",
    LambdaFunctionSucceeded = "LambdaFunctionSucceeded",
    LambdaFunctionTimedOut = "LambdaFunctionTimedOut",
    MapIterationAborted = "MapIterationAborted",
    MapIterationFailed = "MapIterationFailed",
    MapIterationStarted = "MapIterationStarted",
    MapIterationSucceeded = "MapIterationSucceeded",
    MapStateAborted = "MapStateAborted",
    MapStateEntered = "MapStateEntered",
    MapStateExited = "MapStateExited",
    MapStateFailed = "MapStateFailed",
    MapStateStarted = "MapStateStarted",
    MapStateSucceeded = "MapStateSucceeded",
    ParallelStateAborted = "ParallelStateAborted",
    ParallelStateEntered = "ParallelStateEntered",
    ParallelStateExited = "ParallelStateExited",
    ParallelStateFailed = "ParallelStateFailed",
    ParallelStateStarted = "ParallelStateStarted",
    ParallelStateSucceeded = "ParallelStateSucceeded",
    PassStateEntered = "PassStateEntered",
    PassStateExited = "PassStateExited",
    SucceedStateEntered = "SucceedStateEntered",
    SucceedStateExited = "SucceedStateExited",
    TaskFailed = "TaskFailed",
    TaskScheduled = "TaskScheduled",
    TaskStarted = "TaskStarted",
    TaskStartFailed = "TaskStartFailed",
    TaskStateAborted = "TaskStateAborted",
    TaskStateEntered = "TaskStateEntered",
    TaskStateExited = "TaskStateExited",
    TaskSubmitFailed = "TaskSubmitFailed",
    TaskSubmitted = "TaskSubmitted",
    TaskSucceeded = "TaskSucceeded",
    TaskTimedOut = "TaskTimedOut",
    WaitStateAborted = "WaitStateAborted",
    WaitStateEntered = "WaitStateEntered",
    WaitStateExited = "WaitStateExited",
    MapRunAborted = "MapRunAborted",
    MapRunFailed = "MapRunFailed",
    MapRunStarted = "MapRunStarted",
    MapRunSucceeded = "MapRunSucceeded",
    ExecutionRedriven = "ExecutionRedriven",
    MapRunRedriven = "MapRunRedriven",
    EvaluationFailed = "EvaluationFailed",
}

M.HistoryEvent = {
    type = "structure",
    id = "HistoryEvent",
    members = {
        timestamp = {
            type = "timestamp",
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
        id = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        previousEventId = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        activityFailedEventDetails = M.ActivityFailedEventDetails,
        activityScheduleFailedEventDetails = M.ActivityScheduleFailedEventDetails,
        activityScheduledEventDetails = M.ActivityScheduledEventDetails,
        activityStartedEventDetails = M.ActivityStartedEventDetails,
        activitySucceededEventDetails = M.ActivitySucceededEventDetails,
        activityTimedOutEventDetails = M.ActivityTimedOutEventDetails,
        taskFailedEventDetails = M.TaskFailedEventDetails,
        taskScheduledEventDetails = M.TaskScheduledEventDetails,
        taskStartFailedEventDetails = M.TaskStartFailedEventDetails,
        taskStartedEventDetails = M.TaskStartedEventDetails,
        taskSubmitFailedEventDetails = M.TaskSubmitFailedEventDetails,
        taskSubmittedEventDetails = M.TaskSubmittedEventDetails,
        taskSucceededEventDetails = M.TaskSucceededEventDetails,
        taskTimedOutEventDetails = M.TaskTimedOutEventDetails,
        executionFailedEventDetails = M.ExecutionFailedEventDetails,
        executionStartedEventDetails = M.ExecutionStartedEventDetails,
        executionSucceededEventDetails = M.ExecutionSucceededEventDetails,
        executionAbortedEventDetails = M.ExecutionAbortedEventDetails,
        executionTimedOutEventDetails = M.ExecutionTimedOutEventDetails,
        executionRedrivenEventDetails = M.ExecutionRedrivenEventDetails,
        mapStateStartedEventDetails = M.MapStateStartedEventDetails,
        mapIterationStartedEventDetails = M.MapIterationEventDetails,
        mapIterationSucceededEventDetails = M.MapIterationEventDetails,
        mapIterationFailedEventDetails = M.MapIterationEventDetails,
        mapIterationAbortedEventDetails = M.MapIterationEventDetails,
        lambdaFunctionFailedEventDetails = M.LambdaFunctionFailedEventDetails,
        lambdaFunctionScheduleFailedEventDetails = M.LambdaFunctionScheduleFailedEventDetails,
        lambdaFunctionScheduledEventDetails = M.LambdaFunctionScheduledEventDetails,
        lambdaFunctionStartFailedEventDetails = M.LambdaFunctionStartFailedEventDetails,
        lambdaFunctionSucceededEventDetails = M.LambdaFunctionSucceededEventDetails,
        lambdaFunctionTimedOutEventDetails = M.LambdaFunctionTimedOutEventDetails,
        stateEnteredEventDetails = M.StateEnteredEventDetails,
        stateExitedEventDetails = M.StateExitedEventDetails,
        mapRunStartedEventDetails = M.MapRunStartedEventDetails,
        mapRunFailedEventDetails = M.MapRunFailedEventDetails,
        mapRunRedrivenEventDetails = M.MapRunRedrivenEventDetails,
        evaluationFailedEventDetails = M.EvaluationFailedEventDetails,
    },
}

M.GetExecutionHistoryOutput = {
    type = "structure",
    id = "GetExecutionHistoryOutput",
    members = {
        events = {
            type = "list",
            member = M.HistoryEvent,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.InvalidToken = {
    type = "structure",
    id = "InvalidToken",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListActivitiesInput = {
    type = "structure",
    id = "ListActivitiesInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListActivitiesOutput = {
    type = "structure",
    id = "ListActivitiesOutput",
    members = {
        activities = {
            type = "list",
            member = M.ActivityListItem,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ExecutionRedriveFilter = {
    REDRIVEN = "REDRIVEN",
    NOT_REDRIVEN = "NOT_REDRIVEN",
}

M.ListExecutionsInput = {
    type = "structure",
    id = "ListExecutionsInput",
    members = {
        stateMachineArn = {
            type = "string",
        },
        statusFilter = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        nextToken = {
            type = "string",
        },
        mapRunArn = {
            type = "string",
        },
        redriveFilter = {
            type = "string",
        },
    },
}

M.ExecutionListItem = {
    type = "structure",
    id = "ExecutionListItem",
    members = {
        executionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stateMachineArn = {
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
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        stopDate = {
            type = "timestamp",
        },
        mapRunArn = {
            type = "string",
        },
        itemCount = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        stateMachineVersionArn = {
            type = "string",
        },
        stateMachineAliasArn = {
            type = "string",
        },
        redriveCount = {
            type = "integer",
        },
        redriveDate = {
            type = "timestamp",
        },
    },
}

M.ListExecutionsOutput = {
    type = "structure",
    id = "ListExecutionsOutput",
    members = {
        executions = {
            type = "list",
            member = M.ExecutionListItem,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListMapRunsInput = {
    type = "structure",
    id = "ListMapRunsInput",
    members = {
        executionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.MapRunListItem = {
    type = "structure",
    id = "MapRunListItem",
    members = {
        executionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mapRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stateMachineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        stopDate = {
            type = "timestamp",
        },
    },
}

M.ListMapRunsOutput = {
    type = "structure",
    id = "ListMapRunsOutput",
    members = {
        mapRuns = {
            type = "list",
            member = M.MapRunListItem,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListStateMachineAliasesInput = {
    type = "structure",
    id = "ListStateMachineAliasesInput",
    members = {
        stateMachineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.StateMachineAliasListItem = {
    type = "structure",
    id = "StateMachineAliasListItem",
    members = {
        stateMachineAliasArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListStateMachineAliasesOutput = {
    type = "structure",
    id = "ListStateMachineAliasesOutput",
    members = {
        stateMachineAliases = {
            type = "list",
            member = M.StateMachineAliasListItem,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListStateMachinesInput = {
    type = "structure",
    id = "ListStateMachinesInput",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StateMachineListItem = {
    type = "structure",
    id = "StateMachineListItem",
    members = {
        stateMachineArn = {
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
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListStateMachinesOutput = {
    type = "structure",
    id = "ListStateMachinesOutput",
    members = {
        stateMachines = {
            type = "list",
            member = M.StateMachineListItem,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListStateMachineVersionsInput = {
    type = "structure",
    id = "ListStateMachineVersionsInput",
    members = {
        stateMachineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.StateMachineVersionListItem = {
    type = "structure",
    id = "StateMachineVersionListItem",
    members = {
        stateMachineVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListStateMachineVersionsOutput = {
    type = "structure",
    id = "ListStateMachineVersionsOutput",
    members = {
        stateMachineVersions = {
            type = "list",
            member = M.StateMachineVersionListItem,
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
            type = "list",
            member = M.Tag,
        },
    },
}

M.PublishStateMachineVersionInput = {
    type = "structure",
    id = "PublishStateMachineVersionInput",
    members = {
        stateMachineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        revisionId = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.PublishStateMachineVersionOutput = {
    type = "structure",
    id = "PublishStateMachineVersionOutput",
    members = {
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        stateMachineVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecutionLimitExceeded = {
    type = "structure",
    id = "ExecutionLimitExceeded",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ExecutionNotRedrivable = {
    type = "structure",
    id = "ExecutionNotRedrivable",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RedriveExecutionInput = {
    type = "structure",
    id = "RedriveExecutionInput",
    members = {
        executionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.RedriveExecutionOutput = {
    type = "structure",
    id = "RedriveExecutionOutput",
    members = {
        redriveDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.SendTaskFailureInput = {
    type = "structure",
    id = "SendTaskFailureInput",
    members = {
        taskToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
    },
}

M.SendTaskFailureOutput = {
    type = "structure",
    id = "SendTaskFailureOutput",
}

M.TaskDoesNotExist = {
    type = "structure",
    id = "TaskDoesNotExist",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TaskTimedOut = {
    type = "structure",
    id = "TaskTimedOut",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SendTaskHeartbeatInput = {
    type = "structure",
    id = "SendTaskHeartbeatInput",
    members = {
        taskToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SendTaskHeartbeatOutput = {
    type = "structure",
    id = "SendTaskHeartbeatOutput",
}

M.InvalidOutput = {
    type = "structure",
    id = "InvalidOutput",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SendTaskSuccessInput = {
    type = "structure",
    id = "SendTaskSuccessInput",
    members = {
        taskToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        output = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SendTaskSuccessOutput = {
    type = "structure",
    id = "SendTaskSuccessOutput",
}

M.ExecutionAlreadyExists = {
    type = "structure",
    id = "ExecutionAlreadyExists",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidExecutionInput = {
    type = "structure",
    id = "InvalidExecutionInput",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartExecutionInput = {
    type = "structure",
    id = "StartExecutionInput",
    members = {
        stateMachineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        input = {
            type = "string",
        },
        traceHeader = {
            type = "string",
        },
    },
}

M.StartExecutionOutput = {
    type = "structure",
    id = "StartExecutionOutput",
    members = {
        executionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.StartSyncExecutionInput = {
    type = "structure",
    id = "StartSyncExecutionInput",
    members = {
        stateMachineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        input = {
            type = "string",
        },
        traceHeader = {
            type = "string",
        },
        includedData = {
            type = "string",
        },
    },
}

M.BillingDetails = {
    type = "structure",
    id = "BillingDetails",
    members = {
        billedMemoryUsedInMB = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        billedDurationInMilliseconds = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.SyncExecutionStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
}

M.StartSyncExecutionOutput = {
    type = "structure",
    id = "StartSyncExecutionOutput",
    members = {
        executionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        stateMachineArn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        startDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        stopDate = {
            type = "timestamp",
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
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
        input = {
            type = "string",
        },
        inputDetails = M.CloudWatchEventsExecutionDataDetails,
        output = {
            type = "string",
        },
        outputDetails = M.CloudWatchEventsExecutionDataDetails,
        traceHeader = {
            type = "string",
        },
        billingDetails = M.BillingDetails,
    },
}

M.StopExecutionInput = {
    type = "structure",
    id = "StopExecutionInput",
    members = {
        executionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
    },
}

M.StopExecutionOutput = {
    type = "structure",
    id = "StopExecutionOutput",
    members = {
        stopDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
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

M.InspectionLevel = {
    INFO = "INFO",
    DEBUG = "DEBUG",
    TRACE = "TRACE",
}

M.MockErrorOutput = {
    type = "structure",
    id = "MockErrorOutput",
    members = {
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
    },
}

M.MockResponseValidationMode = {
    STRICT = "STRICT",
    PRESENT = "PRESENT",
    NONE = "NONE",
}

M.MockInput = {
    type = "structure",
    id = "MockInput",
    members = {
        result = {
            type = "string",
        },
        errorOutput = M.MockErrorOutput,
        fieldValidationMode = {
            type = "string",
        },
    },
}

M.TestStateConfiguration = {
    type = "structure",
    id = "TestStateConfiguration",
    members = {
        retrierRetryCount = {
            type = "integer",
        },
        errorCausedByState = {
            type = "string",
        },
        mapIterationFailureCount = {
            type = "integer",
        },
        mapItemReaderData = {
            type = "string",
        },
    },
}

M.TestStateInput = {
    type = "structure",
    id = "TestStateInput",
    members = {
        definition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
        },
        input = {
            type = "string",
        },
        inspectionLevel = {
            type = "string",
        },
        revealSecrets = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        variables = {
            type = "string",
        },
        stateName = {
            type = "string",
        },
        mock = M.MockInput,
        context = {
            type = "string",
        },
        stateConfiguration = M.TestStateConfiguration,
    },
}

M.InspectionErrorDetails = {
    type = "structure",
    id = "InspectionErrorDetails",
    members = {
        catchIndex = {
            type = "integer",
        },
        retryIndex = {
            type = "integer",
        },
        retryBackoffIntervalSeconds = {
            type = "integer",
        },
    },
}

M.InspectionDataRequest = {
    type = "structure",
    id = "InspectionDataRequest",
    members = {
        protocol = {
            type = "string",
        },
        method = {
            type = "string",
        },
        url = {
            type = "string",
        },
        headers = {
            type = "string",
        },
        body = {
            type = "string",
        },
    },
}

M.InspectionDataResponse = {
    type = "structure",
    id = "InspectionDataResponse",
    members = {
        protocol = {
            type = "string",
        },
        statusCode = {
            type = "string",
        },
        statusMessage = {
            type = "string",
        },
        headers = {
            type = "string",
        },
        body = {
            type = "string",
        },
    },
}

M.InspectionData = {
    type = "structure",
    id = "InspectionData",
    members = {
        input = {
            type = "string",
        },
        afterArguments = {
            type = "string",
        },
        afterInputPath = {
            type = "string",
        },
        afterParameters = {
            type = "string",
        },
        result = {
            type = "string",
        },
        afterResultSelector = {
            type = "string",
        },
        afterResultPath = {
            type = "string",
        },
        request = M.InspectionDataRequest,
        response = M.InspectionDataResponse,
        variables = {
            type = "string",
        },
        errorDetails = M.InspectionErrorDetails,
        afterItemsPath = {
            type = "string",
        },
        afterItemSelector = {
            type = "string",
        },
        afterItemBatcher = {
            type = "string",
        },
        afterItemsPointer = {
            type = "string",
        },
        toleratedFailureCount = {
            type = "integer",
        },
        toleratedFailurePercentage = {
            type = "float",
        },
        maxConcurrency = {
            type = "integer",
        },
    },
}

M.TestExecutionStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    RETRIABLE = "RETRIABLE",
    CAUGHT_ERROR = "CAUGHT_ERROR",
}

M.TestStateOutput = {
    type = "structure",
    id = "TestStateOutput",
    members = {
        output = {
            type = "string",
        },
        error = {
            type = "string",
        },
        cause = {
            type = "string",
        },
        inspectionData = M.InspectionData,
        nextState = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateMapRunInput = {
    type = "structure",
    id = "UpdateMapRunInput",
    members = {
        mapRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxConcurrency = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        toleratedFailurePercentage = {
            type = "float",
            traits = {
                default = nil,
            },
        },
        toleratedFailureCount = {
            type = "long",
            traits = {
                default = nil,
            },
        },
    },
}

M.UpdateMapRunOutput = {
    type = "structure",
    id = "UpdateMapRunOutput",
}

M.MissingRequiredParameter = {
    type = "structure",
    id = "MissingRequiredParameter",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateStateMachineInput = {
    type = "structure",
    id = "UpdateStateMachineInput",
    members = {
        stateMachineArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        definition = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        loggingConfiguration = M.LoggingConfiguration,
        tracingConfiguration = M.TracingConfiguration,
        publish = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        versionDescription = {
            type = "string",
        },
        encryptionConfiguration = M.EncryptionConfiguration,
    },
}

M.UpdateStateMachineOutput = {
    type = "structure",
    id = "UpdateStateMachineOutput",
    members = {
        updateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        revisionId = {
            type = "string",
        },
        stateMachineVersionArn = {
            type = "string",
        },
    },
}

M.UpdateStateMachineAliasInput = {
    type = "structure",
    id = "UpdateStateMachineAliasInput",
    members = {
        stateMachineAliasArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        routingConfiguration = {
            type = "list",
            member = M.RoutingConfigurationListItem,
        },
    },
}

M.UpdateStateMachineAliasOutput = {
    type = "structure",
    id = "UpdateStateMachineAliasOutput",
    members = {
        updateDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidateStateMachineDefinitionSeverity = {
    ERROR = "ERROR",
    WARNING = "WARNING",
}

M.ValidateStateMachineDefinitionInput = {
    type = "structure",
    id = "ValidateStateMachineDefinitionInput",
    members = {
        definition = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
        severity = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.ValidateStateMachineDefinitionDiagnostic = {
    type = "structure",
    id = "ValidateStateMachineDefinitionDiagnostic",
    members = {
        severity = {
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
        location = {
            type = "string",
        },
    },
}

M.ValidateStateMachineDefinitionResultCode = {
    OK = "OK",
    FAIL = "FAIL",
}

M.ValidateStateMachineDefinitionOutput = {
    type = "structure",
    id = "ValidateStateMachineDefinitionOutput",
    members = {
        result = {
            type = "string",
            traits = {
                required = true,
            },
        },
        diagnostics = {
            type = "list",
            member = M.ValidateStateMachineDefinitionDiagnostic,
            traits = {
                required = true,
            },
        },
        truncated = {
            type = "boolean",
        },
    },
}

return M
