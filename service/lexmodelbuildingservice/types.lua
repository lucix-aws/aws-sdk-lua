local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
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

M.CreateBotVersionInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        checksum = {
            type = "string",
        },
    },
}

M.ContentType = {
    PLAIN_TEXT = "PlainText",
    SSML = "SSML",
    CUSTOM_PAYLOAD = "CustomPayload",
}

M.Message = {
    type = "structure",
    members = {
        contentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = {
            type = "string",
            traits = {
                required = true,
            },
        },
        groupNumber = {
            type = "integer",
        },
    },
}

M.Statement = {
    type = "structure",
    members = {
        messages = {
            type = "list",
            member = M.Message,
            traits = {
                required = true,
            },
        },
        responseCard = {
            type = "string",
        },
    },
}

M.Prompt = {
    type = "structure",
    members = {
        messages = {
            type = "list",
            member = M.Message,
            traits = {
                required = true,
            },
        },
        maxAttempts = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        responseCard = {
            type = "string",
        },
    },
}

M.Intent = {
    type = "structure",
    members = {
        intentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        intentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Locale = {
    DE_DE = "de-DE",
    EN_AU = "en-AU",
    EN_GB = "en-GB",
    EN_IN = "en-IN",
    EN_US = "en-US",
    ES_419 = "es-419",
    ES_ES = "es-ES",
    ES_US = "es-US",
    FR_FR = "fr-FR",
    FR_CA = "fr-CA",
    IT_IT = "it-IT",
    JA_JP = "ja-JP",
    KO_KR = "ko-KR",
}

M.Status = {
    BUILDING = "BUILDING",
    READY = "READY",
    READY_BASIC_TESTING = "READY_BASIC_TESTING",
    FAILED = "FAILED",
    NOT_BUILT = "NOT_BUILT",
}

M.CreateBotVersionOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        intents = {
            type = "list",
            member = M.Intent,
        },
        clarificationPrompt = M.Prompt,
        abortStatement = M.Statement,
        status = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        createdDate = {
            type = "timestamp",
        },
        idleSessionTTLInSeconds = {
            type = "integer",
        },
        voiceId = {
            type = "string",
        },
        checksum = {
            type = "string",
        },
        version = {
            type = "string",
        },
        locale = {
            type = "string",
        },
        childDirected = {
            type = "boolean",
        },
        enableModelImprovements = {
            type = "boolean",
        },
        detectSentiment = {
            type = "boolean",
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

M.PreconditionFailedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateIntentVersionInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        checksum = {
            type = "string",
        },
    },
}

M.CodeHook = {
    type = "structure",
    members = {
        uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        messageVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FollowUpPrompt = {
    type = "structure",
    members = {
        prompt = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Prompt }),
        rejectionStatement = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Statement }),
    },
}

M.FulfillmentActivityType = {
    RETURN_INTENT = "ReturnIntent",
    CODE_HOOK = "CodeHook",
}

M.FulfillmentActivity = {
    type = "structure",
    members = {
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        codeHook = M.CodeHook,
    },
}

M.InputContext = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.KendraConfiguration = {
    type = "structure",
    members = {
        kendraIndex = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryFilterString = {
            type = "string",
        },
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OutputContext = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
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

M.SlotDefaultValue = {
    type = "structure",
    members = {
        defaultValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SlotDefaultValueSpec = {
    type = "structure",
    members = {
        defaultValueList = {
            type = "list",
            member = M.SlotDefaultValue,
            traits = {
                required = true,
            },
        },
    },
}

M.ObfuscationSetting = {
    NONE = "NONE",
    DEFAULT_OBFUSCATION = "DEFAULT_OBFUSCATION",
}

M.SlotConstraint = {
    REQUIRED = "Required",
    OPTIONAL = "Optional",
}

M.Slot = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        slotConstraint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        slotType = {
            type = "string",
        },
        slotTypeVersion = {
            type = "string",
        },
        valueElicitationPrompt = M.Prompt,
        priority = {
            type = "integer",
        },
        sampleUtterances = {
            type = "list",
            member = { type = "string" },
        },
        responseCard = {
            type = "string",
        },
        obfuscationSetting = {
            type = "string",
        },
        defaultValueSpec = M.SlotDefaultValueSpec,
    },
}

M.CreateIntentVersionOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        slots = {
            type = "list",
            member = M.Slot,
        },
        sampleUtterances = {
            type = "list",
            member = { type = "string" },
        },
        confirmationPrompt = M.Prompt,
        rejectionStatement = M.Statement,
        followUpPrompt = M.FollowUpPrompt,
        conclusionStatement = M.Statement,
        dialogCodeHook = M.CodeHook,
        fulfillmentActivity = M.FulfillmentActivity,
        parentIntentSignature = {
            type = "string",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        createdDate = {
            type = "timestamp",
        },
        version = {
            type = "string",
        },
        checksum = {
            type = "string",
        },
        kendraConfiguration = M.KendraConfiguration,
        inputContexts = {
            type = "list",
            member = M.InputContext,
        },
        outputContexts = {
            type = "list",
            member = M.OutputContext,
        },
    },
}

M.CreateSlotTypeVersionInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        checksum = {
            type = "string",
        },
    },
}

