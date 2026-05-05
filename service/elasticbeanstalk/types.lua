local M = {}

M.ActionHistoryStatus = {
    Completed = "Completed",
    Failed = "Failed",
    Unknown = "Unknown",
}

M.ActionStatus = {
    Scheduled = "Scheduled",
    Pending = "Pending",
    Running = "Running",
    Unknown = "Unknown",
}

M.ActionType = {
    InstanceRefresh = "InstanceRefresh",
    PlatformUpdate = "PlatformUpdate",
    Unknown = "Unknown",
}

M.SourceRepository = {
    CodeCommit = "CodeCommit",
    S3 = "S3",
}

M.SourceType = {
    Git = "Git",
    Zip = "Zip",
}

M.ApplicationVersionStatus = {
    Processed = "Processed",
    Unprocessed = "Unprocessed",
    Failed = "Failed",
    Processing = "Processing",
    Building = "Building",
}

M.EnvironmentHealth = {
    Green = "Green",
    Yellow = "Yellow",
    Red = "Red",
    Grey = "Grey",
}

M.EnvironmentHealthStatus = {
    NoData = "NoData",
    Unknown = "Unknown",
    Pending = "Pending",
    Ok = "Ok",
    Info = "Info",
    Warning = "Warning",
    Degraded = "Degraded",
    Severe = "Severe",
    Suspended = "Suspended",
}

M.EnvironmentStatus = {
    Aborting = "Aborting",
    Launching = "Launching",
    Updating = "Updating",
    LinkingFrom = "LinkingFrom",
    LinkingTo = "LinkingTo",
    Ready = "Ready",
    Terminating = "Terminating",
    Terminated = "Terminated",
}

M.ComputeType = {
    BUILD_GENERAL1_SMALL = "BUILD_GENERAL1_SMALL",
    BUILD_GENERAL1_MEDIUM = "BUILD_GENERAL1_MEDIUM",
    BUILD_GENERAL1_LARGE = "BUILD_GENERAL1_LARGE",
}

M.ConfigurationDeploymentStatus = {
    deployed = "deployed",
    pending = "pending",
    failed = "failed",
}

M.PlatformStatus = {
    Creating = "Creating",
    Failed = "Failed",
    Ready = "Ready",
    Deleting = "Deleting",
    Deleted = "Deleted",
}

M.ConfigurationOptionValueType = {
    Scalar = "Scalar",
    List = "List",
}

M.EnvironmentHealthAttribute = {
    Status = "Status",
    Color = "Color",
    Causes = "Causes",
    ApplicationMetrics = "ApplicationMetrics",
    InstancesHealth = "InstancesHealth",
    All = "All",
    HealthStatus = "HealthStatus",
    RefreshedAt = "RefreshedAt",
}

M.FailureType = {
    UpdateCancelled = "UpdateCancelled",
    CancellationFailed = "CancellationFailed",
    RollbackFailed = "RollbackFailed",
    RollbackSuccessful = "RollbackSuccessful",
    InternalFailure = "InternalFailure",
    InvalidEnvironmentState = "InvalidEnvironmentState",
    PermissionsError = "PermissionsError",
}

M.EventSeverity = {
    TRACE = "TRACE",
    DEBUG = "DEBUG",
    INFO = "INFO",
    WARN = "WARN",
    ERROR = "ERROR",
    FATAL = "FATAL",
}

M.InstancesHealthAttribute = {
    HealthStatus = "HealthStatus",
    Color = "Color",
    Causes = "Causes",
    ApplicationMetrics = "ApplicationMetrics",
    RefreshedAt = "RefreshedAt",
    LaunchedAt = "LaunchedAt",
    System = "System",
    Deployment = "Deployment",
    AvailabilityZone = "AvailabilityZone",
    InstanceType = "InstanceType",
    All = "All",
}

M.EnvironmentInfoType = {
    tail = "tail",
    bundle = "bundle",
    analyze = "analyze",
}

M.ValidationSeverity = {
    error = "error",
    warning = "warning",
}

return M
