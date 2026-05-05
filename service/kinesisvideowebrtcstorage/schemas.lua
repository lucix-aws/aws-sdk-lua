local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.kinesisvideowebrtcstorage"

local M = {}

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ClientLimitExceededException = schema.new({
    id = id.from(_N, "ClientLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ClientLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidArgumentException = schema.new({
    id = id.from(_N, "InvalidArgumentException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidArgumentException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.JoinStorageSessionInput = schema.new({
    id = id.from(_N, "JoinStorageSessionInput"),
    type = "structure",
    members = {
        channelArn = schema.new({
            id = id.from(_N, "JoinStorageSessionInput", "channelArn"),
            type = "string",
            name = "channelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.JoinStorageSessionOutput = schema.new({
    id = id.from(_N, "JoinStorageSessionOutput"),
    type = "structure",
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.JoinStorageSessionAsViewerInput = schema.new({
    id = id.from(_N, "JoinStorageSessionAsViewerInput"),
    type = "structure",
    members = {
        channelArn = schema.new({
            id = id.from(_N, "JoinStorageSessionAsViewerInput", "channelArn"),
            type = "string",
            name = "channelArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientId = schema.new({
            id = id.from(_N, "JoinStorageSessionAsViewerInput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.JoinStorageSessionAsViewerOutput = schema.new({
    id = id.from(_N, "JoinStorageSessionAsViewerOutput"),
    type = "structure",
})

return M
