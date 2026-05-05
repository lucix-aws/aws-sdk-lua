local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.budgets"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ActionThreshold = schema.new({
    id = id.from(_N, "ActionThreshold"),
    type = "structure",
    members = {
        ActionThresholdValue = schema.new({
            id = id.from(_N, "ActionThreshold", "ActionThresholdValue"),
            type = "double",
            name = "ActionThresholdValue",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ActionThresholdType = schema.new({
            id = id.from(_N, "ActionThreshold", "ActionThresholdType"),
            type = "string",
            name = "ActionThresholdType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IamActionDefinition = schema.new({
    id = id.from(_N, "IamActionDefinition"),
    type = "structure",
    members = {
        PolicyArn = schema.new({
            id = id.from(_N, "IamActionDefinition", "PolicyArn"),
            type = "string",
            name = "PolicyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Roles = schema.new({
            id = id.from(_N, "IamActionDefinition", "Roles"),
            type = "list",
            name = "Roles",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Groups = schema.new({
            id = id.from(_N, "IamActionDefinition", "Groups"),
            type = "list",
            name = "Groups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Users = schema.new({
            id = id.from(_N, "IamActionDefinition", "Users"),
            type = "list",
            name = "Users",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ScpActionDefinition = schema.new({
    id = id.from(_N, "ScpActionDefinition"),
    type = "structure",
    members = {
        PolicyId = schema.new({
            id = id.from(_N, "ScpActionDefinition", "PolicyId"),
            type = "string",
            name = "PolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetIds = schema.new({
            id = id.from(_N, "ScpActionDefinition", "TargetIds"),
            type = "list",
            name = "TargetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SsmActionDefinition = schema.new({
    id = id.from(_N, "SsmActionDefinition"),
    type = "structure",
    members = {
        ActionSubType = schema.new({
            id = id.from(_N, "SsmActionDefinition", "ActionSubType"),
            type = "string",
            name = "ActionSubType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Region = schema.new({
            id = id.from(_N, "SsmActionDefinition", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        InstanceIds = schema.new({
            id = id.from(_N, "SsmActionDefinition", "InstanceIds"),
            type = "list",
            name = "InstanceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Definition = schema.new({
    id = id.from(_N, "Definition"),
    type = "structure",
    members = {
        IamActionDefinition = schema.new({
            id = id.from(_N, "Definition", "IamActionDefinition"),
            type = "structure",
            name = "IamActionDefinition",
            target_id = id.from(_N, "IamActionDefinition"),
            target = M.IamActionDefinition,
        }),
        ScpActionDefinition = schema.new({
            id = id.from(_N, "Definition", "ScpActionDefinition"),
            type = "structure",
            name = "ScpActionDefinition",
            target_id = id.from(_N, "ScpActionDefinition"),
            target = M.ScpActionDefinition,
        }),
        SsmActionDefinition = schema.new({
            id = id.from(_N, "Definition", "SsmActionDefinition"),
            type = "structure",
            name = "SsmActionDefinition",
            target_id = id.from(_N, "SsmActionDefinition"),
            target = M.SsmActionDefinition,
        }),
    },
})

M.Subscriber = schema.new({
    id = id.from(_N, "Subscriber"),
    type = "structure",
    members = {
        SubscriptionType = schema.new({
            id = id.from(_N, "Subscriber", "SubscriptionType"),
            type = "string",
            name = "SubscriptionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Address = schema.new({
            id = id.from(_N, "Subscriber", "Address"),
            type = "string",
            name = "Address",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Action = schema.new({
    id = id.from(_N, "Action"),
    type = "structure",
    members = {
        ActionId = schema.new({
            id = id.from(_N, "Action", "ActionId"),
            type = "string",
            name = "ActionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "Action", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NotificationType = schema.new({
            id = id.from(_N, "Action", "NotificationType"),
            type = "string",
            name = "NotificationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActionType = schema.new({
            id = id.from(_N, "Action", "ActionType"),
            type = "string",
            name = "ActionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActionThreshold = schema.new({
            id = id.from(_N, "Action", "ActionThreshold"),
            type = "structure",
            name = "ActionThreshold",
            target_id = id.from(_N, "ActionThreshold"),
            target = M.ActionThreshold,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Definition = schema.new({
            id = id.from(_N, "Action", "Definition"),
            type = "structure",
            name = "Definition",
            target_id = id.from(_N, "Definition"),
            target = M.Definition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "Action", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApprovalModel = schema.new({
            id = id.from(_N, "Action", "ApprovalModel"),
            type = "string",
            name = "ApprovalModel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "Action", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subscribers = schema.new({
            id = id.from(_N, "Action", "Subscribers"),
            type = "list",
            name = "Subscribers",
            target_id = prelude.Document.id,
            list_member = M.Subscriber,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ActionHistoryDetails = schema.new({
    id = id.from(_N, "ActionHistoryDetails"),
    type = "structure",
    members = {
        Message = schema.new({
            id = id.from(_N, "ActionHistoryDetails", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Action = schema.new({
            id = id.from(_N, "ActionHistoryDetails", "Action"),
            type = "structure",
            name = "Action",
            target_id = id.from(_N, "Action"),
            target = M.Action,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ActionHistory = schema.new({
    id = id.from(_N, "ActionHistory"),
    type = "structure",
    members = {
        Timestamp = schema.new({
            id = id.from(_N, "ActionHistory", "Timestamp"),
            type = "timestamp",
            name = "Timestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "ActionHistory", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EventType = schema.new({
            id = id.from(_N, "ActionHistory", "EventType"),
            type = "string",
            name = "EventType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActionHistoryDetails = schema.new({
            id = id.from(_N, "ActionHistory", "ActionHistoryDetails"),
            type = "structure",
            name = "ActionHistoryDetails",
            target_id = id.from(_N, "ActionHistoryDetails"),
            target = M.ActionHistoryDetails,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HistoricalOptions = schema.new({
    id = id.from(_N, "HistoricalOptions"),
    type = "structure",
    members = {
        BudgetAdjustmentPeriod = schema.new({
            id = id.from(_N, "HistoricalOptions", "BudgetAdjustmentPeriod"),
            type = "integer",
            name = "BudgetAdjustmentPeriod",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LookBackAvailablePeriods = schema.new({
            id = id.from(_N, "HistoricalOptions", "LookBackAvailablePeriods"),
            type = "integer",
            name = "LookBackAvailablePeriods",
            target_id = prelude.Integer.id,
        }),
    },
})

M.AutoAdjustData = schema.new({
    id = id.from(_N, "AutoAdjustData"),
    type = "structure",
    members = {
        AutoAdjustType = schema.new({
            id = id.from(_N, "AutoAdjustData", "AutoAdjustType"),
            type = "string",
            name = "AutoAdjustType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HistoricalOptions = schema.new({
            id = id.from(_N, "AutoAdjustData", "HistoricalOptions"),
            type = "structure",
            name = "HistoricalOptions",
            target_id = id.from(_N, "HistoricalOptions"),
            target = M.HistoricalOptions,
        }),
        LastAutoAdjustTime = schema.new({
            id = id.from(_N, "AutoAdjustData", "LastAutoAdjustTime"),
            type = "timestamp",
            name = "LastAutoAdjustTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.BillingViewHealthStatusException = schema.new({
    id = id.from(_N, "BillingViewHealthStatusException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "BillingViewHealthStatusException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.Spend = schema.new({
    id = id.from(_N, "Spend"),
    type = "structure",
    members = {
        Amount = schema.new({
            id = id.from(_N, "Spend", "Amount"),
            type = "string",
            name = "Amount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Unit = schema.new({
            id = id.from(_N, "Spend", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CalculatedSpend = schema.new({
    id = id.from(_N, "CalculatedSpend"),
    type = "structure",
    members = {
        ActualSpend = schema.new({
            id = id.from(_N, "CalculatedSpend", "ActualSpend"),
            type = "structure",
            name = "ActualSpend",
            target_id = id.from(_N, "Spend"),
            target = M.Spend,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ForecastedSpend = schema.new({
            id = id.from(_N, "CalculatedSpend", "ForecastedSpend"),
            type = "structure",
            name = "ForecastedSpend",
            target_id = id.from(_N, "Spend"),
            target = M.Spend,
        }),
    },
})

M.CostTypes = schema.new({
    id = id.from(_N, "CostTypes"),
    type = "structure",
    members = {
        IncludeTax = schema.new({
            id = id.from(_N, "CostTypes", "IncludeTax"),
            type = "boolean",
            name = "IncludeTax",
            target_id = prelude.Boolean.id,
        }),
        IncludeSubscription = schema.new({
            id = id.from(_N, "CostTypes", "IncludeSubscription"),
            type = "boolean",
            name = "IncludeSubscription",
            target_id = prelude.Boolean.id,
        }),
        UseBlended = schema.new({
            id = id.from(_N, "CostTypes", "UseBlended"),
            type = "boolean",
            name = "UseBlended",
            target_id = prelude.Boolean.id,
        }),
        IncludeRefund = schema.new({
            id = id.from(_N, "CostTypes", "IncludeRefund"),
            type = "boolean",
            name = "IncludeRefund",
            target_id = prelude.Boolean.id,
        }),
        IncludeCredit = schema.new({
            id = id.from(_N, "CostTypes", "IncludeCredit"),
            type = "boolean",
            name = "IncludeCredit",
            target_id = prelude.Boolean.id,
        }),
        IncludeUpfront = schema.new({
            id = id.from(_N, "CostTypes", "IncludeUpfront"),
            type = "boolean",
            name = "IncludeUpfront",
            target_id = prelude.Boolean.id,
        }),
        IncludeRecurring = schema.new({
            id = id.from(_N, "CostTypes", "IncludeRecurring"),
            type = "boolean",
            name = "IncludeRecurring",
            target_id = prelude.Boolean.id,
        }),
        IncludeOtherSubscription = schema.new({
            id = id.from(_N, "CostTypes", "IncludeOtherSubscription"),
            type = "boolean",
            name = "IncludeOtherSubscription",
            target_id = prelude.Boolean.id,
        }),
        IncludeSupport = schema.new({
            id = id.from(_N, "CostTypes", "IncludeSupport"),
            type = "boolean",
            name = "IncludeSupport",
            target_id = prelude.Boolean.id,
        }),
        IncludeDiscount = schema.new({
            id = id.from(_N, "CostTypes", "IncludeDiscount"),
            type = "boolean",
            name = "IncludeDiscount",
            target_id = prelude.Boolean.id,
        }),
        UseAmortized = schema.new({
            id = id.from(_N, "CostTypes", "UseAmortized"),
            type = "boolean",
            name = "UseAmortized",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.CostCategoryValues = schema.new({
    id = id.from(_N, "CostCategoryValues"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "CostCategoryValues", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "CostCategoryValues", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MatchOptions = schema.new({
            id = id.from(_N, "CostCategoryValues", "MatchOptions"),
            type = "list",
            name = "MatchOptions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.ExpressionDimensionValues = schema.new({
    id = id.from(_N, "ExpressionDimensionValues"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "ExpressionDimensionValues", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Values = schema.new({
            id = id.from(_N, "ExpressionDimensionValues", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MatchOptions = schema.new({
            id = id.from(_N, "ExpressionDimensionValues", "MatchOptions"),
            type = "list",
            name = "MatchOptions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.TagValues = schema.new({
    id = id.from(_N, "TagValues"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "TagValues", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Values = schema.new({
            id = id.from(_N, "TagValues", "Values"),
            type = "list",
            name = "Values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MatchOptions = schema.new({
            id = id.from(_N, "TagValues", "MatchOptions"),
            type = "list",
            name = "MatchOptions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.HealthStatus = schema.new({
    id = id.from(_N, "HealthStatus"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "HealthStatus", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "HealthStatus", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        LastUpdatedTime = schema.new({
            id = id.from(_N, "HealthStatus", "LastUpdatedTime"),
            type = "timestamp",
            name = "LastUpdatedTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.TimePeriod = schema.new({
    id = id.from(_N, "TimePeriod"),
    type = "structure",
    members = {
        Start = schema.new({
            id = id.from(_N, "TimePeriod", "Start"),
            type = "timestamp",
            name = "Start",
            target_id = prelude.Timestamp.id,
        }),
        End = schema.new({
            id = id.from(_N, "TimePeriod", "End"),
            type = "timestamp",
            name = "End",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.Notification = schema.new({
    id = id.from(_N, "Notification"),
    type = "structure",
    members = {
        NotificationType = schema.new({
            id = id.from(_N, "Notification", "NotificationType"),
            type = "string",
            name = "NotificationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ComparisonOperator = schema.new({
            id = id.from(_N, "Notification", "ComparisonOperator"),
            type = "string",
            name = "ComparisonOperator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Threshold = schema.new({
            id = id.from(_N, "Notification", "Threshold"),
            type = "double",
            name = "Threshold",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        ThresholdType = schema.new({
            id = id.from(_N, "Notification", "ThresholdType"),
            type = "string",
            name = "ThresholdType",
            target_id = prelude.String.id,
        }),
        NotificationState = schema.new({
            id = id.from(_N, "Notification", "NotificationState"),
            type = "string",
            name = "NotificationState",
            target_id = prelude.String.id,
        }),
    },
})

M.NotificationWithSubscribers = schema.new({
    id = id.from(_N, "NotificationWithSubscribers"),
    type = "structure",
    members = {
        Notification = schema.new({
            id = id.from(_N, "NotificationWithSubscribers", "Notification"),
            type = "structure",
            name = "Notification",
            target_id = id.from(_N, "Notification"),
            target = M.Notification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subscribers = schema.new({
            id = id.from(_N, "NotificationWithSubscribers", "Subscribers"),
            type = "list",
            name = "Subscribers",
            target_id = prelude.Document.id,
            list_member = M.Subscriber,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceTag = schema.new({
    id = id.from(_N, "ResourceTag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "ResourceTag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "ResourceTag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateBudgetOutput = schema.new({
    id = id.from(_N, "CreateBudgetOutput"),
    type = "structure",
})

M.CreationLimitExceededException = schema.new({
    id = id.from(_N, "CreationLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CreationLimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DuplicateRecordException = schema.new({
    id = id.from(_N, "DuplicateRecordException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DuplicateRecordException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalErrorException = schema.new({
    id = id.from(_N, "InternalErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalErrorException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidParameterException = schema.new({
    id = id.from(_N, "InvalidParameterException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidParameterException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NotFoundException = schema.new({
    id = id.from(_N, "NotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateBudgetActionInput = schema.new({
    id = id.from(_N, "CreateBudgetActionInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "CreateBudgetActionInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "CreateBudgetActionInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NotificationType = schema.new({
            id = id.from(_N, "CreateBudgetActionInput", "NotificationType"),
            type = "string",
            name = "NotificationType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActionType = schema.new({
            id = id.from(_N, "CreateBudgetActionInput", "ActionType"),
            type = "string",
            name = "ActionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActionThreshold = schema.new({
            id = id.from(_N, "CreateBudgetActionInput", "ActionThreshold"),
            type = "structure",
            name = "ActionThreshold",
            target_id = id.from(_N, "ActionThreshold"),
            target = M.ActionThreshold,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Definition = schema.new({
            id = id.from(_N, "CreateBudgetActionInput", "Definition"),
            type = "structure",
            name = "Definition",
            target_id = id.from(_N, "Definition"),
            target = M.Definition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "CreateBudgetActionInput", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApprovalModel = schema.new({
            id = id.from(_N, "CreateBudgetActionInput", "ApprovalModel"),
            type = "string",
            name = "ApprovalModel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subscribers = schema.new({
            id = id.from(_N, "CreateBudgetActionInput", "Subscribers"),
            type = "list",
            name = "Subscribers",
            target_id = prelude.Document.id,
            list_member = M.Subscriber,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceTags = schema.new({
            id = id.from(_N, "CreateBudgetActionInput", "ResourceTags"),
            type = "list",
            name = "ResourceTags",
            target_id = prelude.Document.id,
            list_member = M.ResourceTag,
        }),
    },
})

M.CreateBudgetActionOutput = schema.new({
    id = id.from(_N, "CreateBudgetActionOutput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "CreateBudgetActionOutput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "CreateBudgetActionOutput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActionId = schema.new({
            id = id.from(_N, "CreateBudgetActionOutput", "ActionId"),
            type = "string",
            name = "ActionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateNotificationInput = schema.new({
    id = id.from(_N, "CreateNotificationInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "CreateNotificationInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "CreateNotificationInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Notification = schema.new({
            id = id.from(_N, "CreateNotificationInput", "Notification"),
            type = "structure",
            name = "Notification",
            target_id = id.from(_N, "Notification"),
            target = M.Notification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subscribers = schema.new({
            id = id.from(_N, "CreateNotificationInput", "Subscribers"),
            type = "list",
            name = "Subscribers",
            target_id = prelude.Document.id,
            list_member = M.Subscriber,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateNotificationOutput = schema.new({
    id = id.from(_N, "CreateNotificationOutput"),
    type = "structure",
})

M.CreateSubscriberInput = schema.new({
    id = id.from(_N, "CreateSubscriberInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "CreateSubscriberInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "CreateSubscriberInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Notification = schema.new({
            id = id.from(_N, "CreateSubscriberInput", "Notification"),
            type = "structure",
            name = "Notification",
            target_id = id.from(_N, "Notification"),
            target = M.Notification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subscriber = schema.new({
            id = id.from(_N, "CreateSubscriberInput", "Subscriber"),
            type = "structure",
            name = "Subscriber",
            target_id = id.from(_N, "Subscriber"),
            target = M.Subscriber,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateSubscriberOutput = schema.new({
    id = id.from(_N, "CreateSubscriberOutput"),
    type = "structure",
})

M.DeleteBudgetInput = schema.new({
    id = id.from(_N, "DeleteBudgetInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "DeleteBudgetInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "DeleteBudgetInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteBudgetOutput = schema.new({
    id = id.from(_N, "DeleteBudgetOutput"),
    type = "structure",
})

M.DeleteBudgetActionInput = schema.new({
    id = id.from(_N, "DeleteBudgetActionInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "DeleteBudgetActionInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "DeleteBudgetActionInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActionId = schema.new({
            id = id.from(_N, "DeleteBudgetActionInput", "ActionId"),
            type = "string",
            name = "ActionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteBudgetActionOutput = schema.new({
    id = id.from(_N, "DeleteBudgetActionOutput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "DeleteBudgetActionOutput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "DeleteBudgetActionOutput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Action = schema.new({
            id = id.from(_N, "DeleteBudgetActionOutput", "Action"),
            type = "structure",
            name = "Action",
            target_id = id.from(_N, "Action"),
            target = M.Action,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceLockedException = schema.new({
    id = id.from(_N, "ResourceLockedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceLockedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteNotificationInput = schema.new({
    id = id.from(_N, "DeleteNotificationInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "DeleteNotificationInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "DeleteNotificationInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Notification = schema.new({
            id = id.from(_N, "DeleteNotificationInput", "Notification"),
            type = "structure",
            name = "Notification",
            target_id = id.from(_N, "Notification"),
            target = M.Notification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteNotificationOutput = schema.new({
    id = id.from(_N, "DeleteNotificationOutput"),
    type = "structure",
})

M.DeleteSubscriberInput = schema.new({
    id = id.from(_N, "DeleteSubscriberInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "DeleteSubscriberInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "DeleteSubscriberInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Notification = schema.new({
            id = id.from(_N, "DeleteSubscriberInput", "Notification"),
            type = "structure",
            name = "Notification",
            target_id = id.from(_N, "Notification"),
            target = M.Notification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Subscriber = schema.new({
            id = id.from(_N, "DeleteSubscriberInput", "Subscriber"),
            type = "structure",
            name = "Subscriber",
            target_id = id.from(_N, "Subscriber"),
            target = M.Subscriber,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSubscriberOutput = schema.new({
    id = id.from(_N, "DeleteSubscriberOutput"),
    type = "structure",
})

M.DescribeBudgetInput = schema.new({
    id = id.from(_N, "DescribeBudgetInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "DescribeBudgetInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "DescribeBudgetInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ShowFilterExpression = schema.new({
            id = id.from(_N, "DescribeBudgetInput", "ShowFilterExpression"),
            type = "boolean",
            name = "ShowFilterExpression",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeBudgetActionInput = schema.new({
    id = id.from(_N, "DescribeBudgetActionInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "DescribeBudgetActionInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "DescribeBudgetActionInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActionId = schema.new({
            id = id.from(_N, "DescribeBudgetActionInput", "ActionId"),
            type = "string",
            name = "ActionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeBudgetActionOutput = schema.new({
    id = id.from(_N, "DescribeBudgetActionOutput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "DescribeBudgetActionOutput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "DescribeBudgetActionOutput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Action = schema.new({
            id = id.from(_N, "DescribeBudgetActionOutput", "Action"),
            type = "structure",
            name = "Action",
            target_id = id.from(_N, "Action"),
            target = M.Action,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeBudgetActionHistoriesInput = schema.new({
    id = id.from(_N, "DescribeBudgetActionHistoriesInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "DescribeBudgetActionHistoriesInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "DescribeBudgetActionHistoriesInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActionId = schema.new({
            id = id.from(_N, "DescribeBudgetActionHistoriesInput", "ActionId"),
            type = "string",
            name = "ActionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimePeriod = schema.new({
            id = id.from(_N, "DescribeBudgetActionHistoriesInput", "TimePeriod"),
            type = "structure",
            name = "TimePeriod",
            target_id = id.from(_N, "TimePeriod"),
            target = M.TimePeriod,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeBudgetActionHistoriesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeBudgetActionHistoriesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeBudgetActionHistoriesOutput = schema.new({
    id = id.from(_N, "DescribeBudgetActionHistoriesOutput"),
    type = "structure",
    members = {
        ActionHistories = schema.new({
            id = id.from(_N, "DescribeBudgetActionHistoriesOutput", "ActionHistories"),
            type = "list",
            name = "ActionHistories",
            target_id = prelude.Document.id,
            list_member = M.ActionHistory,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeBudgetActionHistoriesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidNextTokenException = schema.new({
    id = id.from(_N, "InvalidNextTokenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidNextTokenException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeBudgetActionsForAccountInput = schema.new({
    id = id.from(_N, "DescribeBudgetActionsForAccountInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "DescribeBudgetActionsForAccountInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeBudgetActionsForAccountInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeBudgetActionsForAccountInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeBudgetActionsForAccountOutput = schema.new({
    id = id.from(_N, "DescribeBudgetActionsForAccountOutput"),
    type = "structure",
    members = {
        Actions = schema.new({
            id = id.from(_N, "DescribeBudgetActionsForAccountOutput", "Actions"),
            type = "list",
            name = "Actions",
            target_id = prelude.Document.id,
            list_member = M.Action,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeBudgetActionsForAccountOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeBudgetActionsForBudgetInput = schema.new({
    id = id.from(_N, "DescribeBudgetActionsForBudgetInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "DescribeBudgetActionsForBudgetInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "DescribeBudgetActionsForBudgetInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeBudgetActionsForBudgetInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeBudgetActionsForBudgetInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeBudgetActionsForBudgetOutput = schema.new({
    id = id.from(_N, "DescribeBudgetActionsForBudgetOutput"),
    type = "structure",
    members = {
        Actions = schema.new({
            id = id.from(_N, "DescribeBudgetActionsForBudgetOutput", "Actions"),
            type = "list",
            name = "Actions",
            target_id = prelude.Document.id,
            list_member = M.Action,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeBudgetActionsForBudgetOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeBudgetNotificationsForAccountInput = schema.new({
    id = id.from(_N, "DescribeBudgetNotificationsForAccountInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "DescribeBudgetNotificationsForAccountInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeBudgetNotificationsForAccountInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeBudgetNotificationsForAccountInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.BudgetNotificationsForAccount = schema.new({
    id = id.from(_N, "BudgetNotificationsForAccount"),
    type = "structure",
    members = {
        Notifications = schema.new({
            id = id.from(_N, "BudgetNotificationsForAccount", "Notifications"),
            type = "list",
            name = "Notifications",
            target_id = prelude.Document.id,
            list_member = M.Notification,
        }),
        BudgetName = schema.new({
            id = id.from(_N, "BudgetNotificationsForAccount", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeBudgetNotificationsForAccountOutput = schema.new({
    id = id.from(_N, "DescribeBudgetNotificationsForAccountOutput"),
    type = "structure",
    members = {
        BudgetNotificationsForAccount = schema.new({
            id = id.from(_N, "DescribeBudgetNotificationsForAccountOutput", "BudgetNotificationsForAccount"),
            type = "list",
            name = "BudgetNotificationsForAccount",
            target_id = prelude.Document.id,
            list_member = M.BudgetNotificationsForAccount,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeBudgetNotificationsForAccountOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ExpiredNextTokenException = schema.new({
    id = id.from(_N, "ExpiredNextTokenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ExpiredNextTokenException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeBudgetPerformanceHistoryInput = schema.new({
    id = id.from(_N, "DescribeBudgetPerformanceHistoryInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "DescribeBudgetPerformanceHistoryInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "DescribeBudgetPerformanceHistoryInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimePeriod = schema.new({
            id = id.from(_N, "DescribeBudgetPerformanceHistoryInput", "TimePeriod"),
            type = "structure",
            name = "TimePeriod",
            target_id = id.from(_N, "TimePeriod"),
            target = M.TimePeriod,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeBudgetPerformanceHistoryInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeBudgetPerformanceHistoryInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.BudgetedAndActualAmounts = schema.new({
    id = id.from(_N, "BudgetedAndActualAmounts"),
    type = "structure",
    members = {
        BudgetedAmount = schema.new({
            id = id.from(_N, "BudgetedAndActualAmounts", "BudgetedAmount"),
            type = "structure",
            name = "BudgetedAmount",
            target_id = id.from(_N, "Spend"),
            target = M.Spend,
        }),
        ActualAmount = schema.new({
            id = id.from(_N, "BudgetedAndActualAmounts", "ActualAmount"),
            type = "structure",
            name = "ActualAmount",
            target_id = id.from(_N, "Spend"),
            target = M.Spend,
        }),
        TimePeriod = schema.new({
            id = id.from(_N, "BudgetedAndActualAmounts", "TimePeriod"),
            type = "structure",
            name = "TimePeriod",
            target_id = id.from(_N, "TimePeriod"),
            target = M.TimePeriod,
        }),
    },
})

M.DescribeBudgetsInput = schema.new({
    id = id.from(_N, "DescribeBudgetsInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "DescribeBudgetsInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeBudgetsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeBudgetsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ShowFilterExpression = schema.new({
            id = id.from(_N, "DescribeBudgetsInput", "ShowFilterExpression"),
            type = "boolean",
            name = "ShowFilterExpression",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.DescribeNotificationsForBudgetInput = schema.new({
    id = id.from(_N, "DescribeNotificationsForBudgetInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "DescribeNotificationsForBudgetInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "DescribeNotificationsForBudgetInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeNotificationsForBudgetInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeNotificationsForBudgetInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeNotificationsForBudgetOutput = schema.new({
    id = id.from(_N, "DescribeNotificationsForBudgetOutput"),
    type = "structure",
    members = {
        Notifications = schema.new({
            id = id.from(_N, "DescribeNotificationsForBudgetOutput", "Notifications"),
            type = "list",
            name = "Notifications",
            target_id = prelude.Document.id,
            list_member = M.Notification,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeNotificationsForBudgetOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSubscribersForNotificationInput = schema.new({
    id = id.from(_N, "DescribeSubscribersForNotificationInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "DescribeSubscribersForNotificationInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "DescribeSubscribersForNotificationInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Notification = schema.new({
            id = id.from(_N, "DescribeSubscribersForNotificationInput", "Notification"),
            type = "structure",
            name = "Notification",
            target_id = id.from(_N, "Notification"),
            target = M.Notification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeSubscribersForNotificationInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSubscribersForNotificationInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeSubscribersForNotificationOutput = schema.new({
    id = id.from(_N, "DescribeSubscribersForNotificationOutput"),
    type = "structure",
    members = {
        Subscribers = schema.new({
            id = id.from(_N, "DescribeSubscribersForNotificationOutput", "Subscribers"),
            type = "list",
            name = "Subscribers",
            target_id = prelude.Document.id,
            list_member = M.Subscriber,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeSubscribersForNotificationOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ExecuteBudgetActionInput = schema.new({
    id = id.from(_N, "ExecuteBudgetActionInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "ExecuteBudgetActionInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "ExecuteBudgetActionInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActionId = schema.new({
            id = id.from(_N, "ExecuteBudgetActionInput", "ActionId"),
            type = "string",
            name = "ActionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExecutionType = schema.new({
            id = id.from(_N, "ExecuteBudgetActionInput", "ExecutionType"),
            type = "string",
            name = "ExecutionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExecuteBudgetActionOutput = schema.new({
    id = id.from(_N, "ExecuteBudgetActionOutput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "ExecuteBudgetActionOutput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "ExecuteBudgetActionOutput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActionId = schema.new({
            id = id.from(_N, "ExecuteBudgetActionOutput", "ActionId"),
            type = "string",
            name = "ActionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ExecutionType = schema.new({
            id = id.from(_N, "ExecuteBudgetActionOutput", "ExecutionType"),
            type = "string",
            name = "ExecutionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
    type = "structure",
    members = {
        ResourceTags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "ResourceTags"),
            type = "list",
            name = "ResourceTags",
            target_id = prelude.Document.id,
            list_member = M.ResourceTag,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceTags = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceTags"),
            type = "list",
            name = "ResourceTags",
            target_id = prelude.Document.id,
            list_member = M.ResourceTag,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceTagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceTagKeys"),
            type = "list",
            name = "ResourceTagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.UpdateBudgetOutput = schema.new({
    id = id.from(_N, "UpdateBudgetOutput"),
    type = "structure",
})

M.UpdateBudgetActionInput = schema.new({
    id = id.from(_N, "UpdateBudgetActionInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "UpdateBudgetActionInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "UpdateBudgetActionInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActionId = schema.new({
            id = id.from(_N, "UpdateBudgetActionInput", "ActionId"),
            type = "string",
            name = "ActionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NotificationType = schema.new({
            id = id.from(_N, "UpdateBudgetActionInput", "NotificationType"),
            type = "string",
            name = "NotificationType",
            target_id = prelude.String.id,
        }),
        ActionThreshold = schema.new({
            id = id.from(_N, "UpdateBudgetActionInput", "ActionThreshold"),
            type = "structure",
            name = "ActionThreshold",
            target_id = id.from(_N, "ActionThreshold"),
            target = M.ActionThreshold,
        }),
        Definition = schema.new({
            id = id.from(_N, "UpdateBudgetActionInput", "Definition"),
            type = "structure",
            name = "Definition",
            target_id = id.from(_N, "Definition"),
            target = M.Definition,
        }),
        ExecutionRoleArn = schema.new({
            id = id.from(_N, "UpdateBudgetActionInput", "ExecutionRoleArn"),
            type = "string",
            name = "ExecutionRoleArn",
            target_id = prelude.String.id,
        }),
        ApprovalModel = schema.new({
            id = id.from(_N, "UpdateBudgetActionInput", "ApprovalModel"),
            type = "string",
            name = "ApprovalModel",
            target_id = prelude.String.id,
        }),
        Subscribers = schema.new({
            id = id.from(_N, "UpdateBudgetActionInput", "Subscribers"),
            type = "list",
            name = "Subscribers",
            target_id = prelude.Document.id,
            list_member = M.Subscriber,
        }),
    },
})

M.UpdateBudgetActionOutput = schema.new({
    id = id.from(_N, "UpdateBudgetActionOutput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "UpdateBudgetActionOutput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "UpdateBudgetActionOutput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OldAction = schema.new({
            id = id.from(_N, "UpdateBudgetActionOutput", "OldAction"),
            type = "structure",
            name = "OldAction",
            target_id = id.from(_N, "Action"),
            target = M.Action,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewAction = schema.new({
            id = id.from(_N, "UpdateBudgetActionOutput", "NewAction"),
            type = "structure",
            name = "NewAction",
            target_id = id.from(_N, "Action"),
            target = M.Action,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateNotificationInput = schema.new({
    id = id.from(_N, "UpdateNotificationInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "UpdateNotificationInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "UpdateNotificationInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OldNotification = schema.new({
            id = id.from(_N, "UpdateNotificationInput", "OldNotification"),
            type = "structure",
            name = "OldNotification",
            target_id = id.from(_N, "Notification"),
            target = M.Notification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewNotification = schema.new({
            id = id.from(_N, "UpdateNotificationInput", "NewNotification"),
            type = "structure",
            name = "NewNotification",
            target_id = id.from(_N, "Notification"),
            target = M.Notification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateNotificationOutput = schema.new({
    id = id.from(_N, "UpdateNotificationOutput"),
    type = "structure",
})

M.UpdateSubscriberInput = schema.new({
    id = id.from(_N, "UpdateSubscriberInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "UpdateSubscriberInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetName = schema.new({
            id = id.from(_N, "UpdateSubscriberInput", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Notification = schema.new({
            id = id.from(_N, "UpdateSubscriberInput", "Notification"),
            type = "structure",
            name = "Notification",
            target_id = id.from(_N, "Notification"),
            target = M.Notification,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OldSubscriber = schema.new({
            id = id.from(_N, "UpdateSubscriberInput", "OldSubscriber"),
            type = "structure",
            name = "OldSubscriber",
            target_id = id.from(_N, "Subscriber"),
            target = M.Subscriber,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewSubscriber = schema.new({
            id = id.from(_N, "UpdateSubscriberInput", "NewSubscriber"),
            type = "structure",
            name = "NewSubscriber",
            target_id = id.from(_N, "Subscriber"),
            target = M.Subscriber,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSubscriberOutput = schema.new({
    id = id.from(_N, "UpdateSubscriberOutput"),
    type = "structure",
})

M.Expression = schema.new({
    id = id.from(_N, "Expression"),
    type = "structure",
    members = {
        Or = schema.new({
            id = id.from(_N, "Expression", "Or"),
            type = "list",
            name = "Or",
            target_id = prelude.Document.id,
            list_member = M.Expression,
        }),
        And = schema.new({
            id = id.from(_N, "Expression", "And"),
            type = "list",
            name = "And",
            target_id = prelude.Document.id,
            list_member = M.Expression,
        }),
        Not = schema.new({
            id = id.from(_N, "Expression", "Not"),
            type = "structure",
            name = "Not",
            target_id = id.from(_N, "Expression"),
            target = M.Expression,
        }),
        Dimensions = schema.new({
            id = id.from(_N, "Expression", "Dimensions"),
            type = "structure",
            name = "Dimensions",
            target_id = id.from(_N, "ExpressionDimensionValues"),
            target = M.ExpressionDimensionValues,
        }),
        Tags = schema.new({
            id = id.from(_N, "Expression", "Tags"),
            type = "structure",
            name = "Tags",
            target_id = id.from(_N, "TagValues"),
            target = M.TagValues,
        }),
        CostCategories = schema.new({
            id = id.from(_N, "Expression", "CostCategories"),
            type = "structure",
            name = "CostCategories",
            target_id = id.from(_N, "CostCategoryValues"),
            target = M.CostCategoryValues,
        }),
    },
})

M.Budget = schema.new({
    id = id.from(_N, "Budget"),
    type = "structure",
    members = {
        BudgetName = schema.new({
            id = id.from(_N, "Budget", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BudgetLimit = schema.new({
            id = id.from(_N, "Budget", "BudgetLimit"),
            type = "structure",
            name = "BudgetLimit",
            target_id = id.from(_N, "Spend"),
            target = M.Spend,
        }),
        PlannedBudgetLimits = schema.new({
            id = id.from(_N, "Budget", "PlannedBudgetLimits"),
            type = "map",
            name = "PlannedBudgetLimits",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Spend,
        }),
        CostFilters = schema.new({
            id = id.from(_N, "Budget", "CostFilters"),
            type = "map",
            name = "CostFilters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        CostTypes = schema.new({
            id = id.from(_N, "Budget", "CostTypes"),
            type = "structure",
            name = "CostTypes",
            target_id = id.from(_N, "CostTypes"),
            target = M.CostTypes,
        }),
        TimeUnit = schema.new({
            id = id.from(_N, "Budget", "TimeUnit"),
            type = "string",
            name = "TimeUnit",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimePeriod = schema.new({
            id = id.from(_N, "Budget", "TimePeriod"),
            type = "structure",
            name = "TimePeriod",
            target_id = id.from(_N, "TimePeriod"),
            target = M.TimePeriod,
        }),
        CalculatedSpend = schema.new({
            id = id.from(_N, "Budget", "CalculatedSpend"),
            type = "structure",
            name = "CalculatedSpend",
            target_id = id.from(_N, "CalculatedSpend"),
            target = M.CalculatedSpend,
        }),
        BudgetType = schema.new({
            id = id.from(_N, "Budget", "BudgetType"),
            type = "string",
            name = "BudgetType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LastUpdatedTime = schema.new({
            id = id.from(_N, "Budget", "LastUpdatedTime"),
            type = "timestamp",
            name = "LastUpdatedTime",
            target_id = prelude.Timestamp.id,
        }),
        AutoAdjustData = schema.new({
            id = id.from(_N, "Budget", "AutoAdjustData"),
            type = "structure",
            name = "AutoAdjustData",
            target_id = id.from(_N, "AutoAdjustData"),
            target = M.AutoAdjustData,
        }),
        FilterExpression = schema.new({
            id = id.from(_N, "Budget", "FilterExpression"),
            type = "structure",
            name = "FilterExpression",
            target_id = id.from(_N, "Expression"),
            target = M.Expression,
        }),
        Metrics = schema.new({
            id = id.from(_N, "Budget", "Metrics"),
            type = "list",
            name = "Metrics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        BillingViewArn = schema.new({
            id = id.from(_N, "Budget", "BillingViewArn"),
            type = "string",
            name = "BillingViewArn",
            target_id = prelude.String.id,
        }),
        HealthStatus = schema.new({
            id = id.from(_N, "Budget", "HealthStatus"),
            type = "structure",
            name = "HealthStatus",
            target_id = id.from(_N, "HealthStatus"),
            target = M.HealthStatus,
        }),
    },
})

M.BudgetPerformanceHistory = schema.new({
    id = id.from(_N, "BudgetPerformanceHistory"),
    type = "structure",
    members = {
        BudgetName = schema.new({
            id = id.from(_N, "BudgetPerformanceHistory", "BudgetName"),
            type = "string",
            name = "BudgetName",
            target_id = prelude.String.id,
        }),
        BudgetType = schema.new({
            id = id.from(_N, "BudgetPerformanceHistory", "BudgetType"),
            type = "string",
            name = "BudgetType",
            target_id = prelude.String.id,
        }),
        CostFilters = schema.new({
            id = id.from(_N, "BudgetPerformanceHistory", "CostFilters"),
            type = "map",
            name = "CostFilters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
        CostTypes = schema.new({
            id = id.from(_N, "BudgetPerformanceHistory", "CostTypes"),
            type = "structure",
            name = "CostTypes",
            target_id = id.from(_N, "CostTypes"),
            target = M.CostTypes,
        }),
        TimeUnit = schema.new({
            id = id.from(_N, "BudgetPerformanceHistory", "TimeUnit"),
            type = "string",
            name = "TimeUnit",
            target_id = prelude.String.id,
        }),
        BillingViewArn = schema.new({
            id = id.from(_N, "BudgetPerformanceHistory", "BillingViewArn"),
            type = "string",
            name = "BillingViewArn",
            target_id = prelude.String.id,
        }),
        BudgetedAndActualAmountsList = schema.new({
            id = id.from(_N, "BudgetPerformanceHistory", "BudgetedAndActualAmountsList"),
            type = "list",
            name = "BudgetedAndActualAmountsList",
            target_id = prelude.Document.id,
            list_member = M.BudgetedAndActualAmounts,
        }),
        FilterExpression = schema.new({
            id = id.from(_N, "BudgetPerformanceHistory", "FilterExpression"),
            type = "structure",
            name = "FilterExpression",
            target_id = id.from(_N, "Expression"),
            target = M.Expression,
        }),
        Metrics = schema.new({
            id = id.from(_N, "BudgetPerformanceHistory", "Metrics"),
            type = "list",
            name = "Metrics",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateBudgetInput = schema.new({
    id = id.from(_N, "CreateBudgetInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "CreateBudgetInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Budget = schema.new({
            id = id.from(_N, "CreateBudgetInput", "Budget"),
            type = "structure",
            name = "Budget",
            target_id = id.from(_N, "Budget"),
            target = M.Budget,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NotificationsWithSubscribers = schema.new({
            id = id.from(_N, "CreateBudgetInput", "NotificationsWithSubscribers"),
            type = "list",
            name = "NotificationsWithSubscribers",
            target_id = prelude.Document.id,
            list_member = M.NotificationWithSubscribers,
        }),
        ResourceTags = schema.new({
            id = id.from(_N, "CreateBudgetInput", "ResourceTags"),
            type = "list",
            name = "ResourceTags",
            target_id = prelude.Document.id,
            list_member = M.ResourceTag,
        }),
    },
})

M.DescribeBudgetOutput = schema.new({
    id = id.from(_N, "DescribeBudgetOutput"),
    type = "structure",
    members = {
        Budget = schema.new({
            id = id.from(_N, "DescribeBudgetOutput", "Budget"),
            type = "structure",
            name = "Budget",
            target_id = id.from(_N, "Budget"),
            target = M.Budget,
        }),
    },
})

M.DescribeBudgetPerformanceHistoryOutput = schema.new({
    id = id.from(_N, "DescribeBudgetPerformanceHistoryOutput"),
    type = "structure",
    members = {
        BudgetPerformanceHistory = schema.new({
            id = id.from(_N, "DescribeBudgetPerformanceHistoryOutput", "BudgetPerformanceHistory"),
            type = "structure",
            name = "BudgetPerformanceHistory",
            target_id = id.from(_N, "BudgetPerformanceHistory"),
            target = M.BudgetPerformanceHistory,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeBudgetPerformanceHistoryOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateBudgetInput = schema.new({
    id = id.from(_N, "UpdateBudgetInput"),
    type = "structure",
    members = {
        AccountId = schema.new({
            id = id.from(_N, "UpdateBudgetInput", "AccountId"),
            type = "string",
            name = "AccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewBudget = schema.new({
            id = id.from(_N, "UpdateBudgetInput", "NewBudget"),
            type = "structure",
            name = "NewBudget",
            target_id = id.from(_N, "Budget"),
            target = M.Budget,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeBudgetsOutput = schema.new({
    id = id.from(_N, "DescribeBudgetsOutput"),
    type = "structure",
    members = {
        Budgets = schema.new({
            id = id.from(_N, "DescribeBudgetsOutput", "Budgets"),
            type = "list",
            name = "Budgets",
            target_id = prelude.Document.id,
            list_member = M.Budget,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeBudgetsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

return M
