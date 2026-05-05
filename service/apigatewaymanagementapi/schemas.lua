local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.apigatewaymanagementapi"

local M = {}

M.DeleteConnectionInput = schema.new({
    id = id.from(_N, "DeleteConnectionInput"),
    type = "structure",
    members = {
        ConnectionId = schema.new({
            id = id.from(_N, "DeleteConnectionInput", "ConnectionId"),
            type = "string",
            name = "ConnectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteConnectionOutput = schema.new({
    id = id.from(_N, "DeleteConnectionOutput"),
    type = "structure",
})

M.ForbiddenException = schema.new({
    id = id.from(_N, "ForbiddenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.GoneException = schema.new({
    id = id.from(_N, "GoneException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.GetConnectionInput = schema.new({
    id = id.from(_N, "GetConnectionInput"),
    type = "structure",
    members = {
        ConnectionId = schema.new({
            id = id.from(_N, "GetConnectionInput", "ConnectionId"),
            type = "string",
            name = "ConnectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.Identity = schema.new({
    id = id.from(_N, "Identity"),
    type = "structure",
    members = {
        SourceIp = schema.new({
            id = id.from(_N, "Identity", "SourceIp"),
            type = "string",
            name = "SourceIp",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "sourceIp" },
            },
        }),
        UserAgent = schema.new({
            id = id.from(_N, "Identity", "UserAgent"),
            type = "string",
            name = "UserAgent",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.JSON_NAME] = { name = "userAgent" },
            },
        }),
    },
})

M.GetConnectionOutput = schema.new({
    id = id.from(_N, "GetConnectionOutput"),
    type = "structure",
    members = {
        ConnectedAt = schema.new({
            id = id.from(_N, "GetConnectionOutput", "ConnectedAt"),
            type = "timestamp",
            name = "ConnectedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "connectedAt" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "connectedAt" },
            },
        }),
        Identity = schema.new({
            id = id.from(_N, "GetConnectionOutput", "Identity"),
            type = "structure",
            name = "Identity",
            target_id = id.from(_N, "Identity"),
            target = M.Identity,
            traits = {
                [traits.JSON_NAME] = { name = "identity" },
            },
        }),
        LastActiveAt = schema.new({
            id = id.from(_N, "GetConnectionOutput", "LastActiveAt"),
            type = "timestamp",
            name = "LastActiveAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.JSON_NAME] = { name = "lastActiveAt" },
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.JSON_NAME] = { name = "lastActiveAt" },
            },
        }),
    },
})

M.PayloadTooLargeException = schema.new({
    id = id.from(_N, "PayloadTooLargeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "PayloadTooLargeException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.JSON_NAME] = { name = "message" },
            },
        }),
    },
})

M.PostToConnectionInput = schema.new({
    id = id.from(_N, "PostToConnectionInput"),
    type = "structure",
    members = {
        Data = schema.new({
            id = id.from(_N, "PostToConnectionInput", "Data"),
            type = "blob",
            name = "Data",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        ConnectionId = schema.new({
            id = id.from(_N, "PostToConnectionInput", "ConnectionId"),
            type = "string",
            name = "ConnectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.PostToConnectionOutput = schema.new({
    id = id.from(_N, "PostToConnectionOutput"),
    type = "structure",
})

return M
