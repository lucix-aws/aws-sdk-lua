local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceTag = {
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

M.VisualType = {
    LINE = "LINE",
    BAR = "BAR",
    STACK = "STACK",
}

M.GraphDisplayConfig = {
    type = "structure",
    members = {
        visualType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TableDisplayConfigStruct = {
    type = "structure",
}

M.DisplayConfig = {
    type = "union",
    members = {
        graph = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        table = {
            type = "structure",
        },
    },
}

M.MatchOption = {
    EQUALS = "EQUALS",
    ABSENT = "ABSENT",
    STARTS_WITH = "STARTS_WITH",
    ENDS_WITH = "ENDS_WITH",
    CONTAINS = "CONTAINS",
    GREATER_THAN_OR_EQUAL = "GREATER_THAN_OR_EQUAL",
    CASE_SENSITIVE = "CASE_SENSITIVE",
    CASE_INSENSITIVE = "CASE_INSENSITIVE",
}

M.CostCategoryValues = {
    type = "structure",
    members = {
        key = {
            type = "string",
        },
        values = {
            type = "list",
            member_type = "string",
        },
        matchOptions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Dimension = {
    AZ = "AZ",
    INSTANCE_TYPE = "INSTANCE_TYPE",
    LINKED_ACCOUNT = "LINKED_ACCOUNT",
    OPERATION = "OPERATION",
    PURCHASE_TYPE = "PURCHASE_TYPE",
    REGION = "REGION",
    SERVICE = "SERVICE",
    USAGE_TYPE = "USAGE_TYPE",
    USAGE_TYPE_GROUP = "USAGE_TYPE_GROUP",
    RECORD_TYPE = "RECORD_TYPE",
    RESOURCE_ID = "RESOURCE_ID",
    SUBSCRIPTION_ID = "SUBSCRIPTION_ID",
    TAG_KEY = "TAG_KEY",
    OPERATING_SYSTEM = "OPERATING_SYSTEM",
    TENANCY = "TENANCY",
    BILLING_ENTITY = "BILLING_ENTITY",
    RESERVATION_ID = "RESERVATION_ID",
    COST_CATEGORY_NAME = "COST_CATEGORY_NAME",
    DATABASE_ENGINE = "DATABASE_ENGINE",
    LEGAL_ENTITY_NAME = "LEGAL_ENTITY_NAME",
    SAVINGS_PLANS_TYPE = "SAVINGS_PLANS_TYPE",
    INSTANCE_TYPE_FAMILY = "INSTANCE_TYPE_FAMILY",
    CACHE_ENGINE = "CACHE_ENGINE",
    DEPLOYMENT_OPTION = "DEPLOYMENT_OPTION",
    SCOPE = "SCOPE",
    PLATFORM = "PLATFORM",
}

M.DimensionValues = {
    type = "structure",
    members = {
        key = {
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
        matchOptions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.TagValues = {
    type = "structure",
    members = {
        key = {
            type = "string",
        },
        values = {
            type = "list",
            member_type = "string",
        },
        matchOptions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Granularity = {
    HOURLY = "HOURLY",
    DAILY = "DAILY",
    MONTHLY = "MONTHLY",
}

M.GroupDefinitionType = {
    DIMENSION = "DIMENSION",
    TAG = "TAG",
    COST_CATEGORY = "COST_CATEGORY",
}

M.GroupDefinition = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
        },
    },
}

M.MetricName = {
    AmortizedCost = "AmortizedCost",
    BlendedCost = "BlendedCost",
    NetAmortizedCost = "NetAmortizedCost",
    NetUnblendedCost = "NetUnblendedCost",
    NormalizedUsageAmount = "NormalizedUsageAmount",
    UnblendedCost = "UnblendedCost",
    UsageQuantity = "UsageQuantity",
    SpendCoveredBySavingsPlans = "SpendCoveredBySavingsPlans",
    Hour = "Hour",
    Unit = "Unit",
    Cost = "Cost",
}

M.DateTimeType = {
    ABSOLUTE = "ABSOLUTE",
    RELATIVE = "RELATIVE",
}

M.DateTimeValue = {
    type = "structure",
    members = {
        type = {
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

M.DateTimeRange = {
    type = "structure",
    members = {
        startTime = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDashboardOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SchedulePeriod = {
    type = "structure",
    members = {
        startTime = {
            type = "timestamp",
        },
        endTime = {
            type = "timestamp",
        },
    },
}

M.ScheduleState = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.ScheduleConfig = {
    type = "structure",
    members = {
        scheduleExpression = {
            type = "string",
        },
        scheduleExpressionTimeZone = {
            type = "string",
        },
        schedulePeriod = {
            type = "structure",
        },
        state = {
            type = "string",
        },
    },
}

M.ScheduledReportInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dashboardArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scheduledReportExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scheduleConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        widgetIds = {
            type = "list",
            member_type = "string",
        },
        widgetDateRangeOverride = {
            type = "structure",
        },
    },
}

M.CreateScheduledReportInput = {
    type = "structure",
    members = {
        scheduledReport = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        resourceTags = {
            type = "list",
            member_type = "structure",
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
    },
}

M.CreateScheduledReportOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDashboardInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDashboardOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteScheduledReportInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteScheduledReportOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecuteScheduledReportInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                http_header = "X-Amzn-Client-Token",
            },
        },
        dryRun = {
            type = "boolean",
        },
    },
}

M.HealthStatusCode = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
}

M.StatusReason = {
    DATA_SOURCE_ACCESS_DENIED = "DATA_SOURCE_ACCESS_DENIED",
    EXECUTION_ROLE_ASSUME_FAILED = "EXECUTION_ROLE_ASSUME_FAILED",
    EXECUTION_ROLE_INSUFFICIENT_PERMISSIONS = "EXECUTION_ROLE_INSUFFICIENT_PERMISSIONS",
    DASHBOARD_NOT_FOUND = "DASHBOARD_NOT_FOUND",
    DASHBOARD_ACCESS_DENIED = "DASHBOARD_ACCESS_DENIED",
    INTERNAL_FAILURE = "INTERNAL_FAILURE",
    WIDGET_ID_NOT_FOUND = "WIDGET_ID_NOT_FOUND",
}

M.HealthStatus = {
    type = "structure",
    members = {
        statusCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        lastRefreshedAt = {
            type = "timestamp",
        },
        statusReasons = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ExecuteScheduledReportOutput = {
    type = "structure",
    members = {
        healthStatus = {
            type = "structure",
        },
        executionTriggered = {
            type = "boolean",
        },
    },
}

M.GetDashboardInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DashboardType = {
    CUSTOM = "CUSTOM",
}

M.GetResourcePolicyInput = {
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

M.GetResourcePolicyOutput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        policyDocument = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetScheduledReportInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ScheduledReport = {
    type = "structure",
    members = {
        arn = {
            type = "string",
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dashboardArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scheduledReportExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scheduleConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        widgetIds = {
            type = "list",
            member_type = "string",
        },
        widgetDateRangeOverride = {
            type = "structure",
        },
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        lastExecutionAt = {
            type = "timestamp",
        },
        healthStatus = {
            type = "structure",
        },
    },
}

M.GetScheduledReportOutput = {
    type = "structure",
    members = {
        scheduledReport = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDashboardsInput = {
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

M.DashboardReference = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDashboardsOutput = {
    type = "structure",
    members = {
        dashboards = {
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

M.ListScheduledReportsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ScheduledReportSummary = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dashboardArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        scheduleExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        state = {
            type = "string",
            traits = {
                required = true,
            },
        },
        healthStatus = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        scheduleExpressionTimeZone = {
            type = "string",
        },
        widgetIds = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ListScheduledReportsOutput = {
    type = "structure",
    members = {
        scheduledReports = {
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
        resourceTags = {
            type = "list",
            member_type = "structure",
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
        resourceTags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
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
        resourceTagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateDashboardOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateScheduledReportInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
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
        dashboardArn = {
            type = "string",
        },
        scheduledReportExecutionRoleArn = {
            type = "string",
        },
        scheduleConfig = {
            type = "structure",
        },
        widgetIds = {
            type = "list",
            member_type = "string",
        },
        widgetDateRangeOverride = {
            type = "structure",
        },
        clearWidgetIds = {
            type = "boolean",
        },
        clearWidgetDateRangeOverride = {
            type = "boolean",
        },
    },
}

M.UpdateScheduledReportOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Expression = {
    type = "structure",
    members = {
        or = {
            type = "list",
            member_type = "structure",
        },
        and = {
            type = "list",
            member_type = "structure",
        },
        not = {
            type = "structure",
        },
        dimensions = {
            type = "structure",
        },
        tags = {
            type = "structure",
        },
        costCategories = {
            type = "structure",
        },
    },
}

M.CostAndUsageQuery = {
    type = "structure",
    members = {
        metrics = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        timeRange = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        granularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groupBy = {
            type = "list",
            member_type = "structure",
        },
        filter = {
            type = "structure",
        },
    },
}

M.ReservationCoverageQuery = {
    type = "structure",
    members = {
        timeRange = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        groupBy = {
            type = "list",
            member_type = "structure",
        },
        granularity = {
            type = "string",
        },
        filter = {
            type = "structure",
        },
        metrics = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ReservationUtilizationQuery = {
    type = "structure",
    members = {
        timeRange = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        groupBy = {
            type = "list",
            member_type = "structure",
        },
        granularity = {
            type = "string",
        },
        filter = {
            type = "structure",
        },
    },
}

M.SavingsPlansCoverageQuery = {
    type = "structure",
    members = {
        timeRange = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        metrics = {
            type = "list",
            member_type = "string",
        },
        granularity = {
            type = "string",
        },
        groupBy = {
            type = "list",
            member_type = "structure",
        },
        filter = {
            type = "structure",
        },
    },
}

M.SavingsPlansUtilizationQuery = {
    type = "structure",
    members = {
        timeRange = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        granularity = {
            type = "string",
        },
        filter = {
            type = "structure",
        },
    },
}

M.QueryParameters = {
    type = "union",
    members = {
        costAndUsage = {
            type = "structure",
        },
        savingsPlansCoverage = {
            type = "structure",
        },
        savingsPlansUtilization = {
            type = "structure",
        },
        reservationCoverage = {
            type = "structure",
        },
        reservationUtilization = {
            type = "structure",
        },
    },
}

M.WidgetConfig = {
    type = "structure",
    members = {
        queryParameters = {
            type = "union",
            traits = {
                required = true,
            },
        },
        displayConfig = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.Widget = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        width = {
            type = "number",
        },
        height = {
            type = "number",
        },
        horizontalOffset = {
            type = "number",
        },
        configs = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDashboardInput = {
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
        widgets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        resourceTags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GetDashboardOutput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        widgets = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        updatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDashboardInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        widgets = {
            type = "list",
            member_type = "structure",
        },
    },
}

return M
