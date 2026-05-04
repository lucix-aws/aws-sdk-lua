local M = {}

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
    },
}

M.AudioRecognitionStrategy = {
    UseSlotValuesAsCustomVocabulary = "UseSlotValuesAsCustomVocabulary",
}

M.AdvancedRecognitionSetting = {
    type = "structure",
    id = "AdvancedRecognitionSetting",
    members = {
        audioRecognitionStrategy = {
            type = "string",
        },
    },
}

M.ExecutionErrorDetails = {
    type = "structure",
    id = "ExecutionErrorDetails",
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
    id = "AgentTurnResult",
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
        errorDetails = M.ExecutionErrorDetails,
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
    id = "AgentTurnSpecification",
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
    id = "AggregatedUtterancesFilter",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
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
    id = "AggregatedUtterancesSortBy",
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
    id = "AggregatedUtterancesSummary",
    members = {
        utterance = {
            type = "string",
        },
        hitCount = {
            type = "integer",
        },
        missedCount = {
            type = "integer",
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
    id = "AllowedInputTypes",
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
    id = "AnalyticsBinBySpecification",
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
    id = "AnalyticsBinKey",
    members = {
        name = {
            type = "string",
        },
        value = {
            type = "long",
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
    id = "AnalyticsIntentFilter",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AnalyticsIntentGroupByKey = {
    type = "structure",
    id = "AnalyticsIntentGroupByKey",
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
    id = "AnalyticsIntentGroupBySpecification",
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
    id = "AnalyticsIntentMetric",
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
    id = "AnalyticsIntentMetricResult",
    members = {
        name = {
            type = "string",
        },
        statistic = {
            type = "string",
        },
        value = {
            type = "double",
        },
    },
}

M.AnalyticsNodeType = {
    Inner = "Inner",
    Exit = "Exit",
}

M.AnalyticsIntentNodeSummary = {
    type = "structure",
    id = "AnalyticsIntentNodeSummary",
    members = {
        intentName = {
            type = "string",
        },
        intentPath = {
            type = "string",
        },
        intentCount = {
            type = "integer",
        },
        intentLevel = {
            type = "integer",
        },
        nodeType = {
            type = "string",
        },
    },
}

M.AnalyticsIntentResult = {
    type = "structure",
    id = "AnalyticsIntentResult",
    members = {
        binKeys = {
            type = "list",
            member = M.AnalyticsBinKey,
        },
        groupByKeys = {
            type = "list",
            member = M.AnalyticsIntentGroupByKey,
        },
        metricsResults = {
            type = "list",
            member = M.AnalyticsIntentMetricResult,
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
    id = "AnalyticsIntentStageFilter",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AnalyticsIntentStageGroupByKey = {
    type = "structure",
    id = "AnalyticsIntentStageGroupByKey",
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
    id = "AnalyticsIntentStageGroupBySpecification",
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
    id = "AnalyticsIntentStageMetric",
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
    id = "AnalyticsIntentStageMetricResult",
    members = {
        name = {
            type = "string",
        },
        statistic = {
            type = "string",
        },
        value = {
            type = "double",
        },
    },
}

M.AnalyticsIntentStageResult = {
    type = "structure",
    id = "AnalyticsIntentStageResult",
    members = {
        binKeys = {
            type = "list",
            member = M.AnalyticsBinKey,
        },
        groupByKeys = {
            type = "list",
            member = M.AnalyticsIntentStageGroupByKey,
        },
        metricsResults = {
            type = "list",
            member = M.AnalyticsIntentStageMetricResult,
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
    id = "AnalyticsPathFilter",
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
            member = { type = "string" },
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
    id = "AnalyticsSessionFilter",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AnalyticsSessionGroupByKey = {
    type = "structure",
    id = "AnalyticsSessionGroupByKey",
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
    id = "AnalyticsSessionGroupBySpecification",
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
    id = "AnalyticsSessionMetric",
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
    id = "AnalyticsSessionMetricResult",
    members = {
        name = {
            type = "string",
        },
        statistic = {
            type = "string",
        },
        value = {
            type = "double",
        },
    },
}

M.AnalyticsSessionResult = {
    type = "structure",
    id = "AnalyticsSessionResult",
    members = {
        binKeys = {
            type = "list",
            member = M.AnalyticsBinKey,
        },
        groupByKeys = {
            type = "list",
            member = M.AnalyticsSessionGroupByKey,
        },
        metricsResults = {
            type = "list",
            member = M.AnalyticsSessionMetricResult,
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
    id = "AnalyticsUtteranceAttribute",
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
    id = "AnalyticsUtteranceAttributeResult",
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
    id = "AnalyticsUtteranceFilter",
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
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AnalyticsUtteranceGroupByKey = {
    type = "structure",
    id = "AnalyticsUtteranceGroupByKey",
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
    id = "AnalyticsUtteranceGroupBySpecification",
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
    id = "AnalyticsUtteranceMetric",
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
    id = "AnalyticsUtteranceMetricResult",
    members = {
        name = {
            type = "string",
        },
        statistic = {
            type = "string",
        },
        value = {
            type = "double",
        },
    },
}

M.AnalyticsUtteranceResult = {
    type = "structure",
    id = "AnalyticsUtteranceResult",
    members = {
        binKeys = {
            type = "list",
            member = M.AnalyticsBinKey,
        },
        groupByKeys = {
            type = "list",
            member = M.AnalyticsUtteranceGroupByKey,
        },
        metricsResults = {
            type = "list",
            member = M.AnalyticsUtteranceMetricResult,
        },
        attributeResults = {
            type = "list",
            member = M.AnalyticsUtteranceAttributeResult,
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
    id = "AssociatedTranscript",
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
    id = "AssociatedTranscriptFilter",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.AudioSpecification = {
    type = "structure",
    id = "AudioSpecification",
    members = {
        maxLengthMs = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        endTimeoutMs = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.DTMFSpecification = {
    type = "structure",
    id = "DTMFSpecification",
    members = {
        maxLength = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        endTimeoutMs = {
            type = "integer",
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
    id = "AudioAndDTMFInputSpecification",
    members = {
        startTimeoutMs = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        audioSpecification = M.AudioSpecification,
        dtmfSpecification = M.DTMFSpecification,
    },
}

M.S3BucketLogDestination = {
    type = "structure",
    id = "S3BucketLogDestination",
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
    id = "AudioLogDestination",
    members = {
        s3Bucket = setmetatable({ traits = {
            required = true,
        } }, { __index = M.S3BucketLogDestination }),
    },
}

M.AudioLogSetting = {
    type = "structure",
    id = "AudioLogSetting",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AudioLogDestination }),
        selectiveLoggingEnabled = {
            type = "boolean",
        },
    },
}

M.NewCustomVocabularyItem = {
    type = "structure",
    id = "NewCustomVocabularyItem",
    members = {
        phrase = {
            type = "string",
            traits = {
                required = true,
            },
        },
        weight = {
            type = "integer",
        },
        displayAs = {
            type = "string",
        },
    },
}

M.BatchCreateCustomVocabularyItemInput = {
    type = "structure",
    id = "BatchCreateCustomVocabularyItemInput",
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
            member = M.NewCustomVocabularyItem,
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
    id = "FailedCustomVocabularyItem",
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
    id = "CustomVocabularyItem",
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
            type = "integer",
        },
        displayAs = {
            type = "string",
        },
    },
}

M.BatchCreateCustomVocabularyItemOutput = {
    type = "structure",
    id = "BatchCreateCustomVocabularyItemOutput",
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
            member = M.FailedCustomVocabularyItem,
        },
        resources = {
            type = "list",
            member = M.CustomVocabularyItem,
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
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        retryAfterSeconds = {
            type = "integer",
            traits = {
                default = 0,
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
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CustomVocabularyEntryId = {
    type = "structure",
    id = "CustomVocabularyEntryId",
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
    id = "BatchDeleteCustomVocabularyItemInput",
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
            member = M.CustomVocabularyEntryId,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchDeleteCustomVocabularyItemOutput = {
    type = "structure",
    id = "BatchDeleteCustomVocabularyItemOutput",
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
            member = M.FailedCustomVocabularyItem,
        },
        resources = {
            type = "list",
            member = M.CustomVocabularyItem,
        },
    },
}

M.BatchUpdateCustomVocabularyItemInput = {
    type = "structure",
    id = "BatchUpdateCustomVocabularyItemInput",
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
            member = M.CustomVocabularyItem,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchUpdateCustomVocabularyItemOutput = {
    type = "structure",
    id = "BatchUpdateCustomVocabularyItemOutput",
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
            member = M.FailedCustomVocabularyItem,
        },
        resources = {
            type = "list",
            member = M.CustomVocabularyItem,
        },
    },
}

M.BedrockGuardrailConfiguration = {
    type = "structure",
    id = "BedrockGuardrailConfiguration",
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
    id = "BedrockKnowledgeStoreExactResponseFields",
    members = {
        answerField = {
            type = "string",
        },
    },
}

M.BedrockKnowledgeStoreConfiguration = {
    type = "structure",
    id = "BedrockKnowledgeStoreConfiguration",
    members = {
        bedrockKnowledgeBaseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        exactResponse = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        exactResponseFields = M.BedrockKnowledgeStoreExactResponseFields,
    },
}

M.BedrockTraceStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.BedrockModelSpecification = {
    type = "structure",
    id = "BedrockModelSpecification",
    members = {
        modelArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        guardrail = M.BedrockGuardrailConfiguration,
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
    id = "BotAliasHistoryEvent",
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
    id = "LambdaCodeHook",
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
    id = "CodeHookSpecification",
    members = {
        lambdaCodeHook = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LambdaCodeHook }),
    },
}

M.BotAliasLocaleSettings = {
    type = "structure",
    id = "BotAliasLocaleSettings",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        codeHookSpecification = M.CodeHookSpecification,
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
    id = "BotAliasReplicaSummary",
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
            member = { type = "string" },
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
    id = "BotAliasSummary",
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
    id = "BotAliasTestExecutionTarget",
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
    id = "BotAnalyzerHistorySummary",
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
    id = "IssueLocation",
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
    id = "BotAnalyzerRecommendation",
    members = {
        issueLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IssueLocation }),
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
    id = "BotExportSpecification",
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
    id = "BotFilter",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
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
    id = "DataPrivacy",
    members = {
        childDirected = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.ErrorLogSettings = {
    type = "structure",
    id = "ErrorLogSettings",
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
    id = "BotImportSpecification",
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
        dataPrivacy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataPrivacy }),
        errorLogSettings = M.ErrorLogSettings,
        idleSessionTTLInSeconds = {
            type = "integer",
        },
        botTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        testBotAliasTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.BotLocaleExportSpecification = {
    type = "structure",
    id = "BotLocaleExportSpecification",
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
    id = "BotLocaleFilter",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
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
    id = "BotLocaleHistoryEvent",
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
    id = "DeepgramSpeechModelConfig",
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
    id = "SpeechModelConfig",
    members = {
        deepgramConfig = M.DeepgramSpeechModelConfig,
    },
}

M.SpeechModelPreference = {
    Standard = "Standard",
    Neural = "Neural",
    Deepgram = "Deepgram",
}

M.SpeechRecognitionSettings = {
    type = "structure",
    id = "SpeechRecognitionSettings",
    members = {
        speechModelPreference = {
            type = "string",
        },
        speechModelConfig = M.SpeechModelConfig,
    },
}

M.SpeechFoundationModel = {
    type = "structure",
    id = "SpeechFoundationModel",
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
    id = "UnifiedSpeechSettings",
    members = {
        speechFoundationModel = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SpeechFoundationModel }),
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
    id = "VoiceSettings",
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
    id = "BotLocaleImportSpecification",
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
            type = "double",
        },
        voiceSettings = M.VoiceSettings,
        speechRecognitionSettings = M.SpeechRecognitionSettings,
        speechDetectionSensitivity = {
            type = "string",
        },
        unifiedSpeechSettings = M.UnifiedSpeechSettings,
    },
}

M.BotLocaleSortAttribute = {
    BotLocaleName = "BotLocaleName",
}

M.BotLocaleSortBy = {
    type = "structure",
    id = "BotLocaleSortBy",
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
    id = "BotLocaleSummary",
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
    id = "BotMember",
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
    id = "IntentStatistics",
    members = {
        discoveredIntentCount = {
            type = "integer",
        },
    },
}

M.SlotTypeStatistics = {
    type = "structure",
    id = "SlotTypeStatistics",
    members = {
        discoveredSlotTypeCount = {
            type = "integer",
        },
    },
}

M.BotRecommendationResultStatistics = {
    type = "structure",
    id = "BotRecommendationResultStatistics",
    members = {
        intents = M.IntentStatistics,
        slotTypes = M.SlotTypeStatistics,
    },
}

M.BotRecommendationResults = {
    type = "structure",
    id = "BotRecommendationResults",
    members = {
        botLocaleExportUrl = {
            type = "string",
        },
        associatedTranscriptsUrl = {
            type = "string",
        },
        statistics = M.BotRecommendationResultStatistics,
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
    id = "BotRecommendationSummary",
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
    id = "BotReplicaSummary",
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
            member = { type = "string" },
        },
    },
}

M.BotSortAttribute = {
    BotName = "BotName",
}

M.BotSortBy = {
    type = "structure",
    id = "BotSortBy",
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
    id = "BotSummary",
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
    id = "BotVersionLocaleDetails",
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
    id = "BotVersionReplicaSortBy",
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
    id = "BotVersionReplicaSummary",
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
            member = { type = "string" },
        },
    },
}

M.BotVersionSortAttribute = {
    BotVersion = "BotVersion",
}

M.BotVersionSortBy = {
    type = "structure",
    id = "BotVersionSortBy",
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
    id = "BotVersionSummary",
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
    id = "BuildBotLocaleInput",
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
    id = "BuildBotLocaleOutput",
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
    id = "ConflictException",
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

M.DescriptiveBotBuilderSpecification = {
    type = "structure",
    id = "DescriptiveBotBuilderSpecification",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        bedrockModelSpecification = M.BedrockModelSpecification,
    },
}

M.SampleUtteranceGenerationSpecification = {
    type = "structure",
    id = "SampleUtteranceGenerationSpecification",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        bedrockModelSpecification = M.BedrockModelSpecification,
    },
}

M.BuildtimeSettings = {
    type = "structure",
    id = "BuildtimeSettings",
    members = {
        descriptiveBotBuilder = M.DescriptiveBotBuilderSpecification,
        sampleUtteranceGeneration = M.SampleUtteranceGenerationSpecification,
    },
}

M.BuiltInIntentSortAttribute = {
    IntentSignature = "IntentSignature",
}

M.BuiltInIntentSortBy = {
    type = "structure",
    id = "BuiltInIntentSortBy",
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
    id = "BuiltInIntentSummary",
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
    id = "BuiltInSlotTypeSortBy",
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
    id = "BuiltInSlotTypeSummary",
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

M.CloudWatchLogGroupLogDestination = {
    type = "structure",
    id = "CloudWatchLogGroupLogDestination",
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
    id = "SubSlotTypeComposition",
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
    id = "CompositeSlotTypeSetting",
    members = {
        subSlots = {
            type = "list",
            member = M.SubSlotTypeComposition,
        },
    },
}

M.Condition = {
    type = "structure",
    id = "Condition",
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
    id = "SlotValue",
    members = {
        interpretedValue = {
            type = "string",
        },
    },
}

M.CustomPayload = {
    type = "structure",
    id = "CustomPayload",
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

M.PlainTextMessage = {
    type = "structure",
    id = "PlainTextMessage",
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
    id = "SSMLMessage",
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
    id = "Message",
    members = {
        plainTextMessage = M.PlainTextMessage,
        customPayload = M.CustomPayload,
        ssmlMessage = M.SSMLMessage,
        imageResponseCard = M.ImageResponseCard,
    },
}

M.MessageGroup = {
    type = "structure",
    id = "MessageGroup",
    members = {
        message = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Message }),
        variations = {
            type = "list",
            member = M.Message,
        },
    },
}

M.ResponseSpecification = {
    type = "structure",
    id = "ResponseSpecification",
    members = {
        messageGroups = {
            type = "list",
            member = M.MessageGroup,
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
    id = "ConversationLevelIntentClassificationResultItem",
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
    id = "ConversationLevelResultDetail",
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
    id = "ConversationLevelSlotResolutionResultItem",
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
    id = "ConversationLevelTestResultItem",
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
            member = M.ConversationLevelIntentClassificationResultItem,
            traits = {
                required = true,
            },
        },
        slotResolutionResults = {
            type = "list",
            member = M.ConversationLevelSlotResolutionResultItem,
            traits = {
                required = true,
            },
        },
    },
}

M.ConversationLevelTestResults = {
    type = "structure",
    id = "ConversationLevelTestResults",
    members = {
        items = {
            type = "list",
            member = M.ConversationLevelTestResultItem,
            traits = {
                required = true,
            },
        },
    },
}

M.ConversationLevelTestResultsFilterBy = {
    type = "structure",
    id = "ConversationLevelTestResultsFilterBy",
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
    id = "ConversationLogsDataSourceFilterBy",
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
    id = "ConversationLogsDataSource",
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
        filter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ConversationLogsDataSourceFilterBy }),
    },
}

M.TextLogDestination = {
    type = "structure",
    id = "TextLogDestination",
    members = {
        cloudWatch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CloudWatchLogGroupLogDestination }),
    },
}

M.TextLogSetting = {
    type = "structure",
    id = "TextLogSetting",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        destination = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TextLogDestination }),
        selectiveLoggingEnabled = {
            type = "boolean",
        },
    },
}

M.ConversationLogSettings = {
    type = "structure",
    id = "ConversationLogSettings",
    members = {
        textLogSettings = {
            type = "list",
            member = M.TextLogSetting,
        },
        audioLogSettings = {
            type = "list",
            member = M.AudioLogSetting,
        },
    },
}

M.CreateBotInput = {
    type = "structure",
    id = "CreateBotInput",
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
        dataPrivacy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataPrivacy }),
        idleSessionTTLInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        botTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        testBotAliasTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        botType = {
            type = "string",
        },
        botMembers = {
            type = "list",
            member = M.BotMember,
        },
        errorLogSettings = M.ErrorLogSettings,
    },
}

