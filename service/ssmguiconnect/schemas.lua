local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.ssmguiconnect"

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
            traits = {
                [traits.REQUIRED] = {},
            },
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
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.S3Bucket = schema.new({
    id = id.from(_N, "S3Bucket"),
    type = "structure",
    members = {
        BucketOwner = schema.new({
            id = id.from(_N, "S3Bucket", "BucketOwner"),
            type = "string",
            name = "BucketOwner",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BucketName = schema.new({
            id = id.from(_N, "S3Bucket", "BucketName"),
            type = "string",
            name = "BucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RecordingDestinations = schema.new({
    id = id.from(_N, "RecordingDestinations"),
    type = "structure",
    members = {
        S3Buckets = schema.new({
            id = id.from(_N, "RecordingDestinations", "S3Buckets"),
            type = "list",
            name = "S3Buckets",
            target_id = prelude.Document.id,
            list_member = M.S3Bucket,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConnectionRecordingPreferences = schema.new({
    id = id.from(_N, "ConnectionRecordingPreferences"),
    type = "structure",
    members = {
        RecordingDestinations = schema.new({
            id = id.from(_N, "ConnectionRecordingPreferences", "RecordingDestinations"),
            type = "structure",
            name = "RecordingDestinations",
            target_id = id.from(_N, "RecordingDestinations"),
            target = M.RecordingDestinations,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KMSKeyArn = schema.new({
            id = id.from(_N, "ConnectionRecordingPreferences", "KMSKeyArn"),
            type = "string",
            name = "KMSKeyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteConnectionRecordingPreferencesInput = schema.new({
    id = id.from(_N, "DeleteConnectionRecordingPreferencesInput"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "DeleteConnectionRecordingPreferencesInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteConnectionRecordingPreferencesOutput = schema.new({
    id = id.from(_N, "DeleteConnectionRecordingPreferencesOutput"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "DeleteConnectionRecordingPreferencesOutput", "ClientToken"),
            type = "string",
            name = "ClientToken",
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
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
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
            traits = {
                [traits.REQUIRED] = {},
            },
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
        message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
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
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
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
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetConnectionRecordingPreferencesInput = schema.new({
    id = id.from(_N, "GetConnectionRecordingPreferencesInput"),
    type = "structure",
})

M.GetConnectionRecordingPreferencesOutput = schema.new({
    id = id.from(_N, "GetConnectionRecordingPreferencesOutput"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "GetConnectionRecordingPreferencesOutput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
        }),
        ConnectionRecordingPreferences = schema.new({
            id = id.from(_N, "GetConnectionRecordingPreferencesOutput", "ConnectionRecordingPreferences"),
            type = "structure",
            name = "ConnectionRecordingPreferences",
            target_id = id.from(_N, "ConnectionRecordingPreferences"),
            target = M.ConnectionRecordingPreferences,
        }),
    },
})

M.UpdateConnectionRecordingPreferencesInput = schema.new({
    id = id.from(_N, "UpdateConnectionRecordingPreferencesInput"),
    type = "structure",
    members = {
        ConnectionRecordingPreferences = schema.new({
            id = id.from(_N, "UpdateConnectionRecordingPreferencesInput", "ConnectionRecordingPreferences"),
            type = "structure",
            name = "ConnectionRecordingPreferences",
            target_id = id.from(_N, "ConnectionRecordingPreferences"),
            target = M.ConnectionRecordingPreferences,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "UpdateConnectionRecordingPreferencesInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateConnectionRecordingPreferencesOutput = schema.new({
    id = id.from(_N, "UpdateConnectionRecordingPreferencesOutput"),
    type = "structure",
    members = {
        ClientToken = schema.new({
            id = id.from(_N, "UpdateConnectionRecordingPreferencesOutput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
        }),
        ConnectionRecordingPreferences = schema.new({
            id = id.from(_N, "UpdateConnectionRecordingPreferencesOutput", "ConnectionRecordingPreferences"),
            type = "structure",
            name = "ConnectionRecordingPreferences",
            target_id = id.from(_N, "ConnectionRecordingPreferences"),
            target = M.ConnectionRecordingPreferences,
        }),
    },
})

return M
