local M = {}

M.DetailType = {
    BASIC = "BASIC",
    FULL = "FULL",
}

M.NotificationRuleStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.TargetStatus = {
    PENDING = "PENDING",
    ACTIVE = "ACTIVE",
    UNREACHABLE = "UNREACHABLE",
    INACTIVE = "INACTIVE",
    DEACTIVATED = "DEACTIVATED",
}

M.ListEventTypesFilterName = {
    RESOURCE_TYPE = "RESOURCE_TYPE",
    SERVICE_NAME = "SERVICE_NAME",
}

M.ListNotificationRulesFilterName = {
    EVENT_TYPE_ID = "EVENT_TYPE_ID",
    CREATED_BY = "CREATED_BY",
    RESOURCE = "RESOURCE",
    TARGET_ADDRESS = "TARGET_ADDRESS",
}

M.ListTargetsFilterName = {
    TARGET_TYPE = "TARGET_TYPE",
    TARGET_ADDRESS = "TARGET_ADDRESS",
    TARGET_STATUS = "TARGET_STATUS",
}

return M
