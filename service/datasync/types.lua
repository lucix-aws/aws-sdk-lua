local M = {}

M.AgentStatus = {
    ONLINE = "ONLINE",
    OFFLINE = "OFFLINE",
}

M.Atime = {
    NONE = "NONE",
    BEST_EFFORT = "BEST_EFFORT",
}

M.AzureAccessTier = {
    HOT = "HOT",
    COOL = "COOL",
    ARCHIVE = "ARCHIVE",
}

M.AzureBlobAuthenticationType = {
    SAS = "SAS",
    NONE = "NONE",
}

M.AzureBlobType = {
    BLOCK = "BLOCK",
}

M.EfsInTransitEncryption = {
    NONE = "NONE",
    TLS1_2 = "TLS1_2",
}

M.NfsVersion = {
    AUTOMATIC = "AUTOMATIC",
    NFS3 = "NFS3",
    NFS4_0 = "NFS4_0",
    NFS4_1 = "NFS4_1",
}

M.SmbVersion = {
    AUTOMATIC = "AUTOMATIC",
    SMB2 = "SMB2",
    SMB3 = "SMB3",
    SMB1 = "SMB1",
    SMB2_0 = "SMB2_0",
}

M.HdfsAuthenticationType = {
    SIMPLE = "SIMPLE",
    KERBEROS = "KERBEROS",
}

M.HdfsDataTransferProtection = {
    DISABLED = "DISABLED",
    AUTHENTICATION = "AUTHENTICATION",
    INTEGRITY = "INTEGRITY",
    PRIVACY = "PRIVACY",
}

M.HdfsRpcProtection = {
    DISABLED = "DISABLED",
    AUTHENTICATION = "AUTHENTICATION",
    INTEGRITY = "INTEGRITY",
    PRIVACY = "PRIVACY",
}

M.ObjectStorageServerProtocol = {
    HTTPS = "HTTPS",
    HTTP = "HTTP",
}

M.S3StorageClass = {
    STANDARD = "STANDARD",
    STANDARD_IA = "STANDARD_IA",
    ONEZONE_IA = "ONEZONE_IA",
    INTELLIGENT_TIERING = "INTELLIGENT_TIERING",
    GLACIER = "GLACIER",
    DEEP_ARCHIVE = "DEEP_ARCHIVE",
    OUTPOSTS = "OUTPOSTS",
    GLACIER_INSTANT_RETRIEVAL = "GLACIER_INSTANT_RETRIEVAL",
}

M.SmbAuthenticationType = {
    NTLM = "NTLM",
    KERBEROS = "KERBEROS",
}

M.FilterType = {
    SIMPLE_PATTERN = "SIMPLE_PATTERN",
}

M.ManifestAction = {
    TRANSFER = "TRANSFER",
}

M.ManifestFormat = {
    CSV = "CSV",
}

M.Gid = {
    NONE = "NONE",
    INT_VALUE = "INT_VALUE",
    NAME = "NAME",
    BOTH = "BOTH",
}

M.LogLevel = {
    OFF = "OFF",
    BASIC = "BASIC",
    TRANSFER = "TRANSFER",
}

M.Mtime = {
    NONE = "NONE",
    PRESERVE = "PRESERVE",
}

M.ObjectTags = {
    PRESERVE = "PRESERVE",
    NONE = "NONE",
}

M.OverwriteMode = {
    ALWAYS = "ALWAYS",
    NEVER = "NEVER",
}

M.PosixPermissions = {
    NONE = "NONE",
    PRESERVE = "PRESERVE",
}

M.PreserveDeletedFiles = {
    PRESERVE = "PRESERVE",
    REMOVE = "REMOVE",
}

M.PreserveDevices = {
    NONE = "NONE",
    PRESERVE = "PRESERVE",
}

M.SmbSecurityDescriptorCopyFlags = {
    NONE = "NONE",
    OWNER_DACL = "OWNER_DACL",
    OWNER_DACL_SACL = "OWNER_DACL_SACL",
}

M.TaskQueueing = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TransferMode = {
    CHANGED = "CHANGED",
    ALL = "ALL",
}

M.Uid = {
    NONE = "NONE",
    INT_VALUE = "INT_VALUE",
    NAME = "NAME",
    BOTH = "BOTH",
}

M.VerifyMode = {
    POINT_IN_TIME_CONSISTENT = "POINT_IN_TIME_CONSISTENT",
    ONLY_FILES_TRANSFERRED = "ONLY_FILES_TRANSFERRED",
    NONE = "NONE",
}

M.ScheduleStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TaskMode = {
    BASIC = "BASIC",
    ENHANCED = "ENHANCED",
}

M.ObjectVersionIds = {
    INCLUDE = "INCLUDE",
    NONE = "NONE",
}

M.ReportOutputType = {
    SUMMARY_ONLY = "SUMMARY_ONLY",
    STANDARD = "STANDARD",
}

M.ReportLevel = {
    ERRORS_ONLY = "ERRORS_ONLY",
    SUCCESSES_AND_ERRORS = "SUCCESSES_AND_ERRORS",
}

M.EndpointType = {
    PUBLIC = "PUBLIC",
    PRIVATE_LINK = "PRIVATE_LINK",
    FIPS = "FIPS",
    FIPS_PRIVATE_LINK = "FIPS_PRIVATE_LINK",
}

M.ScheduleDisabledBy = {
    USER = "USER",
    SERVICE = "SERVICE",
}

M.TaskStatus = {
    AVAILABLE = "AVAILABLE",
    CREATING = "CREATING",
    QUEUED = "QUEUED",
    RUNNING = "RUNNING",
    UNAVAILABLE = "UNAVAILABLE",
}

M.PhaseStatus = {
    PENDING = "PENDING",
    SUCCESS = "SUCCESS",
    ERROR = "ERROR",
}

M.TaskExecutionStatus = {
    QUEUED = "QUEUED",
    CANCELLING = "CANCELLING",
    LAUNCHING = "LAUNCHING",
    PREPARING = "PREPARING",
    TRANSFERRING = "TRANSFERRING",
    VERIFYING = "VERIFYING",
    SUCCESS = "SUCCESS",
    ERROR = "ERROR",
}

M.LocationFilterName = {
    LocationUri = "LocationUri",
    LocationType = "LocationType",
    CreationTime = "CreationTime",
}

M.Operator = {
    EQ = "Equals",
    NE = "NotEquals",
    IN = "In",
    LE = "LessThanOrEqual",
    LT = "LessThan",
    GE = "GreaterThanOrEqual",
    GT = "GreaterThan",
    CONTAINS = "Contains",
    NOT_CONTAINS = "NotContains",
    BEGINS_WITH = "BeginsWith",
}

M.TaskFilterName = {
    LocationId = "LocationId",
    CreationTime = "CreationTime",
}

return M
