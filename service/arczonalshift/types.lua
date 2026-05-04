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

M.AppliedStatus = {
    APPLIED = "APPLIED",
    NOT_APPLIED = "NOT_APPLIED",
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AutoshiftExecutionStatus = {
    ACTIVE = "ACTIVE",
    COMPLETED = "COMPLETED",
}

M.ListAutoshiftsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
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

M.AutoshiftSummary = {
    type = "structure",
    members = {
        awayFrom = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
        },
        startTime = {
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
    },
}

M.ListAutoshiftsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
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

M.ValidationExceptionReason = {
    INVALID_EXPIRES_IN = "InvalidExpiresIn",
    INVALID_STATUS = "InvalidStatus",
    MISSING_VALUE = "MissingValue",
    INVALID_TOKEN = "InvalidToken",
    INVALID_RESOURCE_IDENTIFIER = "InvalidResourceIdentifier",
    INVALID_AZ = "InvalidAz",
    UNSUPPORTED_AZ = "UnsupportedAz",
    INVALID_ALARM_CONDITION = "InvalidAlarmCondition",
    INVALID_CONDITION_TYPE = "InvalidConditionType",
    INVALID_PRACTICE_BLOCKER = "InvalidPracticeBlocker",
    FIS_EXPERIMENT_UPDATE_NOT_ALLOWED = "FISExperimentUpdateNotAllowed",
    AUTOSHIFT_UPDATE_NOT_ALLOWED = "AutoshiftUpdateNotAllowed",
    UNSUPPORTED_PRACTICE_CANCEL_SHIFT_TYPE = "UnsupportedPracticeCancelShiftType",
    INVALID_PRACTICE_ALLOWED_WINDOW = "InvalidPracticeAllowedWindow",
    CONFLICTING_PRACTICE_WINDOWS = "InvalidPracticeWindows",
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
    },
}

M.AutoshiftAppliedStatus = {
    APPLIED = "APPLIED",
    NOT_APPLIED = "NOT_APPLIED",
}

