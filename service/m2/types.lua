local M = {}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FEATURE_NOT_AVAILABLE = "featureNotAvailable",
    UNSUPPORTED_ENGINE_VERSION = "unsupportedEngineVersion",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
}

M.EngineType = {
    MICROFOCUS = "microfocus",
    BLUAGE = "bluage",
}

M.DeploymentLifecycle = {
    DEPLOYING = "Deploying",
    SUCCEEDED = "Succeeded",
    FAILED = "Failed",
    DEPLOY_UPDATE = "Updating Deployment",
}

M.ApplicationVersionLifecycle = {
    CREATING = "Creating",
    AVAILABLE = "Available",
    FAILED = "Failed",
}

M.ApplicationLifecycle = {
    CREATING = "Creating",
    CREATED = "Created",
    AVAILABLE = "Available",
    READY = "Ready",
    STARTING = "Starting",
    RUNNING = "Running",
    STOPPING = "Stopping",
    STOPPED = "Stopped",
    FAILED = "Failed",
    DELETING = "Deleting",
    DELETING_FROM_ENVIRONMENT = "Deleting From Environment",
}

M.BatchJobType = {
    VSE = "VSE",
    JES2 = "JES2",
    JES3 = "JES3",
}

M.BatchJobExecutionStatus = {
    SUBMITTING = "Submitting",
    HOLDING = "Holding",
    DISPATCH = "Dispatching",
    RUNNING = "Running",
    CANCELLING = "Cancelling",
    CANCELLED = "Cancelled",
    SUCCEEDED = "Succeeded",
    FAILED = "Failed",
    PURGED = "Purged",
    SUCCEEDED_WITH_WARNING = "Succeeded With Warning",
}

M.DataSetTaskLifecycle = {
    CREATING = "Creating",
    RUNNING = "Running",
    COMPLETED = "Completed",
    FAILED = "Failed",
}

M.ApplicationDeploymentLifecycle = {
    DEPLOYING = "Deploying",
    DEPLOYED = "Deployed",
}

M.NetworkType = {
    IPV4 = "ipv4",
    DUAL = "dual",
}

M.EnvironmentLifecycle = {
    CREATING = "Creating",
    AVAILABLE = "Available",
    UPDATING = "Updating",
    DELETING = "Deleting",
    FAILED = "Failed",
    UNHEALTHY = "UnHealthy",
}

return M