M.CreateBotOutput = {
    type = "structure",
    id = "CreateBotOutput",
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
        dataPrivacy = M.DataPrivacy,
        idleSessionTTLInSeconds = {
            type = "integer",
        },
        botStatus = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        botTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        testBotAliasTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        botType = {
            type = "string",
        },
        botMembers = {
            type = "list",
            member = M.BotMember,
        },
        errorLogSettings = M.ErrorLogSettings,
    },
}

M.SentimentAnalysisSettings = {
    type = "structure",
    id = "SentimentAnalysisSettings",
    members = {
        detectSentiment = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.CreateBotAliasInput = {
    type = "structure",
    id = "CreateBotAliasInput",
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
            key = { type = "string" },
            value = M.BotAliasLocaleSettings,
        },
        conversationLogSettings = M.ConversationLogSettings,
        sentimentAnalysisSettings = M.SentimentAnalysisSettings,
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateBotAliasOutput = {
    type = "structure",
    id = "CreateBotAliasOutput",
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
            key = { type = "string" },
            value = M.BotAliasLocaleSettings,
        },
        conversationLogSettings = M.ConversationLogSettings,
        sentimentAnalysisSettings = M.SentimentAnalysisSettings,
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
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.IntentDisambiguationSettings = {
    type = "structure",
    id = "IntentDisambiguationSettings",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        maxDisambiguationIntents = {
            type = "integer",
        },
        customDisambiguationMessage = {
            type = "string",
        },
    },
}

M.NluImprovementSpecification = {
    type = "structure",
    id = "NluImprovementSpecification",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        assistedNluMode = {
            type = "string",
        },
        intentDisambiguationSettings = M.IntentDisambiguationSettings,
    },
}

M.SlotResolutionImprovementSpecification = {
    type = "structure",
    id = "SlotResolutionImprovementSpecification",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        bedrockModelSpecification = M.BedrockModelSpecification,
    },
}

M.RuntimeSettings = {
    type = "structure",
    id = "RuntimeSettings",
    members = {
        slotResolutionImprovement = M.SlotResolutionImprovementSpecification,
        nluImprovement = M.NluImprovementSpecification,
    },
}

M.GenerativeAISettings = {
    type = "structure",
    id = "GenerativeAISettings",
    members = {
        runtimeSettings = M.RuntimeSettings,
        buildtimeSettings = M.BuildtimeSettings,
    },
}

M.CreateBotLocaleInput = {
    type = "structure",
    id = "CreateBotLocaleInput",
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
            type = "double",
            traits = {
                required = true,
            },
        },
        voiceSettings = M.VoiceSettings,
        unifiedSpeechSettings = M.UnifiedSpeechSettings,
        speechRecognitionSettings = M.SpeechRecognitionSettings,
        generativeAISettings = M.GenerativeAISettings,
        speechDetectionSensitivity = {
            type = "string",
        },
    },
}

