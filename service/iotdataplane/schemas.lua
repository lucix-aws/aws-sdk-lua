local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.iotdataplane"

local M = {}

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
        }),
    },
})

M.DeleteConnectionInput = schema.new({
    id = id.from(_N, "DeleteConnectionRequest"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "DeleteConnectionInput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        cleanSession = schema.new({
            id = id.from(_N, "DeleteConnectionInput", "cleanSession"),
            type = "boolean",
            name = "cleanSession",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "cleanSession" },
            },
        }),
        preventWillMessage = schema.new({
            id = id.from(_N, "DeleteConnectionInput", "preventWillMessage"),
            type = "boolean",
            name = "preventWillMessage",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "preventWillMessage" },
            },
        }),
    },
})

M.DeleteConnectionOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.ForbiddenException = schema.new({
    id = id.from(_N, "ForbiddenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ForbiddenException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InternalFailureException = schema.new({
    id = id.from(_N, "InternalFailureException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalFailureException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidRequestException = schema.new({
    id = id.from(_N, "InvalidRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidRequestException", "message"),
            type = "string",
            name = "message",
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
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
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
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteThingShadowInput = schema.new({
    id = id.from(_N, "DeleteThingShadowRequest"),
    type = "structure",
    members = {
        thingName = schema.new({
            id = id.from(_N, "DeleteThingShadowInput", "thingName"),
            type = "string",
            name = "thingName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        shadowName = schema.new({
            id = id.from(_N, "DeleteThingShadowInput", "shadowName"),
            type = "string",
            name = "shadowName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "name" },
            },
        }),
    },
})

M.DeleteThingShadowOutput = schema.new({
    id = id.from(_N, "DeleteThingShadowResponse"),
    type = "structure",
    members = {
        payload = schema.new({
            id = id.from(_N, "DeleteThingShadowOutput", "payload"),
            type = "blob",
            name = "payload",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.MethodNotAllowedException = schema.new({
    id = id.from(_N, "MethodNotAllowedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "MethodNotAllowedException", "message"),
            type = "string",
            name = "message",
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
        message = schema.new({
            id = id.from(_N, "ServiceUnavailableException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnauthorizedException = schema.new({
    id = id.from(_N, "UnauthorizedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UnauthorizedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedDocumentEncodingException = schema.new({
    id = id.from(_N, "UnsupportedDocumentEncodingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UnsupportedDocumentEncodingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRetainedMessageInput = schema.new({
    id = id.from(_N, "GetRetainedMessageRequest"),
    type = "structure",
    members = {
        topic = schema.new({
            id = id.from(_N, "GetRetainedMessageInput", "topic"),
            type = "string",
            name = "topic",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetRetainedMessageOutput = schema.new({
    id = id.from(_N, "GetRetainedMessageResponse"),
    type = "structure",
    members = {
        topic = schema.new({
            id = id.from(_N, "GetRetainedMessageOutput", "topic"),
            type = "string",
            name = "topic",
            target_id = prelude.String.id,
        }),
        payload = schema.new({
            id = id.from(_N, "GetRetainedMessageOutput", "payload"),
            type = "blob",
            name = "payload",
            target_id = prelude.Blob.id,
        }),
        qos = schema.new({
            id = id.from(_N, "GetRetainedMessageOutput", "qos"),
            type = "integer",
            name = "qos",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lastModifiedTime = schema.new({
            id = id.from(_N, "GetRetainedMessageOutput", "lastModifiedTime"),
            type = "long",
            name = "lastModifiedTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        userProperties = schema.new({
            id = id.from(_N, "GetRetainedMessageOutput", "userProperties"),
            type = "blob",
            name = "userProperties",
            target_id = prelude.Blob.id,
        }),
    },
})

M.GetThingShadowInput = schema.new({
    id = id.from(_N, "GetThingShadowRequest"),
    type = "structure",
    members = {
        thingName = schema.new({
            id = id.from(_N, "GetThingShadowInput", "thingName"),
            type = "string",
            name = "thingName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        shadowName = schema.new({
            id = id.from(_N, "GetThingShadowInput", "shadowName"),
            type = "string",
            name = "shadowName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "name" },
            },
        }),
    },
})

M.GetThingShadowOutput = schema.new({
    id = id.from(_N, "GetThingShadowResponse"),
    type = "structure",
    members = {
        payload = schema.new({
            id = id.from(_N, "GetThingShadowOutput", "payload"),
            type = "blob",
            name = "payload",
            target_id = prelude.Blob.id,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.ListNamedShadowsForThingInput = schema.new({
    id = id.from(_N, "ListNamedShadowsForThingRequest"),
    type = "structure",
    members = {
        thingName = schema.new({
            id = id.from(_N, "ListNamedShadowsForThingInput", "thingName"),
            type = "string",
            name = "thingName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNamedShadowsForThingInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        pageSize = schema.new({
            id = id.from(_N, "ListNamedShadowsForThingInput", "pageSize"),
            type = "integer",
            name = "pageSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "pageSize" },
            },
        }),
    },
})

M.ListNamedShadowsForThingOutput = schema.new({
    id = id.from(_N, "ListNamedShadowsForThingResponse"),
    type = "structure",
    members = {
        results = schema.new({
            id = id.from(_N, "ListNamedShadowsForThingOutput", "results"),
            type = "list",
            name = "results",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListNamedShadowsForThingOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        timestamp = schema.new({
            id = id.from(_N, "ListNamedShadowsForThingOutput", "timestamp"),
            type = "long",
            name = "timestamp",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ListRetainedMessagesInput = schema.new({
    id = id.from(_N, "ListRetainedMessagesRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListRetainedMessagesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListRetainedMessagesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.RetainedMessageSummary = schema.new({
    id = id.from(_N, "RetainedMessageSummary"),
    type = "structure",
    members = {
        topic = schema.new({
            id = id.from(_N, "RetainedMessageSummary", "topic"),
            type = "string",
            name = "topic",
            target_id = prelude.String.id,
        }),
        payloadSize = schema.new({
            id = id.from(_N, "RetainedMessageSummary", "payloadSize"),
            type = "long",
            name = "payloadSize",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        qos = schema.new({
            id = id.from(_N, "RetainedMessageSummary", "qos"),
            type = "integer",
            name = "qos",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        lastModifiedTime = schema.new({
            id = id.from(_N, "RetainedMessageSummary", "lastModifiedTime"),
            type = "long",
            name = "lastModifiedTime",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ListRetainedMessagesOutput = schema.new({
    id = id.from(_N, "ListRetainedMessagesResponse"),
    type = "structure",
    members = {
        retainedTopics = schema.new({
            id = id.from(_N, "ListRetainedMessagesOutput", "retainedTopics"),
            type = "list",
            name = "retainedTopics",
            target_id = prelude.Document.id,
            list_member = M.RetainedMessageSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRetainedMessagesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PublishInput = schema.new({
    id = id.from(_N, "PublishRequest"),
    type = "structure",
    members = {
        topic = schema.new({
            id = id.from(_N, "PublishInput", "topic"),
            type = "string",
            name = "topic",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        qos = schema.new({
            id = id.from(_N, "PublishInput", "qos"),
            type = "integer",
            name = "qos",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "qos" },
            },
        }),
        retain = schema.new({
            id = id.from(_N, "PublishInput", "retain"),
            type = "boolean",
            name = "retain",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
                [traits.HTTP_QUERY] = { name = "retain" },
            },
        }),
        payload = schema.new({
            id = id.from(_N, "PublishInput", "payload"),
            type = "blob",
            name = "payload",
            target_id = prelude.Blob.id,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        userProperties = schema.new({
            id = id.from(_N, "PublishInput", "userProperties"),
            type = "string",
            name = "userProperties",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-mqtt5-user-properties" },
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
            direct_traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-mqtt5-user-properties" },
            },
        }),
        payloadFormatIndicator = schema.new({
            id = id.from(_N, "PublishInput", "payloadFormatIndicator"),
            type = "string",
            name = "payloadFormatIndicator",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-mqtt5-payload-format-indicator" },
            },
        }),
        contentType = schema.new({
            id = id.from(_N, "PublishInput", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "contentType" },
            },
        }),
        responseTopic = schema.new({
            id = id.from(_N, "PublishInput", "responseTopic"),
            type = "string",
            name = "responseTopic",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "responseTopic" },
            },
        }),
        correlationData = schema.new({
            id = id.from(_N, "PublishInput", "correlationData"),
            type = "string",
            name = "correlationData",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-mqtt5-correlation-data" },
            },
        }),
        messageExpiry = schema.new({
            id = id.from(_N, "PublishInput", "messageExpiry"),
            type = "long",
            name = "messageExpiry",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
                [traits.HTTP_QUERY] = { name = "messageExpiry" },
            },
        }),
    },
})

M.PublishOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.RequestEntityTooLargeException = schema.new({
    id = id.from(_N, "RequestEntityTooLargeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RequestEntityTooLargeException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateThingShadowInput = schema.new({
    id = id.from(_N, "UpdateThingShadowRequest"),
    type = "structure",
    members = {
        thingName = schema.new({
            id = id.from(_N, "UpdateThingShadowInput", "thingName"),
            type = "string",
            name = "thingName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        shadowName = schema.new({
            id = id.from(_N, "UpdateThingShadowInput", "shadowName"),
            type = "string",
            name = "shadowName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "name" },
            },
        }),
        payload = schema.new({
            id = id.from(_N, "UpdateThingShadowInput", "payload"),
            type = "blob",
            name = "payload",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
    },
})

M.UpdateThingShadowOutput = schema.new({
    id = id.from(_N, "UpdateThingShadowResponse"),
    type = "structure",
    members = {
        payload = schema.new({
            id = id.from(_N, "UpdateThingShadowOutput", "payload"),
            type = "blob",
            name = "payload",
            target_id = prelude.Blob.id,
            traits = {
                [traits.HTTP_PAYLOAD] = {},
            },
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
