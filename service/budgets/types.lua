local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "ActionThreshold",
    members = {
        ActionThresholdValue = {
            type = "double",
            traits = {
                default = 0,
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
    id = "IamActionDefinition",
    members = {
        PolicyArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Roles = {
            type = "list",
            member = { type = "string" },
        },
        Groups = {
            type = "list",
            member = { type = "string" },
        },
        Users = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.ScpActionDefinition = {
    type = "structure",
    id = "ScpActionDefinition",
    members = {
        PolicyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TargetIds = {
            type = "list",
            member = { type = "string" },
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
    id = "SsmActionDefinition",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.Definition = {
    type = "structure",
    id = "Definition",
    members = {
        IamActionDefinition = M.IamActionDefinition,
        ScpActionDefinition = M.ScpActionDefinition,
        SsmActionDefinition = M.SsmActionDefinition,
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
    id = "Subscriber",
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
    id = "Action",
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
        ActionThreshold = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionThreshold }),
        Definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Definition }),
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
            member = M.Subscriber,
            traits = {
                required = true,
            },
        },
    },
}

M.ActionHistoryDetails = {
    type = "structure",
    id = "ActionHistoryDetails",
    members = {
        Message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Action }),
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
    id = "ActionHistory",
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
        ActionHistoryDetails = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionHistoryDetails }),
    },
}

M.AutoAdjustType = {
    HISTORICAL = "HISTORICAL",
    FORECAST = "FORECAST",
}

M.HistoricalOptions = {
    type = "structure",
    id = "HistoricalOptions",
    members = {
        BudgetAdjustmentPeriod = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        LookBackAvailablePeriods = {
            type = "integer",
        },
    },
}

M.AutoAdjustData = {
    type = "structure",
    id = "AutoAdjustData",
    members = {
        AutoAdjustType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        HistoricalOptions = M.HistoricalOptions,
        LastAutoAdjustTime = {
            type = "timestamp",
        },
    },
}

M.BillingViewHealthStatusException = {
    type = "structure",
    id = "BillingViewHealthStatusException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.Spend = {
    type = "structure",
    id = "Spend",
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
    id = "CalculatedSpend",
    members = {
        ActualSpend = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Spend }),
        ForecastedSpend = M.Spend,
    },
}

M.CostTypes = {
    type = "structure",
    id = "CostTypes",
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
    id = "CostCategoryValues",
    members = {
        Key = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
        MatchOptions = {
            type = "list",
            member = { type = "string" },
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
    id = "ExpressionDimensionValues",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        MatchOptions = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.TagValues = {
    type = "structure",
    id = "TagValues",
    members = {
        Key = {
            type = "string",
        },
        Values = {
            type = "list",
            member = { type = "string" },
        },
        MatchOptions = {
            type = "list",
            member = { type = "string" },
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
    id = "HealthStatus",
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
    id = "TimePeriod",
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
    id = "Notification",
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
            type = "double",
            traits = {
                default = 0,
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
    id = "NotificationWithSubscribers",
    members = {
        Notification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Notification }),
        Subscribers = {
            type = "list",
            member = M.Subscriber,
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceTag = {
    type = "structure",
    id = "ResourceTag",
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
    id = "CreateBudgetOutput",
}

M.CreationLimitExceededException = {
    type = "structure",
    id = "CreationLimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DuplicateRecordException = {
    type = "structure",
    id = "DuplicateRecordException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InternalErrorException = {
    type = "structure",
    id = "InternalErrorException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidParameterException = {
    type = "structure",
    id = "InvalidParameterException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    id = "NotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateBudgetActionInput = {
    type = "structure",
    id = "CreateBudgetActionInput",
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
        ActionThreshold = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActionThreshold }),
        Definition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Definition }),
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
            member = M.Subscriber,
            traits = {
                required = true,
            },
        },
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.CreateBudgetActionOutput = {
    type = "structure",
    id = "CreateBudgetActionOutput",
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
    id = "CreateNotificationInput",
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
        Notification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Notification }),
        Subscribers = {
            type = "list",
            member = M.Subscriber,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateNotificationOutput = {
    type = "structure",
    id = "CreateNotificationOutput",
}

M.CreateSubscriberInput = {
    type = "structure",
    id = "CreateSubscriberInput",
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
        Notification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Notification }),
        Subscriber = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Subscriber }),
    },
}

