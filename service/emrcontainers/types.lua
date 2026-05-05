local M = {}

M.AllowAWSToRetainLogs = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.CertificateProviderType = {
    PEM = "PEM",
}

M.TemplateParameterDataType = {
    NUMBER = "NUMBER",
    STRING = "STRING",
}

M.PersistentAppUI = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ContainerProviderType = {
    EKS = "EKS",
}

M.FailureReason = {
    INTERNAL_ERROR = "INTERNAL_ERROR",
    USER_ERROR = "USER_ERROR",
    VALIDATION_ERROR = "VALIDATION_ERROR",
    CLUSTER_UNAVAILABLE = "CLUSTER_UNAVAILABLE",
}

M.JobRunState = {
    PENDING = "PENDING",
    SUBMITTED = "SUBMITTED",
    RUNNING = "RUNNING",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
    CANCEL_PENDING = "CANCEL_PENDING",
    COMPLETED = "COMPLETED",
}

M.EndpointState = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    TERMINATING = "TERMINATING",
    TERMINATED = "TERMINATED",
    TERMINATED_WITH_ERRORS = "TERMINATED_WITH_ERRORS",
}

M.VirtualClusterState = {
    RUNNING = "RUNNING",
    TERMINATING = "TERMINATING",
    TERMINATED = "TERMINATED",
    ARRESTED = "ARRESTED",
}

return M
