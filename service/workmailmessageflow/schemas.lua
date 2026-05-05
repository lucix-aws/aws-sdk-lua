local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.workmailmessageflow"

local M = {}

M.GetRawMessageContentInput = schema.new({
    id = id.from(_N, "GetRawMessageContentRequest"),
    type = "structure",
    members = {
        messageId = schema.new({
            id = id.from(_N, "GetRawMessageContentInput", "messageId"),
            type = "string",
            name = "messageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetRawMessageContentOutput = schema.new({
    id = id.from(_N, "GetRawMessageContentResponse"),
    type = "structure",
    members = {
        messageContent = schema.new({
            id = id.from(_N, "GetRawMessageContentOutput", "messageContent"),
            type = "blob",
            name = "messageContent",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
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
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidContentLocation = schema.new({
    id = id.from(_N, "InvalidContentLocation"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidContentLocation", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MessageFrozen = schema.new({
    id = id.from(_N, "MessageFrozen"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MessageFrozen", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.MessageRejected = schema.new({
    id = id.from(_N, "MessageRejected"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MessageRejected", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.S3Reference = schema.new({
    id = id.from(_N, "S3Reference"),
    type = "structure",
    members = {
        bucket = schema.new({
            id = id.from(_N, "S3Reference", "bucket"),
            type = "string",
            name = "bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        key = schema.new({
            id = id.from(_N, "S3Reference", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        objectVersion = schema.new({
            id = id.from(_N, "S3Reference", "objectVersion"),
            type = "string",
            name = "objectVersion",
            target_id = prelude.String.id,
        }),
    },
})

M.RawMessageContent = schema.new({
    id = id.from(_N, "RawMessageContent"),
    type = "structure",
    members = {
        s3Reference = schema.new({
            id = id.from(_N, "RawMessageContent", "s3Reference"),
            type = "structure",
            name = "s3Reference",
            target_id = id.from(_N, "S3Reference"),
            target = M.S3Reference,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutRawMessageContentInput = schema.new({
    id = id.from(_N, "PutRawMessageContentRequest"),
    type = "structure",
    members = {
        messageId = schema.new({
            id = id.from(_N, "PutRawMessageContentInput", "messageId"),
            type = "string",
            name = "messageId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        content = schema.new({
            id = id.from(_N, "PutRawMessageContentInput", "content"),
            type = "structure",
            name = "content",
            target_id = id.from(_N, "RawMessageContent"),
            target = M.RawMessageContent,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutRawMessageContentOutput = schema.new({
    id = id.from(_N, "PutRawMessageContentResponse"),
    type = "structure",
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