M.EnumerationValue = {
    type = "structure",
    members = {
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        synonyms = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.SlotTypeRegexConfiguration = {
    type = "structure",
    members = {
        pattern = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SlotTypeConfiguration = {
    type = "structure",
    members = {
        regexConfiguration = M.SlotTypeRegexConfiguration,
    },
}

M.SlotValueSelectionStrategy = {
    ORIGINAL_VALUE = "ORIGINAL_VALUE",
    TOP_RESOLUTION = "TOP_RESOLUTION",
}

M.CreateSlotTypeVersionOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        enumerationValues = {
            type = "list",
            member = M.EnumerationValue,
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        createdDate = {
            type = "timestamp",
        },
        version = {
            type = "string",
        },
        checksum = {
            type = "string",
        },
        valueSelectionStrategy = {
            type = "string",
        },
        parentSlotTypeSignature = {
            type = "string",
        },
        slotTypeConfigurations = {
            type = "list",
            member = M.SlotTypeConfiguration,
        },
    },
}

M.DeleteBotInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBotOutput = {
    type = "structure",
}

M.ResourceReference = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        version = {
            type = "string",
        },
    },
}

M.ReferenceType = {
    INTENT = "Intent",
    BOT = "Bot",
    BOTALIAS = "BotAlias",
    BOTCHANNEL = "BotChannel",
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        referenceType = {
            type = "string",
        },
        exampleReference = M.ResourceReference,
    },
}

M.DeleteBotAliasInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBotAliasOutput = {
    type = "structure",
}

M.DeleteBotChannelAssociationInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
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
    },
}

M.DeleteBotChannelAssociationOutput = {
    type = "structure",
}

M.DeleteBotVersionInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBotVersionOutput = {
    type = "structure",
}

M.DeleteIntentInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIntentOutput = {
    type = "structure",
}

M.DeleteIntentVersionInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteIntentVersionOutput = {
    type = "structure",
}

M.DeleteSlotTypeInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSlotTypeOutput = {
    type = "structure",
}

M.DeleteSlotTypeVersionInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSlotTypeVersionOutput = {
    type = "structure",
}

M.DeleteUtterancesInput = {
    type = "structure",
    members = {
        botName = {
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

M.DeleteUtterancesOutput = {
    type = "structure",
}

M.GetBotInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        versionOrAlias = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetBotOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        intents = {
            type = "list",
            member = M.Intent,
        },
        enableModelImprovements = {
            type = "boolean",
        },
        nluIntentConfidenceThreshold = {
            type = "double",
        },
        clarificationPrompt = M.Prompt,
        abortStatement = M.Statement,
        status = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        createdDate = {
            type = "timestamp",
        },
        idleSessionTTLInSeconds = {
            type = "integer",
        },
        voiceId = {
            type = "string",
        },
        checksum = {
            type = "string",
        },
        version = {
            type = "string",
        },
        locale = {
            type = "string",
        },
        childDirected = {
            type = "boolean",
        },
        detectSentiment = {
            type = "boolean",
        },
    },
}

M.GetBotAliasInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Destination = {
    CLOUDWATCH_LOGS = "CLOUDWATCH_LOGS",
    S3 = "S3",
}

M.LogType = {
    AUDIO = "AUDIO",
    TEXT = "TEXT",
}

M.LogSettingsResponse = {
    type = "structure",
    members = {
        logType = {
            type = "string",
        },
        destination = {
            type = "string",
        },
        kmsKeyArn = {
            type = "string",
        },
        resourceArn = {
            type = "string",
        },
        resourcePrefix = {
            type = "string",
        },
    },
}

M.ConversationLogsResponse = {
    type = "structure",
    members = {
        logSettings = {
            type = "list",
            member = M.LogSettingsResponse,
        },
        iamRoleArn = {
            type = "string",
        },
    },
}

M.GetBotAliasOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        botName = {
            type = "string",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        createdDate = {
            type = "timestamp",
        },
        checksum = {
            type = "string",
        },
        conversationLogs = M.ConversationLogsResponse,
    },
}

