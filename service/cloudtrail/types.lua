local M = {}

M.EventCategoryAggregation = {
    Data = "Data",
}

M.Template = {
    API_ACTIVITY = "API_ACTIVITY",
    RESOURCE_ACCESS = "RESOURCE_ACCESS",
    USER_ACTIONS = "USER_ACTIONS",
}

M.BillingMode = {
    EXTENDABLE_RETENTION_PRICING = "EXTENDABLE_RETENTION_PRICING",
    FIXED_RETENTION_PRICING = "FIXED_RETENTION_PRICING",
}

M.QueryStatus = {
    QUEUED = "QUEUED",
    RUNNING = "RUNNING",
    FINISHED = "FINISHED",
    FAILED = "FAILED",
    CANCELLED = "CANCELLED",
    TIMED_OUT = "TIMED_OUT",
}

M.DestinationType = {
    EVENT_DATA_STORE = "EVENT_DATA_STORE",
    AWS_SERVICE = "AWS_SERVICE",
}

M.RefreshScheduleFrequencyUnit = {
    HOURS = "HOURS",
    DAYS = "DAYS",
}

M.RefreshScheduleStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.DashboardType = {
    MANAGED = "MANAGED",
    CUSTOM = "CUSTOM",
}

M.EventDataStoreStatus = {
    CREATED = "CREATED",
    ENABLED = "ENABLED",
    PENDING_DELETION = "PENDING_DELETION",
    STARTING_INGESTION = "STARTING_INGESTION",
    STOPPING_INGESTION = "STOPPING_INGESTION",
    STOPPED_INGESTION = "STOPPED_INGESTION",
}

M.DeliveryStatus = {
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    FAILED_SIGNING_FILE = "FAILED_SIGNING_FILE",
    PENDING = "PENDING",
    RESOURCE_NOT_FOUND = "RESOURCE_NOT_FOUND",
    ACCESS_DENIED = "ACCESS_DENIED",
    ACCESS_DENIED_SIGNING_FILE = "ACCESS_DENIED_SIGNING_FILE",
    CANCELLED = "CANCELLED",
    UNKNOWN = "UNKNOWN",
}

M.FederationStatus = {
    ENABLING = "ENABLING",
    ENABLED = "ENABLED",
    DISABLING = "DISABLING",
    DISABLED = "DISABLED",
}

M.DashboardStatus = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    UPDATING = "UPDATING",
    UPDATED = "UPDATED",
    DELETING = "DELETING",
}

M.Type = {
    TagContext = "TagContext",
    RequestContext = "RequestContext",
}

M.MaxEventSize = {
    Standard = "Standard",
    Large = "Large",
}

M.ReadWriteType = {
    ReadOnly = "ReadOnly",
    WriteOnly = "WriteOnly",
    All = "All",
}

M.ImportStatus = {
    INITIALIZING = "INITIALIZING",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    STOPPED = "STOPPED",
    COMPLETED = "COMPLETED",
}

M.SourceEventCategory = {
    Management = "Management",
    Data = "Data",
}

M.InsightType = {
    ApiCallRateInsight = "ApiCallRateInsight",
    ApiErrorRateInsight = "ApiErrorRateInsight",
}

M.ImportFailureStatus = {
    FAILED = "FAILED",
    RETRY = "RETRY",
    SUCCEEDED = "SUCCEEDED",
}

M.ListInsightsDataType = {
    INSIGHTS_EVENTS = "InsightsEvents",
}

M.ListInsightsDataDimensionKey = {
    EVENT_ID = "EventId",
    EVENT_NAME = "EventName",
    EVENT_SOURCE = "EventSource",
}

M.InsightsMetricDataType = {
    FILL_WITH_ZEROS = "FillWithZeros",
    NON_ZERO_DATA = "NonZeroData",
}

M.EventCategory = {
    Insight = "insight",
}

M.LookupAttributeKey = {
    EVENT_ID = "EventId",
    EVENT_NAME = "EventName",
    READ_ONLY = "ReadOnly",
    USERNAME = "Username",
    RESOURCE_TYPE = "ResourceType",
    RESOURCE_NAME = "ResourceName",
    EVENT_SOURCE = "EventSource",
    ACCESS_KEY_ID = "AccessKeyId",
}

return M
