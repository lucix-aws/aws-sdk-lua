local M = {}

M.AcknowledgeActionConfiguration = {
    type = "structure",
    id = "AcknowledgeActionConfiguration",
    members = {
        note = {
            type = "string",
        },
    },
}

M.AcknowledgeAlarmActionRequest = {
    type = "structure",
    id = "AcknowledgeAlarmActionRequest",
    members = {
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        alarmModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyValue = {
            type = "string",
        },
        note = {
            type = "string",
        },
    },
}

M.CustomerActionName = {
    SNOOZE = "SNOOZE",
    ENABLE = "ENABLE",
    DISABLE = "DISABLE",
    ACKNOWLEDGE = "ACKNOWLEDGE",
    RESET = "RESET",
}

M.DisableActionConfiguration = {
    type = "structure",
    id = "DisableActionConfiguration",
    members = {
        note = {
            type = "string",
        },
    },
}

M.EnableActionConfiguration = {
    type = "structure",
    id = "EnableActionConfiguration",
    members = {
        note = {
            type = "string",
        },
    },
}

M.ResetActionConfiguration = {
    type = "structure",
    id = "ResetActionConfiguration",
    members = {
        note = {
            type = "string",
        },
    },
}

M.SnoozeActionConfiguration = {
    type = "structure",
    id = "SnoozeActionConfiguration",
    members = {
        snoozeDuration = {
            type = "integer",
        },
        note = {
            type = "string",
        },
    },
}

M.CustomerAction = {
    type = "structure",
    id = "CustomerAction",
    members = {
        actionName = {
            type = "string",
        },
        snoozeActionConfiguration = M.SnoozeActionConfiguration,
        enableActionConfiguration = M.EnableActionConfiguration,
        disableActionConfiguration = M.DisableActionConfiguration,
        acknowledgeActionConfiguration = M.AcknowledgeActionConfiguration,
        resetActionConfiguration = M.ResetActionConfiguration,
    },
}

M.ComparisonOperator = {
    GREATER = "GREATER",
    GREATER_OR_EQUAL = "GREATER_OR_EQUAL",
    LESS = "LESS",
    LESS_OR_EQUAL = "LESS_OR_EQUAL",
    EQUAL = "EQUAL",
    NOT_EQUAL = "NOT_EQUAL",
}

M.SimpleRuleEvaluation = {
    type = "structure",
    id = "SimpleRuleEvaluation",
    members = {
        inputPropertyValue = {
            type = "string",
        },
        operator = {
            type = "string",
        },
        thresholdValue = {
            type = "string",
        },
    },
}

M.RuleEvaluation = {
    type = "structure",
    id = "RuleEvaluation",
    members = {
        simpleRuleEvaluation = M.SimpleRuleEvaluation,
    },
}

M.AlarmStateName = {
    DISABLED = "DISABLED",
    NORMAL = "NORMAL",
    ACTIVE = "ACTIVE",
    ACKNOWLEDGED = "ACKNOWLEDGED",
    SNOOZE_DISABLED = "SNOOZE_DISABLED",
    LATCHED = "LATCHED",
}

M.EventType = {
    STATE_CHANGE = "STATE_CHANGE",
}

M.TriggerType = {
    SNOOZE_TIMEOUT = "SNOOZE_TIMEOUT",
}

M.StateChangeConfiguration = {
    type = "structure",
    id = "StateChangeConfiguration",
    members = {
        triggerType = {
            type = "string",
        },
    },
}

M.SystemEvent = {
    type = "structure",
    id = "SystemEvent",
    members = {
        eventType = {
            type = "string",
        },
        stateChangeConfiguration = M.StateChangeConfiguration,
    },
}

M.AlarmState = {
    type = "structure",
    id = "AlarmState",
    members = {
        stateName = {
            type = "string",
        },
        ruleEvaluation = M.RuleEvaluation,
        customerAction = M.CustomerAction,
        systemEvent = M.SystemEvent,
    },
}

