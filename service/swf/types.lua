local M = {}

M.ActivityTaskCanceledEventAttributes = {
    type = "structure",
    id = "ActivityTaskCanceledEventAttributes",
    members = {
        details = {
            type = "string",
        },
        scheduledEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        startedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        latestCancelRequestedEventId = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.ActivityTaskCancelRequestedEventAttributes = {
    type = "structure",
    id = "ActivityTaskCancelRequestedEventAttributes",
    members = {
        decisionTaskCompletedEventId = {
            type = "long",
            traits = {
                default = 0,
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
    id = "ActivityTaskCompletedEventAttributes",
    members = {
        result = {
            type = "string",
        },
        scheduledEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        startedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ActivityTaskFailedEventAttributes = {
    type = "structure",
    id = "ActivityTaskFailedEventAttributes",
    members = {
        reason = {
            type = "string",
        },
        details = {
            type = "string",
        },
        scheduledEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        startedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ActivityType = {
    type = "structure",
    id = "ActivityType",
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
    id = "TaskList",
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
    id = "ActivityTaskScheduledEventAttributes",
    members = {
        activityType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActivityType }),
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
        taskList = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaskList }),
        taskPriority = {
            type = "string",
        },
        decisionTaskCompletedEventId = {
            type = "long",
            traits = {
                default = 0,
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
    id = "ActivityTaskStartedEventAttributes",
    members = {
        identity = {
            type = "string",
        },
        scheduledEventId = {
            type = "long",
            traits = {
                default = 0,
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
    id = "ActivityTaskTimedOutEventAttributes",
    members = {
        timeoutType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scheduledEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        startedEventId = {
            type = "long",
            traits = {
                default = 0,
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
    id = "ActivityTypeConfiguration",
    members = {
        defaultTaskStartToCloseTimeout = {
            type = "string",
        },
        defaultTaskHeartbeatTimeout = {
            type = "string",
        },
        defaultTaskList = M.TaskList,
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
    id = "ActivityTypeInfo",
    members = {
        activityType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActivityType }),
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
    id = "CancelTimerDecisionAttributes",
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
    id = "CancelTimerFailedEventAttributes",
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
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.CancelWorkflowExecutionDecisionAttributes = {
    type = "structure",
    id = "CancelWorkflowExecutionDecisionAttributes",
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
    id = "CancelWorkflowExecutionFailedEventAttributes",
    members = {
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "long",
            traits = {
                default = 0,
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
    id = "WorkflowExecution",
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
    id = "WorkflowType",
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
    id = "ChildWorkflowExecutionCanceledEventAttributes",
    members = {
        workflowExecution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowExecution }),
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
        details = {
            type = "string",
        },
        initiatedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        startedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ChildWorkflowExecutionCompletedEventAttributes = {
    type = "structure",
    id = "ChildWorkflowExecutionCompletedEventAttributes",
    members = {
        workflowExecution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowExecution }),
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
        result = {
            type = "string",
        },
        initiatedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        startedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ChildWorkflowExecutionFailedEventAttributes = {
    type = "structure",
    id = "ChildWorkflowExecutionFailedEventAttributes",
    members = {
        workflowExecution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowExecution }),
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
        reason = {
            type = "string",
        },
        details = {
            type = "string",
        },
        initiatedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        startedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ChildWorkflowExecutionStartedEventAttributes = {
    type = "structure",
    id = "ChildWorkflowExecutionStartedEventAttributes",
    members = {
        workflowExecution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowExecution }),
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
        initiatedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ChildWorkflowExecutionTerminatedEventAttributes = {
    type = "structure",
    id = "ChildWorkflowExecutionTerminatedEventAttributes",
    members = {
        workflowExecution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowExecution }),
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
        initiatedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        startedEventId = {
            type = "long",
            traits = {
                default = 0,
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
    id = "ChildWorkflowExecutionTimedOutEventAttributes",
    members = {
        workflowExecution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowExecution }),
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
        timeoutType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        initiatedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        startedEventId = {
            type = "long",
            traits = {
                default = 0,
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
    id = "CloseStatusFilter",
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
    id = "CompleteWorkflowExecutionDecisionAttributes",
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
    id = "CompleteWorkflowExecutionFailedEventAttributes",
    members = {
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ContinueAsNewWorkflowExecutionDecisionAttributes = {
    type = "structure",
    id = "ContinueAsNewWorkflowExecutionDecisionAttributes",
    members = {
        input = {
            type = "string",
        },
        executionStartToCloseTimeout = {
            type = "string",
        },
        taskList = M.TaskList,
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
            member = { type = "string" },
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
    id = "ContinueAsNewWorkflowExecutionFailedEventAttributes",
    members = {
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ExecutionTimeFilter = {
    type = "structure",
    id = "ExecutionTimeFilter",
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
    id = "WorkflowExecutionFilter",
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
    id = "TagFilter",
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
    id = "WorkflowTypeFilter",
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
    id = "CountClosedWorkflowExecutionsInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTimeFilter = M.ExecutionTimeFilter,
        closeTimeFilter = M.ExecutionTimeFilter,
        executionFilter = M.WorkflowExecutionFilter,
        typeFilter = M.WorkflowTypeFilter,
        tagFilter = M.TagFilter,
        closeStatusFilter = M.CloseStatusFilter,
    },
}

M.CountClosedWorkflowExecutionsOutput = {
    type = "structure",
    id = "CountClosedWorkflowExecutionsOutput",
    members = {
        count = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        truncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.OperationNotPermittedFault = {
    type = "structure",
    id = "OperationNotPermittedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnknownResourceFault = {
    type = "structure",
    id = "UnknownResourceFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CountOpenWorkflowExecutionsInput = {
    type = "structure",
    id = "CountOpenWorkflowExecutionsInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTimeFilter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExecutionTimeFilter }),
        typeFilter = M.WorkflowTypeFilter,
        tagFilter = M.TagFilter,
        executionFilter = M.WorkflowExecutionFilter,
    },
}

M.CountOpenWorkflowExecutionsOutput = {
    type = "structure",
    id = "CountOpenWorkflowExecutionsOutput",
    members = {
        count = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        truncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CountPendingActivityTasksInput = {
    type = "structure",
    id = "CountPendingActivityTasksInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskList = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaskList }),
    },
}

M.CountPendingActivityTasksOutput = {
    type = "structure",
    id = "CountPendingActivityTasksOutput",
    members = {
        count = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        truncated = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.CountPendingDecisionTasksInput = {
    type = "structure",
    id = "CountPendingDecisionTasksInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskList = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaskList }),
    },
}

M.CountPendingDecisionTasksOutput = {
    type = "structure",
    id = "CountPendingDecisionTasksOutput",
    members = {
        count = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        truncated = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "FailWorkflowExecutionDecisionAttributes",
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
    id = "RecordMarkerDecisionAttributes",
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
    id = "RequestCancelActivityTaskDecisionAttributes",
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
    id = "RequestCancelExternalWorkflowExecutionDecisionAttributes",
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
    id = "ScheduleActivityTaskDecisionAttributes",
    members = {
        activityType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActivityType }),
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
        taskList = M.TaskList,
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
    id = "ScheduleLambdaFunctionDecisionAttributes",
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
    id = "SignalExternalWorkflowExecutionDecisionAttributes",
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
    id = "StartChildWorkflowExecutionDecisionAttributes",
    members = {
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
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
        taskList = M.TaskList,
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
            member = { type = "string" },
        },
        lambdaRole = {
            type = "string",
        },
    },
}

M.StartTimerDecisionAttributes = {
    type = "structure",
    id = "StartTimerDecisionAttributes",
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
    id = "Decision",
    members = {
        decisionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scheduleActivityTaskDecisionAttributes = M.ScheduleActivityTaskDecisionAttributes,
        requestCancelActivityTaskDecisionAttributes = M.RequestCancelActivityTaskDecisionAttributes,
        completeWorkflowExecutionDecisionAttributes = M.CompleteWorkflowExecutionDecisionAttributes,
        failWorkflowExecutionDecisionAttributes = M.FailWorkflowExecutionDecisionAttributes,
        cancelWorkflowExecutionDecisionAttributes = M.CancelWorkflowExecutionDecisionAttributes,
        continueAsNewWorkflowExecutionDecisionAttributes = M.ContinueAsNewWorkflowExecutionDecisionAttributes,
        recordMarkerDecisionAttributes = M.RecordMarkerDecisionAttributes,
        startTimerDecisionAttributes = M.StartTimerDecisionAttributes,
        cancelTimerDecisionAttributes = M.CancelTimerDecisionAttributes,
        signalExternalWorkflowExecutionDecisionAttributes = M.SignalExternalWorkflowExecutionDecisionAttributes,
        requestCancelExternalWorkflowExecutionDecisionAttributes = M.RequestCancelExternalWorkflowExecutionDecisionAttributes,
        startChildWorkflowExecutionDecisionAttributes = M.StartChildWorkflowExecutionDecisionAttributes,
        scheduleLambdaFunctionDecisionAttributes = M.ScheduleLambdaFunctionDecisionAttributes,
    },
}

M.DecisionTaskCompletedEventAttributes = {
    type = "structure",
    id = "DecisionTaskCompletedEventAttributes",
    members = {
        executionContext = {
            type = "string",
        },
        scheduledEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        startedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        taskList = M.TaskList,
        taskListScheduleToStartTimeout = {
            type = "string",
        },
    },
}

M.DecisionTaskScheduledEventAttributes = {
    type = "structure",
    id = "DecisionTaskScheduledEventAttributes",
    members = {
        taskList = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaskList }),
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
    id = "DecisionTaskStartedEventAttributes",
    members = {
        identity = {
            type = "string",
        },
        scheduledEventId = {
            type = "long",
            traits = {
                default = 0,
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
    id = "DecisionTaskTimedOutEventAttributes",
    members = {
        timeoutType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scheduledEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        startedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.DefaultUndefinedFault = {
    type = "structure",
    id = "DefaultUndefinedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteActivityTypeInput = {
    type = "structure",
    id = "DeleteActivityTypeInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        activityType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActivityType }),
    },
}

M.DeleteActivityTypeOutput = {
    type = "structure",
    id = "DeleteActivityTypeOutput",
}

M.TypeNotDeprecatedFault = {
    type = "structure",
    id = "TypeNotDeprecatedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteWorkflowTypeInput = {
    type = "structure",
    id = "DeleteWorkflowTypeInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
    },
}

M.DeleteWorkflowTypeOutput = {
    type = "structure",
    id = "DeleteWorkflowTypeOutput",
}

M.DeprecateActivityTypeInput = {
    type = "structure",
    id = "DeprecateActivityTypeInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        activityType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActivityType }),
    },
}

M.DeprecateActivityTypeOutput = {
    type = "structure",
    id = "DeprecateActivityTypeOutput",
}

M.TypeDeprecatedFault = {
    type = "structure",
    id = "TypeDeprecatedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeprecateDomainInput = {
    type = "structure",
    id = "DeprecateDomainInput",
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
    id = "DeprecateDomainOutput",
}

M.DomainDeprecatedFault = {
    type = "structure",
    id = "DomainDeprecatedFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeprecateWorkflowTypeInput = {
    type = "structure",
    id = "DeprecateWorkflowTypeInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
    },
}

M.DeprecateWorkflowTypeOutput = {
    type = "structure",
    id = "DeprecateWorkflowTypeOutput",
}

M.DescribeActivityTypeInput = {
    type = "structure",
    id = "DescribeActivityTypeInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        activityType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActivityType }),
    },
}

M.DescribeActivityTypeOutput = {
    type = "structure",
    id = "DescribeActivityTypeOutput",
    members = {
        typeInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActivityTypeInfo }),
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActivityTypeConfiguration }),
    },
}

M.DescribeDomainInput = {
    type = "structure",
    id = "DescribeDomainInput",
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
    id = "DomainConfiguration",
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
    id = "DomainInfo",
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
    id = "DescribeDomainOutput",
    members = {
        domainInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainInfo }),
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DomainConfiguration }),
    },
}

M.DescribeWorkflowExecutionInput = {
    type = "structure",
    id = "DescribeWorkflowExecutionInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        execution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowExecution }),
    },
}

M.WorkflowExecutionConfiguration = {
    type = "structure",
    id = "WorkflowExecutionConfiguration",
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
        taskList = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaskList }),
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
    id = "WorkflowExecutionInfo",
    members = {
        execution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowExecution }),
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
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
        parent = M.WorkflowExecution,
        tagList = {
            type = "list",
            member = { type = "string" },
        },
        cancelRequested = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.WorkflowExecutionOpenCounts = {
    type = "structure",
    id = "WorkflowExecutionOpenCounts",
    members = {
        openActivityTasks = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        openDecisionTasks = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        openTimers = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        openChildWorkflowExecutions = {
            type = "integer",
            traits = {
                default = 0,
                required = true,
            },
        },
        openLambdaFunctions = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
    },
}

M.DescribeWorkflowExecutionOutput = {
    type = "structure",
    id = "DescribeWorkflowExecutionOutput",
    members = {
        executionInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowExecutionInfo }),
        executionConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowExecutionConfiguration }),
        openCounts = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowExecutionOpenCounts }),
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
    id = "DescribeWorkflowTypeInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
    },
}

M.WorkflowTypeConfiguration = {
    type = "structure",
    id = "WorkflowTypeConfiguration",
    members = {
        defaultTaskStartToCloseTimeout = {
            type = "string",
        },
        defaultExecutionStartToCloseTimeout = {
            type = "string",
        },
        defaultTaskList = M.TaskList,
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
    id = "WorkflowTypeInfo",
    members = {
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
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
    id = "DescribeWorkflowTypeOutput",
    members = {
        typeInfo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowTypeInfo }),
        configuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowTypeConfiguration }),
    },
}

M.DomainAlreadyExistsFault = {
    type = "structure",
    id = "DomainAlreadyExistsFault",
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
    id = "ExternalWorkflowExecutionCancelRequestedEventAttributes",
    members = {
        workflowExecution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowExecution }),
        initiatedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.ExternalWorkflowExecutionSignaledEventAttributes = {
    type = "structure",
    id = "ExternalWorkflowExecutionSignaledEventAttributes",
    members = {
        workflowExecution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowExecution }),
        initiatedEventId = {
            type = "long",
            traits = {
                default = 0,
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
    id = "FailWorkflowExecutionFailedEventAttributes",
    members = {
        cause = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.GetWorkflowExecutionHistoryInput = {
    type = "structure",
    id = "GetWorkflowExecutionHistoryInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        execution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowExecution }),
        nextPageToken = {
            type = "string",
        },
        maximumPageSize = {
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
    },
}

M.LambdaFunctionCompletedEventAttributes = {
    type = "structure",
    id = "LambdaFunctionCompletedEventAttributes",
    members = {
        scheduledEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        startedEventId = {
            type = "long",
            traits = {
                default = 0,
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
    id = "LambdaFunctionFailedEventAttributes",
    members = {
        scheduledEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        startedEventId = {
            type = "long",
            traits = {
                default = 0,
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
    id = "LambdaFunctionScheduledEventAttributes",
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
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.LambdaFunctionStartedEventAttributes = {
    type = "structure",
    id = "LambdaFunctionStartedEventAttributes",
    members = {
        scheduledEventId = {
            type = "long",
            traits = {
                default = 0,
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
    id = "LambdaFunctionTimedOutEventAttributes",
    members = {
        scheduledEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        startedEventId = {
            type = "long",
            traits = {
                default = 0,
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
    id = "MarkerRecordedEventAttributes",
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
            type = "long",
            traits = {
                default = 0,
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
    id = "RecordMarkerFailedEventAttributes",
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
            type = "long",
            traits = {
                default = 0,
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
    id = "RequestCancelActivityTaskFailedEventAttributes",
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
            type = "long",
            traits = {
                default = 0,
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
    id = "RequestCancelExternalWorkflowExecutionFailedEventAttributes",
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
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "long",
            traits = {
                default = 0,
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
    id = "RequestCancelExternalWorkflowExecutionInitiatedEventAttributes",
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
            type = "long",
            traits = {
                default = 0,
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
    id = "ScheduleActivityTaskFailedEventAttributes",
    members = {
        activityType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActivityType }),
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
            type = "long",
            traits = {
                default = 0,
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
    id = "ScheduleLambdaFunctionFailedEventAttributes",
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
            type = "long",
            traits = {
                default = 0,
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
    id = "SignalExternalWorkflowExecutionFailedEventAttributes",
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
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "long",
            traits = {
                default = 0,
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
    id = "SignalExternalWorkflowExecutionInitiatedEventAttributes",
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
            type = "long",
            traits = {
                default = 0,
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
    id = "StartChildWorkflowExecutionFailedEventAttributes",
    members = {
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
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
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "long",
            traits = {
                default = 0,
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
    id = "StartChildWorkflowExecutionInitiatedEventAttributes",
    members = {
        workflowId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
        control = {
            type = "string",
        },
        input = {
            type = "string",
        },
        executionStartToCloseTimeout = {
            type = "string",
        },
        taskList = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaskList }),
        taskPriority = {
            type = "string",
        },
        decisionTaskCompletedEventId = {
            type = "long",
            traits = {
                default = 0,
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
            member = { type = "string" },
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
    id = "StartLambdaFunctionFailedEventAttributes",
    members = {
        scheduledEventId = {
            type = "long",
            traits = {
                default = 0,
            },
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
    id = "StartTimerFailedEventAttributes",
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
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.TimerCanceledEventAttributes = {
    type = "structure",
    id = "TimerCanceledEventAttributes",
    members = {
        timerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        decisionTaskCompletedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.TimerFiredEventAttributes = {
    type = "structure",
    id = "TimerFiredEventAttributes",
    members = {
        timerId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.TimerStartedEventAttributes = {
    type = "structure",
    id = "TimerStartedEventAttributes",
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
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.WorkflowExecutionCanceledEventAttributes = {
    type = "structure",
    id = "WorkflowExecutionCanceledEventAttributes",
    members = {
        details = {
            type = "string",
        },
        decisionTaskCompletedEventId = {
            type = "long",
            traits = {
                default = 0,
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
    id = "WorkflowExecutionCancelRequestedEventAttributes",
    members = {
        externalWorkflowExecution = M.WorkflowExecution,
        externalInitiatedEventId = {
            type = "long",
            traits = {
                default = 0,
            },
        },
        cause = {
            type = "string",
        },
    },
}

M.WorkflowExecutionCompletedEventAttributes = {
    type = "structure",
    id = "WorkflowExecutionCompletedEventAttributes",
    members = {
        result = {
            type = "string",
        },
        decisionTaskCompletedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.WorkflowExecutionContinuedAsNewEventAttributes = {
    type = "structure",
    id = "WorkflowExecutionContinuedAsNewEventAttributes",
    members = {
        input = {
            type = "string",
        },
        decisionTaskCompletedEventId = {
            type = "long",
            traits = {
                default = 0,
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
        taskList = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaskList }),
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
            member = { type = "string" },
        },
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
        lambdaRole = {
            type = "string",
        },
    },
}

M.WorkflowExecutionFailedEventAttributes = {
    type = "structure",
    id = "WorkflowExecutionFailedEventAttributes",
    members = {
        reason = {
            type = "string",
        },
        details = {
            type = "string",
        },
        decisionTaskCompletedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
    },
}

M.WorkflowExecutionSignaledEventAttributes = {
    type = "structure",
    id = "WorkflowExecutionSignaledEventAttributes",
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
        externalWorkflowExecution = M.WorkflowExecution,
        externalInitiatedEventId = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.WorkflowExecutionStartedEventAttributes = {
    type = "structure",
    id = "WorkflowExecutionStartedEventAttributes",
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
        taskList = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaskList }),
        taskPriority = {
            type = "string",
        },
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
        tagList = {
            type = "list",
            member = { type = "string" },
        },
        continuedExecutionRunId = {
            type = "string",
        },
        parentWorkflowExecution = M.WorkflowExecution,
        parentInitiatedEventId = {
            type = "long",
            traits = {
                default = 0,
            },
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
    id = "WorkflowExecutionTerminatedEventAttributes",
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
    id = "WorkflowExecutionTimedOutEventAttributes",
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
    id = "HistoryEvent",
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
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        workflowExecutionStartedEventAttributes = M.WorkflowExecutionStartedEventAttributes,
        workflowExecutionCompletedEventAttributes = M.WorkflowExecutionCompletedEventAttributes,
        completeWorkflowExecutionFailedEventAttributes = M.CompleteWorkflowExecutionFailedEventAttributes,
        workflowExecutionFailedEventAttributes = M.WorkflowExecutionFailedEventAttributes,
        failWorkflowExecutionFailedEventAttributes = M.FailWorkflowExecutionFailedEventAttributes,
        workflowExecutionTimedOutEventAttributes = M.WorkflowExecutionTimedOutEventAttributes,
        workflowExecutionCanceledEventAttributes = M.WorkflowExecutionCanceledEventAttributes,
        cancelWorkflowExecutionFailedEventAttributes = M.CancelWorkflowExecutionFailedEventAttributes,
        workflowExecutionContinuedAsNewEventAttributes = M.WorkflowExecutionContinuedAsNewEventAttributes,
        continueAsNewWorkflowExecutionFailedEventAttributes = M.ContinueAsNewWorkflowExecutionFailedEventAttributes,
        workflowExecutionTerminatedEventAttributes = M.WorkflowExecutionTerminatedEventAttributes,
        workflowExecutionCancelRequestedEventAttributes = M.WorkflowExecutionCancelRequestedEventAttributes,
        decisionTaskScheduledEventAttributes = M.DecisionTaskScheduledEventAttributes,
        decisionTaskStartedEventAttributes = M.DecisionTaskStartedEventAttributes,
        decisionTaskCompletedEventAttributes = M.DecisionTaskCompletedEventAttributes,
        decisionTaskTimedOutEventAttributes = M.DecisionTaskTimedOutEventAttributes,
        activityTaskScheduledEventAttributes = M.ActivityTaskScheduledEventAttributes,
        activityTaskStartedEventAttributes = M.ActivityTaskStartedEventAttributes,
        activityTaskCompletedEventAttributes = M.ActivityTaskCompletedEventAttributes,
        activityTaskFailedEventAttributes = M.ActivityTaskFailedEventAttributes,
        activityTaskTimedOutEventAttributes = M.ActivityTaskTimedOutEventAttributes,
        activityTaskCanceledEventAttributes = M.ActivityTaskCanceledEventAttributes,
        activityTaskCancelRequestedEventAttributes = M.ActivityTaskCancelRequestedEventAttributes,
        workflowExecutionSignaledEventAttributes = M.WorkflowExecutionSignaledEventAttributes,
        markerRecordedEventAttributes = M.MarkerRecordedEventAttributes,
        recordMarkerFailedEventAttributes = M.RecordMarkerFailedEventAttributes,
        timerStartedEventAttributes = M.TimerStartedEventAttributes,
        timerFiredEventAttributes = M.TimerFiredEventAttributes,
        timerCanceledEventAttributes = M.TimerCanceledEventAttributes,
        startChildWorkflowExecutionInitiatedEventAttributes = M.StartChildWorkflowExecutionInitiatedEventAttributes,
        childWorkflowExecutionStartedEventAttributes = M.ChildWorkflowExecutionStartedEventAttributes,
        childWorkflowExecutionCompletedEventAttributes = M.ChildWorkflowExecutionCompletedEventAttributes,
        childWorkflowExecutionFailedEventAttributes = M.ChildWorkflowExecutionFailedEventAttributes,
        childWorkflowExecutionTimedOutEventAttributes = M.ChildWorkflowExecutionTimedOutEventAttributes,
        childWorkflowExecutionCanceledEventAttributes = M.ChildWorkflowExecutionCanceledEventAttributes,
        childWorkflowExecutionTerminatedEventAttributes = M.ChildWorkflowExecutionTerminatedEventAttributes,
        signalExternalWorkflowExecutionInitiatedEventAttributes = M.SignalExternalWorkflowExecutionInitiatedEventAttributes,
        externalWorkflowExecutionSignaledEventAttributes = M.ExternalWorkflowExecutionSignaledEventAttributes,
        signalExternalWorkflowExecutionFailedEventAttributes = M.SignalExternalWorkflowExecutionFailedEventAttributes,
        externalWorkflowExecutionCancelRequestedEventAttributes = M.ExternalWorkflowExecutionCancelRequestedEventAttributes,
        requestCancelExternalWorkflowExecutionInitiatedEventAttributes = M.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes,
        requestCancelExternalWorkflowExecutionFailedEventAttributes = M.RequestCancelExternalWorkflowExecutionFailedEventAttributes,
        scheduleActivityTaskFailedEventAttributes = M.ScheduleActivityTaskFailedEventAttributes,
        requestCancelActivityTaskFailedEventAttributes = M.RequestCancelActivityTaskFailedEventAttributes,
        startTimerFailedEventAttributes = M.StartTimerFailedEventAttributes,
        cancelTimerFailedEventAttributes = M.CancelTimerFailedEventAttributes,
        startChildWorkflowExecutionFailedEventAttributes = M.StartChildWorkflowExecutionFailedEventAttributes,
        lambdaFunctionScheduledEventAttributes = M.LambdaFunctionScheduledEventAttributes,
        lambdaFunctionStartedEventAttributes = M.LambdaFunctionStartedEventAttributes,
        lambdaFunctionCompletedEventAttributes = M.LambdaFunctionCompletedEventAttributes,
        lambdaFunctionFailedEventAttributes = M.LambdaFunctionFailedEventAttributes,
        lambdaFunctionTimedOutEventAttributes = M.LambdaFunctionTimedOutEventAttributes,
        scheduleLambdaFunctionFailedEventAttributes = M.ScheduleLambdaFunctionFailedEventAttributes,
        startLambdaFunctionFailedEventAttributes = M.StartLambdaFunctionFailedEventAttributes,
    },
}

M.GetWorkflowExecutionHistoryOutput = {
    type = "structure",
    id = "GetWorkflowExecutionHistoryOutput",
    members = {
        events = {
            type = "list",
            member = M.HistoryEvent,
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
    id = "LimitExceededFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ListActivityTypesInput = {
    type = "structure",
    id = "ListActivityTypesInput",
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
    },
}

M.ListActivityTypesOutput = {
    type = "structure",
    id = "ListActivityTypesOutput",
    members = {
        typeInfos = {
            type = "list",
            member = M.ActivityTypeInfo,
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
    id = "ListClosedWorkflowExecutionsInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTimeFilter = M.ExecutionTimeFilter,
        closeTimeFilter = M.ExecutionTimeFilter,
        executionFilter = M.WorkflowExecutionFilter,
        closeStatusFilter = M.CloseStatusFilter,
        typeFilter = M.WorkflowTypeFilter,
        tagFilter = M.TagFilter,
        nextPageToken = {
            type = "string",
        },
        maximumPageSize = {
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
    },
}

M.ListClosedWorkflowExecutionsOutput = {
    type = "structure",
    id = "ListClosedWorkflowExecutionsOutput",
    members = {
        executionInfos = {
            type = "list",
            member = M.WorkflowExecutionInfo,
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
    id = "ListDomainsInput",
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
    },
}

M.ListDomainsOutput = {
    type = "structure",
    id = "ListDomainsOutput",
    members = {
        domainInfos = {
            type = "list",
            member = M.DomainInfo,
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
    id = "ListOpenWorkflowExecutionsInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTimeFilter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExecutionTimeFilter }),
        typeFilter = M.WorkflowTypeFilter,
        tagFilter = M.TagFilter,
        nextPageToken = {
            type = "string",
        },
        maximumPageSize = {
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
        executionFilter = M.WorkflowExecutionFilter,
    },
}

M.ListOpenWorkflowExecutionsOutput = {
    type = "structure",
    id = "ListOpenWorkflowExecutionsOutput",
    members = {
        executionInfos = {
            type = "list",
            member = M.WorkflowExecutionInfo,
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

M.ResourceTag = {
    type = "structure",
    id = "ResourceTag",
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
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.ListWorkflowTypesInput = {
    type = "structure",
    id = "ListWorkflowTypesInput",
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
    },
}

M.ListWorkflowTypesOutput = {
    type = "structure",
    id = "ListWorkflowTypesOutput",
    members = {
        typeInfos = {
            type = "list",
            member = M.WorkflowTypeInfo,
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
    id = "PollForActivityTaskInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskList = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaskList }),
        identity = {
            type = "string",
        },
    },
}

M.PollForActivityTaskOutput = {
    type = "structure",
    id = "PollForActivityTaskOutput",
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
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        workflowExecution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowExecution }),
        activityType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActivityType }),
        input = {
            type = "string",
        },
    },
}

M.PollForDecisionTaskInput = {
    type = "structure",
    id = "PollForDecisionTaskInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        taskList = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TaskList }),
        identity = {
            type = "string",
        },
        nextPageToken = {
            type = "string",
        },
        maximumPageSize = {
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
        startAtPreviousStartedEvent = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.PollForDecisionTaskOutput = {
    type = "structure",
    id = "PollForDecisionTaskOutput",
    members = {
        taskToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startedEventId = {
            type = "long",
            traits = {
                default = 0,
                required = true,
            },
        },
        workflowExecution = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowExecution }),
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
        events = {
            type = "list",
            member = M.HistoryEvent,
            traits = {
                required = true,
            },
        },
        nextPageToken = {
            type = "string",
        },
        previousStartedEventId = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.RecordActivityTaskHeartbeatInput = {
    type = "structure",
    id = "RecordActivityTaskHeartbeatInput",
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
    id = "RecordActivityTaskHeartbeatOutput",
    members = {
        cancelRequested = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.RegisterActivityTypeInput = {
    type = "structure",
    id = "RegisterActivityTypeInput",
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
        defaultTaskList = M.TaskList,
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
    id = "RegisterActivityTypeOutput",
}

M.TypeAlreadyExistsFault = {
    type = "structure",
    id = "TypeAlreadyExistsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RegisterDomainInput = {
    type = "structure",
    id = "RegisterDomainInput",
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
            member = M.ResourceTag,
        },
    },
}

M.RegisterDomainOutput = {
    type = "structure",
    id = "RegisterDomainOutput",
}

M.TooManyTagsFault = {
    type = "structure",
    id = "TooManyTagsFault",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RegisterWorkflowTypeInput = {
    type = "structure",
    id = "RegisterWorkflowTypeInput",
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
        defaultTaskList = M.TaskList,
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
    id = "RegisterWorkflowTypeOutput",
}

M.RequestCancelWorkflowExecutionInput = {
    type = "structure",
    id = "RequestCancelWorkflowExecutionInput",
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
    id = "RequestCancelWorkflowExecutionOutput",
}

M.RespondActivityTaskCanceledInput = {
    type = "structure",
    id = "RespondActivityTaskCanceledInput",
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
    id = "RespondActivityTaskCanceledOutput",
}

M.RespondActivityTaskCompletedInput = {
    type = "structure",
    id = "RespondActivityTaskCompletedInput",
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
    id = "RespondActivityTaskCompletedOutput",
}

M.RespondActivityTaskFailedInput = {
    type = "structure",
    id = "RespondActivityTaskFailedInput",
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
    id = "RespondActivityTaskFailedOutput",
}

M.RespondDecisionTaskCompletedInput = {
    type = "structure",
    id = "RespondDecisionTaskCompletedInput",
    members = {
        taskToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        decisions = {
            type = "list",
            member = M.Decision,
        },
        executionContext = {
            type = "string",
        },
        taskList = M.TaskList,
        taskListScheduleToStartTimeout = {
            type = "string",
        },
    },
}

M.RespondDecisionTaskCompletedOutput = {
    type = "structure",
    id = "RespondDecisionTaskCompletedOutput",
}

M.SignalWorkflowExecutionInput = {
    type = "structure",
    id = "SignalWorkflowExecutionInput",
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
    id = "SignalWorkflowExecutionOutput",
}

M.StartWorkflowExecutionInput = {
    type = "structure",
    id = "StartWorkflowExecutionInput",
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
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
        taskList = M.TaskList,
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
            member = { type = "string" },
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
    id = "StartWorkflowExecutionOutput",
    members = {
        runId = {
            type = "string",
        },
    },
}

M.WorkflowExecutionAlreadyStartedFault = {
    type = "structure",
    id = "WorkflowExecutionAlreadyStartedFault",
    error = "client",
    members = {
        message = {
            type = "string",
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
            member = M.ResourceTag,
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

M.TerminateWorkflowExecutionInput = {
    type = "structure",
    id = "TerminateWorkflowExecutionInput",
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
    id = "TerminateWorkflowExecutionOutput",
}

M.UndeprecateActivityTypeInput = {
    type = "structure",
    id = "UndeprecateActivityTypeInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        activityType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActivityType }),
    },
}

M.UndeprecateActivityTypeOutput = {
    type = "structure",
    id = "UndeprecateActivityTypeOutput",
}

M.UndeprecateDomainInput = {
    type = "structure",
    id = "UndeprecateDomainInput",
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
    id = "UndeprecateDomainOutput",
}

M.UndeprecateWorkflowTypeInput = {
    type = "structure",
    id = "UndeprecateWorkflowTypeInput",
    members = {
        domain = {
            type = "string",
            traits = {
                required = true,
            },
        },
        workflowType = setmetatable({ traits = {
            required = true,
        } }, { __index = M.WorkflowType }),
    },
}

M.UndeprecateWorkflowTypeOutput = {
    type = "structure",
    id = "UndeprecateWorkflowTypeOutput",
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

return M
