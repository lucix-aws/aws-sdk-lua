local M = {}

M.SnapshotStatus = {
    AVAILABLE = "AVAILABLE",
    CREATING = "CREATING",
    DELETED = "DELETED",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
    COPYING = "COPYING",
}

M.LogExport = {
    USER_ACTIVITY_LOG = "useractivitylog",
    USER_LOG = "userlog",
    CONNECTION_LOG = "connectionlog",
}

M.NamespaceStatus = {
    AVAILABLE = "AVAILABLE",
    MODIFYING = "MODIFYING",
    DELETING = "DELETING",
}

M.OfferingType = {
    ALL_UPFRONT = "ALL_UPFRONT",
    NO_UPFRONT = "NO_UPFRONT",
}

M.State = {
    ACTIVE = "ACTIVE",
    DISABLED = "DISABLED",
}

M.UsageLimitBreachAction = {
    LOG = "log",
    EMIT_METRIC = "emit-metric",
    DEACTIVATE = "deactivate",
}

M.UsageLimitPeriod = {
    DAILY = "daily",
    WEEKLY = "weekly",
    MONTHLY = "monthly",
}

M.UsageLimitUsageType = {
    SERVERLESS_COMPUTE = "serverless-compute",
    CROSS_REGION_DATASHARING = "cross-region-datasharing",
}

M.PerformanceTargetStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.WorkgroupStatus = {
    CREATING = "CREATING",
    AVAILABLE = "AVAILABLE",
    MODIFYING = "MODIFYING",
    DELETING = "DELETING",
}

M.LakehouseIdcRegistration = {
    ASSOCIATE = "Associate",
    DISASSOCIATE = "Disassociate",
}

M.LakehouseRegistration = {
    REGISTER = "Register",
    DEREGISTER = "Deregister",
}

M.ManagedWorkgroupStatus = {
    CREATING = "CREATING",
    DELETING = "DELETING",
    MODIFYING = "MODIFYING",
    AVAILABLE = "AVAILABLE",
    NOT_AVAILABLE = "NOT_AVAILABLE",
}

return M
