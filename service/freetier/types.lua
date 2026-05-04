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
    members = {
        amount = {
            type = "number",
            traits = {
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
    members = {
        credit = {
            type = "structure",
        },
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
        reward = {
            type = "union",
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
        reward = {
            type = "union",
            traits = {
                required = true,
            },
        },
        estimatedTimeToCompleteInMinutes = {
            type = "number",
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

M.GetAccountPlanStateInput = {
    type = "structure",
}

M.GetAccountPlanStateOutput = {
    type = "structure",
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
        accountPlanRemainingCredits = {
            type = "structure",
        },
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
            traits = {
                required = true,
            },
        },
    },
}

M.FreeTierUsage = {
    type = "structure",
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
            type = "number",
        },
        forecastedUsageAmount = {
            type = "number",
        },
        limit = {
            type = "number",
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
    members = {
        freeTierUsages = {
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

M.ListAccountActivitiesInput = {
    type = "structure",
    members = {
        filterActivityStatuses = {
            type = "list",
            member_type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        languageCode = {
            type = "string",
        },
    },
}

M.ListAccountActivitiesOutput = {
    type = "structure",
    members = {
        activities = {
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

M.UpgradeAccountPlanInput = {
    type = "structure",
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
    },
}

M.GetFreeTierUsageInput = {
    type = "structure",
    members = {
        filter = {
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

return M