M.CreateBotLocaleOutput = {
    type = "structure",
    id = "CreateBotLocaleOutput",
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
            type = "double",
        },
        voiceSettings = M.VoiceSettings,
        unifiedSpeechSettings = M.UnifiedSpeechSettings,
        speechRecognitionSettings = M.SpeechRecognitionSettings,
        botLocaleStatus = {
            type = "string",
        },
        creationDateTime = {
            type = "timestamp",
        },
        generativeAISettings = M.GenerativeAISettings,
        speechDetectionSensitivity = {
            type = "string",
        },
    },
}

M.CreateBotReplicaInput = {
    type = "structure",
    id = "CreateBotReplicaInput",
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
    id = "CreateBotReplicaOutput",
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
    id = "CreateBotVersionInput",
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
            key = { type = "string" },
            value = M.BotVersionLocaleDetails,
            traits = {
                required = true,
            },
        },
    },
}

M.CreateBotVersionOutput = {
    type = "structure",
    id = "CreateBotVersionOutput",
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
            key = { type = "string" },
            value = M.BotVersionLocaleDetails,
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
    id = "CustomVocabularyExportSpecification",
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
    id = "TestSetExportSpecification",
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
    id = "ExportResourceSpecification",
    members = {
        botExportSpecification = M.BotExportSpecification,
        botLocaleExportSpecification = M.BotLocaleExportSpecification,
        customVocabularyExportSpecification = M.CustomVocabularyExportSpecification,
        testSetExportSpecification = M.TestSetExportSpecification,
    },
}

M.CreateExportInput = {
    type = "structure",
    id = "CreateExportInput",
    members = {
        resourceSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ExportResourceSpecification }),
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
    id = "CreateExportOutput",
    members = {
        exportId = {
            type = "string",
        },
        resourceSpecification = M.ExportResourceSpecification,
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
    id = "DialogCodeHookSettings",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
    },
}

M.FulfillmentStartResponseSpecification = {
    type = "structure",
    id = "FulfillmentStartResponseSpecification",
    members = {
        delayInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        messageGroups = {
            type = "list",
            member = M.MessageGroup,
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
    id = "FulfillmentUpdateResponseSpecification",
    members = {
        frequencyInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        messageGroups = {
            type = "list",
            member = M.MessageGroup,
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
    id = "FulfillmentUpdatesSpecification",
    members = {
        active = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        startResponse = M.FulfillmentStartResponseSpecification,
        updateResponse = M.FulfillmentUpdateResponseSpecification,
        timeoutInSeconds = {
            type = "integer",
        },
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

M.ElicitationCodeHookInvocationSetting = {
    type = "structure",
    id = "ElicitationCodeHookInvocationSetting",
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
    id = "TextInputSpecification",
    members = {
        startTimeoutMs = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.PromptAttemptSpecification = {
    type = "structure",
    id = "PromptAttemptSpecification",
    members = {
        allowInterrupt = {
            type = "boolean",
        },
        allowedInputTypes = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AllowedInputTypes }),
        audioAndDTMFInputSpecification = M.AudioAndDTMFInputSpecification,
        textInputSpecification = M.TextInputSpecification,
    },
}

M.PromptSpecification = {
    type = "structure",
    id = "PromptSpecification",
    members = {
        messageGroups = {
            type = "list",
            member = M.MessageGroup,
            traits = {
                required = true,
            },
        },
        maxRetries = {
            type = "integer",
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
            key = { type = "string" },
            value = M.PromptAttemptSpecification,
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
        queryFilterStringEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        queryFilterString = {
            type = "string",
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

M.QInConnectAssistantConfiguration = {
    type = "structure",
    id = "QInConnectAssistantConfiguration",
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
    id = "QInConnectIntentConfiguration",
    members = {
        qInConnectAssistantConfiguration = M.QInConnectAssistantConfiguration,
    },
}

M.QnAKendraConfiguration = {
    type = "structure",
    id = "QnAKendraConfiguration",
    members = {
        kendraIndex = {
            type = "string",
            traits = {
                required = true,
            },
        },
        queryFilterStringEnabled = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        queryFilterString = {
            type = "string",
        },
        exactResponse = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ExactResponseFields = {
    type = "structure",
    id = "ExactResponseFields",
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
    id = "OpensearchConfiguration",
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
            traits = {
                default = false,
            },
        },
        exactResponseFields = M.ExactResponseFields,
        includeFields = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DataSourceConfiguration = {
    type = "structure",
    id = "DataSourceConfiguration",
    members = {
        opensearchConfiguration = M.OpensearchConfiguration,
        kendraConfiguration = M.QnAKendraConfiguration,
        bedrockKnowledgeStoreConfiguration = M.BedrockKnowledgeStoreConfiguration,
    },
}

M.QnAIntentConfiguration = {
    type = "structure",
    id = "QnAIntentConfiguration",
    members = {
        dataSourceConfiguration = M.DataSourceConfiguration,
        bedrockModelConfiguration = M.BedrockModelSpecification,
    },
}

M.SampleUtterance = {
    type = "structure",
    id = "SampleUtterance",
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
    id = "CreateResourcePolicyInput",
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
    id = "CreateResourcePolicyOutput",
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
    id = "Principal",
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
    id = "CreateResourcePolicyStatementInput",
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
            member = M.Principal,
            traits = {
                required = true,
            },
        },
        action = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        condition = {
            type = "map",
            key = { type = "string" },
            value = { type = "map" },
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
    id = "CreateResourcePolicyStatementOutput",
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
    id = "MultipleValuesSetting",
    members = {
        allowMultipleValues = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.ObfuscationSettingType = {
    None = "None",
    DefaultObfuscation = "DefaultObfuscation",
}

M.ObfuscationSetting = {
    type = "structure",
    id = "ObfuscationSetting",
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

M.SlotDefaultValueSpecification = {
    type = "structure",
    id = "SlotDefaultValueSpecification",
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

M.StillWaitingResponseSpecification = {
    type = "structure",
    id = "StillWaitingResponseSpecification",
    members = {
        messageGroups = {
            type = "list",
            member = M.MessageGroup,
            traits = {
                required = true,
            },
        },
        frequencyInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        timeoutInSeconds = {
            type = "integer",
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
    id = "WaitAndContinueSpecification",
    members = {
        waitingResponse = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResponseSpecification }),
        continueResponse = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ResponseSpecification }),
        stillWaitingResponse = M.StillWaitingResponseSpecification,
        active = {
            type = "boolean",
        },
    },
}

M.SubSlotValueElicitationSetting = {
    type = "structure",
    id = "SubSlotValueElicitationSetting",
    members = {
        defaultValueSpecification = M.SlotDefaultValueSpecification,
        promptSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PromptSpecification }),
        sampleUtterances = {
            type = "list",
            member = M.SampleUtterance,
        },
        waitAndContinueSpecification = M.WaitAndContinueSpecification,
    },
}

M.Specifications = {
    type = "structure",
    id = "Specifications",
    members = {
        slotTypeId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        valueElicitationSetting = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SubSlotValueElicitationSetting }),
    },
}

M.SubSlotSetting = {
    type = "structure",
    id = "SubSlotSetting",
    members = {
        expression = {
            type = "string",
        },
        slotSpecifications = {
            type = "map",
            key = { type = "string" },
            value = M.Specifications,
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
    id = "SlotResolutionSetting",
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
    id = "GrammarSlotTypeSource",
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
    id = "GrammarSlotTypeSetting",
    members = {
        source = M.GrammarSlotTypeSource,
    },
}

M.ExternalSourceSetting = {
    type = "structure",
    id = "ExternalSourceSetting",
    members = {
        grammarSlotTypeSetting = M.GrammarSlotTypeSetting,
    },
}

M.SampleValue = {
    type = "structure",
    id = "SampleValue",
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
    id = "SlotTypeValue",
    members = {
        sampleValue = M.SampleValue,
        synonyms = {
            type = "list",
            member = M.SampleValue,
        },
    },
}

M.SlotValueRegexFilter = {
    type = "structure",
    id = "SlotValueRegexFilter",
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
    id = "SlotValueSelectionSetting",
    members = {
        resolutionStrategy = {
            type = "string",
            traits = {
                required = true,
            },
        },
        regexFilter = M.SlotValueRegexFilter,
        advancedRecognitionSetting = M.AdvancedRecognitionSetting,
    },
}

M.CreateSlotTypeInput = {
    type = "structure",
    id = "CreateSlotTypeInput",
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
            member = M.SlotTypeValue,
        },
        valueSelectionSetting = M.SlotValueSelectionSetting,
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
        externalSourceSetting = M.ExternalSourceSetting,
        compositeSlotTypeSetting = M.CompositeSlotTypeSetting,
    },
}

M.CreateSlotTypeOutput = {
    type = "structure",
    id = "CreateSlotTypeOutput",
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
            member = M.SlotTypeValue,
        },
        valueSelectionSetting = M.SlotValueSelectionSetting,
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
        externalSourceSetting = M.ExternalSourceSetting,
        compositeSlotTypeSetting = M.CompositeSlotTypeSetting,
    },
}

M.TestSetDiscrepancyReportBotAliasTarget = {
    type = "structure",
    id = "TestSetDiscrepancyReportBotAliasTarget",
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
    id = "TestSetDiscrepancyReportResourceTarget",
    members = {
        botAliasTarget = M.TestSetDiscrepancyReportBotAliasTarget,
    },
}

M.CreateTestSetDiscrepancyReportInput = {
    type = "structure",
    id = "CreateTestSetDiscrepancyReportInput",
    members = {
        testSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TestSetDiscrepancyReportResourceTarget }),
    },
}

M.CreateTestSetDiscrepancyReportOutput = {
    type = "structure",
    id = "CreateTestSetDiscrepancyReportOutput",
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
        target = M.TestSetDiscrepancyReportResourceTarget,
    },
}

M.CreateUploadUrlInput = {
    type = "structure",
    id = "CreateUploadUrlInput",
}

M.CreateUploadUrlOutput = {
    type = "structure",
    id = "CreateUploadUrlOutput",
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
    id = "CustomVocabularyImportSpecification",
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
    id = "DateRangeFilter",
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
    id = "DeleteBotInput",
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
                default = false,
                http_query = "skipResourceInUseCheck",
            },
        },
    },
}

M.DeleteBotOutput = {
    type = "structure",
    id = "DeleteBotOutput",
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
    id = "DeleteBotAliasInput",
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
                default = false,
                http_query = "skipResourceInUseCheck",
            },
        },
    },
}

