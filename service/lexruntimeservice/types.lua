local M = {}

M.ActiveContextTimeToLive = {
    type = "structure",
    members = {
        timeToLiveInSeconds = {
            type = "integer",
        },
        turnsToLive = {
            type = "integer",
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
        timeToLive = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ActiveContextTimeToLive }),
        parameters = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.BadRequestException = {
    type = "structure",
    error = "client",
    members = {
        message = {
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
        },
    },
}

M.DeleteSessionInput = {
    type = "structure",
    members = {
        botName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
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
        botName = {
            type = "string",
        },
        botAlias = {
            type = "string",
        },
        userId = {
            type = "string",
        },
        sessionId = {
            type = "string",
        },
    },
}

M.InternalFailureException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        retryAfterSeconds = {
            type = "string",
            traits = {
                http_header = "Retry-After",
            },
        },
        message = {
            type = "string",
        },
    },
}

M.NotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetSessionInput = {
    type = "structure",
    members = {
        botName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        checkpointLabelFilter = {
            type = "string",
            traits = {
                http_query = "checkpointLabelFilter",
            },
        },
    },
}

M.FulfillmentState = {
    FULFILLED = "Fulfilled",
    FAILED = "Failed",
    READY_FOR_FULFILLMENT = "ReadyForFulfillment",
}

M.MessageFormatType = {
    PLAIN_TEXT = "PlainText",
    CUSTOM_PAYLOAD = "CustomPayload",
    SSML = "SSML",
    COMPOSITE = "Composite",
}

M.DialogActionType = {
    ELICIT_INTENT = "ElicitIntent",
    CONFIRM_INTENT = "ConfirmIntent",
    ELICIT_SLOT = "ElicitSlot",
    CLOSE = "Close",
    DELEGATE = "Delegate",
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
        intentName = {
            type = "string",
        },
        slots = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        slotToElicit = {
            type = "string",
        },
        fulfillmentState = {
            type = "string",
        },
        message = {
            type = "string",
        },
        messageFormat = {
            type = "string",
        },
    },
}

M.ConfirmationStatus = {
    NONE = "None",
    CONFIRMED = "Confirmed",
    DENIED = "Denied",
}

M.IntentSummary = {
    type = "structure",
    members = {
        intentName = {
            type = "string",
        },
        checkpointLabel = {
            type = "string",
        },
        slots = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        confirmationStatus = {
            type = "string",
        },
        dialogActionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fulfillmentState = {
            type = "string",
        },
        slotToElicit = {
            type = "string",
        },
    },
}

M.GetSessionOutput = {
    type = "structure",
    members = {
        recentIntentSummaryView = {
            type = "list",
            member = M.IntentSummary,
        },
        sessionAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        sessionId = {
            type = "string",
        },
        dialogAction = M.DialogAction,
        activeContexts = {
            type = "list",
            member = M.ActiveContext,
        },
    },
}

M.BadGatewayException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DependencyFailedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.LoopDetectedException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NotAcceptableException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PostContentInput = {
    type = "structure",
    members = {
        botName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionAttributes = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-session-attributes",
            },
        },
        requestAttributes = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-request-attributes",
            },
        },
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
                required = true,
            },
        },
        accept = {
            type = "string",
            traits = {
                http_header = "Accept",
            },
        },
        inputStream = {
            type = "blob",
            traits = {
                http_payload = true,
                required = true,
            },
        },
        activeContexts = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-active-contexts",
            },
        },
    },
}

M.DialogState = {
    ELICIT_INTENT = "ElicitIntent",
    CONFIRM_INTENT = "ConfirmIntent",
    ELICIT_SLOT = "ElicitSlot",
    FULFILLED = "Fulfilled",
    READY_FOR_FULFILLMENT = "ReadyForFulfillment",
    FAILED = "Failed",
}

