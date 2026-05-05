local M = {}

M.ApiDestinationState = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.ApiDestinationHttpMethod = {
    POST = "POST",
    GET = "GET",
    HEAD = "HEAD",
    OPTIONS = "OPTIONS",
    PUT = "PUT",
    PATCH = "PATCH",
    DELETE = "DELETE",
}

M.ArchiveState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.AssignPublicIp = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ReplayState = {
    STARTING = "STARTING",
    RUNNING = "RUNNING",
    CANCELLING = "CANCELLING",
    COMPLETED = "COMPLETED",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
}

M.ConnectionAuthorizationType = {
    BASIC = "BASIC",
    OAUTH_CLIENT_CREDENTIALS = "OAUTH_CLIENT_CREDENTIALS",
    API_KEY = "API_KEY",
}

M.ConnectionOAuthHttpMethod = {
    GET = "GET",
    POST = "POST",
    PUT = "PUT",
}

M.ConnectionState = {
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    AUTHORIZED = "AUTHORIZED",
    DEAUTHORIZED = "DEAUTHORIZED",
    AUTHORIZING = "AUTHORIZING",
    DEAUTHORIZING = "DEAUTHORIZING",
    ACTIVE = "ACTIVE",
    FAILED_CONNECTIVITY = "FAILED_CONNECTIVITY",
}

M.ReplicationState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.EndpointState = {
    ACTIVE = "ACTIVE",
    CREATING = "CREATING",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETE_FAILED = "DELETE_FAILED",
}

M.IncludeDetail = {
    NONE = "NONE",
    FULL = "FULL",
}

M.Level = {
    OFF = "OFF",
    ERROR = "ERROR",
    INFO = "INFO",
    TRACE = "TRACE",
}

M.EventSourceState = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
    DELETED = "DELETED",
}

M.RuleState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
    ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS = "ENABLED_WITH_ALL_CLOUDTRAIL_MANAGEMENT_EVENTS",
}

M.LaunchType = {
    EC2 = "EC2",
    FARGATE = "FARGATE",
    EXTERNAL = "EXTERNAL",
}

M.PlacementConstraintType = {
    DISTINCT_INSTANCE = "distinctInstance",
    MEMBER_OF = "memberOf",
}

M.PlacementStrategyType = {
    RANDOM = "random",
    SPREAD = "spread",
    BINPACK = "binpack",
}

M.PropagateTags = {
    TASK_DEFINITION = "TASK_DEFINITION",
}

return M