M.CreateSubscriberOutput = {
    type = "structure",
    id = "CreateSubscriberOutput",
}

M.DeleteBudgetInput = {
    type = "structure",
    id = "DeleteBudgetInput",
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
    id = "DeleteBudgetOutput",
}

M.DeleteBudgetActionInput = {
    type = "structure",
    id = "DeleteBudgetActionInput",
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
    id = "DeleteBudgetActionOutput",
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
        Action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Action }),
    },
}

M.ResourceLockedException = {
    type = "structure",
    id = "ResourceLockedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteNotificationInput = {
    type = "structure",
    id = "DeleteNotificationInput",
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
        Notification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Notification }),
    },
}

M.DeleteNotificationOutput = {
    type = "structure",
    id = "DeleteNotificationOutput",
}

M.DeleteSubscriberInput = {
    type = "structure",
    id = "DeleteSubscriberInput",
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
        Notification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Notification }),
        Subscriber = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Subscriber }),
    },
}

M.DeleteSubscriberOutput = {
    type = "structure",
    id = "DeleteSubscriberOutput",
}

M.DescribeBudgetInput = {
    type = "structure",
    id = "DescribeBudgetInput",
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
    id = "DescribeBudgetActionInput",
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
    id = "DescribeBudgetActionOutput",
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
        Action = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Action }),
    },
}

