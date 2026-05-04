local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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

M.AccountPlanStatus = {
    NOT_STARTED = "NOT_STARTED",
    ACTIVE = "ACTIVE",
    EXPIRED = "EXPIRED",
}

M.AccountPlanType = {
    FREE = "FREE",
    PAID = "PAID",
}

M.CurrencyCode = {
    USD = "USD",
}

M.MonetaryAmount = {
    type = "structure",
    id = "MonetaryAmount",
    members = {
        amount = {
            type = "double",
            traits = {
                default = 0,
                required = true,
            },
        },
        unit = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActivityReward = {
    type = "union",
    id = "ActivityReward",
    members = {
        credit = M.MonetaryAmount,
    },
}

M.ActivityStatus = {
    NOT_STARTED = "NOT_STARTED",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    EXPIRING = "EXPIRING",
}

M.ActivitySummary = {
    type = "structure",
    id = "ActivitySummary",
    members = {
        activityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reward = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActivityReward }),
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.LanguageCode = {
    EN_US = "en-US",
    EN_GB = "en-GB",
    ID_ID = "id-ID",
    DE_DE = "de-DE",
    ES_ES = "es-ES",
    FR_FR = "fr-FR",
    JA_JP = "ja-JP",
    IT_IT = "it-IT",
    PT_PT = "pt-PT",
    KO_KR = "ko-KR",
    ZH_CN = "zh-CN",
    ZH_TW = "zh-TW",
    TR_TR = "tr-TR",
}

M.GetAccountActivityInput = {
    type = "structure",
    id = "GetAccountActivityInput",
    members = {
        activityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        languageCode = {
            type = "string",
        },
    },
}

M.GetAccountActivityOutput = {
    type = "structure",
    id = "GetAccountActivityOutput",
    members = {
        activityId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
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
        instructionsUrl = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reward = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActivityReward }),
        estimatedTimeToCompleteInMinutes = {
            type = "integer",
        },
        expiresAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        startedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        completedAt = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
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

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
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
    id = "ThrottlingException",
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
    id = "ValidationException",
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

M.GetAccountPlanStateInput = {
    type = "structure",
    id = "GetAccountPlanStateInput",
}

M.GetAccountPlanStateOutput = {
    type = "structure",
    id = "GetAccountPlanStateOutput",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountPlanType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountPlanStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountPlanRemainingCredits = M.MonetaryAmount,
        accountPlanExpirationDate = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.Dimension = {
    SERVICE = "SERVICE",
    OPERATION = "OPERATION",
    USAGE_TYPE = "USAGE_TYPE",
    REGION = "REGION",
    FREE_TIER_TYPE = "FREE_TIER_TYPE",
    DESCRIPTION = "DESCRIPTION",
    USAGE_PERCENTAGE = "USAGE_PERCENTAGE",
}

M.MatchOption = {
    EQUALS = "EQUALS",
    STARTS_WITH = "STARTS_WITH",
    ENDS_WITH = "ENDS_WITH",
    CONTAINS = "CONTAINS",
    GREATER_THAN_OR_EQUAL = "GREATER_THAN_OR_EQUAL",
}

M.DimensionValues = {
    type = "structure",
    id = "DimensionValues",
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
            traits = {
                required = true,
            },
        },
    },
}

M.FreeTierUsage = {
    type = "structure",
    id = "FreeTierUsage",
    members = {
        service = {
            type = "string",
        },
        operation = {
            type = "string",
        },
        usageType = {
            type = "string",
        },
        region = {
            type = "string",
        },
        actualUsageAmount = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        forecastedUsageAmount = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        limit = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        unit = {
            type = "string",
        },
        description = {
            type = "string",
        },
        freeTierType = {
            type = "string",
        },
    },
}

M.GetFreeTierUsageOutput = {
    type = "structure",
    id = "GetFreeTierUsageOutput",
    members = {
        freeTierUsages = {
            type = "list",
            member = M.FreeTierUsage,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAccountActivitiesInput = {
    type = "structure",
    id = "ListAccountActivitiesInput",
    members = {
        filterActivityStatuses = {
            type = "list",
            member = { type = "string" },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
            traits = {
                default = 10,
            },
        },
        languageCode = {
            type = "string",
        },
    },
}

M.ListAccountActivitiesOutput = {
    type = "structure",
    id = "ListAccountActivitiesOutput",
    members = {
        activities = {
            type = "list",
            member = M.ActivitySummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpgradeAccountPlanInput = {
    type = "structure",
    id = "UpgradeAccountPlanInput",
    members = {
        accountPlanType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UpgradeAccountPlanOutput = {
    type = "structure",
    id = "UpgradeAccountPlanOutput",
    members = {
        accountId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountPlanType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        accountPlanStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
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
        Dimensions = M.DimensionValues,
    },
}

M.GetFreeTierUsageInput = {
    type = "structure",
    id = "GetFreeTierUsageInput",
    members = {
        filter = M.Expression,
        maxResults = {
            type = "integer",
            traits = {
                default = 10,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

return M
