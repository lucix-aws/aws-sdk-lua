local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.sagemakermetrics"

local M = {}

M.MetricQuery = schema.new({
    id = id.from(_N, "MetricQuery"),
    type = "structure",
    members = {
        MetricName = schema.new({
            id = id.from(_N, "MetricQuery", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "MetricQuery", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetricStat = schema.new({
            id = id.from(_N, "MetricQuery", "MetricStat"),
            type = "string",
            name = "MetricStat",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Period = schema.new({
            id = id.from(_N, "MetricQuery", "Period"),
            type = "string",
            name = "Period",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        XAxisType = schema.new({
            id = id.from(_N, "MetricQuery", "XAxisType"),
            type = "string",
            name = "XAxisType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Start = schema.new({
            id = id.from(_N, "MetricQuery", "Start"),
            type = "long",
            name = "Start",
            target_id = prelude.Long.id,
        }),
        End = schema.new({
            id = id.from(_N, "MetricQuery", "End"),
            type = "long",
            name = "End",
            target_id = prelude.Long.id,
        }),
    },
})

M.BatchGetMetricsInput = schema.new({
    id = id.from(_N, "BatchGetMetricsInput"),
    type = "structure",
    members = {
        MetricQueries = schema.new({
            id = id.from(_N, "BatchGetMetricsInput", "MetricQueries"),
            type = "list",
            name = "MetricQueries",
            target_id = prelude.Document.id,
            list_member = M.MetricQuery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MetricQueryResult = schema.new({
    id = id.from(_N, "MetricQueryResult"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "MetricQueryResult", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "MetricQueryResult", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
        XAxisValues = schema.new({
            id = id.from(_N, "MetricQueryResult", "XAxisValues"),
            type = "list",
            name = "XAxisValues",
            target_id = prelude.Document.id,
            list_member = prelude.Long,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetricValues = schema.new({
            id = id.from(_N, "MetricQueryResult", "MetricValues"),
            type = "list",
            name = "MetricValues",
            target_id = prelude.Document.id,
            list_member = prelude.Double,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetMetricsOutput = schema.new({
    id = id.from(_N, "BatchGetMetricsOutput"),
    type = "structure",
    members = {
        MetricQueryResults = schema.new({
            id = id.from(_N, "BatchGetMetricsOutput", "MetricQueryResults"),
            type = "list",
            name = "MetricQueryResults",
            target_id = prelude.Document.id,
            list_member = M.MetricQueryResult,
        }),
    },
})

M.RawMetricData = schema.new({
    id = id.from(_N, "RawMetricData"),
    type = "structure",
    members = {
        MetricName = schema.new({
            id = id.from(_N, "RawMetricData", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Timestamp = schema.new({
            id = id.from(_N, "RawMetricData", "Timestamp"),
            type = "timestamp",
            name = "Timestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Step = schema.new({
            id = id.from(_N, "RawMetricData", "Step"),
            type = "integer",
            name = "Step",
            target_id = prelude.Integer.id,
        }),
        Value = schema.new({
            id = id.from(_N, "RawMetricData", "Value"),
            type = "double",
            name = "Value",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchPutMetricsInput = schema.new({
    id = id.from(_N, "BatchPutMetricsInput"),
    type = "structure",
    members = {
        TrialComponentName = schema.new({
            id = id.from(_N, "BatchPutMetricsInput", "TrialComponentName"),
            type = "string",
            name = "TrialComponentName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetricData = schema.new({
            id = id.from(_N, "BatchPutMetricsInput", "MetricData"),
            type = "list",
            name = "MetricData",
            target_id = prelude.Document.id,
            list_member = M.RawMetricData,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchPutMetricsError = schema.new({
    id = id.from(_N, "BatchPutMetricsError"),
    type = "structure",
    members = {
        Code = schema.new({
            id = id.from(_N, "BatchPutMetricsError", "Code"),
            type = "string",
            name = "Code",
            target_id = prelude.String.id,
        }),
        MetricIndex = schema.new({
            id = id.from(_N, "BatchPutMetricsError", "MetricIndex"),
            type = "integer",
            name = "MetricIndex",
            target_id = prelude.Integer.id,
        }),
    },
})

M.BatchPutMetricsOutput = schema.new({
    id = id.from(_N, "BatchPutMetricsOutput"),
    type = "structure",
    members = {
        Errors = schema.new({
            id = id.from(_N, "BatchPutMetricsOutput", "Errors"),
            type = "list",
            name = "Errors",
            target_id = prelude.Document.id,
            list_member = M.BatchPutMetricsError,
        }),
    },
})

return M
