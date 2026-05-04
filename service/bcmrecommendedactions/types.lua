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

M.FilterName = {
    FEATURE = "FEATURE",
    SEVERITY = "SEVERITY",
    TYPE = "TYPE",
}

M.MatchOption = {
    EQUALS = "EQUALS",
    NOT_EQUALS = "NOT_EQUALS",
}

M.ActionFilter = {
    type = "structure",
    members = {
        key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        matchOption = {
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

M.ActionType = {
    ADD_ALTERNATE_BILLING_CONTACT = "ADD_ALTERNATE_BILLING_CONTACT",
    CREATE_ANOMALY_MONITOR = "CREATE_ANOMALY_MONITOR",
    CREATE_BUDGET = "CREATE_BUDGET",
    ENABLE_COST_OPTIMIZATION_HUB = "ENABLE_COST_OPTIMIZATION_HUB",
    MIGRATE_TO_GRANULAR_PERMISSIONS = "MIGRATE_TO_GRANULAR_PERMISSIONS",
    PAYMENTS_DUE = "PAYMENTS_DUE",
    PAYMENTS_PAST_DUE = "PAYMENTS_PAST_DUE",
    REVIEW_ANOMALIES = "REVIEW_ANOMALIES",
    REVIEW_BUDGET_ALERTS = "REVIEW_BUDGET_ALERTS",
    REVIEW_BUDGETS_EXCEEDED = "REVIEW_BUDGETS_EXCEEDED",
    REVIEW_EXPIRING_RI = "REVIEW_EXPIRING_RI",
    REVIEW_EXPIRING_SP = "REVIEW_EXPIRING_SP",
    REVIEW_FREETIER_USAGE_ALERTS = "REVIEW_FREETIER_USAGE_ALERTS",
    REVIEW_FREETIER_CREDITS_REMAINING = "REVIEW_FREETIER_CREDITS_REMAINING",
    REVIEW_FREETIER_DAYS_REMAINING = "REVIEW_FREETIER_DAYS_REMAINING",
    REVIEW_SAVINGS_OPPORTUNITY_RECOMMENDATIONS = "REVIEW_SAVINGS_OPPORTUNITY_RECOMMENDATIONS",
    UPDATE_EXPIRED_PAYMENT_METHOD = "UPDATE_EXPIRED_PAYMENT_METHOD",
    UPDATE_INVALID_PAYMENT_METHOD = "UPDATE_INVALID_PAYMENT_METHOD",
    UPDATE_TAX_EXEMPTION_CERTIFICATE = "UPDATE_TAX_EXEMPTION_CERTIFICATE",
    UPDATE_TAX_REGISTRATION_NUMBER = "UPDATE_TAX_REGISTRATION_NUMBER",
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

M.RequestFilter = {
    type = "structure",
    members = {
        actions = {
            type = "list",
            member = M.ActionFilter,
        },
    },
}

M.ListRecommendedActionsInput = {
    type = "structure",
    members = {
        filter = M.RequestFilter,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.Feature = {
    ACCOUNT = "ACCOUNT",
    BUDGETS = "BUDGETS",
    COST_ANOMALY_DETECTION = "COST_ANOMALY_DETECTION",
    COST_OPTIMIZATION_HUB = "COST_OPTIMIZATION_HUB",
    FREE_TIER = "FREE_TIER",
    IAM = "IAM",
    PAYMENTS = "PAYMENTS",
    RESERVATIONS = "RESERVATIONS",
    SAVINGS_PLANS = "SAVINGS_PLANS",
    TAX_SETTINGS = "TAX_SETTINGS",
}

M.Severity = {
    INFO = "INFO",
    WARNING = "WARNING",
    CRITICAL = "CRITICAL",
}

M.RecommendedAction = {
    type = "structure",
    members = {
        id = {
            type = "string",
        },
        type = {
            type = "string",
        },
        accountId = {
            type = "string",
        },
        severity = {
            type = "string",
        },
        feature = {
            type = "string",
        },
        context = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        nextSteps = {
            type = "list",
            member = { type = "string" },
        },
        lastUpdatedTimeStamp = {
            type = "string",
        },
    },
}

M.ListRecommendedActionsOutput = {
    type = "structure",
    members = {
        recommendedActions = {
            type = "list",
            member = M.RecommendedAction,
            traits = {
                required = true,
            },
        },
        nextToken = {
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
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
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
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member = M.ValidationExceptionField,
        },
    },
}

return M
