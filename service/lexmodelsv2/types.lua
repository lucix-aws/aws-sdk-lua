local M = {}

M.ActiveContext = {
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

M.AudioRecognitionStrategy = {
    UseSlotValuesAsCustomVocabulary = "UseSlotValuesAsCustomVocabulary",
}

M.AdvancedRecognitionSetting = {
    type = "structure",
    members = {
        audioRecognitionStrategy = {
            type = "string",
        },
    },
}

M.ExecutionErrorDetails = {
    type = "structure",
    members = {
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AgentTurnResult = {
    type = "structure",
    members = {
        expectedAgentPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        actualAgentPrompt = {
            type = "string",
        },
        errorDetails = {
            type = "structure",
        },
        actualElicitedSlot = {
            type = "string",
        },
        actualIntent = {
            type = "string",
        },
    },
}

M.AgentTurnSpecification = {
    type = "structure",
    members = {
        agentPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AggregatedUtterancesFilterName = {
    Utterance = "Utterance",
}

M.AggregatedUtterancesFilterOperator = {
    Contains = "CO",
    Equals = "EQ",
}

M.AggregatedUtterancesFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AggregatedUtterancesSortAttribute = {
    HitCount = "HitCount",
    MissedCount = "MissedCount",
}

M.SortOrder = {
    Ascending = "Ascending",
    Descending = "Descending",
}

M.AggregatedUtterancesSortBy = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AggregatedUtterancesSummary = {
    type = "structure",
    members = {
        utterance = {
            type = "string",
        },
        hitCount = {
            type = "number",
        },
        missedCount = {
            type = "number",
        },
        utteranceFirstRecordedInAggregationDuration = {
            type = "timestamp",
        },
        utteranceLastRecordedInAggregationDuration = {
            type = "timestamp",
        },
        containsDataFromDeletedResources = {
            type = "boolean",
        },
    },
}

M.AllowedInputTypes = {
    type = "structure",
    members = {
        allowAudioInput = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        allowDTMFInput = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.AnalysisScope = {
    BotLocale = "BotLocale",
}

M.AnalyticsInterval = {
    OneHour = "OneHour",
    OneDay = "OneDay",
}

M.AnalyticsBinByName = {
    ConversationStartTime = "ConversationStartTime",
    UtteranceTimestamp = "UtteranceTimestamp",
}

M.AnalyticsSortOrder = {
    Ascending = "Ascending",
    Descending = "Descending",
}

M.AnalyticsBinBySpecification = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        interval = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
        },
    },
}

M.AnalyticsBinKey = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "number",
        },
    },
}

M.AnalyticsCommonFilterName = {
    BotAliasId = "BotAliasId",
    BotVersion = "BotVersion",
    LocaleId = "LocaleId",
    Modality = "Modality",
    Channel = "Channel",
}

M.AnalyticsFilterOperator = {
    Equals = "EQ",
    GreaterThan = "GT",
    LessThan = "LT",
}

M.AnalyticsIntentField = {
    IntentName = "IntentName",
    IntentEndState = "IntentEndState",
    IntentLevel = "IntentLevel",
}

M.AnalyticsIntentFilterName = {
    BotAliasId = "BotAliasId",
    BotVersion = "BotVersion",
    LocaleId = "LocaleId",
    Modality = "Modality",
    Channel = "Channel",
    SessionId = "SessionId",
    OriginatingRequestId = "OriginatingRequestId",
    IntentName = "IntentName",
    IntentEndState = "IntentEndState",
}

M.AnalyticsIntentFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AnalyticsIntentGroupByKey = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.AnalyticsIntentGroupBySpecification = {
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

M.AnalyticsIntentMetricName = {
    Count = "Count",
    Success = "Success",
    Failure = "Failure",
    Switched = "Switched",
    Dropped = "Dropped",
}

M.AnalyticsMetricStatistic = {
    Sum = "Sum",
    Avg = "Avg",
    Max = "Max",
}

M.AnalyticsIntentMetric = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statistic = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
        },
    },
}

M.AnalyticsIntentMetricResult = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        statistic = {
            type = "string",
        },
        value = {
            type = "number",
        },
    },
}

M.AnalyticsNodeType = {
    Inner = "Inner",
    Exit = "Exit",
}

M.AnalyticsIntentNodeSummary = {
    type = "structure",
    members = {
        intentName = {
            type = "string",
        },
        intentPath = {
            type = "string",
        },
        intentCount = {
            type = "number",
        },
        intentLevel = {
            type = "number",
        },
        nodeType = {
            type = "string",
        },
    },
}

M.AnalyticsIntentResult = {
    type = "structure",
    members = {
        binKeys = {
            type = "list",
            member_type = "structure",
        },
        groupByKeys = {
            type = "list",
            member_type = "structure",
        },
        metricsResults = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AnalyticsIntentStageField = {
    IntentStageName = "IntentStageName",
    SwitchedToIntent = "SwitchedToIntent",
}

M.AnalyticsIntentStageFilterName = {
    BotAliasId = "BotAliasId",
    BotVersion = "BotVersion",
    LocaleId = "LocaleId",
    Modality = "Modality",
    Channel = "Channel",
    SessionId = "SessionId",
    OriginatingRequestId = "OriginatingRequestId",
    IntentName = "IntentName",
    IntentStageName = "IntentStageName",
}

M.AnalyticsIntentStageFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AnalyticsIntentStageGroupByKey = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.AnalyticsIntentStageGroupBySpecification = {
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

M.AnalyticsIntentStageMetricName = {
    Count = "Count",
    Success = "Success",
    Failed = "Failed",
    Dropped = "Dropped",
    Retry = "Retry",
}

M.AnalyticsIntentStageMetric = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statistic = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
        },
    },
}

M.AnalyticsIntentStageMetricResult = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        statistic = {
            type = "string",
        },
        value = {
            type = "number",
        },
    },
}

M.AnalyticsIntentStageResult = {
    type = "structure",
    members = {
        binKeys = {
            type = "list",
            member_type = "structure",
        },
        groupByKeys = {
            type = "list",
            member_type = "structure",
        },
        metricsResults = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AnalyticsModality = {
    Speech = "Speech",
    Text = "Text",
    DTMF = "DTMF",
    MultiMode = "MultiMode",
}

M.AnalyticsPathFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AnalyticsSessionField = {
    ConversationEndState = "ConversationEndState",
    LocaleId = "LocaleId",
}

M.AnalyticsSessionFilterName = {
    BotAliasId = "BotAliasId",
    BotVersion = "BotVersion",
    LocaleId = "LocaleId",
    Modality = "Modality",
    Channel = "Channel",
    Duration = "Duration",
    ConversationEndState = "ConversationEndState",
    SessionId = "SessionId",
    OriginatingRequestId = "OriginatingRequestId",
    IntentPath = "IntentPath",
}

M.AnalyticsSessionFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AnalyticsSessionGroupByKey = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.AnalyticsSessionGroupBySpecification = {
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

M.AnalyticsSessionMetricName = {
    Count = "Count",
    Success = "Success",
    Failure = "Failure",
    Dropped = "Dropped",
    Duration = "Duration",
    TurnsPerConversation = "TurnsPerConversation",
    Concurrency = "Concurrency",
}

M.AnalyticsSessionMetric = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statistic = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
        },
    },
}

M.AnalyticsSessionMetricResult = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        statistic = {
            type = "string",
        },
        value = {
            type = "number",
        },
    },
}

M.AnalyticsSessionResult = {
    type = "structure",
    members = {
        binKeys = {
            type = "list",
            member_type = "structure",
        },
        groupByKeys = {
            type = "list",
            member_type = "structure",
        },
        metricsResults = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AnalyticsSessionSortByName = {
    ConversationStartTime = "ConversationStartTime",
    NumberOfTurns = "NumberOfTurns",
    Duration = "Duration",
}

M.AnalyticsUtteranceAttributeName = {
    LastUsedIntent = "LastUsedIntent",
}

M.AnalyticsUtteranceAttribute = {
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

M.AnalyticsUtteranceAttributeResult = {
    type = "structure",
    members = {
        lastUsedIntent = {
            type = "string",
        },
    },
}

M.AnalyticsUtteranceField = {
    UtteranceText = "UtteranceText",
    UtteranceState = "UtteranceState",
}

M.AnalyticsUtteranceFilterName = {
    BotAliasId = "BotAliasId",
    BotVersion = "BotVersion",
    LocaleId = "LocaleId",
    Modality = "Modality",
    Channel = "Channel",
    SessionId = "SessionId",
    OriginatingRequestId = "OriginatingRequestId",
    UtteranceState = "UtteranceState",
    UtteranceText = "UtteranceText",
}

M.AnalyticsUtteranceFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AnalyticsUtteranceGroupByKey = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.AnalyticsUtteranceGroupBySpecification = {
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

M.AnalyticsUtteranceMetricName = {
    Count = "Count",
    Missed = "Missed",
    Detected = "Detected",
    UtteranceTimestamp = "UtteranceTimestamp",
}

M.AnalyticsUtteranceMetric = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        statistic = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
        },
    },
}

M.AnalyticsUtteranceMetricResult = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        statistic = {
            type = "string",
        },
        value = {
            type = "number",
        },
    },
}

