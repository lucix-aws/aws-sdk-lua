local M = {}

M.AcceleratorName = {
    T4 = "t4",
    A10G = "a10g",
    L4 = "l4",
    L40S = "l40s",
    RTX_PRO_SERVER_6000 = "rtx-pro-server-6000",
}

M.AcceleratorType = {
    GPU = "gpu",
}

M.MembershipLevel = {
    VIEWER = "VIEWER",
    CONTRIBUTOR = "CONTRIBUTOR",
    OWNER = "OWNER",
    MANAGER = "MANAGER",
}

M.DeadlinePrincipalType = {
    USER = "USER",
    GROUP = "GROUP",
}

M.ServiceQuotaExceededExceptionReason = {
    SERVICE_QUOTA_EXCEEDED_EXCEPTION = "SERVICE_QUOTA_EXCEEDED_EXCEPTION",
    KMS_KEY_LIMIT_EXCEEDED = "KMS_KEY_LIMIT_EXCEEDED",
    DEPENDENCY_LIMIT_EXCEEDED = "DEPENDENCY_LIMIT_EXCEEDED",
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "UNKNOWN_OPERATION",
    CANNOT_PARSE = "CANNOT_PARSE",
    FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED",
    OTHER = "OTHER",
}

M.ConflictExceptionReason = {
    CONFLICT_EXCEPTION = "CONFLICT_EXCEPTION",
    CONCURRENT_MODIFICATION = "CONCURRENT_MODIFICATION",
    RESOURCE_ALREADY_EXISTS = "RESOURCE_ALREADY_EXISTS",
    RESOURCE_IN_USE = "RESOURCE_IN_USE",
    STATUS_CONFLICT = "STATUS_CONFLICT",
}

M.JobAttachmentsFileSystem = {
    COPIED = "COPIED",
    VIRTUAL = "VIRTUAL",
}

M.PathFormat = {
    WINDOWS = "windows",
    POSIX = "posix",
}

M.AutoScalingMode = {
    NO_SCALING = "NO_SCALING",
    EVENT_BASED_AUTO_SCALING = "EVENT_BASED_AUTO_SCALING",
}

M.AutoScalingStatus = {
    GROWING = "GROWING",
    STEADY = "STEADY",
    SHRINKING = "SHRINKING",
}

M.BatchGetJobErrorCode = {
    InternalServerErrorException = "InternalServerErrorException",
    ResourceNotFoundException = "ResourceNotFoundException",
    ValidationException = "ValidationException",
    AccessDeniedException = "AccessDeniedException",
    ThrottlingException = "ThrottlingException",
}

M.JobLifecycleStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    CREATE_COMPLETE = "CREATE_COMPLETE",
    UPLOAD_IN_PROGRESS = "UPLOAD_IN_PROGRESS",
    UPLOAD_FAILED = "UPLOAD_FAILED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_FAILED = "UPDATE_FAILED",
    UPDATE_SUCCEEDED = "UPDATE_SUCCEEDED",
    ARCHIVED = "ARCHIVED",
}

M.JobTargetTaskRunStatus = {
    READY = "READY",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    CANCELED = "CANCELED",
    SUSPENDED = "SUSPENDED",
    PENDING = "PENDING",
}

M.TaskRunStatus = {
    PENDING = "PENDING",
    READY = "READY",
    ASSIGNED = "ASSIGNED",
    STARTING = "STARTING",
    SCHEDULED = "SCHEDULED",
    INTERRUPTING = "INTERRUPTING",
    RUNNING = "RUNNING",
    SUSPENDED = "SUSPENDED",
    CANCELED = "CANCELED",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    NOT_COMPATIBLE = "NOT_COMPATIBLE",
}

M.RunAs = {
    QUEUE_CONFIGURED_USER = "QUEUE_CONFIGURED_USER",
    WORKER_AGENT_USER = "WORKER_AGENT_USER",
}

M.JobEntityErrorCode = {
    AccessDeniedException = "AccessDeniedException",
    InternalServerException = "InternalServerException",
    ValidationException = "ValidationException",
    ResourceNotFoundException = "ResourceNotFoundException",
    MaxPayloadSizeExceeded = "MaxPayloadSizeExceeded",
    ConflictException = "ConflictException",
}

M.BatchGetSessionErrorCode = {
    InternalServerErrorException = "InternalServerErrorException",
    ResourceNotFoundException = "ResourceNotFoundException",
    ValidationException = "ValidationException",
}

M.SessionLifecycleStatus = {
    STARTED = "STARTED",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_SUCCEEDED = "UPDATE_SUCCEEDED",
    UPDATE_FAILED = "UPDATE_FAILED",
    ENDED = "ENDED",
}

M.SessionLifecycleTargetStatus = {
    ENDED = "ENDED",
}

M.BatchGetSessionActionErrorCode = {
    InternalServerErrorException = "InternalServerErrorException",
    ResourceNotFoundException = "ResourceNotFoundException",
    ValidationException = "ValidationException",
}

