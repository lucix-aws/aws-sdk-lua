local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.sustainability"

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
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.FilterExpression = schema.new({
    id = id.from(_N, "FilterExpression"),
    type = "structure",
    members = {
        Dimensions = schema.new({
            id = id.from(_N, "FilterExpression", "Dimensions"),
            type = "map",
            name = "Dimensions",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = schema.new({ type = "list", list_member = prelude.String }),
        }),
    },
})

M.GranularityConfiguration = schema.new({
    id = id.from(_N, "GranularityConfiguration"),
    type = "structure",
    members = {
        FiscalYearStartMonth = schema.new({
            id = id.from(_N, "GranularityConfiguration", "FiscalYearStartMonth"),
            type = "integer",
            name = "FiscalYearStartMonth",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 1 },
            },
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
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        End = schema.new({
            id = id.from(_N, "TimePeriod", "End"),
            type = "timestamp",
            name = "End",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetEstimatedCarbonEmissionsInput = schema.new({
    id = id.from(_N, "GetEstimatedCarbonEmissionsRequest"),
    type = "structure",
    members = {
        TimePeriod = schema.new({
            id = id.from(_N, "GetEstimatedCarbonEmissionsInput", "TimePeriod"),
            type = "structure",
            name = "TimePeriod",
            target_id = id.from(_N, "TimePeriod"),
            target = M.TimePeriod,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupBy = schema.new({
            id = id.from(_N, "GetEstimatedCarbonEmissionsInput", "GroupBy"),
            type = "list",
            name = "GroupBy",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        FilterBy = schema.new({
            id = id.from(_N, "GetEstimatedCarbonEmissionsInput", "FilterBy"),
            type = "structure",
            name = "FilterBy",
            target_id = id.from(_N, "FilterExpression"),
            target = M.FilterExpression,
        }),
        EmissionsTypes = schema.new({
            id = id.from(_N, "GetEstimatedCarbonEmissionsInput", "EmissionsTypes"),
            type = "list",
            name = "EmissionsTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Granularity = schema.new({
            id = id.from(_N, "GetEstimatedCarbonEmissionsInput", "Granularity"),
            type = "string",
            name = "Granularity",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "MONTHLY" },
            },
        }),
        GranularityConfiguration = schema.new({
            id = id.from(_N, "GetEstimatedCarbonEmissionsInput", "GranularityConfiguration"),
            type = "structure",
            name = "GranularityConfiguration",
            target_id = id.from(_N, "GranularityConfiguration"),
            target = M.GranularityConfiguration,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetEstimatedCarbonEmissionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 1000 },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetEstimatedCarbonEmissionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Emissions = schema.new({
    id = id.from(_N, "Emissions"),
    type = "structure",
    members = {
        Value = schema.new({
            id = id.from(_N, "Emissions", "Value"),
            type = "double",
            name = "Value",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Unit = schema.new({
            id = id.from(_N, "Emissions", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EstimatedCarbonEmissions = schema.new({
    id = id.from(_N, "EstimatedCarbonEmissions"),
    type = "structure",
    members = {
        TimePeriod = schema.new({
            id = id.from(_N, "EstimatedCarbonEmissions", "TimePeriod"),
            type = "structure",
            name = "TimePeriod",
            target_id = id.from(_N, "TimePeriod"),
            target = M.TimePeriod,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DimensionsValues = schema.new({
            id = id.from(_N, "EstimatedCarbonEmissions", "DimensionsValues"),
            type = "map",
            name = "DimensionsValues",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ModelVersion = schema.new({
            id = id.from(_N, "EstimatedCarbonEmissions", "ModelVersion"),
            type = "string",
            name = "ModelVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EmissionsValues = schema.new({
            id = id.from(_N, "EstimatedCarbonEmissions", "EmissionsValues"),
            type = "map",
            name = "EmissionsValues",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.Emissions,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetEstimatedCarbonEmissionsOutput = schema.new({
    id = id.from(_N, "GetEstimatedCarbonEmissionsResponse"),
    type = "structure",
    members = {
        Results = schema.new({
            id = id.from(_N, "GetEstimatedCarbonEmissionsOutput", "Results"),
            type = "list",
            name = "Results",
            target_id = prelude.Document.id,
            list_member = M.EstimatedCarbonEmissions,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetEstimatedCarbonEmissionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "message" },
            },
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
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.GetEstimatedCarbonEmissionsDimensionValuesInput = schema.new({
    id = id.from(_N, "GetEstimatedCarbonEmissionsDimensionValuesRequest"),
    type = "structure",
    members = {
        TimePeriod = schema.new({
            id = id.from(_N, "GetEstimatedCarbonEmissionsDimensionValuesInput", "TimePeriod"),
            type = "structure",
            name = "TimePeriod",
            target_id = id.from(_N, "TimePeriod"),
            target = M.TimePeriod,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Dimensions = schema.new({
            id = id.from(_N, "GetEstimatedCarbonEmissionsDimensionValuesInput", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetEstimatedCarbonEmissionsDimensionValuesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 1000 },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetEstimatedCarbonEmissionsDimensionValuesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DimensionEntry = schema.new({
    id = id.from(_N, "DimensionEntry"),
    type = "structure",
    members = {
        Dimension = schema.new({
            id = id.from(_N, "DimensionEntry", "Dimension"),
            type = "string",
            name = "Dimension",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "DimensionEntry", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetEstimatedCarbonEmissionsDimensionValuesOutput = schema.new({
    id = id.from(_N, "GetEstimatedCarbonEmissionsDimensionValuesResponse"),
    type = "structure",
    members = {
        Results = schema.new({
            id = id.from(_N, "GetEstimatedCarbonEmissionsDimensionValuesOutput", "Results"),
            type = "list",
            name = "Results",
            target_id = prelude.Document.id,
            list_member = M.DimensionEntry,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetEstimatedCarbonEmissionsDimensionValuesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
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
