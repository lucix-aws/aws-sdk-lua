local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThresholdType = {
    PERCENTAGE = "PERCENTAGE",
    ABSOLUTE_VALUE = "ABSOLUTE_VALUE",
}

M.ActionThreshold = {
    type = "structure",
    members = {
        ActionThresholdValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ActionThresholdType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionType = {
    IAM = "APPLY_IAM_POLICY",
    SCP = "APPLY_SCP_POLICY",
    SSM = "RUN_SSM_DOCUMENTS",
}

M.ApprovalModel = {
    AUTO = "AUTOMATIC",
    MANUAL = "MANUAL",
}

M.IamActionDefinition = {
    type = "structure",
    members = {
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Roles = {
            type = "list",
            member_type = "string",
        },
        Groups = {
            type = "list",
            member_type = "string",
        },
        Users = {
            type = "list",
            member_type = "string",
        },
    },
}

M.ScpActionDefinition = {
    type = "structure",
    members = {
        PolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionSubType = {
    STOP_EC2 = "STOP_EC2_INSTANCES",
    STOP_RDS = "STOP_RDS_INSTANCES",
}

M.SsmActionDefinition = {
    type = "structure",
    members = {
        ActionSubType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Region = {
            type = "string",
            traits = {
                required = true,
            },
        },
        InstanceIds = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Definition = {
    type = "structure",
    members = {
        IamActionDefinition = {
            type = "structure",
        },
        ScpActionDefinition = {
            type = "structure",
        },
        SsmActionDefinition = {
            type = "structure",
        },
    },
}

M.NotificationType = {
    ACTUAL = "ACTUAL",
    FORECASTED = "FORECASTED",
}

M.ActionStatus = {
    Standby = "STANDBY",
    Pending = "PENDING",
    Execution_In_Progress = "EXECUTION_IN_PROGRESS",
    Execution_Success = "EXECUTION_SUCCESS",
    Execution_Failure = "EXECUTION_FAILURE",
    Reverse_In_Progress = "REVERSE_IN_PROGRESS",
    Reverse_Success = "REVERSE_SUCCESS",
    Reverse_Failure = "REVERSE_FAILURE",
    Reset_In_Progress = "RESET_IN_PROGRESS",
    Reset_Failure = "RESET_FAILURE",
}

M.SubscriptionType = {
    SNS = "SNS",
    EMAIL = "EMAIL",
}

M.Subscriber = {
    type = "structure",
    members = {
        SubscriptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Address = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Action = {
    type = "structure",
    members = {
        ActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotificationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionThreshold = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Definition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApprovalModel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subscribers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ActionHistoryDetails = {
    type = "structure",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Action = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EventType = {
    System = "SYSTEM",
    CreateAction = "CREATE_ACTION",
    DeleteAction = "DELETE_ACTION",
    UpdateAction = "UPDATE_ACTION",
    ExecuteAction = "EXECUTE_ACTION",
}

M.ActionHistory = {
    type = "structure",
    members = {
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionHistoryDetails = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AutoAdjustType = {
    HISTORICAL = "HISTORICAL",
    FORECAST = "FORECAST",
}

M.HistoricalOptions = {
    type = "structure",
    members = {
        BudgetAdjustmentPeriod = {
            type = "number",
            traits = {
                required = true,
            },
        },
        LookBackAvailablePeriods = {
            type = "number",
        },
    },
}

M.AutoAdjustData = {
    type = "structure",
    members = {
        AutoAdjustType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HistoricalOptions = {
            type = "structure",
        },
        LastAutoAdjustTime = {
            type = "timestamp",
        },
    },
}

M.BillingViewHealthStatusException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Spend = {
    type = "structure",
    members = {
        Amount = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BudgetType = {
    Usage = "USAGE",
    Cost = "COST",
    RIUtilization = "RI_UTILIZATION",
    RICoverage = "RI_COVERAGE",
    SPUtilization = "SAVINGS_PLANS_UTILIZATION",
    SPCoverage = "SAVINGS_PLANS_COVERAGE",
}

M.CalculatedSpend = {
    type = "structure",
    members = {
        ActualSpend = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ForecastedSpend = {
            type = "structure",
        },
    },
}

M.CostTypes = {
    type = "structure",
    members = {
        IncludeTax = {
            type = "boolean",
        },
        IncludeSubscription = {
            type = "boolean",
        },
        UseBlended = {
            type = "boolean",
        },
        IncludeRefund = {
            type = "boolean",
        },
        IncludeCredit = {
            type = "boolean",
        },
        IncludeUpfront = {
            type = "boolean",
        },
        IncludeRecurring = {
            type = "boolean",
        },
        IncludeOtherSubscription = {
            type = "boolean",
        },
        IncludeSupport = {
            type = "boolean",
        },
        IncludeDiscount = {
            type = "boolean",
        },
        UseAmortized = {
            type = "boolean",
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
        Key = {
            type = "string",
        },
        Values = {
            type = "list",
            member_type = "string",
        },
        MatchOptions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.Dimension = {
    AZ = "AZ",
    INSTANCE_TYPE = "INSTANCE_TYPE",
    LINKED_ACCOUNT = "LINKED_ACCOUNT",
    LINKED_ACCOUNT_NAME = "LINKED_ACCOUNT_NAME",
    OPERATION = "OPERATION",
    PURCHASE_TYPE = "PURCHASE_TYPE",
    REGION = "REGION",
    SERVICE = "SERVICE",
    SERVICE_CODE = "SERVICE_CODE",
    USAGE_TYPE = "USAGE_TYPE",
    USAGE_TYPE_GROUP = "USAGE_TYPE_GROUP",
    RECORD_TYPE = "RECORD_TYPE",
    OPERATING_SYSTEM = "OPERATING_SYSTEM",
    TENANCY = "TENANCY",
    SCOPE = "SCOPE",
    PLATFORM = "PLATFORM",
    SUBSCRIPTION_ID = "SUBSCRIPTION_ID",
    LEGAL_ENTITY_NAME = "LEGAL_ENTITY_NAME",
    INVOICING_ENTITY = "INVOICING_ENTITY",
    DEPLOYMENT_OPTION = "DEPLOYMENT_OPTION",
    DATABASE_ENGINE = "DATABASE_ENGINE",
    CACHE_ENGINE = "CACHE_ENGINE",
    INSTANCE_TYPE_FAMILY = "INSTANCE_TYPE_FAMILY",
    BILLING_ENTITY = "BILLING_ENTITY",
    RESERVATION_ID = "RESERVATION_ID",
    RESOURCE_ID = "RESOURCE_ID",
    RIGHTSIZING_TYPE = "RIGHTSIZING_TYPE",
    SAVINGS_PLANS_TYPE = "SAVINGS_PLANS_TYPE",
    SAVINGS_PLAN_ARN = "SAVINGS_PLAN_ARN",
    PAYMENT_OPTION = "PAYMENT_OPTION",
    RESERVATION_MODIFIED = "RESERVATION_MODIFIED",
    TAG_KEY = "TAG_KEY",
    COST_CATEGORY_NAME = "COST_CATEGORY_NAME",
}

M.ExpressionDimensionValues = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        MatchOptions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.TagValues = {
    type = "structure",
    members = {
        Key = {
            type = "string",
        },
        Values = {
            type = "list",
            member_type = "string",
        },
        MatchOptions = {
            type = "list",
            member_type = "string",
        },
    },
}

M.HealthStatusValue = {
    HEALTHY = "HEALTHY",
    UNHEALTHY = "UNHEALTHY",
}

M.HealthStatusReason = {
    BILLING_VIEW_NO_ACCESS = "BILLING_VIEW_NO_ACCESS",
    BILLING_VIEW_UNHEALTHY = "BILLING_VIEW_UNHEALTHY",
    FILTER_INVALID = "FILTER_INVALID",
    MULTI_YEAR_HISTORICAL_DATA_DISABLED = "MULTI_YEAR_HISTORICAL_DATA_DISABLED",
}

M.HealthStatus = {
    type = "structure",
    members = {
        Status = {
            type = "string",
        },
        StatusReason = {
            type = "string",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
    },
}

M.Metric = {
    BLENDED_COST = "BlendedCost",
    UNBLENDED_COST = "UnblendedCost",
    AMORTIZED_COST = "AmortizedCost",
    NET_UNBLENDED_COST = "NetUnblendedCost",
    NET_AMORTIZED_COST = "NetAmortizedCost",
    USAGE_QUANTITY = "UsageQuantity",
    NORMALIZED_USAGE_AMOUNT = "NormalizedUsageAmount",
    HOURS = "Hours",
}

M.TimePeriod = {
    type = "structure",
    members = {
        Start = {
            type = "timestamp",
        },
        End = {
            type = "timestamp",
        },
    },
}

M.TimeUnit = {
    DAILY = "DAILY",
    MONTHLY = "MONTHLY",
    QUARTERLY = "QUARTERLY",
    ANNUALLY = "ANNUALLY",
    CUSTOM = "CUSTOM",
}

M.ComparisonOperator = {
    GREATER_THAN = "GREATER_THAN",
    LESS_THAN = "LESS_THAN",
    EQUAL_TO = "EQUAL_TO",
}

M.NotificationState = {
    OK = "OK",
    ALARM = "ALARM",
}

M.Notification = {
    type = "structure",
    members = {
        NotificationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ComparisonOperator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Threshold = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ThresholdType = {
            type = "string",
        },
        NotificationState = {
            type = "string",
        },
    },
}

M.NotificationWithSubscribers = {
    type = "structure",
    members = {
        Notification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Subscribers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceTag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateBudgetOutput = {
    type = "structure",
}

M.CreationLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DuplicateRecordException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalErrorException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateBudgetActionInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotificationType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionThreshold = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Definition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ExecutionRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ApprovalModel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Subscribers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        ResourceTags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateBudgetActionOutput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateNotificationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Notification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Subscribers = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateNotificationOutput = {
    type = "structure",
}

M.CreateSubscriberInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Notification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Subscriber = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSubscriberOutput = {
    type = "structure",
}

M.DeleteBudgetInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBudgetOutput = {
    type = "structure",
}

M.DeleteBudgetActionInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBudgetActionOutput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Action = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceLockedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteNotificationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Notification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteNotificationOutput = {
    type = "structure",
}

M.DeleteSubscriberInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Notification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        Subscriber = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSubscriberOutput = {
    type = "structure",
}

M.DescribeBudgetInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ShowFilterExpression = {
            type = "boolean",
        },
    },
}

M.DescribeBudgetActionInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeBudgetActionOutput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Action = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeBudgetActionHistoriesInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimePeriod = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeBudgetActionHistoriesOutput = {
    type = "structure",
    members = {
        ActionHistories = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InvalidNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeBudgetActionsForAccountInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeBudgetActionsForAccountOutput = {
    type = "structure",
    members = {
        Actions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeBudgetActionsForBudgetInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeBudgetActionsForBudgetOutput = {
    type = "structure",
    members = {
        Actions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeBudgetNotificationsForAccountInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.BudgetNotificationsForAccount = {
    type = "structure",
    members = {
        Notifications = {
            type = "list",
            member_type = "structure",
        },
        BudgetName = {
            type = "string",
        },
    },
}

M.DescribeBudgetNotificationsForAccountOutput = {
    type = "structure",
    members = {
        BudgetNotificationsForAccount = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ExpiredNextTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeBudgetPerformanceHistoryInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimePeriod = {
            type = "structure",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.BudgetedAndActualAmounts = {
    type = "structure",
    members = {
        BudgetedAmount = {
            type = "structure",
        },
        ActualAmount = {
            type = "structure",
        },
        TimePeriod = {
            type = "structure",
        },
    },
}

M.DescribeBudgetsInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        ShowFilterExpression = {
            type = "boolean",
        },
    },
}

M.DescribeNotificationsForBudgetInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeNotificationsForBudgetOutput = {
    type = "structure",
    members = {
        Notifications = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeSubscribersForNotificationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Notification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeSubscribersForNotificationOutput = {
    type = "structure",
    members = {
        Subscribers = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ExecutionType = {
    ApproveBudgetAction = "APPROVE_BUDGET_ACTION",
    RetryBudgetAction = "RETRY_BUDGET_ACTION",
    ReverseBudgetAction = "REVERSE_BUDGET_ACTION",
    ResetBudgetAction = "RESET_BUDGET_ACTION",
}

M.ExecuteBudgetActionInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecutionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExecuteBudgetActionOutput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ExecutionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
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
        ResourceTags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTags = {
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
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTagKeys = {
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

M.UpdateBudgetOutput = {
    type = "structure",
}

M.UpdateBudgetActionInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ActionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotificationType = {
            type = "string",
        },
        ActionThreshold = {
            type = "structure",
        },
        Definition = {
            type = "structure",
        },
        ExecutionRoleArn = {
            type = "string",
        },
        ApprovalModel = {
            type = "string",
        },
        Subscribers = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.UpdateBudgetActionOutput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OldAction = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NewAction = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateNotificationInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OldNotification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NewNotification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateNotificationOutput = {
    type = "structure",
}

M.UpdateSubscriberInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Notification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        OldSubscriber = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NewSubscriber = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateSubscriberOutput = {
    type = "structure",
}

M.Expression = {
    type = "structure",
    members = {
        Or = {
            type = "list",
            member_type = "structure",
        },
        And = {
            type = "list",
            member_type = "structure",
        },
        Not = {
            type = "structure",
        },
        Dimensions = {
            type = "structure",
        },
        Tags = {
            type = "structure",
        },
        CostCategories = {
            type = "structure",
        },
    },
}

M.Budget = {
    type = "structure",
    members = {
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetLimit = {
            type = "structure",
        },
        PlannedBudgetLimits = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        CostFilters = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        CostTypes = {
            type = "structure",
        },
        TimeUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimePeriod = {
            type = "structure",
        },
        CalculatedSpend = {
            type = "structure",
        },
        BudgetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        AutoAdjustData = {
            type = "structure",
        },
        FilterExpression = {
            type = "structure",
        },
        Metrics = {
            type = "list",
            member_type = "string",
        },
        BillingViewArn = {
            type = "string",
        },
        HealthStatus = {
            type = "structure",
        },
    },
}

M.BudgetPerformanceHistory = {
    type = "structure",
    members = {
        BudgetName = {
            type = "string",
        },
        BudgetType = {
            type = "string",
        },
        CostFilters = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
        CostTypes = {
            type = "structure",
        },
        TimeUnit = {
            type = "string",
        },
        BillingViewArn = {
            type = "string",
        },
        BudgetedAndActualAmountsList = {
            type = "list",
            member_type = "structure",
        },
        FilterExpression = {
            type = "structure",
        },
        Metrics = {
            type = "list",
            member_type = "string",
        },
    },
}

M.CreateBudgetInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Budget = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        NotificationsWithSubscribers = {
            type = "list",
            member_type = "structure",
        },
        ResourceTags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeBudgetOutput = {
    type = "structure",
    members = {
        Budget = {
            type = "structure",
        },
    },
}

M.DescribeBudgetPerformanceHistoryOutput = {
    type = "structure",
    members = {
        BudgetPerformanceHistory = {
            type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateBudgetInput = {
    type = "structure",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewBudget = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeBudgetsOutput = {
    type = "structure",
    members = {
        Budgets = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

return M
