local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.forecastquery"

local M = {}

M.Filters = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.Predictions = schema.new({ type = "map", map_key = prelude.String, map_value = M.TimeSeries })

M.TimeSeries = schema.new({ type = "list", list_member = M.DataPoint })

M.InvalidInputException = schema.new({
    id = id.from(_N, "InvalidInputException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidInputException", "Message"),
            type = "string",
            name = "Message",
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

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "LimitExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.QueryForecastInput = schema.new({
    id = id.from(_N, "QueryForecastRequest"),
    type = "structure",
    members = {
        ForecastArn = schema.new({
            id = id.from(_N, "QueryForecastInput", "ForecastArn"),
            type = "string",
            name = "ForecastArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartDate = schema.new({
            id = id.from(_N, "QueryForecastInput", "StartDate"),
            type = "string",
            name = "StartDate",
            target_id = prelude.String.id,
        }),
        EndDate = schema.new({
            id = id.from(_N, "QueryForecastInput", "EndDate"),
            type = "string",
            name = "EndDate",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "QueryForecastInput", "Filters"),
            type = "map",
            name = "Filters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "QueryForecastInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DataPoint = schema.new({
    id = id.from(_N, "DataPoint"),
    type = "structure",
    members = {
        Timestamp = schema.new({
            id = id.from(_N, "DataPoint", "Timestamp"),
            type = "string",
            name = "Timestamp",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "DataPoint", "Value"),
            type = "double",
            name = "Value",
            target_id = prelude.Double.id,
        }),
    },
})

M.Forecast = schema.new({
    id = id.from(_N, "Forecast"),
    type = "structure",
    members = {
        Predictions = schema.new({
            id = id.from(_N, "Forecast", "Predictions"),
            type = "map",
            name = "Predictions",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = M.DataPoint }),
        }),
    },
})

M.QueryForecastOutput = schema.new({
    id = id.from(_N, "QueryForecastResponse"),
    type = "structure",
    members = {
        Forecast = schema.new({
            id = id.from(_N, "QueryForecastOutput", "Forecast"),
            type = "structure",
            name = "Forecast",
            target_id = id.from(_N, "Forecast"),
            target = M.Forecast,
        }),
    },
})

M.ResourceInUseException = schema.new({
    id = id.from(_N, "ResourceInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceInUseException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.QueryWhatIfForecastInput = schema.new({
    id = id.from(_N, "QueryWhatIfForecastRequest"),
    type = "structure",
    members = {
        WhatIfForecastArn = schema.new({
            id = id.from(_N, "QueryWhatIfForecastInput", "WhatIfForecastArn"),
            type = "string",
            name = "WhatIfForecastArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        StartDate = schema.new({
            id = id.from(_N, "QueryWhatIfForecastInput", "StartDate"),
            type = "string",
            name = "StartDate",
            target_id = prelude.String.id,
        }),
        EndDate = schema.new({
            id = id.from(_N, "QueryWhatIfForecastInput", "EndDate"),
            type = "string",
            name = "EndDate",
            target_id = prelude.String.id,
        }),
        Filters = schema.new({
            id = id.from(_N, "QueryWhatIfForecastInput", "Filters"),
            type = "map",
            name = "Filters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "QueryWhatIfForecastInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.QueryWhatIfForecastOutput = schema.new({
    id = id.from(_N, "QueryWhatIfForecastResponse"),
    type = "structure",
    members = {
        Forecast = schema.new({
            id = id.from(_N, "QueryWhatIfForecastOutput", "Forecast"),
            type = "structure",
            name = "Forecast",
            target_id = id.from(_N, "Forecast"),
            target = M.Forecast,
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