M.GetBotAliasesInput = {
    type = "structure",
    members = {
        botName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nameContains = {
            type = "string",
            traits = {
                http_query = "nameContains",
            },
        },
    },
}

M.BotAliasMetadata = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        botName = {
            type = "string",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        createdDate = {
            type = "timestamp",
        },
        checksum = {
            type = "string",
        },
        conversationLogs = M.ConversationLogsResponse,
    },
}

M.GetBotAliasesOutput = {
    type = "structure",
    members = {
        BotAliases = {
            type = "list",
            member = M.BotAliasMetadata,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetBotChannelAssociationInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
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
    },
}

M.ChannelStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    CREATED = "CREATED",
    FAILED = "FAILED",
}

M.ChannelType = {
    FACEBOOK = "Facebook",
    SLACK = "Slack",
    TWILIO_SMS = "Twilio-Sms",
    KIK = "Kik",
}

M.GetBotChannelAssociationOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        botAlias = {
            type = "string",
        },
        botName = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        type = {
            type = "string",
        },
        botConfiguration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        status = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.GetBotChannelAssociationsInput = {
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
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nameContains = {
            type = "string",
            traits = {
                http_query = "nameContains",
            },
        },
    },
}

M.BotChannelAssociation = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        botAlias = {
            type = "string",
        },
        botName = {
            type = "string",
        },
        createdDate = {
            type = "timestamp",
        },
        type = {
            type = "string",
        },
        botConfiguration = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        status = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.GetBotChannelAssociationsOutput = {
    type = "structure",
    members = {
        botChannelAssociations = {
            type = "list",
            member = M.BotChannelAssociation,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetBotsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nameContains = {
            type = "string",
            traits = {
                http_query = "nameContains",
            },
        },
    },
}

M.BotMetadata = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        status = {
            type = "string",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        createdDate = {
            type = "timestamp",
        },
        version = {
            type = "string",
        },
    },
}