M.DeleteBotAliasOutput = {
    type = "structure",
    id = "DeleteBotAliasOutput",
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
    id = "DeleteBotAnalyzerRecommendationInput",
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
    id = "DeleteBotAnalyzerRecommendationOutput",
}

M.DeleteBotLocaleInput = {
    type = "structure",
    id = "DeleteBotLocaleInput",
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
    id = "DeleteBotLocaleOutput",
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
    id = "DeleteBotReplicaInput",
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
    id = "DeleteBotReplicaOutput",
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
    id = "DeleteBotVersionInput",
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
                default = false,
                http_query = "skipResourceInUseCheck",
            },
        },
    },
}

M.DeleteBotVersionOutput = {
    type = "structure",
    id = "DeleteBotVersionOutput",
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
    id = "DeleteCustomVocabularyInput",
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
    id = "DeleteCustomVocabularyOutput",
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
    id = "DeleteExportInput",
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
    id = "DeleteExportOutput",
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
    id = "DeleteImportInput",
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
    id = "DeleteImportOutput",
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
    id = "DeleteIntentInput",
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
    id = "DeleteIntentOutput",
}

M.DeleteResourcePolicyInput = {
    type = "structure",
    id = "DeleteResourcePolicyInput",
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
    id = "DeleteResourcePolicyOutput",
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
    id = "DeleteResourcePolicyStatementInput",
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
    id = "DeleteResourcePolicyStatementOutput",
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
    id = "DeleteSlotInput",
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
    id = "DeleteSlotOutput",
}

M.DeleteSlotTypeInput = {
    type = "structure",
    id = "DeleteSlotTypeInput",
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
                default = false,
                http_query = "skipResourceInUseCheck",
            },
        },
    },
}

M.DeleteSlotTypeOutput = {
    type = "structure",
    id = "DeleteSlotTypeOutput",
}

M.DeleteTestSetInput = {
    type = "structure",
    id = "DeleteTestSetInput",
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
    id = "DeleteTestSetOutput",
}

M.DeleteUtterancesInput = {
    type = "structure",
    id = "DeleteUtterancesInput",
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
    id = "DeleteUtterancesOutput",
}

M.DescribeBotInput = {
    type = "structure",
    id = "DescribeBotInput",
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
    id = "DescribeBotOutput",
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
        dataPrivacy = M.DataPrivacy,
        idleSessionTTLInSeconds = {
            type = "integer",
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
            member = M.BotMember,
        },
        failureReasons = {
            type = "list",
            member = { type = "string" },
        },
        errorLogSettings = M.ErrorLogSettings,
    },
}

M.DescribeBotAliasInput = {
    type = "structure",
    id = "DescribeBotAliasInput",
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
    id = "ParentBotNetwork",
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
    id = "DescribeBotAliasOutput",
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
            key = { type = "string" },
            value = M.BotAliasLocaleSettings,
        },
        conversationLogSettings = M.ConversationLogSettings,
        sentimentAnalysisSettings = M.SentimentAnalysisSettings,
        botAliasHistoryEvents = {
            type = "list",
            member = M.BotAliasHistoryEvent,
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
            member = M.ParentBotNetwork,
        },
    },
}

M.DescribeBotAnalyzerRecommendationInput = {
    type = "structure",
    id = "DescribeBotAnalyzerRecommendationInput",
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
            type = "integer",
        },
    },
}

M.DescribeBotAnalyzerRecommendationOutput = {
    type = "structure",
    id = "DescribeBotAnalyzerRecommendationOutput",
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
            member = M.BotAnalyzerRecommendation,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.DescribeBotLocaleInput = {
    type = "structure",
    id = "DescribeBotLocaleInput",
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
    id = "DescribeBotLocaleOutput",
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
            type = "double",
        },
        voiceSettings = M.VoiceSettings,
        unifiedSpeechSettings = M.UnifiedSpeechSettings,
        speechRecognitionSettings = M.SpeechRecognitionSettings,
        intentsCount = {
            type = "integer",
        },
        slotTypesCount = {
            type = "integer",
        },
        botLocaleStatus = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member = { type = "string" },
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
            member = M.BotLocaleHistoryEvent,
        },
        recommendedActions = {
            type = "list",
            member = { type = "string" },
        },
        generativeAISettings = M.GenerativeAISettings,
        speechDetectionSensitivity = {
            type = "string",
        },
    },
}

M.DescribeBotRecommendationInput = {
    type = "structure",
    id = "DescribeBotRecommendationInput",
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
    id = "EncryptionSetting",
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
    id = "PathFormat",
    members = {
        objectPrefixes = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.LexTranscriptFilter = {
    type = "structure",
    id = "LexTranscriptFilter",
    members = {
        dateRangeFilter = M.DateRangeFilter,
    },
}

M.TranscriptFilter = {
    type = "structure",
    id = "TranscriptFilter",
    members = {
        lexTranscriptFilter = M.LexTranscriptFilter,
    },
}

M.TranscriptFormat = {
    Lex = "Lex",
}

M.S3BucketTranscriptSource = {
    type = "structure",
    id = "S3BucketTranscriptSource",
    members = {
        s3BucketName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        pathFormat = M.PathFormat,
        transcriptFormat = {
            type = "string",
            traits = {
                required = true,
            },
        },
        transcriptFilter = M.TranscriptFilter,
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.TranscriptSourceSetting = {
    type = "structure",
    id = "TranscriptSourceSetting",
    members = {
        s3BucketTranscriptSource = M.S3BucketTranscriptSource,
    },
}

M.DescribeBotRecommendationOutput = {
    type = "structure",
    id = "DescribeBotRecommendationOutput",
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
            member = { type = "string" },
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        transcriptSourceSetting = M.TranscriptSourceSetting,
        encryptionSetting = M.EncryptionSetting,
        botRecommendationResults = M.BotRecommendationResults,
    },
}

M.DescribeBotReplicaInput = {
    type = "structure",
    id = "DescribeBotReplicaInput",
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
    id = "DescribeBotReplicaOutput",
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
            member = { type = "string" },
        },
    },
}

M.DescribeBotResourceGenerationInput = {
    type = "structure",
    id = "DescribeBotResourceGenerationInput",
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
    id = "DescribeBotResourceGenerationOutput",
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
            member = { type = "string" },
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
    id = "DescribeBotVersionInput",
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
    id = "DescribeBotVersionOutput",
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
        dataPrivacy = M.DataPrivacy,
        idleSessionTTLInSeconds = {
            type = "integer",
        },
        botStatus = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member = { type = "string" },
        },
        creationDateTime = {
            type = "timestamp",
        },
        parentBotNetworks = {
            type = "list",
            member = M.ParentBotNetwork,
        },
        botType = {
            type = "string",
        },
        botMembers = {
            type = "list",
            member = M.BotMember,
        },
    },
}

M.DescribeCustomVocabularyMetadataInput = {
    type = "structure",
    id = "DescribeCustomVocabularyMetadataInput",
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
    id = "DescribeCustomVocabularyMetadataOutput",
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
    id = "DescribeExportInput",
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
    id = "DescribeExportOutput",
    members = {
        exportId = {
            type = "string",
        },
        resourceSpecification = M.ExportResourceSpecification,
        fileFormat = {
            type = "string",
        },
        exportStatus = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member = { type = "string" },
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
    id = "DescribeImportInput",
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
    id = "TestSetImportInputLocation",
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
    id = "TestSetStorageLocation",
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
    id = "TestSetImportResourceSpecification",
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
        storageLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TestSetStorageLocation }),
        importInputLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TestSetImportInputLocation }),
        modality = {
            type = "string",
            traits = {
                required = true,
            },
        },
        testSetTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ImportResourceSpecification = {
    type = "structure",
    id = "ImportResourceSpecification",
    members = {
        botImportSpecification = M.BotImportSpecification,
        botLocaleImportSpecification = M.BotLocaleImportSpecification,
        customVocabularyImportSpecification = M.CustomVocabularyImportSpecification,
        testSetImportResourceSpecification = M.TestSetImportResourceSpecification,
    },
}

