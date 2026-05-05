local M = {}

M.EncryptionType = {
    AWS_OWNED_KEY = "AWS_OWNED_KEY",
    CUSTOMER_MANAGED_KMS_KEY = "CUSTOMER_MANAGED_KMS_KEY",
}

M.LogLevel = {
    ALL = "ALL",
    ERROR = "ERROR",
    FATAL = "FATAL",
    OFF = "OFF",
}

M.StateMachineType = {
    STANDARD = "STANDARD",
    EXPRESS = "EXPRESS",
}

M.ValidationExceptionReason = {
    API_DOES_NOT_SUPPORT_LABELED_ARNS = "API_DOES_NOT_SUPPORT_LABELED_ARNS",
    MISSING_REQUIRED_PARAMETER = "MISSING_REQUIRED_PARAMETER",
    CANNOT_UPDATE_COMPLETED_MAP_RUN = "CANNOT_UPDATE_COMPLETED_MAP_RUN",
    INVALID_ROUTING_CONFIGURATION = "INVALID_ROUTING_CONFIGURATION",
}

M.IncludedData = {
    ALL_DATA = "ALL_DATA",
    METADATA_ONLY = "METADATA_ONLY",
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

M.KmsKeyState = {
    DISABLED = "DISABLED",
    PENDING_DELETION = "PENDING_DELETION",
    PENDING_IMPORT = "PENDING_IMPORT",
    UNAVAILABLE = "UNAVAILABLE",
    CREATING = "CREATING",
}

M.MapRunStatus = {
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    ABORTED = "ABORTED",
}

M.StateMachineStatus = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
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

M.ExecutionRedriveFilter = {
    REDRIVEN = "REDRIVEN",
    NOT_REDRIVEN = "NOT_REDRIVEN",
}

M.SyncExecutionStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    TIMED_OUT = "TIMED_OUT",
}

M.InspectionLevel = {
    INFO = "INFO",
    DEBUG = "DEBUG",
    TRACE = "TRACE",
}

M.MockResponseValidationMode = {
    STRICT = "STRICT",
    PRESENT = "PRESENT",
    NONE = "NONE",
}

M.TestExecutionStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    RETRIABLE = "RETRIABLE",
    CAUGHT_ERROR = "CAUGHT_ERROR",
}

M.ValidateStateMachineDefinitionSeverity = {
    ERROR = "ERROR",
    WARNING = "WARNING",
}

M.ValidateStateMachineDefinitionResultCode = {
    OK = "OK",
    FAIL = "FAIL",
}

return M
