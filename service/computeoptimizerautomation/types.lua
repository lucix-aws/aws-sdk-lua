local M = {}

M.OrganizationRuleMode = {
    ANY_ALLOWED = "AnyAllowed",
    NONE_ALLOWED = "NoneAllowed",
}

M.EnrollmentStatus = {
    ACTIVE = "Active",
    INACTIVE = "Inactive",
    PENDING = "Pending",
    FAILED = "Failed",
}

M.SavingsEstimationMode = {
    BEFORE_DISCOUNT = "BeforeDiscount",
    AFTER_DISCOUNT = "AfterDiscount",
}

M.EventStatus = {
    READY = "Ready",
    IN_PROGRESS = "InProgress",
    COMPLETE = "Complete",
    FAILED = "Failed",
    CANCELLED = "Cancelled",
    ROLLBACK_READY = "RollbackReady",
    ROLLBACK_IN_PROGRESS = "RollbackInProgress",
    ROLLBACK_COMPLETE = "RollbackComplete",
    ROLLBACK_FAILED = "RollbackFailed",
}

M.EventType = {
    SNAPSHOT_AND_DELETE_UNATTACHED_EBS_VOLUME = "SnapshotAndDeleteUnattachedEbsVolume",
    UPGRADE_EBS_VOLUME_TYPE = "UpgradeEbsVolumeType",
}

M.ResourceType = {
    EBS_VOLUME = "EbsVolume",
}

M.AutomationEventFilterName = {
    ACCOUNT_ID = "AccountId",
    RESOURCE_TYPE = "ResourceType",
    EVENT_TYPE = "EventType",
    EVENT_STATUS = "EventStatus",
}

M.StepStatus = {
    READY = "Ready",
    IN_PROGRESS = "InProgress",
    COMPLETE = "Complete",
    FAILED = "Failed",
}

M.StepType = {
    CREATE_EBS_SNAPSHOT = "CreateEbsSnapshot",
    DELETE_EBS_VOLUME = "DeleteEbsVolume",
    MODIFY_EBS_VOLUME = "ModifyEbsVolume",
    CREATE_EBS_VOLUME = "CreateEbsVolume",
}

M.SummaryDimensionKey = {
    EVENT_STATUS = "EventStatus",
}

M.RuleApplyOrder = {
    BEFORE_ACCOUNT_RULES = "BeforeAccountRules",
    AFTER_ACCOUNT_RULES = "AfterAccountRules",
}

M.RecommendedActionType = {
    SNAPSHOT_AND_DELETE_UNATTACHED_EBS_VOLUME = "SnapshotAndDeleteUnattachedEbsVolume",
    UPGRADE_EBS_VOLUME_TYPE = "UpgradeEbsVolumeType",
}

M.RuleType = {
    ORGANIZATIONAL_RULE = "OrganizationRule",
    ACCOUNT_RULE = "AccountRule",
}

M.RuleStatus = {
    ACTIVE = "Active",
    INACTIVE = "Inactive",
}

M.AutomationRuleFilterName = {
    NAME = "Name",
    RECOMMENDED_ACTION_TYPE = "RecommendedActionType",
    STATUS = "Status",
    RULE_TYPE = "RuleType",
    ORGANIZATION_CONFIGURATION_RULE_APPLY_ORDER = "OrganizationConfigurationRuleApplyOrder",
    ACCOUNT_ID = "AccountId",
}

M.ComparisonOperator = {
    STRING_EQUALS = "StringEquals",
    STRING_NOT_EQUALS = "StringNotEquals",
    STRING_EQUALS_IGNORE_CASE = "StringEqualsIgnoreCase",
    STRING_NOT_EQUALS_IGNORE_CASE = "StringNotEqualsIgnoreCase",
    STRING_LIKE = "StringLike",
    STRING_NOT_LIKE = "StringNotLike",
    NUMERIC_EQUALS = "NumericEquals",
    NUMERIC_NOT_EQUALS = "NumericNotEquals",
    NUMERIC_LESS_THAN = "NumericLessThan",
    NUMERIC_LESS_THAN_EQUALS = "NumericLessThanEquals",
    NUMERIC_GREATER_THAN = "NumericGreaterThan",
    NUMERIC_GREATER_THAN_EQUALS = "NumericGreaterThanEquals",
}

M.RecommendedActionFilterName = {
    RESOURCE_TYPE = "ResourceType",
    RECOMMENDED_ACTION_TYPE = "RecommendedActionType",
    RESOURCE_ID = "ResourceId",
    LOOK_BACK_PERIOD_IN_DAYS = "LookBackPeriodInDays",
    CURRENT_RESOURCE_DETAILS_EBS_VOLUME_TYPE = "CurrentResourceDetailsEbsVolumeType",
    RESOURCE_TAGS_KEY = "ResourceTagsKey",
    RESOURCE_TAGS_VALUE = "ResourceTagsValue",
    ACCOUNT_ID = "AccountId",
    RESTART_NEEDED = "RestartNeeded",
}

return M
