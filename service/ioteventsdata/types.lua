local M = {}

M.AcknowledgeActionConfiguration = {
    type = "structure",
    members = {
        note = {
            type = "string",
        },
    },
}

M.AcknowledgeAlarmActionRequest = {
    type = "structure",
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
    members = {
        note = {
            type = "string",
        },
    },
}

M.EnableActionConfiguration = {
    type = "structure",
    members = {
        note = {
            type = "string",
        },
    },
}

M.ResetActionConfiguration = {
    type = "structure",
    members = {
        note = {
            type = "string",
        },
    },
}

M.SnoozeActionConfiguration = {
    type = "structure",
    members = {
        snoozeDuration = {
            type = "number",
        },
        note = {
            type = "string",
        },
    },
}

M.CustomerAction = {
    type = "structure",
    members = {
        actionName = {
            type = "string",
        },
        snoozeActionConfiguration = {
            type = "structure",
        },
        enableActionConfiguration = {
            type = "structure",
        },
        disableActionConfiguration = {
            type = "structure",
        },
        acknowledgeActionConfiguration = {
            type = "structure",
        },
        resetActionConfiguration = {
            type = "structure",
        },
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
    members = {
        simpleRuleEvaluation = {
            type = "structure",
        },
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
    members = {
        triggerType = {
            type = "string",
        },
    },
}

M.SystemEvent = {
    type = "structure",
    members = {
        eventType = {
            type = "string",
        },
        stateChangeConfiguration = {
            type = "structure",
        },
    },
}

M.AlarmState = {
    type = "structure",
    members = {
        stateName = {
            type = "string",
        },
        ruleEvaluation = {
            type = "structure",
        },
        customerAction = {
            type = "structure",
        },
        systemEvent = {
            type = "structure",
        },
    },
}

M.Alarm = {
    type = "structure",
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
        alarmState = {
            type = "structure",
        },
        severity = {
            type = "number",
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
    members = {
        acknowledgeActionRequests = {
            type = "list",
            member_type = "structure",
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
    members = {
        errorEntries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InternalFailureException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
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

M.DeleteDetectorRequest = {
    type = "structure",
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
    members = {
        detectors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteDetectorErrorEntry = {
    type = "structure",
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
    members = {
        batchDeleteDetectorErrorEntries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DisableAlarmActionRequest = {
    type = "structure",
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
    members = {
        disableActionRequests = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDisableAlarmOutput = {
    type = "structure",
    members = {
        errorEntries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.EnableAlarmActionRequest = {
    type = "structure",
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
    members = {
        enableActionRequests = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchEnableAlarmOutput = {
    type = "structure",
    members = {
        errorEntries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TimestampValue = {
    type = "structure",
    members = {
        timeInMillis = {
            type = "number",
        },
    },
}

M.Message = {
    type = "structure",
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
        timestamp = {
            type = "structure",
        },
    },
}

M.BatchPutMessageInput = {
    type = "structure",
    members = {
        messages = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutMessageErrorEntry = {
    type = "structure",
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
    members = {
        BatchPutMessageErrorEntries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ResetAlarmActionRequest = {
    type = "structure",
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
    members = {
        resetActionRequests = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchResetAlarmOutput = {
    type = "structure",
    members = {
        errorEntries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SnoozeAlarmActionRequest = {
    type = "structure",
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
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchSnoozeAlarmInput = {
    type = "structure",
    members = {
        snoozeActionRequests = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchSnoozeAlarmOutput = {
    type = "structure",
    members = {
        errorEntries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TimerDefinition = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        seconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.VariableDefinition = {
    type = "structure",
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
    members = {
        stateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        variables = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        timers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDetectorRequest = {
    type = "structure",
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
        state = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateDetectorInput = {
    type = "structure",
    members = {
        detectors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateDetectorErrorEntry = {
    type = "structure",
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
    members = {
        batchUpdateDetectorErrorEntries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeAlarmInput = {
    type = "structure",
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
    members = {
        alarm = {
            type = "structure",
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

M.DescribeDetectorInput = {
    type = "structure",
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
    members = {
        stateName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        variables = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        timers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Detector = {
    type = "structure",
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
        state = {
            type = "structure",
        },
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
    members = {
        detector = {
            type = "structure",
        },
    },
}

M.DetectorStateSummary = {
    type = "structure",
    members = {
        stateName = {
            type = "string",
        },
    },
}

M.DetectorSummary = {
    type = "structure",
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
        state = {
            type = "structure",
        },
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListAlarmsOutput = {
    type = "structure",
    members = {
        alarmSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListDetectorsInput = {
    type = "structure",
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
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.ListDetectorsOutput = {
    type = "structure",
    members = {
        detectorSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

return M
