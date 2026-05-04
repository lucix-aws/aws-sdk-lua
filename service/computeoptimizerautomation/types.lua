local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

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

M.AccountInfo = {
    type = "structure",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        organizationRuleMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        lastUpdatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.AssociateAccountsInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.AssociateAccountsOutput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
        },
        errors = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ForbiddenException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IdempotencyTokenInUseException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.IdempotentParameterMismatchException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidParameterValueException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.NotManagementAccountException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OptInRequiredException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceUnavailableException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SavingsEstimationMode = {
    BEFORE_DISCOUNT = "BeforeDiscount",
    AFTER_DISCOUNT = "AfterDiscount",
}

M.EstimatedMonthlySavings = {
    type = "structure",
    members = {
        currency = {
            type = "string",
            traits = {
                required = true,
            },
        },
        beforeDiscountSavings = {
            type = "number",
            traits = {
                required = true,
            },
        },
        afterDiscountSavings = {
            type = "number",
            traits = {
                required = true,
            },
        },
        savingsEstimationMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
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

M.AutomationEvent = {
    type = "structure",
    members = {
        eventId = {
            type = "string",
        },
        eventDescription = {
            type = "string",
        },
        eventType = {
            type = "string",
        },
        eventStatus = {
            type = "string",
        },
        eventStatusReason = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        recommendedActionId = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        region = {
            type = "string",
        },
        ruleId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        createdTimestamp = {
            type = "timestamp",
        },
        completedTimestamp = {
            type = "timestamp",
        },
        estimatedMonthlySavings = {
            type = "structure",
        },
    },
}

M.AutomationEventFilterName = {
    ACCOUNT_ID = "AccountId",
    RESOURCE_TYPE = "ResourceType",
    EVENT_TYPE = "EventType",
    EVENT_STATUS = "EventStatus",
}

M.AutomationEventFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
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

M.AutomationEventStep = {
    type = "structure",
    members = {
        eventId = {
            type = "string",
        },
        stepId = {
            type = "string",
        },
        stepType = {
            type = "string",
        },
        stepStatus = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        startTimestamp = {
            type = "timestamp",
        },
        completedTimestamp = {
            type = "timestamp",
        },
        estimatedMonthlySavings = {
            type = "structure",
        },
    },
}

M.SummaryDimensionKey = {
    EVENT_STATUS = "EventStatus",
}

M.SummaryDimension = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TimePeriod = {
    type = "structure",
    members = {
        startTimeInclusive = {
            type = "timestamp",
        },
        endTimeExclusive = {
            type = "timestamp",
        },
    },
}

M.SummaryTotals = {
    type = "structure",
    members = {
        automationEventCount = {
            type = "number",
        },
        estimatedMonthlySavings = {
            type = "structure",
        },
    },
}

M.AutomationEventSummary = {
    type = "structure",
    members = {
        key = {
            type = "string",
        },
        dimensions = {
            type = "list",
            member_type = "structure",
        },
        timePeriod = {
            type = "structure",
        },
        total = {
            type = "structure",
        },
    },
}

M.RuleApplyOrder = {
    BEFORE_ACCOUNT_RULES = "BeforeAccountRules",
    AFTER_ACCOUNT_RULES = "AfterAccountRules",
}

M.OrganizationConfiguration = {
    type = "structure",
    members = {
        ruleApplyOrder = {
            type = "string",
        },
        accountIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.RecommendedActionType = {
    SNAPSHOT_AND_DELETE_UNATTACHED_EBS_VOLUME = "SnapshotAndDeleteUnattachedEbsVolume",
    UPGRADE_EBS_VOLUME_TYPE = "UpgradeEbsVolumeType",
}

M.RuleType = {
    ORGANIZATIONAL_RULE = "OrganizationRule",
    ACCOUNT_RULE = "AccountRule",
}

M.Schedule = {
    type = "structure",
    members = {
        scheduleExpression = {
            type = "string",
        },
        scheduleExpressionTimezone = {
            type = "string",
        },
        executionWindowInMinutes = {
            type = "number",
        },
    },
}

M.RuleStatus = {
    ACTIVE = "Active",
    INACTIVE = "Inactive",
}

M.AutomationRule = {
    type = "structure",
    members = {
        ruleArn = {
            type = "string",
        },
        ruleId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        ruleType = {
            type = "string",
        },
        ruleRevision = {
            type = "number",
        },
        accountId = {
            type = "string",
        },
        organizationConfiguration = {
            type = "structure",
        },
        priority = {
            type = "string",
        },
        recommendedActionTypes = {
            type = "list",
            member_type = "string",
        },
        schedule = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        createdTimestamp = {
            type = "timestamp",
        },
        lastUpdatedTimestamp = {
            type = "timestamp",
        },
    },
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

M.IntegerCriteriaCondition = {
    type = "structure",
    members = {
        comparison = {
            type = "string",
        },
        values = {
            type = "list",
            member_type = "number",
        },
    },
}

M.StringCriteriaCondition = {
    type = "structure",
    members = {
        comparison = {
            type = "string",
        },
        values = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DoubleCriteriaCondition = {
    type = "structure",
    members = {
        comparison = {
            type = "string",
        },
        values = {
            type = "list",
            member_type = "number",
        },
    },
}

M.ResourceTagsCriteriaCondition = {
    type = "structure",
    members = {
        comparison = {
            type = "string",
        },
        key = {
            type = "string",
        },
        values = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Criteria = {
    type = "structure",
    members = {
        region = {
            type = "list",
            member_type = "structure",
        },
        resourceArn = {
            type = "list",
            member_type = "structure",
        },
        ebsVolumeType = {
            type = "list",
            member_type = "structure",
        },
        ebsVolumeSizeInGib = {
            type = "list",
            member_type = "structure",
        },
        estimatedMonthlySavings = {
            type = "list",
            member_type = "structure",
        },
        resourceTag = {
            type = "list",
            member_type = "structure",
        },
        lookBackPeriodInDays = {
            type = "list",
            member_type = "structure",
        },
        restartNeeded = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateAutomationRuleInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        ruleType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        organizationConfiguration = {
            type = "structure",
        },
        priority = {
            type = "string",
        },
        recommendedActionTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        criteria = {
            type = "structure",
        },
        schedule = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.CreateAutomationRuleOutput = {
    type = "structure",
    members = {
        ruleArn = {
            type = "string",
        },
        ruleId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        ruleType = {
            type = "string",
        },
        ruleRevision = {
            type = "number",
        },
        organizationConfiguration = {
            type = "structure",
        },
        priority = {
            type = "string",
        },
        recommendedActionTypes = {
            type = "list",
            member_type = "string",
        },
        criteria = {
            type = "structure",
        },
        schedule = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        createdTimestamp = {
            type = "timestamp",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DeleteAutomationRuleInput = {
    type = "structure",
    members = {
        ruleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleRevision = {
            type = "number",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.DeleteAutomationRuleOutput = {
    type = "structure",
}

M.DisassociateAccountsInput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.DisassociateAccountsOutput = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
        },
        errors = {
            type = "list",
            member_type = "string",
        },
    },
}

M.GetAutomationEventInput = {
    type = "structure",
    members = {
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAutomationEventOutput = {
    type = "structure",
    members = {
        eventId = {
            type = "string",
        },
        eventDescription = {
            type = "string",
        },
        eventType = {
            type = "string",
        },
        eventStatus = {
            type = "string",
        },
        eventStatusReason = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        recommendedActionId = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        region = {
            type = "string",
        },
        ruleId = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        createdTimestamp = {
            type = "timestamp",
        },
        completedTimestamp = {
            type = "timestamp",
        },
        estimatedMonthlySavings = {
            type = "structure",
        },
    },
}

M.GetAutomationRuleInput = {
    type = "structure",
    members = {
        ruleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAutomationRuleOutput = {
    type = "structure",
    members = {
        ruleArn = {
            type = "string",
        },
        ruleId = {
            type = "string",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        ruleType = {
            type = "string",
        },
        ruleRevision = {
            type = "number",
        },
        accountId = {
            type = "string",
        },
        organizationConfiguration = {
            type = "structure",
        },
        priority = {
            type = "string",
        },
        recommendedActionTypes = {
            type = "list",
            member_type = "string",
        },
        criteria = {
            type = "structure",
        },
        schedule = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        tags = {
            type = "list",
            member_type = "structure",
        },
        createdTimestamp = {
            type = "timestamp",
        },
        lastUpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.GetEnrollmentConfigurationInput = {
    type = "structure",
}

M.GetEnrollmentConfigurationOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        organizationRuleMode = {
            type = "string",
        },
        lastUpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.ListAccountsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAccountsOutput = {
    type = "structure",
    members = {
        accounts = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAutomationEventsInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "structure",
        },
        startTimeInclusive = {
            type = "timestamp",
        },
        endTimeExclusive = {
            type = "timestamp",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAutomationEventsOutput = {
    type = "structure",
    members = {
        automationEvents = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAutomationEventStepsInput = {
    type = "structure",
    members = {
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAutomationEventStepsOutput = {
    type = "structure",
    members = {
        automationEventSteps = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAutomationEventSummariesInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "structure",
        },
        startDateInclusive = {
            type = "string",
        },
        endDateExclusive = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAutomationEventSummariesOutput = {
    type = "structure",
    members = {
        automationEventSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.OrganizationScope = {
    type = "structure",
    members = {
        accountIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListAutomationRulePreviewInput = {
    type = "structure",
    members = {
        ruleType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        organizationScope = {
            type = "structure",
        },
        recommendedActionTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        criteria = {
            type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.EbsVolumeConfiguration = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        sizeInGib = {
            type = "number",
        },
        iops = {
            type = "number",
        },
        throughput = {
            type = "number",
        },
    },
}

M.EbsVolume = {
    type = "structure",
    members = {
        configuration = {
            type = "structure",
        },
    },
}

M.ResourceDetails = {
    type = "union",
    members = {
        ebsVolume = {
            type = "structure",
        },
    },
}

M.PreviewResult = {
    type = "structure",
    members = {
        recommendedActionId = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        region = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        lookBackPeriodInDays = {
            type = "number",
        },
        recommendedActionType = {
            type = "string",
        },
        currentResourceSummary = {
            type = "string",
        },
        currentResourceDetails = {
            type = "union",
        },
        recommendedResourceSummary = {
            type = "string",
        },
        recommendedResourceDetails = {
            type = "union",
        },
        restartNeeded = {
            type = "boolean",
        },
        estimatedMonthlySavings = {
            type = "structure",
        },
        resourceTags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListAutomationRulePreviewOutput = {
    type = "structure",
    members = {
        previewResults = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAutomationRulePreviewSummariesInput = {
    type = "structure",
    members = {
        ruleType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        organizationScope = {
            type = "structure",
        },
        recommendedActionTypes = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        criteria = {
            type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RulePreviewTotal = {
    type = "structure",
    members = {
        recommendedActionCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        estimatedMonthlySavings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PreviewResultSummary = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        total = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAutomationRulePreviewSummariesOutput = {
    type = "structure",
    members = {
        previewResultSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.Filter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAutomationRulesInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAutomationRulesOutput = {
    type = "structure",
    members = {
        automationRules = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
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

M.RecommendedActionFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRecommendedActionsInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RecommendedAction = {
    type = "structure",
    members = {
        recommendedActionId = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
        resourceId = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        region = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        lookBackPeriodInDays = {
            type = "number",
        },
        recommendedActionType = {
            type = "string",
        },
        currentResourceSummary = {
            type = "string",
        },
        currentResourceDetails = {
            type = "union",
        },
        recommendedResourceSummary = {
            type = "string",
        },
        recommendedResourceDetails = {
            type = "union",
        },
        restartNeeded = {
            type = "boolean",
        },
        estimatedMonthlySavings = {
            type = "structure",
        },
        resourceTags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListRecommendedActionsOutput = {
    type = "structure",
    members = {
        recommendedActions = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRecommendedActionSummariesInput = {
    type = "structure",
    members = {
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.RecommendedActionTotal = {
    type = "structure",
    members = {
        recommendedActionCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        estimatedMonthlySavings = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RecommendedActionSummary = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        total = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListRecommendedActionSummariesOutput = {
    type = "structure",
    members = {
        recommendedActionSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RollbackAutomationEventInput = {
    type = "structure",
    members = {
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.RollbackAutomationEventOutput = {
    type = "structure",
    members = {
        eventId = {
            type = "string",
        },
        eventStatus = {
            type = "string",
        },
    },
}

M.StartAutomationEventInput = {
    type = "structure",
    members = {
        recommendedActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.StartAutomationEventOutput = {
    type = "structure",
    members = {
        recommendedActionId = {
            type = "string",
        },
        eventId = {
            type = "string",
        },
        eventStatus = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleRevision = {
            type = "number",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleRevision = {
            type = "number",
            traits = {
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateAutomationRuleInput = {
    type = "structure",
    members = {
        ruleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleRevision = {
            type = "number",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        ruleType = {
            type = "string",
        },
        organizationConfiguration = {
            type = "structure",
        },
        priority = {
            type = "string",
        },
        recommendedActionTypes = {
            type = "list",
            member_type = "string",
        },
        criteria = {
            type = "structure",
        },
        schedule = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateAutomationRuleOutput = {
    type = "structure",
    members = {
        ruleArn = {
            type = "string",
        },
        ruleRevision = {
            type = "number",
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        ruleType = {
            type = "string",
        },
        organizationConfiguration = {
            type = "structure",
        },
        priority = {
            type = "string",
        },
        recommendedActionTypes = {
            type = "list",
            member_type = "string",
        },
        criteria = {
            type = "structure",
        },
        schedule = {
            type = "structure",
        },
        status = {
            type = "string",
        },
        createdTimestamp = {
            type = "timestamp",
        },
        lastUpdatedTimestamp = {
            type = "timestamp",
        },
    },
}

M.UpdateEnrollmentConfigurationInput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
    },
}

M.UpdateEnrollmentConfigurationOutput = {
    type = "structure",
    members = {
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statusReason = {
            type = "string",
        },
        lastUpdatedTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

return M
