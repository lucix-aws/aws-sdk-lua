local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.EmissionsType = {
    TOTAL_LBM_CARBON_EMISSIONS = "TOTAL_LBM_CARBON_EMISSIONS",
    TOTAL_MBM_CARBON_EMISSIONS = "TOTAL_MBM_CARBON_EMISSIONS",
    TOTAL_SCOPE_1_CARBON_EMISSIONS = "TOTAL_SCOPE_1_CARBON_EMISSIONS",
    TOTAL_SCOPE_2_LBM_CARBON_EMISSIONS = "TOTAL_SCOPE_2_LBM_CARBON_EMISSIONS",
    TOTAL_SCOPE_2_MBM_CARBON_EMISSIONS = "TOTAL_SCOPE_2_MBM_CARBON_EMISSIONS",
    TOTAL_SCOPE_3_LBM_CARBON_EMISSIONS = "TOTAL_SCOPE_3_LBM_CARBON_EMISSIONS",
    TOTAL_SCOPE_3_MBM_CARBON_EMISSIONS = "TOTAL_SCOPE_3_MBM_CARBON_EMISSIONS",
}

M.Dimension = {
    USAGE_ACCOUNT_ID = "USAGE_ACCOUNT_ID",
    REGION = "REGION",
    SERVICE = "SERVICE",
}

M.FilterExpression = {
    type = "structure",
    members = {
        Dimensions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.TimeGranularity = {
    YEARLY_CALENDAR = "YEARLY_CALENDAR",
    YEARLY_FISCAL = "YEARLY_FISCAL",
    QUARTERLY_CALENDAR = "QUARTERLY_CALENDAR",
    QUARTERLY_FISCAL = "QUARTERLY_FISCAL",
    MONTHLY = "MONTHLY",
}

M.GranularityConfiguration = {
    type = "structure",
    members = {
        FiscalYearStartMonth = {
            type = "integer",
            traits = {
                default = 1,
            },
        },
    },
}

M.TimePeriod = {
    type = "structure",
    members = {
        Start = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        End = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.GetEstimatedCarbonEmissionsInput = {
    type = "structure",
    members = {
        TimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimePeriod }),
        GroupBy = {
            type = "list",
            member = { type = "string" },
        },
        FilterBy = M.FilterExpression,
        EmissionsTypes = {
            type = "list",
            member = { type = "string" },
        },
        Granularity = {
            type = "string",
            traits = {
                default = "MONTHLY",
            },
        },
        GranularityConfiguration = M.GranularityConfiguration,
        MaxResults = {
            type = "integer",
            traits = {
                default = 1000,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.EmissionsUnit = {
    MT_CO2E = "MTCO2e",
}

M.Emissions = {
    type = "structure",
    members = {
        Value = {
            type = "double",
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

M.EstimatedCarbonEmissions = {
    type = "structure",
    members = {
        TimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimePeriod }),
        DimensionsValues = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        ModelVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        EmissionsValues = {
            type = "map",
            key = { type = "string" },
            value = M.Emissions,
            traits = {
                required = true,
            },
        },
    },
}

M.GetEstimatedCarbonEmissionsOutput = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member = M.EstimatedCarbonEmissions,
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
            traits = {
                json_name = "message",
                required = true,
            },
        },
    },
}

M.GetEstimatedCarbonEmissionsDimensionValuesInput = {
    type = "structure",
    members = {
        TimePeriod = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TimePeriod }),
        Dimensions = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "integer",
            traits = {
                default = 1000,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DimensionEntry = {
    type = "structure",
    members = {
        Dimension = {
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

M.GetEstimatedCarbonEmissionsDimensionValuesOutput = {
    type = "structure",
    members = {
        Results = {
            type = "list",
            member = M.DimensionEntry,
        },
        NextToken = {
            type = "string",
        },
    },
}

return M
