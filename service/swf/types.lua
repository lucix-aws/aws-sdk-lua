local M = {}

M.ActivityTaskCanceledEventAttributes = {
    type = "structure",
    members = {
        details = {
            type = "string",
        },
        scheduledEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        latestCancelRequestedEventId = {
            type = "number",
        },
    },
}

M.ActivityTaskCancelRequestedEventAttributes = {
    type = "structure",
    members = {
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        activityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActivityTaskCompletedEventAttributes = {
    type = "structure",
    members = {
        result = {
            type = "string",
        },
        scheduledEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ActivityTaskFailedEventAttributes = {
    type = "structure",
    members = {
        reason = {
            type = "string",
        },
        details = {
            type = "string",
        },
        scheduledEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ActivityType = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TaskList = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActivityTaskScheduledEventAttributes = {
    type = "structure",
    members = {
        activityType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        activityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        input = {
            type = "string",
        },
        control = {
            type = "string",
        },
        scheduleToStartTimeout = {
            type = "string",
        },
        scheduleToCloseTimeout = {
            type = "string",
        },
        startToCloseTimeout = {
            type = "string",
        },
        taskList = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        taskPriority = {
            type = "string",
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        heartbeatTimeout = {
            type = "string",
        },
    },
}

M.ActivityTaskStartedEventAttributes = {
    type = "structure",
    members = {
        identity = {
            type = "string",
        },
        scheduledEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ActivityTaskTimeoutType = {
    START_TO_CLOSE = "START_TO_CLOSE",
    SCHEDULE_TO_START = "SCHEDULE_TO_START",
    SCHEDULE_TO_CLOSE = "SCHEDULE_TO_CLOSE",
    HEARTBEAT = "HEARTBEAT",
}

M.ActivityTaskTimedOutEventAttributes = {
    type = "structure",
    members = {
        timeoutType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scheduledEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        details = {
            type = "string",
        },
    },
}

M.ActivityTypeConfiguration = {
    type = "structure",
    members = {
        defaultTaskStartToCloseTimeout = {
            type = "string",
        },
        defaultTaskHeartbeatTimeout = {
            type = "string",
        },
        defaultTaskList = {
            type = "structure",
        },
        defaultTaskPriority = {
            type = "string",
        },
        defaultTaskScheduleToStartTimeout = {
            type = "string",
        },
        defaultTaskScheduleToCloseTimeout = {
            type = "string",
        },
    },
}

M.RegistrationStatus = {
    REGISTERED = "REGISTERED",
    DEPRECATED = "DEPRECATED",
}

M.ActivityTypeInfo = {
    type = "structure",
    members = {
        activityType = {
            type = "structure",
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
        description = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        deprecationDate = {
            type = "timestamp",
        },
    },
}

M.CancelTimerDecisionAttributes = {
    type = "structure",
    members = {
        timerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelTimerFailedCause = {
    TIMER_ID_UNKNOWN = "TIMER_ID_UNKNOWN",
    OPERATION_NOT_PERMITTED = "OPERATION_NOT_PERMITTED",
}

M.CancelTimerFailedEventAttributes = {
    type = "structure",
    members = {
        timerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelWorkflowExecutionDecisionAttributes = {
    type = "structure",
    members = {
        details = {
            type = "string",
        },
    },
}

M.CancelWorkflowExecutionFailedCause = {
    UNHANDLED_DECISION = "UNHANDLED_DECISION",
    OPERATION_NOT_PERMITTED = "OPERATION_NOT_PERMITTED",
}

M.CancelWorkflowExecutionFailedEventAttributes = {
    type = "structure",
    members = {
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ChildPolicy = {
    TERMINATE = "TERMINATE",
    REQUEST_CANCEL = "REQUEST_CANCEL",
    ABANDON = "ABANDON",
}

M.WorkflowExecution = {
    type = "structure",
    members = {
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkflowType = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ChildWorkflowExecutionCanceledEventAttributes = {
    type = "structure",
    members = {
        workflowExecution = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        workflowType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        details = {
            type = "string",
        },
        initiatedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ChildWorkflowExecutionCompletedEventAttributes = {
    type = "structure",
    members = {
        workflowExecution = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        workflowType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        result = {
            type = "string",
        },
        initiatedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ChildWorkflowExecutionFailedEventAttributes = {
    type = "structure",
    members = {
        workflowExecution = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        workflowType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
        },
        details = {
            type = "string",
        },
        initiatedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ChildWorkflowExecutionStartedEventAttributes = {
    type = "structure",
    members = {
        workflowExecution = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        workflowType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        initiatedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ChildWorkflowExecutionTerminatedEventAttributes = {
    type = "structure",
    members = {
        workflowExecution = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        workflowType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        initiatedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkflowExecutionTimeoutType = {
    START_TO_CLOSE = "START_TO_CLOSE",
}

M.ChildWorkflowExecutionTimedOutEventAttributes = {
    type = "structure",
    members = {
        workflowExecution = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        workflowType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        timeoutType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        initiatedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.CloseStatus = {
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
    CANCELED = "CANCELED",
    TERMINATED = "TERMINATED",
    CONTINUED_AS_NEW = "CONTINUED_AS_NEW",
    TIMED_OUT = "TIMED_OUT",
}

M.CloseStatusFilter = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CompleteWorkflowExecutionDecisionAttributes = {
    type = "structure",
    members = {
        result = {
            type = "string",
        },
    },
}

M.CompleteWorkflowExecutionFailedCause = {
    UNHANDLED_DECISION = "UNHANDLED_DECISION",
    OPERATION_NOT_PERMITTED = "OPERATION_NOT_PERMITTED",
}

M.CompleteWorkflowExecutionFailedEventAttributes = {
    type = "structure",
    members = {
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ContinueAsNewWorkflowExecutionDecisionAttributes = {
    type = "structure",
    members = {
        input = {
            type = "string",
        },
        executionStartToCloseTimeout = {
            type = "string",
        },
        taskList = {
            type = "structure",
        },
        taskPriority = {
            type = "string",
        },
        taskStartToCloseTimeout = {
            type = "string",
        },
        childPolicy = {
            type = "string",
        },
        tagList = {
            type = "list",
            member_type = "string",
        },
        workflowTypeVersion = {
            type = "string",
        },
        lambdaRole = {
            type = "string",
        },
    },
}

M.ContinueAsNewWorkflowExecutionFailedCause = {
    UNHANDLED_DECISION = "UNHANDLED_DECISION",
    WORKFLOW_TYPE_DEPRECATED = "WORKFLOW_TYPE_DEPRECATED",
    WORKFLOW_TYPE_DOES_NOT_EXIST = "WORKFLOW_TYPE_DOES_NOT_EXIST",
    DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED = "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED",
    DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED = "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED",
    DEFAULT_TASK_LIST_UNDEFINED = "DEFAULT_TASK_LIST_UNDEFINED",
    DEFAULT_CHILD_POLICY_UNDEFINED = "DEFAULT_CHILD_POLICY_UNDEFINED",
    CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED = "CONTINUE_AS_NEW_WORKFLOW_EXECUTION_RATE_EXCEEDED",
    OPERATION_NOT_PERMITTED = "OPERATION_NOT_PERMITTED",
}

M.ContinueAsNewWorkflowExecutionFailedEventAttributes = {
    type = "structure",
    members = {
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecutionTimeFilter = {
    type = "structure",
    members = {
        oldestDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        latestDate = {
            type = "timestamp",
        },
    },
}

M.WorkflowExecutionFilter = {
    type = "structure",
    members = {
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagFilter = {
    type = "structure",
    members = {
        tag = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkflowTypeFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
        },
    },
}

M.CountClosedWorkflowExecutionsInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTimeFilter = {
            type = "structure",
        },
        closeTimeFilter = {
            type = "structure",
        },
        executionFilter = {
            type = "structure",
        },
        typeFilter = {
            type = "structure",
        },
        tagFilter = {
            type = "structure",
        },
        closeStatusFilter = {
            type = "structure",
        },
    },
}

M.CountClosedWorkflowExecutionsOutput = {
    type = "structure",
    members = {
        count = {
            type = "number",
            traits = {
                required = true,
            },
        },
        truncated = {
            type = "boolean",
        },
    },
}

M.OperationNotPermittedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnknownResourceFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CountOpenWorkflowExecutionsInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTimeFilter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        typeFilter = {
            type = "structure",
        },
        tagFilter = {
            type = "structure",
        },
        executionFilter = {
            type = "structure",
        },
    },
}

M.CountOpenWorkflowExecutionsOutput = {
    type = "structure",
    members = {
        count = {
            type = "number",
            traits = {
                required = true,
            },
        },
        truncated = {
            type = "boolean",
        },
    },
}

M.CountPendingActivityTasksInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskList = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CountPendingActivityTasksOutput = {
    type = "structure",
    members = {
        count = {
            type = "number",
            traits = {
                required = true,
            },
        },
        truncated = {
            type = "boolean",
        },
    },
}

M.CountPendingDecisionTasksInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskList = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CountPendingDecisionTasksOutput = {
    type = "structure",
    members = {
        count = {
            type = "number",
            traits = {
                required = true,
            },
        },
        truncated = {
            type = "boolean",
        },
    },
}

M.DecisionType = {
    ScheduleActivityTask = "ScheduleActivityTask",
    RequestCancelActivityTask = "RequestCancelActivityTask",
    CompleteWorkflowExecution = "CompleteWorkflowExecution",
    FailWorkflowExecution = "FailWorkflowExecution",
    CancelWorkflowExecution = "CancelWorkflowExecution",
    ContinueAsNewWorkflowExecution = "ContinueAsNewWorkflowExecution",
    RecordMarker = "RecordMarker",
    StartTimer = "StartTimer",
    CancelTimer = "CancelTimer",
    SignalExternalWorkflowExecution = "SignalExternalWorkflowExecution",
    RequestCancelExternalWorkflowExecution = "RequestCancelExternalWorkflowExecution",
    StartChildWorkflowExecution = "StartChildWorkflowExecution",
    ScheduleLambdaFunction = "ScheduleLambdaFunction",
}

M.FailWorkflowExecutionDecisionAttributes = {
    type = "structure",
    members = {
        reason = {
            type = "string",
        },
        details = {
            type = "string",
        },
    },
}

M.RecordMarkerDecisionAttributes = {
    type = "structure",
    members = {
        markerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        details = {
            type = "string",
        },
    },
}

M.RequestCancelActivityTaskDecisionAttributes = {
    type = "structure",
    members = {
        activityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RequestCancelExternalWorkflowExecutionDecisionAttributes = {
    type = "structure",
    members = {
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runId = {
            type = "string",
        },
        control = {
            type = "string",
        },
    },
}

M.ScheduleActivityTaskDecisionAttributes = {
    type = "structure",
    members = {
        activityType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        activityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        control = {
            type = "string",
        },
        input = {
            type = "string",
        },
        scheduleToCloseTimeout = {
            type = "string",
        },
        taskList = {
            type = "structure",
        },
        taskPriority = {
            type = "string",
        },
        scheduleToStartTimeout = {
            type = "string",
        },
        startToCloseTimeout = {
            type = "string",
        },
        heartbeatTimeout = {
            type = "string",
        },
    },
}

M.ScheduleLambdaFunctionDecisionAttributes = {
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
            traits = {
                required = true,
            },
        },
        control = {
            type = "string",
        },
        input = {
            type = "string",
        },
        startToCloseTimeout = {
            type = "string",
        },
    },
}

M.SignalExternalWorkflowExecutionDecisionAttributes = {
    type = "structure",
    members = {
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runId = {
            type = "string",
        },
        signalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        input = {
            type = "string",
        },
        control = {
            type = "string",
        },
    },
}

M.StartChildWorkflowExecutionDecisionAttributes = {
    type = "structure",
    members = {
        workflowType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        control = {
            type = "string",
        },
        input = {
            type = "string",
        },
        executionStartToCloseTimeout = {
            type = "string",
        },
        taskList = {
            type = "structure",
        },
        taskPriority = {
            type = "string",
        },
        taskStartToCloseTimeout = {
            type = "string",
        },
        childPolicy = {
            type = "string",
        },
        tagList = {
            type = "list",
            member_type = "string",
        },
        lambdaRole = {
            type = "string",
        },
    },
}

M.StartTimerDecisionAttributes = {
    type = "structure",
    members = {
        timerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        control = {
            type = "string",
        },
        startToFireTimeout = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Decision = {
    type = "structure",
    members = {
        decisionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scheduleActivityTaskDecisionAttributes = {
            type = "structure",
        },
        requestCancelActivityTaskDecisionAttributes = {
            type = "structure",
        },
        completeWorkflowExecutionDecisionAttributes = {
            type = "structure",
        },
        failWorkflowExecutionDecisionAttributes = {
            type = "structure",
        },
        cancelWorkflowExecutionDecisionAttributes = {
            type = "structure",
        },
        continueAsNewWorkflowExecutionDecisionAttributes = {
            type = "structure",
        },
        recordMarkerDecisionAttributes = {
            type = "structure",
        },
        startTimerDecisionAttributes = {
            type = "structure",
        },
        cancelTimerDecisionAttributes = {
            type = "structure",
        },
        signalExternalWorkflowExecutionDecisionAttributes = {
            type = "structure",
        },
        requestCancelExternalWorkflowExecutionDecisionAttributes = {
            type = "structure",
        },
        startChildWorkflowExecutionDecisionAttributes = {
            type = "structure",
        },
        scheduleLambdaFunctionDecisionAttributes = {
            type = "structure",
        },
    },
}

M.DecisionTaskCompletedEventAttributes = {
    type = "structure",
    members = {
        executionContext = {
            type = "string",
        },
        scheduledEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        taskList = {
            type = "structure",
        },
        taskListScheduleToStartTimeout = {
            type = "string",
        },
    },
}

M.DecisionTaskScheduledEventAttributes = {
    type = "structure",
    members = {
        taskList = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        taskPriority = {
            type = "string",
        },
        startToCloseTimeout = {
            type = "string",
        },
        scheduleToStartTimeout = {
            type = "string",
        },
    },
}

M.DecisionTaskStartedEventAttributes = {
    type = "structure",
    members = {
        identity = {
            type = "string",
        },
        scheduledEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DecisionTaskTimeoutType = {
    START_TO_CLOSE = "START_TO_CLOSE",
    SCHEDULE_TO_START = "SCHEDULE_TO_START",
}

M.DecisionTaskTimedOutEventAttributes = {
    type = "structure",
    members = {
        timeoutType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scheduledEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DefaultUndefinedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteActivityTypeInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        activityType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteActivityTypeOutput = {
    type = "structure",
}

M.TypeNotDeprecatedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteWorkflowTypeInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteWorkflowTypeOutput = {
    type = "structure",
}

M.DeprecateActivityTypeInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        activityType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeprecateActivityTypeOutput = {
    type = "structure",
}

M.TypeDeprecatedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeprecateDomainInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeprecateDomainOutput = {
    type = "structure",
}

M.DomainDeprecatedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeprecateWorkflowTypeInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeprecateWorkflowTypeOutput = {
    type = "structure",
}

M.DescribeActivityTypeInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        activityType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeActivityTypeOutput = {
    type = "structure",
    members = {
        typeInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeDomainInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DomainConfiguration = {
    type = "structure",
    members = {
        workflowExecutionRetentionPeriodInDays = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DomainInfo = {
    type = "structure",
    members = {
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
        description = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.DescribeDomainOutput = {
    type = "structure",
    members = {
        domainInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeWorkflowExecutionInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        execution = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkflowExecutionConfiguration = {
    type = "structure",
    members = {
        taskStartToCloseTimeout = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionStartToCloseTimeout = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskList = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        taskPriority = {
            type = "string",
        },
        childPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lambdaRole = {
            type = "string",
        },
    },
}

M.ExecutionStatus = {
    OPEN = "OPEN",
    CLOSED = "CLOSED",
}

M.WorkflowExecutionInfo = {
    type = "structure",
    members = {
        execution = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        workflowType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        startTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        closeTimestamp = {
            type = "timestamp",
        },
        executionStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        closeStatus = {
            type = "string",
        },
        parent = {
            type = "structure",
        },
        tagList = {
            type = "list",
            member_type = "string",
        },
        cancelRequested = {
            type = "boolean",
        },
    },
}

M.WorkflowExecutionOpenCounts = {
    type = "structure",
    members = {
        openActivityTasks = {
            type = "number",
            traits = {
                required = true,
            },
        },
        openDecisionTasks = {
            type = "number",
            traits = {
                required = true,
            },
        },
        openTimers = {
            type = "number",
            traits = {
                required = true,
            },
        },
        openChildWorkflowExecutions = {
            type = "number",
            traits = {
                required = true,
            },
        },
        openLambdaFunctions = {
            type = "number",
        },
    },
}

M.DescribeWorkflowExecutionOutput = {
    type = "structure",
    members = {
        executionInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        executionConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        openCounts = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        latestActivityTaskTimestamp = {
            type = "timestamp",
        },
        latestExecutionContext = {
            type = "string",
        },
    },
}

M.DescribeWorkflowTypeInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkflowTypeConfiguration = {
    type = "structure",
    members = {
        defaultTaskStartToCloseTimeout = {
            type = "string",
        },
        defaultExecutionStartToCloseTimeout = {
            type = "string",
        },
        defaultTaskList = {
            type = "structure",
        },
        defaultTaskPriority = {
            type = "string",
        },
        defaultChildPolicy = {
            type = "string",
        },
        defaultLambdaRole = {
            type = "string",
        },
    },
}

M.WorkflowTypeInfo = {
    type = "structure",
    members = {
        workflowType = {
            type = "structure",
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
        description = {
            type = "string",
        },
        creationDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        deprecationDate = {
            type = "timestamp",
        },
    },
}

M.DescribeWorkflowTypeOutput = {
    type = "structure",
    members = {
        typeInfo = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        configuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DomainAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.EventType = {
    WorkflowExecutionStarted = "WorkflowExecutionStarted",
    WorkflowExecutionCancelRequested = "WorkflowExecutionCancelRequested",
    WorkflowExecutionCompleted = "WorkflowExecutionCompleted",
    CompleteWorkflowExecutionFailed = "CompleteWorkflowExecutionFailed",
    WorkflowExecutionFailed = "WorkflowExecutionFailed",
    FailWorkflowExecutionFailed = "FailWorkflowExecutionFailed",
    WorkflowExecutionTimedOut = "WorkflowExecutionTimedOut",
    WorkflowExecutionCanceled = "WorkflowExecutionCanceled",
    CancelWorkflowExecutionFailed = "CancelWorkflowExecutionFailed",
    WorkflowExecutionContinuedAsNew = "WorkflowExecutionContinuedAsNew",
    ContinueAsNewWorkflowExecutionFailed = "ContinueAsNewWorkflowExecutionFailed",
    WorkflowExecutionTerminated = "WorkflowExecutionTerminated",
    DecisionTaskScheduled = "DecisionTaskScheduled",
    DecisionTaskStarted = "DecisionTaskStarted",
    DecisionTaskCompleted = "DecisionTaskCompleted",
    DecisionTaskTimedOut = "DecisionTaskTimedOut",
    ActivityTaskScheduled = "ActivityTaskScheduled",
    ScheduleActivityTaskFailed = "ScheduleActivityTaskFailed",
    ActivityTaskStarted = "ActivityTaskStarted",
    ActivityTaskCompleted = "ActivityTaskCompleted",
    ActivityTaskFailed = "ActivityTaskFailed",
    ActivityTaskTimedOut = "ActivityTaskTimedOut",
    ActivityTaskCanceled = "ActivityTaskCanceled",
    ActivityTaskCancelRequested = "ActivityTaskCancelRequested",
    RequestCancelActivityTaskFailed = "RequestCancelActivityTaskFailed",
    WorkflowExecutionSignaled = "WorkflowExecutionSignaled",
    MarkerRecorded = "MarkerRecorded",
    RecordMarkerFailed = "RecordMarkerFailed",
    TimerStarted = "TimerStarted",
    StartTimerFailed = "StartTimerFailed",
    TimerFired = "TimerFired",
    TimerCanceled = "TimerCanceled",
    CancelTimerFailed = "CancelTimerFailed",
    StartChildWorkflowExecutionInitiated = "StartChildWorkflowExecutionInitiated",
    StartChildWorkflowExecutionFailed = "StartChildWorkflowExecutionFailed",
    ChildWorkflowExecutionStarted = "ChildWorkflowExecutionStarted",
    ChildWorkflowExecutionCompleted = "ChildWorkflowExecutionCompleted",
    ChildWorkflowExecutionFailed = "ChildWorkflowExecutionFailed",
    ChildWorkflowExecutionTimedOut = "ChildWorkflowExecutionTimedOut",
    ChildWorkflowExecutionCanceled = "ChildWorkflowExecutionCanceled",
    ChildWorkflowExecutionTerminated = "ChildWorkflowExecutionTerminated",
    SignalExternalWorkflowExecutionInitiated = "SignalExternalWorkflowExecutionInitiated",
    SignalExternalWorkflowExecutionFailed = "SignalExternalWorkflowExecutionFailed",
    ExternalWorkflowExecutionSignaled = "ExternalWorkflowExecutionSignaled",
    RequestCancelExternalWorkflowExecutionInitiated = "RequestCancelExternalWorkflowExecutionInitiated",
    RequestCancelExternalWorkflowExecutionFailed = "RequestCancelExternalWorkflowExecutionFailed",
    ExternalWorkflowExecutionCancelRequested = "ExternalWorkflowExecutionCancelRequested",
    LambdaFunctionScheduled = "LambdaFunctionScheduled",
    LambdaFunctionStarted = "LambdaFunctionStarted",
    LambdaFunctionCompleted = "LambdaFunctionCompleted",
    LambdaFunctionFailed = "LambdaFunctionFailed",
    LambdaFunctionTimedOut = "LambdaFunctionTimedOut",
    ScheduleLambdaFunctionFailed = "ScheduleLambdaFunctionFailed",
    StartLambdaFunctionFailed = "StartLambdaFunctionFailed",
}

M.ExternalWorkflowExecutionCancelRequestedEventAttributes = {
    type = "structure",
    members = {
        workflowExecution = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        initiatedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ExternalWorkflowExecutionSignaledEventAttributes = {
    type = "structure",
    members = {
        workflowExecution = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        initiatedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.FailWorkflowExecutionFailedCause = {
    UNHANDLED_DECISION = "UNHANDLED_DECISION",
    OPERATION_NOT_PERMITTED = "OPERATION_NOT_PERMITTED",
}

M.FailWorkflowExecutionFailedEventAttributes = {
    type = "structure",
    members = {
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.GetWorkflowExecutionHistoryInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        execution = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        nextPageToken = {
            type = "string",
        },
        maximumPageSize = {
            type = "number",
        },
        reverseOrder = {
            type = "boolean",
        },
    },
}

M.LambdaFunctionCompletedEventAttributes = {
    type = "structure",
    members = {
        scheduledEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        result = {
            type = "string",
        },
    },
}

M.LambdaFunctionFailedEventAttributes = {
    type = "structure",
    members = {
        scheduledEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
        },
        details = {
            type = "string",
        },
    },
}

M.LambdaFunctionScheduledEventAttributes = {
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
            traits = {
                required = true,
            },
        },
        control = {
            type = "string",
        },
        input = {
            type = "string",
        },
        startToCloseTimeout = {
            type = "string",
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.LambdaFunctionStartedEventAttributes = {
    type = "structure",
    members = {
        scheduledEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.LambdaFunctionTimeoutType = {
    START_TO_CLOSE = "START_TO_CLOSE",
}

M.LambdaFunctionTimedOutEventAttributes = {
    type = "structure",
    members = {
        scheduledEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        timeoutType = {
            type = "string",
        },
    },
}

M.MarkerRecordedEventAttributes = {
    type = "structure",
    members = {
        markerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        details = {
            type = "string",
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RecordMarkerFailedCause = {
    OPERATION_NOT_PERMITTED = "OPERATION_NOT_PERMITTED",
}

M.RecordMarkerFailedEventAttributes = {
    type = "structure",
    members = {
        markerName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RequestCancelActivityTaskFailedCause = {
    ACTIVITY_ID_UNKNOWN = "ACTIVITY_ID_UNKNOWN",
    OPERATION_NOT_PERMITTED = "OPERATION_NOT_PERMITTED",
}

M.RequestCancelActivityTaskFailedEventAttributes = {
    type = "structure",
    members = {
        activityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RequestCancelExternalWorkflowExecutionFailedCause = {
    UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION = "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION",
    REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED = "REQUEST_CANCEL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED",
    OPERATION_NOT_PERMITTED = "OPERATION_NOT_PERMITTED",
}

M.RequestCancelExternalWorkflowExecutionFailedEventAttributes = {
    type = "structure",
    members = {
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runId = {
            type = "string",
        },
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        initiatedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        control = {
            type = "string",
        },
    },
}

M.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes = {
    type = "structure",
    members = {
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runId = {
            type = "string",
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        control = {
            type = "string",
        },
    },
}

M.ScheduleActivityTaskFailedCause = {
    ACTIVITY_TYPE_DEPRECATED = "ACTIVITY_TYPE_DEPRECATED",
    ACTIVITY_TYPE_DOES_NOT_EXIST = "ACTIVITY_TYPE_DOES_NOT_EXIST",
    ACTIVITY_ID_ALREADY_IN_USE = "ACTIVITY_ID_ALREADY_IN_USE",
    OPEN_ACTIVITIES_LIMIT_EXCEEDED = "OPEN_ACTIVITIES_LIMIT_EXCEEDED",
    ACTIVITY_CREATION_RATE_EXCEEDED = "ACTIVITY_CREATION_RATE_EXCEEDED",
    DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED = "DEFAULT_SCHEDULE_TO_CLOSE_TIMEOUT_UNDEFINED",
    DEFAULT_TASK_LIST_UNDEFINED = "DEFAULT_TASK_LIST_UNDEFINED",
    DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED = "DEFAULT_SCHEDULE_TO_START_TIMEOUT_UNDEFINED",
    DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED = "DEFAULT_START_TO_CLOSE_TIMEOUT_UNDEFINED",
    DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED = "DEFAULT_HEARTBEAT_TIMEOUT_UNDEFINED",
    OPERATION_NOT_PERMITTED = "OPERATION_NOT_PERMITTED",
}

M.ScheduleActivityTaskFailedEventAttributes = {
    type = "structure",
    members = {
        activityType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        activityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ScheduleLambdaFunctionFailedCause = {
    ID_ALREADY_IN_USE = "ID_ALREADY_IN_USE",
    OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED = "OPEN_LAMBDA_FUNCTIONS_LIMIT_EXCEEDED",
    LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED = "LAMBDA_FUNCTION_CREATION_RATE_EXCEEDED",
    LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION = "LAMBDA_SERVICE_NOT_AVAILABLE_IN_REGION",
}

M.ScheduleLambdaFunctionFailedEventAttributes = {
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
            traits = {
                required = true,
            },
        },
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SignalExternalWorkflowExecutionFailedCause = {
    UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION = "UNKNOWN_EXTERNAL_WORKFLOW_EXECUTION",
    SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED = "SIGNAL_EXTERNAL_WORKFLOW_EXECUTION_RATE_EXCEEDED",
    OPERATION_NOT_PERMITTED = "OPERATION_NOT_PERMITTED",
}

M.SignalExternalWorkflowExecutionFailedEventAttributes = {
    type = "structure",
    members = {
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runId = {
            type = "string",
        },
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        initiatedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        control = {
            type = "string",
        },
    },
}

M.SignalExternalWorkflowExecutionInitiatedEventAttributes = {
    type = "structure",
    members = {
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runId = {
            type = "string",
        },
        signalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        input = {
            type = "string",
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        control = {
            type = "string",
        },
    },
}

M.StartChildWorkflowExecutionFailedCause = {
    WORKFLOW_TYPE_DOES_NOT_EXIST = "WORKFLOW_TYPE_DOES_NOT_EXIST",
    WORKFLOW_TYPE_DEPRECATED = "WORKFLOW_TYPE_DEPRECATED",
    OPEN_CHILDREN_LIMIT_EXCEEDED = "OPEN_CHILDREN_LIMIT_EXCEEDED",
    OPEN_WORKFLOWS_LIMIT_EXCEEDED = "OPEN_WORKFLOWS_LIMIT_EXCEEDED",
    CHILD_CREATION_RATE_EXCEEDED = "CHILD_CREATION_RATE_EXCEEDED",
    WORKFLOW_ALREADY_RUNNING = "WORKFLOW_ALREADY_RUNNING",
    DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED = "DEFAULT_EXECUTION_START_TO_CLOSE_TIMEOUT_UNDEFINED",
    DEFAULT_TASK_LIST_UNDEFINED = "DEFAULT_TASK_LIST_UNDEFINED",
    DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED = "DEFAULT_TASK_START_TO_CLOSE_TIMEOUT_UNDEFINED",
    DEFAULT_CHILD_POLICY_UNDEFINED = "DEFAULT_CHILD_POLICY_UNDEFINED",
    OPERATION_NOT_PERMITTED = "OPERATION_NOT_PERMITTED",
}

M.StartChildWorkflowExecutionFailedEventAttributes = {
    type = "structure",
    members = {
        workflowType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        initiatedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        control = {
            type = "string",
        },
    },
}

M.StartChildWorkflowExecutionInitiatedEventAttributes = {
    type = "structure",
    members = {
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        control = {
            type = "string",
        },
        input = {
            type = "string",
        },
        executionStartToCloseTimeout = {
            type = "string",
        },
        taskList = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        taskPriority = {
            type = "string",
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        childPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskStartToCloseTimeout = {
            type = "string",
        },
        tagList = {
            type = "list",
            member_type = "string",
        },
        lambdaRole = {
            type = "string",
        },
    },
}

M.StartLambdaFunctionFailedCause = {
    ASSUME_ROLE_FAILED = "ASSUME_ROLE_FAILED",
}

M.StartLambdaFunctionFailedEventAttributes = {
    type = "structure",
    members = {
        scheduledEventId = {
            type = "number",
        },
        cause = {
            type = "string",
        },
        message = {
            type = "string",
        },
    },
}

M.StartTimerFailedCause = {
    TIMER_ID_ALREADY_IN_USE = "TIMER_ID_ALREADY_IN_USE",
    OPEN_TIMERS_LIMIT_EXCEEDED = "OPEN_TIMERS_LIMIT_EXCEEDED",
    TIMER_CREATION_RATE_EXCEEDED = "TIMER_CREATION_RATE_EXCEEDED",
    OPERATION_NOT_PERMITTED = "OPERATION_NOT_PERMITTED",
}

M.StartTimerFailedEventAttributes = {
    type = "structure",
    members = {
        timerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TimerCanceledEventAttributes = {
    type = "structure",
    members = {
        timerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TimerFiredEventAttributes = {
    type = "structure",
    members = {
        timerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.TimerStartedEventAttributes = {
    type = "structure",
    members = {
        timerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        control = {
            type = "string",
        },
        startToFireTimeout = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkflowExecutionCanceledEventAttributes = {
    type = "structure",
    members = {
        details = {
            type = "string",
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkflowExecutionCancelRequestedCause = {
    CHILD_POLICY_APPLIED = "CHILD_POLICY_APPLIED",
}

M.WorkflowExecutionCancelRequestedEventAttributes = {
    type = "structure",
    members = {
        externalWorkflowExecution = {
            type = "structure",
        },
        externalInitiatedEventId = {
            type = "number",
        },
        cause = {
            type = "string",
        },
    },
}

M.WorkflowExecutionCompletedEventAttributes = {
    type = "structure",
    members = {
        result = {
            type = "string",
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkflowExecutionContinuedAsNewEventAttributes = {
    type = "structure",
    members = {
        input = {
            type = "string",
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        newExecutionRunId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        executionStartToCloseTimeout = {
            type = "string",
        },
        taskList = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        taskPriority = {
            type = "string",
        },
        taskStartToCloseTimeout = {
            type = "string",
        },
        childPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagList = {
            type = "list",
            member_type = "string",
        },
        workflowType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        lambdaRole = {
            type = "string",
        },
    },
}

M.WorkflowExecutionFailedEventAttributes = {
    type = "structure",
    members = {
        reason = {
            type = "string",
        },
        details = {
            type = "string",
        },
        decisionTaskCompletedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.WorkflowExecutionSignaledEventAttributes = {
    type = "structure",
    members = {
        signalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        input = {
            type = "string",
        },
        externalWorkflowExecution = {
            type = "structure",
        },
        externalInitiatedEventId = {
            type = "number",
        },
    },
}

M.WorkflowExecutionStartedEventAttributes = {
    type = "structure",
    members = {
        input = {
            type = "string",
        },
        executionStartToCloseTimeout = {
            type = "string",
        },
        taskStartToCloseTimeout = {
            type = "string",
        },
        childPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskList = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        taskPriority = {
            type = "string",
        },
        workflowType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tagList = {
            type = "list",
            member_type = "string",
        },
        continuedExecutionRunId = {
            type = "string",
        },
        parentWorkflowExecution = {
            type = "structure",
        },
        parentInitiatedEventId = {
            type = "number",
        },
        lambdaRole = {
            type = "string",
        },
    },
}

M.WorkflowExecutionTerminatedCause = {
    CHILD_POLICY_APPLIED = "CHILD_POLICY_APPLIED",
    EVENT_LIMIT_EXCEEDED = "EVENT_LIMIT_EXCEEDED",
    OPERATOR_INITIATED = "OPERATOR_INITIATED",
}

M.WorkflowExecutionTerminatedEventAttributes = {
    type = "structure",
    members = {
        reason = {
            type = "string",
        },
        details = {
            type = "string",
        },
        childPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        cause = {
            type = "string",
        },
    },
}

M.WorkflowExecutionTimedOutEventAttributes = {
    type = "structure",
    members = {
        timeoutType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        childPolicy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.HistoryEvent = {
    type = "structure",
    members = {
        eventTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        workflowExecutionStartedEventAttributes = {
            type = "structure",
        },
        workflowExecutionCompletedEventAttributes = {
            type = "structure",
        },
        completeWorkflowExecutionFailedEventAttributes = {
            type = "structure",
        },
        workflowExecutionFailedEventAttributes = {
            type = "structure",
        },
        failWorkflowExecutionFailedEventAttributes = {
            type = "structure",
        },
        workflowExecutionTimedOutEventAttributes = {
            type = "structure",
        },
        workflowExecutionCanceledEventAttributes = {
            type = "structure",
        },
        cancelWorkflowExecutionFailedEventAttributes = {
            type = "structure",
        },
        workflowExecutionContinuedAsNewEventAttributes = {
            type = "structure",
        },
        continueAsNewWorkflowExecutionFailedEventAttributes = {
            type = "structure",
        },
        workflowExecutionTerminatedEventAttributes = {
            type = "structure",
        },
        workflowExecutionCancelRequestedEventAttributes = {
            type = "structure",
        },
        decisionTaskScheduledEventAttributes = {
            type = "structure",
        },
        decisionTaskStartedEventAttributes = {
            type = "structure",
        },
        decisionTaskCompletedEventAttributes = {
            type = "structure",
        },
        decisionTaskTimedOutEventAttributes = {
            type = "structure",
        },
        activityTaskScheduledEventAttributes = {
            type = "structure",
        },
        activityTaskStartedEventAttributes = {
            type = "structure",
        },
        activityTaskCompletedEventAttributes = {
            type = "structure",
        },
        activityTaskFailedEventAttributes = {
            type = "structure",
        },
        activityTaskTimedOutEventAttributes = {
            type = "structure",
        },
        activityTaskCanceledEventAttributes = {
            type = "structure",
        },
        activityTaskCancelRequestedEventAttributes = {
            type = "structure",
        },
        workflowExecutionSignaledEventAttributes = {
            type = "structure",
        },
        markerRecordedEventAttributes = {
            type = "structure",
        },
        recordMarkerFailedEventAttributes = {
            type = "structure",
        },
        timerStartedEventAttributes = {
            type = "structure",
        },
        timerFiredEventAttributes = {
            type = "structure",
        },
        timerCanceledEventAttributes = {
            type = "structure",
        },
        startChildWorkflowExecutionInitiatedEventAttributes = {
            type = "structure",
        },
        childWorkflowExecutionStartedEventAttributes = {
            type = "structure",
        },
        childWorkflowExecutionCompletedEventAttributes = {
            type = "structure",
        },
        childWorkflowExecutionFailedEventAttributes = {
            type = "structure",
        },
        childWorkflowExecutionTimedOutEventAttributes = {
            type = "structure",
        },
        childWorkflowExecutionCanceledEventAttributes = {
            type = "structure",
        },
        childWorkflowExecutionTerminatedEventAttributes = {
            type = "structure",
        },
        signalExternalWorkflowExecutionInitiatedEventAttributes = {
            type = "structure",
        },
        externalWorkflowExecutionSignaledEventAttributes = {
            type = "structure",
        },
        signalExternalWorkflowExecutionFailedEventAttributes = {
            type = "structure",
        },
        externalWorkflowExecutionCancelRequestedEventAttributes = {
            type = "structure",
        },
        requestCancelExternalWorkflowExecutionInitiatedEventAttributes = {
            type = "structure",
        },
        requestCancelExternalWorkflowExecutionFailedEventAttributes = {
            type = "structure",
        },
        scheduleActivityTaskFailedEventAttributes = {
            type = "structure",
        },
        requestCancelActivityTaskFailedEventAttributes = {
            type = "structure",
        },
        startTimerFailedEventAttributes = {
            type = "structure",
        },
        cancelTimerFailedEventAttributes = {
            type = "structure",
        },
        startChildWorkflowExecutionFailedEventAttributes = {
            type = "structure",
        },
        lambdaFunctionScheduledEventAttributes = {
            type = "structure",
        },
        lambdaFunctionStartedEventAttributes = {
            type = "structure",
        },
        lambdaFunctionCompletedEventAttributes = {
            type = "structure",
        },
        lambdaFunctionFailedEventAttributes = {
            type = "structure",
        },
        lambdaFunctionTimedOutEventAttributes = {
            type = "structure",
        },
        scheduleLambdaFunctionFailedEventAttributes = {
            type = "structure",
        },
        startLambdaFunctionFailedEventAttributes = {
            type = "structure",
        },
    },
}

M.GetWorkflowExecutionHistoryOutput = {
    type = "structure",
    members = {
        events = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.LimitExceededFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListActivityTypesInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        registrationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextPageToken = {
            type = "string",
        },
        maximumPageSize = {
            type = "number",
        },
        reverseOrder = {
            type = "boolean",
        },
    },
}

M.ListActivityTypesOutput = {
    type = "structure",
    members = {
        typeInfos = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.ListClosedWorkflowExecutionsInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTimeFilter = {
            type = "structure",
        },
        closeTimeFilter = {
            type = "structure",
        },
        executionFilter = {
            type = "structure",
        },
        closeStatusFilter = {
            type = "structure",
        },
        typeFilter = {
            type = "structure",
        },
        tagFilter = {
            type = "structure",
        },
        nextPageToken = {
            type = "string",
        },
        maximumPageSize = {
            type = "number",
        },
        reverseOrder = {
            type = "boolean",
        },
    },
}

M.ListClosedWorkflowExecutionsOutput = {
    type = "structure",
    members = {
        executionInfos = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.ListDomainsInput = {
    type = "structure",
    members = {
        nextPageToken = {
            type = "string",
        },
        registrationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maximumPageSize = {
            type = "number",
        },
        reverseOrder = {
            type = "boolean",
        },
    },
}

M.ListDomainsOutput = {
    type = "structure",
    members = {
        domainInfos = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.ListOpenWorkflowExecutionsInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTimeFilter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        typeFilter = {
            type = "structure",
        },
        tagFilter = {
            type = "structure",
        },
        nextPageToken = {
            type = "string",
        },
        maximumPageSize = {
            type = "number",
        },
        reverseOrder = {
            type = "boolean",
        },
        executionFilter = {
            type = "structure",
        },
    },
}

M.ListOpenWorkflowExecutionsOutput = {
    type = "structure",
    members = {
        executionInfos = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextPageToken = {
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

M.ResourceTag = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
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

M.ListWorkflowTypesInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        registrationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextPageToken = {
            type = "string",
        },
        maximumPageSize = {
            type = "number",
        },
        reverseOrder = {
            type = "boolean",
        },
    },
}

M.ListWorkflowTypesOutput = {
    type = "structure",
    members = {
        typeInfos = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextPageToken = {
            type = "string",
        },
    },
}

M.PollForActivityTaskInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskList = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        identity = {
            type = "string",
        },
    },
}

M.PollForActivityTaskOutput = {
    type = "structure",
    members = {
        taskToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        activityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        workflowExecution = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        activityType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        input = {
            type = "string",
        },
    },
}

M.PollForDecisionTaskInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskList = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        identity = {
            type = "string",
        },
        nextPageToken = {
            type = "string",
        },
        maximumPageSize = {
            type = "number",
        },
        reverseOrder = {
            type = "boolean",
        },
        startAtPreviousStartedEvent = {
            type = "boolean",
        },
    },
}

M.PollForDecisionTaskOutput = {
    type = "structure",
    members = {
        taskToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "number",
            traits = {
                required = true,
            },
        },
        workflowExecution = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        workflowType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        events = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextPageToken = {
            type = "string",
        },
        previousStartedEventId = {
            type = "number",
        },
    },
}

M.RecordActivityTaskHeartbeatInput = {
    type = "structure",
    members = {
        taskToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        details = {
            type = "string",
        },
    },
}

M.RecordActivityTaskHeartbeatOutput = {
    type = "structure",
    members = {
        cancelRequested = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.RegisterActivityTypeInput = {
    type = "structure",
    members = {
        domain = {
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
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        defaultTaskStartToCloseTimeout = {
            type = "string",
        },
        defaultTaskHeartbeatTimeout = {
            type = "string",
        },
        defaultTaskList = {
            type = "structure",
        },
        defaultTaskPriority = {
            type = "string",
        },
        defaultTaskScheduleToStartTimeout = {
            type = "string",
        },
        defaultTaskScheduleToCloseTimeout = {
            type = "string",
        },
    },
}

M.RegisterActivityTypeOutput = {
    type = "structure",
}

M.TypeAlreadyExistsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RegisterDomainInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        workflowExecutionRetentionPeriodInDays = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RegisterDomainOutput = {
    type = "structure",
}

M.TooManyTagsFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RegisterWorkflowTypeInput = {
    type = "structure",
    members = {
        domain = {
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
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        defaultTaskStartToCloseTimeout = {
            type = "string",
        },
        defaultExecutionStartToCloseTimeout = {
            type = "string",
        },
        defaultTaskList = {
            type = "structure",
        },
        defaultTaskPriority = {
            type = "string",
        },
        defaultChildPolicy = {
            type = "string",
        },
        defaultLambdaRole = {
            type = "string",
        },
    },
}

M.RegisterWorkflowTypeOutput = {
    type = "structure",
}

M.RequestCancelWorkflowExecutionInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runId = {
            type = "string",
        },
    },
}

M.RequestCancelWorkflowExecutionOutput = {
    type = "structure",
}

M.RespondActivityTaskCanceledInput = {
    type = "structure",
    members = {
        taskToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        details = {
            type = "string",
        },
    },
}

M.RespondActivityTaskCanceledOutput = {
    type = "structure",
}

M.RespondActivityTaskCompletedInput = {
    type = "structure",
    members = {
        taskToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        result = {
            type = "string",
        },
    },
}

M.RespondActivityTaskCompletedOutput = {
    type = "structure",
}

M.RespondActivityTaskFailedInput = {
    type = "structure",
    members = {
        taskToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
        },
        details = {
            type = "string",
        },
    },
}

M.RespondActivityTaskFailedOutput = {
    type = "structure",
}

M.RespondDecisionTaskCompletedInput = {
    type = "structure",
    members = {
        taskToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decisions = {
            type = "list",
            member_type = "structure",
        },
        executionContext = {
            type = "string",
        },
        taskList = {
            type = "structure",
        },
        taskListScheduleToStartTimeout = {
            type = "string",
        },
    },
}

M.RespondDecisionTaskCompletedOutput = {
    type = "structure",
}

M.SignalWorkflowExecutionInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runId = {
            type = "string",
        },
        signalName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        input = {
            type = "string",
        },
    },
}

M.SignalWorkflowExecutionOutput = {
    type = "structure",
}

M.StartWorkflowExecutionInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        taskList = {
            type = "structure",
        },
        taskPriority = {
            type = "string",
        },
        input = {
            type = "string",
        },
        executionStartToCloseTimeout = {
            type = "string",
        },
        tagList = {
            type = "list",
            member_type = "string",
        },
        taskStartToCloseTimeout = {
            type = "string",
        },
        childPolicy = {
            type = "string",
        },
        lambdaRole = {
            type = "string",
        },
    },
}

M.StartWorkflowExecutionOutput = {
    type = "structure",
    members = {
        runId = {
            type = "string",
        },
    },
}

M.WorkflowExecutionAlreadyStartedFault = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
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

M.TerminateWorkflowExecutionInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        runId = {
            type = "string",
        },
        reason = {
            type = "string",
        },
        details = {
            type = "string",
        },
        childPolicy = {
            type = "string",
        },
    },
}

M.TerminateWorkflowExecutionOutput = {
    type = "structure",
}

M.UndeprecateActivityTypeInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        activityType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UndeprecateActivityTypeOutput = {
    type = "structure",
}

M.UndeprecateDomainInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UndeprecateDomainOutput = {
    type = "structure",
}

M.UndeprecateWorkflowTypeInput = {
    type = "structure",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowType = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UndeprecateWorkflowTypeOutput = {
    type = "structure",
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

return M
