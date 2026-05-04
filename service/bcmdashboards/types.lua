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
            key = { type = "string" },
            value = M.GraphDisplayConfig,
        },
        table = M.TableDisplayConfigStruct,
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
            member = { type = "string" },
        },
        matchOptions = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        matchOptions = {
            type = "list",
            member = { type = "string" },
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
            member = { type = "string" },
        },
        matchOptions = {
            type = "list",
            member = { type = "string" },
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
            traits = {
                default = "DIMENSION",
            },
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
        startTime = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateTimeValue }),
        endTime = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateTimeValue }),
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
        schedulePeriod = M.SchedulePeriod,
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
        scheduleConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScheduleConfig }),
        description = {
            type = "string",
        },
        widgetIds = {
            type = "list",
            member = { type = "string" },
        },
        widgetDateRangeOverride = M.DateTimeRange,
    },
}

M.CreateScheduledReportInput = {
    type = "structure",
    members = {
        scheduledReport = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScheduledReportInput }),
        resourceTags = {
            type = "list",
            member = M.ResourceTag,
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
            member = { type = "string" },
        },
    },
}

M.ExecuteScheduledReportOutput = {
    type = "structure",
    members = {
        healthStatus = M.HealthStatus,
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
        scheduleConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScheduleConfig }),
        description = {
            type = "string",
        },
        widgetIds = {
            type = "list",
            member = { type = "string" },
        },
        widgetDateRangeOverride = M.DateTimeRange,
        createdAt = {
            type = "timestamp",
        },
        updatedAt = {
            type = "timestamp",
        },
        lastExecutionAt = {
            type = "timestamp",
        },
        healthStatus = M.HealthStatus,
    },
}

M.GetScheduledReportOutput = {
    type = "structure",
    members = {
        scheduledReport = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ScheduledReport }),
    },
}

M.ListDashboardsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                default = 20,
            },
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
            member = M.DashboardReference,
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
            type = "integer",
            traits = {
                default = 50,
            },
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
        healthStatus = setmetatable({ traits = {
            required = true,
        } }, { __index = M.HealthStatus }),
        scheduleExpressionTimeZone = {
            type = "string",
        },
        widgetIds = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ListScheduledReportsOutput = {
    type = "structure",
    members = {
        scheduledReports = {
            type = "list",
            member = M.ScheduledReportSummary,
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
            member = M.ResourceTag,
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
            member = M.ResourceTag,
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
            member = { type = "string" },
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
        scheduleConfig = M.ScheduleConfig,
        widgetIds = {
            type = "list",
            member = { type = "string" },
        },
        widgetDateRangeOverride = M.DateTimeRange,
        clearWidgetIds = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        clearWidgetDateRangeOverride = {
            type = "boolean",
            traits = {
                default = false,
            },
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
            member = M.Expression,
        },
        and = {
            type = "list",
            member = M.Expression,
        },
        not = M.Expression,
        dimensions = M.DimensionValues,
        tags = M.TagValues,
        costCategories = M.CostCategoryValues,
    },
}

M.CostAndUsageQuery = {
    type = "structure",
    members = {
        metrics = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        timeRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateTimeRange }),
        granularity = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groupBy = {
            type = "list",
            member = M.GroupDefinition,
        },
        filter = M.Expression,
    },
}

M.ReservationCoverageQuery = {
    type = "structure",
    members = {
        timeRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateTimeRange }),
        groupBy = {
            type = "list",
            member = M.GroupDefinition,
        },
        granularity = {
            type = "string",
        },
        filter = M.Expression,
        metrics = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ReservationUtilizationQuery = {
    type = "structure",
    members = {
        timeRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateTimeRange }),
        groupBy = {
            type = "list",
            member = M.GroupDefinition,
        },
        granularity = {
            type = "string",
        },
        filter = M.Expression,
    },
}

M.SavingsPlansCoverageQuery = {
    type = "structure",
    members = {
        timeRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateTimeRange }),
        metrics = {
            type = "list",
            member = { type = "string" },
        },
        granularity = {
            type = "string",
        },
        groupBy = {
            type = "list",
            member = M.GroupDefinition,
        },
        filter = M.Expression,
    },
}

M.SavingsPlansUtilizationQuery = {
    type = "structure",
    members = {
        timeRange = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DateTimeRange }),
        granularity = {
            type = "string",
        },
        filter = M.Expression,
    },
}

M.QueryParameters = {
    type = "union",
    members = {
        costAndUsage = M.CostAndUsageQuery,
        savingsPlansCoverage = M.SavingsPlansCoverageQuery,
        savingsPlansUtilization = M.SavingsPlansUtilizationQuery,
        reservationCoverage = M.ReservationCoverageQuery,
        reservationUtilization = M.ReservationUtilizationQuery,
    },
}

M.WidgetConfig = {
    type = "structure",
    members = {
        queryParameters = setmetatable({ traits = {
            required = true,
        } }, { __index = M.QueryParameters }),
        displayConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DisplayConfig }),
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
            type = "integer",
            traits = {
                default = 4,
            },
        },
        height = {
            type = "integer",
            traits = {
                default = 7,
            },
        },
        horizontalOffset = {
            type = "integer",
            traits = {
                default = 0,
            },
        },
        configs = {
            type = "list",
            member = M.WidgetConfig,
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
            member = M.Widget,
            traits = {
                required = true,
            },
        },
        resourceTags = {
            type = "list",
            member = M.ResourceTag,
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
            member = M.Widget,
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
            member = M.Widget,
        },
    },
}

return M