M.AutoshiftInResource = {
    type = "structure",
    members = {
        appliedStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awayFrom = {
            type = "string",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAutoshiftObserverNotificationStatusInput = {
    type = "structure",
}

M.AutoshiftObserverNotificationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.GetAutoshiftObserverNotificationStatusOutput = {
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

M.UpdateAutoshiftObserverNotificationStatusInput = {
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

M.UpdateAutoshiftObserverNotificationStatusOutput = {
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

M.ControlConditionType = {
    CLOUDWATCH = "CLOUDWATCH",
}

M.ControlCondition = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        alarmIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CancelPracticeRunInput = {
    type = "structure",
    members = {
        zonalShiftId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ZonalShiftStatus = {
    ACTIVE = "ACTIVE",
    EXPIRED = "EXPIRED",
    CANCELED = "CANCELED",
}

M.CancelPracticeRunOutput = {
    type = "structure",
    members = {
        zonalShiftId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awayFrom = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiryTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        startTime = {
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
        comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictExceptionReason = {
    ZONAL_SHIFT_ALREADY_EXISTS = "ZonalShiftAlreadyExists",
    ZONAL_SHIFT_STATUS_NOT_ACTIVE = "ZonalShiftStatusNotActive",
    SIMULTANEOUS_ZONAL_SHIFTS_CONFLICT = "SimultaneousZonalShiftsConflict",
    PRACTICE_CONFIGURATION_ALREADY_EXISTS = "PracticeConfigurationAlreadyExists",
    AUTOSHIFT_ENABLED = "AutoShiftEnabled",
    PRACTICE_CONFIGURATION_DOES_NOT_EXIST = "PracticeConfigurationDoesNotExist",
    ZONAL_AUTOSHIFT_ACTIVE = "ZonalAutoshiftActive",
    PRACTICE_OUTCOME_ALARMS_RED = "PracticeOutcomeAlarmsRed",
    PRACTICE_BLOCKING_ALARMS_RED = "PracticeBlockingAlarmsRed",
    PRACTICE_IN_BLOCKED_DATES = "PracticeInBlockedDates",
    PRACTICE_IN_BLOCKED_WINDOWS = "PracticeInBlockedWindows",
    PRACTICE_OUTSIDE_ALLOWED_WINDOWS = "PracticeOutsideAllowedWindows",
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
        zonalShiftId = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.CancelZonalShiftInput = {
    type = "structure",
    members = {
        zonalShiftId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CancelZonalShiftOutput = {
    type = "structure",
    members = {
        zonalShiftId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awayFrom = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiryTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        startTime = {
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
        comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreatePracticeRunConfigurationInput = {
    type = "structure",
    members = {
        resourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockedWindows = {
            type = "list",
            member_type = "string",
        },
        blockedDates = {
            type = "list",
            member_type = "string",
        },
        blockingAlarms = {
            type = "list",
            member_type = "structure",
        },
        allowedWindows = {
            type = "list",
            member_type = "string",
        },
        outcomeAlarms = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PracticeRunConfiguration = {
    type = "structure",
    members = {
        blockingAlarms = {
            type = "list",
            member_type = "structure",
        },
        outcomeAlarms = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        blockedWindows = {
            type = "list",
            member_type = "string",
        },
        allowedWindows = {
            type = "list",
            member_type = "string",
        },
        blockedDates = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ZonalAutoshiftStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CreatePracticeRunConfigurationOutput = {
    type = "structure",
    members = {
        arn = {
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
        zonalAutoshiftStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        practiceRunConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeletePracticeRunConfigurationInput = {
    type = "structure",
    members = {
        resourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeletePracticeRunConfigurationOutput = {
    type = "structure",
    members = {
        arn = {
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
        zonalAutoshiftStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetManagedResourceInput = {
    type = "structure",
    members = {
        resourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PracticeRunOutcome = {
    FAILED = "FAILED",
    INTERRUPTED = "INTERRUPTED",
    PENDING = "PENDING",
    SUCCEEDED = "SUCCEEDED",
    CAPACITY_CHECK_FAILED = "CAPACITY_CHECK_FAILED",
}

M.ShiftType = {
    ZONAL_SHIFT = "ZONAL_SHIFT",
    PRACTICE_RUN = "PRACTICE_RUN",
    FIS_EXPERIMENT = "FIS_EXPERIMENT",
    ZONAL_AUTOSHIFT = "ZONAL_AUTOSHIFT",
}

M.ZonalShiftInResource = {
    type = "structure",
    members = {
        appliedStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        zonalShiftId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awayFrom = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiryTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shiftType = {
            type = "string",
        },
        practiceRunOutcome = {
            type = "string",
        },
    },
}

M.GetManagedResourceOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        appliedWeights = {
            type = "map",
            key_type = "string",
            value_type = "number",
            traits = {
                required = true,
            },
        },
        zonalShifts = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        autoshifts = {
            type = "list",
            member_type = "structure",
        },
        practiceRunConfiguration = {
            type = "structure",
        },
        zonalAutoshiftStatus = {
            type = "string",
        },
    },
}

M.ListManagedResourcesInput = {
    type = "structure",
    members = {
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

M.ManagedResourceSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
        },
        availabilityZones = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        appliedWeights = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        zonalShifts = {
            type = "list",
            member_type = "structure",
        },
        autoshifts = {
            type = "list",
            member_type = "structure",
        },
        zonalAutoshiftStatus = {
            type = "string",
        },
        practiceRunStatus = {
            type = "string",
        },
    },
}

M.ListManagedResourcesOutput = {
    type = "structure",
    members = {
        items = {
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

M.ListZonalShiftsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        maxResults = {
            type = "number",
            traits = {
                http_query = "maxResults",
            },
        },
        resourceIdentifier = {
            type = "string",
            traits = {
                http_query = "resourceIdentifier",
            },
        },
    },
}

M.ZonalShiftSummary = {
    type = "structure",
    members = {
        zonalShiftId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awayFrom = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiryTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        startTime = {
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
        comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
        shiftType = {
            type = "string",
        },
        practiceRunOutcome = {
            type = "string",
        },
    },
}

M.ListZonalShiftsOutput = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateZonalAutoshiftConfigurationInput = {
    type = "structure",
    members = {
        resourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        zonalAutoshiftStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateZonalAutoshiftConfigurationOutput = {
    type = "structure",
    members = {
        resourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        zonalAutoshiftStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdatePracticeRunConfigurationInput = {
    type = "structure",
    members = {
        resourceIdentifier = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        blockedWindows = {
            type = "list",
            member_type = "string",
        },
        blockedDates = {
            type = "list",
            member_type = "string",
        },
        blockingAlarms = {
            type = "list",
            member_type = "structure",
        },
        allowedWindows = {
            type = "list",
            member_type = "string",
        },
        outcomeAlarms = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdatePracticeRunConfigurationOutput = {
    type = "structure",
    members = {
        arn = {
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
        zonalAutoshiftStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        practiceRunConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateZonalShiftInput = {
    type = "structure",
    members = {
        zonalShiftId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        comment = {
            type = "string",
        },
        expiresIn = {
            type = "string",
        },
    },
}

M.UpdateZonalShiftOutput = {
    type = "structure",
    members = {
        zonalShiftId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awayFrom = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiryTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        startTime = {
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
        comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartPracticeRunInput = {
    type = "structure",
    members = {
        resourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awayFrom = {
            type = "string",
            traits = {
                required = true,
            },
        },
        comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartPracticeRunOutput = {
    type = "structure",
    members = {
        zonalShiftId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awayFrom = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiryTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        startTime = {
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
        comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartZonalShiftInput = {
    type = "structure",
    members = {
        resourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awayFrom = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiresIn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartZonalShiftOutput = {
    type = "structure",
    members = {
        zonalShiftId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceIdentifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        awayFrom = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expiryTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        startTime = {
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
        comment = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

return M
