local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.sagemakera2iruntime"

local M = {}

M.DeleteHumanLoopInput = schema.new({
    id = id.from(_N, "DeleteHumanLoopInput"),
    type = "structure",
    members = {
        HumanLoopName = schema.new({
            id = id.from(_N, "DeleteHumanLoopInput", "HumanLoopName"),
            type = "string",
            name = "HumanLoopName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteHumanLoopOutput = schema.new({
    id = id.from(_N, "DeleteHumanLoopOutput"),
    type = "structure",
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
        }),
    },
})

M.DescribeHumanLoopInput = schema.new({
    id = id.from(_N, "DescribeHumanLoopInput"),
    type = "structure",
    members = {
        HumanLoopName = schema.new({
            id = id.from(_N, "DescribeHumanLoopInput", "HumanLoopName"),
            type = "string",
            name = "HumanLoopName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.HumanLoopOutput = schema.new({
    id = id.from(_N, "HumanLoopOutput"),
    type = "structure",
    members = {
        OutputS3Uri = schema.new({
            id = id.from(_N, "HumanLoopOutput", "OutputS3Uri"),
            type = "string",
            name = "OutputS3Uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeHumanLoopOutput = schema.new({
    id = id.from(_N, "DescribeHumanLoopOutput"),
    type = "structure",
    members = {
        CreationTime = schema.new({
            id = id.from(_N, "DescribeHumanLoopOutput", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FailureReason = schema.new({
            id = id.from(_N, "DescribeHumanLoopOutput", "FailureReason"),
            type = "string",
            name = "FailureReason",
            target_id = prelude.String.id,
        }),
        FailureCode = schema.new({
            id = id.from(_N, "DescribeHumanLoopOutput", "FailureCode"),
            type = "string",
            name = "FailureCode",
            target_id = prelude.String.id,
        }),
        HumanLoopStatus = schema.new({
            id = id.from(_N, "DescribeHumanLoopOutput", "HumanLoopStatus"),
            type = "string",
            name = "HumanLoopStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HumanLoopName = schema.new({
            id = id.from(_N, "DescribeHumanLoopOutput", "HumanLoopName"),
            type = "string",
            name = "HumanLoopName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HumanLoopArn = schema.new({
            id = id.from(_N, "DescribeHumanLoopOutput", "HumanLoopArn"),
            type = "string",
            name = "HumanLoopArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FlowDefinitionArn = schema.new({
            id = id.from(_N, "DescribeHumanLoopOutput", "FlowDefinitionArn"),
            type = "string",
            name = "FlowDefinitionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HumanLoopOutput = schema.new({
            id = id.from(_N, "DescribeHumanLoopOutput", "HumanLoopOutput"),
            type = "structure",
            name = "HumanLoopOutput",
            target_id = id.from(_N, "HumanLoopOutput"),
            target = M.HumanLoopOutput,
        }),
    },
})

M.ListHumanLoopsInput = schema.new({
    id = id.from(_N, "ListHumanLoopsInput"),
    type = "structure",
    members = {
        CreationTimeAfter = schema.new({
            id = id.from(_N, "ListHumanLoopsInput", "CreationTimeAfter"),
            type = "timestamp",
            name = "CreationTimeAfter",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "CreationTimeAfter" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.HTTP_QUERY] = { name = "CreationTimeAfter" },
            },
        }),
        CreationTimeBefore = schema.new({
            id = id.from(_N, "ListHumanLoopsInput", "CreationTimeBefore"),
            type = "timestamp",
            name = "CreationTimeBefore",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "CreationTimeBefore" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.HTTP_QUERY] = { name = "CreationTimeBefore" },
            },
        }),
        FlowDefinitionArn = schema.new({
            id = id.from(_N, "ListHumanLoopsInput", "FlowDefinitionArn"),
            type = "string",
            name = "FlowDefinitionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "FlowDefinitionArn" },
            },
        }),
        SortOrder = schema.new({
            id = id.from(_N, "ListHumanLoopsInput", "SortOrder"),
            type = "string",
            name = "SortOrder",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "SortOrder" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListHumanLoopsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListHumanLoopsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
    },
})

M.HumanLoopSummary = schema.new({
    id = id.from(_N, "HumanLoopSummary"),
    type = "structure",
    members = {
        HumanLoopName = schema.new({
            id = id.from(_N, "HumanLoopSummary", "HumanLoopName"),
            type = "string",
            name = "HumanLoopName",
            target_id = prelude.String.id,
        }),
        HumanLoopStatus = schema.new({
            id = id.from(_N, "HumanLoopSummary", "HumanLoopStatus"),
            type = "string",
            name = "HumanLoopStatus",
            target_id = prelude.String.id,
        }),
        CreationTime = schema.new({
            id = id.from(_N, "HumanLoopSummary", "CreationTime"),
            type = "timestamp",
            name = "CreationTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        FailureReason = schema.new({
            id = id.from(_N, "HumanLoopSummary", "FailureReason"),
            type = "string",
            name = "FailureReason",
            target_id = prelude.String.id,
        }),
        FlowDefinitionArn = schema.new({
            id = id.from(_N, "HumanLoopSummary", "FlowDefinitionArn"),
            type = "string",
            name = "FlowDefinitionArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListHumanLoopsOutput = schema.new({
    id = id.from(_N, "ListHumanLoopsOutput"),
    type = "structure",
    members = {
        HumanLoopSummaries = schema.new({
            id = id.from(_N, "ListHumanLoopsOutput", "HumanLoopSummaries"),
            type = "list",
            name = "HumanLoopSummaries",
            target_id = prelude.Document.id,
            list_member = M.HumanLoopSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListHumanLoopsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.HumanLoopDataAttributes = schema.new({
    id = id.from(_N, "HumanLoopDataAttributes"),
    type = "structure",
    members = {
        ContentClassifiers = schema.new({
            id = id.from(_N, "HumanLoopDataAttributes", "ContentClassifiers"),
            type = "list",
            name = "ContentClassifiers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HumanLoopInput = schema.new({
    id = id.from(_N, "HumanLoopInput"),
    type = "structure",
    members = {
        InputContent = schema.new({
            id = id.from(_N, "HumanLoopInput", "InputContent"),
            type = "string",
            name = "InputContent",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartHumanLoopInput = schema.new({
    id = id.from(_N, "StartHumanLoopInput"),
    type = "structure",
    members = {
        HumanLoopName = schema.new({
            id = id.from(_N, "StartHumanLoopInput", "HumanLoopName"),
            type = "string",
            name = "HumanLoopName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FlowDefinitionArn = schema.new({
            id = id.from(_N, "StartHumanLoopInput", "FlowDefinitionArn"),
            type = "string",
            name = "FlowDefinitionArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HumanLoopInput = schema.new({
            id = id.from(_N, "StartHumanLoopInput", "HumanLoopInput"),
            type = "structure",
            name = "HumanLoopInput",
            target_id = id.from(_N, "HumanLoopInput"),
            target = M.HumanLoopInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataAttributes = schema.new({
            id = id.from(_N, "StartHumanLoopInput", "DataAttributes"),
            type = "structure",
            name = "DataAttributes",
            target_id = id.from(_N, "HumanLoopDataAttributes"),
            target = M.HumanLoopDataAttributes,
        }),
    },
})

M.StartHumanLoopOutput = schema.new({
    id = id.from(_N, "StartHumanLoopOutput"),
    type = "structure",
    members = {
        HumanLoopArn = schema.new({
            id = id.from(_N, "StartHumanLoopOutput", "HumanLoopArn"),
            type = "string",
            name = "HumanLoopArn",
            target_id = prelude.String.id,
        }),
    },
})

M.StopHumanLoopInput = schema.new({
    id = id.from(_N, "StopHumanLoopInput"),
    type = "structure",
    members = {
        HumanLoopName = schema.new({
            id = id.from(_N, "StopHumanLoopInput", "HumanLoopName"),
            type = "string",
            name = "HumanLoopName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopHumanLoopOutput = schema.new({
    id = id.from(_N, "StopHumanLoopOutput"),
    type = "structure",
})

return M
