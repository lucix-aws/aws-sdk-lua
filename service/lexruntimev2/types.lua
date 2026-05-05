local M = {}

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

M.SentimentType = {
    MIXED = "MIXED",
    NEGATIVE = "NEGATIVE",
    NEUTRAL = "NEUTRAL",
    POSITIVE = "POSITIVE",
}

M.MessageContentType = {
    CUSTOM_PAYLOAD = "CustomPayload",
    IMAGE_RESPONSE_CARD = "ImageResponseCard",
    PLAIN_TEXT = "PlainText",
    SSML = "SSML",
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

M.ConversationMode = {
    AUDIO = "AUDIO",
    TEXT = "TEXT",
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

return M
