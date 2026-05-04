local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ActiveContextTimeToLive = {
    type = "structure",
    id = "ActiveContextTimeToLive",
    members = {
        timeToLiveInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        turnsToLive = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.ActiveContext = {
    type = "structure",
    id = "ActiveContext",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timeToLive = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActiveContextTimeToLive }),
        contextAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AudioInputEvent = {
    type = "structure",
    id = "AudioInputEvent",
    members = {
        audioChunk = {
            type = "blob",
        },
        contentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventId = {
            type = "string",
        },
        clientTimestampMillis = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.AudioResponseEvent = {
    type = "structure",
    id = "AudioResponseEvent",
    members = {
        audioChunk = {
            type = "blob",
        },
        contentType = {
            type = "string",
        },
        eventId = {
            type = "string",
        },
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteSessionInput = {
    type = "structure",
    id = "DeleteSessionInput",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botAliasId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        localeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSessionOutput = {
    type = "structure",
    id = "DeleteSessionOutput",
    members = {
        botId = {
            type = "string",
        },
        botAliasId = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        sessionId = {
            type = "string",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetSessionInput = {
    type = "structure",
    id = "GetSessionInput",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botAliasId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        localeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ConfirmationState = {
    CONFIRMED = "Confirmed",
    DENIED = "Denied",
    NONE = "None",
}

M.Shape = {
    SCALAR = "Scalar",
    LIST = "List",
    COMPOSITE = "Composite",
}

M.Value = {
    type = "structure",
    id = "Value",
    members = {
        originalValue = {
            type = "string",
        },
        interpretedValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resolvedValues = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.IntentState = {
    FAILED = "Failed",
    FULFILLED = "Fulfilled",
    IN_PROGRESS = "InProgress",
    READY_FOR_FULFILLMENT = "ReadyForFulfillment",
    WAITING = "Waiting",
    FULFILLMENT_IN_PROGRESS = "FulfillmentInProgress",
}

M.InterpretationSource = {
    BEDROCK = "Bedrock",
    LEX = "Lex",
}

M.ConfidenceScore = {
    type = "structure",
    id = "ConfidenceScore",
    members = {
        score = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.SentimentType = {
    MIXED = "MIXED",
    NEGATIVE = "NEGATIVE",
    NEUTRAL = "NEUTRAL",
    POSITIVE = "POSITIVE",
}

M.SentimentScore = {
    type = "structure",
    id = "SentimentScore",
    members = {
        positive = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        negative = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        neutral = {
            type = "double",
            traits = {
                default = 0,
            },
        },
        mixed = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.SentimentResponse = {
    type = "structure",
    id = "SentimentResponse",
    members = {
        sentiment = {
            type = "string",
        },
        sentimentScore = M.SentimentScore,
    },
}

M.MessageContentType = {
    CUSTOM_PAYLOAD = "CustomPayload",
    IMAGE_RESPONSE_CARD = "ImageResponseCard",
    PLAIN_TEXT = "PlainText",
    SSML = "SSML",
}

M.Button = {
    type = "structure",
    id = "Button",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImageResponseCard = {
    type = "structure",
    id = "ImageResponseCard",
    members = {
        title = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subtitle = {
            type = "string",
        },
        imageUrl = {
            type = "string",
        },
        buttons = {
            type = "list",
            member = M.Button,
        },
    },
}

M.Message = {
    type = "structure",
    id = "Message",
    members = {
        content = {
            type = "string",
        },
        contentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        imageResponseCard = M.ImageResponseCard,
    },
}

M.StyleType = {
    DEFAULT = "Default",
    SPELL_BY_LETTER = "SpellByLetter",
    SPELL_BY_WORD = "SpellByWord",
}

M.DialogActionType = {
    CLOSE = "Close",
    CONFIRM_INTENT = "ConfirmIntent",
    DELEGATE = "Delegate",
    ELICIT_INTENT = "ElicitIntent",
    ELICIT_SLOT = "ElicitSlot",
    NONE = "None",
}

M.RuntimeHintValue = {
    type = "structure",
    id = "RuntimeHintValue",
    members = {
        phrase = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BadGatewayException = {
    type = "structure",
    id = "BadGatewayException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DependencyFailedException = {
    type = "structure",
    id = "DependencyFailedException",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutSessionOutput = {
    type = "structure",
    id = "PutSessionOutput",
    members = {
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        messages = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-messages",
            },
        },
        sessionState = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-session-state",
            },
        },
        requestAttributes = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-request-attributes",
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-session-id",
            },
        },
        audioStream = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
    },
}

M.RecognizedBotMember = {
    type = "structure",
    id = "RecognizedBotMember",
    members = {
        botId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        botName = {
            type = "string",
        },
    },
}

M.RecognizeUtteranceInput = {
    type = "structure",
    id = "RecognizeUtteranceInput",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botAliasId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        localeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionState = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-session-state",
            },
        },
        requestAttributes = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-request-attributes",
            },
        },
        requestContentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
                required = true,
            },
        },
        responseContentType = {
            type = "string",
            traits = {
                http_header = "Response-Content-Type",
            },
        },
        inputStream = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
    },
}

M.RecognizeUtteranceOutput = {
    type = "structure",
    id = "RecognizeUtteranceOutput",
    members = {
        inputMode = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-input-mode",
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        messages = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-messages",
            },
        },
        interpretations = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-interpretations",
            },
        },
        sessionState = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-session-state",
            },
        },
        requestAttributes = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-request-attributes",
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-session-id",
            },
        },
        inputTranscript = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-input-transcript",
            },
        },
        audioStream = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
        recognizedBotMember = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-recognized-bot-member",
            },
        },
    },
}