M.AnalyticsUtteranceResult = {
    type = "structure",
    members = {
        binKeys = {
            type = "list",
            member_type = "structure",
        },
        groupByKeys = {
            type = "list",
            member_type = "structure",
        },
        metricsResults = {
            type = "list",
            member_type = "structure",
        },
        attributeResults = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.AnalyticsUtteranceSortByName = {
    UtteranceTimestamp = "UtteranceTimestamp",
}

M.AssistedNluMode = {
    Primary = "Primary",
    Fallback = "Fallback",
}

M.AssociatedTranscript = {
    type = "structure",
    members = {
        transcript = {
            type = "string",
        },
    },
}

M.AssociatedTranscriptFilterName = {
    IntentId = "IntentId",
    SlotTypeId = "SlotTypeId",
}

M.AssociatedTranscriptFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AudioSpecification = {
    type = "structure",
    members = {
        maxLengthMs = {
            type = "number",
            traits = {
                required = true,
            },
        },
        endTimeoutMs = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.DTMFSpecification = {
    type = "structure",
    members = {
        maxLength = {
            type = "number",
            traits = {
                required = true,
            },
        },
        endTimeoutMs = {
            type = "number",
            traits = {
                required = true,
            },
        },
        deletionCharacter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endCharacter = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AudioAndDTMFInputSpecification = {
    type = "structure",
    members = {
        startTimeoutMs = {
            type = "number",
            traits = {
                required = true,
            },
        },
        audioSpecification = {
            type = "structure",
        },
        dtmfSpecification = {
            type = "structure",
        },
    },
}

M.S3BucketLogDestination = {
    type = "structure",
    members = {
        kmsKeyArn = {
            type = "string",
        },
        s3BucketArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logPrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AudioLogDestination = {
    type = "structure",
    members = {
        s3Bucket = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.AudioLogSetting = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        selectiveLoggingEnabled = {
            type = "boolean",
        },
    },
}

M.NewCustomVocabularyItem = {
    type = "structure",
    members = {
        phrase = {
            type = "string",
            traits = {
                required = true,
            },
        },
        weight = {
            type = "number",
        },
        displayAs = {
            type = "string",
        },
    },
}

M.BatchCreateCustomVocabularyItemInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        customVocabularyItemList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ErrorCode = {
    DUPLICATE_INPUT = "DUPLICATE_INPUT",
    RESOURCE_DOES_NOT_EXIST = "RESOURCE_DOES_NOT_EXIST",
    RESOURCE_ALREADY_EXISTS = "RESOURCE_ALREADY_EXISTS",
    INTERNAL_SERVER_FAILURE = "INTERNAL_SERVER_FAILURE",
}

M.FailedCustomVocabularyItem = {
    type = "structure",
    members = {
        itemId = {
            type = "string",
        },
        errorMessage = {
            type = "string",
        },
        errorCode = {
            type = "string",
        },
    },
}

M.CustomVocabularyItem = {
    type = "structure",
    members = {
        itemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        phrase = {
            type = "string",
            traits = {
                required = true,
            },
        },
        weight = {
            type = "number",
        },
        displayAs = {
            type = "string",
        },
    },
}

M.BatchCreateCustomVocabularyItemOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
        resources = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        retryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomVocabularyEntryId = {
    type = "structure",
    members = {
        itemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteCustomVocabularyItemInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        customVocabularyItemList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteCustomVocabularyItemOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
        resources = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BatchUpdateCustomVocabularyItemInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        customVocabularyItemList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateCustomVocabularyItemOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        errors = {
            type = "list",
            member_type = "structure",
        },
        resources = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.BedrockGuardrailConfiguration = {
    type = "structure",
    members = {
        identifier = {
            type = "string",
            traits = {
                required = true,
            },
        },
        version = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BedrockKnowledgeStoreExactResponseFields = {
    type = "structure",
    members = {
        answerField = {
            type = "string",
        },
    },
}

M.BedrockKnowledgeStoreConfiguration = {
    type = "structure",
    members = {
        bedrockKnowledgeBaseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exactResponse = {
            type = "boolean",
        },
        exactResponseFields = {
            type = "structure",
        },
    },
}

M.BedrockTraceStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.BedrockModelSpecification = {
    type = "structure",
    members = {
        modelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        guardrail = {
            type = "structure",
        },
        traceStatus = {
            type = "string",
        },
        customPrompt = {
            type = "string",
        },
    },
}

M.BotAliasHistoryEvent = {
    type = "structure",
    members = {
        botVersion = {
            type = "string",
        },
        startDate = {
            type = "timestamp",
        },
        endDate = {
            type = "timestamp",
        },
    },
}

M.LambdaCodeHook = {
    type = "structure",
    members = {
        lambdaARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        codeHookInterfaceVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CodeHookSpecification = {
    type = "structure",
    members = {
        lambdaCodeHook = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.BotAliasLocaleSettings = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        codeHookSpecification = {
            type = "structure",
        },
    },
}

M.BotAliasReplicationStatus = {
    Creating = "Creating",
    Updating = "Updating",
    Available = "Available",
    Deleting = "Deleting",
    Failed = "Failed",
}

M.BotAliasReplicaSummary = {
    type = "structure",
    members = {
        botAliasId = {
            type = "string",
        },
        botAliasReplicationStatus = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BotAliasStatus = {
    Creating = "Creating",
    Available = "Available",
    Deleting = "Deleting",
    Failed = "Failed",
}

M.BotAliasSummary = {
    type = "structure",
    members = {
        botAliasId = {
            type = "string",
        },
        botAliasName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        botAliasStatus = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.BotAliasTestExecutionTarget = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        botAliasId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        localeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BotAnalyzerStatus = {
    Processing = "Processing",
    Available = "Available",
    Failed = "Failed",
    Stopping = "Stopping",
    Stopped = "Stopped",
}

M.BotAnalyzerHistorySummary = {
    type = "structure",
    members = {
        botAnalyzerStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDateTime = {
            type = "timestamp",
        },
        botAnalyzerRequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IssueLocation = {
    type = "structure",
    members = {
        botLocale = {
            type = "string",
        },
        intentId = {
            type = "string",
        },
        slotId = {
            type = "string",
        },
    },
}

M.Priority = {
    High = "High",
    Medium = "Medium",
    Low = "Low",
}

M.BotAnalyzerRecommendation = {
    type = "structure",
    members = {
        issueLocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        priority = {
            type = "string",
            traits = {
                required = true,
            },
        },
        issueDescription = {
            type = "string",
            traits = {
                required = true,
            },
        },
        proposedFix = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BotExportSpecification = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        botVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BotFilterName = {
    BotName = "BotName",
    BotType = "BotType",
}

M.BotFilterOperator = {
    Contains = "CO",
    Equals = "EQ",
    NotEquals = "NE",
}

M.BotFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DataPrivacy = {
    type = "structure",
    members = {
        childDirected = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ErrorLogSettings = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.BotImportSpecification = {
    type = "structure",
    members = {
        botName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataPrivacy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        errorLogSettings = {
            type = "structure",
        },
        idleSessionTTLInSeconds = {
            type = "number",
        },
        botTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        testBotAliasTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.BotLocaleExportSpecification = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        botVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        localeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BotLocaleFilterName = {
    BotLocaleName = "BotLocaleName",
}

M.BotLocaleFilterOperator = {
    Contains = "CO",
    Equals = "EQ",
}

M.BotLocaleFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BotLocaleHistoryEvent = {
    type = "structure",
    members = {
        event = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventDate = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.SpeechDetectionSensitivity = {
    Default = "Default",
    HighNoiseTolerance = "HighNoiseTolerance",
    MaximumNoiseTolerance = "MaximumNoiseTolerance",
}

M.DeepgramSpeechModelConfig = {
    type = "structure",
    members = {
        apiTokenSecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        modelId = {
            type = "string",
        },
    },
}

M.SpeechModelConfig = {
    type = "structure",
    members = {
        deepgramConfig = {
            type = "structure",
        },
    },
}

M.SpeechModelPreference = {
    Standard = "Standard",
    Neural = "Neural",
    Deepgram = "Deepgram",
}

M.SpeechRecognitionSettings = {
    type = "structure",
    members = {
        speechModelPreference = {
            type = "string",
        },
        speechModelConfig = {
            type = "structure",
        },
    },
}

M.SpeechFoundationModel = {
    type = "structure",
    members = {
        modelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        voiceId = {
            type = "string",
        },
    },
}

M.UnifiedSpeechSettings = {
    type = "structure",
    members = {
        speechFoundationModel = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.VoiceEngine = {
    Standard = "standard",
    Neural = "neural",
    LongForm = "long-form",
    Generative = "generative",
}

M.VoiceSettings = {
    type = "structure",
    members = {
        engine = {
            type = "string",
        },
        voiceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BotLocaleImportSpecification = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        botVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        localeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nluIntentConfidenceThreshold = {
            type = "number",
        },
        voiceSettings = {
            type = "structure",
        },
        speechRecognitionSettings = {
            type = "structure",
        },
        speechDetectionSensitivity = {
            type = "string",
        },
        unifiedSpeechSettings = {
            type = "structure",
        },
    },
}

M.BotLocaleSortAttribute = {
    BotLocaleName = "BotLocaleName",
}

M.BotLocaleSortBy = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BotLocaleStatus = {
    Creating = "Creating",
    Building = "Building",
    Built = "Built",
    ReadyExpressTesting = "ReadyExpressTesting",
    Failed = "Failed",
    Deleting = "Deleting",
    NotBuilt = "NotBuilt",
    Importing = "Importing",
    Processing = "Processing",
}

M.BotLocaleSummary = {
    type = "structure",
    members = {
        localeId = {
            type = "string",
        },
        localeName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        botLocaleStatus = {
            type = "string",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        lastBuildSubmittedDateTime = {
            type = "timestamp",
        },
    },
}

M.BotMember = {
    type = "structure",
    members = {
        botMemberId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        botMemberName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        botMemberAliasId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        botMemberAliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        botMemberVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IntentStatistics = {
    type = "structure",
    members = {
        discoveredIntentCount = {
            type = "number",
        },
    },
}

M.SlotTypeStatistics = {
    type = "structure",
    members = {
        discoveredSlotTypeCount = {
            type = "number",
        },
    },
}

M.BotRecommendationResultStatistics = {
    type = "structure",
    members = {
        intents = {
            type = "structure",
        },
        slotTypes = {
            type = "structure",
        },
    },
}

M.BotRecommendationResults = {
    type = "structure",
    members = {
        botLocaleExportUrl = {
            type = "string",
        },
        associatedTranscriptsUrl = {
            type = "string",
        },
        statistics = {
            type = "structure",
        },
    },
}

M.BotRecommendationStatus = {
    Processing = "Processing",
    Deleting = "Deleting",
    Deleted = "Deleted",
    Downloading = "Downloading",
    Updating = "Updating",
    Available = "Available",
    Failed = "Failed",
    Stopping = "Stopping",
    Stopped = "Stopped",
}

M.BotRecommendationSummary = {
    type = "structure",
    members = {
        botRecommendationStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        botRecommendationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.BotReplicaStatus = {
    Enabling = "Enabling",
    Enabled = "Enabled",
    Deleting = "Deleting",
    Failed = "Failed",
}

M.BotReplicaSummary = {
    type = "structure",
    members = {
        replicaRegion = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        botReplicaStatus = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BotSortAttribute = {
    BotName = "BotName",
}

M.BotSortBy = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BotStatus = {
    Creating = "Creating",
    Available = "Available",
    Inactive = "Inactive",
    Deleting = "Deleting",
    Failed = "Failed",
    Versioning = "Versioning",
    Importing = "Importing",
    Updating = "Updating",
}

M.BotType = {
    Bot = "Bot",
    BotNetwork = "BotNetwork",
}

M.BotSummary = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        botStatus = {
            type = "string",
        },
        latestBotVersion = {
            type = "string",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        botType = {
            type = "string",
        },
    },
}

M.BotVersionLocaleDetails = {
    type = "structure",
    members = {
        sourceBotVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BotVersionReplicaSortAttribute = {
    BotVersion = "BotVersion",
}

M.BotVersionReplicaSortBy = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BotVersionReplicationStatus = {
    Creating = "Creating",
    Available = "Available",
    Deleting = "Deleting",
    Failed = "Failed",
}

M.BotVersionReplicaSummary = {
    type = "structure",
    members = {
        botVersion = {
            type = "string",
        },
        botVersionReplicationStatus = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
    },
}

M.BotVersionSortAttribute = {
    BotVersion = "BotVersion",
}

M.BotVersionSortBy = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BotVersionSummary = {
    type = "structure",
    members = {
        botName = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        description = {
            type = "string",
        },
        botStatus = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
    },
}

M.BuildBotLocaleInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
    },
}

M.BuildBotLocaleOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        botLocaleStatus = {
            type = "string",
        },
        lastBuildSubmittedDateTime = {
            type = "timestamp",
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

M.PreconditionFailedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.DescriptiveBotBuilderSpecification = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        bedrockModelSpecification = {
            type = "structure",
        },
    },
}

M.SampleUtteranceGenerationSpecification = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        bedrockModelSpecification = {
            type = "structure",
        },
    },
}

M.BuildtimeSettings = {
    type = "structure",
    members = {
        descriptiveBotBuilder = {
            type = "structure",
        },
        sampleUtteranceGeneration = {
            type = "structure",
        },
    },
}

M.BuiltInIntentSortAttribute = {
    IntentSignature = "IntentSignature",
}

M.BuiltInIntentSortBy = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BuiltInIntentSummary = {
    type = "structure",
    members = {
        intentSignature = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
}

M.BuiltInSlotTypeSortAttribute = {
    SlotTypeSignature = "SlotTypeSignature",
}

M.BuiltInSlotTypeSortBy = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BuiltInSlotTypeSummary = {
    type = "structure",
    members = {
        slotTypeSignature = {
            type = "string",
        },
        description = {
            type = "string",
        },
    },
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

M.CloudWatchLogGroupLogDestination = {
    type = "structure",
    members = {
        cloudWatchLogGroupArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        logPrefix = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SubSlotTypeComposition = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        slotTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CompositeSlotTypeSetting = {
    type = "structure",
    members = {
        subSlots = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.Condition = {
    type = "structure",
    members = {
        expressionString = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DialogActionType = {
    ElicitIntent = "ElicitIntent",
    StartIntent = "StartIntent",
    ElicitSlot = "ElicitSlot",
    EvaluateConditional = "EvaluateConditional",
    InvokeDialogCodeHook = "InvokeDialogCodeHook",
    ConfirmIntent = "ConfirmIntent",
    FulfillIntent = "FulfillIntent",
    CloseIntent = "CloseIntent",
    EndConversation = "EndConversation",
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
        suppressNextMessage = {
            type = "boolean",
        },
    },
}

M.SlotShape = {
    Scalar = "Scalar",
    List = "List",
}

M.SlotValue = {
    type = "structure",
    members = {
        interpretedValue = {
            type = "string",
        },
    },
}

M.CustomPayload = {
    type = "structure",
    members = {
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

M.PlainTextMessage = {
    type = "structure",
    members = {
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SSMLMessage = {
    type = "structure",
    members = {
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Message = {
    type = "structure",
    members = {
        plainTextMessage = {
            type = "structure",
        },
        customPayload = {
            type = "structure",
        },
        ssmlMessage = {
            type = "structure",
        },
        imageResponseCard = {
            type = "structure",
        },
    },
}

M.MessageGroup = {
    type = "structure",
    members = {
        message = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        variations = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ResponseSpecification = {
    type = "structure",
    members = {
        messageGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        allowInterrupt = {
            type = "boolean",
        },
    },
}

M.ConversationEndState = {
    Success = "Success",
    Failure = "Failure",
    Dropped = "Dropped",
}

M.TestResultMatchStatus = {
    Matched = "Matched",
    Mismatched = "Mismatched",
    ExecutionError = "ExecutionError",
}

M.ConversationLevelIntentClassificationResultItem = {
    type = "structure",
    members = {
        intentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        matchResult = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConversationLevelResultDetail = {
    type = "structure",
    members = {
        endToEndResult = {
            type = "string",
            traits = {
                required = true,
            },
        },
        speechTranscriptionResult = {
            type = "string",
        },
    },
}

M.ConversationLevelSlotResolutionResultItem = {
    type = "structure",
    members = {
        intentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        slotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        matchResult = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConversationLevelTestResultItem = {
    type = "structure",
    members = {
        conversationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        endToEndResult = {
            type = "string",
            traits = {
                required = true,
            },
        },
        speechTranscriptionResult = {
            type = "string",
        },
        intentClassificationResults = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        slotResolutionResults = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ConversationLevelTestResults = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ConversationLevelTestResultsFilterBy = {
    type = "structure",
    members = {
        endToEndResult = {
            type = "string",
        },
    },
}

M.ConversationLogsInputModeFilter = {
    Speech = "Speech",
    Text = "Text",
}

M.ConversationLogsDataSourceFilterBy = {
    type = "structure",
    members = {
        startTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        inputMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConversationLogsDataSource = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        botAliasId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        localeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TextLogDestination = {
    type = "structure",
    members = {
        cloudWatch = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TextLogSetting = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        destination = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        selectiveLoggingEnabled = {
            type = "boolean",
        },
    },
}

M.ConversationLogSettings = {
    type = "structure",
    members = {
        textLogSettings = {
            type = "list",
            member_type = "structure",
        },
        audioLogSettings = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateBotInput = {
    type = "structure",
    members = {
        botName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataPrivacy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        idleSessionTTLInSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        botTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        testBotAliasTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        botType = {
            type = "string",
        },
        botMembers = {
            type = "list",
            member_type = "structure",
        },
        errorLogSettings = {
            type = "structure",
        },
    },
}

M.CreateBotOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        dataPrivacy = {
            type = "structure",
        },
        idleSessionTTLInSeconds = {
            type = "number",
        },
        botStatus = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        botTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        testBotAliasTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        botType = {
            type = "string",
        },
        botMembers = {
            type = "list",
            member_type = "structure",
        },
        errorLogSettings = {
            type = "structure",
        },
    },
}

M.SentimentAnalysisSettings = {
    type = "structure",
    members = {
        detectSentiment = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateBotAliasInput = {
    type = "structure",
    members = {
        botAliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        botAliasLocaleSettings = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        conversationLogSettings = {
            type = "structure",
        },
        sentimentAnalysisSettings = {
            type = "structure",
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.CreateBotAliasOutput = {
    type = "structure",
    members = {
        botAliasId = {
            type = "string",
        },
        botAliasName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        botAliasLocaleSettings = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        conversationLogSettings = {
            type = "structure",
        },
        sentimentAnalysisSettings = {
            type = "structure",
        },
        botAliasStatus = {
            type = "string",
        },
        botId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.IntentDisambiguationSettings = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        maxDisambiguationIntents = {
            type = "number",
        },
        customDisambiguationMessage = {
            type = "string",
        },
    },
}

M.NluImprovementSpecification = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        assistedNluMode = {
            type = "string",
        },
        intentDisambiguationSettings = {
            type = "structure",
        },
    },
}

M.SlotResolutionImprovementSpecification = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        bedrockModelSpecification = {
            type = "structure",
        },
    },
}

M.RuntimeSettings = {
    type = "structure",
    members = {
        slotResolutionImprovement = {
            type = "structure",
        },
        nluImprovement = {
            type = "structure",
        },
    },
}

M.GenerativeAISettings = {
    type = "structure",
    members = {
        runtimeSettings = {
            type = "structure",
        },
        buildtimeSettings = {
            type = "structure",
        },
    },
}

M.CreateBotLocaleInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        localeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        nluIntentConfidenceThreshold = {
            type = "number",
            traits = {
                required = true,
            },
        },
        voiceSettings = {
            type = "structure",
        },
        unifiedSpeechSettings = {
            type = "structure",
        },
        speechRecognitionSettings = {
            type = "structure",
        },
        generativeAISettings = {
            type = "structure",
        },
        speechDetectionSensitivity = {
            type = "string",
        },
    },
}

M.CreateBotLocaleOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeName = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        nluIntentConfidenceThreshold = {
            type = "number",
        },
        voiceSettings = {
            type = "structure",
        },
        unifiedSpeechSettings = {
            type = "structure",
        },
        speechRecognitionSettings = {
            type = "structure",
        },
        botLocaleStatus = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        generativeAISettings = {
            type = "structure",
        },
        speechDetectionSensitivity = {
            type = "string",
        },
    },
}

M.CreateBotReplicaInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        replicaRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateBotReplicaOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        replicaRegion = {
            type = "string",
        },
        sourceRegion = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        botReplicaStatus = {
            type = "string",
        },
    },
}

M.CreateBotVersionInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        description = {
            type = "string",
        },
        botVersionLocaleSpecification = {
            type = "map",
            key_type = "string",
            value_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateBotVersionOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        description = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        botVersionLocaleSpecification = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        botStatus = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
    },
}

M.ImportExportFileFormat = {
    LexJson = "LexJson",
    TSV = "TSV",
    CSV = "CSV",
}

M.CustomVocabularyExportSpecification = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        botVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        localeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TestSetExportSpecification = {
    type = "structure",
    members = {
        testSetId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportResourceSpecification = {
    type = "structure",
    members = {
        botExportSpecification = {
            type = "structure",
        },
        botLocaleExportSpecification = {
            type = "structure",
        },
        customVocabularyExportSpecification = {
            type = "structure",
        },
        testSetExportSpecification = {
            type = "structure",
        },
    },
}

M.CreateExportInput = {
    type = "structure",
    members = {
        resourceSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        fileFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filePassword = {
            type = "string",
        },
    },
}

M.ExportStatus = {
    InProgress = "InProgress",
    Completed = "Completed",
    Failed = "Failed",
    Deleting = "Deleting",
}

M.CreateExportOutput = {
    type = "structure",
    members = {
        exportId = {
            type = "string",
        },
        resourceSpecification = {
            type = "structure",
        },
        fileFormat = {
            type = "string",
        },
        exportStatus = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
    },
}

M.DialogCodeHookSettings = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.FulfillmentStartResponseSpecification = {
    type = "structure",
    members = {
        delayInSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        messageGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        allowInterrupt = {
            type = "boolean",
        },
    },
}

M.FulfillmentUpdateResponseSpecification = {
    type = "structure",
    members = {
        frequencyInSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        messageGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        allowInterrupt = {
            type = "boolean",
        },
    },
}

M.FulfillmentUpdatesSpecification = {
    type = "structure",
    members = {
        active = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        startResponse = {
            type = "structure",
        },
        updateResponse = {
            type = "structure",
        },
        timeoutInSeconds = {
            type = "number",
        },
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

M.ElicitationCodeHookInvocationSetting = {
    type = "structure",
    members = {
        enableCodeHookInvocation = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        invocationLabel = {
            type = "string",
        },
    },
}

M.MessageSelectionStrategy = {
    Random = "Random",
    Ordered = "Ordered",
}

M.PromptAttempt = {
    Initial = "Initial",
    Retry1 = "Retry1",
    Retry2 = "Retry2",
    Retry3 = "Retry3",
    Retry4 = "Retry4",
    Retry5 = "Retry5",
}

M.TextInputSpecification = {
    type = "structure",
    members = {
        startTimeoutMs = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.PromptAttemptSpecification = {
    type = "structure",
    members = {
        allowInterrupt = {
            type = "boolean",
        },
        allowedInputTypes = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        audioAndDTMFInputSpecification = {
            type = "structure",
        },
        textInputSpecification = {
            type = "structure",
        },
    },
}

M.PromptSpecification = {
    type = "structure",
    members = {
        messageGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        maxRetries = {
            type = "number",
            traits = {
                required = true,
            },
        },
        allowInterrupt = {
            type = "boolean",
        },
        messageSelectionStrategy = {
            type = "string",
        },
        promptAttemptsSpecification = {
            type = "map",
            key_type = "string",
            value_type = "structure",
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
        queryFilterStringEnabled = {
            type = "boolean",
        },
        queryFilterString = {
            type = "string",
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

M.QInConnectAssistantConfiguration = {
    type = "structure",
    members = {
        assistantArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QInConnectIntentConfiguration = {
    type = "structure",
    members = {
        qInConnectAssistantConfiguration = {
            type = "structure",
        },
    },
}

M.QnAKendraConfiguration = {
    type = "structure",
    members = {
        kendraIndex = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryFilterStringEnabled = {
            type = "boolean",
        },
        queryFilterString = {
            type = "string",
        },
        exactResponse = {
            type = "boolean",
        },
    },
}

M.ExactResponseFields = {
    type = "structure",
    members = {
        questionField = {
            type = "string",
            traits = {
                required = true,
            },
        },
        answerField = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.OpensearchConfiguration = {
    type = "structure",
    members = {
        domainEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        indexName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exactResponse = {
            type = "boolean",
        },
        exactResponseFields = {
            type = "structure",
        },
        includeFields = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DataSourceConfiguration = {
    type = "structure",
    members = {
        opensearchConfiguration = {
            type = "structure",
        },
        kendraConfiguration = {
            type = "structure",
        },
        bedrockKnowledgeStoreConfiguration = {
            type = "structure",
        },
    },
}

M.QnAIntentConfiguration = {
    type = "structure",
    members = {
        dataSourceConfiguration = {
            type = "structure",
        },
        bedrockModelConfiguration = {
            type = "structure",
        },
    },
}

M.SampleUtterance = {
    type = "structure",
    members = {
        utterance = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateResourcePolicyInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateResourcePolicyOutput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
        },
        revisionId = {
            type = "string",
        },
    },
}

M.Effect = {
    Allow = "Allow",
    Deny = "Deny",
}

M.Principal = {
    type = "structure",
    members = {
        service = {
            type = "string",
        },
        arn = {
            type = "string",
        },
    },
}

M.CreateResourcePolicyStatementInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        statementId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        effect = {
            type = "string",
            traits = {
                required = true,
            },
        },
        principal = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        action = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        condition = {
            type = "map",
            key_type = "string",
            value_type = "map",
        },
        expectedRevisionId = {
            type = "string",
            traits = {
                http_query = "expectedRevisionId",
            },
        },
    },
}

M.CreateResourcePolicyStatementOutput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
        },
        revisionId = {
            type = "string",
        },
    },
}

M.MultipleValuesSetting = {
    type = "structure",
    members = {
        allowMultipleValues = {
            type = "boolean",
        },
    },
}

M.ObfuscationSettingType = {
    None = "None",
    DefaultObfuscation = "DefaultObfuscation",
}

M.ObfuscationSetting = {
    type = "structure",
    members = {
        obfuscationSettingType = {
            type = "string",
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

M.SlotDefaultValueSpecification = {
    type = "structure",
    members = {
        defaultValueList = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StillWaitingResponseSpecification = {
    type = "structure",
    members = {
        messageGroups = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        frequencyInSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        timeoutInSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        allowInterrupt = {
            type = "boolean",
        },
    },
}

M.WaitAndContinueSpecification = {
    type = "structure",
    members = {
        waitingResponse = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        continueResponse = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        stillWaitingResponse = {
            type = "structure",
        },
        active = {
            type = "boolean",
        },
    },
}

M.SubSlotValueElicitationSetting = {
    type = "structure",
    members = {
        defaultValueSpecification = {
            type = "structure",
        },
        promptSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        sampleUtterances = {
            type = "list",
            member_type = "structure",
        },
        waitAndContinueSpecification = {
            type = "structure",
        },
    },
}

M.Specifications = {
    type = "structure",
    members = {
        slotTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        valueElicitationSetting = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.SubSlotSetting = {
    type = "structure",
    members = {
        expression = {
            type = "string",
        },
        slotSpecifications = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
    },
}

M.SlotConstraint = {
    Required = "Required",
    Optional = "Optional",
}

M.SlotResolutionStrategy = {
    EnhancedFallback = "EnhancedFallback",
    Default = "Default",
}

M.SlotResolutionSetting = {
    type = "structure",
    members = {
        slotResolutionStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GrammarSlotTypeSource = {
    type = "structure",
    members = {
        s3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3ObjectKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.GrammarSlotTypeSetting = {
    type = "structure",
    members = {
        source = {
            type = "structure",
        },
    },
}

M.ExternalSourceSetting = {
    type = "structure",
    members = {
        grammarSlotTypeSetting = {
            type = "structure",
        },
    },
}

M.SampleValue = {
    type = "structure",
    members = {
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SlotTypeValue = {
    type = "structure",
    members = {
        sampleValue = {
            type = "structure",
        },
        synonyms = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.SlotValueRegexFilter = {
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

M.SlotValueResolutionStrategy = {
    OriginalValue = "OriginalValue",
    TopResolution = "TopResolution",
    Concatenation = "Concatenation",
}

M.SlotValueSelectionSetting = {
    type = "structure",
    members = {
        resolutionStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        regexFilter = {
            type = "structure",
        },
        advancedRecognitionSetting = {
            type = "structure",
        },
    },
}

M.CreateSlotTypeInput = {
    type = "structure",
    members = {
        slotTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        slotTypeValues = {
            type = "list",
            member_type = "structure",
        },
        valueSelectionSetting = {
            type = "structure",
        },
        parentSlotTypeSignature = {
            type = "string",
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        externalSourceSetting = {
            type = "structure",
        },
        compositeSlotTypeSetting = {
            type = "structure",
        },
    },
}

M.CreateSlotTypeOutput = {
    type = "structure",
    members = {
        slotTypeId = {
            type = "string",
        },
        slotTypeName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        slotTypeValues = {
            type = "list",
            member_type = "structure",
        },
        valueSelectionSetting = {
            type = "structure",
        },
        parentSlotTypeSignature = {
            type = "string",
        },
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        externalSourceSetting = {
            type = "structure",
        },
        compositeSlotTypeSetting = {
            type = "structure",
        },
    },
}

M.TestSetDiscrepancyReportBotAliasTarget = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        botAliasId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        localeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TestSetDiscrepancyReportResourceTarget = {
    type = "structure",
    members = {
        botAliasTarget = {
            type = "structure",
        },
    },
}

M.CreateTestSetDiscrepancyReportInput = {
    type = "structure",
    members = {
        testSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        target = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTestSetDiscrepancyReportOutput = {
    type = "structure",
    members = {
        testSetDiscrepancyReportId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        testSetId = {
            type = "string",
        },
        target = {
            type = "structure",
        },
    },
}

M.CreateUploadUrlInput = {
    type = "structure",
}

M.CreateUploadUrlOutput = {
    type = "structure",
    members = {
        importId = {
            type = "string",
        },
        uploadUrl = {
            type = "string",
        },
    },
}

M.CustomVocabularyImportSpecification = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        botVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        localeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomVocabularyStatus = {
    Ready = "Ready",
    Deleting = "Deleting",
    Exporting = "Exporting",
    Importing = "Importing",
    Creating = "Creating",
}

M.DateRangeFilter = {
    type = "structure",
    members = {
        startDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteBotInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        skipResourceInUseCheck = {
            type = "boolean",
            traits = {
                http_query = "skipResourceInUseCheck",
            },
        },
    },
}

M.DeleteBotOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botStatus = {
            type = "string",
        },
    },
}

M.DeleteBotAliasInput = {
    type = "structure",
    members = {
        botAliasId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        skipResourceInUseCheck = {
            type = "boolean",
            traits = {
                http_query = "skipResourceInUseCheck",
            },
        },
    },
}

M.DeleteBotAliasOutput = {
    type = "structure",
    members = {
        botAliasId = {
            type = "string",
        },
        botId = {
            type = "string",
        },
        botAliasStatus = {
            type = "string",
        },
    },
}

M.DeleteBotAnalyzerRecommendationInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botAnalyzerRequestId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBotAnalyzerRecommendationOutput = {
    type = "structure",
}

M.DeleteBotLocaleInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
    },
}

M.DeleteBotLocaleOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        botLocaleStatus = {
            type = "string",
        },
    },
}

M.DeleteBotReplicaInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        replicaRegion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteBotReplicaOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        replicaRegion = {
            type = "string",
        },
        botReplicaStatus = {
            type = "string",
        },
    },
}

M.DeleteBotVersionInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        skipResourceInUseCheck = {
            type = "boolean",
            traits = {
                http_query = "skipResourceInUseCheck",
            },
        },
    },
}

M.DeleteBotVersionOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        botStatus = {
            type = "string",
        },
    },
}

M.DeleteCustomVocabularyInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
    },
}

M.DeleteCustomVocabularyOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        customVocabularyStatus = {
            type = "string",
        },
    },
}

M.DeleteExportInput = {
    type = "structure",
    members = {
        exportId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteExportOutput = {
    type = "structure",
    members = {
        exportId = {
            type = "string",
        },
        exportStatus = {
            type = "string",
        },
    },
}

M.DeleteImportInput = {
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
    InProgress = "InProgress",
    Completed = "Completed",
    Failed = "Failed",
    Deleting = "Deleting",
}

M.DeleteImportOutput = {
    type = "structure",
    members = {
        importId = {
            type = "string",
        },
        importStatus = {
            type = "string",
        },
    },
}

M.DeleteIntentInput = {
    type = "structure",
    members = {
        intentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
    },
}

M.DeleteIntentOutput = {
    type = "structure",
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        expectedRevisionId = {
            type = "string",
            traits = {
                http_query = "expectedRevisionId",
            },
        },
    },
}

M.DeleteResourcePolicyOutput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
        },
        revisionId = {
            type = "string",
        },
    },
}

M.DeleteResourcePolicyStatementInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        statementId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        expectedRevisionId = {
            type = "string",
            traits = {
                http_query = "expectedRevisionId",
            },
        },
    },
}

M.DeleteResourcePolicyStatementOutput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
        },
        revisionId = {
            type = "string",
        },
    },
}

M.DeleteSlotInput = {
    type = "structure",
    members = {
        slotId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        intentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteSlotOutput = {
    type = "structure",
}

M.DeleteSlotTypeInput = {
    type = "structure",
    members = {
        slotTypeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        skipResourceInUseCheck = {
            type = "boolean",
            traits = {
                http_query = "skipResourceInUseCheck",
            },
        },
    },
}

M.DeleteSlotTypeOutput = {
    type = "structure",
}

M.DeleteTestSetInput = {
    type = "structure",
    members = {
        testSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTestSetOutput = {
    type = "structure",
}

M.DeleteUtterancesInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        localeId = {
            type = "string",
            traits = {
                http_query = "localeId",
            },
        },
        sessionId = {
            type = "string",
            traits = {
                http_query = "sessionId",
            },
        },
    },
}

M.DeleteUtterancesOutput = {
    type = "structure",
}

M.DescribeBotInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeBotOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        dataPrivacy = {
            type = "structure",
        },
        idleSessionTTLInSeconds = {
            type = "number",
        },
        botStatus = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        botType = {
            type = "string",
        },
        botMembers = {
            type = "list",
            member_type = "structure",
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
        errorLogSettings = {
            type = "structure",
        },
    },
}

M.DescribeBotAliasInput = {
    type = "structure",
    members = {
        botAliasId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ParentBotNetwork = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        botVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeBotAliasOutput = {
    type = "structure",
    members = {
        botAliasId = {
            type = "string",
        },
        botAliasName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        botAliasLocaleSettings = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        conversationLogSettings = {
            type = "structure",
        },
        sentimentAnalysisSettings = {
            type = "structure",
        },
        botAliasHistoryEvents = {
            type = "list",
            member_type = "structure",
        },
        botAliasStatus = {
            type = "string",
        },
        botId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        parentBotNetworks = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeBotAnalyzerRecommendationInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botAnalyzerRequestId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.DescribeBotAnalyzerRecommendationOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        botAnalyzerStatus = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        botAnalyzerRecommendationList = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeBotLocaleInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
    },
}

M.DescribeBotLocaleOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        localeName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        nluIntentConfidenceThreshold = {
            type = "number",
        },
        voiceSettings = {
            type = "structure",
        },
        unifiedSpeechSettings = {
            type = "structure",
        },
        speechRecognitionSettings = {
            type = "structure",
        },
        intentsCount = {
            type = "number",
        },
        slotTypesCount = {
            type = "number",
        },
        botLocaleStatus = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        lastBuildSubmittedDateTime = {
            type = "timestamp",
        },
        botLocaleHistoryEvents = {
            type = "list",
            member_type = "structure",
        },
        recommendedActions = {
            type = "list",
            member_type = "string",
        },
        generativeAISettings = {
            type = "structure",
        },
        speechDetectionSensitivity = {
            type = "string",
        },
    },
}

M.DescribeBotRecommendationInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        botRecommendationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.EncryptionSetting = {
    type = "structure",
    members = {
        kmsKeyArn = {
            type = "string",
        },
        botLocaleExportPassword = {
            type = "string",
        },
        associatedTranscriptsPassword = {
            type = "string",
        },
    },
}

M.PathFormat = {
    type = "structure",
    members = {
        objectPrefixes = {
            type = "list",
            member_type = "string",
        },
    },
}

M.LexTranscriptFilter = {
    type = "structure",
    members = {
        dateRangeFilter = {
            type = "structure",
        },
    },
}

M.TranscriptFilter = {
    type = "structure",
    members = {
        lexTranscriptFilter = {
            type = "structure",
        },
    },
}

M.TranscriptFormat = {
    Lex = "Lex",
}

M.S3BucketTranscriptSource = {
    type = "structure",
    members = {
        s3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pathFormat = {
            type = "structure",
        },
        transcriptFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        transcriptFilter = {
            type = "structure",
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.TranscriptSourceSetting = {
    type = "structure",
    members = {
        s3BucketTranscriptSource = {
            type = "structure",
        },
    },
}

M.DescribeBotRecommendationOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        botRecommendationStatus = {
            type = "string",
        },
        botRecommendationId = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        transcriptSourceSetting = {
            type = "structure",
        },
        encryptionSetting = {
            type = "structure",
        },
        botRecommendationResults = {
            type = "structure",
        },
    },
}

M.DescribeBotReplicaInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        replicaRegion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeBotReplicaOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        replicaRegion = {
            type = "string",
        },
        sourceRegion = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        botReplicaStatus = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeBotResourceGenerationInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        generationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GenerationStatus = {
    Failed = "Failed",
    Complete = "Complete",
    InProgress = "InProgress",
}

M.DescribeBotResourceGenerationOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        generationId = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
        generationStatus = {
            type = "string",
        },
        generationInputPrompt = {
            type = "string",
        },
        generatedBotLocaleUrl = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        modelArn = {
            type = "string",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeBotVersionInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeBotVersionOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botName = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        dataPrivacy = {
            type = "structure",
        },
        idleSessionTTLInSeconds = {
            type = "number",
        },
        botStatus = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        parentBotNetworks = {
            type = "list",
            member_type = "structure",
        },
        botType = {
            type = "string",
        },
        botMembers = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.DescribeCustomVocabularyMetadataInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
    },
}

M.DescribeCustomVocabularyMetadataOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        customVocabularyStatus = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeExportInput = {
    type = "structure",
    members = {
        exportId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeExportOutput = {
    type = "structure",
    members = {
        exportId = {
            type = "string",
        },
        resourceSpecification = {
            type = "structure",
        },
        fileFormat = {
            type = "string",
        },
        exportStatus = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
        downloadUrl = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeImportInput = {
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

M.MergeStrategy = {
    Overwrite = "Overwrite",
    FailOnConflict = "FailOnConflict",
    Append = "Append",
}

M.TestSetImportInputLocation = {
    type = "structure",
    members = {
        s3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TestSetModality = {
    Text = "Text",
    Audio = "Audio",
}

M.TestSetStorageLocation = {
    type = "structure",
    members = {
        s3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        s3Path = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.TestSetImportResourceSpecification = {
    type = "structure",
    members = {
        testSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        storageLocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        importInputLocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        modality = {
            type = "string",
            traits = {
                required = true,
            },
        },
        testSetTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ImportResourceSpecification = {
    type = "structure",
    members = {
        botImportSpecification = {
            type = "structure",
        },
        botLocaleImportSpecification = {
            type = "structure",
        },
        customVocabularyImportSpecification = {
            type = "structure",
        },
        testSetImportResourceSpecification = {
            type = "structure",
        },
    },
}

M.DescribeImportOutput = {
    type = "structure",
    members = {
        importId = {
            type = "string",
        },
        resourceSpecification = {
            type = "structure",
        },
        importedResourceId = {
            type = "string",
        },
        importedResourceName = {
            type = "string",
        },
        mergeStrategy = {
            type = "string",
        },
        importStatus = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeIntentInput = {
    type = "structure",
    members = {
        intentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
    },
}

M.SlotPriority = {
    type = "structure",
    members = {
        priority = {
            type = "number",
            traits = {
                required = true,
            },
        },
        slotId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeResourcePolicyInput = {
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

M.DescribeResourcePolicyOutput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
        },
        policy = {
            type = "string",
        },
        revisionId = {
            type = "string",
        },
    },
}

M.DescribeSlotInput = {
    type = "structure",
    members = {
        slotId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        intentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DescribeSlotTypeInput = {
    type = "structure",
    members = {
        slotTypeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
    },
}

M.DescribeSlotTypeOutput = {
    type = "structure",
    members = {
        slotTypeId = {
            type = "string",
        },
        slotTypeName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        slotTypeValues = {
            type = "list",
            member_type = "structure",
        },
        valueSelectionSetting = {
            type = "structure",
        },
        parentSlotTypeSignature = {
            type = "string",
        },
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        externalSourceSetting = {
            type = "structure",
        },
        compositeSlotTypeSetting = {
            type = "structure",
        },
    },
}

M.DescribeTestExecutionInput = {
    type = "structure",
    members = {
        testExecutionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TestExecutionApiMode = {
    Streaming = "Streaming",
    NonStreaming = "NonStreaming",
}

M.TestExecutionTarget = {
    type = "structure",
    members = {
        botAliasTarget = {
            type = "structure",
        },
    },
}

M.TestExecutionModality = {
    Text = "Text",
    Audio = "Audio",
}

M.TestExecutionStatus = {
    Pending = "Pending",
    Waiting = "Waiting",
    InProgress = "InProgress",
    Completed = "Completed",
    Failed = "Failed",
    Stopping = "Stopping",
    Stopped = "Stopped",
}

M.DescribeTestExecutionOutput = {
    type = "structure",
    members = {
        testExecutionId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        testExecutionStatus = {
            type = "string",
        },
        testSetId = {
            type = "string",
        },
        testSetName = {
            type = "string",
        },
        target = {
            type = "structure",
        },
        apiMode = {
            type = "string",
        },
        testExecutionModality = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeTestSetInput = {
    type = "structure",
    members = {
        testSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TestSetStatus = {
    Importing = "Importing",
    PendingAnnotation = "PendingAnnotation",
    Deleting = "Deleting",
    ValidationError = "ValidationError",
    Ready = "Ready",
}

M.DescribeTestSetOutput = {
    type = "structure",
    members = {
        testSetId = {
            type = "string",
        },
        testSetName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        modality = {
            type = "string",
        },
        status = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        numTurns = {
            type = "number",
        },
        storageLocation = {
            type = "structure",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.DescribeTestSetDiscrepancyReportInput = {
    type = "structure",
    members = {
        testSetDiscrepancyReportId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TestSetDiscrepancyReportStatus = {
    InProgress = "InProgress",
    Completed = "Completed",
    Failed = "Failed",
}

M.TestSetIntentDiscrepancyItem = {
    type = "structure",
    members = {
        intentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TestSetSlotDiscrepancyItem = {
    type = "structure",
    members = {
        intentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        slotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TestSetDiscrepancyErrors = {
    type = "structure",
    members = {
        intentDiscrepancies = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        slotDiscrepancies = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeTestSetDiscrepancyReportOutput = {
    type = "structure",
    members = {
        testSetDiscrepancyReportId = {
            type = "string",
        },
        testSetId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        target = {
            type = "structure",
        },
        testSetDiscrepancyReportStatus = {
            type = "string",
        },
        lastUpdatedDataTime = {
            type = "timestamp",
        },
        testSetDiscrepancyTopErrors = {
            type = "structure",
        },
        testSetDiscrepancyRawOutputUrl = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
    },
}

M.DescribeTestSetGenerationInput = {
    type = "structure",
    members = {
        testSetGenerationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.TestSetGenerationDataSource = {
    type = "structure",
    members = {
        conversationLogsDataSource = {
            type = "structure",
        },
    },
}

M.TestSetGenerationStatus = {
    Generating = "Generating",
    Ready = "Ready",
    Failed = "Failed",
    Pending = "Pending",
}

M.DescribeTestSetGenerationOutput = {
    type = "structure",
    members = {
        testSetGenerationId = {
            type = "string",
        },
        testSetGenerationStatus = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
        testSetId = {
            type = "string",
        },
        testSetName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        storageLocation = {
            type = "structure",
        },
        generationDataSource = {
            type = "structure",
        },
        roleArn = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.ExportFilterName = {
    ExportResourceType = "ExportResourceType",
}

M.ExportFilterOperator = {
    Contains = "CO",
    Equals = "EQ",
}

M.ExportFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportSortAttribute = {
    LastUpdatedDateTime = "LastUpdatedDateTime",
}

M.ExportSortBy = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ExportSummary = {
    type = "structure",
    members = {
        exportId = {
            type = "string",
        },
        resourceSpecification = {
            type = "structure",
        },
        fileFormat = {
            type = "string",
        },
        exportStatus = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.GenerateBotElementInput = {
    type = "structure",
    members = {
        intentId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
    },
}

M.GenerateBotElementOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        intentId = {
            type = "string",
        },
        sampleUtterances = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.GenerationSortByAttribute = {
    creationStartTime = "creationStartTime",
    lastUpdatedTime = "lastUpdatedTime",
}

M.GenerationSortBy = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GenerationSummary = {
    type = "structure",
    members = {
        generationId = {
            type = "string",
        },
        generationStatus = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.GetTestExecutionArtifactsUrlInput = {
    type = "structure",
    members = {
        testExecutionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTestExecutionArtifactsUrlOutput = {
    type = "structure",
    members = {
        testExecutionId = {
            type = "string",
        },
        downloadArtifactsUrl = {
            type = "string",
        },
    },
}

M.ImportFilterName = {
    ImportResourceType = "ImportResourceType",
}

M.ImportFilterOperator = {
    Contains = "CO",
    Equals = "EQ",
}

M.ImportFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportResourceType = {
    Bot = "Bot",
    BotLocale = "BotLocale",
    CustomVocabulary = "CustomVocabulary",
    TestSet = "TestSet",
}

M.ImportSortAttribute = {
    LastUpdatedDateTime = "LastUpdatedDateTime",
}

M.ImportSortBy = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ImportSummary = {
    type = "structure",
    members = {
        importId = {
            type = "string",
        },
        importedResourceId = {
            type = "string",
        },
        importedResourceName = {
            type = "string",
        },
        importStatus = {
            type = "string",
        },
        mergeStrategy = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        importedResourceType = {
            type = "string",
        },
    },
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

M.IntentClassificationTestResultItemCounts = {
    type = "structure",
    members = {
        totalResultCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        speechTranscriptionResultCounts = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        intentMatchResultCounts = {
            type = "map",
            key_type = "string",
            value_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.IntentClassificationTestResultItem = {
    type = "structure",
    members = {
        intentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        multiTurnConversation = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        resultCounts = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.IntentClassificationTestResults = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.IntentFilterName = {
    IntentName = "IntentName",
}

M.IntentFilterOperator = {
    Contains = "CO",
    Equals = "EQ",
}

M.IntentFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SlotResolutionTestResultItemCounts = {
    type = "structure",
    members = {
        totalResultCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        speechTranscriptionResultCounts = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        slotMatchResultCounts = {
            type = "map",
            key_type = "string",
            value_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SlotResolutionTestResultItem = {
    type = "structure",
    members = {
        slotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resultCounts = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.IntentLevelSlotResolutionTestResultItem = {
    type = "structure",
    members = {
        intentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        multiTurnConversation = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        slotResolutionResults = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.IntentLevelSlotResolutionTestResults = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.IntentSortAttribute = {
    IntentName = "IntentName",
    LastUpdatedDateTime = "LastUpdatedDateTime",
}

M.IntentSortBy = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.IntentState = {
    Failed = "Failed",
    Fulfilled = "Fulfilled",
    InProgress = "InProgress",
    ReadyForFulfillment = "ReadyForFulfillment",
    Waiting = "Waiting",
    FulfillmentInProgress = "FulfillmentInProgress",
}

M.IntentSummary = {
    type = "structure",
    members = {
        intentId = {
            type = "string",
        },
        intentName = {
            type = "string",
        },
        intentDisplayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        parentIntentSignature = {
            type = "string",
        },
        inputContexts = {
            type = "list",
            member_type = "structure",
        },
        outputContexts = {
            type = "list",
            member_type = "structure",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.InvokedIntentSample = {
    type = "structure",
    members = {
        intentName = {
            type = "string",
        },
    },
}

M.TimeDimension = {
    Hours = "Hours",
    Days = "Days",
    Weeks = "Weeks",
}

M.RelativeAggregationDuration = {
    type = "structure",
    members = {
        timeDimension = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timeValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.UtteranceAggregationDuration = {
    type = "structure",
    members = {
        relativeAggregationDuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAggregatedUtterancesInput = {
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
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        aggregationDuration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        sortBy = {
            type = "structure",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAggregatedUtterancesOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botAliasId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        aggregationDuration = {
            type = "structure",
        },
        aggregationWindowStartTime = {
            type = "timestamp",
        },
        aggregationWindowEndTime = {
            type = "timestamp",
        },
        aggregationLastRefreshedDateTime = {
            type = "timestamp",
        },
        aggregatedUtterancesSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotAliasesInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotAliasesOutput = {
    type = "structure",
    members = {
        botAliasSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
        botId = {
            type = "string",
        },
    },
}

M.ListBotAliasReplicasInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        replicaRegion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotAliasReplicasOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        sourceRegion = {
            type = "string",
        },
        replicaRegion = {
            type = "string",
        },
        botAliasReplicaSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotAnalyzerHistoryInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        localeId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListBotAnalyzerHistoryOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        botAnalyzerHistoryList = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotLocalesInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sortBy = {
            type = "structure",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotLocalesOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        botLocaleSummaries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListBotRecommendationsInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotRecommendationsOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        botRecommendationSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotReplicasInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListBotReplicasOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        sourceRegion = {
            type = "string",
        },
        botReplicaSummaries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListBotResourceGenerationsInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        sortBy = {
            type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotResourceGenerationsOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        generationSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotsInput = {
    type = "structure",
    members = {
        sortBy = {
            type = "structure",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotsOutput = {
    type = "structure",
    members = {
        botSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotVersionReplicasInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        replicaRegion = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        sortBy = {
            type = "structure",
        },
    },
}

M.ListBotVersionReplicasOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        sourceRegion = {
            type = "string",
        },
        replicaRegion = {
            type = "string",
        },
        botVersionReplicaSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotVersionsInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sortBy = {
            type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotVersionsOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersionSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBuiltInIntentsInput = {
    type = "structure",
    members = {
        localeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sortBy = {
            type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBuiltInIntentsOutput = {
    type = "structure",
    members = {
        builtInIntentSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
    },
}

M.ListBuiltInSlotTypesInput = {
    type = "structure",
    members = {
        localeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sortBy = {
            type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBuiltInSlotTypesOutput = {
    type = "structure",
    members = {
        builtInSlotTypeSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
    },
}

M.ListCustomVocabularyItemsInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCustomVocabularyItemsOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        customVocabularyItems = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListExportsInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        sortBy = {
            type = "structure",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
    },
}

M.ListExportsOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        exportSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
    },
}

M.ListImportsInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        sortBy = {
            type = "structure",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
    },
}

M.ListImportsOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        importSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
    },
}

M.ListIntentMetricsInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        metrics = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        binBy = {
            type = "list",
            member_type = "structure",
        },
        groupBy = {
            type = "list",
            member_type = "structure",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIntentMetricsOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        results = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIntentPathsInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        intentPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListIntentPathsOutput = {
    type = "structure",
    members = {
        nodeSummaries = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListIntentsInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        sortBy = {
            type = "structure",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIntentsOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        intentSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIntentStageMetricsInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        metrics = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        binBy = {
            type = "list",
            member_type = "structure",
        },
        groupBy = {
            type = "list",
            member_type = "structure",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIntentStageMetricsOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        results = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRecommendedIntentsInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        botRecommendationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.RecommendedIntentSummary = {
    type = "structure",
    members = {
        intentId = {
            type = "string",
        },
        intentName = {
            type = "string",
        },
        sampleUtterancesCount = {
            type = "number",
        },
    },
}

M.ListRecommendedIntentsOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        botRecommendationId = {
            type = "string",
        },
        summaryList = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SessionDataSortBy = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSessionAnalyticsDataInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        sortBy = {
            type = "structure",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SessionSpecification = {
    type = "structure",
    members = {
        botAliasId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        channel = {
            type = "string",
        },
        sessionId = {
            type = "string",
        },
        conversationStartTime = {
            type = "timestamp",
        },
        conversationEndTime = {
            type = "timestamp",
        },
        conversationDurationSeconds = {
            type = "number",
        },
        conversationEndState = {
            type = "string",
        },
        mode = {
            type = "string",
        },
        numberOfTurns = {
            type = "number",
        },
        invokedIntentSamples = {
            type = "list",
            member_type = "structure",
        },
        originatingRequestId = {
            type = "string",
        },
    },
}

M.ListSessionAnalyticsDataOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        sessions = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListSessionMetricsInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        metrics = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        binBy = {
            type = "list",
            member_type = "structure",
        },
        groupBy = {
            type = "list",
            member_type = "structure",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSessionMetricsOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        results = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SlotFilterName = {
    SlotName = "SlotName",
}

M.SlotFilterOperator = {
    Contains = "CO",
    Equals = "EQ",
}

M.SlotFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SlotSortAttribute = {
    SlotName = "SlotName",
    LastUpdatedDateTime = "LastUpdatedDateTime",
}

M.SlotSortBy = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSlotsInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        intentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sortBy = {
            type = "structure",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SlotSummary = {
    type = "structure",
    members = {
        slotId = {
            type = "string",
        },
        slotName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        slotConstraint = {
            type = "string",
        },
        slotTypeId = {
            type = "string",
        },
        valueElicitationPromptSpecification = {
            type = "structure",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.ListSlotsOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        intentId = {
            type = "string",
        },
        slotSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SlotTypeFilterName = {
    SlotTypeName = "SlotTypeName",
    ExternalSourceType = "ExternalSourceType",
}

M.SlotTypeFilterOperator = {
    Contains = "CO",
    Equals = "EQ",
}

M.SlotTypeFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
        operator = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SlotTypeSortAttribute = {
    SlotTypeName = "SlotTypeName",
    LastUpdatedDateTime = "LastUpdatedDateTime",
}

M.SlotTypeSortBy = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListSlotTypesInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        sortBy = {
            type = "structure",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SlotTypeCategory = {
    Custom = "Custom",
    Extended = "Extended",
    ExternalGrammar = "ExternalGrammar",
    Composite = "Composite",
}

M.SlotTypeSummary = {
    type = "structure",
    members = {
        slotTypeId = {
            type = "string",
        },
        slotTypeName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        parentSlotTypeSignature = {
            type = "string",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        slotTypeCategory = {
            type = "string",
        },
    },
}

M.ListSlotTypesOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        slotTypeSummaries = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        resourceARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.TestResultTypeFilter = {
    OverallTestResults = "OverallTestResults",
    ConversationLevelTestResults = "ConversationLevelTestResults",
    IntentClassificationTestResults = "IntentClassificationTestResults",
    SlotResolutionTestResults = "SlotResolutionTestResults",
    UtteranceLevelResults = "UtteranceLevelResults",
}

M.TestExecutionResultFilterBy = {
    type = "structure",
    members = {
        resultTypeFilter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        conversationLevelTestResultsFilterBy = {
            type = "structure",
        },
    },
}

M.ListTestExecutionResultItemsInput = {
    type = "structure",
    members = {
        testExecutionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resultFilterBy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.OverallTestResultItem = {
    type = "structure",
    members = {
        multiTurnConversation = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        totalResultCount = {
            type = "number",
            traits = {
                required = true,
            },
        },
        speechTranscriptionResultCounts = {
            type = "map",
            key_type = "string",
            value_type = "number",
        },
        endToEndResultCounts = {
            type = "map",
            key_type = "string",
            value_type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.OverallTestResults = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UtteranceAudioInputSpecification = {
    type = "structure",
    members = {
        audioFileS3Location = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UtteranceInputSpecification = {
    type = "structure",
    members = {
        textInput = {
            type = "string",
        },
        audioInput = {
            type = "structure",
        },
    },
}

M.TestExecutionSortAttribute = {
    TestSetName = "TestSetName",
    CreationDateTime = "CreationDateTime",
}

M.TestExecutionSortBy = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTestExecutionsInput = {
    type = "structure",
    members = {
        sortBy = {
            type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TestExecutionSummary = {
    type = "structure",
    members = {
        testExecutionId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        testExecutionStatus = {
            type = "string",
        },
        testSetId = {
            type = "string",
        },
        testSetName = {
            type = "string",
        },
        target = {
            type = "structure",
        },
        apiMode = {
            type = "string",
        },
        testExecutionModality = {
            type = "string",
        },
    },
}

M.ListTestExecutionsOutput = {
    type = "structure",
    members = {
        testExecutions = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTestSetRecordsInput = {
    type = "structure",
    members = {
        testSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TestSetSortAttribute = {
    TestSetName = "TestSetName",
    LastUpdatedDateTime = "LastUpdatedDateTime",
}

M.TestSetSortBy = {
    type = "structure",
    members = {
        attribute = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTestSetsInput = {
    type = "structure",
    members = {
        sortBy = {
            type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TestSetSummary = {
    type = "structure",
    members = {
        testSetId = {
            type = "string",
        },
        testSetName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        modality = {
            type = "string",
        },
        status = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        numTurns = {
            type = "number",
        },
        storageLocation = {
            type = "structure",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.ListTestSetsOutput = {
    type = "structure",
    members = {
        testSets = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UtteranceDataSortBy = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        order = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListUtteranceAnalyticsDataInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        sortBy = {
            type = "structure",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UtteranceContentType = {
    PlainText = "PlainText",
    CustomPayload = "CustomPayload",
    SSML = "SSML",
    ImageResponseCard = "ImageResponseCard",
}

M.UtteranceBotResponse = {
    type = "structure",
    members = {
        content = {
            type = "string",
        },
        contentType = {
            type = "string",
        },
        imageResponseCard = {
            type = "structure",
        },
    },
}

M.UtteranceSpecification = {
    type = "structure",
    members = {
        botAliasId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        sessionId = {
            type = "string",
        },
        channel = {
            type = "string",
        },
        mode = {
            type = "string",
        },
        conversationStartTime = {
            type = "timestamp",
        },
        conversationEndTime = {
            type = "timestamp",
        },
        utterance = {
            type = "string",
        },
        utteranceTimestamp = {
            type = "timestamp",
        },
        audioVoiceDurationMillis = {
            type = "number",
        },
        utteranceUnderstood = {
            type = "boolean",
        },
        inputType = {
            type = "string",
        },
        outputType = {
            type = "string",
        },
        associatedIntentName = {
            type = "string",
        },
        associatedSlotName = {
            type = "string",
        },
        intentState = {
            type = "string",
        },
        dialogActionType = {
            type = "string",
        },
        botResponseAudioVoiceId = {
            type = "string",
        },
        slotsFilledInSession = {
            type = "string",
        },
        utteranceRequestId = {
            type = "string",
        },
        botResponses = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListUtteranceAnalyticsDataOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        utterances = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListUtteranceMetricsInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        startDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        endDateTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        metrics = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        binBy = {
            type = "list",
            member_type = "structure",
        },
        groupBy = {
            type = "list",
            member_type = "structure",
        },
        attributes = {
            type = "list",
            member_type = "structure",
        },
        filters = {
            type = "list",
            member_type = "structure",
        },
        maxResults = {
            type = "number",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListUtteranceMetricsOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        results = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SearchOrder = {
    Ascending = "Ascending",
    Descending = "Descending",
}

M.SearchAssociatedTranscriptsInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        botRecommendationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        searchOrder = {
            type = "string",
        },
        filters = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "number",
        },
        nextIndex = {
            type = "number",
        },
    },
}

M.SearchAssociatedTranscriptsOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        botRecommendationId = {
            type = "string",
        },
        nextIndex = {
            type = "number",
        },
        associatedTranscripts = {
            type = "list",
            member_type = "structure",
        },
        totalResults = {
            type = "number",
        },
    },
}

M.StartBotAnalyzerInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        analysisScope = {
            type = "string",
            traits = {
                required = true,
            },
        },
        localeId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
    },
}

M.StartBotAnalyzerOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        botAnalyzerStatus = {
            type = "string",
        },
        botAnalyzerRequestId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
    },
}

M.StartBotRecommendationInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        transcriptSourceSetting = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        encryptionSetting = {
            type = "structure",
        },
    },
}

M.StartBotRecommendationOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        botRecommendationStatus = {
            type = "string",
        },
        botRecommendationId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        transcriptSourceSetting = {
            type = "structure",
        },
        encryptionSetting = {
            type = "structure",
        },
    },
}

M.StartBotResourceGenerationInput = {
    type = "structure",
    members = {
        generationInputPrompt = {
            type = "string",
            traits = {
                required = true,
            },
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
    },
}

M.StartBotResourceGenerationOutput = {
    type = "structure",
    members = {
        generationInputPrompt = {
            type = "string",
        },
        generationId = {
            type = "string",
        },
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        generationStatus = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
    },
}

M.StartImportInput = {
    type = "structure",
    members = {
        importId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceSpecification = {
            type = "structure",
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
        filePassword = {
            type = "string",
        },
    },
}

M.StartImportOutput = {
    type = "structure",
    members = {
        importId = {
            type = "string",
        },
        resourceSpecification = {
            type = "structure",
        },
        mergeStrategy = {
            type = "string",
        },
        importStatus = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
    },
}

M.StartTestExecutionInput = {
    type = "structure",
    members = {
        testSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        target = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        apiMode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        testExecutionModality = {
            type = "string",
        },
    },
}

M.StartTestExecutionOutput = {
    type = "structure",
    members = {
        testExecutionId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        testSetId = {
            type = "string",
        },
        target = {
            type = "structure",
        },
        apiMode = {
            type = "string",
        },
        testExecutionModality = {
            type = "string",
        },
    },
}

M.StartTestSetGenerationInput = {
    type = "structure",
    members = {
        testSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        storageLocation = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        generationDataSource = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        testSetTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StartTestSetGenerationOutput = {
    type = "structure",
    members = {
        testSetGenerationId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        testSetGenerationStatus = {
            type = "string",
        },
        testSetName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        storageLocation = {
            type = "structure",
        },
        generationDataSource = {
            type = "structure",
        },
        roleArn = {
            type = "string",
        },
        testSetTags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.StopBotAnalyzerInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botAnalyzerRequestId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopBotAnalyzerOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        botAnalyzerStatus = {
            type = "string",
        },
        botAnalyzerRequestId = {
            type = "string",
        },
    },
}

M.StopBotRecommendationInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        botRecommendationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.StopBotRecommendationOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        botRecommendationStatus = {
            type = "string",
        },
        botRecommendationId = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        resourceARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        resourceARN = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member_type = "string",
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

M.UpdateBotInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dataPrivacy = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        idleSessionTTLInSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
        botType = {
            type = "string",
        },
        botMembers = {
            type = "list",
            member_type = "structure",
        },
        errorLogSettings = {
            type = "structure",
        },
    },
}

M.UpdateBotOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        dataPrivacy = {
            type = "structure",
        },
        idleSessionTTLInSeconds = {
            type = "number",
        },
        botStatus = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        botType = {
            type = "string",
        },
        botMembers = {
            type = "list",
            member_type = "structure",
        },
        errorLogSettings = {
            type = "structure",
        },
    },
}

M.UpdateBotAliasInput = {
    type = "structure",
    members = {
        botAliasId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botAliasName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        botAliasLocaleSettings = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        conversationLogSettings = {
            type = "structure",
        },
        sentimentAnalysisSettings = {
            type = "structure",
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.UpdateBotAliasOutput = {
    type = "structure",
    members = {
        botAliasId = {
            type = "string",
        },
        botAliasName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        botAliasLocaleSettings = {
            type = "map",
            key_type = "string",
            value_type = "structure",
        },
        conversationLogSettings = {
            type = "structure",
        },
        sentimentAnalysisSettings = {
            type = "structure",
        },
        botAliasStatus = {
            type = "string",
        },
        botId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.UpdateBotLocaleInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        description = {
            type = "string",
        },
        nluIntentConfidenceThreshold = {
            type = "number",
            traits = {
                required = true,
            },
        },
        voiceSettings = {
            type = "structure",
        },
        unifiedSpeechSettings = {
            type = "structure",
        },
        speechRecognitionSettings = {
            type = "structure",
        },
        generativeAISettings = {
            type = "structure",
        },
        speechDetectionSensitivity = {
            type = "string",
        },
    },
}

M.UpdateBotLocaleOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        localeName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        nluIntentConfidenceThreshold = {
            type = "number",
        },
        voiceSettings = {
            type = "structure",
        },
        unifiedSpeechSettings = {
            type = "structure",
        },
        speechRecognitionSettings = {
            type = "structure",
        },
        botLocaleStatus = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member_type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        recommendedActions = {
            type = "list",
            member_type = "string",
        },
        generativeAISettings = {
            type = "structure",
        },
        speechDetectionSensitivity = {
            type = "string",
        },
    },
}

M.UpdateBotRecommendationInput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        botRecommendationId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        encryptionSetting = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateBotRecommendationOutput = {
    type = "structure",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        botRecommendationStatus = {
            type = "string",
        },
        botRecommendationId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        transcriptSourceSetting = {
            type = "structure",
        },
        encryptionSetting = {
            type = "structure",
        },
    },
}

M.UpdateExportInput = {
    type = "structure",
    members = {
        exportId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        filePassword = {
            type = "string",
        },
    },
}

M.UpdateExportOutput = {
    type = "structure",
    members = {
        exportId = {
            type = "string",
        },
        resourceSpecification = {
            type = "structure",
        },
        fileFormat = {
            type = "string",
        },
        exportStatus = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.UpdateResourcePolicyInput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        policy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        expectedRevisionId = {
            type = "string",
            traits = {
                http_query = "expectedRevisionId",
            },
        },
    },
}

M.UpdateResourcePolicyOutput = {
    type = "structure",
    members = {
        resourceArn = {
            type = "string",
        },
        revisionId = {
            type = "string",
        },
    },
}

M.UpdateSlotTypeInput = {
    type = "structure",
    members = {
        slotTypeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        slotTypeName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        slotTypeValues = {
            type = "list",
            member_type = "structure",
        },
        valueSelectionSetting = {
            type = "structure",
        },
        parentSlotTypeSignature = {
            type = "string",
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        externalSourceSetting = {
            type = "structure",
        },
        compositeSlotTypeSetting = {
            type = "structure",
        },
    },
}

M.UpdateSlotTypeOutput = {
    type = "structure",
    members = {
        slotTypeId = {
            type = "string",
        },
        slotTypeName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        slotTypeValues = {
            type = "list",
            member_type = "structure",
        },
        valueSelectionSetting = {
            type = "structure",
        },
        parentSlotTypeSignature = {
            type = "string",
        },
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        externalSourceSetting = {
            type = "structure",
        },
        compositeSlotTypeSetting = {
            type = "structure",
        },
    },
}

M.UpdateTestSetInput = {
    type = "structure",
    members = {
        testSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        testSetName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.UpdateTestSetOutput = {
    type = "structure",
    members = {
        testSetId = {
            type = "string",
        },
        testSetName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        modality = {
            type = "string",
        },
        status = {
            type = "string",
        },
        roleArn = {
            type = "string",
        },
        numTurns = {
            type = "number",
        },
        storageLocation = {
            type = "structure",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
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

M.SlotValueOverride = {
    type = "structure",
    members = {
        shape = {
            type = "string",
        },
        value = {
            type = "structure",
        },
        values = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.IntentOverride = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        slots = {
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

M.UserTurnSlotOutput = {
    type = "structure",
    members = {
        value = {
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

M.DialogState = {
    type = "structure",
    members = {
        dialogAction = {
            type = "structure",
        },
        intent = {
            type = "structure",
        },
        sessionAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.InputSessionStateSpecification = {
    type = "structure",
    members = {
        sessionAttributes = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        activeContexts = {
            type = "list",
            member_type = "structure",
        },
        runtimeHints = {
            type = "structure",
        },
    },
}

M.ConditionalBranch = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        condition = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        nextStep = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        response = {
            type = "structure",
        },
    },
}

M.DefaultConditionalBranch = {
    type = "structure",
    members = {
        nextStep = {
            type = "structure",
        },
        response = {
            type = "structure",
        },
    },
}

M.UserTurnInputSpecification = {
    type = "structure",
    members = {
        utteranceInput = {
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
        sessionState = {
            type = "structure",
        },
    },
}

M.UserTurnIntentOutput = {
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
    },
}

M.UserTurnOutputSpecification = {
    type = "structure",
    members = {
        intent = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        activeContexts = {
            type = "list",
            member_type = "structure",
        },
        transcript = {
            type = "string",
        },
    },
}

M.ConditionalSpecification = {
    type = "structure",
    members = {
        active = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        conditionalBranches = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        defaultBranch = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UserTurnSpecification = {
    type = "structure",
    members = {
        input = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        expected = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TurnSpecification = {
    type = "structure",
    members = {
        agentTurn = {
            type = "structure",
        },
        userTurn = {
            type = "structure",
        },
    },
}

M.IntentClosingSetting = {
    type = "structure",
    members = {
        closingResponse = {
            type = "structure",
        },
        active = {
            type = "boolean",
        },
        nextStep = {
            type = "structure",
        },
        conditional = {
            type = "structure",
        },
    },
}

M.TestSetTurnRecord = {
    type = "structure",
    members = {
        recordNumber = {
            type = "number",
            traits = {
                required = true,
            },
        },
        conversationId = {
            type = "string",
        },
        turnNumber = {
            type = "number",
        },
        turnSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UserTurnResult = {
    type = "structure",
    members = {
        input = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        expectedOutput = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        actualOutput = {
            type = "structure",
        },
        errorDetails = {
            type = "structure",
        },
        endToEndResult = {
            type = "string",
        },
        intentMatchResult = {
            type = "string",
        },
        slotMatchResult = {
            type = "string",
        },
        speechTranscriptionResult = {
            type = "string",
        },
        conversationLevelResult = {
            type = "structure",
        },
    },
}

M.ListTestSetRecordsOutput = {
    type = "structure",
    members = {
        testSetRecords = {
            type = "list",
            member_type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TestSetTurnResult = {
    type = "structure",
    members = {
        agent = {
            type = "structure",
        },
        user = {
            type = "structure",
        },
    },
}

M.UtteranceLevelTestResultItem = {
    type = "structure",
    members = {
        recordNumber = {
            type = "number",
            traits = {
                required = true,
            },
        },
        conversationId = {
            type = "string",
        },
        turnResult = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UtteranceLevelTestResults = {
    type = "structure",
    members = {
        items = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TestExecutionResultItems = {
    type = "structure",
    members = {
        overallTestResults = {
            type = "structure",
        },
        conversationLevelTestResults = {
            type = "structure",
        },
        intentClassificationTestResults = {
            type = "structure",
        },
        intentLevelSlotResolutionTestResults = {
            type = "structure",
        },
        utteranceLevelTestResults = {
            type = "structure",
        },
    },
}

M.ListTestExecutionResultItemsOutput = {
    type = "structure",
    members = {
        testExecutionResults = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PostDialogCodeHookInvocationSpecification = {
    type = "structure",
    members = {
        successResponse = {
            type = "structure",
        },
        successNextStep = {
            type = "structure",
        },
        successConditional = {
            type = "structure",
        },
        failureResponse = {
            type = "structure",
        },
        failureNextStep = {
            type = "structure",
        },
        failureConditional = {
            type = "structure",
        },
        timeoutResponse = {
            type = "structure",
        },
        timeoutNextStep = {
            type = "structure",
        },
        timeoutConditional = {
            type = "structure",
        },
    },
}

M.PostFulfillmentStatusSpecification = {
    type = "structure",
    members = {
        successResponse = {
            type = "structure",
        },
        failureResponse = {
            type = "structure",
        },
        timeoutResponse = {
            type = "structure",
        },
        successNextStep = {
            type = "structure",
        },
        successConditional = {
            type = "structure",
        },
        failureNextStep = {
            type = "structure",
        },
        failureConditional = {
            type = "structure",
        },
        timeoutNextStep = {
            type = "structure",
        },
        timeoutConditional = {
            type = "structure",
        },
    },
}

M.DialogCodeHookInvocationSetting = {
    type = "structure",
    members = {
        enableCodeHookInvocation = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        active = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        invocationLabel = {
            type = "string",
        },
        postCodeHookSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.FulfillmentCodeHookSettings = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        postFulfillmentStatusSpecification = {
            type = "structure",
        },
        fulfillmentUpdatesSpecification = {
            type = "structure",
        },
        active = {
            type = "boolean",
        },
    },
}

M.InitialResponseSetting = {
    type = "structure",
    members = {
        initialResponse = {
            type = "structure",
        },
        nextStep = {
            type = "structure",
        },
        conditional = {
            type = "structure",
        },
        codeHook = {
            type = "structure",
        },
    },
}

M.SlotCaptureSetting = {
    type = "structure",
    members = {
        captureResponse = {
            type = "structure",
        },
        captureNextStep = {
            type = "structure",
        },
        captureConditional = {
            type = "structure",
        },
        failureResponse = {
            type = "structure",
        },
        failureNextStep = {
            type = "structure",
        },
        failureConditional = {
            type = "structure",
        },
        codeHook = {
            type = "structure",
        },
        elicitationCodeHook = {
            type = "structure",
        },
    },
}

M.SlotValueElicitationSetting = {
    type = "structure",
    members = {
        defaultValueSpecification = {
            type = "structure",
        },
        slotConstraint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        promptSpecification = {
            type = "structure",
        },
        sampleUtterances = {
            type = "list",
            member_type = "structure",
        },
        waitAndContinueSpecification = {
            type = "structure",
        },
        slotCaptureSetting = {
            type = "structure",
        },
        slotResolutionSetting = {
            type = "structure",
        },
    },
}

M.IntentConfirmationSetting = {
    type = "structure",
    members = {
        promptSpecification = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        declinationResponse = {
            type = "structure",
        },
        active = {
            type = "boolean",
        },
        confirmationResponse = {
            type = "structure",
        },
        confirmationNextStep = {
            type = "structure",
        },
        confirmationConditional = {
            type = "structure",
        },
        declinationNextStep = {
            type = "structure",
        },
        declinationConditional = {
            type = "structure",
        },
        failureResponse = {
            type = "structure",
        },
        failureNextStep = {
            type = "structure",
        },
        failureConditional = {
            type = "structure",
        },
        codeHook = {
            type = "structure",
        },
        elicitationCodeHook = {
            type = "structure",
        },
    },
}

M.CreateSlotInput = {
    type = "structure",
    members = {
        slotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        slotTypeId = {
            type = "string",
        },
        valueElicitationSetting = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        obfuscationSetting = {
            type = "structure",
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        intentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        multipleValuesSetting = {
            type = "structure",
        },
        subSlotSetting = {
            type = "structure",
        },
    },
}

M.CreateSlotOutput = {
    type = "structure",
    members = {
        slotId = {
            type = "string",
        },
        slotName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        slotTypeId = {
            type = "string",
        },
        valueElicitationSetting = {
            type = "structure",
        },
        obfuscationSetting = {
            type = "structure",
        },
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        intentId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        multipleValuesSetting = {
            type = "structure",
        },
        subSlotSetting = {
            type = "structure",
        },
    },
}

M.DescribeSlotOutput = {
    type = "structure",
    members = {
        slotId = {
            type = "string",
        },
        slotName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        slotTypeId = {
            type = "string",
        },
        valueElicitationSetting = {
            type = "structure",
        },
        obfuscationSetting = {
            type = "structure",
        },
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        intentId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        multipleValuesSetting = {
            type = "structure",
        },
        subSlotSetting = {
            type = "structure",
        },
    },
}

M.UpdateSlotInput = {
    type = "structure",
    members = {
        slotId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        slotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        slotTypeId = {
            type = "string",
        },
        valueElicitationSetting = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        obfuscationSetting = {
            type = "structure",
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        intentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        multipleValuesSetting = {
            type = "structure",
        },
        subSlotSetting = {
            type = "structure",
        },
    },
}

M.UpdateSlotOutput = {
    type = "structure",
    members = {
        slotId = {
            type = "string",
        },
        slotName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        slotTypeId = {
            type = "string",
        },
        valueElicitationSetting = {
            type = "structure",
        },
        obfuscationSetting = {
            type = "structure",
        },
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        intentId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        multipleValuesSetting = {
            type = "structure",
        },
        subSlotSetting = {
            type = "structure",
        },
    },
}

M.CreateIntentInput = {
    type = "structure",
    members = {
        intentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        intentDisplayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        parentIntentSignature = {
            type = "string",
        },
        sampleUtterances = {
            type = "list",
            member_type = "structure",
        },
        dialogCodeHook = {
            type = "structure",
        },
        fulfillmentCodeHook = {
            type = "structure",
        },
        intentConfirmationSetting = {
            type = "structure",
        },
        intentClosingSetting = {
            type = "structure",
        },
        inputContexts = {
            type = "list",
            member_type = "structure",
        },
        outputContexts = {
            type = "list",
            member_type = "structure",
        },
        kendraConfiguration = {
            type = "structure",
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        initialResponseSetting = {
            type = "structure",
        },
        qnAIntentConfiguration = {
            type = "structure",
        },
        qInConnectIntentConfiguration = {
            type = "structure",
        },
    },
}

M.CreateIntentOutput = {
    type = "structure",
    members = {
        intentId = {
            type = "string",
        },
        intentName = {
            type = "string",
        },
        intentDisplayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        parentIntentSignature = {
            type = "string",
        },
        sampleUtterances = {
            type = "list",
            member_type = "structure",
        },
        dialogCodeHook = {
            type = "structure",
        },
        fulfillmentCodeHook = {
            type = "structure",
        },
        intentConfirmationSetting = {
            type = "structure",
        },
        intentClosingSetting = {
            type = "structure",
        },
        inputContexts = {
            type = "list",
            member_type = "structure",
        },
        outputContexts = {
            type = "list",
            member_type = "structure",
        },
        kendraConfiguration = {
            type = "structure",
        },
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        initialResponseSetting = {
            type = "structure",
        },
        qnAIntentConfiguration = {
            type = "structure",
        },
        qInConnectIntentConfiguration = {
            type = "structure",
        },
    },
}

M.DescribeIntentOutput = {
    type = "structure",
    members = {
        intentId = {
            type = "string",
        },
        intentName = {
            type = "string",
        },
        intentDisplayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        parentIntentSignature = {
            type = "string",
        },
        sampleUtterances = {
            type = "list",
            member_type = "structure",
        },
        dialogCodeHook = {
            type = "structure",
        },
        fulfillmentCodeHook = {
            type = "structure",
        },
        slotPriorities = {
            type = "list",
            member_type = "structure",
        },
        intentConfirmationSetting = {
            type = "structure",
        },
        intentClosingSetting = {
            type = "structure",
        },
        inputContexts = {
            type = "list",
            member_type = "structure",
        },
        outputContexts = {
            type = "list",
            member_type = "structure",
        },
        kendraConfiguration = {
            type = "structure",
        },
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        initialResponseSetting = {
            type = "structure",
        },
        qnAIntentConfiguration = {
            type = "structure",
        },
        qInConnectIntentConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateIntentInput = {
    type = "structure",
    members = {
        intentId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        intentName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        intentDisplayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        parentIntentSignature = {
            type = "string",
        },
        sampleUtterances = {
            type = "list",
            member_type = "structure",
        },
        dialogCodeHook = {
            type = "structure",
        },
        fulfillmentCodeHook = {
            type = "structure",
        },
        slotPriorities = {
            type = "list",
            member_type = "structure",
        },
        intentConfirmationSetting = {
            type = "structure",
        },
        intentClosingSetting = {
            type = "structure",
        },
        inputContexts = {
            type = "list",
            member_type = "structure",
        },
        outputContexts = {
            type = "list",
            member_type = "structure",
        },
        kendraConfiguration = {
            type = "structure",
        },
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        botVersion = {
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
        initialResponseSetting = {
            type = "structure",
        },
        qnAIntentConfiguration = {
            type = "structure",
        },
        qInConnectIntentConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateIntentOutput = {
    type = "structure",
    members = {
        intentId = {
            type = "string",
        },
        intentName = {
            type = "string",
        },
        intentDisplayName = {
            type = "string",
        },
        description = {
            type = "string",
        },
        parentIntentSignature = {
            type = "string",
        },
        sampleUtterances = {
            type = "list",
            member_type = "structure",
        },
        dialogCodeHook = {
            type = "structure",
        },
        fulfillmentCodeHook = {
            type = "structure",
        },
        slotPriorities = {
            type = "list",
            member_type = "structure",
        },
        intentConfirmationSetting = {
            type = "structure",
        },
        intentClosingSetting = {
            type = "structure",
        },
        inputContexts = {
            type = "list",
            member_type = "structure",
        },
        outputContexts = {
            type = "list",
            member_type = "structure",
        },
        kendraConfiguration = {
            type = "structure",
        },
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        localeId = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        initialResponseSetting = {
            type = "structure",
        },
        qnAIntentConfiguration = {
            type = "structure",
        },
        qInConnectIntentConfiguration = {
            type = "structure",
        },
    },
}

return M
