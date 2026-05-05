local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.migrationhubconfig"

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
        }),
    },
})

M.Target = schema.new({
    id = id.from(_N, "Target"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "Target", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Id = schema.new({
            id = id.from(_N, "Target", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateHomeRegionControlInput = schema.new({
    id = id.from(_N, "CreateHomeRegionControlInput"),
    type = "structure",
    members = {
        HomeRegion = schema.new({
            id = id.from(_N, "CreateHomeRegionControlInput", "HomeRegion"),
            type = "string",
            name = "HomeRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Target = schema.new({
            id = id.from(_N, "CreateHomeRegionControlInput", "Target"),
            type = "structure",
            name = "Target",
            target_id = id.from(_N, "Target"),
            target = M.Target,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DryRun = schema.new({
            id = id.from(_N, "CreateHomeRegionControlInput", "DryRun"),
            type = "boolean",
            name = "DryRun",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.HomeRegionControl = schema.new({
    id = id.from(_N, "HomeRegionControl"),
    type = "structure",
    members = {
        ControlId = schema.new({
            id = id.from(_N, "HomeRegionControl", "ControlId"),
            type = "string",
            name = "ControlId",
            target_id = prelude.String.id,
        }),
        HomeRegion = schema.new({
            id = id.from(_N, "HomeRegionControl", "HomeRegion"),
            type = "string",
            name = "HomeRegion",
            target_id = prelude.String.id,
        }),
        Target = schema.new({
            id = id.from(_N, "HomeRegionControl", "Target"),
            type = "structure",
            name = "Target",
            target_id = id.from(_N, "Target"),
            target = M.Target,
        }),
        RequestedTime = schema.new({
            id = id.from(_N, "HomeRegionControl", "RequestedTime"),
            type = "timestamp",
            name = "RequestedTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateHomeRegionControlOutput = schema.new({
    id = id.from(_N, "CreateHomeRegionControlOutput"),
    type = "structure",
    members = {
        HomeRegionControl = schema.new({
            id = id.from(_N, "CreateHomeRegionControlOutput", "HomeRegionControl"),
            type = "structure",
            name = "HomeRegionControl",
            target_id = id.from(_N, "HomeRegionControl"),
            target = M.HomeRegionControl,
        }),
    },
})

M.DryRunOperation = schema.new({
    id = id.from(_N, "DryRunOperation"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DryRunOperation", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalServerError = schema.new({
    id = id.from(_N, "InternalServerError"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InternalServerError", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

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

M.ServiceUnavailableException = schema.new({
    id = id.from(_N, "ServiceUnavailableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "Message"),
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RetryAfterSeconds = schema.new({
            id = id.from(_N, "ThrottlingException", "RetryAfterSeconds"),
            type = "integer",
            name = "RetryAfterSeconds",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
    },
})

M.DeleteHomeRegionControlInput = schema.new({
    id = id.from(_N, "DeleteHomeRegionControlInput"),
    type = "structure",
    members = {
        ControlId = schema.new({
            id = id.from(_N, "DeleteHomeRegionControlInput", "ControlId"),
            type = "string",
            name = "ControlId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteHomeRegionControlOutput = schema.new({
    id = id.from(_N, "DeleteHomeRegionControlOutput"),
    type = "structure",
})

M.DescribeHomeRegionControlsInput = schema.new({
    id = id.from(_N, "DescribeHomeRegionControlsInput"),
    type = "structure",
    members = {
        ControlId = schema.new({
            id = id.from(_N, "DescribeHomeRegionControlsInput", "ControlId"),
            type = "string",
            name = "ControlId",
            target_id = prelude.String.id,
        }),
        HomeRegion = schema.new({
            id = id.from(_N, "DescribeHomeRegionControlsInput", "HomeRegion"),
            type = "string",
            name = "HomeRegion",
            target_id = prelude.String.id,
        }),
        Target = schema.new({
            id = id.from(_N, "DescribeHomeRegionControlsInput", "Target"),
            type = "structure",
            name = "Target",
            target_id = id.from(_N, "Target"),
            target = M.Target,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "DescribeHomeRegionControlsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeHomeRegionControlsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DescribeHomeRegionControlsOutput = schema.new({
    id = id.from(_N, "DescribeHomeRegionControlsOutput"),
    type = "structure",
    members = {
        HomeRegionControls = schema.new({
            id = id.from(_N, "DescribeHomeRegionControlsOutput", "HomeRegionControls"),
            type = "list",
            name = "HomeRegionControls",
            target_id = prelude.Document.id,
            list_member = M.HomeRegionControl,
        }),
        NextToken = schema.new({
            id = id.from(_N, "DescribeHomeRegionControlsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetHomeRegionInput = schema.new({
    id = id.from(_N, "GetHomeRegionInput"),
    type = "structure",
})

M.GetHomeRegionOutput = schema.new({
    id = id.from(_N, "GetHomeRegionOutput"),
    type = "structure",
    members = {
        HomeRegion = schema.new({
            id = id.from(_N, "GetHomeRegionOutput", "HomeRegion"),
            type = "string",
            name = "HomeRegion",
            target_id = prelude.String.id,
        }),
    },
})

return M
