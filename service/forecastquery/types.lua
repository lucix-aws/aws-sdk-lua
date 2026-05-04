local M = {}

M.InvalidInputException = {
    type = "structure",
    id = "InvalidInputException",
    error = "client",
    members = {
        Message = {
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

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.QueryForecastInput = {
    type = "structure",
    id = "QueryForecastInput",
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
    id = "DataPoint",
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
    id = "Forecast",
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
    id = "QueryForecastOutput",
    members = {
        Forecast = M.Forecast,
    },
}

M.ResourceInUseException = {
    type = "structure",
    id = "ResourceInUseException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.QueryWhatIfForecastInput = {
    type = "structure",
    id = "QueryWhatIfForecastInput",
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
    id = "QueryWhatIfForecastOutput",
    members = {
        Forecast = M.Forecast,
    },
}

return M
