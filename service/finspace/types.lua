local M = {}

M.AutoScalingMetric = {
    CPU_UTILIZATION_PERCENTAGE = "CPU_UTILIZATION_PERCENTAGE",
}

M.FederationMode = {
    FEDERATED = "FEDERATED",
    LOCAL = "LOCAL",
}

M.ChangeType = {
    PUT = "PUT",
    DELETE = "DELETE",
}

M.ErrorDetails = {
    VALIDATION = "The inputs to this request are invalid.",
    SERVICE_QUOTA_EXCEEDED = "Service limits have been exceeded.",
    ACCESS_DENIED = "Missing required permission to perform this request.",
    RESOURCE_NOT_FOUND = "One or more inputs to this request were not found.",
    THROTTLING = "The system temporarily lacks sufficient resources to process the request.",
    INTERNAL_SERVICE_EXCEPTION = "An internal error has occurred.",
    CANCELLED = "Cancelled",
    USER_RECOVERABLE = "A user recoverable error has occurred",
}

M.ChangesetStatus = {
    PENDING = "PENDING",
    PROCESSING = "PROCESSING",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.KxAzMode = {
    SINGLE = "SINGLE",
    MULTI = "MULTI",
}

M.KxClusterType = {
    HDB = "HDB",
    RDB = "RDB",
    GATEWAY = "GATEWAY",
    GP = "GP",
    TICKERPLANT = "TICKERPLANT",
}

M.KxSavedownStorageType = {
    SDS01 = "SDS01",
}

M.IPAddressType = {
    IP_V4 = "IP_V4",
}

M.KxClusterStatus = {
    PENDING = "PENDING",
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    RUNNING = "RUNNING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DELETED = "DELETED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.VolumeType = {
    NAS_1 = "NAS_1",
}

M.KxDataviewStatus = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    FAILED = "FAILED",
    DELETING = "DELETING",
}

M.EnvironmentStatus = {
    CREATE_REQUESTED = "CREATE_REQUESTED",
    CREATING = "CREATING",
    CREATED = "CREATED",
    DELETE_REQUESTED = "DELETE_REQUESTED",
    DELETING = "DELETING",
    DELETED = "DELETED",
    FAILED_CREATION = "FAILED_CREATION",
    RETRY_DELETION = "RETRY_DELETION",
    FAILED_DELETION = "FAILED_DELETION",
    UPDATE_NETWORK_REQUESTED = "UPDATE_NETWORK_REQUESTED",
    UPDATING_NETWORK = "UPDATING_NETWORK",
    FAILED_UPDATING_NETWORK = "FAILED_UPDATING_NETWORK",
    SUSPENDED = "SUSPENDED",
}

M.KxScalingGroupStatus = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    DELETED = "DELETED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.KxNAS1Type = {
    SSD_1000 = "SSD_1000",
    SSD_250 = "SSD_250",
    HDD_12 = "HDD_12",
}

M.KxVolumeType = {
    NAS_1 = "NAS_1",
}

M.KxVolumeStatus = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    UPDATED = "UPDATED",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETING = "DELETING",
    DELETED = "DELETED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.dnsStatus = {
    NONE = "NONE",
    UPDATE_REQUESTED = "UPDATE_REQUESTED",
    UPDATING = "UPDATING",
    FAILED_UPDATE = "FAILED_UPDATE",
    SUCCESSFULLY_UPDATED = "SUCCESSFULLY_UPDATED",
}

M.tgwStatus = {
    NONE = "NONE",
    UPDATE_REQUESTED = "UPDATE_REQUESTED",
    UPDATING = "UPDATING",
    FAILED_UPDATE = "FAILED_UPDATE",
    SUCCESSFULLY_UPDATED = "SUCCESSFULLY_UPDATED",
}

M.RuleAction = {
    ALLOW = "allow",
    DENY = "deny",
}

M.KxNodeStatus = {
    RUNNING = "RUNNING",
    PROVISIONING = "PROVISIONING",
}

M.KxClusterCodeDeploymentStrategy = {
    NO_RESTART = "NO_RESTART",
    ROLLING = "ROLLING",
    FORCE = "FORCE",
}

M.KxDeploymentStrategy = {
    NO_RESTART = "NO_RESTART",
    ROLLING = "ROLLING",
}

return M
