local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.lexruntimeservice"

local M = {}

M.IntentSummaryList = schema.new({ type = "list", list_member = M.IntentSummary })

M.StringMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ActiveContextsList = schema.new({ type = "list", list_member = M.ActiveContext })

M.IntentList = schema.new({ type = "list", list_member = M.PredictedIntent })

M.genericAttachmentList = schema.new({ type = "list", list_member = M.GenericAttachment })

M.ActiveContextParametersMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.listOfButtons = schema.new({ type = "list", list_member = M.Button })

M.ActiveContextTimeToLive = schema.new({
    id = id.from(_N, "ActiveContextTimeToLive"),
    type = "structure",
    members = {
        timeToLiveInSeconds = schema.new({
            id = id.from(_N, "ActiveContextTimeToLive", "timeToLiveInSeconds"),
            type = "integer",
            name = "timeToLiveInSeconds",
            target_id = prelude.Integer.id,
        }),
        turnsToLive = schema.new({
            id = id.from(_N, "ActiveContextTimeToLive", "turnsToLive"),
            type = "integer",
            name = "turnsToLive",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ActiveContext = schema.new({
    id = id.from(_N, "ActiveContext"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ActiveContext", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        timeToLive = schema.new({
            id = id.from(_N, "ActiveContext", "timeToLive"),
            type = "structure",
            name = "timeToLive",
            target_id = id.from(_N, "ActiveContextTimeToLive"),
            target = M.ActiveContextTimeToLive,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        parameters = schema.new({
            id = id.from(_N, "ActiveContext", "parameters"),
            type = "map",
            name = "parameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BadRequestException = schema.new({
    id = id.from(_N, "BadRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "BadRequestException", "message"),
            type = "string",
            name = "message",
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
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteSessionInput = schema.new({
    id = id.from(_N, "DeleteSessionRequest"),
    type = "structure",
    members = {
        botName = schema.new({
            id = id.from(_N, "DeleteSessionInput", "botName"),
            type = "string",
            name = "botName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        botAlias = schema.new({
            id = id.from(_N, "DeleteSessionInput", "botAlias"),
            type = "string",
            name = "botAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "DeleteSessionInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteSessionOutput = schema.new({
    id = id.from(_N, "DeleteSessionResponse"),
    type = "structure",
    members = {
        botName = schema.new({
            id = id.from(_N, "DeleteSessionOutput", "botName"),
            type = "string",
            name = "botName",
            target_id = prelude.String.id,
        }),
        botAlias = schema.new({
            id = id.from(_N, "DeleteSessionOutput", "botAlias"),
            type = "string",
            name = "botAlias",
            target_id = prelude.String.id,
        }),
        userId = schema.new({
            id = id.from(_N, "DeleteSessionOutput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
        sessionId = schema.new({
            id = id.from(_N, "DeleteSessionOutput", "sessionId"),
            type = "string",
            name = "sessionId",
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

M.LimitExceededException = schema.new({
    id = id.from(_N, "LimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        retryAfterSeconds = schema.new({
            id = id.from(_N, "LimitExceededException", "retryAfterSeconds"),
            type = "string",
            name = "retryAfterSeconds",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Retry-After" },
            },
        }),
        message = schema.new({
            id = id.from(_N, "LimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NotFoundException = schema.new({
    id = id.from(_N, "NotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetSessionInput = schema.new({
    id = id.from(_N, "GetSessionRequest"),
    type = "structure",
    members = {
        botName = schema.new({
            id = id.from(_N, "GetSessionInput", "botName"),
            type = "string",
            name = "botName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        botAlias = schema.new({
            id = id.from(_N, "GetSessionInput", "botAlias"),
            type = "string",
            name = "botAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "GetSessionInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        checkpointLabelFilter = schema.new({
            id = id.from(_N, "GetSessionInput", "checkpointLabelFilter"),
            type = "string",
            name = "checkpointLabelFilter",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "checkpointLabelFilter" },
            },
        }),
    },
})

M.DialogAction = schema.new({
    id = id.from(_N, "DialogAction"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "DialogAction", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        intentName = schema.new({
            id = id.from(_N, "DialogAction", "intentName"),
            type = "string",
            name = "intentName",
            target_id = prelude.String.id,
        }),
        slots = schema.new({
            id = id.from(_N, "DialogAction", "slots"),
            type = "map",
            name = "slots",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        slotToElicit = schema.new({
            id = id.from(_N, "DialogAction", "slotToElicit"),
            type = "string",
            name = "slotToElicit",
            target_id = prelude.String.id,
        }),
        fulfillmentState = schema.new({
            id = id.from(_N, "DialogAction", "fulfillmentState"),
            type = "string",
            name = "fulfillmentState",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "DialogAction", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        messageFormat = schema.new({
            id = id.from(_N, "DialogAction", "messageFormat"),
            type = "string",
            name = "messageFormat",
            target_id = prelude.String.id,
        }),
    },
})

M.IntentSummary = schema.new({
    id = id.from(_N, "IntentSummary"),
    type = "structure",
    members = {
        intentName = schema.new({
            id = id.from(_N, "IntentSummary", "intentName"),
            type = "string",
            name = "intentName",
            target_id = prelude.String.id,
        }),
        checkpointLabel = schema.new({
            id = id.from(_N, "IntentSummary", "checkpointLabel"),
            type = "string",
            name = "checkpointLabel",
            target_id = prelude.String.id,
        }),
        slots = schema.new({
            id = id.from(_N, "IntentSummary", "slots"),
            type = "map",
            name = "slots",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        confirmationStatus = schema.new({
            id = id.from(_N, "IntentSummary", "confirmationStatus"),
            type = "string",
            name = "confirmationStatus",
            target_id = prelude.String.id,
        }),
        dialogActionType = schema.new({
            id = id.from(_N, "IntentSummary", "dialogActionType"),
            type = "string",
            name = "dialogActionType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fulfillmentState = schema.new({
            id = id.from(_N, "IntentSummary", "fulfillmentState"),
            type = "string",
            name = "fulfillmentState",
            target_id = prelude.String.id,
        }),
        slotToElicit = schema.new({
            id = id.from(_N, "IntentSummary", "slotToElicit"),
            type = "string",
            name = "slotToElicit",
            target_id = prelude.String.id,
        }),
    },
})

M.GetSessionOutput = schema.new({
    id = id.from(_N, "GetSessionResponse"),
    type = "structure",
    members = {
        recentIntentSummaryView = schema.new({
            id = id.from(_N, "GetSessionOutput", "recentIntentSummaryView"),
            type = "list",
            name = "recentIntentSummaryView",
            target_id = prelude.Document.id,
            list_member = M.IntentSummary,
        }),
        sessionAttributes = schema.new({
            id = id.from(_N, "GetSessionOutput", "sessionAttributes"),
            type = "map",
            name = "sessionAttributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        sessionId = schema.new({
            id = id.from(_N, "GetSessionOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
        }),
        dialogAction = schema.new({
            id = id.from(_N, "GetSessionOutput", "dialogAction"),
            type = "structure",
            name = "dialogAction",
            target_id = id.from(_N, "DialogAction"),
            target = M.DialogAction,
        }),
        activeContexts = schema.new({
            id = id.from(_N, "GetSessionOutput", "activeContexts"),
            type = "list",
            name = "activeContexts",
            target_id = prelude.Document.id,
            list_member = M.ActiveContext,
        }),
    },
})

M.BadGatewayException = schema.new({
    id = id.from(_N, "BadGatewayException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "BadGatewayException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DependencyFailedException = schema.new({
    id = id.from(_N, "DependencyFailedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DependencyFailedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.LoopDetectedException = schema.new({
    id = id.from(_N, "LoopDetectedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "LoopDetectedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NotAcceptableException = schema.new({
    id = id.from(_N, "NotAcceptableException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NotAcceptableException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PostContentInput = schema.new({
    id = id.from(_N, "PostContentRequest"),
    type = "structure",
    members = {
        botName = schema.new({
            id = id.from(_N, "PostContentInput", "botName"),
            type = "string",
            name = "botName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        botAlias = schema.new({
            id = id.from(_N, "PostContentInput", "botAlias"),
            type = "string",
            name = "botAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "PostContentInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionAttributes = schema.new({
            id = id.from(_N, "PostContentInput", "sessionAttributes"),
            type = "string",
            name = "sessionAttributes",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-session-attributes" },
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
            direct_traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-session-attributes" },
            },
        }),
        requestAttributes = schema.new({
            id = id.from(_N, "PostContentInput", "requestAttributes"),
            type = "string",
            name = "requestAttributes",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-request-attributes" },
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
            direct_traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-request-attributes" },
            },
        }),
        contentType = schema.new({
            id = id.from(_N, "PostContentInput", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
        accept = schema.new({
            id = id.from(_N, "PostContentInput", "accept"),
            type = "string",
            name = "accept",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Accept" },
            },
        }),
        inputStream = schema.new({
            id = id.from(_N, "PostContentInput", "inputStream"),
            type = "blob",
            name = "inputStream",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        activeContexts = schema.new({
            id = id.from(_N, "PostContentInput", "activeContexts"),
            type = "string",
            name = "activeContexts",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-active-contexts" },
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
            direct_traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-active-contexts" },
            },
        }),
    },
})

M.PostContentOutput = schema.new({
    id = id.from(_N, "PostContentResponse"),
    type = "structure",
    members = {
        contentType = schema.new({
            id = id.from(_N, "PostContentOutput", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
        intentName = schema.new({
            id = id.from(_N, "PostContentOutput", "intentName"),
            type = "string",
            name = "intentName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-intent-name" },
            },
        }),
        nluIntentConfidence = schema.new({
            id = id.from(_N, "PostContentOutput", "nluIntentConfidence"),
            type = "string",
            name = "nluIntentConfidence",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-nlu-intent-confidence" },
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
            direct_traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-nlu-intent-confidence" },
            },
        }),
        alternativeIntents = schema.new({
            id = id.from(_N, "PostContentOutput", "alternativeIntents"),
            type = "string",
            name = "alternativeIntents",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-alternative-intents" },
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
            direct_traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-alternative-intents" },
            },
        }),
        slots = schema.new({
            id = id.from(_N, "PostContentOutput", "slots"),
            type = "string",
            name = "slots",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-slots" },
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
            direct_traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-slots" },
            },
        }),
        sessionAttributes = schema.new({
            id = id.from(_N, "PostContentOutput", "sessionAttributes"),
            type = "string",
            name = "sessionAttributes",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-session-attributes" },
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
            direct_traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-session-attributes" },
            },
        }),
        sentimentResponse = schema.new({
            id = id.from(_N, "PostContentOutput", "sentimentResponse"),
            type = "string",
            name = "sentimentResponse",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-sentiment" },
            },
        }),
        message = schema.new({
            id = id.from(_N, "PostContentOutput", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-message" },
            },
        }),
        encodedMessage = schema.new({
            id = id.from(_N, "PostContentOutput", "encodedMessage"),
            type = "string",
            name = "encodedMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-encoded-message" },
            },
        }),
        messageFormat = schema.new({
            id = id.from(_N, "PostContentOutput", "messageFormat"),
            type = "string",
            name = "messageFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-message-format" },
            },
        }),
        dialogState = schema.new({
            id = id.from(_N, "PostContentOutput", "dialogState"),
            type = "string",
            name = "dialogState",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-dialog-state" },
            },
        }),
        slotToElicit = schema.new({
            id = id.from(_N, "PostContentOutput", "slotToElicit"),
            type = "string",
            name = "slotToElicit",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-slot-to-elicit" },
            },
        }),
        inputTranscript = schema.new({
            id = id.from(_N, "PostContentOutput", "inputTranscript"),
            type = "string",
            name = "inputTranscript",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-input-transcript" },
            },
        }),
        encodedInputTranscript = schema.new({
            id = id.from(_N, "PostContentOutput", "encodedInputTranscript"),
            type = "string",
            name = "encodedInputTranscript",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-encoded-input-transcript" },
            },
        }),
        audioStream = schema.new({
            id = id.from(_N, "PostContentOutput", "audioStream"),
            type = "blob",
            name = "audioStream",
            target_id = prelude.Blob.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        botVersion = schema.new({
            id = id.from(_N, "PostContentOutput", "botVersion"),
            type = "string",
            name = "botVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-bot-version" },
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "PostContentOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-session-id" },
            },
        }),
        activeContexts = schema.new({
            id = id.from(_N, "PostContentOutput", "activeContexts"),
            type = "string",
            name = "activeContexts",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-active-contexts" },
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
            direct_traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-active-contexts" },
            },
        }),
    },
})

M.RequestTimeoutException = schema.new({
    id = id.from(_N, "RequestTimeoutException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "RequestTimeoutException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnsupportedMediaTypeException = schema.new({
    id = id.from(_N, "UnsupportedMediaTypeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UnsupportedMediaTypeException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PostTextInput = schema.new({
    id = id.from(_N, "PostTextRequest"),
    type = "structure",
    members = {
        botName = schema.new({
            id = id.from(_N, "PostTextInput", "botName"),
            type = "string",
            name = "botName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        botAlias = schema.new({
            id = id.from(_N, "PostTextInput", "botAlias"),
            type = "string",
            name = "botAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "PostTextInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionAttributes = schema.new({
            id = id.from(_N, "PostTextInput", "sessionAttributes"),
            type = "map",
            name = "sessionAttributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        requestAttributes = schema.new({
            id = id.from(_N, "PostTextInput", "requestAttributes"),
            type = "map",
            name = "requestAttributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        inputText = schema.new({
            id = id.from(_N, "PostTextInput", "inputText"),
            type = "string",
            name = "inputText",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        activeContexts = schema.new({
            id = id.from(_N, "PostTextInput", "activeContexts"),
            type = "list",
            name = "activeContexts",
            target_id = prelude.Document.id,
            list_member = M.ActiveContext,
        }),
    },
})

M.IntentConfidence = schema.new({
    id = id.from(_N, "IntentConfidence"),
    type = "structure",
    members = {
        score = schema.new({
            id = id.from(_N, "IntentConfidence", "score"),
            type = "double",
            name = "score",
            target_id = prelude.Double.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.PredictedIntent = schema.new({
    id = id.from(_N, "PredictedIntent"),
    type = "structure",
    members = {
        intentName = schema.new({
            id = id.from(_N, "PredictedIntent", "intentName"),
            type = "string",
            name = "intentName",
            target_id = prelude.String.id,
        }),
        nluIntentConfidence = schema.new({
            id = id.from(_N, "PredictedIntent", "nluIntentConfidence"),
            type = "structure",
            name = "nluIntentConfidence",
            target_id = id.from(_N, "IntentConfidence"),
            target = M.IntentConfidence,
        }),
        slots = schema.new({
            id = id.from(_N, "PredictedIntent", "slots"),
            type = "map",
            name = "slots",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.Button = schema.new({
    id = id.from(_N, "Button"),
    type = "structure",
    members = {
        text = schema.new({
            id = id.from(_N, "Button", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "Button", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GenericAttachment = schema.new({
    id = id.from(_N, "GenericAttachment"),
    type = "structure",
    members = {
        title = schema.new({
            id = id.from(_N, "GenericAttachment", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        subTitle = schema.new({
            id = id.from(_N, "GenericAttachment", "subTitle"),
            type = "string",
            name = "subTitle",
            target_id = prelude.String.id,
        }),
        attachmentLinkUrl = schema.new({
            id = id.from(_N, "GenericAttachment", "attachmentLinkUrl"),
            type = "string",
            name = "attachmentLinkUrl",
            target_id = prelude.String.id,
        }),
        imageUrl = schema.new({
            id = id.from(_N, "GenericAttachment", "imageUrl"),
            type = "string",
            name = "imageUrl",
            target_id = prelude.String.id,
        }),
        buttons = schema.new({
            id = id.from(_N, "GenericAttachment", "buttons"),
            type = "list",
            name = "buttons",
            target_id = prelude.Document.id,
            list_member = M.Button,
        }),
    },
})

M.ResponseCard = schema.new({
    id = id.from(_N, "ResponseCard"),
    type = "structure",
    members = {
        version = schema.new({
            id = id.from(_N, "ResponseCard", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        contentType = schema.new({
            id = id.from(_N, "ResponseCard", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
        }),
        genericAttachments = schema.new({
            id = id.from(_N, "ResponseCard", "genericAttachments"),
            type = "list",
            name = "genericAttachments",
            target_id = prelude.Document.id,
            list_member = M.GenericAttachment,
        }),
    },
})

M.SentimentResponse = schema.new({
    id = id.from(_N, "SentimentResponse"),
    type = "structure",
    members = {
        sentimentLabel = schema.new({
            id = id.from(_N, "SentimentResponse", "sentimentLabel"),
            type = "string",
            name = "sentimentLabel",
            target_id = prelude.String.id,
        }),
        sentimentScore = schema.new({
            id = id.from(_N, "SentimentResponse", "sentimentScore"),
            type = "string",
            name = "sentimentScore",
            target_id = prelude.String.id,
        }),
    },
})

M.PostTextOutput = schema.new({
    id = id.from(_N, "PostTextResponse"),
    type = "structure",
    members = {
        intentName = schema.new({
            id = id.from(_N, "PostTextOutput", "intentName"),
            type = "string",
            name = "intentName",
            target_id = prelude.String.id,
        }),
        nluIntentConfidence = schema.new({
            id = id.from(_N, "PostTextOutput", "nluIntentConfidence"),
            type = "structure",
            name = "nluIntentConfidence",
            target_id = id.from(_N, "IntentConfidence"),
            target = M.IntentConfidence,
        }),
        alternativeIntents = schema.new({
            id = id.from(_N, "PostTextOutput", "alternativeIntents"),
            type = "list",
            name = "alternativeIntents",
            target_id = prelude.Document.id,
            list_member = M.PredictedIntent,
        }),
        slots = schema.new({
            id = id.from(_N, "PostTextOutput", "slots"),
            type = "map",
            name = "slots",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        sessionAttributes = schema.new({
            id = id.from(_N, "PostTextOutput", "sessionAttributes"),
            type = "map",
            name = "sessionAttributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        message = schema.new({
            id = id.from(_N, "PostTextOutput", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        sentimentResponse = schema.new({
            id = id.from(_N, "PostTextOutput", "sentimentResponse"),
            type = "structure",
            name = "sentimentResponse",
            target_id = id.from(_N, "SentimentResponse"),
            target = M.SentimentResponse,
        }),
        messageFormat = schema.new({
            id = id.from(_N, "PostTextOutput", "messageFormat"),
            type = "string",
            name = "messageFormat",
            target_id = prelude.String.id,
        }),
        dialogState = schema.new({
            id = id.from(_N, "PostTextOutput", "dialogState"),
            type = "string",
            name = "dialogState",
            target_id = prelude.String.id,
        }),
        slotToElicit = schema.new({
            id = id.from(_N, "PostTextOutput", "slotToElicit"),
            type = "string",
            name = "slotToElicit",
            target_id = prelude.String.id,
        }),
        responseCard = schema.new({
            id = id.from(_N, "PostTextOutput", "responseCard"),
            type = "structure",
            name = "responseCard",
            target_id = id.from(_N, "ResponseCard"),
            target = M.ResponseCard,
        }),
        sessionId = schema.new({
            id = id.from(_N, "PostTextOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
        }),
        botVersion = schema.new({
            id = id.from(_N, "PostTextOutput", "botVersion"),
            type = "string",
            name = "botVersion",
            target_id = prelude.String.id,
        }),
        activeContexts = schema.new({
            id = id.from(_N, "PostTextOutput", "activeContexts"),
            type = "list",
            name = "activeContexts",
            target_id = prelude.Document.id,
            list_member = M.ActiveContext,
        }),
    },
})

M.PutSessionInput = schema.new({
    id = id.from(_N, "PutSessionRequest"),
    type = "structure",
    members = {
        botName = schema.new({
            id = id.from(_N, "PutSessionInput", "botName"),
            type = "string",
            name = "botName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        botAlias = schema.new({
            id = id.from(_N, "PutSessionInput", "botAlias"),
            type = "string",
            name = "botAlias",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "PutSessionInput", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        sessionAttributes = schema.new({
            id = id.from(_N, "PutSessionInput", "sessionAttributes"),
            type = "map",
            name = "sessionAttributes",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        dialogAction = schema.new({
            id = id.from(_N, "PutSessionInput", "dialogAction"),
            type = "structure",
            name = "dialogAction",
            target_id = id.from(_N, "DialogAction"),
            target = M.DialogAction,
        }),
        recentIntentSummaryView = schema.new({
            id = id.from(_N, "PutSessionInput", "recentIntentSummaryView"),
            type = "list",
            name = "recentIntentSummaryView",
            target_id = prelude.Document.id,
            list_member = M.IntentSummary,
        }),
        accept = schema.new({
            id = id.from(_N, "PutSessionInput", "accept"),
            type = "string",
            name = "accept",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Accept" },
            },
        }),
        activeContexts = schema.new({
            id = id.from(_N, "PutSessionInput", "activeContexts"),
            type = "list",
            name = "activeContexts",
            target_id = prelude.Document.id,
            list_member = M.ActiveContext,
        }),
    },
})

M.PutSessionOutput = schema.new({
    id = id.from(_N, "PutSessionResponse"),
    type = "structure",
    members = {
        contentType = schema.new({
            id = id.from(_N, "PutSessionOutput", "contentType"),
            type = "string",
            name = "contentType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Content-Type" },
            },
        }),
        intentName = schema.new({
            id = id.from(_N, "PutSessionOutput", "intentName"),
            type = "string",
            name = "intentName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-intent-name" },
            },
        }),
        slots = schema.new({
            id = id.from(_N, "PutSessionOutput", "slots"),
            type = "string",
            name = "slots",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-slots" },
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
            direct_traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-slots" },
            },
        }),
        sessionAttributes = schema.new({
            id = id.from(_N, "PutSessionOutput", "sessionAttributes"),
            type = "string",
            name = "sessionAttributes",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-session-attributes" },
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
            direct_traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-session-attributes" },
            },
        }),
        message = schema.new({
            id = id.from(_N, "PutSessionOutput", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-message" },
            },
        }),
        encodedMessage = schema.new({
            id = id.from(_N, "PutSessionOutput", "encodedMessage"),
            type = "string",
            name = "encodedMessage",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-encoded-message" },
            },
        }),
        messageFormat = schema.new({
            id = id.from(_N, "PutSessionOutput", "messageFormat"),
            type = "string",
            name = "messageFormat",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-message-format" },
            },
        }),
        dialogState = schema.new({
            id = id.from(_N, "PutSessionOutput", "dialogState"),
            type = "string",
            name = "dialogState",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-dialog-state" },
            },
        }),
        slotToElicit = schema.new({
            id = id.from(_N, "PutSessionOutput", "slotToElicit"),
            type = "string",
            name = "slotToElicit",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-slot-to-elicit" },
            },
        }),
        audioStream = schema.new({
            id = id.from(_N, "PutSessionOutput", "audioStream"),
            type = "blob",
            name = "audioStream",
            target_id = prelude.Blob.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
                [traits.HTTP_PAYLOAD] = {},
            },
        }),
        sessionId = schema.new({
            id = id.from(_N, "PutSessionOutput", "sessionId"),
            type = "string",
            name = "sessionId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-session-id" },
            },
        }),
        activeContexts = schema.new({
            id = id.from(_N, "PutSessionOutput", "activeContexts"),
            type = "string",
            name = "activeContexts",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-active-contexts" },
                [traits.MEDIA_TYPE] = { value = "application/json" },
            },
            direct_traits = {
                [traits.HTTP_HEADER] = { name = "x-amz-lex-active-contexts" },
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