M.DescribeImportOutput = {
    type = "structure",
    id = "DescribeImportOutput",
    members = {
        importId = {
            type = "string",
        },
        resourceSpecification = M.ImportResourceSpecification,
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
            member = { type = "string" },
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
    id = "DescribeIntentInput",
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
    id = "SlotPriority",
    members = {
        priority = {
            type = "integer",
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
    id = "DescribeResourcePolicyInput",
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
    id = "DescribeResourcePolicyOutput",
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
    id = "DescribeSlotInput",
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
    id = "DescribeSlotTypeInput",
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
    id = "DescribeSlotTypeOutput",
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
            member = M.SlotTypeValue,
        },
        valueSelectionSetting = M.SlotValueSelectionSetting,
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
        externalSourceSetting = M.ExternalSourceSetting,
        compositeSlotTypeSetting = M.CompositeSlotTypeSetting,
    },
}

M.DescribeTestExecutionInput = {
    type = "structure",
    id = "DescribeTestExecutionInput",
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
    id = "TestExecutionTarget",
    members = {
        botAliasTarget = M.BotAliasTestExecutionTarget,
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
    id = "DescribeTestExecutionOutput",
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
        target = M.TestExecutionTarget,
        apiMode = {
            type = "string",
        },
        testExecutionModality = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeTestSetInput = {
    type = "structure",
    id = "DescribeTestSetInput",
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
    id = "DescribeTestSetOutput",
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
            type = "integer",
        },
        storageLocation = M.TestSetStorageLocation,
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
    id = "DescribeTestSetDiscrepancyReportInput",
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
    id = "TestSetIntentDiscrepancyItem",
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
    id = "TestSetSlotDiscrepancyItem",
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
    id = "TestSetDiscrepancyErrors",
    members = {
        intentDiscrepancies = {
            type = "list",
            member = M.TestSetIntentDiscrepancyItem,
            traits = {
                required = true,
            },
        },
        slotDiscrepancies = {
            type = "list",
            member = M.TestSetSlotDiscrepancyItem,
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeTestSetDiscrepancyReportOutput = {
    type = "structure",
    id = "DescribeTestSetDiscrepancyReportOutput",
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
        target = M.TestSetDiscrepancyReportResourceTarget,
        testSetDiscrepancyReportStatus = {
            type = "string",
        },
        lastUpdatedDataTime = {
            type = "timestamp",
        },
        testSetDiscrepancyTopErrors = M.TestSetDiscrepancyErrors,
        testSetDiscrepancyRawOutputUrl = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member = { type = "string" },
        },
    },
}

M.DescribeTestSetGenerationInput = {
    type = "structure",
    id = "DescribeTestSetGenerationInput",
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
    id = "TestSetGenerationDataSource",
    members = {
        conversationLogsDataSource = M.ConversationLogsDataSource,
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
    id = "DescribeTestSetGenerationOutput",
    members = {
        testSetGenerationId = {
            type = "string",
        },
        testSetGenerationStatus = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member = { type = "string" },
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
        storageLocation = M.TestSetStorageLocation,
        generationDataSource = M.TestSetGenerationDataSource,
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
    id = "ExportFilter",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
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
    id = "ExportSortBy",
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
    id = "ExportSummary",
    members = {
        exportId = {
            type = "string",
        },
        resourceSpecification = M.ExportResourceSpecification,
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
    id = "GenerateBotElementInput",
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
    id = "GenerateBotElementOutput",
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
            member = M.SampleUtterance,
        },
    },
}

M.GenerationSortByAttribute = {
    creationStartTime = "creationStartTime",
    lastUpdatedTime = "lastUpdatedTime",
}

M.GenerationSortBy = {
    type = "structure",
    id = "GenerationSortBy",
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
    id = "GenerationSummary",
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
    id = "GetTestExecutionArtifactsUrlInput",
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
    id = "GetTestExecutionArtifactsUrlOutput",
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
    id = "ImportFilter",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
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
    id = "ImportSortBy",
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
    id = "ImportSummary",
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

M.IntentClassificationTestResultItemCounts = {
    type = "structure",
    id = "IntentClassificationTestResultItemCounts",
    members = {
        totalResultCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        speechTranscriptionResultCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        intentMatchResultCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
            traits = {
                required = true,
            },
        },
    },
}

M.IntentClassificationTestResultItem = {
    type = "structure",
    id = "IntentClassificationTestResultItem",
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
                default = false,
                required = true,
            },
        },
        resultCounts = setmetatable({ traits = {
            required = true,
        } }, { __index = M.IntentClassificationTestResultItemCounts }),
    },
}

M.IntentClassificationTestResults = {
    type = "structure",
    id = "IntentClassificationTestResults",
    members = {
        items = {
            type = "list",
            member = M.IntentClassificationTestResultItem,
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
    id = "IntentFilter",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
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
    id = "SlotResolutionTestResultItemCounts",
    members = {
        totalResultCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        speechTranscriptionResultCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        slotMatchResultCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
            traits = {
                required = true,
            },
        },
    },
}

M.SlotResolutionTestResultItem = {
    type = "structure",
    id = "SlotResolutionTestResultItem",
    members = {
        slotName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resultCounts = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SlotResolutionTestResultItemCounts }),
    },
}

M.IntentLevelSlotResolutionTestResultItem = {
    type = "structure",
    id = "IntentLevelSlotResolutionTestResultItem",
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
                default = false,
                required = true,
            },
        },
        slotResolutionResults = {
            type = "list",
            member = M.SlotResolutionTestResultItem,
            traits = {
                required = true,
            },
        },
    },
}