M.DescribeBudgetActionHistoriesInput = {
    type = "structure",
    id = "DescribeBudgetActionHistoriesInput",
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
        TimePeriod = M.TimePeriod,
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeBudgetActionHistoriesOutput = {
    type = "structure",
    id = "DescribeBudgetActionHistoriesOutput",
    members = {
        ActionHistories = {
            type = "list",
            member = M.ActionHistory,
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
    id = "InvalidNextTokenException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeBudgetActionsForAccountInput = {
    type = "structure",
    id = "DescribeBudgetActionsForAccountInput",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeBudgetActionsForAccountOutput = {
    type = "structure",
    id = "DescribeBudgetActionsForAccountOutput",
    members = {
        Actions = {
            type = "list",
            member = M.Action,
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
    id = "DescribeBudgetActionsForBudgetInput",
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
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeBudgetActionsForBudgetOutput = {
    type = "structure",
    id = "DescribeBudgetActionsForBudgetOutput",
    members = {
        Actions = {
            type = "list",
            member = M.Action,
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
    id = "DescribeBudgetNotificationsForAccountInput",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.BudgetNotificationsForAccount = {
    type = "structure",
    id = "BudgetNotificationsForAccount",
    members = {
        Notifications = {
            type = "list",
            member = M.Notification,
        },
        BudgetName = {
            type = "string",
        },
    },
}

M.DescribeBudgetNotificationsForAccountOutput = {
    type = "structure",
    id = "DescribeBudgetNotificationsForAccountOutput",
    members = {
        BudgetNotificationsForAccount = {
            type = "list",
            member = M.BudgetNotificationsForAccount,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ExpiredNextTokenException = {
    type = "structure",
    id = "ExpiredNextTokenException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DescribeBudgetPerformanceHistoryInput = {
    type = "structure",
    id = "DescribeBudgetPerformanceHistoryInput",
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
        TimePeriod = M.TimePeriod,
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.BudgetedAndActualAmounts = {
    type = "structure",
    id = "BudgetedAndActualAmounts",
    members = {
        BudgetedAmount = M.Spend,
        ActualAmount = M.Spend,
        TimePeriod = M.TimePeriod,
    },
}

M.DescribeBudgetsInput = {
    type = "structure",
    id = "DescribeBudgetsInput",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
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
    id = "DescribeNotificationsForBudgetInput",
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
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeNotificationsForBudgetOutput = {
    type = "structure",
    id = "DescribeNotificationsForBudgetOutput",
    members = {
        Notifications = {
            type = "list",
            member = M.Notification,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeSubscribersForNotificationInput = {
    type = "structure",
    id = "DescribeSubscribersForNotificationInput",
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
        Notification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Notification }),
        MaxResults = {
            type = "integer",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeSubscribersForNotificationOutput = {
    type = "structure",
    id = "DescribeSubscribersForNotificationOutput",
    members = {
        Subscribers = {
            type = "list",
            member = M.Subscriber,
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
    id = "ExecuteBudgetActionInput",
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
    id = "ExecuteBudgetActionOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTags = {
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceTagKeys = {
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
    id = "UntagResourceOutput",
}

M.UpdateBudgetOutput = {
    type = "structure",
    id = "UpdateBudgetOutput",
}

M.UpdateBudgetActionInput = {
    type = "structure",
    id = "UpdateBudgetActionInput",
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
        ActionThreshold = M.ActionThreshold,
        Definition = M.Definition,
        ExecutionRoleArn = {
            type = "string",
        },
        ApprovalModel = {
            type = "string",
        },
        Subscribers = {
            type = "list",
            member = M.Subscriber,
        },
    },
}

M.UpdateBudgetActionOutput = {
    type = "structure",
    id = "UpdateBudgetActionOutput",
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
        OldAction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Action }),
        NewAction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Action }),
    },
}

M.UpdateNotificationInput = {
    type = "structure",
    id = "UpdateNotificationInput",
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
        OldNotification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Notification }),
        NewNotification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Notification }),
    },
}

M.UpdateNotificationOutput = {
    type = "structure",
    id = "UpdateNotificationOutput",
}

M.UpdateSubscriberInput = {
    type = "structure",
    id = "UpdateSubscriberInput",
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
        Notification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Notification }),
        OldSubscriber = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Subscriber }),
        NewSubscriber = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Subscriber }),
    },
}

M.UpdateSubscriberOutput = {
    type = "structure",
    id = "UpdateSubscriberOutput",
}

M.Expression = {
    type = "structure",
    id = "Expression",
    members = {
        Or = {
            type = "list",
            member = M.Expression,
        },
        And = {
            type = "list",
            member = M.Expression,
        },
        Not = M.Expression,
        Dimensions = M.ExpressionDimensionValues,
        Tags = M.TagValues,
        CostCategories = M.CostCategoryValues,
    },
}

M.Budget = {
    type = "structure",
    id = "Budget",
    members = {
        BudgetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        BudgetLimit = M.Spend,
        PlannedBudgetLimits = {
            type = "map",
            key = { type = "string" },
            value = M.Spend,
        },
        CostFilters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        CostTypes = M.CostTypes,
        TimeUnit = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TimePeriod = M.TimePeriod,
        CalculatedSpend = M.CalculatedSpend,
        BudgetType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        AutoAdjustData = M.AutoAdjustData,
        FilterExpression = M.Expression,
        Metrics = {
            type = "list",
            member = { type = "string" },
        },
        BillingViewArn = {
            type = "string",
        },
        HealthStatus = M.HealthStatus,
    },
}

M.BudgetPerformanceHistory = {
    type = "structure",
    id = "BudgetPerformanceHistory",
    members = {
        BudgetName = {
            type = "string",
        },
        BudgetType = {
            type = "string",
        },
        CostFilters = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
        CostTypes = M.CostTypes,
        TimeUnit = {
            type = "string",
        },
        BillingViewArn = {
            type = "string",
        },
        BudgetedAndActualAmountsList = {
            type = "list",
            member = M.BudgetedAndActualAmounts,
        },
        FilterExpression = M.Expression,
        Metrics = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.CreateBudgetInput = {
    type = "structure",
    id = "CreateBudgetInput",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Budget = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Budget }),
        NotificationsWithSubscribers = {
            type = "list",
            member = M.NotificationWithSubscribers,
        },
        ResourceTags = {
            type = "list",
            member = M.ResourceTag,
        },
    },
}

M.DescribeBudgetOutput = {
    type = "structure",
    id = "DescribeBudgetOutput",
    members = {
        Budget = M.Budget,
    },
}

M.DescribeBudgetPerformanceHistoryOutput = {
    type = "structure",
    id = "DescribeBudgetPerformanceHistoryOutput",
    members = {
        BudgetPerformanceHistory = M.BudgetPerformanceHistory,
        NextToken = {
            type = "string",
        },
    },
}

M.UpdateBudgetInput = {
    type = "structure",
    id = "UpdateBudgetInput",
    members = {
        AccountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NewBudget = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Budget }),
    },
}

M.DescribeBudgetsOutput = {
    type = "structure",
    id = "DescribeBudgetsOutput",
    members = {
        Budgets = {
            type = "list",
            member = M.Budget,
        },
        NextToken = {
            type = "string",
        },
    },
}

return M
