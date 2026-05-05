local M = {}

M.RetentionIntervalUnitValues = {
    DAYS = "DAYS",
    WEEKS = "WEEKS",
    MONTHS = "MONTHS",
    YEARS = "YEARS",
}

M.DefaultPolicyTypeValues = {
    VOLUME = "VOLUME",
    INSTANCE = "INSTANCE",
}

M.EventTypeValues = {
    SHARE_SNAPSHOT = "shareSnapshot",
}

M.EventSourceValues = {
    MANAGED_CWE = "MANAGED_CWE",
}

M.PolicyLanguageValues = {
    SIMPLIFIED = "SIMPLIFIED",
    STANDARD = "STANDARD",
}

M.PolicyTypeValues = {
    EBS_SNAPSHOT_MANAGEMENT = "EBS_SNAPSHOT_MANAGEMENT",
    IMAGE_MANAGEMENT = "IMAGE_MANAGEMENT",
    EVENT_BASED_POLICY = "EVENT_BASED_POLICY",
}

M.ResourceLocationValues = {
    CLOUD = "CLOUD",
    OUTPOST = "OUTPOST",
    LOCAL_ZONE = "LOCAL_ZONE",
}

M.ResourceTypeValues = {
    VOLUME = "VOLUME",
    INSTANCE = "INSTANCE",
}

M.IntervalUnitValues = {
    HOURS = "HOURS",
}

M.LocationValues = {
    CLOUD = "CLOUD",
    OUTPOST_LOCAL = "OUTPOST_LOCAL",
    LOCAL_ZONE = "LOCAL_ZONE",
}

M.ExecutionHandlerServiceValues = {
    AWS_SYSTEMS_MANAGER = "AWS_SYSTEMS_MANAGER",
}

M.StageValues = {
    PRE = "PRE",
    POST = "POST",
}

M.SettablePolicyStateValues = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DefaultPoliciesTypeValues = {
    VOLUME = "VOLUME",
    INSTANCE = "INSTANCE",
    ALL = "ALL",
}

M.GettablePolicyStateValues = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    ERROR = "ERROR",
}

return M
