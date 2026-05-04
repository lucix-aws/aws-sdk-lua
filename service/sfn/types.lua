local M = {}

M.ActivityAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ActivityDoesNotExist = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ActivityFailedEventDetails = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ActivityListItem = {
    type = "structure",
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
    members = {
        truncated = {
            type = "boolean",
        },
    },
}

M.ActivityScheduledEventDetails = {
    type = "structure",
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
        inputDetails = {
            type = "structure",
        },
        timeoutInSeconds = {
            type = "number",
        },
        heartbeatInSeconds = {
            type = "number",
        },
    },
}

M.ActivityScheduleFailedEventDetails = {
    type = "structure",
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
    members = {
        workerName = {
            type = "string",
        },
    },
}

M.ActivitySucceededEventDetails = {
    type = "structure",
    members = {
        output = {
            type = "string",
        },
        outputDetails = {
            type = "structure",
        },
    },
}

M.ActivityTimedOutEventDetails = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssignedVariablesDetails = {
    type = "structure",
    members = {
        truncated = {
            type = "boolean",
        },
    },
}

M.EncryptionType = {
    AWS_OWNED_KEY = "AWS_OWNED_KEY",
    CUSTOMER_MANAGED_KMS_KEY = "CUSTOMER_MANAGED_KMS_KEY",
}

