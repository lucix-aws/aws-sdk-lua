local M = {}

M.AcceptLanguage = {
    EN_US = "EN_US",
}

M.ContextType = {
    CAUSAL = "CAUSAL",
    CONTEXTUAL = "CONTEXTUAL",
}

M.Severity = {
    LOW = "LOW",
    MEDIUM = "MEDIUM",
    HIGH = "HIGH",
}

M.ServiceType = {
    RDS = "RDS",
    DOCDB = "DOCDB",
}

M.AnalysisStatus = {
    RUNNING = "RUNNING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
}

M.FineGrainedAction = {
    DESCRIBE_DIMENSION_KEYS = "DescribeDimensionKeys",
    GET_DIMENSION_KEY_DETAILS = "GetDimensionKeyDetails",
    GET_RESOURCE_METRICS = "GetResourceMetrics",
}

M.DetailStatus = {
    AVAILABLE = "AVAILABLE",
    PROCESSING = "PROCESSING",
    UNAVAILABLE = "UNAVAILABLE",
}

M.FeatureStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    UNSUPPORTED = "UNSUPPORTED",
    ENABLED_PENDING_REBOOT = "ENABLED_PENDING_REBOOT",
    DISABLED_PENDING_REBOOT = "DISABLED_PENDING_REBOOT",
    UNKNOWN = "UNKNOWN",
}

M.TextFormat = {
    PLAIN_TEXT = "PLAIN_TEXT",
    MARKDOWN = "MARKDOWN",
}

M.PeriodAlignment = {
    END_TIME = "END_TIME",
    START_TIME = "START_TIME",
}

return M