M.GetBotsOutput = {
    type = "structure",
    members = {
        bots = {
            type = "list",
            member = M.BotMetadata,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetBotVersionsInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GetBotVersionsOutput = {
    type = "structure",
    members = {
        bots = {
            type = "list",
            member = M.BotMetadata,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetBuiltinIntentInput = {
    type = "structure",
    members = {
        signature = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.BuiltinIntentSlot = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
    },
}

M.GetBuiltinIntentOutput = {
    type = "structure",
    members = {
        signature = {
            type = "string",
        },
        supportedLocales = {
            type = "list",
            member = { type = "string" },
        },
        slots = {
            type = "list",
            member = M.BuiltinIntentSlot,
        },
    },
}

M.GetBuiltinIntentsInput = {
    type = "structure",
    members = {
        locale = {
            type = "string",
            traits = {
                http_query = "locale",
            },
        },
        signatureContains = {
            type = "string",
            traits = {
                http_query = "signatureContains",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.BuiltinIntentMetadata = {
    type = "structure",
    members = {
        signature = {
            type = "string",
        },
        supportedLocales = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetBuiltinIntentsOutput = {
    type = "structure",
    members = {
        intents = {
            type = "list",
            member = M.BuiltinIntentMetadata,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetBuiltinSlotTypesInput = {
    type = "structure",
    members = {
        locale = {
            type = "string",
            traits = {
                http_query = "locale",
            },
        },
        signatureContains = {
            type = "string",
            traits = {
                http_query = "signatureContains",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.BuiltinSlotTypeMetadata = {
    type = "structure",
    members = {
        signature = {
            type = "string",
        },
        supportedLocales = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.GetBuiltinSlotTypesOutput = {
    type = "structure",
    members = {
        slotTypes = {
            type = "list",
            member = M.BuiltinSlotTypeMetadata,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ExportType = {
    ALEXA_SKILLS_KIT = "ALEXA_SKILLS_KIT",
    LEX = "LEX",
}

M.ResourceType = {
    BOT = "BOT",
    INTENT = "INTENT",
    SLOT_TYPE = "SLOT_TYPE",
}

M.GetExportInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_query = "name",
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                http_query = "version",
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                http_query = "resourceType",
                required = true,
            },
        },
        exportType = {
            type = "string",
            traits = {
                http_query = "exportType",
                required = true,
            },
        },
    },
}

M.ExportStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    READY = "READY",
    FAILED = "FAILED",
}

M.GetExportOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        version = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        exportType = {
            type = "string",
        },
        exportStatus = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        url = {
            type = "string",
        },
    },
}

M.GetImportInput = {
    type = "structure",
    members = {
        importId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ImportStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETE = "COMPLETE",
    FAILED = "FAILED",
}

M.MergeStrategy = {
    OVERWRITE_LATEST = "OVERWRITE_LATEST",
    FAIL_ON_CONFLICT = "FAIL_ON_CONFLICT",
}

M.GetImportOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        mergeStrategy = {
            type = "string",
        },
        importId = {
            type = "string",
        },
        importStatus = {
            type = "string",
        },
        failureReason = {
            type = "list",
            member = { type = "string" },
        },
        createdDate = {
            type = "timestamp",
        },
    },
}

M.GetIntentInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetIntentOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        slots = {
            type = "list",
            member = M.Slot,
        },
        sampleUtterances = {
            type = "list",
            member = { type = "string" },
        },
        confirmationPrompt = M.Prompt,
        rejectionStatement = M.Statement,
        followUpPrompt = M.FollowUpPrompt,
        conclusionStatement = M.Statement,
        dialogCodeHook = M.CodeHook,
        fulfillmentActivity = M.FulfillmentActivity,
        parentIntentSignature = {
            type = "string",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        createdDate = {
            type = "timestamp",
        },
        version = {
            type = "string",
        },
        checksum = {
            type = "string",
        },
        kendraConfiguration = M.KendraConfiguration,
        inputContexts = {
            type = "list",
            member = M.InputContext,
        },
        outputContexts = {
            type = "list",
            member = M.OutputContext,
        },
    },
}

M.GetIntentsInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nameContains = {
            type = "string",
            traits = {
                http_query = "nameContains",
            },
        },
    },
}

M.IntentMetadata = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        createdDate = {
            type = "timestamp",
        },
        version = {
            type = "string",
        },
    },
}

M.GetIntentsOutput = {
    type = "structure",
    members = {
        intents = {
            type = "list",
            member = M.IntentMetadata,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetIntentVersionsInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GetIntentVersionsOutput = {
    type = "structure",
    members = {
        intents = {
            type = "list",
            member = M.IntentMetadata,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetMigrationInput = {
    type = "structure",
    members = {
        migrationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MigrationAlertType = {
    ERROR = "ERROR",
    WARN = "WARN",
}

M.MigrationAlert = {
    type = "structure",
    members = {
        type = {
            type = "string",
        },
        message = {
            type = "string",
        },
        details = {
            type = "list",
            member = { type = "string" },
        },
        referenceURLs = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.MigrationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.MigrationStrategy = {
    CREATE_NEW = "CREATE_NEW",
    UPDATE_EXISTING = "UPDATE_EXISTING",
}

M.GetMigrationOutput = {
    type = "structure",
    members = {
        migrationId = {
            type = "string",
        },
        v1BotName = {
            type = "string",
        },
        v1BotVersion = {
            type = "string",
        },
        v1BotLocale = {
            type = "string",
        },
        v2BotId = {
            type = "string",
        },
        v2BotRole = {
            type = "string",
        },
        migrationStatus = {
            type = "string",
        },
        migrationStrategy = {
            type = "string",
        },
        migrationTimestamp = {
            type = "timestamp",
        },
        alerts = {
            type = "list",
            member = M.MigrationAlert,
        },
    },
}

M.MigrationSortAttribute = {
    V1_BOT_NAME = "V1_BOT_NAME",
    MIGRATION_DATE_TIME = "MIGRATION_DATE_TIME",
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.GetMigrationsInput = {
    type = "structure",
    members = {
        sortByAttribute = {
            type = "string",
            traits = {
                http_query = "sortByAttribute",
            },
        },
        sortByOrder = {
            type = "string",
            traits = {
                http_query = "sortByOrder",
            },
        },
        v1BotNameContains = {
            type = "string",
            traits = {
                http_query = "v1BotNameContains",
            },
        },
        migrationStatusEquals = {
            type = "string",
            traits = {
                http_query = "migrationStatusEquals",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.MigrationSummary = {
    type = "structure",
    members = {
        migrationId = {
            type = "string",
        },
        v1BotName = {
            type = "string",
        },
        v1BotVersion = {
            type = "string",
        },
        v1BotLocale = {
            type = "string",
        },
        v2BotId = {
            type = "string",
        },
        v2BotRole = {
            type = "string",
        },
        migrationStatus = {
            type = "string",
        },
        migrationStrategy = {
            type = "string",
        },
        migrationTimestamp = {
            type = "timestamp",
        },
    },
}

M.GetMigrationsOutput = {
    type = "structure",
    members = {
        migrationSummaries = {
            type = "list",
            member = M.MigrationSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetSlotTypeInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSlotTypeOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        enumerationValues = {
            type = "list",
            member = M.EnumerationValue,
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        createdDate = {
            type = "timestamp",
        },
        version = {
            type = "string",
        },
        checksum = {
            type = "string",
        },
        valueSelectionStrategy = {
            type = "string",
        },
        parentSlotTypeSignature = {
            type = "string",
        },
        slotTypeConfigurations = {
            type = "list",
            member = M.SlotTypeConfiguration,
        },
    },
}

M.GetSlotTypesInput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nameContains = {
            type = "string",
            traits = {
                http_query = "nameContains",
            },
        },
    },
}

M.SlotTypeMetadata = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        createdDate = {
            type = "timestamp",
        },
        version = {
            type = "string",
        },
    },
}

M.GetSlotTypesOutput = {
    type = "structure",
    members = {
        slotTypes = {
            type = "list",
            member = M.SlotTypeMetadata,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetSlotTypeVersionsInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
    },
}

M.GetSlotTypeVersionsOutput = {
    type = "structure",
    members = {
        slotTypes = {
            type = "list",
            member = M.SlotTypeMetadata,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.StatusType = {
    DETECTED = "Detected",
    MISSED = "Missed",
}

M.GetUtterancesViewInput = {
    type = "structure",
    members = {
        botName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersions = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "bot_versions",
                required = true,
            },
        },
        statusType = {
            type = "string",
            traits = {
                http_query = "status_type",
                required = true,
            },
        },
    },
}

M.UtteranceData = {
    type = "structure",
    members = {
        utteranceString = {
            type = "string",
        },
        count = {
            type = "integer",
        },
        distinctUsers = {
            type = "integer",
        },
        firstUtteredDate = {
            type = "timestamp",
        },
        lastUtteredDate = {
            type = "timestamp",
        },
    },
}

M.UtteranceList = {
    type = "structure",
    members = {
        botVersion = {
            type = "string",
        },
        utterances = {
            type = "list",
            member = M.UtteranceData,
        },
    },
}

M.GetUtterancesViewOutput = {
    type = "structure",
    members = {
        botName = {
            type = "string",
        },
        utterances = {
            type = "list",
            member = M.UtteranceList,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        key = {
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

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.ProcessBehavior = {
    SAVE = "SAVE",
    BUILD = "BUILD",
}

M.PutBotInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        intents = {
            type = "list",
            member = M.Intent,
        },
        enableModelImprovements = {
            type = "boolean",
        },
        nluIntentConfidenceThreshold = {
            type = "double",
        },
        clarificationPrompt = M.Prompt,
        abortStatement = M.Statement,
        idleSessionTTLInSeconds = {
            type = "integer",
        },
        voiceId = {
            type = "string",
        },
        checksum = {
            type = "string",
        },
        processBehavior = {
            type = "string",
        },
        locale = {
            type = "string",
            traits = {
                required = true,
            },
        },
        childDirected = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        detectSentiment = {
            type = "boolean",
        },
        createVersion = {
            type = "boolean",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutBotOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        intents = {
            type = "list",
            member = M.Intent,
        },
        enableModelImprovements = {
            type = "boolean",
        },
        nluIntentConfidenceThreshold = {
            type = "double",
        },
        clarificationPrompt = M.Prompt,
        abortStatement = M.Statement,
        status = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        createdDate = {
            type = "timestamp",
        },
        idleSessionTTLInSeconds = {
            type = "integer",
        },
        voiceId = {
            type = "string",
        },
        checksum = {
            type = "string",
        },
        version = {
            type = "string",
        },
        locale = {
            type = "string",
        },
        childDirected = {
            type = "boolean",
        },
        createVersion = {
            type = "boolean",
        },
        detectSentiment = {
            type = "boolean",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.LogSettingsRequest = {
    type = "structure",
    members = {
        logType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
        resourceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConversationLogsRequest = {
    type = "structure",
    members = {
        logSettings = {
            type = "list",
            member = M.LogSettingsRequest,
            traits = {
                required = true,
            },
        },
        iamRoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PutBotAliasInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        botVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        botName = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        checksum = {
            type = "string",
        },
        conversationLogs = M.ConversationLogsRequest,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutBotAliasOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        botName = {
            type = "string",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        createdDate = {
            type = "timestamp",
        },
        checksum = {
            type = "string",
        },
        conversationLogs = M.ConversationLogsResponse,
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutIntentInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        slots = {
            type = "list",
            member = M.Slot,
        },
        sampleUtterances = {
            type = "list",
            member = { type = "string" },
        },
        confirmationPrompt = M.Prompt,
        rejectionStatement = M.Statement,
        followUpPrompt = M.FollowUpPrompt,
        conclusionStatement = M.Statement,
        dialogCodeHook = M.CodeHook,
        fulfillmentActivity = M.FulfillmentActivity,
        parentIntentSignature = {
            type = "string",
        },
        checksum = {
            type = "string",
        },
        createVersion = {
            type = "boolean",
        },
        kendraConfiguration = M.KendraConfiguration,
        inputContexts = {
            type = "list",
            member = M.InputContext,
        },
        outputContexts = {
            type = "list",
            member = M.OutputContext,
        },
    },
}

M.PutIntentOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        slots = {
            type = "list",
            member = M.Slot,
        },
        sampleUtterances = {
            type = "list",
            member = { type = "string" },
        },
        confirmationPrompt = M.Prompt,
        rejectionStatement = M.Statement,
        followUpPrompt = M.FollowUpPrompt,
        conclusionStatement = M.Statement,
        dialogCodeHook = M.CodeHook,
        fulfillmentActivity = M.FulfillmentActivity,
        parentIntentSignature = {
            type = "string",
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        createdDate = {
            type = "timestamp",
        },
        version = {
            type = "string",
        },
        checksum = {
            type = "string",
        },
        createVersion = {
            type = "boolean",
        },
        kendraConfiguration = M.KendraConfiguration,
        inputContexts = {
            type = "list",
            member = M.InputContext,
        },
        outputContexts = {
            type = "list",
            member = M.OutputContext,
        },
    },
}

M.PutSlotTypeInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        enumerationValues = {
            type = "list",
            member = M.EnumerationValue,
        },
        checksum = {
            type = "string",
        },
        valueSelectionStrategy = {
            type = "string",
        },
        createVersion = {
            type = "boolean",
        },
        parentSlotTypeSignature = {
            type = "string",
        },
        slotTypeConfigurations = {
            type = "list",
            member = M.SlotTypeConfiguration,
        },
    },
}

M.PutSlotTypeOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        enumerationValues = {
            type = "list",
            member = M.EnumerationValue,
        },
        lastUpdatedDate = {
            type = "timestamp",
        },
        createdDate = {
            type = "timestamp",
        },
        version = {
            type = "string",
        },
        checksum = {
            type = "string",
        },
        valueSelectionStrategy = {
            type = "string",
        },
        createVersion = {
            type = "boolean",
        },
        parentSlotTypeSignature = {
            type = "string",
        },
        slotTypeConfigurations = {
            type = "list",
            member = M.SlotTypeConfiguration,
        },
    },
}

M.StartImportInput = {
    type = "structure",
    members = {
        payload = {
            type = "blob",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        mergeStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.StartImportOutput = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        resourceType = {
            type = "string",
        },
        mergeStrategy = {
            type = "string",
        },
        importId = {
            type = "string",
        },
        importStatus = {
            type = "string",
        },
        tags = {
            type = "list",
            member = M.Tag,
        },
        createdDate = {
            type = "timestamp",
        },
    },
}

M.StartMigrationInput = {
    type = "structure",
    members = {
        v1BotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        v1BotVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        v2BotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        v2BotRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        migrationStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.StartMigrationOutput = {
    type = "structure",
    members = {
        v1BotName = {
            type = "string",
        },
        v1BotVersion = {
            type = "string",
        },
        v1BotLocale = {
            type = "string",
        },
        v2BotId = {
            type = "string",
        },
        v2BotRole = {
            type = "string",
        },
        migrationId = {
            type = "string",
        },
        migrationStrategy = {
            type = "string",
        },
        migrationTimestamp = {
            type = "timestamp",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

return M