M.Alarm = {
    type = "structure",
    id = "Alarm",
    members = {
        alarmModelName = {
            type = "string",
        },
        alarmModelVersion = {
            type = "string",
        },
        keyValue = {
            type = "string",
        },
        alarmState = M.AlarmState,
        severity = {
            type = "integer",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdateTime = {
            type = "timestamp",
        },
    },
}

M.AlarmSummary = {
    type = "structure",
    id = "AlarmSummary",
    members = {
        alarmModelName = {
            type = "string",
        },
        alarmModelVersion = {
            type = "string",
        },
        keyValue = {
            type = "string",
        },
        stateName = {
            type = "string",
        },
        creationTime = {
            type = "timestamp",
        },
        lastUpdateTime = {
            type = "timestamp",
        },
    },
}

M.BatchAcknowledgeAlarmInput = {
    type = "structure",
    id = "BatchAcknowledgeAlarmInput",
    members = {
        acknowledgeActionRequests = {
            type = "list",
            member = M.AcknowledgeAlarmActionRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.ErrorCode = {
    ResourceNotFoundException = "ResourceNotFoundException",
    InvalidRequestException = "InvalidRequestException",
    InternalFailureException = "InternalFailureException",
    ServiceUnavailableException = "ServiceUnavailableException",
    ThrottlingException = "ThrottlingException",
}

M.BatchAlarmActionErrorEntry = {
    type = "structure",
    id = "BatchAlarmActionErrorEntry",
    members = {
        requestId = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.BatchAcknowledgeAlarmOutput = {
    type = "structure",
    id = "BatchAcknowledgeAlarmOutput",
    members = {
        errorEntries = {
            type = "list",
            member = M.BatchAlarmActionErrorEntry,
        },
    },
}

M.InternalFailureException = {
    type = "structure",
    id = "InternalFailureException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    id = "InvalidRequestException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    id = "ServiceUnavailableException",
    error = "server",
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

M.DeleteDetectorRequest = {
    type = "structure",
    id = "DeleteDetectorRequest",
    members = {
        messageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detectorModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyValue = {
            type = "string",
        },
    },
}

M.BatchDeleteDetectorInput = {
    type = "structure",
    id = "BatchDeleteDetectorInput",
    members = {
        detectors = {
            type = "list",
            member = M.DeleteDetectorRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteDetectorErrorEntry = {
    type = "structure",
    id = "BatchDeleteDetectorErrorEntry",
    members = {
        messageId = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.BatchDeleteDetectorOutput = {
    type = "structure",
    id = "BatchDeleteDetectorOutput",
    members = {
        batchDeleteDetectorErrorEntries = {
            type = "list",
            member = M.BatchDeleteDetectorErrorEntry,
        },
    },
}

M.DisableAlarmActionRequest = {
    type = "structure",
    id = "DisableAlarmActionRequest",
    members = {
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        alarmModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyValue = {
            type = "string",
        },
        note = {
            type = "string",
        },
    },
}

M.BatchDisableAlarmInput = {
    type = "structure",
    id = "BatchDisableAlarmInput",
    members = {
        disableActionRequests = {
            type = "list",
            member = M.DisableAlarmActionRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDisableAlarmOutput = {
    type = "structure",
    id = "BatchDisableAlarmOutput",
    members = {
        errorEntries = {
            type = "list",
            member = M.BatchAlarmActionErrorEntry,
        },
    },
}

M.EnableAlarmActionRequest = {
    type = "structure",
    id = "EnableAlarmActionRequest",
    members = {
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        alarmModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyValue = {
            type = "string",
        },
        note = {
            type = "string",
        },
    },
}

M.BatchEnableAlarmInput = {
    type = "structure",
    id = "BatchEnableAlarmInput",
    members = {
        enableActionRequests = {
            type = "list",
            member = M.EnableAlarmActionRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchEnableAlarmOutput = {
    type = "structure",
    id = "BatchEnableAlarmOutput",
    members = {
        errorEntries = {
            type = "list",
            member = M.BatchAlarmActionErrorEntry,
        },
    },
}

M.TimestampValue = {
    type = "structure",
    id = "TimestampValue",
    members = {
        timeInMillis = {
            type = "long",
        },
    },
}

M.Message = {
    type = "structure",
    id = "Message",
    members = {
        messageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        inputName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        payload = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        timestamp = M.TimestampValue,
    },
}

M.BatchPutMessageInput = {
    type = "structure",
    id = "BatchPutMessageInput",
    members = {
        messages = {
            type = "list",
            member = M.Message,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutMessageErrorEntry = {
    type = "structure",
    id = "BatchPutMessageErrorEntry",
    members = {
        messageId = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.BatchPutMessageOutput = {
    type = "structure",
    id = "BatchPutMessageOutput",
    members = {
        BatchPutMessageErrorEntries = {
            type = "list",
            member = M.BatchPutMessageErrorEntry,
        },
    },
}

M.ResetAlarmActionRequest = {
    type = "structure",
    id = "ResetAlarmActionRequest",
    members = {
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        alarmModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyValue = {
            type = "string",
        },
        note = {
            type = "string",
        },
    },
}

M.BatchResetAlarmInput = {
    type = "structure",
    id = "BatchResetAlarmInput",
    members = {
        resetActionRequests = {
            type = "list",
            member = M.ResetAlarmActionRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchResetAlarmOutput = {
    type = "structure",
    id = "BatchResetAlarmOutput",
    members = {
        errorEntries = {
            type = "list",
            member = M.BatchAlarmActionErrorEntry,
        },
    },
}

M.SnoozeAlarmActionRequest = {
    type = "structure",
    id = "SnoozeAlarmActionRequest",
    members = {
        requestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        alarmModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyValue = {
            type = "string",
        },
        note = {
            type = "string",
        },
        snoozeDuration = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchSnoozeAlarmInput = {
    type = "structure",
    id = "BatchSnoozeAlarmInput",
    members = {
        snoozeActionRequests = {
            type = "list",
            member = M.SnoozeAlarmActionRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchSnoozeAlarmOutput = {
    type = "structure",
    id = "BatchSnoozeAlarmOutput",
    members = {
        errorEntries = {
            type = "list",
            member = M.BatchAlarmActionErrorEntry,
        },
    },
}

M.TimerDefinition = {
    type = "structure",
    id = "TimerDefinition",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        seconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.VariableDefinition = {
    type = "structure",
    id = "VariableDefinition",
    members = {
        name = {
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

M.DetectorStateDefinition = {
    type = "structure",
    id = "DetectorStateDefinition",
    members = {
        stateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        variables = {
            type = "list",
            member = M.VariableDefinition,
            traits = {
                required = true,
            },
        },
        timers = {
            type = "list",
            member = M.TimerDefinition,
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDetectorRequest = {
    type = "structure",
    id = "UpdateDetectorRequest",
    members = {
        messageId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        detectorModelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        keyValue = {
            type = "string",
        },
        state = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DetectorStateDefinition }),
    },
}

M.BatchUpdateDetectorInput = {
    type = "structure",
    id = "BatchUpdateDetectorInput",
    members = {
        detectors = {
            type = "list",
            member = M.UpdateDetectorRequest,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateDetectorErrorEntry = {
    type = "structure",
    id = "BatchUpdateDetectorErrorEntry",
    members = {
        messageId = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
    },
}

M.BatchUpdateDetectorOutput = {
    type = "structure",
    id = "BatchUpdateDetectorOutput",
    members = {
        batchUpdateDetectorErrorEntries = {
            type = "list",
            member = M.BatchUpdateDetectorErrorEntry,
        },
    },
}

M.DescribeAlarmInput = {
    type = "structure",
    id = "DescribeAlarmInput",
    members = {
        alarmModelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        keyValue = {
            type = "string",
            traits = {
                http_query = "keyValue",
            },
        },
    },
}

M.DescribeAlarmOutput = {
    type = "structure",
    id = "DescribeAlarmOutput",
    members = {
        alarm = M.Alarm,
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

M.DescribeDetectorInput = {
    type = "structure",
    id = "DescribeDetectorInput",
    members = {
        detectorModelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        keyValue = {
            type = "string",
            traits = {
                http_query = "keyValue",
            },
        },
    },
}

M.Timer = {
    type = "structure",
    id = "Timer",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.Variable = {
    type = "structure",
    id = "Variable",
    members = {
        name = {
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

M.DetectorState = {
    type = "structure",
    id = "DetectorState",
    members = {
        stateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        variables = {
            type = "list",
            member = M.Variable,
            traits = {
                required = true,
            },
        },
        timers = {
            type = "list",
            member = M.Timer,
            traits = {
                required = true,
            },
        },
    },
}

M.Detector = {
    type = "structure",
    id = "Detector",
    members = {
        detectorModelName = {
            type = "string",
        },
        keyValue = {
            type = "string",
        },
        detectorModelVersion = {
            type = "string",
        },
        state = M.DetectorState,
        creationTime = {
            type = "timestamp",
        },
        lastUpdateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeDetectorOutput = {
    type = "structure",
    id = "DescribeDetectorOutput",
    members = {
        detector = M.Detector,
    },
}

M.DetectorStateSummary = {
    type = "structure",
    id = "DetectorStateSummary",
    members = {
        stateName = {
            type = "string",
        },
    },
}

M.DetectorSummary = {
    type = "structure",
    id = "DetectorSummary",
    members = {
        detectorModelName = {
            type = "string",
        },
        keyValue = {
            type = "string",
        },
        detectorModelVersion = {
            type = "string",
        },
        state = M.DetectorStateSummary,
        creationTime = {
            type = "timestamp",
        },
        lastUpdateTime = {
            type = "timestamp",
        },
    },
}

M.ListAlarmsInput = {
    type = "structure",
    id = "ListAlarmsInput",
    members = {
        alarmModelName = {
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
                http_query = "maxResults",
            },
        },
    },
}

M.ListAlarmsOutput = {
    type = "structure",
    id = "ListAlarmsOutput",
    members = {
        alarmSummaries = {
            type = "list",
            member = M.AlarmSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDetectorsInput = {
    type = "structure",
    id = "ListDetectorsInput",
    members = {
        detectorModelName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        stateName = {
            type = "string",
            traits = {
                http_query = "stateName",
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
                http_query = "maxResults",
            },
        },
    },
}

M.ListDetectorsOutput = {
    type = "structure",
    id = "ListDetectorsOutput",
    members = {
        detectorSummaries = {
            type = "list",
            member = M.DetectorSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

return M