M.PostContentOutput = {
    type = "structure",
    members = {
        contentType = {
            type = "string",
            traits = {
                http_header = "Content-Type",
            },
        },
        intentName = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-intent-name",
            },
        },
        nluIntentConfidence = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-nlu-intent-confidence",
            },
        },
        alternativeIntents = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-alternative-intents",
            },
        },
        slots = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-slots",
            },
        },
        sessionAttributes = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-session-attributes",
            },
        },
        sentimentResponse = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-sentiment",
            },
        },
        message = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-message",
            },
        },
        encodedMessage = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-encoded-message",
            },
        },
        messageFormat = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-message-format",
            },
        },
        dialogState = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-dialog-state",
            },
        },
        slotToElicit = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-slot-to-elicit",
            },
        },
        inputTranscript = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-input-transcript",
            },
        },
        encodedInputTranscript = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-encoded-input-transcript",
            },
        },
        audioStream = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
        botVersion = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-bot-version",
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-session-id",
            },
        },
        activeContexts = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-active-contexts",
            },
        },
    },
}

M.RequestTimeoutException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.UnsupportedMediaTypeException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PostTextInput = {
    type = "structure",
    members = {
        botName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        requestAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        inputText = {
            type = "string",
            traits = {
                required = true,
            },
        },
        activeContexts = {
            type = "list",
            member = M.ActiveContext,
        },
    },
}

M.IntentConfidence = {
    type = "structure",
    members = {
        score = {
            type = "double",
            traits = {
                default = 0,
            },
        },
    },
}

M.PredictedIntent = {
    type = "structure",
    members = {
        intentName = {
            type = "string",
        },
        nluIntentConfidence = M.IntentConfidence,
        slots = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ContentType = {
    GENERIC = "application/vnd.amazonaws.card.generic",
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

M.GenericAttachment = {
    type = "structure",
    members = {
        title = {
            type = "string",
        },
        subTitle = {
            type = "string",
        },
        attachmentLinkUrl = {
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

M.ResponseCard = {
    type = "structure",
    members = {
        version = {
            type = "string",
        },
        contentType = {
            type = "string",
        },
        genericAttachments = {
            type = "list",
            member = M.GenericAttachment,
        },
    },
}

M.SentimentResponse = {
    type = "structure",
    members = {
        sentimentLabel = {
            type = "string",
        },
        sentimentScore = {
            type = "string",
        },
    },
}

M.PostTextOutput = {
    type = "structure",
    members = {
        intentName = {
            type = "string",
        },
        nluIntentConfidence = M.IntentConfidence,
        alternativeIntents = {
            type = "list",
            member = M.PredictedIntent,
        },
        slots = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        sessionAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        message = {
            type = "string",
        },
        sentimentResponse = M.SentimentResponse,
        messageFormat = {
            type = "string",
        },
        dialogState = {
            type = "string",
        },
        slotToElicit = {
            type = "string",
        },
        responseCard = M.ResponseCard,
        sessionId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        activeContexts = {
            type = "list",
            member = M.ActiveContext,
        },
    },
}

M.PutSessionInput = {
    type = "structure",
    members = {
        botName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sessionAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        dialogAction = M.DialogAction,
        recentIntentSummaryView = {
            type = "list",
            member = M.IntentSummary,
        },
        accept = {
            type = "string",
            traits = {
                http_header = "Accept",
            },
        },
        activeContexts = {
            type = "list",
            member = M.ActiveContext,
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
        intentName = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-intent-name",
            },
        },
        slots = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-slots",
            },
        },
        sessionAttributes = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-session-attributes",
            },
        },
        message = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-message",
            },
        },
        encodedMessage = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-encoded-message",
            },
        },
        messageFormat = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-message-format",
            },
        },
        dialogState = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-dialog-state",
            },
        },
        slotToElicit = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-slot-to-elicit",
            },
        },
        audioStream = {
            type = "blob",
            traits = {
                default = "",
                http_payload = true,
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-session-id",
            },
        },
        activeContexts = {
            type = "string",
            traits = {
                http_header = "x-amz-lex-active-contexts",
            },
        },
    },
}

return M