M.IntentLevelSlotResolutionTestResults = {
    type = "structure",
    id = "IntentLevelSlotResolutionTestResults",
    members = {
        items = {
            type = "list",
            member = M.IntentLevelSlotResolutionTestResultItem,
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
    id = "IntentSortBy",
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
    id = "IntentSummary",
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
            member = M.InputContext,
        },
        outputContexts = {
            type = "list",
            member = M.OutputContext,
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.InvokedIntentSample = {
    type = "structure",
    id = "InvokedIntentSample",
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
    id = "RelativeAggregationDuration",
    members = {
        timeDimension = {
            type = "string",
            traits = {
                required = true,
            },
        },
        timeValue = {
            type = "integer",
            traits = {
                required = true,
            },
        },
    },
}

M.UtteranceAggregationDuration = {
    type = "structure",
    id = "UtteranceAggregationDuration",
    members = {
        relativeAggregationDuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RelativeAggregationDuration }),
    },
}

M.ListAggregatedUtterancesInput = {
    type = "structure",
    id = "ListAggregatedUtterancesInput",
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
        aggregationDuration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UtteranceAggregationDuration }),
        sortBy = M.AggregatedUtterancesSortBy,
        filters = {
            type = "list",
            member = M.AggregatedUtterancesFilter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListAggregatedUtterancesOutput = {
    type = "structure",
    id = "ListAggregatedUtterancesOutput",
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
        aggregationDuration = M.UtteranceAggregationDuration,
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
            member = M.AggregatedUtterancesSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotAliasesInput = {
    type = "structure",
    id = "ListBotAliasesInput",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotAliasesOutput = {
    type = "structure",
    id = "ListBotAliasesOutput",
    members = {
        botAliasSummaries = {
            type = "list",
            member = M.BotAliasSummary,
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
    id = "ListBotAliasReplicasInput",
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
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotAliasReplicasOutput = {
    type = "structure",
    id = "ListBotAliasReplicasOutput",
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
            member = M.BotAliasReplicaSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotAnalyzerHistoryInput = {
    type = "structure",
    id = "ListBotAnalyzerHistoryInput",
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
            type = "integer",
        },
    },
}

M.ListBotAnalyzerHistoryOutput = {
    type = "structure",
    id = "ListBotAnalyzerHistoryOutput",
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
            member = M.BotAnalyzerHistorySummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotLocalesInput = {
    type = "structure",
    id = "ListBotLocalesInput",
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
        sortBy = M.BotLocaleSortBy,
        filters = {
            type = "list",
            member = M.BotLocaleFilter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotLocalesOutput = {
    type = "structure",
    id = "ListBotLocalesOutput",
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
            member = M.BotLocaleSummary,
        },
    },
}

M.ListBotRecommendationsInput = {
    type = "structure",
    id = "ListBotRecommendationsInput",
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
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotRecommendationsOutput = {
    type = "structure",
    id = "ListBotRecommendationsOutput",
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
            member = M.BotRecommendationSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotReplicasInput = {
    type = "structure",
    id = "ListBotReplicasInput",
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
    id = "ListBotReplicasOutput",
    members = {
        botId = {
            type = "string",
        },
        sourceRegion = {
            type = "string",
        },
        botReplicaSummaries = {
            type = "list",
            member = M.BotReplicaSummary,
        },
    },
}

M.ListBotResourceGenerationsInput = {
    type = "structure",
    id = "ListBotResourceGenerationsInput",
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
        sortBy = M.GenerationSortBy,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotResourceGenerationsOutput = {
    type = "structure",
    id = "ListBotResourceGenerationsOutput",
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
            member = M.GenerationSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotsInput = {
    type = "structure",
    id = "ListBotsInput",
    members = {
        sortBy = M.BotSortBy,
        filters = {
            type = "list",
            member = M.BotFilter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotsOutput = {
    type = "structure",
    id = "ListBotsOutput",
    members = {
        botSummaries = {
            type = "list",
            member = M.BotSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotVersionReplicasInput = {
    type = "structure",
    id = "ListBotVersionReplicasInput",
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
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
        sortBy = M.BotVersionReplicaSortBy,
    },
}

M.ListBotVersionReplicasOutput = {
    type = "structure",
    id = "ListBotVersionReplicasOutput",
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
            member = M.BotVersionReplicaSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotVersionsInput = {
    type = "structure",
    id = "ListBotVersionsInput",
    members = {
        botId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sortBy = M.BotVersionSortBy,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBotVersionsOutput = {
    type = "structure",
    id = "ListBotVersionsOutput",
    members = {
        botId = {
            type = "string",
        },
        botVersionSummaries = {
            type = "list",
            member = M.BotVersionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBuiltInIntentsInput = {
    type = "structure",
    id = "ListBuiltInIntentsInput",
    members = {
        localeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sortBy = M.BuiltInIntentSortBy,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBuiltInIntentsOutput = {
    type = "structure",
    id = "ListBuiltInIntentsOutput",
    members = {
        builtInIntentSummaries = {
            type = "list",
            member = M.BuiltInIntentSummary,
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
    id = "ListBuiltInSlotTypesInput",
    members = {
        localeId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        sortBy = M.BuiltInSlotTypeSortBy,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListBuiltInSlotTypesOutput = {
    type = "structure",
    id = "ListBuiltInSlotTypesOutput",
    members = {
        builtInSlotTypeSummaries = {
            type = "list",
            member = M.BuiltInSlotTypeSummary,
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
    id = "ListCustomVocabularyItemsInput",
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
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListCustomVocabularyItemsOutput = {
    type = "structure",
    id = "ListCustomVocabularyItemsOutput",
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
            member = M.CustomVocabularyItem,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListExportsInput = {
    type = "structure",
    id = "ListExportsInput",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        sortBy = M.ExportSortBy,
        filters = {
            type = "list",
            member = M.ExportFilter,
        },
        maxResults = {
            type = "integer",
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
    id = "ListExportsOutput",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        exportSummaries = {
            type = "list",
            member = M.ExportSummary,
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
    id = "ListImportsInput",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        sortBy = M.ImportSortBy,
        filters = {
            type = "list",
            member = M.ImportFilter,
        },
        maxResults = {
            type = "integer",
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
    id = "ListImportsOutput",
    members = {
        botId = {
            type = "string",
        },
        botVersion = {
            type = "string",
        },
        importSummaries = {
            type = "list",
            member = M.ImportSummary,
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
    id = "ListIntentMetricsInput",
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
            member = M.AnalyticsIntentMetric,
            traits = {
                required = true,
            },
        },
        binBy = {
            type = "list",
            member = M.AnalyticsBinBySpecification,
        },
        groupBy = {
            type = "list",
            member = M.AnalyticsIntentGroupBySpecification,
        },
        filters = {
            type = "list",
            member = M.AnalyticsIntentFilter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIntentMetricsOutput = {
    type = "structure",
    id = "ListIntentMetricsOutput",
    members = {
        botId = {
            type = "string",
        },
        results = {
            type = "list",
            member = M.AnalyticsIntentResult,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIntentPathsInput = {
    type = "structure",
    id = "ListIntentPathsInput",
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
            member = M.AnalyticsPathFilter,
        },
    },
}

M.ListIntentPathsOutput = {
    type = "structure",
    id = "ListIntentPathsOutput",
    members = {
        nodeSummaries = {
            type = "list",
            member = M.AnalyticsIntentNodeSummary,
        },
    },
}

M.ListIntentsInput = {
    type = "structure",
    id = "ListIntentsInput",
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
        sortBy = M.IntentSortBy,
        filters = {
            type = "list",
            member = M.IntentFilter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIntentsOutput = {
    type = "structure",
    id = "ListIntentsOutput",
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
            member = M.IntentSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIntentStageMetricsInput = {
    type = "structure",
    id = "ListIntentStageMetricsInput",
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
            member = M.AnalyticsIntentStageMetric,
            traits = {
                required = true,
            },
        },
        binBy = {
            type = "list",
            member = M.AnalyticsBinBySpecification,
        },
        groupBy = {
            type = "list",
            member = M.AnalyticsIntentStageGroupBySpecification,
        },
        filters = {
            type = "list",
            member = M.AnalyticsIntentStageFilter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListIntentStageMetricsOutput = {
    type = "structure",
    id = "ListIntentStageMetricsOutput",
    members = {
        botId = {
            type = "string",
        },
        results = {
            type = "list",
            member = M.AnalyticsIntentStageResult,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListRecommendedIntentsInput = {
    type = "structure",
    id = "ListRecommendedIntentsInput",
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
            type = "integer",
        },
    },
}

M.RecommendedIntentSummary = {
    type = "structure",
    id = "RecommendedIntentSummary",
    members = {
        intentId = {
            type = "string",
        },
        intentName = {
            type = "string",
        },
        sampleUtterancesCount = {
            type = "integer",
        },
    },
}

M.ListRecommendedIntentsOutput = {
    type = "structure",
    id = "ListRecommendedIntentsOutput",
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
            member = M.RecommendedIntentSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SessionDataSortBy = {
    type = "structure",
    id = "SessionDataSortBy",
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
    id = "ListSessionAnalyticsDataInput",
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
        sortBy = M.SessionDataSortBy,
        filters = {
            type = "list",
            member = M.AnalyticsSessionFilter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SessionSpecification = {
    type = "structure",
    id = "SessionSpecification",
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
            type = "long",
        },
        conversationEndState = {
            type = "string",
        },
        mode = {
            type = "string",
        },
        numberOfTurns = {
            type = "long",
        },
        invokedIntentSamples = {
            type = "list",
            member = M.InvokedIntentSample,
        },
        originatingRequestId = {
            type = "string",
        },
    },
}

M.ListSessionAnalyticsDataOutput = {
    type = "structure",
    id = "ListSessionAnalyticsDataOutput",
    members = {
        botId = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        sessions = {
            type = "list",
            member = M.SessionSpecification,
        },
    },
}

M.ListSessionMetricsInput = {
    type = "structure",
    id = "ListSessionMetricsInput",
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
            member = M.AnalyticsSessionMetric,
            traits = {
                required = true,
            },
        },
        binBy = {
            type = "list",
            member = M.AnalyticsBinBySpecification,
        },
        groupBy = {
            type = "list",
            member = M.AnalyticsSessionGroupBySpecification,
        },
        filters = {
            type = "list",
            member = M.AnalyticsSessionFilter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSessionMetricsOutput = {
    type = "structure",
    id = "ListSessionMetricsOutput",
    members = {
        botId = {
            type = "string",
        },
        results = {
            type = "list",
            member = M.AnalyticsSessionResult,
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
    id = "SlotFilter",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
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
    id = "SlotSortBy",
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
    id = "ListSlotsInput",
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
        sortBy = M.SlotSortBy,
        filters = {
            type = "list",
            member = M.SlotFilter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.SlotSummary = {
    type = "structure",
    id = "SlotSummary",
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
        valueElicitationPromptSpecification = M.PromptSpecification,
        lastUpdatedDateTime = {
            type = "timestamp",
        },
    },
}

M.ListSlotsOutput = {
    type = "structure",
    id = "ListSlotsOutput",
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
            member = M.SlotSummary,
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
    id = "SlotTypeFilter",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
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
    id = "SlotTypeSortBy",
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
    id = "ListSlotTypesInput",
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
        sortBy = M.SlotTypeSortBy,
        filters = {
            type = "list",
            member = M.SlotTypeFilter,
        },
        maxResults = {
            type = "integer",
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
    id = "SlotTypeSummary",
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
    id = "ListSlotTypesOutput",
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
            member = M.SlotTypeSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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
    id = "TestExecutionResultFilterBy",
    members = {
        resultTypeFilter = {
            type = "string",
            traits = {
                required = true,
            },
        },
        conversationLevelTestResultsFilterBy = M.ConversationLevelTestResultsFilterBy,
    },
}

M.ListTestExecutionResultItemsInput = {
    type = "structure",
    id = "ListTestExecutionResultItemsInput",
    members = {
        testExecutionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        resultFilterBy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TestExecutionResultFilterBy }),
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.OverallTestResultItem = {
    type = "structure",
    id = "OverallTestResultItem",
    members = {
        multiTurnConversation = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        totalResultCount = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        speechTranscriptionResultCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
        },
        endToEndResultCounts = {
            type = "map",
            key = { type = "string" },
            value = { type = "integer" },
            traits = {
                required = true,
            },
        },
    },
}

M.OverallTestResults = {
    type = "structure",
    id = "OverallTestResults",
    members = {
        items = {
            type = "list",
            member = M.OverallTestResultItem,
            traits = {
                required = true,
            },
        },
    },
}

M.UtteranceAudioInputSpecification = {
    type = "structure",
    id = "UtteranceAudioInputSpecification",
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
    id = "UtteranceInputSpecification",
    members = {
        textInput = {
            type = "string",
        },
        audioInput = M.UtteranceAudioInputSpecification,
    },
}

M.TestExecutionSortAttribute = {
    TestSetName = "TestSetName",
    CreationDateTime = "CreationDateTime",
}

M.TestExecutionSortBy = {
    type = "structure",
    id = "TestExecutionSortBy",
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
    id = "ListTestExecutionsInput",
    members = {
        sortBy = M.TestExecutionSortBy,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TestExecutionSummary = {
    type = "structure",
    id = "TestExecutionSummary",
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
        target = M.TestExecutionTarget,
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
    id = "ListTestExecutionsOutput",
    members = {
        testExecutions = {
            type = "list",
            member = M.TestExecutionSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTestSetRecordsInput = {
    type = "structure",
    id = "ListTestSetRecordsInput",
    members = {
        testSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
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
    id = "TestSetSortBy",
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
    id = "ListTestSetsInput",
    members = {
        sortBy = M.TestSetSortBy,
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TestSetSummary = {
    type = "structure",
    id = "TestSetSummary",
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
            type = "integer",
        },
        storageLocation = M.TestSetStorageLocation,
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
    id = "ListTestSetsOutput",
    members = {
        testSets = {
            type = "list",
            member = M.TestSetSummary,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UtteranceDataSortBy = {
    type = "structure",
    id = "UtteranceDataSortBy",
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
    id = "ListUtteranceAnalyticsDataInput",
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
        sortBy = M.UtteranceDataSortBy,
        filters = {
            type = "list",
            member = M.AnalyticsUtteranceFilter,
        },
        maxResults = {
            type = "integer",
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
    id = "UtteranceBotResponse",
    members = {
        content = {
            type = "string",
        },
        contentType = {
            type = "string",
        },
        imageResponseCard = M.ImageResponseCard,
    },
}

M.UtteranceSpecification = {
    type = "structure",
    id = "UtteranceSpecification",
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
            type = "long",
        },
        utteranceUnderstood = {
            type = "boolean",
            traits = {
                default = false,
            },
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
            member = M.UtteranceBotResponse,
        },
    },
}

M.ListUtteranceAnalyticsDataOutput = {
    type = "structure",
    id = "ListUtteranceAnalyticsDataOutput",
    members = {
        botId = {
            type = "string",
        },
        nextToken = {
            type = "string",
        },
        utterances = {
            type = "list",
            member = M.UtteranceSpecification,
        },
    },
}

M.ListUtteranceMetricsInput = {
    type = "structure",
    id = "ListUtteranceMetricsInput",
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
            member = M.AnalyticsUtteranceMetric,
            traits = {
                required = true,
            },
        },
        binBy = {
            type = "list",
            member = M.AnalyticsBinBySpecification,
        },
        groupBy = {
            type = "list",
            member = M.AnalyticsUtteranceGroupBySpecification,
        },
        attributes = {
            type = "list",
            member = M.AnalyticsUtteranceAttribute,
        },
        filters = {
            type = "list",
            member = M.AnalyticsUtteranceFilter,
        },
        maxResults = {
            type = "integer",
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListUtteranceMetricsOutput = {
    type = "structure",
    id = "ListUtteranceMetricsOutput",
    members = {
        botId = {
            type = "string",
        },
        results = {
            type = "list",
            member = M.AnalyticsUtteranceResult,
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
    id = "SearchAssociatedTranscriptsInput",
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
            member = M.AssociatedTranscriptFilter,
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
        },
        nextIndex = {
            type = "integer",
        },
    },
}

M.SearchAssociatedTranscriptsOutput = {
    type = "structure",
    id = "SearchAssociatedTranscriptsOutput",
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
            type = "integer",
        },
        associatedTranscripts = {
            type = "list",
            member = M.AssociatedTranscript,
        },
        totalResults = {
            type = "integer",
        },
    },
}

M.StartBotAnalyzerInput = {
    type = "structure",
    id = "StartBotAnalyzerInput",
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
    id = "StartBotAnalyzerOutput",
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
    id = "StartBotRecommendationInput",
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
        transcriptSourceSetting = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TranscriptSourceSetting }),
        encryptionSetting = M.EncryptionSetting,
    },
}

M.StartBotRecommendationOutput = {
    type = "structure",
    id = "StartBotRecommendationOutput",
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
        transcriptSourceSetting = M.TranscriptSourceSetting,
        encryptionSetting = M.EncryptionSetting,
    },
}

M.StartBotResourceGenerationInput = {
    type = "structure",
    id = "StartBotResourceGenerationInput",
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
    id = "StartBotResourceGenerationOutput",
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
    id = "StartImportInput",
    members = {
        importId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ImportResourceSpecification }),
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
    id = "StartImportOutput",
    members = {
        importId = {
            type = "string",
        },
        resourceSpecification = M.ImportResourceSpecification,
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
    id = "StartTestExecutionInput",
    members = {
        testSetId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        target = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TestExecutionTarget }),
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
    id = "StartTestExecutionOutput",
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
        target = M.TestExecutionTarget,
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
    id = "StartTestSetGenerationInput",
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
        storageLocation = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TestSetStorageLocation }),
        generationDataSource = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TestSetGenerationDataSource }),
        roleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        testSetTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StartTestSetGenerationOutput = {
    type = "structure",
    id = "StartTestSetGenerationOutput",
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
        storageLocation = M.TestSetStorageLocation,
        generationDataSource = M.TestSetGenerationDataSource,
        roleArn = {
            type = "string",
        },
        testSetTags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.StopBotAnalyzerInput = {
    type = "structure",
    id = "StopBotAnalyzerInput",
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
    id = "StopBotAnalyzerOutput",
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
    id = "StopBotRecommendationInput",
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
    id = "StopBotRecommendationOutput",
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
    id = "TagResourceInput",
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
            key = { type = "string" },
            value = { type = "string" },
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
        resourceARN = {
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

M.UpdateBotInput = {
    type = "structure",
    id = "UpdateBotInput",
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
        dataPrivacy = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DataPrivacy }),
        idleSessionTTLInSeconds = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        botType = {
            type = "string",
        },
        botMembers = {
            type = "list",
            member = M.BotMember,
        },
        errorLogSettings = M.ErrorLogSettings,
    },
}

M.UpdateBotOutput = {
    type = "structure",
    id = "UpdateBotOutput",
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
        dataPrivacy = M.DataPrivacy,
        idleSessionTTLInSeconds = {
            type = "integer",
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
            member = M.BotMember,
        },
        errorLogSettings = M.ErrorLogSettings,
    },
}

M.UpdateBotAliasInput = {
    type = "structure",
    id = "UpdateBotAliasInput",
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
            key = { type = "string" },
            value = M.BotAliasLocaleSettings,
        },
        conversationLogSettings = M.ConversationLogSettings,
        sentimentAnalysisSettings = M.SentimentAnalysisSettings,
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
    id = "UpdateBotAliasOutput",
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
            key = { type = "string" },
            value = M.BotAliasLocaleSettings,
        },
        conversationLogSettings = M.ConversationLogSettings,
        sentimentAnalysisSettings = M.SentimentAnalysisSettings,
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
    id = "UpdateBotLocaleInput",
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
            type = "double",
            traits = {
                required = true,
            },
        },
        voiceSettings = M.VoiceSettings,
        unifiedSpeechSettings = M.UnifiedSpeechSettings,
        speechRecognitionSettings = M.SpeechRecognitionSettings,
        generativeAISettings = M.GenerativeAISettings,
        speechDetectionSensitivity = {
            type = "string",
        },
    },
}

M.UpdateBotLocaleOutput = {
    type = "structure",
    id = "UpdateBotLocaleOutput",
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
            type = "double",
        },
        voiceSettings = M.VoiceSettings,
        unifiedSpeechSettings = M.UnifiedSpeechSettings,
        speechRecognitionSettings = M.SpeechRecognitionSettings,
        botLocaleStatus = {
            type = "string",
        },
        failureReasons = {
            type = "list",
            member = { type = "string" },
        },
        creationDateTime = {
            type = "timestamp",
        },
        lastUpdatedDateTime = {
            type = "timestamp",
        },
        recommendedActions = {
            type = "list",
            member = { type = "string" },
        },
        generativeAISettings = M.GenerativeAISettings,
        speechDetectionSensitivity = {
            type = "string",
        },
    },
}

M.UpdateBotRecommendationInput = {
    type = "structure",
    id = "UpdateBotRecommendationInput",
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
        encryptionSetting = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EncryptionSetting }),
    },
}

M.UpdateBotRecommendationOutput = {
    type = "structure",
    id = "UpdateBotRecommendationOutput",
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
        transcriptSourceSetting = M.TranscriptSourceSetting,
        encryptionSetting = M.EncryptionSetting,
    },
}

M.UpdateExportInput = {
    type = "structure",
    id = "UpdateExportInput",
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
    id = "UpdateExportOutput",
    members = {
        exportId = {
            type = "string",
        },
        resourceSpecification = M.ExportResourceSpecification,
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
    id = "UpdateResourcePolicyInput",
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
    id = "UpdateResourcePolicyOutput",
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
    id = "UpdateSlotTypeInput",
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
            member = M.SlotTypeValue,
        },
        valueSelectionSetting = M.SlotValueSelectionSetting,
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
        externalSourceSetting = M.ExternalSourceSetting,
        compositeSlotTypeSetting = M.CompositeSlotTypeSetting,
    },
}

M.UpdateSlotTypeOutput = {
    type = "structure",
    id = "UpdateSlotTypeOutput",
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
            member = M.SlotTypeValue,
        },
        valueSelectionSetting = M.SlotValueSelectionSetting,
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
        externalSourceSetting = M.ExternalSourceSetting,
        compositeSlotTypeSetting = M.CompositeSlotTypeSetting,
    },
}

M.UpdateTestSetInput = {
    type = "structure",
    id = "UpdateTestSetInput",
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
    id = "UpdateTestSetOutput",
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
            type = "integer",
        },
        storageLocation = M.TestSetStorageLocation,
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

M.SlotValueOverride = {
    type = "structure",
    id = "SlotValueOverride",
    members = {
        shape = {
            type = "string",
        },
        value = M.SlotValue,
        values = {
            type = "list",
            member = M.SlotValueOverride,
        },
    },
}

M.IntentOverride = {
    type = "structure",
    id = "IntentOverride",
    members = {
        name = {
            type = "string",
        },
        slots = {
            type = "map",
            key = { type = "string" },
            value = M.SlotValueOverride,
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

M.UserTurnSlotOutput = {
    type = "structure",
    id = "UserTurnSlotOutput",
    members = {
        value = {
            type = "string",
        },
        values = {
            type = "list",
            member = M.UserTurnSlotOutput,
        },
        subSlots = {
            type = "map",
            key = { type = "string" },
            value = M.UserTurnSlotOutput,
        },
    },
}

M.DialogState = {
    type = "structure",
    id = "DialogState",
    members = {
        dialogAction = M.DialogAction,
        intent = M.IntentOverride,
        sessionAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.InputSessionStateSpecification = {
    type = "structure",
    id = "InputSessionStateSpecification",
    members = {
        sessionAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        activeContexts = {
            type = "list",
            member = M.ActiveContext,
        },
        runtimeHints = M.RuntimeHints,
    },
}

M.ConditionalBranch = {
    type = "structure",
    id = "ConditionalBranch",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        condition = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Condition }),
        nextStep = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DialogState }),
        response = M.ResponseSpecification,
    },
}

M.DefaultConditionalBranch = {
    type = "structure",
    id = "DefaultConditionalBranch",
    members = {
        nextStep = M.DialogState,
        response = M.ResponseSpecification,
    },
}

M.UserTurnInputSpecification = {
    type = "structure",
    id = "UserTurnInputSpecification",
    members = {
        utteranceInput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UtteranceInputSpecification }),
        requestAttributes = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        sessionState = M.InputSessionStateSpecification,
    },
}

M.UserTurnIntentOutput = {
    type = "structure",
    id = "UserTurnIntentOutput",
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
            value = M.UserTurnSlotOutput,
        },
    },
}

M.UserTurnOutputSpecification = {
    type = "structure",
    id = "UserTurnOutputSpecification",
    members = {
        intent = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserTurnIntentOutput }),
        activeContexts = {
            type = "list",
            member = M.ActiveContext,
        },
        transcript = {
            type = "string",
        },
    },
}

M.ConditionalSpecification = {
    type = "structure",
    id = "ConditionalSpecification",
    members = {
        active = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        conditionalBranches = {
            type = "list",
            member = M.ConditionalBranch,
            traits = {
                required = true,
            },
        },
        defaultBranch = setmetatable({ traits = {
            required = true,
        } }, { __index = M.DefaultConditionalBranch }),
    },
}

M.UserTurnSpecification = {
    type = "structure",
    id = "UserTurnSpecification",
    members = {
        input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserTurnInputSpecification }),
        expected = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserTurnOutputSpecification }),
    },
}

M.TurnSpecification = {
    type = "structure",
    id = "TurnSpecification",
    members = {
        agentTurn = M.AgentTurnSpecification,
        userTurn = M.UserTurnSpecification,
    },
}

M.IntentClosingSetting = {
    type = "structure",
    id = "IntentClosingSetting",
    members = {
        closingResponse = M.ResponseSpecification,
        active = {
            type = "boolean",
        },
        nextStep = M.DialogState,
        conditional = M.ConditionalSpecification,
    },
}

M.TestSetTurnRecord = {
    type = "structure",
    id = "TestSetTurnRecord",
    members = {
        recordNumber = {
            type = "long",
            traits = {
                required = true,
            },
        },
        conversationId = {
            type = "string",
        },
        turnNumber = {
            type = "integer",
        },
        turnSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TurnSpecification }),
    },
}

M.UserTurnResult = {
    type = "structure",
    id = "UserTurnResult",
    members = {
        input = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserTurnInputSpecification }),
        expectedOutput = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserTurnOutputSpecification }),
        actualOutput = M.UserTurnOutputSpecification,
        errorDetails = M.ExecutionErrorDetails,
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
        conversationLevelResult = M.ConversationLevelResultDetail,
    },
}

M.ListTestSetRecordsOutput = {
    type = "structure",
    id = "ListTestSetRecordsOutput",
    members = {
        testSetRecords = {
            type = "list",
            member = M.TestSetTurnRecord,
        },
        nextToken = {
            type = "string",
        },
    },
}

M.TestSetTurnResult = {
    type = "structure",
    id = "TestSetTurnResult",
    members = {
        agent = M.AgentTurnResult,
        user = M.UserTurnResult,
    },
}

M.UtteranceLevelTestResultItem = {
    type = "structure",
    id = "UtteranceLevelTestResultItem",
    members = {
        recordNumber = {
            type = "long",
            traits = {
                required = true,
            },
        },
        conversationId = {
            type = "string",
        },
        turnResult = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TestSetTurnResult }),
    },
}

M.UtteranceLevelTestResults = {
    type = "structure",
    id = "UtteranceLevelTestResults",
    members = {
        items = {
            type = "list",
            member = M.UtteranceLevelTestResultItem,
            traits = {
                required = true,
            },
        },
    },
}

M.TestExecutionResultItems = {
    type = "structure",
    id = "TestExecutionResultItems",
    members = {
        overallTestResults = M.OverallTestResults,
        conversationLevelTestResults = M.ConversationLevelTestResults,
        intentClassificationTestResults = M.IntentClassificationTestResults,
        intentLevelSlotResolutionTestResults = M.IntentLevelSlotResolutionTestResults,
        utteranceLevelTestResults = M.UtteranceLevelTestResults,
    },
}

M.ListTestExecutionResultItemsOutput = {
    type = "structure",
    id = "ListTestExecutionResultItemsOutput",
    members = {
        testExecutionResults = M.TestExecutionResultItems,
        nextToken = {
            type = "string",
        },
    },
}

M.PostDialogCodeHookInvocationSpecification = {
    type = "structure",
    id = "PostDialogCodeHookInvocationSpecification",
    members = {
        successResponse = M.ResponseSpecification,
        successNextStep = M.DialogState,
        successConditional = M.ConditionalSpecification,
        failureResponse = M.ResponseSpecification,
        failureNextStep = M.DialogState,
        failureConditional = M.ConditionalSpecification,
        timeoutResponse = M.ResponseSpecification,
        timeoutNextStep = M.DialogState,
        timeoutConditional = M.ConditionalSpecification,
    },
}

M.PostFulfillmentStatusSpecification = {
    type = "structure",
    id = "PostFulfillmentStatusSpecification",
    members = {
        successResponse = M.ResponseSpecification,
        failureResponse = M.ResponseSpecification,
        timeoutResponse = M.ResponseSpecification,
        successNextStep = M.DialogState,
        successConditional = M.ConditionalSpecification,
        failureNextStep = M.DialogState,
        failureConditional = M.ConditionalSpecification,
        timeoutNextStep = M.DialogState,
        timeoutConditional = M.ConditionalSpecification,
    },
}

M.DialogCodeHookInvocationSetting = {
    type = "structure",
    id = "DialogCodeHookInvocationSetting",
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
        postCodeHookSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PostDialogCodeHookInvocationSpecification }),
    },
}

M.FulfillmentCodeHookSettings = {
    type = "structure",
    id = "FulfillmentCodeHookSettings",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                default = false,
                required = true,
            },
        },
        postFulfillmentStatusSpecification = M.PostFulfillmentStatusSpecification,
        fulfillmentUpdatesSpecification = M.FulfillmentUpdatesSpecification,
        active = {
            type = "boolean",
        },
    },
}

M.InitialResponseSetting = {
    type = "structure",
    id = "InitialResponseSetting",
    members = {
        initialResponse = M.ResponseSpecification,
        nextStep = M.DialogState,
        conditional = M.ConditionalSpecification,
        codeHook = M.DialogCodeHookInvocationSetting,
    },
}

M.SlotCaptureSetting = {
    type = "structure",
    id = "SlotCaptureSetting",
    members = {
        captureResponse = M.ResponseSpecification,
        captureNextStep = M.DialogState,
        captureConditional = M.ConditionalSpecification,
        failureResponse = M.ResponseSpecification,
        failureNextStep = M.DialogState,
        failureConditional = M.ConditionalSpecification,
        codeHook = M.DialogCodeHookInvocationSetting,
        elicitationCodeHook = M.ElicitationCodeHookInvocationSetting,
    },
}

M.SlotValueElicitationSetting = {
    type = "structure",
    id = "SlotValueElicitationSetting",
    members = {
        defaultValueSpecification = M.SlotDefaultValueSpecification,
        slotConstraint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        promptSpecification = M.PromptSpecification,
        sampleUtterances = {
            type = "list",
            member = M.SampleUtterance,
        },
        waitAndContinueSpecification = M.WaitAndContinueSpecification,
        slotCaptureSetting = M.SlotCaptureSetting,
        slotResolutionSetting = M.SlotResolutionSetting,
    },
}

M.IntentConfirmationSetting = {
    type = "structure",
    id = "IntentConfirmationSetting",
    members = {
        promptSpecification = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PromptSpecification }),
        declinationResponse = M.ResponseSpecification,
        active = {
            type = "boolean",
        },
        confirmationResponse = M.ResponseSpecification,
        confirmationNextStep = M.DialogState,
        confirmationConditional = M.ConditionalSpecification,
        declinationNextStep = M.DialogState,
        declinationConditional = M.ConditionalSpecification,
        failureResponse = M.ResponseSpecification,
        failureNextStep = M.DialogState,
        failureConditional = M.ConditionalSpecification,
        codeHook = M.DialogCodeHookInvocationSetting,
        elicitationCodeHook = M.ElicitationCodeHookInvocationSetting,
    },
}

M.CreateSlotInput = {
    type = "structure",
    id = "CreateSlotInput",
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
        valueElicitationSetting = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SlotValueElicitationSetting }),
        obfuscationSetting = M.ObfuscationSetting,
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
        multipleValuesSetting = M.MultipleValuesSetting,
        subSlotSetting = M.SubSlotSetting,
    },
}

M.CreateSlotOutput = {
    type = "structure",
    id = "CreateSlotOutput",
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
        valueElicitationSetting = M.SlotValueElicitationSetting,
        obfuscationSetting = M.ObfuscationSetting,
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
        multipleValuesSetting = M.MultipleValuesSetting,
        subSlotSetting = M.SubSlotSetting,
    },
}

M.DescribeSlotOutput = {
    type = "structure",
    id = "DescribeSlotOutput",
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
        valueElicitationSetting = M.SlotValueElicitationSetting,
        obfuscationSetting = M.ObfuscationSetting,
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
        multipleValuesSetting = M.MultipleValuesSetting,
        subSlotSetting = M.SubSlotSetting,
    },
}

M.UpdateSlotInput = {
    type = "structure",
    id = "UpdateSlotInput",
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
        valueElicitationSetting = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SlotValueElicitationSetting }),
        obfuscationSetting = M.ObfuscationSetting,
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
        multipleValuesSetting = M.MultipleValuesSetting,
        subSlotSetting = M.SubSlotSetting,
    },
}

