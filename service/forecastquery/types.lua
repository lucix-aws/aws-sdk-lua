local M = {}

M.InvalidInputException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
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

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.QueryForecastInput = {
    type = "structure",
    members = {
        ForecastArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartDate = {
            type = "string",
        },
        EndDate = {
            type = "string",
        },
        Filters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DataPoint = {
    type = "structure",
    members = {
        Timestamp = {
            type = "string",
        },
        Value = {
            type = "double",
        },
    },
}

M.Forecast = {
    type = "structure",
    members = {
        Predictions = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.QueryForecastOutput = {
    type = "structure",
    members = {
        Forecast = M.Forecast,
    },
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.QueryWhatIfForecastInput = {
    type = "structure",
    members = {
        WhatIfForecastArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StartDate = {
            type = "string",
        },
        EndDate = {
            type = "string",
        },
        Filters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
    },
}

M.QueryWhatIfForecastOutput = {
    type = "structure",
    members = {
        Forecast = M.Forecast,
    },
}

return M