M.EncryptionConfiguration = {
    type = "structure",
    members = {
        kmsKeyId = {
            type = "string",
        },
        kmsDataKeyReusePeriodSeconds = {
            type = "number",
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
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        encryptionConfiguration = {
            type = "structure",
        },
    },
}

M.CreateActivityOutput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidName = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsAccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.KmsThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TooManyTags = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CloudWatchLogsLogGroup = {
    type = "structure",
    members = {
        logGroupArn = {
            type = "string",
        },
    },
}

M.LogDestination = {
    type = "structure",
    members = {
        cloudWatchLogsLogGroup = {
            type = "structure",
        },
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
    members = {
        level = {
            type = "string",
        },
        includeExecutionData = {
            type = "boolean",
        },
        destinations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TracingConfiguration = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
        },
    },
}

M.StateMachineType = {
    STANDARD = "STANDARD",
    EXPRESS = "EXPRESS",
}

M.CreateStateMachineInput = {
    type = "structure",
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
        loggingConfiguration = {
            type = "structure",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        tracingConfiguration = {
            type = "structure",
        },
        publish = {
            type = "boolean",
        },
        versionDescription = {
            type = "string",
        },
        encryptionConfiguration = {
            type = "structure",
        },
    },
}

M.CreateStateMachineOutput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidDefinition = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidLoggingConfiguration = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidTracingConfiguration = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StateMachineAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StateMachineDeleting = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StateMachineLimitExceeded = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StateMachineTypeNotSupported = {
    type = "structure",
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
    members = {
        stateMachineVersionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        weight = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateStateMachineAliasInput = {
    type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateStateMachineAliasOutput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteActivityInput = {
    type = "structure",
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
}

M.DeleteStateMachineInput = {
    type = "structure",
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
}

M.DeleteStateMachineAliasInput = {
    type = "structure",
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
}

M.DeleteStateMachineVersionInput = {
    type = "structure",
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
}

M.DescribeActivityInput = {
    type = "structure",
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
        encryptionConfiguration = {
            type = "structure",
        },
    },
}

M.IncludedData = {
    ALL_DATA = "ALL_DATA",
    METADATA_ONLY = "METADATA_ONLY",
}

M.DescribeExecutionInput = {
    type = "structure",
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
    members = {
        included = {
            type = "boolean",
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
        inputDetails = {
            type = "structure",
        },
        output = {
            type = "string",
        },
        outputDetails = {
            type = "structure",
        },
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
            type = "number",
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
    members = {
        pending = {
            type = "number",
            traits = {
                required = true,
            },
        },
        running = {
            type = "number",
            traits = {
                required = true,
            },
        },
        succeeded = {
            type = "number",
            traits = {
                required = true,
            },
        },
        failed = {
            type = "number",
            traits = {
                required = true,
            },
        },
        timedOut = {
            type = "number",
            traits = {
                required = true,
            },
        },
        aborted = {
            type = "number",
            traits = {
                required = true,
            },
        },
        total = {
            type = "number",
            traits = {
                required = true,
            },
        },
        resultsWritten = {
            type = "number",
            traits = {
                required = true,
            },
        },
        failuresNotRedrivable = {
            type = "number",
        },
        pendingRedrive = {
            type = "number",
        },
    },
}

M.MapRunItemCounts = {
    type = "structure",
    members = {
        pending = {
            type = "number",
            traits = {
                required = true,
            },
        },
        running = {
            type = "number",
            traits = {
                required = true,
            },
        },
        succeeded = {
            type = "number",
            traits = {
                required = true,
            },
        },
        failed = {
            type = "number",
            traits = {
                required = true,
            },
        },
        timedOut = {
            type = "number",
            traits = {
                required = true,
            },
        },
        aborted = {
            type = "number",
            traits = {
                required = true,
            },
        },
        total = {
            type = "number",
            traits = {
                required = true,
            },
        },
        resultsWritten = {
            type = "number",
            traits = {
                required = true,
            },
        },
        failuresNotRedrivable = {
            type = "number",
        },
        pendingRedrive = {
            type = "number",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        toleratedFailurePercentage = {
            type = "number",
            traits = {
                required = true,
            },
        },
        toleratedFailureCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        itemCounts = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        executionCounts = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        redriveCount = {
            type = "number",
        },
        redriveDate = {
            type = "timestamp",
        },
    },
}

M.DescribeStateMachineInput = {
    type = "structure",
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
        loggingConfiguration = {
            type = "structure",
        },
        tracingConfiguration = {
            type = "structure",
        },
        label = {
            type = "string",
        },
        revisionId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        encryptionConfiguration = {
            type = "structure",
        },
        variableReferences = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.StateMachineDoesNotExist = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescribeStateMachineAliasInput = {
    type = "structure",
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
            member_type = "structure",
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
        loggingConfiguration = {
            type = "structure",
        },
        tracingConfiguration = {
            type = "structure",
        },
        mapRunArn = {
            type = "string",
        },
        label = {
            type = "string",
        },
        revisionId = {
            type = "string",
        },
        encryptionConfiguration = {
            type = "structure",
        },
        variableReferences = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.GetActivityTaskInput = {
    type = "structure",
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
    members = {
        executionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        reverseOrder = {
            type = "boolean",
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
    members = {
        redriveCount = {
            type = "number",
        },
    },
}

M.ExecutionStartedEventDetails = {
    type = "structure",
    members = {
        input = {
            type = "string",
        },
        inputDetails = {
            type = "structure",
        },
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
    members = {
        output = {
            type = "string",
        },
        outputDetails = {
            type = "structure",
        },
    },
}

M.ExecutionTimedOutEventDetails = {
    type = "structure",
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
    members = {
        roleArn = {
            type = "string",
        },
    },
}

M.LambdaFunctionScheduledEventDetails = {
    type = "structure",
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
        inputDetails = {
            type = "structure",
        },
        timeoutInSeconds = {
            type = "number",
        },
        taskCredentials = {
            type = "structure",
        },
    },
}

M.LambdaFunctionScheduleFailedEventDetails = {
    type = "structure",
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
    members = {
        output = {
            type = "string",
        },
        outputDetails = {
            type = "structure",
        },
    },
}

M.LambdaFunctionTimedOutEventDetails = {
    type = "structure",
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
    members = {
        name = {
            type = "string",
        },
        index = {
            type = "number",
        },
    },
}

M.MapRunFailedEventDetails = {
    type = "structure",
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
    members = {
        mapRunArn = {
            type = "string",
        },
        redriveCount = {
            type = "number",
        },
    },
}

M.MapRunStartedEventDetails = {
    type = "structure",
    members = {
        mapRunArn = {
            type = "string",
        },
    },
}

M.MapStateStartedEventDetails = {
    type = "structure",
    members = {
        length = {
            type = "number",
        },
    },
}

M.StateEnteredEventDetails = {
    type = "structure",
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
        inputDetails = {
            type = "structure",
        },
    },
}

M.StateExitedEventDetails = {
    type = "structure",
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
        outputDetails = {
            type = "structure",
        },
        assignedVariables = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        assignedVariablesDetails = {
            type = "structure",
        },
    },
}

M.TaskFailedEventDetails = {
    type = "structure",
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
            type = "number",
        },
        heartbeatInSeconds = {
            type = "number",
        },
        taskCredentials = {
            type = "structure",
        },
    },
}

M.TaskStartedEventDetails = {
    type = "structure",
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
        outputDetails = {
            type = "structure",
        },
    },
}

M.TaskSucceededEventDetails = {
    type = "structure",
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
        outputDetails = {
            type = "structure",
        },
    },
}

M.TaskTimedOutEventDetails = {
    type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
        previousEventId = {
            type = "number",
        },
        activityFailedEventDetails = {
            type = "structure",
        },
        activityScheduleFailedEventDetails = {
            type = "structure",
        },
        activityScheduledEventDetails = {
            type = "structure",
        },
        activityStartedEventDetails = {
            type = "structure",
        },
        activitySucceededEventDetails = {
            type = "structure",
        },
        activityTimedOutEventDetails = {
            type = "structure",
        },
        taskFailedEventDetails = {
            type = "structure",
        },
        taskScheduledEventDetails = {
            type = "structure",
        },
        taskStartFailedEventDetails = {
            type = "structure",
        },
        taskStartedEventDetails = {
            type = "structure",
        },
        taskSubmitFailedEventDetails = {
            type = "structure",
        },
        taskSubmittedEventDetails = {
            type = "structure",
        },
        taskSucceededEventDetails = {
            type = "structure",
        },
        taskTimedOutEventDetails = {
            type = "structure",
        },
        executionFailedEventDetails = {
            type = "structure",
        },
        executionStartedEventDetails = {
            type = "structure",
        },
        executionSucceededEventDetails = {
            type = "structure",
        },
        executionAbortedEventDetails = {
            type = "structure",
        },
        executionTimedOutEventDetails = {
            type = "structure",
        },
        executionRedrivenEventDetails = {
            type = "structure",
        },
        mapStateStartedEventDetails = {
            type = "structure",
        },
        mapIterationStartedEventDetails = {
            type = "structure",
        },
        mapIterationSucceededEventDetails = {
            type = "structure",
        },
        mapIterationFailedEventDetails = {
            type = "structure",
        },
        mapIterationAbortedEventDetails = {
            type = "structure",
        },
        lambdaFunctionFailedEventDetails = {
            type = "structure",
        },
        lambdaFunctionScheduleFailedEventDetails = {
            type = "structure",
        },
        lambdaFunctionScheduledEventDetails = {
            type = "structure",
        },
        lambdaFunctionStartFailedEventDetails = {
            type = "structure",
        },
        lambdaFunctionSucceededEventDetails = {
            type = "structure",
        },
        lambdaFunctionTimedOutEventDetails = {
            type = "structure",
        },
        stateEnteredEventDetails = {
            type = "structure",
        },
        stateExitedEventDetails = {
            type = "structure",
        },
        mapRunStartedEventDetails = {
            type = "structure",
        },
        mapRunFailedEventDetails = {
            type = "structure",
        },
        mapRunRedrivenEventDetails = {
            type = "structure",
        },
        evaluationFailedEventDetails = {
            type = "structure",
        },
    },
}

M.GetExecutionHistoryOutput = {
    type = "structure",
    members = {
        events = {
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

M.InvalidToken = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListActivitiesInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListActivitiesOutput = {
    type = "structure",
    members = {
        activities = {
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

M.ExecutionRedriveFilter = {
    REDRIVEN = "REDRIVEN",
    NOT_REDRIVEN = "NOT_REDRIVEN",
}

M.ListExecutionsInput = {
    type = "structure",
    members = {
        stateMachineArn = {
            type = "string",
        },
        statusFilter = {
            type = "string",
        },
        maxResults = {
            type = "number",
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
            type = "number",
        },
        stateMachineVersionArn = {
            type = "string",
        },
        stateMachineAliasArn = {
            type = "string",
        },
        redriveCount = {
            type = "number",
        },
        redriveDate = {
            type = "timestamp",
        },
    },
}

M.ListExecutionsOutput = {
    type = "structure",
    members = {
        executions = {
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

M.ListMapRunsInput = {
    type = "structure",
    members = {
        executionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.MapRunListItem = {
    type = "structure",
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
    members = {
        mapRuns = {
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

M.ListStateMachineAliasesInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.StateMachineAliasListItem = {
    type = "structure",
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
    members = {
        stateMachineAliases = {
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

M.ListStateMachinesInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StateMachineListItem = {
    type = "structure",
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
    members = {
        stateMachines = {
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

M.ListStateMachineVersionsInput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.StateMachineVersionListItem = {
    type = "structure",
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
    members = {
        stateMachineVersions = {
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
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PublishStateMachineVersionInput = {
    type = "structure",
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
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ExecutionNotRedrivable = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RedriveExecutionInput = {
    type = "structure",
    members = {
        executionArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.RedriveExecutionOutput = {
    type = "structure",
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
}

M.TaskDoesNotExist = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.TaskTimedOut = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SendTaskHeartbeatInput = {
    type = "structure",
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
}

M.InvalidOutput = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SendTaskSuccessInput = {
    type = "structure",
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
}

M.ExecutionAlreadyExists = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidExecutionInput = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.StartExecutionInput = {
    type = "structure",
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
    members = {
        billedMemoryUsedInMB = {
            type = "number",
        },
        billedDurationInMilliseconds = {
            type = "number",
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
        inputDetails = {
            type = "structure",
        },
        output = {
            type = "string",
        },
        outputDetails = {
            type = "structure",
        },
        traceHeader = {
            type = "string",
        },
        billingDetails = {
            type = "structure",
        },
    },
}

M.StopExecutionInput = {
    type = "structure",
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
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.InspectionLevel = {
    INFO = "INFO",
    DEBUG = "DEBUG",
    TRACE = "TRACE",
}

M.MockErrorOutput = {
    type = "structure",
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
    members = {
        result = {
            type = "string",
        },
        errorOutput = {
            type = "structure",
        },
        fieldValidationMode = {
            type = "string",
        },
    },
}

M.TestStateConfiguration = {
    type = "structure",
    members = {
        retrierRetryCount = {
            type = "number",
        },
        errorCausedByState = {
            type = "string",
        },
        mapIterationFailureCount = {
            type = "number",
        },
        mapItemReaderData = {
            type = "string",
        },
    },
}

M.TestStateInput = {
    type = "structure",
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
        },
        variables = {
            type = "string",
        },
        stateName = {
            type = "string",
        },
        mock = {
            type = "structure",
        },
        context = {
            type = "string",
        },
        stateConfiguration = {
            type = "structure",
        },
    },
}

M.InspectionErrorDetails = {
    type = "structure",
    members = {
        catchIndex = {
            type = "number",
        },
        retryIndex = {
            type = "number",
        },
        retryBackoffIntervalSeconds = {
            type = "number",
        },
    },
}

M.InspectionDataRequest = {
    type = "structure",
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
        request = {
            type = "structure",
        },
        response = {
            type = "structure",
        },
        variables = {
            type = "string",
        },
        errorDetails = {
            type = "structure",
        },
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
            type = "number",
        },
        toleratedFailurePercentage = {
            type = "number",
        },
        maxConcurrency = {
            type = "number",
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
        inspectionData = {
            type = "structure",
        },
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
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateMapRunInput = {
    type = "structure",
    members = {
        mapRunArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxConcurrency = {
            type = "number",
        },
        toleratedFailurePercentage = {
            type = "number",
        },
        toleratedFailureCount = {
            type = "number",
        },
    },
}

M.UpdateMapRunOutput = {
    type = "structure",
}

M.MissingRequiredParameter = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UpdateStateMachineInput = {
    type = "structure",
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
        loggingConfiguration = {
            type = "structure",
        },
        tracingConfiguration = {
            type = "structure",
        },
        publish = {
            type = "boolean",
        },
        versionDescription = {
            type = "string",
        },
        encryptionConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateStateMachineOutput = {
    type = "structure",
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
            member_type = "structure",
        },
    },
}

M.UpdateStateMachineAliasOutput = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.ValidateStateMachineDefinitionDiagnostic = {
    type = "structure",
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
    members = {
        result = {
            type = "string",
            traits = {
                required = true,
            },
        },
        diagnostics = {
            type = "list",
            member_type = "structure",
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
