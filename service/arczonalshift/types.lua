local M = {}

M.AppliedStatus = {
    APPLIED = "APPLIED",
    NOT_APPLIED = "NOT_APPLIED",
}

M.AutoshiftExecutionStatus = {
    ACTIVE = "ACTIVE",
    COMPLETED = "COMPLETED",
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

M.AutoshiftAppliedStatus = {
    APPLIED = "APPLIED",
    NOT_APPLIED = "NOT_APPLIED",
}

M.AutoshiftObserverNotificationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ControlConditionType = {
    CLOUDWATCH = "CLOUDWATCH",
}

M.ZonalShiftStatus = {
    ACTIVE = "ACTIVE",
    EXPIRED = "EXPIRED",
    CANCELED = "CANCELED",
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

M.ZonalAutoshiftStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
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

return M
