local M = {}

M.AllocationType = {
    VPC_SUBNET = "VPC_SUBNET",
    ELASTIC_IP = "ELASTIC_IP",
    OVERLAY = "OVERLAY",
    UNKNOWN = "UNKNOWN",
}

M.ApplicationDiscoveryStatus = {
    SUCCESS = "SUCCESS",
    REGISTRATION_FAILED = "REGISTRATION_FAILED",
    REFRESH_FAILED = "REFRESH_FAILED",
    REGISTERING = "REGISTERING",
    DELETING = "DELETING",
}

M.ApplicationStatus = {
    ACTIVATED = "ACTIVATED",
    STARTING = "STARTING",
    STOPPED = "STOPPED",
    STOPPING = "STOPPING",
    FAILED = "FAILED",
    REGISTERING = "REGISTERING",
    DELETING = "DELETING",
    UNKNOWN = "UNKNOWN",
}

M.ApplicationType = {
    HANA = "HANA",
    SAP_ABAP = "SAP_ABAP",
}

M.CredentialType = {
    ADMIN = "ADMIN",
}

M.BackintMode = {
    AWSBackup = "AWSBackup",
}

M.ClusterStatus = {
    ONLINE = "ONLINE",
    STANDBY = "STANDBY",
    MAINTENANCE = "MAINTENANCE",
    OFFLINE = "OFFLINE",
    NONE = "NONE",
}

M.ComponentType = {
    HANA = "HANA",
    HANA_NODE = "HANA_NODE",
    ABAP = "ABAP",
    ASCS = "ASCS",
    DIALOG = "DIALOG",
    WEBDISP = "WEBDISP",
    WD = "WD",
    ERS = "ERS",
}

M.DatabaseConnectionMethod = {
    DIRECT = "DIRECT",
    OVERLAY = "OVERLAY",
}

M.HostRole = {
    LEADER = "LEADER",
    WORKER = "WORKER",
    STANDBY = "STANDBY",
    UNKNOWN = "UNKNOWN",
}

M.OperationMode = {
    PRIMARY = "PRIMARY",
    LOGREPLAY = "LOGREPLAY",
    DELTA_DATASHIPPING = "DELTA_DATASHIPPING",
    LOGREPLAY_READACCESS = "LOGREPLAY_READACCESS",
    NONE = "NONE",
}

M.ReplicationMode = {
    PRIMARY = "PRIMARY",
    NONE = "NONE",
    SYNC = "SYNC",
    SYNCMEM = "SYNCMEM",
    ASYNC = "ASYNC",
}

M.ComponentStatus = {
    ACTIVATED = "ACTIVATED",
    STARTING = "STARTING",
    STOPPED = "STOPPED",
    STOPPING = "STOPPING",
    RUNNING = "RUNNING",
    RUNNING_WITH_ERROR = "RUNNING_WITH_ERROR",
    UNDEFINED = "UNDEFINED",
}

M.ConfigurationCheckType = {
    SAP_CHECK_01 = "SAP_CHECK_01",
    SAP_CHECK_02 = "SAP_CHECK_02",
    SAP_CHECK_03 = "SAP_CHECK_03",
}

M.OperationStatus = {
    INPROGRESS = "INPROGRESS",
    SUCCESS = "SUCCESS",
    ERROR = "ERROR",
}

M.ConfigurationCheckOperationListingMode = {
    ALL_OPERATIONS = "ALL_OPERATIONS",
    LATEST_PER_CHECK = "LATEST_PER_CHECK",
}

M.ConnectedEntityType = {
    DBMS = "DBMS",
}

M.DatabaseType = {
    SYSTEM = "SYSTEM",
    TENANT = "TENANT",
}

M.DatabaseStatus = {
    RUNNING = "RUNNING",
    STARTING = "STARTING",
    STOPPED = "STOPPED",
    WARNING = "WARNING",
    UNKNOWN = "UNKNOWN",
    ERROR = "ERROR",
    STOPPING = "STOPPING",
}

M.PermissionActionType = {
    RESTORE = "RESTORE",
}

M.FilterOperator = {
    EQUALS = "Equals",
    GREATER_THAN_OR_EQUALS = "GreaterThanOrEquals",
    LESS_THAN_OR_EQUALS = "LessThanOrEquals",
}

M.OperationEventStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.RuleResultStatus = {
    PASSED = "PASSED",
    FAILED = "FAILED",
    WARNING = "WARNING",
    INFO = "INFO",
    UNKNOWN = "UNKNOWN",
}

return M
