local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.BadRequestException = {
    type = "structure",
    id = "BadRequestException",
    error = "client",
    members = {
        message = {
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
        },
    },
}

M.CreateBotVersionInput = {
    type = "structure",
    id = "CreateBotVersionInput",
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
    id = "Message",
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
    id = "Statement",
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
    id = "Prompt",
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
    id = "Intent",
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
    id = "CreateBotVersionOutput",
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
    id = "InternalFailureException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.LimitExceededException = {
    type = "structure",
    id = "LimitExceededException",
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
    id = "NotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PreconditionFailedException = {
    type = "structure",
    id = "PreconditionFailedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateIntentVersionInput = {
    type = "structure",
    id = "CreateIntentVersionInput",
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
    id = "CodeHook",
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
    id = "FollowUpPrompt",
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
    id = "FulfillmentActivity",
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
    id = "InputContext",
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
    id = "KendraConfiguration",
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
    id = "OutputContext",
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
    id = "SlotDefaultValue",
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
    id = "SlotDefaultValueSpec",
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
    id = "Slot",
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
    id = "CreateIntentVersionOutput",
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
    id = "CreateSlotTypeVersionInput",
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
    id = "EnumerationValue",
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
    id = "SlotTypeRegexConfiguration",
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
    id = "SlotTypeConfiguration",
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
    id = "CreateSlotTypeVersionOutput",
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
    id = "DeleteBotInput",
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
    id = "DeleteBotOutput",
}

M.ResourceReference = {
    type = "structure",
    id = "ResourceReference",
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
    id = "ResourceInUseException",
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
    id = "DeleteBotAliasInput",
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
    id = "DeleteBotAliasOutput",
}

M.DeleteBotChannelAssociationInput = {
    type = "structure",
    id = "DeleteBotChannelAssociationInput",
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
    id = "DeleteBotChannelAssociationOutput",
}

M.DeleteBotVersionInput = {
    type = "structure",
    id = "DeleteBotVersionInput",
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
    id = "DeleteBotVersionOutput",
}

M.DeleteIntentInput = {
    type = "structure",
    id = "DeleteIntentInput",
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
    id = "DeleteIntentOutput",
}

M.DeleteIntentVersionInput = {
    type = "structure",
    id = "DeleteIntentVersionInput",
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
    id = "DeleteIntentVersionOutput",
}

M.DeleteSlotTypeInput = {
    type = "structure",
    id = "DeleteSlotTypeInput",
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
    id = "DeleteSlotTypeOutput",
}

M.DeleteSlotTypeVersionInput = {
    type = "structure",
    id = "DeleteSlotTypeVersionInput",
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
    id = "DeleteSlotTypeVersionOutput",
}

M.DeleteUtterancesInput = {
    type = "structure",
    id = "DeleteUtterancesInput",
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
    id = "DeleteUtterancesOutput",
}

M.GetBotInput = {
    type = "structure",
    id = "GetBotInput",
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
    id = "GetBotOutput",
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
    id = "GetBotAliasInput",
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
    id = "LogSettingsResponse",
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
    id = "ConversationLogsResponse",
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
    id = "GetBotAliasOutput",
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
    id = "GetBotAliasesInput",
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
    id = "BotAliasMetadata",
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
    id = "GetBotAliasesOutput",
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
    id = "GetBotChannelAssociationInput",
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
    id = "GetBotChannelAssociationOutput",
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
    id = "GetBotChannelAssociationsInput",
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
    id = "BotChannelAssociation",
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
    id = "GetBotChannelAssociationsOutput",
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
    id = "GetBotsInput",
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
    id = "BotMetadata",
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
    id = "GetBotsOutput",
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
    id = "GetBotVersionsInput",
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
    id = "GetBotVersionsOutput",
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
    id = "GetBuiltinIntentInput",
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
    id = "BuiltinIntentSlot",
    members = {
        name = {
            type = "string",
        },
    },
}

M.GetBuiltinIntentOutput = {
    type = "structure",
    id = "GetBuiltinIntentOutput",
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
    id = "GetBuiltinIntentsInput",
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
    id = "BuiltinIntentMetadata",
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
    id = "GetBuiltinIntentsOutput",
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
    id = "GetBuiltinSlotTypesInput",
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
    id = "BuiltinSlotTypeMetadata",
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
    id = "GetBuiltinSlotTypesOutput",
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
    id = "GetExportInput",
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
    id = "GetExportOutput",
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
    id = "GetImportInput",
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
    id = "GetImportOutput",
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
    id = "GetIntentInput",
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
    id = "GetIntentOutput",
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
    id = "GetIntentsInput",
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
    id = "IntentMetadata",
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
    id = "GetIntentsOutput",
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
    id = "GetIntentVersionsInput",
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
    id = "GetIntentVersionsOutput",
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
    id = "GetMigrationInput",
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
    id = "MigrationAlert",
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
    id = "GetMigrationOutput",
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
    id = "GetMigrationsInput",
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
    id = "MigrationSummary",
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
    id = "GetMigrationsOutput",
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
    id = "GetSlotTypeInput",
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
    id = "GetSlotTypeOutput",
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
    id = "GetSlotTypesInput",
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
    id = "SlotTypeMetadata",
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
    id = "GetSlotTypesOutput",
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
    id = "GetSlotTypeVersionsInput",
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
    id = "GetSlotTypeVersionsOutput",
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
    id = "GetUtterancesViewInput",
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
    id = "UtteranceData",
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
    id = "UtteranceList",
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
    id = "GetUtterancesViewOutput",
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
    id = "ListTagsForResourceInput",
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
    id = "Tag",
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
    id = "ListTagsForResourceOutput",
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
    id = "PutBotInput",
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
    id = "PutBotOutput",
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
    id = "LogSettingsRequest",
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
    id = "ConversationLogsRequest",
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
    id = "PutBotAliasInput",
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
    id = "PutBotAliasOutput",
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
    id = "PutIntentInput",
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
    id = "PutIntentOutput",
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
    id = "PutSlotTypeInput",
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
    id = "PutSlotTypeOutput",
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
    id = "StartImportInput",
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
    id = "StartImportOutput",
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
    id = "StartMigrationInput",
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
    id = "StartMigrationOutput",
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
    id = "TagResourceInput",
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
    id = "TagResourceOutput",
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
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
    id = "UntagResourceOutput",
}

return M
