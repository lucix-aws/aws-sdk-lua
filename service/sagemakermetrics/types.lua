local M = {}

M.MetricStatistic = {
    MIN = "Min",
    MAX = "Max",
    AVG = "Avg",
    COUNT = "Count",
    STD_DEV = "StdDev",
    LAST = "Last",
}

M.Period = {
    ONE_MINUTE = "OneMinute",
    FIVE_MINUTE = "FiveMinute",
    ONE_HOUR = "OneHour",
    ITERATION_NUMBER = "IterationNumber",
}

M.XAxisType = {
    ITERATION_NUMBER = "IterationNumber",
    TIMESTAMP = "Timestamp",
}

M.MetricQuery = {
    type = "structure",
    members = {
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ResourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricStat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Period = {
            type = "string",
            traits = {
                required = true,
            },
        },
        XAxisType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Start = {
            type = "number",
        },
        End = {
            type = "number",
        },
    },
}

M.BatchGetMetricsInput = {
    type = "structure",
    members = {
        MetricQueries = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.MetricQueryResultStatus = {
    COMPLETE = "Complete",
    TRUNCATED = "Truncated",
    INTERNAL_ERROR = "InternalError",
    VALIDATION_ERROR = "ValidationError",
}

M.MetricQueryResult = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Message = {
            type = "string",
        },
        XAxisValues = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
        MetricValues = {
            type = "list",
            member_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetMetricsOutput = {
    type = "structure",
    members = {
        MetricQueryResults = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RawMetricData = {
    type = "structure",
    members = {
        MetricName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Timestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        Step = {
            type = "number",
        },
        Value = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutMetricsInput = {
    type = "structure",
    members = {
        TrialComponentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MetricData = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.PutMetricsErrorCode = {
    METRIC_LIMIT_EXCEEDED = "METRIC_LIMIT_EXCEEDED",
    INTERNAL_ERROR = "INTERNAL_ERROR",
    VALIDATION_ERROR = "VALIDATION_ERROR",
    CONFLICT_ERROR = "CONFLICT_ERROR",
}

M.BatchPutMetricsError = {
    type = "structure",
    members = {
        Code = {
            type = "string",
        },
        MetricIndex = {
            type = "number",
        },
    },
}

M.BatchPutMetricsOutput = {
    type = "structure",
    members = {
        Errors = {
            type = "list",
            member_type = "structure",
        },
    },
}

return M