M.SessionActionStatus = {
    ASSIGNED = "ASSIGNED",
    RUNNING = "RUNNING",
    CANCELING = "CANCELING",
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    INTERRUPTED = "INTERRUPTED",
    CANCELED = "CANCELED",
    NEVER_ATTEMPTED = "NEVER_ATTEMPTED",
    SCHEDULED = "SCHEDULED",
    RECLAIMING = "RECLAIMING",
    RECLAIMED = "RECLAIMED",
}

M.BatchGetStepErrorCode = {
    InternalServerErrorException = "InternalServerErrorException",
    ResourceNotFoundException = "ResourceNotFoundException",
    ValidationException = "ValidationException",
    AccessDeniedException = "AccessDeniedException",
    ThrottlingException = "ThrottlingException",
}

M.StepLifecycleStatus = {
    CREATE_COMPLETE = "CREATE_COMPLETE",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    UPDATE_FAILED = "UPDATE_FAILED",
    UPDATE_SUCCEEDED = "UPDATE_SUCCEEDED",
}

M.RangeConstraint = {
    CONTIGUOUS = "CONTIGUOUS",
    NONCONTIGUOUS = "NONCONTIGUOUS",
}

M.StepParameterType = {
    INT = "INT",
    FLOAT = "FLOAT",
    STRING = "STRING",
    PATH = "PATH",
    CHUNK_INT = "CHUNK_INT",
}

M.StepTargetTaskRunStatus = {
    READY = "READY",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    CANCELED = "CANCELED",
    SUSPENDED = "SUSPENDED",
    PENDING = "PENDING",
}

M.BatchGetTaskErrorCode = {
    InternalServerErrorException = "InternalServerErrorException",
    ResourceNotFoundException = "ResourceNotFoundException",
    ValidationException = "ValidationException",
    AccessDeniedException = "AccessDeniedException",
    ThrottlingException = "ThrottlingException",
}

M.TaskTargetRunStatus = {
    READY = "READY",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
    CANCELED = "CANCELED",
    SUSPENDED = "SUSPENDED",
    PENDING = "PENDING",
}

M.BatchGetWorkerErrorCode = {
    InternalServerErrorException = "InternalServerErrorException",
    ResourceNotFoundException = "ResourceNotFoundException",
    ValidationException = "ValidationException",
}

M.WorkerStatus = {
    CREATED = "CREATED",
    STARTED = "STARTED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
    NOT_RESPONDING = "NOT_RESPONDING",
    NOT_COMPATIBLE = "NOT_COMPATIBLE",
    RUNNING = "RUNNING",
    IDLE = "IDLE",
}

M.UpdateJobLifecycleStatus = {
    ARCHIVED = "ARCHIVED",
}

M.BatchUpdateJobErrorCode = {
    ConflictException = "ConflictException",
    InternalServerErrorException = "InternalServerErrorException",
    ResourceNotFoundException = "ResourceNotFoundException",
    ValidationException = "ValidationException",
    AccessDeniedException = "AccessDeniedException",
    ThrottlingException = "ThrottlingException",
}

M.BatchUpdateTaskErrorCode = {
    ConflictException = "ConflictException",
    InternalServerErrorException = "InternalServerErrorException",
    ResourceNotFoundException = "ResourceNotFoundException",
    ValidationException = "ValidationException",
    AccessDeniedException = "AccessDeniedException",
    ThrottlingException = "ThrottlingException",
}

M.BudgetActionType = {
    STOP_SCHEDULING_AND_COMPLETE_TASKS = "STOP_SCHEDULING_AND_COMPLETE_TASKS",
    STOP_SCHEDULING_AND_CANCEL_TASKS = "STOP_SCHEDULING_AND_CANCEL_TASKS",
}

M.BudgetStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.ComparisonOperator = {
    EQUAL = "EQUAL",
    NOT_EQUAL = "NOT_EQUAL",
    GREATER_THAN_EQUAL_TO = "GREATER_THAN_EQUAL_TO",
    GREATER_THAN = "GREATER_THAN",
    LESS_THAN_EQUAL_TO = "LESS_THAN_EQUAL_TO",
    LESS_THAN = "LESS_THAN",
    ANY_EQUALS = "ANY_EQUALS",
    ALL_NOT_EQUALS = "ALL_NOT_EQUALS",
}

M.CompletedStatus = {
    SUCCEEDED = "SUCCEEDED",
    FAILED = "FAILED",
    INTERRUPTED = "INTERRUPTED",
    CANCELED = "CANCELED",
    NEVER_ATTEMPTED = "NEVER_ATTEMPTED",
}

M.JobTemplateType = {
    JSON = "JSON",
    YAML = "YAML",
}

M.CpuArchitectureType = {
    X86_64 = "x86_64",
    ARM64 = "arm64",
}

M.TagPropagationMode = {
    NO_PROPAGATION = "NO_PROPAGATION",
    PROPAGATE_TAGS_TO_WORKERS_AT_LAUNCH = "PROPAGATE_TAGS_TO_WORKERS_AT_LAUNCH",
}

M.CustomerManagedFleetOperatingSystemFamily = {
    WINDOWS = "WINDOWS",
    LINUX = "LINUX",
    MACOS = "MACOS",
}

