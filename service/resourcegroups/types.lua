local M = {}

M.GroupLifecycleEventsDesiredStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
}

M.GroupLifecycleEventsStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    IN_PROGRESS = "IN_PROGRESS",
    ERROR = "ERROR",
}

M.QueryType = {
    TAG_FILTERS_1_0 = "TAG_FILTERS_1_0",
    CLOUDFORMATION_STACK_1_0 = "CLOUDFORMATION_STACK_1_0",
}

M.GroupConfigurationStatus = {
    UPDATING = "UPDATING",
    UPDATE_COMPLETE = "UPDATE_COMPLETE",
    UPDATE_FAILED = "UPDATE_FAILED",
}

M.TagSyncTaskStatus = {
    ACTIVE = "ACTIVE",
    ERROR = "ERROR",
}

M.ListGroupingStatusesFilterName = {
    Status = "status",
    ResourceArn = "resource-arn",
}

M.GroupingType = {
    GROUP = "GROUP",
    UNGROUP = "UNGROUP",
}

M.GroupingStatus = {
    SUCCESS = "SUCCESS",
    FAILED = "FAILED",
    IN_PROGRESS = "IN_PROGRESS",
    SKIPPED = "SKIPPED",
}

M.ResourceFilterName = {
    ResourceType = "resource-type",
}

M.QueryErrorCode = {
    CLOUDFORMATION_STACK_INACTIVE = "CLOUDFORMATION_STACK_INACTIVE",
    CLOUDFORMATION_STACK_NOT_EXISTING = "CLOUDFORMATION_STACK_NOT_EXISTING",
    CLOUDFORMATION_STACK_UNASSUMABLE_ROLE = "CLOUDFORMATION_STACK_UNASSUMABLE_ROLE",
    RESOURCE_TYPE_NOT_SUPPORTED = "RESOURCE_TYPE_NOT_SUPPORTED",
}

M.ResourceStatusValue = {
    Pending = "PENDING",
}

M.GroupFilterName = {
    ResourceType = "resource-type",
    ConfigurationType = "configuration-type",
    Owner = "owner",
    DisplayName = "display-name",
    Criticality = "criticality",
}

return M
