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
            member = { type = "string" },
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
            member = { type = "string" },
        },
        errors = {
            type = "list",
            member = { type = "string" },
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
            type = "double",
            traits = {
                required = true,
            },
        },
        afterDiscountSavings = {
            type = "double",
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
        estimatedMonthlySavings = M.EstimatedMonthlySavings,
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
            member = { type = "string" },
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
        estimatedMonthlySavings = M.EstimatedMonthlySavings,
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
            type = "integer",
        },
        estimatedMonthlySavings = M.EstimatedMonthlySavings,
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
            member = M.SummaryDimension,
        },
        timePeriod = M.TimePeriod,
        total = M.SummaryTotals,
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
            member = { type = "string" },
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
            type = "integer",
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
            type = "long",
        },
        accountId = {
            type = "string",
        },
        organizationConfiguration = M.OrganizationConfiguration,
        priority = {
            type = "string",
        },
        recommendedActionTypes = {
            type = "list",
            member = { type = "string" },
        },
        schedule = M.Schedule,
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
            member = { type = "integer" },
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
            member = { type = "string" },
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
            member = { type = "double" },
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
            member = { type = "string" },
        },
    },
}

M.Criteria = {
    type = "structure",
    members = {
        region = {
            type = "list",
            member = M.StringCriteriaCondition,
        },
        resourceArn = {
            type = "list",
            member = M.StringCriteriaCondition,
        },
        ebsVolumeType = {
            type = "list",
            member = M.StringCriteriaCondition,
        },
        ebsVolumeSizeInGib = {
            type = "list",
            member = M.IntegerCriteriaCondition,
        },
        estimatedMonthlySavings = {
            type = "list",
            member = M.DoubleCriteriaCondition,
        },
        resourceTag = {
            type = "list",
            member = M.ResourceTagsCriteriaCondition,
        },
        lookBackPeriodInDays = {
            type = "list",
            member = M.IntegerCriteriaCondition,
        },
        restartNeeded = {
            type = "list",
            member = M.StringCriteriaCondition,
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
        organizationConfiguration = M.OrganizationConfiguration,
        priority = {
            type = "string",
        },
        recommendedActionTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        criteria = M.Criteria,
        schedule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Schedule }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
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
            type = "long",
        },
        organizationConfiguration = M.OrganizationConfiguration,
        priority = {
            type = "string",
        },
        recommendedActionTypes = {
            type = "list",
            member = { type = "string" },
        },
        criteria = M.Criteria,
        schedule = M.Schedule,
        status = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
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
            type = "long",
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
            member = { type = "string" },
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
            member = { type = "string" },
        },
        errors = {
            type = "list",
            member = { type = "string" },
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
        estimatedMonthlySavings = M.EstimatedMonthlySavings,
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
            type = "long",
        },
        accountId = {
            type = "string",
        },
        organizationConfiguration = M.OrganizationConfiguration,
        priority = {
            type = "string",
        },
        recommendedActionTypes = {
            type = "list",
            member = { type = "string" },
        },
        criteria = M.Criteria,
        schedule = M.Schedule,
        status = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
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
            type = "integer",
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
            member = M.AccountInfo,
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
            member = M.AutomationEventFilter,
        },
        startTimeInclusive = {
            type = "timestamp",
        },
        endTimeExclusive = {
            type = "timestamp",
        },
        maxResults = {
            type = "integer",
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
            member = M.AutomationEvent,
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
            type = "integer",
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
            member = M.AutomationEventStep,
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
            member = M.AutomationEventFilter,
        },
        startDateInclusive = {
            type = "string",
        },
        endDateExclusive = {
            type = "string",
        },
        maxResults = {
            type = "integer",
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
            member = M.AutomationEventSummary,
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
            member = { type = "string" },
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
        organizationScope = M.OrganizationScope,
        recommendedActionTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        criteria = M.Criteria,
        maxResults = {
            type = "integer",
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
            type = "integer",
        },
        iops = {
            type = "integer",
        },
        throughput = {
            type = "integer",
        },
    },
}

M.EbsVolume = {
    type = "structure",
    members = {
        configuration = M.EbsVolumeConfiguration,
    },
}

M.ResourceDetails = {
    type = "union",
    members = {
        ebsVolume = M.EbsVolume,
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
            type = "integer",
        },
        recommendedActionType = {
            type = "string",
        },
        currentResourceSummary = {
            type = "string",
        },
        currentResourceDetails = M.ResourceDetails,
        recommendedResourceSummary = {
            type = "string",
        },
        recommendedResourceDetails = M.ResourceDetails,
        restartNeeded = {
            type = "boolean",
        },
        estimatedMonthlySavings = M.EstimatedMonthlySavings,
        resourceTags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListAutomationRulePreviewOutput = {
    type = "structure",
    members = {
        previewResults = {
            type = "list",
            member = M.PreviewResult,
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
        organizationScope = M.OrganizationScope,
        recommendedActionTypes = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        criteria = M.Criteria,
        maxResults = {
            type = "integer",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        estimatedMonthlySavings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EstimatedMonthlySavings }),
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
        total = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RulePreviewTotal }),
    },
}

M.ListAutomationRulePreviewSummariesOutput = {
    type = "structure",
    members = {
        previewResultSummaries = {
            type = "list",
            member = M.PreviewResultSummary,
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
            member = { type = "string" },
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
            member = M.Filter,
        },
        maxResults = {
            type = "integer",
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
            member = M.AutomationRule,
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
            member = { type = "string" },
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
            member = M.RecommendedActionFilter,
        },
        maxResults = {
            type = "integer",
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
            type = "integer",
        },
        recommendedActionType = {
            type = "string",
        },
        currentResourceSummary = {
            type = "string",
        },
        currentResourceDetails = M.ResourceDetails,
        recommendedResourceSummary = {
            type = "string",
        },
        recommendedResourceDetails = M.ResourceDetails,
        restartNeeded = {
            type = "boolean",
        },
        estimatedMonthlySavings = M.EstimatedMonthlySavings,
        resourceTags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ListRecommendedActionsOutput = {
    type = "structure",
    members = {
        recommendedActions = {
            type = "list",
            member = M.RecommendedAction,
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
            member = M.RecommendedActionFilter,
        },
        maxResults = {
            type = "integer",
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
            type = "integer",
            traits = {
                required = true,
            },
        },
        estimatedMonthlySavings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EstimatedMonthlySavings }),
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
        total = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RecommendedActionTotal }),
    },
}

M.ListRecommendedActionSummariesOutput = {
    type = "structure",
    members = {
        recommendedActionSummaries = {
            type = "list",
            member = M.RecommendedActionSummary,
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
            member = M.Tag,
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
            type = "long",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
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
            type = "long",
            traits = {
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
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
            type = "long",
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
        organizationConfiguration = M.OrganizationConfiguration,
        priority = {
            type = "string",
        },
        recommendedActionTypes = {
            type = "list",
            member = { type = "string" },
        },
        criteria = M.Criteria,
        schedule = M.Schedule,
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
            type = "long",
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
        organizationConfiguration = M.OrganizationConfiguration,
        priority = {
            type = "string",
        },
        recommendedActionTypes = {
            type = "list",
            member = { type = "string" },
        },
        criteria = M.Criteria,
        schedule = M.Schedule,
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