M.UpdateSlotOutput = {
    type = "structure",
    id = "UpdateSlotOutput",
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
        valueElicitationSetting = M.SlotValueElicitationSetting,
        obfuscationSetting = M.ObfuscationSetting,
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
        multipleValuesSetting = M.MultipleValuesSetting,
        subSlotSetting = M.SubSlotSetting,
    },
}

M.CreateIntentInput = {
    type = "structure",
    id = "CreateIntentInput",
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
            member = M.SampleUtterance,
        },
        dialogCodeHook = M.DialogCodeHookSettings,
        fulfillmentCodeHook = M.FulfillmentCodeHookSettings,
        intentConfirmationSetting = M.IntentConfirmationSetting,
        intentClosingSetting = M.IntentClosingSetting,
        inputContexts = {
            type = "list",
            member = M.InputContext,
        },
        outputContexts = {
            type = "list",
            member = M.OutputContext,
        },
        kendraConfiguration = M.KendraConfiguration,
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
        initialResponseSetting = M.InitialResponseSetting,
        qnAIntentConfiguration = M.QnAIntentConfiguration,
        qInConnectIntentConfiguration = M.QInConnectIntentConfiguration,
    },
}

M.CreateIntentOutput = {
    type = "structure",
    id = "CreateIntentOutput",
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
            member = M.SampleUtterance,
        },
        dialogCodeHook = M.DialogCodeHookSettings,
        fulfillmentCodeHook = M.FulfillmentCodeHookSettings,
        intentConfirmationSetting = M.IntentConfirmationSetting,
        intentClosingSetting = M.IntentClosingSetting,
        inputContexts = {
            type = "list",
            member = M.InputContext,
        },
        outputContexts = {
            type = "list",
            member = M.OutputContext,
        },
        kendraConfiguration = M.KendraConfiguration,
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
        initialResponseSetting = M.InitialResponseSetting,
        qnAIntentConfiguration = M.QnAIntentConfiguration,
        qInConnectIntentConfiguration = M.QInConnectIntentConfiguration,
    },
}