M.ServiceManagedFleetOperatingSystemFamily = {
    WINDOWS = "WINDOWS",
    LINUX = "LINUX",
}

M.Ec2MarketType = {
    ON_DEMAND = "on-demand",
    SPOT = "spot",
    WAIT_AND_SAVE = "wait-and-save",
}

M.CreateJobTargetTaskRunStatus = {
    READY = "READY",
    SUSPENDED = "SUSPENDED",
}

M.DefaultQueueBudgetAction = {
    NONE = "NONE",
    STOP_SCHEDULING_AND_COMPLETE_TASKS = "STOP_SCHEDULING_AND_COMPLETE_TASKS",
    STOP_SCHEDULING_AND_CANCEL_TASKS = "STOP_SCHEDULING_AND_CANCEL_TASKS",
}

M.EnvironmentTemplateType = {
    JSON = "JSON",
    YAML = "YAML",
}

M.FileSystemLocationType = {
    SHARED = "SHARED",
    LOCAL = "LOCAL",
}

M.StorageProfileOperatingSystemFamily = {
    WINDOWS = "WINDOWS",
    LINUX = "LINUX",
    MACOS = "MACOS",
}

M.FleetStatus = {
    ACTIVE = "ACTIVE",
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    SUSPENDED = "SUSPENDED",
}

M.UpdatedWorkerStatus = {
    STARTED = "STARTED",
    STOPPING = "STOPPING",
    STOPPED = "STOPPED",
}

M.DesiredWorkerStatus = {
    STOPPED = "STOPPED",
}

M.QueueBlockedReason = {
    NO_BUDGET_CONFIGURED = "NO_BUDGET_CONFIGURED",
    BUDGET_THRESHOLD_REACHED = "BUDGET_THRESHOLD_REACHED",
}

M.QueueStatus = {
    IDLE = "IDLE",
    SCHEDULING = "SCHEDULING",
    SCHEDULING_BLOCKED = "SCHEDULING_BLOCKED",
}

M.DependencyConsumerResolutionStatus = {
    RESOLVED = "RESOLVED",
    UNRESOLVED = "UNRESOLVED",
}

M.QueueFleetAssociationStatus = {
    ACTIVE = "ACTIVE",
    STOP_SCHEDULING_AND_COMPLETE_TASKS = "STOP_SCHEDULING_AND_COMPLETE_TASKS",
    STOP_SCHEDULING_AND_CANCEL_TASKS = "STOP_SCHEDULING_AND_CANCEL_TASKS",
    STOPPED = "STOPPED",
}

M.QueueLimitAssociationStatus = {
    ACTIVE = "ACTIVE",
    STOP_LIMIT_USAGE_AND_COMPLETE_TASKS = "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS",
    STOP_LIMIT_USAGE_AND_CANCEL_TASKS = "STOP_LIMIT_USAGE_AND_CANCEL_TASKS",
    STOPPED = "STOPPED",
}

M.UsageType = {
    COMPUTE = "COMPUTE",
    LICENSE = "LICENSE",
}

M.SessionsStatisticsAggregationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    TIMEOUT = "TIMEOUT",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.LicenseEndpointStatus = {
    CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS",
    DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS",
    READY = "READY",
    NOT_READY = "NOT_READY",
}

M.SearchTermMatchingType = {
    FUZZY_MATCH = "FUZZY_MATCH",
    CONTAINS = "CONTAINS",
}

M.LogicalOperator = {
    AND = "AND",
    OR = "OR",
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.UsageGroupByField = {
    QUEUE_ID = "QUEUE_ID",
    FLEET_ID = "FLEET_ID",
    JOB_ID = "JOB_ID",
    USER_ID = "USER_ID",
    USAGE_TYPE = "USAGE_TYPE",
    INSTANCE_TYPE = "INSTANCE_TYPE",
    LICENSE_PRODUCT = "LICENSE_PRODUCT",
}

M.Period = {
    HOURLY = "HOURLY",
    DAILY = "DAILY",
    WEEKLY = "WEEKLY",
    MONTHLY = "MONTHLY",
}

M.UsageStatistic = {
    SUM = "SUM",
    MIN = "MIN",
    MAX = "MAX",
    AVG = "AVG",
}

M.UpdateQueueFleetAssociationStatus = {
    ACTIVE = "ACTIVE",
    STOP_SCHEDULING_AND_COMPLETE_TASKS = "STOP_SCHEDULING_AND_COMPLETE_TASKS",
    STOP_SCHEDULING_AND_CANCEL_TASKS = "STOP_SCHEDULING_AND_CANCEL_TASKS",
}

M.UpdateQueueLimitAssociationStatus = {
    ACTIVE = "ACTIVE",
    STOP_LIMIT_USAGE_AND_COMPLETE_TASKS = "STOP_LIMIT_USAGE_AND_COMPLETE_TASKS",
    STOP_LIMIT_USAGE_AND_CANCEL_TASKS = "STOP_LIMIT_USAGE_AND_CANCEL_TASKS",
}

return M
