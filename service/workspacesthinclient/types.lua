local M = {}

M.ApplyTimeOf = {
    UTC = "UTC",
    DEVICE = "DEVICE",
}

M.DayOfWeek = {
    MONDAY = "MONDAY",
    TUESDAY = "TUESDAY",
    WEDNESDAY = "WEDNESDAY",
    THURSDAY = "THURSDAY",
    FRIDAY = "FRIDAY",
    SATURDAY = "SATURDAY",
    SUNDAY = "SUNDAY",
}

M.MaintenanceWindowType = {
    SYSTEM = "SYSTEM",
    CUSTOM = "CUSTOM",
}

M.SoftwareSetUpdateMode = {
    USE_LATEST = "USE_LATEST",
    USE_DESIRED = "USE_DESIRED",
}

M.SoftwareSetUpdateSchedule = {
    USE_MAINTENANCE_WINDOW = "USE_MAINTENANCE_WINDOW",
    APPLY_IMMEDIATELY = "APPLY_IMMEDIATELY",
}

M.DesktopType = {
    WORKSPACES = "workspaces",
    APPSTREAM = "appstream",
    WORKSPACES_WEB = "workspaces-web",
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
}

M.TargetDeviceStatus = {
    DEREGISTERED = "DEREGISTERED",
    ARCHIVED = "ARCHIVED",
}

M.DeviceSoftwareSetComplianceStatus = {
    NONE = "NONE",
    COMPLIANT = "COMPLIANT",
    NOT_COMPLIANT = "NOT_COMPLIANT",
}

M.SoftwareSetUpdateStatus = {
    AVAILABLE = "AVAILABLE",
    IN_PROGRESS = "IN_PROGRESS",
    UP_TO_DATE = "UP_TO_DATE",
}

M.DeviceStatus = {
    REGISTERED = "REGISTERED",
    DEREGISTERING = "DEREGISTERING",
    DEREGISTERED = "DEREGISTERED",
    ARCHIVED = "ARCHIVED",
}

M.EnvironmentSoftwareSetComplianceStatus = {
    NO_REGISTERED_DEVICES = "NO_REGISTERED_DEVICES",
    COMPLIANT = "COMPLIANT",
    NOT_COMPLIANT = "NOT_COMPLIANT",
}

M.SoftwareSetValidationStatus = {
    VALIDATED = "VALIDATED",
    NOT_VALIDATED = "NOT_VALIDATED",
}

return M