M.DescribeIntentOutput = {
    type = "structure",
    id = "DescribeIntentOutput",
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
            member = M.SampleUtterance,
        },
        dialogCodeHook = M.DialogCodeHookSettings,
        fulfillmentCodeHook = M.FulfillmentCodeHookSettings,
        slotPriorities = {
            type = "list",
            member = M.SlotPriority,
        },
        intentConfirmationSetting = M.IntentConfirmationSetting,
        intentClosingSetting = M.IntentClosingSetting,
        inputContexts = {
            type = "list",
            member = M.InputContext,
        },
        outputContexts = {
            type = "list",
            member = M.OutputContext,
        },
        kendraConfiguration = M.KendraConfiguration,
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
        initialResponseSetting = M.InitialResponseSetting,
        qnAIntentConfiguration = M.QnAIntentConfiguration,
        qInConnectIntentConfiguration = M.QInConnectIntentConfiguration,
    },
}

M.UpdateIntentInput = {
    type = "structure",
    id = "UpdateIntentInput",
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
            member = M.SampleUtterance,
        },
        dialogCodeHook = M.DialogCodeHookSettings,
        fulfillmentCodeHook = M.FulfillmentCodeHookSettings,
        slotPriorities = {
            type = "list",
            member = M.SlotPriority,
        },
        intentConfirmationSetting = M.IntentConfirmationSetting,
        intentClosingSetting = M.IntentClosingSetting,
        inputContexts = {
            type = "list",
            member = M.InputContext,
        },
        outputContexts = {
            type = "list",
            member = M.OutputContext,
        },
        kendraConfiguration = M.KendraConfiguration,
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
        initialResponseSetting = M.InitialResponseSetting,
        qnAIntentConfiguration = M.QnAIntentConfiguration,
        qInConnectIntentConfiguration = M.QInConnectIntentConfiguration,
    },
}

M.UpdateIntentOutput = {
    type = "structure",
    id = "UpdateIntentOutput",
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
            member = M.SampleUtterance,
        },
        dialogCodeHook = M.DialogCodeHookSettings,
        fulfillmentCodeHook = M.FulfillmentCodeHookSettings,
        slotPriorities = {
            type = "list",
            member = M.SlotPriority,
        },
        intentConfirmationSetting = M.IntentConfirmationSetting,
        intentClosingSetting = M.IntentClosingSetting,
        inputContexts = {
            type = "list",
            member = M.InputContext,
        },
        outputContexts = {
            type = "list",
            member = M.OutputContext,
        },
        kendraConfiguration = M.KendraConfiguration,
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
        initialResponseSetting = M.InitialResponseSetting,
        qnAIntentConfiguration = M.QnAIntentConfiguration,
        qInConnectIntentConfiguration = M.QInConnectIntentConfiguration,
    },
}

return M
