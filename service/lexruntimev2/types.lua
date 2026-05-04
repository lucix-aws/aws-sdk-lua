local M = {}

M.AccessDeniedException = {
    type = "structure",
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
    members = {
        timeToLiveInSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        turnsToLive = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.ActiveContext = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timeToLive = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        contextAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AudioInputEvent = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.AudioResponseEvent = {
    type = "structure",
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
            member_type = "string",
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
    members = {
        score = {
            type = "number",
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
    members = {
        positive = {
            type = "number",
        },
        negative = {
            type = "number",
        },
        neutral = {
            type = "number",
        },
        mixed = {
            type = "number",
        },
    },
}

M.SentimentResponse = {
    type = "structure",
    members = {
        sentiment = {
            type = "string",
        },
        sentimentScore = {
            type = "structure",
        },
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
            member_type = "structure",
        },
    },
}

M.Message = {
    type = "structure",
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
        imageResponseCard = {
            type = "structure",
        },
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
                http_payload = true,
            },
        },
    },
}

M.RecognizedBotMember = {
    type = "structure",
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
                http_payload = true,
            },
        },
    },
}

M.RecognizeUtteranceOutput = {
    type = "structure",
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
    members = {
        eventId = {
            type = "string",
        },
        clientTimestampMillis = {
            type = "number",
        },
    },
}

M.DTMFInputEvent = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.PlaybackCompletionEvent = {
    type = "structure",
    members = {
        eventId = {
            type = "string",
        },
        clientTimestampMillis = {
            type = "number",
        },
    },
}

M.TextInputEvent = {
    type = "structure",
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
            type = "number",
        },
    },
}

M.HeartbeatEvent = {
    type = "structure",
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
    members = {
        messages = {
            type = "list",
            member_type = "structure",
        },
        eventId = {
            type = "string",
        },
    },
}

M.TranscriptEvent = {
    type = "structure",
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
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subSlotToElicit = {
            type = "structure",
        },
    },
}

M.DialogAction = {
    type = "structure",
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
        subSlotToElicit = {
            type = "structure",
        },
    },
}

M.RuntimeHintDetails = {
    type = "structure",
    members = {
        runtimeHintValues = {
            type = "list",
            member_type = "structure",
        },
        subSlotHints = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.RuntimeHints = {
    type = "structure",
    members = {
        slotHints = {
            type = "map",
            key_type = "string",
            value_type = "map",
        },
    },
}

M.Slot = {
    type = "structure",
    members = {
        value = {
            type = "structure",
        },
        shape = {
            type = "string",
        },
        values = {
            type = "list",
            member_type = "structure",
        },
        subSlots = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.Intent = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        slots = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
    members = {
        nluConfidence = {
            type = "structure",
        },
        sentimentResponse = {
            type = "structure",
        },
        intent = {
            type = "structure",
        },
        interpretationSource = {
            type = "string",
        },
    },
}

M.SessionState = {
    type = "structure",
    members = {
        dialogAction = {
            type = "structure",
        },
        intent = {
            type = "structure",
        },
        activeContexts = {
            type = "list",
            member_type = "structure",
        },
        sessionAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        originatingRequestId = {
            type = "string",
        },
        runtimeHints = {
            type = "structure",
        },
    },
}

M.ConfigurationEvent = {
    type = "structure",
    members = {
        requestAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        responseContentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sessionState = {
            type = "structure",
        },
        welcomeMessages = {
            type = "list",
            member_type = "structure",
        },
        disablePlayback = {
            type = "boolean",
        },
        eventId = {
            type = "string",
        },
        clientTimestampMillis = {
            type = "number",
        },
    },
}

M.PutSessionInput = {
    type = "structure",
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
            member_type = "structure",
        },
        sessionState = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        requestAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        sessionState = {
            type = "structure",
        },
        requestAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartConversationRequestEventStream = {
    type = "union",
    members = {
        ConfigurationEvent = {
            type = "structure",
        },
        AudioInputEvent = {
            type = "structure",
        },
        DTMFInputEvent = {
            type = "structure",
        },
        TextInputEvent = {
            type = "structure",
        },
        PlaybackCompletionEvent = {
            type = "structure",
        },
        DisconnectionEvent = {
            type = "structure",
        },
    },
}

M.StartConversationInput = {
    type = "structure",
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
        requestEventStream = {
            type = "union",
            traits = {
                http_payload = true,
                required = true,
            },
        },
    },
}

M.GetSessionOutput = {
    type = "structure",
    members = {
        sessionId = {
            type = "string",
        },
        messages = {
            type = "list",
            member_type = "structure",
        },
        interpretations = {
            type = "list",
            member_type = "structure",
        },
        sessionState = {
            type = "structure",
        },
    },
}

M.IntentResultEvent = {
    type = "structure",
    members = {
        inputMode = {
            type = "string",
        },
        interpretations = {
            type = "list",
            member_type = "structure",
        },
        sessionState = {
            type = "structure",
        },
        requestAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        sessionId = {
            type = "string",
        },
        eventId = {
            type = "string",
        },
        recognizedBotMember = {
            type = "structure",
        },
    },
}

M.RecognizeTextOutput = {
    type = "structure",
    members = {
        messages = {
            type = "list",
            member_type = "structure",
        },
        sessionState = {
            type = "structure",
        },
        interpretations = {
            type = "list",
            member_type = "structure",
        },
        requestAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        sessionId = {
            type = "string",
        },
        recognizedBotMember = {
            type = "structure",
        },
    },
}

M.StartConversationResponseEventStream = {
    type = "union",
    members = {
        PlaybackInterruptionEvent = {
            type = "structure",
        },
        TranscriptEvent = {
            type = "structure",
        },
        IntentResultEvent = {
            type = "structure",
        },
        TextResponseEvent = {
            type = "structure",
        },
        AudioResponseEvent = {
            type = "structure",
        },
        HeartbeatEvent = {
            type = "structure",
        },
        AccessDeniedException = {
            type = "structure",
        },
        ResourceNotFoundException = {
            type = "structure",
        },
        ValidationException = {
            type = "structure",
        },
        ThrottlingException = {
            type = "structure",
        },
        InternalServerException = {
            type = "structure",
        },
        ConflictException = {
            type = "structure",
        },
        DependencyFailedException = {
            type = "structure",
        },
        BadGatewayException = {
            type = "structure",
        },
    },
}

M.StartConversationOutput = {
    type = "structure",
    members = {
        responseEventStream = {
            type = "union",
            traits = {
                http_payload = true,
            },
        },
    },
}

return M