M.ConversationMode = {
    AUDIO = "AUDIO",
    TEXT = "TEXT",
}

M.DisconnectionEvent = {
    type = "structure",
    id = "DisconnectionEvent",
    members = {
        eventId = {
            type = "string",
        },
        clientTimestampMillis = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.DTMFInputEvent = {
    type = "structure",
    id = "DTMFInputEvent",
    members = {
        inputCharacter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventId = {
            type = "string",
        },
        clientTimestampMillis = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.PlaybackCompletionEvent = {
    type = "structure",
    id = "PlaybackCompletionEvent",
    members = {
        eventId = {
            type = "string",
        },
        clientTimestampMillis = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.TextInputEvent = {
    type = "structure",
    id = "TextInputEvent",
    members = {
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventId = {
            type = "string",
        },
        clientTimestampMillis = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.HeartbeatEvent = {
    type = "structure",
    id = "HeartbeatEvent",
    members = {
        eventId = {
            type = "string",
        },
    },
}

M.InputMode = {
    TEXT = "Text",
    SPEECH = "Speech",
    DTMF = "DTMF",
}

M.PlaybackInterruptionReason = {
    DTMF_START_DETECTED = "DTMF_START_DETECTED",
    TEXT_DETECTED = "TEXT_DETECTED",
    VOICE_START_DETECTED = "VOICE_START_DETECTED",
}

M.PlaybackInterruptionEvent = {
    type = "structure",
    id = "PlaybackInterruptionEvent",
    members = {
        eventReason = {
            type = "string",
        },
        causedByEventId = {
            type = "string",
        },
        eventId = {
            type = "string",
        },
    },
}

M.TextResponseEvent = {
    type = "structure",
    id = "TextResponseEvent",
    members = {
        messages = {
            type = "list",
            member = M.Message,
        },
        eventId = {
            type = "string",
        },
    },
}

M.TranscriptEvent = {
    type = "structure",
    id = "TranscriptEvent",
    members = {
        transcript = {
            type = "string",
        },
        eventId = {
            type = "string",
        },
    },
}

M.ElicitSubSlot = {
    type = "structure",
    id = "ElicitSubSlot",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subSlotToElicit = M.ElicitSubSlot,
    },
}

M.DialogAction = {
    type = "structure",
    id = "DialogAction",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        slotToElicit = {
            type = "string",
        },
        slotElicitationStyle = {
            type = "string",
        },
        subSlotToElicit = M.ElicitSubSlot,
    },
}

M.RuntimeHintDetails = {
    type = "structure",
    id = "RuntimeHintDetails",
    members = {
        runtimeHintValues = {
            type = "list",
            member = M.RuntimeHintValue,
        },
        subSlotHints = {
            type = "map",
            key = { type = "string" },
            value = M.RuntimeHintDetails,
        },
    },
}

M.RuntimeHints = {
    type = "structure",
    id = "RuntimeHints",
    members = {
        slotHints = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
        },
    },
}

M.Slot = {
    type = "structure",
    id = "Slot",
    members = {
        value = M.Value,
        shape = {
            type = "string",
        },
        values = {
            type = "list",
            member = M.Slot,
        },
        subSlots = {
            type = "map",
            key = { type = "string" },
            value = M.Slot,
        },
    },
}

M.Intent = {
    type = "structure",
    id = "Intent",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        slots = {
            type = "map",
            key = { type = "string" },
            value = M.Slot,
        },
        state = {
            type = "string",
        },
        confirmationState = {
            type = "string",
        },
    },
}

M.Interpretation = {
    type = "structure",
    id = "Interpretation",
    members = {
        nluConfidence = M.ConfidenceScore,
        sentimentResponse = M.SentimentResponse,
        intent = M.Intent,
        interpretationSource = {
            type = "string",
        },
    },
}

M.SessionState = {
    type = "structure",
    id = "SessionState",
    members = {
        dialogAction = M.DialogAction,
        intent = M.Intent,
        activeContexts = {
            type = "list",
            member = M.ActiveContext,
        },
        sessionAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        originatingRequestId = {
            type = "string",
        },
        runtimeHints = M.RuntimeHints,
    },
}

M.ConfigurationEvent = {
    type = "structure",
    id = "ConfigurationEvent",
    members = {
        requestAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        responseContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionState = M.SessionState,
        welcomeMessages = {
            type = "list",
            member = M.Message,
        },
        disablePlayback = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        eventId = {
            type = "string",
        },
        clientTimestampMillis = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.PutSessionInput = {
    type = "structure",
    id = "PutSessionInput",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botAliasId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        localeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        messages = {
            type = "list",
            member = M.Message,
        },
        sessionState = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SessionState }),
        requestAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        responseContentType = {
            type = "string",
            traits = {
                http_header = "ResponseContentType",
            },
        },
    },
}

M.RecognizeTextInput = {
    type = "structure",
    id = "RecognizeTextInput",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botAliasId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        localeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        text = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionState = M.SessionState,
        requestAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartConversationRequestEventStream = {
    type = "union",
    id = "StartConversationRequestEventStream",
    members = {
        ConfigurationEvent = M.ConfigurationEvent,
        AudioInputEvent = M.AudioInputEvent,
        DTMFInputEvent = M.DTMFInputEvent,
        TextInputEvent = M.TextInputEvent,
        PlaybackCompletionEvent = M.PlaybackCompletionEvent,
        DisconnectionEvent = M.DisconnectionEvent,
    },
}

M.StartConversationInput = {
    type = "structure",
    id = "StartConversationInput",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botAliasId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        localeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        conversationMode = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-conversation-mode",
            },
        },
        requestEventStream = setmetatable({ traits = {
            http_payload = true,
            required = true,
        } }, { __index = M.StartConversationRequestEventStream }),
    },
}

M.GetSessionOutput = {
    type = "structure",
    id = "GetSessionOutput",
    members = {
        sessionId = {
            type = "string",
        },
        messages = {
            type = "list",
            member = M.Message,
        },
        interpretations = {
            type = "list",
            member = M.Interpretation,
        },
        sessionState = M.SessionState,
    },
}

M.IntentResultEvent = {
    type = "structure",
    id = "IntentResultEvent",
    members = {
        inputMode = {
            type = "string",
        },
        interpretations = {
            type = "list",
            member = M.Interpretation,
        },
        sessionState = M.SessionState,
        requestAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        sessionId = {
            type = "string",
        },
        eventId = {
            type = "string",
        },
        recognizedBotMember = M.RecognizedBotMember,
    },
}

M.RecognizeTextOutput = {
    type = "structure",
    id = "RecognizeTextOutput",
    members = {
        messages = {
            type = "list",
            member = M.Message,
        },
        sessionState = M.SessionState,
        interpretations = {
            type = "list",
            member = M.Interpretation,
        },
        requestAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        sessionId = {
            type = "string",
        },
        recognizedBotMember = M.RecognizedBotMember,
    },
}

M.StartConversationResponseEventStream = {
    type = "union",
    id = "StartConversationResponseEventStream",
    members = {
        PlaybackInterruptionEvent = M.PlaybackInterruptionEvent,
        TranscriptEvent = M.TranscriptEvent,
        IntentResultEvent = M.IntentResultEvent,
        TextResponseEvent = M.TextResponseEvent,
        AudioResponseEvent = M.AudioResponseEvent,
        HeartbeatEvent = M.HeartbeatEvent,
        AccessDeniedException = M.AccessDeniedException,
        ResourceNotFoundException = M.ResourceNotFoundException,
        ValidationException = M.ValidationException,
        ThrottlingException = M.ThrottlingException,
        InternalServerException = M.InternalServerException,
        ConflictException = M.ConflictException,
        DependencyFailedException = M.DependencyFailedException,
        BadGatewayException = M.BadGatewayException,
    },
}

M.StartConversationOutput = {
    type = "structure",
    id = "StartConversationOutput",
    members = {
        responseEventStream = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.StartConversationResponseEventStream }),
    },
}

return M
