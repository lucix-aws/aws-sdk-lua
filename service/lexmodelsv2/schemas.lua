

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.lexmodelsv2"

local M = {}

M.CreateCustomVocabularyItemsList = schema.new({ type = "list", list_member = M.NewCustomVocabularyItem })

M.FailedCustomVocabularyItems = schema.new({ type = "list", list_member = M.FailedCustomVocabularyItem })

M.CustomVocabularyItems = schema.new({ type = "list", list_member = M.CustomVocabularyItem })

M.DeleteCustomVocabularyItemsList = schema.new({ type = "list", list_member = M.CustomVocabularyEntryId })

M.UpdateCustomVocabularyItemsList = schema.new({ type = "list", list_member = M.CustomVocabularyItem })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.BotMembers = schema.new({ type = "list", list_member = M.BotMember })

M.BotAliasLocaleSettingsMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.BotAliasLocaleSettings })

M.BotVersionLocaleSpecification = schema.new({ type = "map", map_key = prelude.String, map_value = M.BotVersionLocaleDetails })

M.SampleUtterancesList = schema.new({ type = "list", list_member = M.SampleUtterance })

M.InputContextsList = schema.new({ type = "list", list_member = M.InputContext })

M.OutputContextsList = schema.new({ type = "list", list_member = M.OutputContext })

M.PrincipalList = schema.new({ type = "list", list_member = M.Principal })

M.OperationList = schema.new({ type = "list", list_member = prelude.String })

M.ConditionMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ConditionKeyValueMap })

M.SlotTypeValues = schema.new({ type = "list", list_member = M.SlotTypeValue })

M.FailureReasons = schema.new({ type = "list", list_member = prelude.String })

M.BotAliasHistoryEventsList = schema.new({ type = "list", list_member = M.BotAliasHistoryEvent })

M.ParentBotNetworks = schema.new({ type = "list", list_member = M.ParentBotNetwork })

M.BotAnalyzerRecommendationList = schema.new({ type = "list", list_member = M.BotAnalyzerRecommendation })

M.BotLocaleHistoryEventsList = schema.new({ type = "list", list_member = M.BotLocaleHistoryEvent })

M.RecommendedActions = schema.new({ type = "list", list_member = prelude.String })

M.SlotPrioritiesList = schema.new({ type = "list", list_member = M.SlotPriority })

M.AggregatedUtterancesFilters = schema.new({ type = "list", list_member = M.AggregatedUtterancesFilter })

M.AggregatedUtterancesSummaryList = schema.new({ type = "list", list_member = M.AggregatedUtterancesSummary })

M.BotAliasSummaryList = schema.new({ type = "list", list_member = M.BotAliasSummary })

M.BotAliasReplicaSummaryList = schema.new({ type = "list", list_member = M.BotAliasReplicaSummary })

M.BotAnalyzerHistoryList = schema.new({ type = "list", list_member = M.BotAnalyzerHistorySummary })

M.BotLocaleFilters = schema.new({ type = "list", list_member = M.BotLocaleFilter })

M.BotLocaleSummaryList = schema.new({ type = "list", list_member = M.BotLocaleSummary })

M.BotRecommendationSummaryList = schema.new({ type = "list", list_member = M.BotRecommendationSummary })

M.BotReplicaSummaryList = schema.new({ type = "list", list_member = M.BotReplicaSummary })

M.GenerationSummaryList = schema.new({ type = "list", list_member = M.GenerationSummary })

M.BotFilters = schema.new({ type = "list", list_member = M.BotFilter })

M.BotSummaryList = schema.new({ type = "list", list_member = M.BotSummary })

M.BotVersionReplicaSummaryList = schema.new({ type = "list", list_member = M.BotVersionReplicaSummary })

M.BotVersionSummaryList = schema.new({ type = "list", list_member = M.BotVersionSummary })

M.BuiltInIntentSummaryList = schema.new({ type = "list", list_member = M.BuiltInIntentSummary })

M.BuiltInSlotTypeSummaryList = schema.new({ type = "list", list_member = M.BuiltInSlotTypeSummary })

M.ExportFilters = schema.new({ type = "list", list_member = M.ExportFilter })

M.ExportSummaryList = schema.new({ type = "list", list_member = M.ExportSummary })

M.ImportFilters = schema.new({ type = "list", list_member = M.ImportFilter })

M.ImportSummaryList = schema.new({ type = "list", list_member = M.ImportSummary })

M.AnalyticsIntentMetrics = schema.new({ type = "list", list_member = M.AnalyticsIntentMetric })

M.AnalyticsBinByList = schema.new({ type = "list", list_member = M.AnalyticsBinBySpecification })

M.AnalyticsIntentGroupByList = schema.new({ type = "list", list_member = M.AnalyticsIntentGroupBySpecification })

M.AnalyticsIntentFilters = schema.new({ type = "list", list_member = M.AnalyticsIntentFilter })

M.AnalyticsIntentResults = schema.new({ type = "list", list_member = M.AnalyticsIntentResult })

M.AnalyticsPathFilters = schema.new({ type = "list", list_member = M.AnalyticsPathFilter })

M.AnalyticsIntentNodeSummaries = schema.new({ type = "list", list_member = M.AnalyticsIntentNodeSummary })

M.IntentFilters = schema.new({ type = "list", list_member = M.IntentFilter })

M.IntentSummaryList = schema.new({ type = "list", list_member = M.IntentSummary })

M.AnalyticsIntentStageMetrics = schema.new({ type = "list", list_member = M.AnalyticsIntentStageMetric })

M.AnalyticsIntentStageGroupByList = schema.new({ type = "list", list_member = M.AnalyticsIntentStageGroupBySpecification })

M.AnalyticsIntentStageFilters = schema.new({ type = "list", list_member = M.AnalyticsIntentStageFilter })

M.AnalyticsIntentStageResults = schema.new({ type = "list", list_member = M.AnalyticsIntentStageResult })

M.RecommendedIntentSummaryList = schema.new({ type = "list", list_member = M.RecommendedIntentSummary })

M.AnalyticsSessionFilters = schema.new({ type = "list", list_member = M.AnalyticsSessionFilter })

M.SessionSpecifications = schema.new({ type = "list", list_member = M.SessionSpecification })

M.AnalyticsSessionMetrics = schema.new({ type = "list", list_member = M.AnalyticsSessionMetric })

M.AnalyticsSessionGroupByList = schema.new({ type = "list", list_member = M.AnalyticsSessionGroupBySpecification })

M.AnalyticsSessionResults = schema.new({ type = "list", list_member = M.AnalyticsSessionResult })

M.SlotFilters = schema.new({ type = "list", list_member = M.SlotFilter })

M.SlotSummaryList = schema.new({ type = "list", list_member = M.SlotSummary })

M.SlotTypeFilters = schema.new({ type = "list", list_member = M.SlotTypeFilter })

M.SlotTypeSummaryList = schema.new({ type = "list", list_member = M.SlotTypeSummary })

M.TestExecutionSummaryList = schema.new({ type = "list", list_member = M.TestExecutionSummary })

M.TestSetTurnRecordList = schema.new({ type = "list", list_member = M.TestSetTurnRecord })

M.TestSetSummaryList = schema.new({ type = "list", list_member = M.TestSetSummary })

M.AnalyticsUtteranceFilters = schema.new({ type = "list", list_member = M.AnalyticsUtteranceFilter })

M.UtteranceSpecifications = schema.new({ type = "list", list_member = M.UtteranceSpecification })

M.AnalyticsUtteranceMetrics = schema.new({ type = "list", list_member = M.AnalyticsUtteranceMetric })

M.AnalyticsUtteranceGroupByList = schema.new({ type = "list", list_member = M.AnalyticsUtteranceGroupBySpecification })

M.AnalyticsUtteranceAttributes = schema.new({ type = "list", list_member = M.AnalyticsUtteranceAttribute })

M.AnalyticsUtteranceResults = schema.new({ type = "list", list_member = M.AnalyticsUtteranceResult })

M.AssociatedTranscriptFilters = schema.new({ type = "list", list_member = M.AssociatedTranscriptFilter })

M.AssociatedTranscriptList = schema.new({ type = "list", list_member = M.AssociatedTranscript })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.TextLogSettingsList = schema.new({ type = "list", list_member = M.TextLogSetting })

M.AudioLogSettingsList = schema.new({ type = "list", list_member = M.AudioLogSetting })

M.ConditionKeyValueMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.SubSlotSpecificationMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.Specifications })

M.SubSlotTypeList = schema.new({ type = "list", list_member = M.SubSlotTypeComposition })

M.TestSetIntentDiscrepancyList = schema.new({ type = "list", list_member = M.TestSetIntentDiscrepancyItem })

M.TestSetSlotDiscrepancyList = schema.new({ type = "list", list_member = M.TestSetSlotDiscrepancyItem })

M.MessageGroupsList = schema.new({ type = "list", list_member = M.MessageGroup })

M.PromptAttemptsSpecificationMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.PromptAttemptSpecification })

M.StringMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ConditionalBranches = schema.new({ type = "list", list_member = M.ConditionalBranch })

M.SlotDefaultValueList = schema.new({ type = "list", list_member = M.SlotDefaultValue })

M.SynonymList = schema.new({ type = "list", list_member = M.SampleValue })

M.FilterValues = schema.new({ type = "list", list_member = prelude.String })

M.AnalyticsFilterValues = schema.new({ type = "list", list_member = prelude.String })

M.AnalyticsBinKeys = schema.new({ type = "list", list_member = M.AnalyticsBinKey })

M.AnalyticsIntentGroupByKeys = schema.new({ type = "list", list_member = M.AnalyticsIntentGroupByKey })

M.AnalyticsIntentMetricResults = schema.new({ type = "list", list_member = M.AnalyticsIntentMetricResult })

M.AnalyticsIntentStageGroupByKeys = schema.new({ type = "list", list_member = M.AnalyticsIntentStageGroupByKey })

M.AnalyticsIntentStageMetricResults = schema.new({ type = "list", list_member = M.AnalyticsIntentStageMetricResult })

M.InvokedIntentSamples = schema.new({ type = "list", list_member = M.InvokedIntentSample })

M.AnalyticsSessionGroupByKeys = schema.new({ type = "list", list_member = M.AnalyticsSessionGroupByKey })

M.AnalyticsSessionMetricResults = schema.new({ type = "list", list_member = M.AnalyticsSessionMetricResult })

M.OverallTestResultItemList = schema.new({ type = "list", list_member = M.OverallTestResultItem })

M.ConversationLevelTestResultItemList = schema.new({ type = "list", list_member = M.ConversationLevelTestResultItem })

M.IntentClassificationTestResultItemList = schema.new({ type = "list", list_member = M.IntentClassificationTestResultItem })

M.IntentLevelSlotResolutionTestResultItemList = schema.new({ type = "list", list_member = M.IntentLevelSlotResolutionTestResultItem })

M.UtteranceLevelTestResultItemList = schema.new({ type = "list", list_member = M.UtteranceLevelTestResultItem })

M.UtteranceBotResponses = schema.new({ type = "list", list_member = M.UtteranceBotResponse })

M.AnalyticsUtteranceGroupByKeys = schema.new({ type = "list", list_member = M.AnalyticsUtteranceGroupByKey })

M.AnalyticsUtteranceMetricResults = schema.new({ type = "list", list_member = M.AnalyticsUtteranceMetricResult })

M.AnalyticsUtteranceAttributeResults = schema.new({ type = "list", list_member = M.AnalyticsUtteranceAttributeResult })

M.SlotValueOverrideMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.SlotValueOverride })

M.OSIncludeFields = schema.new({ type = "list", list_member = prelude.String })

M.ObjectPrefixes = schema.new({ type = "list", list_member = prelude.String })

M.MessageVariationsList = schema.new({ type = "list", list_member = M.Message })

M.TestResultMatchStatusCountMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.Integer })

M.ConversationLevelIntentClassificationResults = schema.new({ type = "list", list_member = M.ConversationLevelIntentClassificationResultItem })

M.ConversationLevelSlotResolutionResults = schema.new({ type = "list", list_member = M.ConversationLevelSlotResolutionResultItem })

M.SlotResolutionTestResultItems = schema.new({ type = "list", list_member = M.SlotResolutionTestResultItem })

M.SlotValues = schema.new({ type = "list", list_member = M.SlotValueOverride })

M.ActiveContextList = schema.new({ type = "list", list_member = M.ActiveContext })

M.ButtonsList = schema.new({ type = "list", list_member = M.Button })

M.UserTurnSlotOutputMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.UserTurnSlotOutput })

M.SlotHintsIntentMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.SlotHintsSlotMap })

M.SlotHintsSlotMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.RuntimeHintDetails })

M.UserTurnSlotOutputList = schema.new({ type = "list", list_member = M.UserTurnSlotOutput })

M.RuntimeHintValuesList = schema.new({ type = "list", list_member = M.RuntimeHintValue })

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
   },
})

M.AdvancedRecognitionSetting = schema.new({
   id = id.from(_N, "AdvancedRecognitionSetting"),
   type = "structure",
   members = {
      audioRecognitionStrategy = schema.new({
         id = id.from(_N, "AdvancedRecognitionSetting", "audioRecognitionStrategy"),
         type = "string",
         name = "audioRecognitionStrategy",
         target_id = prelude.String.id,
      }),
   },
})

M.ExecutionErrorDetails = schema.new({
   id = id.from(_N, "ExecutionErrorDetails"),
   type = "structure",
   members = {
      errorCode = schema.new({
         id = id.from(_N, "ExecutionErrorDetails", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorMessage = schema.new({
         id = id.from(_N, "ExecutionErrorDetails", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AgentTurnResult = schema.new({
   id = id.from(_N, "AgentTurnResult"),
   type = "structure",
   members = {
      expectedAgentPrompt = schema.new({
         id = id.from(_N, "AgentTurnResult", "expectedAgentPrompt"),
         type = "string",
         name = "expectedAgentPrompt",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      actualAgentPrompt = schema.new({
         id = id.from(_N, "AgentTurnResult", "actualAgentPrompt"),
         type = "string",
         name = "actualAgentPrompt",
         target_id = prelude.String.id,
      }),
      errorDetails = schema.new({
         id = id.from(_N, "AgentTurnResult", "errorDetails"),
         type = "structure",
         name = "errorDetails",
         target_id = id.from(_N, "ExecutionErrorDetails"),
         target = M.ExecutionErrorDetails,
      }),
      actualElicitedSlot = schema.new({
         id = id.from(_N, "AgentTurnResult", "actualElicitedSlot"),
         type = "string",
         name = "actualElicitedSlot",
         target_id = prelude.String.id,
      }),
      actualIntent = schema.new({
         id = id.from(_N, "AgentTurnResult", "actualIntent"),
         type = "string",
         name = "actualIntent",
         target_id = prelude.String.id,
      }),
   },
})

M.AgentTurnSpecification = schema.new({
   id = id.from(_N, "AgentTurnSpecification"),
   type = "structure",
   members = {
      agentPrompt = schema.new({
         id = id.from(_N, "AgentTurnSpecification", "agentPrompt"),
         type = "string",
         name = "agentPrompt",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AggregatedUtterancesFilter = schema.new({
   id = id.from(_N, "AggregatedUtterancesFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AggregatedUtterancesFilter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "AggregatedUtterancesFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operator = schema.new({
         id = id.from(_N, "AggregatedUtterancesFilter", "operator"),
         type = "string",
         name = "operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AggregatedUtterancesSortBy = schema.new({
   id = id.from(_N, "AggregatedUtterancesSortBy"),
   type = "structure",
   members = {
      attribute = schema.new({
         id = id.from(_N, "AggregatedUtterancesSortBy", "attribute"),
         type = "string",
         name = "attribute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "AggregatedUtterancesSortBy", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AggregatedUtterancesSummary = schema.new({
   id = id.from(_N, "AggregatedUtterancesSummary"),
   type = "structure",
   members = {
      utterance = schema.new({
         id = id.from(_N, "AggregatedUtterancesSummary", "utterance"),
         type = "string",
         name = "utterance",
         target_id = prelude.String.id,
      }),
      hitCount = schema.new({
         id = id.from(_N, "AggregatedUtterancesSummary", "hitCount"),
         type = "integer",
         name = "hitCount",
         target_id = prelude.Integer.id,
      }),
      missedCount = schema.new({
         id = id.from(_N, "AggregatedUtterancesSummary", "missedCount"),
         type = "integer",
         name = "missedCount",
         target_id = prelude.Integer.id,
      }),
      utteranceFirstRecordedInAggregationDuration = schema.new({
         id = id.from(_N, "AggregatedUtterancesSummary", "utteranceFirstRecordedInAggregationDuration"),
         type = "timestamp",
         name = "utteranceFirstRecordedInAggregationDuration",
         target_id = prelude.Timestamp.id,
      }),
      utteranceLastRecordedInAggregationDuration = schema.new({
         id = id.from(_N, "AggregatedUtterancesSummary", "utteranceLastRecordedInAggregationDuration"),
         type = "timestamp",
         name = "utteranceLastRecordedInAggregationDuration",
         target_id = prelude.Timestamp.id,
      }),
      containsDataFromDeletedResources = schema.new({
         id = id.from(_N, "AggregatedUtterancesSummary", "containsDataFromDeletedResources"),
         type = "boolean",
         name = "containsDataFromDeletedResources",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.AllowedInputTypes = schema.new({
   id = id.from(_N, "AllowedInputTypes"),
   type = "structure",
   members = {
      allowAudioInput = schema.new({
         id = id.from(_N, "AllowedInputTypes", "allowAudioInput"),
         type = "boolean",
         name = "allowAudioInput",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      allowDTMFInput = schema.new({
         id = id.from(_N, "AllowedInputTypes", "allowDTMFInput"),
         type = "boolean",
         name = "allowDTMFInput",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AnalyticsBinBySpecification = schema.new({
   id = id.from(_N, "AnalyticsBinBySpecification"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsBinBySpecification", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      interval = schema.new({
         id = id.from(_N, "AnalyticsBinBySpecification", "interval"),
         type = "string",
         name = "interval",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "AnalyticsBinBySpecification", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
      }),
   },
})

M.AnalyticsBinKey = schema.new({
   id = id.from(_N, "AnalyticsBinKey"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsBinKey", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "AnalyticsBinKey", "value"),
         type = "long",
         name = "value",
         target_id = prelude.Long.id,
      }),
   },
})

M.AnalyticsIntentFilter = schema.new({
   id = id.from(_N, "AnalyticsIntentFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsIntentFilter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operator = schema.new({
         id = id.from(_N, "AnalyticsIntentFilter", "operator"),
         type = "string",
         name = "operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "AnalyticsIntentFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AnalyticsIntentGroupByKey = schema.new({
   id = id.from(_N, "AnalyticsIntentGroupByKey"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsIntentGroupByKey", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "AnalyticsIntentGroupByKey", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
      }),
   },
})

M.AnalyticsIntentGroupBySpecification = schema.new({
   id = id.from(_N, "AnalyticsIntentGroupBySpecification"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsIntentGroupBySpecification", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AnalyticsIntentMetric = schema.new({
   id = id.from(_N, "AnalyticsIntentMetric"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsIntentMetric", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      statistic = schema.new({
         id = id.from(_N, "AnalyticsIntentMetric", "statistic"),
         type = "string",
         name = "statistic",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "AnalyticsIntentMetric", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
      }),
   },
})

M.AnalyticsIntentMetricResult = schema.new({
   id = id.from(_N, "AnalyticsIntentMetricResult"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsIntentMetricResult", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      statistic = schema.new({
         id = id.from(_N, "AnalyticsIntentMetricResult", "statistic"),
         type = "string",
         name = "statistic",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "AnalyticsIntentMetricResult", "value"),
         type = "double",
         name = "value",
         target_id = prelude.Double.id,
      }),
   },
})

M.AnalyticsIntentNodeSummary = schema.new({
   id = id.from(_N, "AnalyticsIntentNodeSummary"),
   type = "structure",
   members = {
      intentName = schema.new({
         id = id.from(_N, "AnalyticsIntentNodeSummary", "intentName"),
         type = "string",
         name = "intentName",
         target_id = prelude.String.id,
      }),
      intentPath = schema.new({
         id = id.from(_N, "AnalyticsIntentNodeSummary", "intentPath"),
         type = "string",
         name = "intentPath",
         target_id = prelude.String.id,
      }),
      intentCount = schema.new({
         id = id.from(_N, "AnalyticsIntentNodeSummary", "intentCount"),
         type = "integer",
         name = "intentCount",
         target_id = prelude.Integer.id,
      }),
      intentLevel = schema.new({
         id = id.from(_N, "AnalyticsIntentNodeSummary", "intentLevel"),
         type = "integer",
         name = "intentLevel",
         target_id = prelude.Integer.id,
      }),
      nodeType = schema.new({
         id = id.from(_N, "AnalyticsIntentNodeSummary", "nodeType"),
         type = "string",
         name = "nodeType",
         target_id = prelude.String.id,
      }),
   },
})

M.AnalyticsIntentResult = schema.new({
   id = id.from(_N, "AnalyticsIntentResult"),
   type = "structure",
   members = {
      binKeys = schema.new({
         id = id.from(_N, "AnalyticsIntentResult", "binKeys"),
         type = "list",
         name = "binKeys",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsBinKey,
      }),
      groupByKeys = schema.new({
         id = id.from(_N, "AnalyticsIntentResult", "groupByKeys"),
         type = "list",
         name = "groupByKeys",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsIntentGroupByKey,
      }),
      metricsResults = schema.new({
         id = id.from(_N, "AnalyticsIntentResult", "metricsResults"),
         type = "list",
         name = "metricsResults",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsIntentMetricResult,
      }),
   },
})

M.AnalyticsIntentStageFilter = schema.new({
   id = id.from(_N, "AnalyticsIntentStageFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsIntentStageFilter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operator = schema.new({
         id = id.from(_N, "AnalyticsIntentStageFilter", "operator"),
         type = "string",
         name = "operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "AnalyticsIntentStageFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AnalyticsIntentStageGroupByKey = schema.new({
   id = id.from(_N, "AnalyticsIntentStageGroupByKey"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsIntentStageGroupByKey", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "AnalyticsIntentStageGroupByKey", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
      }),
   },
})

M.AnalyticsIntentStageGroupBySpecification = schema.new({
   id = id.from(_N, "AnalyticsIntentStageGroupBySpecification"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsIntentStageGroupBySpecification", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AnalyticsIntentStageMetric = schema.new({
   id = id.from(_N, "AnalyticsIntentStageMetric"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsIntentStageMetric", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      statistic = schema.new({
         id = id.from(_N, "AnalyticsIntentStageMetric", "statistic"),
         type = "string",
         name = "statistic",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "AnalyticsIntentStageMetric", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
      }),
   },
})

M.AnalyticsIntentStageMetricResult = schema.new({
   id = id.from(_N, "AnalyticsIntentStageMetricResult"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsIntentStageMetricResult", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      statistic = schema.new({
         id = id.from(_N, "AnalyticsIntentStageMetricResult", "statistic"),
         type = "string",
         name = "statistic",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "AnalyticsIntentStageMetricResult", "value"),
         type = "double",
         name = "value",
         target_id = prelude.Double.id,
      }),
   },
})

M.AnalyticsIntentStageResult = schema.new({
   id = id.from(_N, "AnalyticsIntentStageResult"),
   type = "structure",
   members = {
      binKeys = schema.new({
         id = id.from(_N, "AnalyticsIntentStageResult", "binKeys"),
         type = "list",
         name = "binKeys",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsBinKey,
      }),
      groupByKeys = schema.new({
         id = id.from(_N, "AnalyticsIntentStageResult", "groupByKeys"),
         type = "list",
         name = "groupByKeys",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsIntentStageGroupByKey,
      }),
      metricsResults = schema.new({
         id = id.from(_N, "AnalyticsIntentStageResult", "metricsResults"),
         type = "list",
         name = "metricsResults",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsIntentStageMetricResult,
      }),
   },
})

M.AnalyticsPathFilter = schema.new({
   id = id.from(_N, "AnalyticsPathFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsPathFilter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operator = schema.new({
         id = id.from(_N, "AnalyticsPathFilter", "operator"),
         type = "string",
         name = "operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "AnalyticsPathFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AnalyticsSessionFilter = schema.new({
   id = id.from(_N, "AnalyticsSessionFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsSessionFilter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operator = schema.new({
         id = id.from(_N, "AnalyticsSessionFilter", "operator"),
         type = "string",
         name = "operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "AnalyticsSessionFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AnalyticsSessionGroupByKey = schema.new({
   id = id.from(_N, "AnalyticsSessionGroupByKey"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsSessionGroupByKey", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "AnalyticsSessionGroupByKey", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
      }),
   },
})

M.AnalyticsSessionGroupBySpecification = schema.new({
   id = id.from(_N, "AnalyticsSessionGroupBySpecification"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsSessionGroupBySpecification", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AnalyticsSessionMetric = schema.new({
   id = id.from(_N, "AnalyticsSessionMetric"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsSessionMetric", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      statistic = schema.new({
         id = id.from(_N, "AnalyticsSessionMetric", "statistic"),
         type = "string",
         name = "statistic",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "AnalyticsSessionMetric", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
      }),
   },
})

M.AnalyticsSessionMetricResult = schema.new({
   id = id.from(_N, "AnalyticsSessionMetricResult"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsSessionMetricResult", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      statistic = schema.new({
         id = id.from(_N, "AnalyticsSessionMetricResult", "statistic"),
         type = "string",
         name = "statistic",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "AnalyticsSessionMetricResult", "value"),
         type = "double",
         name = "value",
         target_id = prelude.Double.id,
      }),
   },
})

M.AnalyticsSessionResult = schema.new({
   id = id.from(_N, "AnalyticsSessionResult"),
   type = "structure",
   members = {
      binKeys = schema.new({
         id = id.from(_N, "AnalyticsSessionResult", "binKeys"),
         type = "list",
         name = "binKeys",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsBinKey,
      }),
      groupByKeys = schema.new({
         id = id.from(_N, "AnalyticsSessionResult", "groupByKeys"),
         type = "list",
         name = "groupByKeys",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsSessionGroupByKey,
      }),
      metricsResults = schema.new({
         id = id.from(_N, "AnalyticsSessionResult", "metricsResults"),
         type = "list",
         name = "metricsResults",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsSessionMetricResult,
      }),
   },
})

M.AnalyticsUtteranceAttribute = schema.new({
   id = id.from(_N, "AnalyticsUtteranceAttribute"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsUtteranceAttribute", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AnalyticsUtteranceAttributeResult = schema.new({
   id = id.from(_N, "AnalyticsUtteranceAttributeResult"),
   type = "structure",
   members = {
      lastUsedIntent = schema.new({
         id = id.from(_N, "AnalyticsUtteranceAttributeResult", "lastUsedIntent"),
         type = "string",
         name = "lastUsedIntent",
         target_id = prelude.String.id,
      }),
   },
})

M.AnalyticsUtteranceFilter = schema.new({
   id = id.from(_N, "AnalyticsUtteranceFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsUtteranceFilter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operator = schema.new({
         id = id.from(_N, "AnalyticsUtteranceFilter", "operator"),
         type = "string",
         name = "operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "AnalyticsUtteranceFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AnalyticsUtteranceGroupByKey = schema.new({
   id = id.from(_N, "AnalyticsUtteranceGroupByKey"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsUtteranceGroupByKey", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "AnalyticsUtteranceGroupByKey", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
      }),
   },
})

M.AnalyticsUtteranceGroupBySpecification = schema.new({
   id = id.from(_N, "AnalyticsUtteranceGroupBySpecification"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsUtteranceGroupBySpecification", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AnalyticsUtteranceMetric = schema.new({
   id = id.from(_N, "AnalyticsUtteranceMetric"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsUtteranceMetric", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      statistic = schema.new({
         id = id.from(_N, "AnalyticsUtteranceMetric", "statistic"),
         type = "string",
         name = "statistic",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "AnalyticsUtteranceMetric", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
      }),
   },
})

M.AnalyticsUtteranceMetricResult = schema.new({
   id = id.from(_N, "AnalyticsUtteranceMetricResult"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AnalyticsUtteranceMetricResult", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      statistic = schema.new({
         id = id.from(_N, "AnalyticsUtteranceMetricResult", "statistic"),
         type = "string",
         name = "statistic",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "AnalyticsUtteranceMetricResult", "value"),
         type = "double",
         name = "value",
         target_id = prelude.Double.id,
      }),
   },
})

M.AnalyticsUtteranceResult = schema.new({
   id = id.from(_N, "AnalyticsUtteranceResult"),
   type = "structure",
   members = {
      binKeys = schema.new({
         id = id.from(_N, "AnalyticsUtteranceResult", "binKeys"),
         type = "list",
         name = "binKeys",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsBinKey,
      }),
      groupByKeys = schema.new({
         id = id.from(_N, "AnalyticsUtteranceResult", "groupByKeys"),
         type = "list",
         name = "groupByKeys",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsUtteranceGroupByKey,
      }),
      metricsResults = schema.new({
         id = id.from(_N, "AnalyticsUtteranceResult", "metricsResults"),
         type = "list",
         name = "metricsResults",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsUtteranceMetricResult,
      }),
      attributeResults = schema.new({
         id = id.from(_N, "AnalyticsUtteranceResult", "attributeResults"),
         type = "list",
         name = "attributeResults",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsUtteranceAttributeResult,
      }),
   },
})

M.AssociatedTranscript = schema.new({
   id = id.from(_N, "AssociatedTranscript"),
   type = "structure",
   members = {
      transcript = schema.new({
         id = id.from(_N, "AssociatedTranscript", "transcript"),
         type = "string",
         name = "transcript",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociatedTranscriptFilter = schema.new({
   id = id.from(_N, "AssociatedTranscriptFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AssociatedTranscriptFilter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "AssociatedTranscriptFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AudioSpecification = schema.new({
   id = id.from(_N, "AudioSpecification"),
   type = "structure",
   members = {
      maxLengthMs = schema.new({
         id = id.from(_N, "AudioSpecification", "maxLengthMs"),
         type = "integer",
         name = "maxLengthMs",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endTimeoutMs = schema.new({
         id = id.from(_N, "AudioSpecification", "endTimeoutMs"),
         type = "integer",
         name = "endTimeoutMs",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DTMFSpecification = schema.new({
   id = id.from(_N, "DTMFSpecification"),
   type = "structure",
   members = {
      maxLength = schema.new({
         id = id.from(_N, "DTMFSpecification", "maxLength"),
         type = "integer",
         name = "maxLength",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endTimeoutMs = schema.new({
         id = id.from(_N, "DTMFSpecification", "endTimeoutMs"),
         type = "integer",
         name = "endTimeoutMs",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      deletionCharacter = schema.new({
         id = id.from(_N, "DTMFSpecification", "deletionCharacter"),
         type = "string",
         name = "deletionCharacter",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endCharacter = schema.new({
         id = id.from(_N, "DTMFSpecification", "endCharacter"),
         type = "string",
         name = "endCharacter",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AudioAndDTMFInputSpecification = schema.new({
   id = id.from(_N, "AudioAndDTMFInputSpecification"),
   type = "structure",
   members = {
      startTimeoutMs = schema.new({
         id = id.from(_N, "AudioAndDTMFInputSpecification", "startTimeoutMs"),
         type = "integer",
         name = "startTimeoutMs",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      audioSpecification = schema.new({
         id = id.from(_N, "AudioAndDTMFInputSpecification", "audioSpecification"),
         type = "structure",
         name = "audioSpecification",
         target_id = id.from(_N, "AudioSpecification"),
         target = M.AudioSpecification,
      }),
      dtmfSpecification = schema.new({
         id = id.from(_N, "AudioAndDTMFInputSpecification", "dtmfSpecification"),
         type = "structure",
         name = "dtmfSpecification",
         target_id = id.from(_N, "DTMFSpecification"),
         target = M.DTMFSpecification,
      }),
   },
})

M.AudioFillerSettings = schema.new({
   id = id.from(_N, "AudioFillerSettings"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "AudioFillerSettings", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      audioType = schema.new({
         id = id.from(_N, "AudioFillerSettings", "audioType"),
         type = "string",
         name = "audioType",
         target_id = prelude.String.id,
      }),
      startDelayInMilliseconds = schema.new({
         id = id.from(_N, "AudioFillerSettings", "startDelayInMilliseconds"),
         type = "integer",
         name = "startDelayInMilliseconds",
         target_id = prelude.Integer.id,
      }),
      minimumPlayDurationInMilliseconds = schema.new({
         id = id.from(_N, "AudioFillerSettings", "minimumPlayDurationInMilliseconds"),
         type = "integer",
         name = "minimumPlayDurationInMilliseconds",
         target_id = prelude.Integer.id,
      }),
      responseDeliveryDelayInMilliseconds = schema.new({
         id = id.from(_N, "AudioFillerSettings", "responseDeliveryDelayInMilliseconds"),
         type = "integer",
         name = "responseDeliveryDelayInMilliseconds",
         target_id = prelude.Integer.id,
      }),
   },
})

M.S3BucketLogDestination = schema.new({
   id = id.from(_N, "S3BucketLogDestination"),
   type = "structure",
   members = {
      kmsKeyArn = schema.new({
         id = id.from(_N, "S3BucketLogDestination", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
      }),
      s3BucketArn = schema.new({
         id = id.from(_N, "S3BucketLogDestination", "s3BucketArn"),
         type = "string",
         name = "s3BucketArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      logPrefix = schema.new({
         id = id.from(_N, "S3BucketLogDestination", "logPrefix"),
         type = "string",
         name = "logPrefix",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AudioLogDestination = schema.new({
   id = id.from(_N, "AudioLogDestination"),
   type = "structure",
   members = {
      s3Bucket = schema.new({
         id = id.from(_N, "AudioLogDestination", "s3Bucket"),
         type = "structure",
         name = "s3Bucket",
         target_id = id.from(_N, "S3BucketLogDestination"),
         target = M.S3BucketLogDestination,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AudioLogSetting = schema.new({
   id = id.from(_N, "AudioLogSetting"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "AudioLogSetting", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
      destination = schema.new({
         id = id.from(_N, "AudioLogSetting", "destination"),
         type = "structure",
         name = "destination",
         target_id = id.from(_N, "AudioLogDestination"),
         target = M.AudioLogDestination,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      selectiveLoggingEnabled = schema.new({
         id = id.from(_N, "AudioLogSetting", "selectiveLoggingEnabled"),
         type = "boolean",
         name = "selectiveLoggingEnabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.NewCustomVocabularyItem = schema.new({
   id = id.from(_N, "NewCustomVocabularyItem"),
   type = "structure",
   members = {
      phrase = schema.new({
         id = id.from(_N, "NewCustomVocabularyItem", "phrase"),
         type = "string",
         name = "phrase",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      weight = schema.new({
         id = id.from(_N, "NewCustomVocabularyItem", "weight"),
         type = "integer",
         name = "weight",
         target_id = prelude.Integer.id,
      }),
      displayAs = schema.new({
         id = id.from(_N, "NewCustomVocabularyItem", "displayAs"),
         type = "string",
         name = "displayAs",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchCreateCustomVocabularyItemInput = schema.new({
   id = id.from(_N, "BatchCreateCustomVocabularyItemRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "BatchCreateCustomVocabularyItemInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "BatchCreateCustomVocabularyItemInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "BatchCreateCustomVocabularyItemInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      customVocabularyItemList = schema.new({
         id = id.from(_N, "BatchCreateCustomVocabularyItemInput", "customVocabularyItemList"),
         type = "list",
         name = "customVocabularyItemList",
         target_id = prelude.Document.id,
         list_member = M.NewCustomVocabularyItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FailedCustomVocabularyItem = schema.new({
   id = id.from(_N, "FailedCustomVocabularyItem"),
   type = "structure",
   members = {
      itemId = schema.new({
         id = id.from(_N, "FailedCustomVocabularyItem", "itemId"),
         type = "string",
         name = "itemId",
         target_id = prelude.String.id,
      }),
      errorMessage = schema.new({
         id = id.from(_N, "FailedCustomVocabularyItem", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
      }),
      errorCode = schema.new({
         id = id.from(_N, "FailedCustomVocabularyItem", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
      }),
   },
})

M.CustomVocabularyItem = schema.new({
   id = id.from(_N, "CustomVocabularyItem"),
   type = "structure",
   members = {
      itemId = schema.new({
         id = id.from(_N, "CustomVocabularyItem", "itemId"),
         type = "string",
         name = "itemId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      phrase = schema.new({
         id = id.from(_N, "CustomVocabularyItem", "phrase"),
         type = "string",
         name = "phrase",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      weight = schema.new({
         id = id.from(_N, "CustomVocabularyItem", "weight"),
         type = "integer",
         name = "weight",
         target_id = prelude.Integer.id,
      }),
      displayAs = schema.new({
         id = id.from(_N, "CustomVocabularyItem", "displayAs"),
         type = "string",
         name = "displayAs",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchCreateCustomVocabularyItemOutput = schema.new({
   id = id.from(_N, "BatchCreateCustomVocabularyItemResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "BatchCreateCustomVocabularyItemOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "BatchCreateCustomVocabularyItemOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "BatchCreateCustomVocabularyItemOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      errors = schema.new({
         id = id.from(_N, "BatchCreateCustomVocabularyItemOutput", "errors"),
         type = "list",
         name = "errors",
         target_id = prelude.Document.id,
         list_member = M.FailedCustomVocabularyItem,
      }),
      resources = schema.new({
         id = id.from(_N, "BatchCreateCustomVocabularyItemOutput", "resources"),
         type = "list",
         name = "resources",
         target_id = prelude.Document.id,
         list_member = M.CustomVocabularyItem,
      }),
   },
})

M.InternalServerException = schema.new({
   id = id.from(_N, "InternalServerException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InternalServerException", "message"),
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

M.ServiceQuotaExceededException = schema.new({
   id = id.from(_N, "ServiceQuotaExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "message"),
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
      retryAfterSeconds = schema.new({
         id = id.from(_N, "ThrottlingException", "retryAfterSeconds"),
         type = "integer",
         name = "retryAfterSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_HEADER] = { name = "Retry-After" },
         },
      }),
      message = schema.new({
         id = id.from(_N, "ThrottlingException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ValidationException = schema.new({
   id = id.from(_N, "ValidationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ValidationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CustomVocabularyEntryId = schema.new({
   id = id.from(_N, "CustomVocabularyEntryId"),
   type = "structure",
   members = {
      itemId = schema.new({
         id = id.from(_N, "CustomVocabularyEntryId", "itemId"),
         type = "string",
         name = "itemId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchDeleteCustomVocabularyItemInput = schema.new({
   id = id.from(_N, "BatchDeleteCustomVocabularyItemRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "BatchDeleteCustomVocabularyItemInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "BatchDeleteCustomVocabularyItemInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "BatchDeleteCustomVocabularyItemInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      customVocabularyItemList = schema.new({
         id = id.from(_N, "BatchDeleteCustomVocabularyItemInput", "customVocabularyItemList"),
         type = "list",
         name = "customVocabularyItemList",
         target_id = prelude.Document.id,
         list_member = M.CustomVocabularyEntryId,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchDeleteCustomVocabularyItemOutput = schema.new({
   id = id.from(_N, "BatchDeleteCustomVocabularyItemResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "BatchDeleteCustomVocabularyItemOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "BatchDeleteCustomVocabularyItemOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "BatchDeleteCustomVocabularyItemOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      errors = schema.new({
         id = id.from(_N, "BatchDeleteCustomVocabularyItemOutput", "errors"),
         type = "list",
         name = "errors",
         target_id = prelude.Document.id,
         list_member = M.FailedCustomVocabularyItem,
      }),
      resources = schema.new({
         id = id.from(_N, "BatchDeleteCustomVocabularyItemOutput", "resources"),
         type = "list",
         name = "resources",
         target_id = prelude.Document.id,
         list_member = M.CustomVocabularyItem,
      }),
   },
})

M.BatchUpdateCustomVocabularyItemInput = schema.new({
   id = id.from(_N, "BatchUpdateCustomVocabularyItemRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "BatchUpdateCustomVocabularyItemInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "BatchUpdateCustomVocabularyItemInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "BatchUpdateCustomVocabularyItemInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      customVocabularyItemList = schema.new({
         id = id.from(_N, "BatchUpdateCustomVocabularyItemInput", "customVocabularyItemList"),
         type = "list",
         name = "customVocabularyItemList",
         target_id = prelude.Document.id,
         list_member = M.CustomVocabularyItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchUpdateCustomVocabularyItemOutput = schema.new({
   id = id.from(_N, "BatchUpdateCustomVocabularyItemResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "BatchUpdateCustomVocabularyItemOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "BatchUpdateCustomVocabularyItemOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "BatchUpdateCustomVocabularyItemOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      errors = schema.new({
         id = id.from(_N, "BatchUpdateCustomVocabularyItemOutput", "errors"),
         type = "list",
         name = "errors",
         target_id = prelude.Document.id,
         list_member = M.FailedCustomVocabularyItem,
      }),
      resources = schema.new({
         id = id.from(_N, "BatchUpdateCustomVocabularyItemOutput", "resources"),
         type = "list",
         name = "resources",
         target_id = prelude.Document.id,
         list_member = M.CustomVocabularyItem,
      }),
   },
})

M.BedrockGuardrailConfiguration = schema.new({
   id = id.from(_N, "BedrockGuardrailConfiguration"),
   type = "structure",
   members = {
      identifier = schema.new({
         id = id.from(_N, "BedrockGuardrailConfiguration", "identifier"),
         type = "string",
         name = "identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      version = schema.new({
         id = id.from(_N, "BedrockGuardrailConfiguration", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BedrockKnowledgeStoreExactResponseFields = schema.new({
   id = id.from(_N, "BedrockKnowledgeStoreExactResponseFields"),
   type = "structure",
   members = {
      answerField = schema.new({
         id = id.from(_N, "BedrockKnowledgeStoreExactResponseFields", "answerField"),
         type = "string",
         name = "answerField",
         target_id = prelude.String.id,
      }),
   },
})

M.BedrockKnowledgeStoreConfiguration = schema.new({
   id = id.from(_N, "BedrockKnowledgeStoreConfiguration"),
   type = "structure",
   members = {
      bedrockKnowledgeBaseArn = schema.new({
         id = id.from(_N, "BedrockKnowledgeStoreConfiguration", "bedrockKnowledgeBaseArn"),
         type = "string",
         name = "bedrockKnowledgeBaseArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      exactResponse = schema.new({
         id = id.from(_N, "BedrockKnowledgeStoreConfiguration", "exactResponse"),
         type = "boolean",
         name = "exactResponse",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      exactResponseFields = schema.new({
         id = id.from(_N, "BedrockKnowledgeStoreConfiguration", "exactResponseFields"),
         type = "structure",
         name = "exactResponseFields",
         target_id = id.from(_N, "BedrockKnowledgeStoreExactResponseFields"),
         target = M.BedrockKnowledgeStoreExactResponseFields,
      }),
   },
})

M.BedrockModelSpecification = schema.new({
   id = id.from(_N, "BedrockModelSpecification"),
   type = "structure",
   members = {
      modelArn = schema.new({
         id = id.from(_N, "BedrockModelSpecification", "modelArn"),
         type = "string",
         name = "modelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      guardrail = schema.new({
         id = id.from(_N, "BedrockModelSpecification", "guardrail"),
         type = "structure",
         name = "guardrail",
         target_id = id.from(_N, "BedrockGuardrailConfiguration"),
         target = M.BedrockGuardrailConfiguration,
      }),
      traceStatus = schema.new({
         id = id.from(_N, "BedrockModelSpecification", "traceStatus"),
         type = "string",
         name = "traceStatus",
         target_id = prelude.String.id,
      }),
      customPrompt = schema.new({
         id = id.from(_N, "BedrockModelSpecification", "customPrompt"),
         type = "string",
         name = "customPrompt",
         target_id = prelude.String.id,
      }),
   },
})

M.BotAliasHistoryEvent = schema.new({
   id = id.from(_N, "BotAliasHistoryEvent"),
   type = "structure",
   members = {
      botVersion = schema.new({
         id = id.from(_N, "BotAliasHistoryEvent", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      startDate = schema.new({
         id = id.from(_N, "BotAliasHistoryEvent", "startDate"),
         type = "timestamp",
         name = "startDate",
         target_id = prelude.Timestamp.id,
      }),
      endDate = schema.new({
         id = id.from(_N, "BotAliasHistoryEvent", "endDate"),
         type = "timestamp",
         name = "endDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.LambdaCodeHook = schema.new({
   id = id.from(_N, "LambdaCodeHook"),
   type = "structure",
   members = {
      lambdaARN = schema.new({
         id = id.from(_N, "LambdaCodeHook", "lambdaARN"),
         type = "string",
         name = "lambdaARN",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      codeHookInterfaceVersion = schema.new({
         id = id.from(_N, "LambdaCodeHook", "codeHookInterfaceVersion"),
         type = "string",
         name = "codeHookInterfaceVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CodeHookSpecification = schema.new({
   id = id.from(_N, "CodeHookSpecification"),
   type = "structure",
   members = {
      lambdaCodeHook = schema.new({
         id = id.from(_N, "CodeHookSpecification", "lambdaCodeHook"),
         type = "structure",
         name = "lambdaCodeHook",
         target_id = id.from(_N, "LambdaCodeHook"),
         target = M.LambdaCodeHook,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BotAliasLocaleSettings = schema.new({
   id = id.from(_N, "BotAliasLocaleSettings"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "BotAliasLocaleSettings", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
      codeHookSpecification = schema.new({
         id = id.from(_N, "BotAliasLocaleSettings", "codeHookSpecification"),
         type = "structure",
         name = "codeHookSpecification",
         target_id = id.from(_N, "CodeHookSpecification"),
         target = M.CodeHookSpecification,
      }),
   },
})

M.BotAliasReplicaSummary = schema.new({
   id = id.from(_N, "BotAliasReplicaSummary"),
   type = "structure",
   members = {
      botAliasId = schema.new({
         id = id.from(_N, "BotAliasReplicaSummary", "botAliasId"),
         type = "string",
         name = "botAliasId",
         target_id = prelude.String.id,
      }),
      botAliasReplicationStatus = schema.new({
         id = id.from(_N, "BotAliasReplicaSummary", "botAliasReplicationStatus"),
         type = "string",
         name = "botAliasReplicationStatus",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "BotAliasReplicaSummary", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "BotAliasReplicaSummary", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "BotAliasReplicaSummary", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      failureReasons = schema.new({
         id = id.from(_N, "BotAliasReplicaSummary", "failureReasons"),
         type = "list",
         name = "failureReasons",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.BotAliasSummary = schema.new({
   id = id.from(_N, "BotAliasSummary"),
   type = "structure",
   members = {
      botAliasId = schema.new({
         id = id.from(_N, "BotAliasSummary", "botAliasId"),
         type = "string",
         name = "botAliasId",
         target_id = prelude.String.id,
      }),
      botAliasName = schema.new({
         id = id.from(_N, "BotAliasSummary", "botAliasName"),
         type = "string",
         name = "botAliasName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "BotAliasSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "BotAliasSummary", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      botAliasStatus = schema.new({
         id = id.from(_N, "BotAliasSummary", "botAliasStatus"),
         type = "string",
         name = "botAliasStatus",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "BotAliasSummary", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "BotAliasSummary", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.BotAliasTestExecutionTarget = schema.new({
   id = id.from(_N, "BotAliasTestExecutionTarget"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "BotAliasTestExecutionTarget", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      botAliasId = schema.new({
         id = id.from(_N, "BotAliasTestExecutionTarget", "botAliasId"),
         type = "string",
         name = "botAliasId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "BotAliasTestExecutionTarget", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BotAnalyzerHistorySummary = schema.new({
   id = id.from(_N, "BotAnalyzerHistorySummary"),
   type = "structure",
   members = {
      botAnalyzerStatus = schema.new({
         id = id.from(_N, "BotAnalyzerHistorySummary", "botAnalyzerStatus"),
         type = "string",
         name = "botAnalyzerStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "BotAnalyzerHistorySummary", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      botAnalyzerRequestId = schema.new({
         id = id.from(_N, "BotAnalyzerHistorySummary", "botAnalyzerRequestId"),
         type = "string",
         name = "botAnalyzerRequestId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IssueLocation = schema.new({
   id = id.from(_N, "IssueLocation"),
   type = "structure",
   members = {
      botLocale = schema.new({
         id = id.from(_N, "IssueLocation", "botLocale"),
         type = "string",
         name = "botLocale",
         target_id = prelude.String.id,
      }),
      intentId = schema.new({
         id = id.from(_N, "IssueLocation", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
      }),
      slotId = schema.new({
         id = id.from(_N, "IssueLocation", "slotId"),
         type = "string",
         name = "slotId",
         target_id = prelude.String.id,
      }),
   },
})

M.BotAnalyzerRecommendation = schema.new({
   id = id.from(_N, "BotAnalyzerRecommendation"),
   type = "structure",
   members = {
      issueLocation = schema.new({
         id = id.from(_N, "BotAnalyzerRecommendation", "issueLocation"),
         type = "structure",
         name = "issueLocation",
         target_id = id.from(_N, "IssueLocation"),
         target = M.IssueLocation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      priority = schema.new({
         id = id.from(_N, "BotAnalyzerRecommendation", "priority"),
         type = "string",
         name = "priority",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      issueDescription = schema.new({
         id = id.from(_N, "BotAnalyzerRecommendation", "issueDescription"),
         type = "string",
         name = "issueDescription",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      proposedFix = schema.new({
         id = id.from(_N, "BotAnalyzerRecommendation", "proposedFix"),
         type = "string",
         name = "proposedFix",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BotExportSpecification = schema.new({
   id = id.from(_N, "BotExportSpecification"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "BotExportSpecification", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "BotExportSpecification", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BotFilter = schema.new({
   id = id.from(_N, "BotFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "BotFilter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "BotFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operator = schema.new({
         id = id.from(_N, "BotFilter", "operator"),
         type = "string",
         name = "operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DataPrivacy = schema.new({
   id = id.from(_N, "DataPrivacy"),
   type = "structure",
   members = {
      childDirected = schema.new({
         id = id.from(_N, "DataPrivacy", "childDirected"),
         type = "boolean",
         name = "childDirected",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.ErrorLogSettings = schema.new({
   id = id.from(_N, "ErrorLogSettings"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "ErrorLogSettings", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BotImportSpecification = schema.new({
   id = id.from(_N, "BotImportSpecification"),
   type = "structure",
   members = {
      botName = schema.new({
         id = id.from(_N, "BotImportSpecification", "botName"),
         type = "string",
         name = "botName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "BotImportSpecification", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      dataPrivacy = schema.new({
         id = id.from(_N, "BotImportSpecification", "dataPrivacy"),
         type = "structure",
         name = "dataPrivacy",
         target_id = id.from(_N, "DataPrivacy"),
         target = M.DataPrivacy,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorLogSettings = schema.new({
         id = id.from(_N, "BotImportSpecification", "errorLogSettings"),
         type = "structure",
         name = "errorLogSettings",
         target_id = id.from(_N, "ErrorLogSettings"),
         target = M.ErrorLogSettings,
      }),
      idleSessionTTLInSeconds = schema.new({
         id = id.from(_N, "BotImportSpecification", "idleSessionTTLInSeconds"),
         type = "integer",
         name = "idleSessionTTLInSeconds",
         target_id = prelude.Integer.id,
      }),
      botTags = schema.new({
         id = id.from(_N, "BotImportSpecification", "botTags"),
         type = "map",
         name = "botTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      testBotAliasTags = schema.new({
         id = id.from(_N, "BotImportSpecification", "testBotAliasTags"),
         type = "map",
         name = "testBotAliasTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.BotLocaleExportSpecification = schema.new({
   id = id.from(_N, "BotLocaleExportSpecification"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "BotLocaleExportSpecification", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "BotLocaleExportSpecification", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "BotLocaleExportSpecification", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BotLocaleFilter = schema.new({
   id = id.from(_N, "BotLocaleFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "BotLocaleFilter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "BotLocaleFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operator = schema.new({
         id = id.from(_N, "BotLocaleFilter", "operator"),
         type = "string",
         name = "operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BotLocaleHistoryEvent = schema.new({
   id = id.from(_N, "BotLocaleHistoryEvent"),
   type = "structure",
   members = {
      event = schema.new({
         id = id.from(_N, "BotLocaleHistoryEvent", "event"),
         type = "string",
         name = "event",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      eventDate = schema.new({
         id = id.from(_N, "BotLocaleHistoryEvent", "eventDate"),
         type = "timestamp",
         name = "eventDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeepgramSpeechModelConfig = schema.new({
   id = id.from(_N, "DeepgramSpeechModelConfig"),
   type = "structure",
   members = {
      apiTokenSecretArn = schema.new({
         id = id.from(_N, "DeepgramSpeechModelConfig", "apiTokenSecretArn"),
         type = "string",
         name = "apiTokenSecretArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      modelId = schema.new({
         id = id.from(_N, "DeepgramSpeechModelConfig", "modelId"),
         type = "string",
         name = "modelId",
         target_id = prelude.String.id,
      }),
   },
})

M.SpeechModelConfig = schema.new({
   id = id.from(_N, "SpeechModelConfig"),
   type = "structure",
   members = {
      deepgramConfig = schema.new({
         id = id.from(_N, "SpeechModelConfig", "deepgramConfig"),
         type = "structure",
         name = "deepgramConfig",
         target_id = id.from(_N, "DeepgramSpeechModelConfig"),
         target = M.DeepgramSpeechModelConfig,
      }),
   },
})

M.SpeechRecognitionSettings = schema.new({
   id = id.from(_N, "SpeechRecognitionSettings"),
   type = "structure",
   members = {
      speechModelPreference = schema.new({
         id = id.from(_N, "SpeechRecognitionSettings", "speechModelPreference"),
         type = "string",
         name = "speechModelPreference",
         target_id = prelude.String.id,
      }),
      speechModelConfig = schema.new({
         id = id.from(_N, "SpeechRecognitionSettings", "speechModelConfig"),
         type = "structure",
         name = "speechModelConfig",
         target_id = id.from(_N, "SpeechModelConfig"),
         target = M.SpeechModelConfig,
      }),
   },
})

M.SpeechFoundationModel = schema.new({
   id = id.from(_N, "SpeechFoundationModel"),
   type = "structure",
   members = {
      modelArn = schema.new({
         id = id.from(_N, "SpeechFoundationModel", "modelArn"),
         type = "string",
         name = "modelArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      voiceId = schema.new({
         id = id.from(_N, "SpeechFoundationModel", "voiceId"),
         type = "string",
         name = "voiceId",
         target_id = prelude.String.id,
      }),
   },
})

M.UnifiedSpeechSettings = schema.new({
   id = id.from(_N, "UnifiedSpeechSettings"),
   type = "structure",
   members = {
      speechFoundationModel = schema.new({
         id = id.from(_N, "UnifiedSpeechSettings", "speechFoundationModel"),
         type = "structure",
         name = "speechFoundationModel",
         target_id = id.from(_N, "SpeechFoundationModel"),
         target = M.SpeechFoundationModel,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.VoiceSettings = schema.new({
   id = id.from(_N, "VoiceSettings"),
   type = "structure",
   members = {
      engine = schema.new({
         id = id.from(_N, "VoiceSettings", "engine"),
         type = "string",
         name = "engine",
         target_id = prelude.String.id,
      }),
      voiceId = schema.new({
         id = id.from(_N, "VoiceSettings", "voiceId"),
         type = "string",
         name = "voiceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BotLocaleImportSpecification = schema.new({
   id = id.from(_N, "BotLocaleImportSpecification"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "BotLocaleImportSpecification", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "BotLocaleImportSpecification", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "BotLocaleImportSpecification", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nluIntentConfidenceThreshold = schema.new({
         id = id.from(_N, "BotLocaleImportSpecification", "nluIntentConfidenceThreshold"),
         type = "double",
         name = "nluIntentConfidenceThreshold",
         target_id = prelude.Double.id,
      }),
      voiceSettings = schema.new({
         id = id.from(_N, "BotLocaleImportSpecification", "voiceSettings"),
         type = "structure",
         name = "voiceSettings",
         target_id = id.from(_N, "VoiceSettings"),
         target = M.VoiceSettings,
      }),
      speechRecognitionSettings = schema.new({
         id = id.from(_N, "BotLocaleImportSpecification", "speechRecognitionSettings"),
         type = "structure",
         name = "speechRecognitionSettings",
         target_id = id.from(_N, "SpeechRecognitionSettings"),
         target = M.SpeechRecognitionSettings,
      }),
      speechDetectionSensitivity = schema.new({
         id = id.from(_N, "BotLocaleImportSpecification", "speechDetectionSensitivity"),
         type = "string",
         name = "speechDetectionSensitivity",
         target_id = prelude.String.id,
      }),
      unifiedSpeechSettings = schema.new({
         id = id.from(_N, "BotLocaleImportSpecification", "unifiedSpeechSettings"),
         type = "structure",
         name = "unifiedSpeechSettings",
         target_id = id.from(_N, "UnifiedSpeechSettings"),
         target = M.UnifiedSpeechSettings,
      }),
      audioFillerSettings = schema.new({
         id = id.from(_N, "BotLocaleImportSpecification", "audioFillerSettings"),
         type = "structure",
         name = "audioFillerSettings",
         target_id = id.from(_N, "AudioFillerSettings"),
         target = M.AudioFillerSettings,
      }),
   },
})

M.BotLocaleSortBy = schema.new({
   id = id.from(_N, "BotLocaleSortBy"),
   type = "structure",
   members = {
      attribute = schema.new({
         id = id.from(_N, "BotLocaleSortBy", "attribute"),
         type = "string",
         name = "attribute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "BotLocaleSortBy", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BotLocaleSummary = schema.new({
   id = id.from(_N, "BotLocaleSummary"),
   type = "structure",
   members = {
      localeId = schema.new({
         id = id.from(_N, "BotLocaleSummary", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      localeName = schema.new({
         id = id.from(_N, "BotLocaleSummary", "localeName"),
         type = "string",
         name = "localeName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "BotLocaleSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      botLocaleStatus = schema.new({
         id = id.from(_N, "BotLocaleSummary", "botLocaleStatus"),
         type = "string",
         name = "botLocaleStatus",
         target_id = prelude.String.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "BotLocaleSummary", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastBuildSubmittedDateTime = schema.new({
         id = id.from(_N, "BotLocaleSummary", "lastBuildSubmittedDateTime"),
         type = "timestamp",
         name = "lastBuildSubmittedDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.BotMember = schema.new({
   id = id.from(_N, "BotMember"),
   type = "structure",
   members = {
      botMemberId = schema.new({
         id = id.from(_N, "BotMember", "botMemberId"),
         type = "string",
         name = "botMemberId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      botMemberName = schema.new({
         id = id.from(_N, "BotMember", "botMemberName"),
         type = "string",
         name = "botMemberName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      botMemberAliasId = schema.new({
         id = id.from(_N, "BotMember", "botMemberAliasId"),
         type = "string",
         name = "botMemberAliasId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      botMemberAliasName = schema.new({
         id = id.from(_N, "BotMember", "botMemberAliasName"),
         type = "string",
         name = "botMemberAliasName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      botMemberVersion = schema.new({
         id = id.from(_N, "BotMember", "botMemberVersion"),
         type = "string",
         name = "botMemberVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IntentStatistics = schema.new({
   id = id.from(_N, "IntentStatistics"),
   type = "structure",
   members = {
      discoveredIntentCount = schema.new({
         id = id.from(_N, "IntentStatistics", "discoveredIntentCount"),
         type = "integer",
         name = "discoveredIntentCount",
         target_id = prelude.Integer.id,
      }),
   },
})

M.SlotTypeStatistics = schema.new({
   id = id.from(_N, "SlotTypeStatistics"),
   type = "structure",
   members = {
      discoveredSlotTypeCount = schema.new({
         id = id.from(_N, "SlotTypeStatistics", "discoveredSlotTypeCount"),
         type = "integer",
         name = "discoveredSlotTypeCount",
         target_id = prelude.Integer.id,
      }),
   },
})

M.BotRecommendationResultStatistics = schema.new({
   id = id.from(_N, "BotRecommendationResultStatistics"),
   type = "structure",
   members = {
      intents = schema.new({
         id = id.from(_N, "BotRecommendationResultStatistics", "intents"),
         type = "structure",
         name = "intents",
         target_id = id.from(_N, "IntentStatistics"),
         target = M.IntentStatistics,
      }),
      slotTypes = schema.new({
         id = id.from(_N, "BotRecommendationResultStatistics", "slotTypes"),
         type = "structure",
         name = "slotTypes",
         target_id = id.from(_N, "SlotTypeStatistics"),
         target = M.SlotTypeStatistics,
      }),
   },
})

M.BotRecommendationResults = schema.new({
   id = id.from(_N, "BotRecommendationResults"),
   type = "structure",
   members = {
      botLocaleExportUrl = schema.new({
         id = id.from(_N, "BotRecommendationResults", "botLocaleExportUrl"),
         type = "string",
         name = "botLocaleExportUrl",
         target_id = prelude.String.id,
      }),
      associatedTranscriptsUrl = schema.new({
         id = id.from(_N, "BotRecommendationResults", "associatedTranscriptsUrl"),
         type = "string",
         name = "associatedTranscriptsUrl",
         target_id = prelude.String.id,
      }),
      statistics = schema.new({
         id = id.from(_N, "BotRecommendationResults", "statistics"),
         type = "structure",
         name = "statistics",
         target_id = id.from(_N, "BotRecommendationResultStatistics"),
         target = M.BotRecommendationResultStatistics,
      }),
   },
})

M.BotRecommendationSummary = schema.new({
   id = id.from(_N, "BotRecommendationSummary"),
   type = "structure",
   members = {
      botRecommendationStatus = schema.new({
         id = id.from(_N, "BotRecommendationSummary", "botRecommendationStatus"),
         type = "string",
         name = "botRecommendationStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      botRecommendationId = schema.new({
         id = id.from(_N, "BotRecommendationSummary", "botRecommendationId"),
         type = "string",
         name = "botRecommendationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "BotRecommendationSummary", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "BotRecommendationSummary", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.BotReplicaSummary = schema.new({
   id = id.from(_N, "BotReplicaSummary"),
   type = "structure",
   members = {
      replicaRegion = schema.new({
         id = id.from(_N, "BotReplicaSummary", "replicaRegion"),
         type = "string",
         name = "replicaRegion",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "BotReplicaSummary", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      botReplicaStatus = schema.new({
         id = id.from(_N, "BotReplicaSummary", "botReplicaStatus"),
         type = "string",
         name = "botReplicaStatus",
         target_id = prelude.String.id,
      }),
      failureReasons = schema.new({
         id = id.from(_N, "BotReplicaSummary", "failureReasons"),
         type = "list",
         name = "failureReasons",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.BotSortBy = schema.new({
   id = id.from(_N, "BotSortBy"),
   type = "structure",
   members = {
      attribute = schema.new({
         id = id.from(_N, "BotSortBy", "attribute"),
         type = "string",
         name = "attribute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "BotSortBy", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BotSummary = schema.new({
   id = id.from(_N, "BotSummary"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "BotSummary", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botName = schema.new({
         id = id.from(_N, "BotSummary", "botName"),
         type = "string",
         name = "botName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "BotSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      botStatus = schema.new({
         id = id.from(_N, "BotSummary", "botStatus"),
         type = "string",
         name = "botStatus",
         target_id = prelude.String.id,
      }),
      latestBotVersion = schema.new({
         id = id.from(_N, "BotSummary", "latestBotVersion"),
         type = "string",
         name = "latestBotVersion",
         target_id = prelude.String.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "BotSummary", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      botType = schema.new({
         id = id.from(_N, "BotSummary", "botType"),
         type = "string",
         name = "botType",
         target_id = prelude.String.id,
      }),
   },
})

M.BotVersionLocaleDetails = schema.new({
   id = id.from(_N, "BotVersionLocaleDetails"),
   type = "structure",
   members = {
      sourceBotVersion = schema.new({
         id = id.from(_N, "BotVersionLocaleDetails", "sourceBotVersion"),
         type = "string",
         name = "sourceBotVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BotVersionReplicaSortBy = schema.new({
   id = id.from(_N, "BotVersionReplicaSortBy"),
   type = "structure",
   members = {
      attribute = schema.new({
         id = id.from(_N, "BotVersionReplicaSortBy", "attribute"),
         type = "string",
         name = "attribute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "BotVersionReplicaSortBy", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BotVersionReplicaSummary = schema.new({
   id = id.from(_N, "BotVersionReplicaSummary"),
   type = "structure",
   members = {
      botVersion = schema.new({
         id = id.from(_N, "BotVersionReplicaSummary", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      botVersionReplicationStatus = schema.new({
         id = id.from(_N, "BotVersionReplicaSummary", "botVersionReplicationStatus"),
         type = "string",
         name = "botVersionReplicationStatus",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "BotVersionReplicaSummary", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      failureReasons = schema.new({
         id = id.from(_N, "BotVersionReplicaSummary", "failureReasons"),
         type = "list",
         name = "failureReasons",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.BotVersionSortBy = schema.new({
   id = id.from(_N, "BotVersionSortBy"),
   type = "structure",
   members = {
      attribute = schema.new({
         id = id.from(_N, "BotVersionSortBy", "attribute"),
         type = "string",
         name = "attribute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "BotVersionSortBy", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BotVersionSummary = schema.new({
   id = id.from(_N, "BotVersionSummary"),
   type = "structure",
   members = {
      botName = schema.new({
         id = id.from(_N, "BotVersionSummary", "botName"),
         type = "string",
         name = "botName",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "BotVersionSummary", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "BotVersionSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      botStatus = schema.new({
         id = id.from(_N, "BotVersionSummary", "botStatus"),
         type = "string",
         name = "botStatus",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "BotVersionSummary", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.BuildBotLocaleInput = schema.new({
   id = id.from(_N, "BuildBotLocaleRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "BuildBotLocaleInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "BuildBotLocaleInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "BuildBotLocaleInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.BuildBotLocaleOutput = schema.new({
   id = id.from(_N, "BuildBotLocaleResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "BuildBotLocaleOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "BuildBotLocaleOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "BuildBotLocaleOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      botLocaleStatus = schema.new({
         id = id.from(_N, "BuildBotLocaleOutput", "botLocaleStatus"),
         type = "string",
         name = "botLocaleStatus",
         target_id = prelude.String.id,
      }),
      lastBuildSubmittedDateTime = schema.new({
         id = id.from(_N, "BuildBotLocaleOutput", "lastBuildSubmittedDateTime"),
         type = "timestamp",
         name = "lastBuildSubmittedDateTime",
         target_id = prelude.Timestamp.id,
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

M.PreconditionFailedException = schema.new({
   id = id.from(_N, "PreconditionFailedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "PreconditionFailedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DescriptiveBotBuilderSpecification = schema.new({
   id = id.from(_N, "DescriptiveBotBuilderSpecification"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "DescriptiveBotBuilderSpecification", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
      bedrockModelSpecification = schema.new({
         id = id.from(_N, "DescriptiveBotBuilderSpecification", "bedrockModelSpecification"),
         type = "structure",
         name = "bedrockModelSpecification",
         target_id = id.from(_N, "BedrockModelSpecification"),
         target = M.BedrockModelSpecification,
      }),
   },
})

M.SampleUtteranceGenerationSpecification = schema.new({
   id = id.from(_N, "SampleUtteranceGenerationSpecification"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "SampleUtteranceGenerationSpecification", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
      bedrockModelSpecification = schema.new({
         id = id.from(_N, "SampleUtteranceGenerationSpecification", "bedrockModelSpecification"),
         type = "structure",
         name = "bedrockModelSpecification",
         target_id = id.from(_N, "BedrockModelSpecification"),
         target = M.BedrockModelSpecification,
      }),
   },
})

M.BuildtimeSettings = schema.new({
   id = id.from(_N, "BuildtimeSettings"),
   type = "structure",
   members = {
      descriptiveBotBuilder = schema.new({
         id = id.from(_N, "BuildtimeSettings", "descriptiveBotBuilder"),
         type = "structure",
         name = "descriptiveBotBuilder",
         target_id = id.from(_N, "DescriptiveBotBuilderSpecification"),
         target = M.DescriptiveBotBuilderSpecification,
      }),
      sampleUtteranceGeneration = schema.new({
         id = id.from(_N, "BuildtimeSettings", "sampleUtteranceGeneration"),
         type = "structure",
         name = "sampleUtteranceGeneration",
         target_id = id.from(_N, "SampleUtteranceGenerationSpecification"),
         target = M.SampleUtteranceGenerationSpecification,
      }),
   },
})

M.BuiltInIntentSortBy = schema.new({
   id = id.from(_N, "BuiltInIntentSortBy"),
   type = "structure",
   members = {
      attribute = schema.new({
         id = id.from(_N, "BuiltInIntentSortBy", "attribute"),
         type = "string",
         name = "attribute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "BuiltInIntentSortBy", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BuiltInIntentSummary = schema.new({
   id = id.from(_N, "BuiltInIntentSummary"),
   type = "structure",
   members = {
      intentSignature = schema.new({
         id = id.from(_N, "BuiltInIntentSummary", "intentSignature"),
         type = "string",
         name = "intentSignature",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "BuiltInIntentSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.BuiltInSlotTypeSortBy = schema.new({
   id = id.from(_N, "BuiltInSlotTypeSortBy"),
   type = "structure",
   members = {
      attribute = schema.new({
         id = id.from(_N, "BuiltInSlotTypeSortBy", "attribute"),
         type = "string",
         name = "attribute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "BuiltInSlotTypeSortBy", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BuiltInSlotTypeSummary = schema.new({
   id = id.from(_N, "BuiltInSlotTypeSummary"),
   type = "structure",
   members = {
      slotTypeSignature = schema.new({
         id = id.from(_N, "BuiltInSlotTypeSummary", "slotTypeSignature"),
         type = "string",
         name = "slotTypeSignature",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "BuiltInSlotTypeSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
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

M.CloudWatchLogGroupLogDestination = schema.new({
   id = id.from(_N, "CloudWatchLogGroupLogDestination"),
   type = "structure",
   members = {
      cloudWatchLogGroupArn = schema.new({
         id = id.from(_N, "CloudWatchLogGroupLogDestination", "cloudWatchLogGroupArn"),
         type = "string",
         name = "cloudWatchLogGroupArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      logPrefix = schema.new({
         id = id.from(_N, "CloudWatchLogGroupLogDestination", "logPrefix"),
         type = "string",
         name = "logPrefix",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SubSlotTypeComposition = schema.new({
   id = id.from(_N, "SubSlotTypeComposition"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "SubSlotTypeComposition", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      slotTypeId = schema.new({
         id = id.from(_N, "SubSlotTypeComposition", "slotTypeId"),
         type = "string",
         name = "slotTypeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CompositeSlotTypeSetting = schema.new({
   id = id.from(_N, "CompositeSlotTypeSetting"),
   type = "structure",
   members = {
      subSlots = schema.new({
         id = id.from(_N, "CompositeSlotTypeSetting", "subSlots"),
         type = "list",
         name = "subSlots",
         target_id = prelude.Document.id,
         list_member = M.SubSlotTypeComposition,
      }),
   },
})

M.Condition = schema.new({
   id = id.from(_N, "Condition"),
   type = "structure",
   members = {
      expressionString = schema.new({
         id = id.from(_N, "Condition", "expressionString"),
         type = "string",
         name = "expressionString",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
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
      slotToElicit = schema.new({
         id = id.from(_N, "DialogAction", "slotToElicit"),
         type = "string",
         name = "slotToElicit",
         target_id = prelude.String.id,
      }),
      suppressNextMessage = schema.new({
         id = id.from(_N, "DialogAction", "suppressNextMessage"),
         type = "boolean",
         name = "suppressNextMessage",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.SlotValue = schema.new({
   id = id.from(_N, "SlotValue"),
   type = "structure",
   members = {
      interpretedValue = schema.new({
         id = id.from(_N, "SlotValue", "interpretedValue"),
         type = "string",
         name = "interpretedValue",
         target_id = prelude.String.id,
      }),
   },
})

M.CustomPayload = schema.new({
   id = id.from(_N, "CustomPayload"),
   type = "structure",
   members = {
      value = schema.new({
         id = id.from(_N, "CustomPayload", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ImageResponseCard = schema.new({
   id = id.from(_N, "ImageResponseCard"),
   type = "structure",
   members = {
      title = schema.new({
         id = id.from(_N, "ImageResponseCard", "title"),
         type = "string",
         name = "title",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      subtitle = schema.new({
         id = id.from(_N, "ImageResponseCard", "subtitle"),
         type = "string",
         name = "subtitle",
         target_id = prelude.String.id,
      }),
      imageUrl = schema.new({
         id = id.from(_N, "ImageResponseCard", "imageUrl"),
         type = "string",
         name = "imageUrl",
         target_id = prelude.String.id,
      }),
      buttons = schema.new({
         id = id.from(_N, "ImageResponseCard", "buttons"),
         type = "list",
         name = "buttons",
         target_id = prelude.Document.id,
         list_member = M.Button,
      }),
   },
})

M.PlainTextMessage = schema.new({
   id = id.from(_N, "PlainTextMessage"),
   type = "structure",
   members = {
      value = schema.new({
         id = id.from(_N, "PlainTextMessage", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SSMLMessage = schema.new({
   id = id.from(_N, "SSMLMessage"),
   type = "structure",
   members = {
      value = schema.new({
         id = id.from(_N, "SSMLMessage", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Message = schema.new({
   id = id.from(_N, "Message"),
   type = "structure",
   members = {
      plainTextMessage = schema.new({
         id = id.from(_N, "Message", "plainTextMessage"),
         type = "structure",
         name = "plainTextMessage",
         target_id = id.from(_N, "PlainTextMessage"),
         target = M.PlainTextMessage,
      }),
      customPayload = schema.new({
         id = id.from(_N, "Message", "customPayload"),
         type = "structure",
         name = "customPayload",
         target_id = id.from(_N, "CustomPayload"),
         target = M.CustomPayload,
      }),
      ssmlMessage = schema.new({
         id = id.from(_N, "Message", "ssmlMessage"),
         type = "structure",
         name = "ssmlMessage",
         target_id = id.from(_N, "SSMLMessage"),
         target = M.SSMLMessage,
      }),
      imageResponseCard = schema.new({
         id = id.from(_N, "Message", "imageResponseCard"),
         type = "structure",
         name = "imageResponseCard",
         target_id = id.from(_N, "ImageResponseCard"),
         target = M.ImageResponseCard,
      }),
   },
})

M.MessageGroup = schema.new({
   id = id.from(_N, "MessageGroup"),
   type = "structure",
   members = {
      message = schema.new({
         id = id.from(_N, "MessageGroup", "message"),
         type = "structure",
         name = "message",
         target_id = id.from(_N, "Message"),
         target = M.Message,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      variations = schema.new({
         id = id.from(_N, "MessageGroup", "variations"),
         type = "list",
         name = "variations",
         target_id = prelude.Document.id,
         list_member = M.Message,
      }),
   },
})

M.ResponseSpecification = schema.new({
   id = id.from(_N, "ResponseSpecification"),
   type = "structure",
   members = {
      messageGroups = schema.new({
         id = id.from(_N, "ResponseSpecification", "messageGroups"),
         type = "list",
         name = "messageGroups",
         target_id = prelude.Document.id,
         list_member = M.MessageGroup,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      allowInterrupt = schema.new({
         id = id.from(_N, "ResponseSpecification", "allowInterrupt"),
         type = "boolean",
         name = "allowInterrupt",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ConversationLevelIntentClassificationResultItem = schema.new({
   id = id.from(_N, "ConversationLevelIntentClassificationResultItem"),
   type = "structure",
   members = {
      intentName = schema.new({
         id = id.from(_N, "ConversationLevelIntentClassificationResultItem", "intentName"),
         type = "string",
         name = "intentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      matchResult = schema.new({
         id = id.from(_N, "ConversationLevelIntentClassificationResultItem", "matchResult"),
         type = "string",
         name = "matchResult",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ConversationLevelResultDetail = schema.new({
   id = id.from(_N, "ConversationLevelResultDetail"),
   type = "structure",
   members = {
      endToEndResult = schema.new({
         id = id.from(_N, "ConversationLevelResultDetail", "endToEndResult"),
         type = "string",
         name = "endToEndResult",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      speechTranscriptionResult = schema.new({
         id = id.from(_N, "ConversationLevelResultDetail", "speechTranscriptionResult"),
         type = "string",
         name = "speechTranscriptionResult",
         target_id = prelude.String.id,
      }),
   },
})

M.ConversationLevelSlotResolutionResultItem = schema.new({
   id = id.from(_N, "ConversationLevelSlotResolutionResultItem"),
   type = "structure",
   members = {
      intentName = schema.new({
         id = id.from(_N, "ConversationLevelSlotResolutionResultItem", "intentName"),
         type = "string",
         name = "intentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      slotName = schema.new({
         id = id.from(_N, "ConversationLevelSlotResolutionResultItem", "slotName"),
         type = "string",
         name = "slotName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      matchResult = schema.new({
         id = id.from(_N, "ConversationLevelSlotResolutionResultItem", "matchResult"),
         type = "string",
         name = "matchResult",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ConversationLevelTestResultItem = schema.new({
   id = id.from(_N, "ConversationLevelTestResultItem"),
   type = "structure",
   members = {
      conversationId = schema.new({
         id = id.from(_N, "ConversationLevelTestResultItem", "conversationId"),
         type = "string",
         name = "conversationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endToEndResult = schema.new({
         id = id.from(_N, "ConversationLevelTestResultItem", "endToEndResult"),
         type = "string",
         name = "endToEndResult",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      speechTranscriptionResult = schema.new({
         id = id.from(_N, "ConversationLevelTestResultItem", "speechTranscriptionResult"),
         type = "string",
         name = "speechTranscriptionResult",
         target_id = prelude.String.id,
      }),
      intentClassificationResults = schema.new({
         id = id.from(_N, "ConversationLevelTestResultItem", "intentClassificationResults"),
         type = "list",
         name = "intentClassificationResults",
         target_id = prelude.Document.id,
         list_member = M.ConversationLevelIntentClassificationResultItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      slotResolutionResults = schema.new({
         id = id.from(_N, "ConversationLevelTestResultItem", "slotResolutionResults"),
         type = "list",
         name = "slotResolutionResults",
         target_id = prelude.Document.id,
         list_member = M.ConversationLevelSlotResolutionResultItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ConversationLevelTestResults = schema.new({
   id = id.from(_N, "ConversationLevelTestResults"),
   type = "structure",
   members = {
      items = schema.new({
         id = id.from(_N, "ConversationLevelTestResults", "items"),
         type = "list",
         name = "items",
         target_id = prelude.Document.id,
         list_member = M.ConversationLevelTestResultItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ConversationLevelTestResultsFilterBy = schema.new({
   id = id.from(_N, "ConversationLevelTestResultsFilterBy"),
   type = "structure",
   members = {
      endToEndResult = schema.new({
         id = id.from(_N, "ConversationLevelTestResultsFilterBy", "endToEndResult"),
         type = "string",
         name = "endToEndResult",
         target_id = prelude.String.id,
      }),
   },
})

M.ConversationLogsDataSourceFilterBy = schema.new({
   id = id.from(_N, "ConversationLogsDataSourceFilterBy"),
   type = "structure",
   members = {
      startTime = schema.new({
         id = id.from(_N, "ConversationLogsDataSourceFilterBy", "startTime"),
         type = "timestamp",
         name = "startTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endTime = schema.new({
         id = id.from(_N, "ConversationLogsDataSourceFilterBy", "endTime"),
         type = "timestamp",
         name = "endTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      inputMode = schema.new({
         id = id.from(_N, "ConversationLogsDataSourceFilterBy", "inputMode"),
         type = "string",
         name = "inputMode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ConversationLogsDataSource = schema.new({
   id = id.from(_N, "ConversationLogsDataSource"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ConversationLogsDataSource", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      botAliasId = schema.new({
         id = id.from(_N, "ConversationLogsDataSource", "botAliasId"),
         type = "string",
         name = "botAliasId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "ConversationLogsDataSource", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      filter = schema.new({
         id = id.from(_N, "ConversationLogsDataSource", "filter"),
         type = "structure",
         name = "filter",
         target_id = id.from(_N, "ConversationLogsDataSourceFilterBy"),
         target = M.ConversationLogsDataSourceFilterBy,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TextLogDestination = schema.new({
   id = id.from(_N, "TextLogDestination"),
   type = "structure",
   members = {
      cloudWatch = schema.new({
         id = id.from(_N, "TextLogDestination", "cloudWatch"),
         type = "structure",
         name = "cloudWatch",
         target_id = id.from(_N, "CloudWatchLogGroupLogDestination"),
         target = M.CloudWatchLogGroupLogDestination,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TextLogSetting = schema.new({
   id = id.from(_N, "TextLogSetting"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "TextLogSetting", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
      destination = schema.new({
         id = id.from(_N, "TextLogSetting", "destination"),
         type = "structure",
         name = "destination",
         target_id = id.from(_N, "TextLogDestination"),
         target = M.TextLogDestination,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      selectiveLoggingEnabled = schema.new({
         id = id.from(_N, "TextLogSetting", "selectiveLoggingEnabled"),
         type = "boolean",
         name = "selectiveLoggingEnabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ConversationLogSettings = schema.new({
   id = id.from(_N, "ConversationLogSettings"),
   type = "structure",
   members = {
      textLogSettings = schema.new({
         id = id.from(_N, "ConversationLogSettings", "textLogSettings"),
         type = "list",
         name = "textLogSettings",
         target_id = prelude.Document.id,
         list_member = M.TextLogSetting,
      }),
      audioLogSettings = schema.new({
         id = id.from(_N, "ConversationLogSettings", "audioLogSettings"),
         type = "list",
         name = "audioLogSettings",
         target_id = prelude.Document.id,
         list_member = M.AudioLogSetting,
      }),
   },
})

M.CreateBotInput = schema.new({
   id = id.from(_N, "CreateBotRequest"),
   type = "structure",
   members = {
      botName = schema.new({
         id = id.from(_N, "CreateBotInput", "botName"),
         type = "string",
         name = "botName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateBotInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "CreateBotInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      dataPrivacy = schema.new({
         id = id.from(_N, "CreateBotInput", "dataPrivacy"),
         type = "structure",
         name = "dataPrivacy",
         target_id = id.from(_N, "DataPrivacy"),
         target = M.DataPrivacy,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      idleSessionTTLInSeconds = schema.new({
         id = id.from(_N, "CreateBotInput", "idleSessionTTLInSeconds"),
         type = "integer",
         name = "idleSessionTTLInSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      botTags = schema.new({
         id = id.from(_N, "CreateBotInput", "botTags"),
         type = "map",
         name = "botTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      testBotAliasTags = schema.new({
         id = id.from(_N, "CreateBotInput", "testBotAliasTags"),
         type = "map",
         name = "testBotAliasTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      botType = schema.new({
         id = id.from(_N, "CreateBotInput", "botType"),
         type = "string",
         name = "botType",
         target_id = prelude.String.id,
      }),
      botMembers = schema.new({
         id = id.from(_N, "CreateBotInput", "botMembers"),
         type = "list",
         name = "botMembers",
         target_id = prelude.Document.id,
         list_member = M.BotMember,
      }),
      errorLogSettings = schema.new({
         id = id.from(_N, "CreateBotInput", "errorLogSettings"),
         type = "structure",
         name = "errorLogSettings",
         target_id = id.from(_N, "ErrorLogSettings"),
         target = M.ErrorLogSettings,
      }),
   },
})

M.CreateBotOutput = schema.new({
   id = id.from(_N, "CreateBotResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "CreateBotOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botName = schema.new({
         id = id.from(_N, "CreateBotOutput", "botName"),
         type = "string",
         name = "botName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "CreateBotOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "CreateBotOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      dataPrivacy = schema.new({
         id = id.from(_N, "CreateBotOutput", "dataPrivacy"),
         type = "structure",
         name = "dataPrivacy",
         target_id = id.from(_N, "DataPrivacy"),
         target = M.DataPrivacy,
      }),
      idleSessionTTLInSeconds = schema.new({
         id = id.from(_N, "CreateBotOutput", "idleSessionTTLInSeconds"),
         type = "integer",
         name = "idleSessionTTLInSeconds",
         target_id = prelude.Integer.id,
      }),
      botStatus = schema.new({
         id = id.from(_N, "CreateBotOutput", "botStatus"),
         type = "string",
         name = "botStatus",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "CreateBotOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      botTags = schema.new({
         id = id.from(_N, "CreateBotOutput", "botTags"),
         type = "map",
         name = "botTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      testBotAliasTags = schema.new({
         id = id.from(_N, "CreateBotOutput", "testBotAliasTags"),
         type = "map",
         name = "testBotAliasTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      botType = schema.new({
         id = id.from(_N, "CreateBotOutput", "botType"),
         type = "string",
         name = "botType",
         target_id = prelude.String.id,
      }),
      botMembers = schema.new({
         id = id.from(_N, "CreateBotOutput", "botMembers"),
         type = "list",
         name = "botMembers",
         target_id = prelude.Document.id,
         list_member = M.BotMember,
      }),
      errorLogSettings = schema.new({
         id = id.from(_N, "CreateBotOutput", "errorLogSettings"),
         type = "structure",
         name = "errorLogSettings",
         target_id = id.from(_N, "ErrorLogSettings"),
         target = M.ErrorLogSettings,
      }),
   },
})

M.SentimentAnalysisSettings = schema.new({
   id = id.from(_N, "SentimentAnalysisSettings"),
   type = "structure",
   members = {
      detectSentiment = schema.new({
         id = id.from(_N, "SentimentAnalysisSettings", "detectSentiment"),
         type = "boolean",
         name = "detectSentiment",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.CreateBotAliasInput = schema.new({
   id = id.from(_N, "CreateBotAliasRequest"),
   type = "structure",
   members = {
      botAliasName = schema.new({
         id = id.from(_N, "CreateBotAliasInput", "botAliasName"),
         type = "string",
         name = "botAliasName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateBotAliasInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "CreateBotAliasInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      botAliasLocaleSettings = schema.new({
         id = id.from(_N, "CreateBotAliasInput", "botAliasLocaleSettings"),
         type = "map",
         name = "botAliasLocaleSettings",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.BotAliasLocaleSettings,
      }),
      conversationLogSettings = schema.new({
         id = id.from(_N, "CreateBotAliasInput", "conversationLogSettings"),
         type = "structure",
         name = "conversationLogSettings",
         target_id = id.from(_N, "ConversationLogSettings"),
         target = M.ConversationLogSettings,
      }),
      sentimentAnalysisSettings = schema.new({
         id = id.from(_N, "CreateBotAliasInput", "sentimentAnalysisSettings"),
         type = "structure",
         name = "sentimentAnalysisSettings",
         target_id = id.from(_N, "SentimentAnalysisSettings"),
         target = M.SentimentAnalysisSettings,
      }),
      botId = schema.new({
         id = id.from(_N, "CreateBotAliasInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateBotAliasInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateBotAliasOutput = schema.new({
   id = id.from(_N, "CreateBotAliasResponse"),
   type = "structure",
   members = {
      botAliasId = schema.new({
         id = id.from(_N, "CreateBotAliasOutput", "botAliasId"),
         type = "string",
         name = "botAliasId",
         target_id = prelude.String.id,
      }),
      botAliasName = schema.new({
         id = id.from(_N, "CreateBotAliasOutput", "botAliasName"),
         type = "string",
         name = "botAliasName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "CreateBotAliasOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "CreateBotAliasOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      botAliasLocaleSettings = schema.new({
         id = id.from(_N, "CreateBotAliasOutput", "botAliasLocaleSettings"),
         type = "map",
         name = "botAliasLocaleSettings",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.BotAliasLocaleSettings,
      }),
      conversationLogSettings = schema.new({
         id = id.from(_N, "CreateBotAliasOutput", "conversationLogSettings"),
         type = "structure",
         name = "conversationLogSettings",
         target_id = id.from(_N, "ConversationLogSettings"),
         target = M.ConversationLogSettings,
      }),
      sentimentAnalysisSettings = schema.new({
         id = id.from(_N, "CreateBotAliasOutput", "sentimentAnalysisSettings"),
         type = "structure",
         name = "sentimentAnalysisSettings",
         target_id = id.from(_N, "SentimentAnalysisSettings"),
         target = M.SentimentAnalysisSettings,
      }),
      botAliasStatus = schema.new({
         id = id.from(_N, "CreateBotAliasOutput", "botAliasStatus"),
         type = "string",
         name = "botAliasStatus",
         target_id = prelude.String.id,
      }),
      botId = schema.new({
         id = id.from(_N, "CreateBotAliasOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "CreateBotAliasOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateBotAliasOutput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.IntentDisambiguationSettings = schema.new({
   id = id.from(_N, "IntentDisambiguationSettings"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "IntentDisambiguationSettings", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
      maxDisambiguationIntents = schema.new({
         id = id.from(_N, "IntentDisambiguationSettings", "maxDisambiguationIntents"),
         type = "integer",
         name = "maxDisambiguationIntents",
         target_id = prelude.Integer.id,
      }),
      customDisambiguationMessage = schema.new({
         id = id.from(_N, "IntentDisambiguationSettings", "customDisambiguationMessage"),
         type = "string",
         name = "customDisambiguationMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.NluImprovementSpecification = schema.new({
   id = id.from(_N, "NluImprovementSpecification"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "NluImprovementSpecification", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
      assistedNluMode = schema.new({
         id = id.from(_N, "NluImprovementSpecification", "assistedNluMode"),
         type = "string",
         name = "assistedNluMode",
         target_id = prelude.String.id,
      }),
      intentDisambiguationSettings = schema.new({
         id = id.from(_N, "NluImprovementSpecification", "intentDisambiguationSettings"),
         type = "structure",
         name = "intentDisambiguationSettings",
         target_id = id.from(_N, "IntentDisambiguationSettings"),
         target = M.IntentDisambiguationSettings,
      }),
   },
})

M.SlotResolutionImprovementSpecification = schema.new({
   id = id.from(_N, "SlotResolutionImprovementSpecification"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "SlotResolutionImprovementSpecification", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
      bedrockModelSpecification = schema.new({
         id = id.from(_N, "SlotResolutionImprovementSpecification", "bedrockModelSpecification"),
         type = "structure",
         name = "bedrockModelSpecification",
         target_id = id.from(_N, "BedrockModelSpecification"),
         target = M.BedrockModelSpecification,
      }),
   },
})

M.RuntimeSettings = schema.new({
   id = id.from(_N, "RuntimeSettings"),
   type = "structure",
   members = {
      slotResolutionImprovement = schema.new({
         id = id.from(_N, "RuntimeSettings", "slotResolutionImprovement"),
         type = "structure",
         name = "slotResolutionImprovement",
         target_id = id.from(_N, "SlotResolutionImprovementSpecification"),
         target = M.SlotResolutionImprovementSpecification,
      }),
      nluImprovement = schema.new({
         id = id.from(_N, "RuntimeSettings", "nluImprovement"),
         type = "structure",
         name = "nluImprovement",
         target_id = id.from(_N, "NluImprovementSpecification"),
         target = M.NluImprovementSpecification,
      }),
   },
})

M.GenerativeAISettings = schema.new({
   id = id.from(_N, "GenerativeAISettings"),
   type = "structure",
   members = {
      runtimeSettings = schema.new({
         id = id.from(_N, "GenerativeAISettings", "runtimeSettings"),
         type = "structure",
         name = "runtimeSettings",
         target_id = id.from(_N, "RuntimeSettings"),
         target = M.RuntimeSettings,
      }),
      buildtimeSettings = schema.new({
         id = id.from(_N, "GenerativeAISettings", "buildtimeSettings"),
         type = "structure",
         name = "buildtimeSettings",
         target_id = id.from(_N, "BuildtimeSettings"),
         target = M.BuildtimeSettings,
      }),
   },
})

M.CreateBotLocaleInput = schema.new({
   id = id.from(_N, "CreateBotLocaleRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "CreateBotLocaleInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "CreateBotLocaleInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "CreateBotLocaleInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateBotLocaleInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      nluIntentConfidenceThreshold = schema.new({
         id = id.from(_N, "CreateBotLocaleInput", "nluIntentConfidenceThreshold"),
         type = "double",
         name = "nluIntentConfidenceThreshold",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      voiceSettings = schema.new({
         id = id.from(_N, "CreateBotLocaleInput", "voiceSettings"),
         type = "structure",
         name = "voiceSettings",
         target_id = id.from(_N, "VoiceSettings"),
         target = M.VoiceSettings,
      }),
      unifiedSpeechSettings = schema.new({
         id = id.from(_N, "CreateBotLocaleInput", "unifiedSpeechSettings"),
         type = "structure",
         name = "unifiedSpeechSettings",
         target_id = id.from(_N, "UnifiedSpeechSettings"),
         target = M.UnifiedSpeechSettings,
      }),
      audioFillerSettings = schema.new({
         id = id.from(_N, "CreateBotLocaleInput", "audioFillerSettings"),
         type = "structure",
         name = "audioFillerSettings",
         target_id = id.from(_N, "AudioFillerSettings"),
         target = M.AudioFillerSettings,
      }),
      speechRecognitionSettings = schema.new({
         id = id.from(_N, "CreateBotLocaleInput", "speechRecognitionSettings"),
         type = "structure",
         name = "speechRecognitionSettings",
         target_id = id.from(_N, "SpeechRecognitionSettings"),
         target = M.SpeechRecognitionSettings,
      }),
      generativeAISettings = schema.new({
         id = id.from(_N, "CreateBotLocaleInput", "generativeAISettings"),
         type = "structure",
         name = "generativeAISettings",
         target_id = id.from(_N, "GenerativeAISettings"),
         target = M.GenerativeAISettings,
      }),
      speechDetectionSensitivity = schema.new({
         id = id.from(_N, "CreateBotLocaleInput", "speechDetectionSensitivity"),
         type = "string",
         name = "speechDetectionSensitivity",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateBotLocaleOutput = schema.new({
   id = id.from(_N, "CreateBotLocaleResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "CreateBotLocaleOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "CreateBotLocaleOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeName = schema.new({
         id = id.from(_N, "CreateBotLocaleOutput", "localeName"),
         type = "string",
         name = "localeName",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "CreateBotLocaleOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "CreateBotLocaleOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      nluIntentConfidenceThreshold = schema.new({
         id = id.from(_N, "CreateBotLocaleOutput", "nluIntentConfidenceThreshold"),
         type = "double",
         name = "nluIntentConfidenceThreshold",
         target_id = prelude.Double.id,
      }),
      voiceSettings = schema.new({
         id = id.from(_N, "CreateBotLocaleOutput", "voiceSettings"),
         type = "structure",
         name = "voiceSettings",
         target_id = id.from(_N, "VoiceSettings"),
         target = M.VoiceSettings,
      }),
      unifiedSpeechSettings = schema.new({
         id = id.from(_N, "CreateBotLocaleOutput", "unifiedSpeechSettings"),
         type = "structure",
         name = "unifiedSpeechSettings",
         target_id = id.from(_N, "UnifiedSpeechSettings"),
         target = M.UnifiedSpeechSettings,
      }),
      audioFillerSettings = schema.new({
         id = id.from(_N, "CreateBotLocaleOutput", "audioFillerSettings"),
         type = "structure",
         name = "audioFillerSettings",
         target_id = id.from(_N, "AudioFillerSettings"),
         target = M.AudioFillerSettings,
      }),
      speechRecognitionSettings = schema.new({
         id = id.from(_N, "CreateBotLocaleOutput", "speechRecognitionSettings"),
         type = "structure",
         name = "speechRecognitionSettings",
         target_id = id.from(_N, "SpeechRecognitionSettings"),
         target = M.SpeechRecognitionSettings,
      }),
      botLocaleStatus = schema.new({
         id = id.from(_N, "CreateBotLocaleOutput", "botLocaleStatus"),
         type = "string",
         name = "botLocaleStatus",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "CreateBotLocaleOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      generativeAISettings = schema.new({
         id = id.from(_N, "CreateBotLocaleOutput", "generativeAISettings"),
         type = "structure",
         name = "generativeAISettings",
         target_id = id.from(_N, "GenerativeAISettings"),
         target = M.GenerativeAISettings,
      }),
      speechDetectionSensitivity = schema.new({
         id = id.from(_N, "CreateBotLocaleOutput", "speechDetectionSensitivity"),
         type = "string",
         name = "speechDetectionSensitivity",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateBotReplicaInput = schema.new({
   id = id.from(_N, "CreateBotReplicaRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "CreateBotReplicaInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      replicaRegion = schema.new({
         id = id.from(_N, "CreateBotReplicaInput", "replicaRegion"),
         type = "string",
         name = "replicaRegion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateBotReplicaOutput = schema.new({
   id = id.from(_N, "CreateBotReplicaResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "CreateBotReplicaOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      replicaRegion = schema.new({
         id = id.from(_N, "CreateBotReplicaOutput", "replicaRegion"),
         type = "string",
         name = "replicaRegion",
         target_id = prelude.String.id,
      }),
      sourceRegion = schema.new({
         id = id.from(_N, "CreateBotReplicaOutput", "sourceRegion"),
         type = "string",
         name = "sourceRegion",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "CreateBotReplicaOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      botReplicaStatus = schema.new({
         id = id.from(_N, "CreateBotReplicaOutput", "botReplicaStatus"),
         type = "string",
         name = "botReplicaStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateBotVersionInput = schema.new({
   id = id.from(_N, "CreateBotVersionRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "CreateBotVersionInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateBotVersionInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      botVersionLocaleSpecification = schema.new({
         id = id.from(_N, "CreateBotVersionInput", "botVersionLocaleSpecification"),
         type = "map",
         name = "botVersionLocaleSpecification",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.BotVersionLocaleDetails,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateBotVersionOutput = schema.new({
   id = id.from(_N, "CreateBotVersionResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "CreateBotVersionOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "CreateBotVersionOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "CreateBotVersionOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      botVersionLocaleSpecification = schema.new({
         id = id.from(_N, "CreateBotVersionOutput", "botVersionLocaleSpecification"),
         type = "map",
         name = "botVersionLocaleSpecification",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.BotVersionLocaleDetails,
      }),
      botStatus = schema.new({
         id = id.from(_N, "CreateBotVersionOutput", "botStatus"),
         type = "string",
         name = "botStatus",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "CreateBotVersionOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CustomVocabularyExportSpecification = schema.new({
   id = id.from(_N, "CustomVocabularyExportSpecification"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "CustomVocabularyExportSpecification", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "CustomVocabularyExportSpecification", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "CustomVocabularyExportSpecification", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TestSetExportSpecification = schema.new({
   id = id.from(_N, "TestSetExportSpecification"),
   type = "structure",
   members = {
      testSetId = schema.new({
         id = id.from(_N, "TestSetExportSpecification", "testSetId"),
         type = "string",
         name = "testSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ExportResourceSpecification = schema.new({
   id = id.from(_N, "ExportResourceSpecification"),
   type = "structure",
   members = {
      botExportSpecification = schema.new({
         id = id.from(_N, "ExportResourceSpecification", "botExportSpecification"),
         type = "structure",
         name = "botExportSpecification",
         target_id = id.from(_N, "BotExportSpecification"),
         target = M.BotExportSpecification,
      }),
      botLocaleExportSpecification = schema.new({
         id = id.from(_N, "ExportResourceSpecification", "botLocaleExportSpecification"),
         type = "structure",
         name = "botLocaleExportSpecification",
         target_id = id.from(_N, "BotLocaleExportSpecification"),
         target = M.BotLocaleExportSpecification,
      }),
      customVocabularyExportSpecification = schema.new({
         id = id.from(_N, "ExportResourceSpecification", "customVocabularyExportSpecification"),
         type = "structure",
         name = "customVocabularyExportSpecification",
         target_id = id.from(_N, "CustomVocabularyExportSpecification"),
         target = M.CustomVocabularyExportSpecification,
      }),
      testSetExportSpecification = schema.new({
         id = id.from(_N, "ExportResourceSpecification", "testSetExportSpecification"),
         type = "structure",
         name = "testSetExportSpecification",
         target_id = id.from(_N, "TestSetExportSpecification"),
         target = M.TestSetExportSpecification,
      }),
   },
})

M.CreateExportInput = schema.new({
   id = id.from(_N, "CreateExportRequest"),
   type = "structure",
   members = {
      resourceSpecification = schema.new({
         id = id.from(_N, "CreateExportInput", "resourceSpecification"),
         type = "structure",
         name = "resourceSpecification",
         target_id = id.from(_N, "ExportResourceSpecification"),
         target = M.ExportResourceSpecification,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      fileFormat = schema.new({
         id = id.from(_N, "CreateExportInput", "fileFormat"),
         type = "string",
         name = "fileFormat",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      filePassword = schema.new({
         id = id.from(_N, "CreateExportInput", "filePassword"),
         type = "string",
         name = "filePassword",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateExportOutput = schema.new({
   id = id.from(_N, "CreateExportResponse"),
   type = "structure",
   members = {
      exportId = schema.new({
         id = id.from(_N, "CreateExportOutput", "exportId"),
         type = "string",
         name = "exportId",
         target_id = prelude.String.id,
      }),
      resourceSpecification = schema.new({
         id = id.from(_N, "CreateExportOutput", "resourceSpecification"),
         type = "structure",
         name = "resourceSpecification",
         target_id = id.from(_N, "ExportResourceSpecification"),
         target = M.ExportResourceSpecification,
      }),
      fileFormat = schema.new({
         id = id.from(_N, "CreateExportOutput", "fileFormat"),
         type = "string",
         name = "fileFormat",
         target_id = prelude.String.id,
      }),
      exportStatus = schema.new({
         id = id.from(_N, "CreateExportOutput", "exportStatus"),
         type = "string",
         name = "exportStatus",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "CreateExportOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DialogCodeHookSettings = schema.new({
   id = id.from(_N, "DialogCodeHookSettings"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "DialogCodeHookSettings", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.FulfillmentStartResponseSpecification = schema.new({
   id = id.from(_N, "FulfillmentStartResponseSpecification"),
   type = "structure",
   members = {
      delayInSeconds = schema.new({
         id = id.from(_N, "FulfillmentStartResponseSpecification", "delayInSeconds"),
         type = "integer",
         name = "delayInSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      messageGroups = schema.new({
         id = id.from(_N, "FulfillmentStartResponseSpecification", "messageGroups"),
         type = "list",
         name = "messageGroups",
         target_id = prelude.Document.id,
         list_member = M.MessageGroup,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      allowInterrupt = schema.new({
         id = id.from(_N, "FulfillmentStartResponseSpecification", "allowInterrupt"),
         type = "boolean",
         name = "allowInterrupt",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.FulfillmentUpdateResponseSpecification = schema.new({
   id = id.from(_N, "FulfillmentUpdateResponseSpecification"),
   type = "structure",
   members = {
      frequencyInSeconds = schema.new({
         id = id.from(_N, "FulfillmentUpdateResponseSpecification", "frequencyInSeconds"),
         type = "integer",
         name = "frequencyInSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      messageGroups = schema.new({
         id = id.from(_N, "FulfillmentUpdateResponseSpecification", "messageGroups"),
         type = "list",
         name = "messageGroups",
         target_id = prelude.Document.id,
         list_member = M.MessageGroup,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      allowInterrupt = schema.new({
         id = id.from(_N, "FulfillmentUpdateResponseSpecification", "allowInterrupt"),
         type = "boolean",
         name = "allowInterrupt",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.FulfillmentUpdatesSpecification = schema.new({
   id = id.from(_N, "FulfillmentUpdatesSpecification"),
   type = "structure",
   members = {
      active = schema.new({
         id = id.from(_N, "FulfillmentUpdatesSpecification", "active"),
         type = "boolean",
         name = "active",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      startResponse = schema.new({
         id = id.from(_N, "FulfillmentUpdatesSpecification", "startResponse"),
         type = "structure",
         name = "startResponse",
         target_id = id.from(_N, "FulfillmentStartResponseSpecification"),
         target = M.FulfillmentStartResponseSpecification,
      }),
      updateResponse = schema.new({
         id = id.from(_N, "FulfillmentUpdatesSpecification", "updateResponse"),
         type = "structure",
         name = "updateResponse",
         target_id = id.from(_N, "FulfillmentUpdateResponseSpecification"),
         target = M.FulfillmentUpdateResponseSpecification,
      }),
      timeoutInSeconds = schema.new({
         id = id.from(_N, "FulfillmentUpdatesSpecification", "timeoutInSeconds"),
         type = "integer",
         name = "timeoutInSeconds",
         target_id = prelude.Integer.id,
      }),
   },
})

M.InputContext = schema.new({
   id = id.from(_N, "InputContext"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "InputContext", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ElicitationCodeHookInvocationSetting = schema.new({
   id = id.from(_N, "ElicitationCodeHookInvocationSetting"),
   type = "structure",
   members = {
      enableCodeHookInvocation = schema.new({
         id = id.from(_N, "ElicitationCodeHookInvocationSetting", "enableCodeHookInvocation"),
         type = "boolean",
         name = "enableCodeHookInvocation",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      invocationLabel = schema.new({
         id = id.from(_N, "ElicitationCodeHookInvocationSetting", "invocationLabel"),
         type = "string",
         name = "invocationLabel",
         target_id = prelude.String.id,
      }),
   },
})

M.TextInputSpecification = schema.new({
   id = id.from(_N, "TextInputSpecification"),
   type = "structure",
   members = {
      startTimeoutMs = schema.new({
         id = id.from(_N, "TextInputSpecification", "startTimeoutMs"),
         type = "integer",
         name = "startTimeoutMs",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PromptAttemptSpecification = schema.new({
   id = id.from(_N, "PromptAttemptSpecification"),
   type = "structure",
   members = {
      allowInterrupt = schema.new({
         id = id.from(_N, "PromptAttemptSpecification", "allowInterrupt"),
         type = "boolean",
         name = "allowInterrupt",
         target_id = prelude.Boolean.id,
      }),
      allowedInputTypes = schema.new({
         id = id.from(_N, "PromptAttemptSpecification", "allowedInputTypes"),
         type = "structure",
         name = "allowedInputTypes",
         target_id = id.from(_N, "AllowedInputTypes"),
         target = M.AllowedInputTypes,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      audioAndDTMFInputSpecification = schema.new({
         id = id.from(_N, "PromptAttemptSpecification", "audioAndDTMFInputSpecification"),
         type = "structure",
         name = "audioAndDTMFInputSpecification",
         target_id = id.from(_N, "AudioAndDTMFInputSpecification"),
         target = M.AudioAndDTMFInputSpecification,
      }),
      textInputSpecification = schema.new({
         id = id.from(_N, "PromptAttemptSpecification", "textInputSpecification"),
         type = "structure",
         name = "textInputSpecification",
         target_id = id.from(_N, "TextInputSpecification"),
         target = M.TextInputSpecification,
      }),
   },
})

M.PromptSpecification = schema.new({
   id = id.from(_N, "PromptSpecification"),
   type = "structure",
   members = {
      messageGroups = schema.new({
         id = id.from(_N, "PromptSpecification", "messageGroups"),
         type = "list",
         name = "messageGroups",
         target_id = prelude.Document.id,
         list_member = M.MessageGroup,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      maxRetries = schema.new({
         id = id.from(_N, "PromptSpecification", "maxRetries"),
         type = "integer",
         name = "maxRetries",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      allowInterrupt = schema.new({
         id = id.from(_N, "PromptSpecification", "allowInterrupt"),
         type = "boolean",
         name = "allowInterrupt",
         target_id = prelude.Boolean.id,
      }),
      messageSelectionStrategy = schema.new({
         id = id.from(_N, "PromptSpecification", "messageSelectionStrategy"),
         type = "string",
         name = "messageSelectionStrategy",
         target_id = prelude.String.id,
      }),
      promptAttemptsSpecification = schema.new({
         id = id.from(_N, "PromptSpecification", "promptAttemptsSpecification"),
         type = "map",
         name = "promptAttemptsSpecification",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.PromptAttemptSpecification,
      }),
   },
})

M.KendraConfiguration = schema.new({
   id = id.from(_N, "KendraConfiguration"),
   type = "structure",
   members = {
      kendraIndex = schema.new({
         id = id.from(_N, "KendraConfiguration", "kendraIndex"),
         type = "string",
         name = "kendraIndex",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      queryFilterStringEnabled = schema.new({
         id = id.from(_N, "KendraConfiguration", "queryFilterStringEnabled"),
         type = "boolean",
         name = "queryFilterStringEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      queryFilterString = schema.new({
         id = id.from(_N, "KendraConfiguration", "queryFilterString"),
         type = "string",
         name = "queryFilterString",
         target_id = prelude.String.id,
      }),
   },
})

M.OutputContext = schema.new({
   id = id.from(_N, "OutputContext"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "OutputContext", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timeToLiveInSeconds = schema.new({
         id = id.from(_N, "OutputContext", "timeToLiveInSeconds"),
         type = "integer",
         name = "timeToLiveInSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      turnsToLive = schema.new({
         id = id.from(_N, "OutputContext", "turnsToLive"),
         type = "integer",
         name = "turnsToLive",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.QInConnectAssistantConfiguration = schema.new({
   id = id.from(_N, "QInConnectAssistantConfiguration"),
   type = "structure",
   members = {
      assistantArn = schema.new({
         id = id.from(_N, "QInConnectAssistantConfiguration", "assistantArn"),
         type = "string",
         name = "assistantArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.QInConnectIntentConfiguration = schema.new({
   id = id.from(_N, "QInConnectIntentConfiguration"),
   type = "structure",
   members = {
      qInConnectAssistantConfiguration = schema.new({
         id = id.from(_N, "QInConnectIntentConfiguration", "qInConnectAssistantConfiguration"),
         type = "structure",
         name = "qInConnectAssistantConfiguration",
         target_id = id.from(_N, "QInConnectAssistantConfiguration"),
         target = M.QInConnectAssistantConfiguration,
      }),
   },
})

M.QnAKendraConfiguration = schema.new({
   id = id.from(_N, "QnAKendraConfiguration"),
   type = "structure",
   members = {
      kendraIndex = schema.new({
         id = id.from(_N, "QnAKendraConfiguration", "kendraIndex"),
         type = "string",
         name = "kendraIndex",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      queryFilterStringEnabled = schema.new({
         id = id.from(_N, "QnAKendraConfiguration", "queryFilterStringEnabled"),
         type = "boolean",
         name = "queryFilterStringEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      queryFilterString = schema.new({
         id = id.from(_N, "QnAKendraConfiguration", "queryFilterString"),
         type = "string",
         name = "queryFilterString",
         target_id = prelude.String.id,
      }),
      exactResponse = schema.new({
         id = id.from(_N, "QnAKendraConfiguration", "exactResponse"),
         type = "boolean",
         name = "exactResponse",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.ExactResponseFields = schema.new({
   id = id.from(_N, "ExactResponseFields"),
   type = "structure",
   members = {
      questionField = schema.new({
         id = id.from(_N, "ExactResponseFields", "questionField"),
         type = "string",
         name = "questionField",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      answerField = schema.new({
         id = id.from(_N, "ExactResponseFields", "answerField"),
         type = "string",
         name = "answerField",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.OpensearchConfiguration = schema.new({
   id = id.from(_N, "OpensearchConfiguration"),
   type = "structure",
   members = {
      domainEndpoint = schema.new({
         id = id.from(_N, "OpensearchConfiguration", "domainEndpoint"),
         type = "string",
         name = "domainEndpoint",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      indexName = schema.new({
         id = id.from(_N, "OpensearchConfiguration", "indexName"),
         type = "string",
         name = "indexName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      exactResponse = schema.new({
         id = id.from(_N, "OpensearchConfiguration", "exactResponse"),
         type = "boolean",
         name = "exactResponse",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      exactResponseFields = schema.new({
         id = id.from(_N, "OpensearchConfiguration", "exactResponseFields"),
         type = "structure",
         name = "exactResponseFields",
         target_id = id.from(_N, "ExactResponseFields"),
         target = M.ExactResponseFields,
      }),
      includeFields = schema.new({
         id = id.from(_N, "OpensearchConfiguration", "includeFields"),
         type = "list",
         name = "includeFields",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.DataSourceConfiguration = schema.new({
   id = id.from(_N, "DataSourceConfiguration"),
   type = "structure",
   members = {
      opensearchConfiguration = schema.new({
         id = id.from(_N, "DataSourceConfiguration", "opensearchConfiguration"),
         type = "structure",
         name = "opensearchConfiguration",
         target_id = id.from(_N, "OpensearchConfiguration"),
         target = M.OpensearchConfiguration,
      }),
      kendraConfiguration = schema.new({
         id = id.from(_N, "DataSourceConfiguration", "kendraConfiguration"),
         type = "structure",
         name = "kendraConfiguration",
         target_id = id.from(_N, "QnAKendraConfiguration"),
         target = M.QnAKendraConfiguration,
      }),
      bedrockKnowledgeStoreConfiguration = schema.new({
         id = id.from(_N, "DataSourceConfiguration", "bedrockKnowledgeStoreConfiguration"),
         type = "structure",
         name = "bedrockKnowledgeStoreConfiguration",
         target_id = id.from(_N, "BedrockKnowledgeStoreConfiguration"),
         target = M.BedrockKnowledgeStoreConfiguration,
      }),
   },
})

M.QnAIntentConfiguration = schema.new({
   id = id.from(_N, "QnAIntentConfiguration"),
   type = "structure",
   members = {
      dataSourceConfiguration = schema.new({
         id = id.from(_N, "QnAIntentConfiguration", "dataSourceConfiguration"),
         type = "structure",
         name = "dataSourceConfiguration",
         target_id = id.from(_N, "DataSourceConfiguration"),
         target = M.DataSourceConfiguration,
      }),
      bedrockModelConfiguration = schema.new({
         id = id.from(_N, "QnAIntentConfiguration", "bedrockModelConfiguration"),
         type = "structure",
         name = "bedrockModelConfiguration",
         target_id = id.from(_N, "BedrockModelSpecification"),
         target = M.BedrockModelSpecification,
      }),
   },
})

M.SampleUtterance = schema.new({
   id = id.from(_N, "SampleUtterance"),
   type = "structure",
   members = {
      utterance = schema.new({
         id = id.from(_N, "SampleUtterance", "utterance"),
         type = "string",
         name = "utterance",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateResourcePolicyInput = schema.new({
   id = id.from(_N, "CreateResourcePolicyRequest"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "CreateResourcePolicyInput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      policy = schema.new({
         id = id.from(_N, "CreateResourcePolicyInput", "policy"),
         type = "string",
         name = "policy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateResourcePolicyOutput = schema.new({
   id = id.from(_N, "CreateResourcePolicyResponse"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "CreateResourcePolicyOutput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
      }),
      revisionId = schema.new({
         id = id.from(_N, "CreateResourcePolicyOutput", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
      }),
   },
})

M.Principal = schema.new({
   id = id.from(_N, "Principal"),
   type = "structure",
   members = {
      service = schema.new({
         id = id.from(_N, "Principal", "service"),
         type = "string",
         name = "service",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "Principal", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateResourcePolicyStatementInput = schema.new({
   id = id.from(_N, "CreateResourcePolicyStatementRequest"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "CreateResourcePolicyStatementInput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      statementId = schema.new({
         id = id.from(_N, "CreateResourcePolicyStatementInput", "statementId"),
         type = "string",
         name = "statementId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      effect = schema.new({
         id = id.from(_N, "CreateResourcePolicyStatementInput", "effect"),
         type = "string",
         name = "effect",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      principal = schema.new({
         id = id.from(_N, "CreateResourcePolicyStatementInput", "principal"),
         type = "list",
         name = "principal",
         target_id = prelude.Document.id,
         list_member = M.Principal,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      action = schema.new({
         id = id.from(_N, "CreateResourcePolicyStatementInput", "action"),
         type = "list",
         name = "action",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      condition = schema.new({
         id = id.from(_N, "CreateResourcePolicyStatementInput", "condition"),
         type = "map",
         name = "condition",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String }),
      }),
      expectedRevisionId = schema.new({
         id = id.from(_N, "CreateResourcePolicyStatementInput", "expectedRevisionId"),
         type = "string",
         name = "expectedRevisionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "expectedRevisionId" },
         },
      }),
   },
})

M.CreateResourcePolicyStatementOutput = schema.new({
   id = id.from(_N, "CreateResourcePolicyStatementResponse"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "CreateResourcePolicyStatementOutput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
      }),
      revisionId = schema.new({
         id = id.from(_N, "CreateResourcePolicyStatementOutput", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
      }),
   },
})

M.MultipleValuesSetting = schema.new({
   id = id.from(_N, "MultipleValuesSetting"),
   type = "structure",
   members = {
      allowMultipleValues = schema.new({
         id = id.from(_N, "MultipleValuesSetting", "allowMultipleValues"),
         type = "boolean",
         name = "allowMultipleValues",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.ObfuscationSetting = schema.new({
   id = id.from(_N, "ObfuscationSetting"),
   type = "structure",
   members = {
      obfuscationSettingType = schema.new({
         id = id.from(_N, "ObfuscationSetting", "obfuscationSettingType"),
         type = "string",
         name = "obfuscationSettingType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SlotDefaultValue = schema.new({
   id = id.from(_N, "SlotDefaultValue"),
   type = "structure",
   members = {
      defaultValue = schema.new({
         id = id.from(_N, "SlotDefaultValue", "defaultValue"),
         type = "string",
         name = "defaultValue",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SlotDefaultValueSpecification = schema.new({
   id = id.from(_N, "SlotDefaultValueSpecification"),
   type = "structure",
   members = {
      defaultValueList = schema.new({
         id = id.from(_N, "SlotDefaultValueSpecification", "defaultValueList"),
         type = "list",
         name = "defaultValueList",
         target_id = prelude.Document.id,
         list_member = M.SlotDefaultValue,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StillWaitingResponseSpecification = schema.new({
   id = id.from(_N, "StillWaitingResponseSpecification"),
   type = "structure",
   members = {
      messageGroups = schema.new({
         id = id.from(_N, "StillWaitingResponseSpecification", "messageGroups"),
         type = "list",
         name = "messageGroups",
         target_id = prelude.Document.id,
         list_member = M.MessageGroup,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      frequencyInSeconds = schema.new({
         id = id.from(_N, "StillWaitingResponseSpecification", "frequencyInSeconds"),
         type = "integer",
         name = "frequencyInSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timeoutInSeconds = schema.new({
         id = id.from(_N, "StillWaitingResponseSpecification", "timeoutInSeconds"),
         type = "integer",
         name = "timeoutInSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      allowInterrupt = schema.new({
         id = id.from(_N, "StillWaitingResponseSpecification", "allowInterrupt"),
         type = "boolean",
         name = "allowInterrupt",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.WaitAndContinueSpecification = schema.new({
   id = id.from(_N, "WaitAndContinueSpecification"),
   type = "structure",
   members = {
      waitingResponse = schema.new({
         id = id.from(_N, "WaitAndContinueSpecification", "waitingResponse"),
         type = "structure",
         name = "waitingResponse",
         target_id = id.from(_N, "ResponseSpecification"),
         target = M.ResponseSpecification,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      continueResponse = schema.new({
         id = id.from(_N, "WaitAndContinueSpecification", "continueResponse"),
         type = "structure",
         name = "continueResponse",
         target_id = id.from(_N, "ResponseSpecification"),
         target = M.ResponseSpecification,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      stillWaitingResponse = schema.new({
         id = id.from(_N, "WaitAndContinueSpecification", "stillWaitingResponse"),
         type = "structure",
         name = "stillWaitingResponse",
         target_id = id.from(_N, "StillWaitingResponseSpecification"),
         target = M.StillWaitingResponseSpecification,
      }),
      active = schema.new({
         id = id.from(_N, "WaitAndContinueSpecification", "active"),
         type = "boolean",
         name = "active",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.SubSlotValueElicitationSetting = schema.new({
   id = id.from(_N, "SubSlotValueElicitationSetting"),
   type = "structure",
   members = {
      defaultValueSpecification = schema.new({
         id = id.from(_N, "SubSlotValueElicitationSetting", "defaultValueSpecification"),
         type = "structure",
         name = "defaultValueSpecification",
         target_id = id.from(_N, "SlotDefaultValueSpecification"),
         target = M.SlotDefaultValueSpecification,
      }),
      promptSpecification = schema.new({
         id = id.from(_N, "SubSlotValueElicitationSetting", "promptSpecification"),
         type = "structure",
         name = "promptSpecification",
         target_id = id.from(_N, "PromptSpecification"),
         target = M.PromptSpecification,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sampleUtterances = schema.new({
         id = id.from(_N, "SubSlotValueElicitationSetting", "sampleUtterances"),
         type = "list",
         name = "sampleUtterances",
         target_id = prelude.Document.id,
         list_member = M.SampleUtterance,
      }),
      waitAndContinueSpecification = schema.new({
         id = id.from(_N, "SubSlotValueElicitationSetting", "waitAndContinueSpecification"),
         type = "structure",
         name = "waitAndContinueSpecification",
         target_id = id.from(_N, "WaitAndContinueSpecification"),
         target = M.WaitAndContinueSpecification,
      }),
   },
})

M.Specifications = schema.new({
   id = id.from(_N, "Specifications"),
   type = "structure",
   members = {
      slotTypeId = schema.new({
         id = id.from(_N, "Specifications", "slotTypeId"),
         type = "string",
         name = "slotTypeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      valueElicitationSetting = schema.new({
         id = id.from(_N, "Specifications", "valueElicitationSetting"),
         type = "structure",
         name = "valueElicitationSetting",
         target_id = id.from(_N, "SubSlotValueElicitationSetting"),
         target = M.SubSlotValueElicitationSetting,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SubSlotSetting = schema.new({
   id = id.from(_N, "SubSlotSetting"),
   type = "structure",
   members = {
      expression = schema.new({
         id = id.from(_N, "SubSlotSetting", "expression"),
         type = "string",
         name = "expression",
         target_id = prelude.String.id,
      }),
      slotSpecifications = schema.new({
         id = id.from(_N, "SubSlotSetting", "slotSpecifications"),
         type = "map",
         name = "slotSpecifications",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.Specifications,
      }),
   },
})

M.SlotResolutionSetting = schema.new({
   id = id.from(_N, "SlotResolutionSetting"),
   type = "structure",
   members = {
      slotResolutionStrategy = schema.new({
         id = id.from(_N, "SlotResolutionSetting", "slotResolutionStrategy"),
         type = "string",
         name = "slotResolutionStrategy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GrammarSlotTypeSource = schema.new({
   id = id.from(_N, "GrammarSlotTypeSource"),
   type = "structure",
   members = {
      s3BucketName = schema.new({
         id = id.from(_N, "GrammarSlotTypeSource", "s3BucketName"),
         type = "string",
         name = "s3BucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      s3ObjectKey = schema.new({
         id = id.from(_N, "GrammarSlotTypeSource", "s3ObjectKey"),
         type = "string",
         name = "s3ObjectKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      kmsKeyArn = schema.new({
         id = id.from(_N, "GrammarSlotTypeSource", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.GrammarSlotTypeSetting = schema.new({
   id = id.from(_N, "GrammarSlotTypeSetting"),
   type = "structure",
   members = {
      source = schema.new({
         id = id.from(_N, "GrammarSlotTypeSetting", "source"),
         type = "structure",
         name = "source",
         target_id = id.from(_N, "GrammarSlotTypeSource"),
         target = M.GrammarSlotTypeSource,
      }),
   },
})

M.ExternalSourceSetting = schema.new({
   id = id.from(_N, "ExternalSourceSetting"),
   type = "structure",
   members = {
      grammarSlotTypeSetting = schema.new({
         id = id.from(_N, "ExternalSourceSetting", "grammarSlotTypeSetting"),
         type = "structure",
         name = "grammarSlotTypeSetting",
         target_id = id.from(_N, "GrammarSlotTypeSetting"),
         target = M.GrammarSlotTypeSetting,
      }),
   },
})

M.SampleValue = schema.new({
   id = id.from(_N, "SampleValue"),
   type = "structure",
   members = {
      value = schema.new({
         id = id.from(_N, "SampleValue", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SlotTypeValue = schema.new({
   id = id.from(_N, "SlotTypeValue"),
   type = "structure",
   members = {
      sampleValue = schema.new({
         id = id.from(_N, "SlotTypeValue", "sampleValue"),
         type = "structure",
         name = "sampleValue",
         target_id = id.from(_N, "SampleValue"),
         target = M.SampleValue,
      }),
      synonyms = schema.new({
         id = id.from(_N, "SlotTypeValue", "synonyms"),
         type = "list",
         name = "synonyms",
         target_id = prelude.Document.id,
         list_member = M.SampleValue,
      }),
   },
})

M.SlotValueRegexFilter = schema.new({
   id = id.from(_N, "SlotValueRegexFilter"),
   type = "structure",
   members = {
      pattern = schema.new({
         id = id.from(_N, "SlotValueRegexFilter", "pattern"),
         type = "string",
         name = "pattern",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SlotValueSelectionSetting = schema.new({
   id = id.from(_N, "SlotValueSelectionSetting"),
   type = "structure",
   members = {
      resolutionStrategy = schema.new({
         id = id.from(_N, "SlotValueSelectionSetting", "resolutionStrategy"),
         type = "string",
         name = "resolutionStrategy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      regexFilter = schema.new({
         id = id.from(_N, "SlotValueSelectionSetting", "regexFilter"),
         type = "structure",
         name = "regexFilter",
         target_id = id.from(_N, "SlotValueRegexFilter"),
         target = M.SlotValueRegexFilter,
      }),
      advancedRecognitionSetting = schema.new({
         id = id.from(_N, "SlotValueSelectionSetting", "advancedRecognitionSetting"),
         type = "structure",
         name = "advancedRecognitionSetting",
         target_id = id.from(_N, "AdvancedRecognitionSetting"),
         target = M.AdvancedRecognitionSetting,
      }),
   },
})

M.CreateSlotTypeInput = schema.new({
   id = id.from(_N, "CreateSlotTypeRequest"),
   type = "structure",
   members = {
      slotTypeName = schema.new({
         id = id.from(_N, "CreateSlotTypeInput", "slotTypeName"),
         type = "string",
         name = "slotTypeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateSlotTypeInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      slotTypeValues = schema.new({
         id = id.from(_N, "CreateSlotTypeInput", "slotTypeValues"),
         type = "list",
         name = "slotTypeValues",
         target_id = prelude.Document.id,
         list_member = M.SlotTypeValue,
      }),
      valueSelectionSetting = schema.new({
         id = id.from(_N, "CreateSlotTypeInput", "valueSelectionSetting"),
         type = "structure",
         name = "valueSelectionSetting",
         target_id = id.from(_N, "SlotValueSelectionSetting"),
         target = M.SlotValueSelectionSetting,
      }),
      parentSlotTypeSignature = schema.new({
         id = id.from(_N, "CreateSlotTypeInput", "parentSlotTypeSignature"),
         type = "string",
         name = "parentSlotTypeSignature",
         target_id = prelude.String.id,
      }),
      botId = schema.new({
         id = id.from(_N, "CreateSlotTypeInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "CreateSlotTypeInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "CreateSlotTypeInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      externalSourceSetting = schema.new({
         id = id.from(_N, "CreateSlotTypeInput", "externalSourceSetting"),
         type = "structure",
         name = "externalSourceSetting",
         target_id = id.from(_N, "ExternalSourceSetting"),
         target = M.ExternalSourceSetting,
      }),
      compositeSlotTypeSetting = schema.new({
         id = id.from(_N, "CreateSlotTypeInput", "compositeSlotTypeSetting"),
         type = "structure",
         name = "compositeSlotTypeSetting",
         target_id = id.from(_N, "CompositeSlotTypeSetting"),
         target = M.CompositeSlotTypeSetting,
      }),
   },
})

M.CreateSlotTypeOutput = schema.new({
   id = id.from(_N, "CreateSlotTypeResponse"),
   type = "structure",
   members = {
      slotTypeId = schema.new({
         id = id.from(_N, "CreateSlotTypeOutput", "slotTypeId"),
         type = "string",
         name = "slotTypeId",
         target_id = prelude.String.id,
      }),
      slotTypeName = schema.new({
         id = id.from(_N, "CreateSlotTypeOutput", "slotTypeName"),
         type = "string",
         name = "slotTypeName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "CreateSlotTypeOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      slotTypeValues = schema.new({
         id = id.from(_N, "CreateSlotTypeOutput", "slotTypeValues"),
         type = "list",
         name = "slotTypeValues",
         target_id = prelude.Document.id,
         list_member = M.SlotTypeValue,
      }),
      valueSelectionSetting = schema.new({
         id = id.from(_N, "CreateSlotTypeOutput", "valueSelectionSetting"),
         type = "structure",
         name = "valueSelectionSetting",
         target_id = id.from(_N, "SlotValueSelectionSetting"),
         target = M.SlotValueSelectionSetting,
      }),
      parentSlotTypeSignature = schema.new({
         id = id.from(_N, "CreateSlotTypeOutput", "parentSlotTypeSignature"),
         type = "string",
         name = "parentSlotTypeSignature",
         target_id = prelude.String.id,
      }),
      botId = schema.new({
         id = id.from(_N, "CreateSlotTypeOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "CreateSlotTypeOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "CreateSlotTypeOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "CreateSlotTypeOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      externalSourceSetting = schema.new({
         id = id.from(_N, "CreateSlotTypeOutput", "externalSourceSetting"),
         type = "structure",
         name = "externalSourceSetting",
         target_id = id.from(_N, "ExternalSourceSetting"),
         target = M.ExternalSourceSetting,
      }),
      compositeSlotTypeSetting = schema.new({
         id = id.from(_N, "CreateSlotTypeOutput", "compositeSlotTypeSetting"),
         type = "structure",
         name = "compositeSlotTypeSetting",
         target_id = id.from(_N, "CompositeSlotTypeSetting"),
         target = M.CompositeSlotTypeSetting,
      }),
   },
})

M.TestSetDiscrepancyReportBotAliasTarget = schema.new({
   id = id.from(_N, "TestSetDiscrepancyReportBotAliasTarget"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "TestSetDiscrepancyReportBotAliasTarget", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      botAliasId = schema.new({
         id = id.from(_N, "TestSetDiscrepancyReportBotAliasTarget", "botAliasId"),
         type = "string",
         name = "botAliasId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "TestSetDiscrepancyReportBotAliasTarget", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TestSetDiscrepancyReportResourceTarget = schema.new({
   id = id.from(_N, "TestSetDiscrepancyReportResourceTarget"),
   type = "structure",
   members = {
      botAliasTarget = schema.new({
         id = id.from(_N, "TestSetDiscrepancyReportResourceTarget", "botAliasTarget"),
         type = "structure",
         name = "botAliasTarget",
         target_id = id.from(_N, "TestSetDiscrepancyReportBotAliasTarget"),
         target = M.TestSetDiscrepancyReportBotAliasTarget,
      }),
   },
})

M.CreateTestSetDiscrepancyReportInput = schema.new({
   id = id.from(_N, "CreateTestSetDiscrepancyReportRequest"),
   type = "structure",
   members = {
      testSetId = schema.new({
         id = id.from(_N, "CreateTestSetDiscrepancyReportInput", "testSetId"),
         type = "string",
         name = "testSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      target = schema.new({
         id = id.from(_N, "CreateTestSetDiscrepancyReportInput", "target"),
         type = "structure",
         name = "target",
         target_id = id.from(_N, "TestSetDiscrepancyReportResourceTarget"),
         target = M.TestSetDiscrepancyReportResourceTarget,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateTestSetDiscrepancyReportOutput = schema.new({
   id = id.from(_N, "CreateTestSetDiscrepancyReportResponse"),
   type = "structure",
   members = {
      testSetDiscrepancyReportId = schema.new({
         id = id.from(_N, "CreateTestSetDiscrepancyReportOutput", "testSetDiscrepancyReportId"),
         type = "string",
         name = "testSetDiscrepancyReportId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "CreateTestSetDiscrepancyReportOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      testSetId = schema.new({
         id = id.from(_N, "CreateTestSetDiscrepancyReportOutput", "testSetId"),
         type = "string",
         name = "testSetId",
         target_id = prelude.String.id,
      }),
      target = schema.new({
         id = id.from(_N, "CreateTestSetDiscrepancyReportOutput", "target"),
         type = "structure",
         name = "target",
         target_id = id.from(_N, "TestSetDiscrepancyReportResourceTarget"),
         target = M.TestSetDiscrepancyReportResourceTarget,
      }),
   },
})

M.CreateUploadUrlInput = schema.new({
   id = id.from(_N, "CreateUploadUrlRequest"),
   type = "structure",
})

M.CreateUploadUrlOutput = schema.new({
   id = id.from(_N, "CreateUploadUrlResponse"),
   type = "structure",
   members = {
      importId = schema.new({
         id = id.from(_N, "CreateUploadUrlOutput", "importId"),
         type = "string",
         name = "importId",
         target_id = prelude.String.id,
      }),
      uploadUrl = schema.new({
         id = id.from(_N, "CreateUploadUrlOutput", "uploadUrl"),
         type = "string",
         name = "uploadUrl",
         target_id = prelude.String.id,
      }),
   },
})

M.CustomVocabularyImportSpecification = schema.new({
   id = id.from(_N, "CustomVocabularyImportSpecification"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "CustomVocabularyImportSpecification", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "CustomVocabularyImportSpecification", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "CustomVocabularyImportSpecification", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DateRangeFilter = schema.new({
   id = id.from(_N, "DateRangeFilter"),
   type = "structure",
   members = {
      startDateTime = schema.new({
         id = id.from(_N, "DateRangeFilter", "startDateTime"),
         type = "timestamp",
         name = "startDateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endDateTime = schema.new({
         id = id.from(_N, "DateRangeFilter", "endDateTime"),
         type = "timestamp",
         name = "endDateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteBotInput = schema.new({
   id = id.from(_N, "DeleteBotRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DeleteBotInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      skipResourceInUseCheck = schema.new({
         id = id.from(_N, "DeleteBotInput", "skipResourceInUseCheck"),
         type = "boolean",
         name = "skipResourceInUseCheck",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "skipResourceInUseCheck" },
         },
      }),
   },
})

M.DeleteBotOutput = schema.new({
   id = id.from(_N, "DeleteBotResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DeleteBotOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botStatus = schema.new({
         id = id.from(_N, "DeleteBotOutput", "botStatus"),
         type = "string",
         name = "botStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteBotAliasInput = schema.new({
   id = id.from(_N, "DeleteBotAliasRequest"),
   type = "structure",
   members = {
      botAliasId = schema.new({
         id = id.from(_N, "DeleteBotAliasInput", "botAliasId"),
         type = "string",
         name = "botAliasId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botId = schema.new({
         id = id.from(_N, "DeleteBotAliasInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      skipResourceInUseCheck = schema.new({
         id = id.from(_N, "DeleteBotAliasInput", "skipResourceInUseCheck"),
         type = "boolean",
         name = "skipResourceInUseCheck",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "skipResourceInUseCheck" },
         },
      }),
   },
})

M.DeleteBotAliasOutput = schema.new({
   id = id.from(_N, "DeleteBotAliasResponse"),
   type = "structure",
   members = {
      botAliasId = schema.new({
         id = id.from(_N, "DeleteBotAliasOutput", "botAliasId"),
         type = "string",
         name = "botAliasId",
         target_id = prelude.String.id,
      }),
      botId = schema.new({
         id = id.from(_N, "DeleteBotAliasOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botAliasStatus = schema.new({
         id = id.from(_N, "DeleteBotAliasOutput", "botAliasStatus"),
         type = "string",
         name = "botAliasStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteBotAnalyzerRecommendationInput = schema.new({
   id = id.from(_N, "DeleteBotAnalyzerRecommendationRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DeleteBotAnalyzerRecommendationInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botAnalyzerRequestId = schema.new({
         id = id.from(_N, "DeleteBotAnalyzerRecommendationInput", "botAnalyzerRequestId"),
         type = "string",
         name = "botAnalyzerRequestId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteBotAnalyzerRecommendationOutput = schema.new({
   id = id.from(_N, "DeleteBotAnalyzerRecommendationResponse"),
   type = "structure",
})

M.DeleteBotLocaleInput = schema.new({
   id = id.from(_N, "DeleteBotLocaleRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DeleteBotLocaleInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "DeleteBotLocaleInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "DeleteBotLocaleInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteBotLocaleOutput = schema.new({
   id = id.from(_N, "DeleteBotLocaleResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DeleteBotLocaleOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "DeleteBotLocaleOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "DeleteBotLocaleOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      botLocaleStatus = schema.new({
         id = id.from(_N, "DeleteBotLocaleOutput", "botLocaleStatus"),
         type = "string",
         name = "botLocaleStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteBotReplicaInput = schema.new({
   id = id.from(_N, "DeleteBotReplicaRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DeleteBotReplicaInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      replicaRegion = schema.new({
         id = id.from(_N, "DeleteBotReplicaInput", "replicaRegion"),
         type = "string",
         name = "replicaRegion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteBotReplicaOutput = schema.new({
   id = id.from(_N, "DeleteBotReplicaResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DeleteBotReplicaOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      replicaRegion = schema.new({
         id = id.from(_N, "DeleteBotReplicaOutput", "replicaRegion"),
         type = "string",
         name = "replicaRegion",
         target_id = prelude.String.id,
      }),
      botReplicaStatus = schema.new({
         id = id.from(_N, "DeleteBotReplicaOutput", "botReplicaStatus"),
         type = "string",
         name = "botReplicaStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteBotVersionInput = schema.new({
   id = id.from(_N, "DeleteBotVersionRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DeleteBotVersionInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "DeleteBotVersionInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      skipResourceInUseCheck = schema.new({
         id = id.from(_N, "DeleteBotVersionInput", "skipResourceInUseCheck"),
         type = "boolean",
         name = "skipResourceInUseCheck",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "skipResourceInUseCheck" },
         },
      }),
   },
})

M.DeleteBotVersionOutput = schema.new({
   id = id.from(_N, "DeleteBotVersionResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DeleteBotVersionOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "DeleteBotVersionOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      botStatus = schema.new({
         id = id.from(_N, "DeleteBotVersionOutput", "botStatus"),
         type = "string",
         name = "botStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteCustomVocabularyInput = schema.new({
   id = id.from(_N, "DeleteCustomVocabularyRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DeleteCustomVocabularyInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "DeleteCustomVocabularyInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "DeleteCustomVocabularyInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteCustomVocabularyOutput = schema.new({
   id = id.from(_N, "DeleteCustomVocabularyResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DeleteCustomVocabularyOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "DeleteCustomVocabularyOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "DeleteCustomVocabularyOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      customVocabularyStatus = schema.new({
         id = id.from(_N, "DeleteCustomVocabularyOutput", "customVocabularyStatus"),
         type = "string",
         name = "customVocabularyStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteExportInput = schema.new({
   id = id.from(_N, "DeleteExportRequest"),
   type = "structure",
   members = {
      exportId = schema.new({
         id = id.from(_N, "DeleteExportInput", "exportId"),
         type = "string",
         name = "exportId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteExportOutput = schema.new({
   id = id.from(_N, "DeleteExportResponse"),
   type = "structure",
   members = {
      exportId = schema.new({
         id = id.from(_N, "DeleteExportOutput", "exportId"),
         type = "string",
         name = "exportId",
         target_id = prelude.String.id,
      }),
      exportStatus = schema.new({
         id = id.from(_N, "DeleteExportOutput", "exportStatus"),
         type = "string",
         name = "exportStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteImportInput = schema.new({
   id = id.from(_N, "DeleteImportRequest"),
   type = "structure",
   members = {
      importId = schema.new({
         id = id.from(_N, "DeleteImportInput", "importId"),
         type = "string",
         name = "importId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteImportOutput = schema.new({
   id = id.from(_N, "DeleteImportResponse"),
   type = "structure",
   members = {
      importId = schema.new({
         id = id.from(_N, "DeleteImportOutput", "importId"),
         type = "string",
         name = "importId",
         target_id = prelude.String.id,
      }),
      importStatus = schema.new({
         id = id.from(_N, "DeleteImportOutput", "importStatus"),
         type = "string",
         name = "importStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteIntentInput = schema.new({
   id = id.from(_N, "DeleteIntentRequest"),
   type = "structure",
   members = {
      intentId = schema.new({
         id = id.from(_N, "DeleteIntentInput", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botId = schema.new({
         id = id.from(_N, "DeleteIntentInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "DeleteIntentInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "DeleteIntentInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteIntentOutput = prelude.Unit

M.DeleteResourcePolicyInput = schema.new({
   id = id.from(_N, "DeleteResourcePolicyRequest"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "DeleteResourcePolicyInput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      expectedRevisionId = schema.new({
         id = id.from(_N, "DeleteResourcePolicyInput", "expectedRevisionId"),
         type = "string",
         name = "expectedRevisionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "expectedRevisionId" },
         },
      }),
   },
})

M.DeleteResourcePolicyOutput = schema.new({
   id = id.from(_N, "DeleteResourcePolicyResponse"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "DeleteResourcePolicyOutput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
      }),
      revisionId = schema.new({
         id = id.from(_N, "DeleteResourcePolicyOutput", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteResourcePolicyStatementInput = schema.new({
   id = id.from(_N, "DeleteResourcePolicyStatementRequest"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "DeleteResourcePolicyStatementInput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      statementId = schema.new({
         id = id.from(_N, "DeleteResourcePolicyStatementInput", "statementId"),
         type = "string",
         name = "statementId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      expectedRevisionId = schema.new({
         id = id.from(_N, "DeleteResourcePolicyStatementInput", "expectedRevisionId"),
         type = "string",
         name = "expectedRevisionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "expectedRevisionId" },
         },
      }),
   },
})

M.DeleteResourcePolicyStatementOutput = schema.new({
   id = id.from(_N, "DeleteResourcePolicyStatementResponse"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "DeleteResourcePolicyStatementOutput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
      }),
      revisionId = schema.new({
         id = id.from(_N, "DeleteResourcePolicyStatementOutput", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteSlotInput = schema.new({
   id = id.from(_N, "DeleteSlotRequest"),
   type = "structure",
   members = {
      slotId = schema.new({
         id = id.from(_N, "DeleteSlotInput", "slotId"),
         type = "string",
         name = "slotId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botId = schema.new({
         id = id.from(_N, "DeleteSlotInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "DeleteSlotInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "DeleteSlotInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      intentId = schema.new({
         id = id.from(_N, "DeleteSlotInput", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteSlotOutput = prelude.Unit

M.DeleteSlotTypeInput = schema.new({
   id = id.from(_N, "DeleteSlotTypeRequest"),
   type = "structure",
   members = {
      slotTypeId = schema.new({
         id = id.from(_N, "DeleteSlotTypeInput", "slotTypeId"),
         type = "string",
         name = "slotTypeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botId = schema.new({
         id = id.from(_N, "DeleteSlotTypeInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "DeleteSlotTypeInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "DeleteSlotTypeInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      skipResourceInUseCheck = schema.new({
         id = id.from(_N, "DeleteSlotTypeInput", "skipResourceInUseCheck"),
         type = "boolean",
         name = "skipResourceInUseCheck",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
            [traits.HTTP_QUERY] = { name = "skipResourceInUseCheck" },
         },
      }),
   },
})

M.DeleteSlotTypeOutput = prelude.Unit

M.DeleteTestSetInput = schema.new({
   id = id.from(_N, "DeleteTestSetRequest"),
   type = "structure",
   members = {
      testSetId = schema.new({
         id = id.from(_N, "DeleteTestSetInput", "testSetId"),
         type = "string",
         name = "testSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteTestSetOutput = prelude.Unit

M.DeleteUtterancesInput = schema.new({
   id = id.from(_N, "DeleteUtterancesRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DeleteUtterancesInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "DeleteUtterancesInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "localeId" },
         },
      }),
      sessionId = schema.new({
         id = id.from(_N, "DeleteUtterancesInput", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "sessionId" },
         },
      }),
   },
})

M.DeleteUtterancesOutput = schema.new({
   id = id.from(_N, "DeleteUtterancesResponse"),
   type = "structure",
})

M.DescribeBotInput = schema.new({
   id = id.from(_N, "DescribeBotRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DescribeBotInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeBotOutput = schema.new({
   id = id.from(_N, "DescribeBotResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DescribeBotOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botName = schema.new({
         id = id.from(_N, "DescribeBotOutput", "botName"),
         type = "string",
         name = "botName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "DescribeBotOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "DescribeBotOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      dataPrivacy = schema.new({
         id = id.from(_N, "DescribeBotOutput", "dataPrivacy"),
         type = "structure",
         name = "dataPrivacy",
         target_id = id.from(_N, "DataPrivacy"),
         target = M.DataPrivacy,
      }),
      idleSessionTTLInSeconds = schema.new({
         id = id.from(_N, "DescribeBotOutput", "idleSessionTTLInSeconds"),
         type = "integer",
         name = "idleSessionTTLInSeconds",
         target_id = prelude.Integer.id,
      }),
      botStatus = schema.new({
         id = id.from(_N, "DescribeBotOutput", "botStatus"),
         type = "string",
         name = "botStatus",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "DescribeBotOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "DescribeBotOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      botType = schema.new({
         id = id.from(_N, "DescribeBotOutput", "botType"),
         type = "string",
         name = "botType",
         target_id = prelude.String.id,
      }),
      botMembers = schema.new({
         id = id.from(_N, "DescribeBotOutput", "botMembers"),
         type = "list",
         name = "botMembers",
         target_id = prelude.Document.id,
         list_member = M.BotMember,
      }),
      failureReasons = schema.new({
         id = id.from(_N, "DescribeBotOutput", "failureReasons"),
         type = "list",
         name = "failureReasons",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      errorLogSettings = schema.new({
         id = id.from(_N, "DescribeBotOutput", "errorLogSettings"),
         type = "structure",
         name = "errorLogSettings",
         target_id = id.from(_N, "ErrorLogSettings"),
         target = M.ErrorLogSettings,
      }),
   },
})

M.DescribeBotAliasInput = schema.new({
   id = id.from(_N, "DescribeBotAliasRequest"),
   type = "structure",
   members = {
      botAliasId = schema.new({
         id = id.from(_N, "DescribeBotAliasInput", "botAliasId"),
         type = "string",
         name = "botAliasId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botId = schema.new({
         id = id.from(_N, "DescribeBotAliasInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ParentBotNetwork = schema.new({
   id = id.from(_N, "ParentBotNetwork"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ParentBotNetwork", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "ParentBotNetwork", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeBotAliasOutput = schema.new({
   id = id.from(_N, "DescribeBotAliasResponse"),
   type = "structure",
   members = {
      botAliasId = schema.new({
         id = id.from(_N, "DescribeBotAliasOutput", "botAliasId"),
         type = "string",
         name = "botAliasId",
         target_id = prelude.String.id,
      }),
      botAliasName = schema.new({
         id = id.from(_N, "DescribeBotAliasOutput", "botAliasName"),
         type = "string",
         name = "botAliasName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "DescribeBotAliasOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "DescribeBotAliasOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      botAliasLocaleSettings = schema.new({
         id = id.from(_N, "DescribeBotAliasOutput", "botAliasLocaleSettings"),
         type = "map",
         name = "botAliasLocaleSettings",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.BotAliasLocaleSettings,
      }),
      conversationLogSettings = schema.new({
         id = id.from(_N, "DescribeBotAliasOutput", "conversationLogSettings"),
         type = "structure",
         name = "conversationLogSettings",
         target_id = id.from(_N, "ConversationLogSettings"),
         target = M.ConversationLogSettings,
      }),
      sentimentAnalysisSettings = schema.new({
         id = id.from(_N, "DescribeBotAliasOutput", "sentimentAnalysisSettings"),
         type = "structure",
         name = "sentimentAnalysisSettings",
         target_id = id.from(_N, "SentimentAnalysisSettings"),
         target = M.SentimentAnalysisSettings,
      }),
      botAliasHistoryEvents = schema.new({
         id = id.from(_N, "DescribeBotAliasOutput", "botAliasHistoryEvents"),
         type = "list",
         name = "botAliasHistoryEvents",
         target_id = prelude.Document.id,
         list_member = M.BotAliasHistoryEvent,
      }),
      botAliasStatus = schema.new({
         id = id.from(_N, "DescribeBotAliasOutput", "botAliasStatus"),
         type = "string",
         name = "botAliasStatus",
         target_id = prelude.String.id,
      }),
      botId = schema.new({
         id = id.from(_N, "DescribeBotAliasOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "DescribeBotAliasOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "DescribeBotAliasOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      parentBotNetworks = schema.new({
         id = id.from(_N, "DescribeBotAliasOutput", "parentBotNetworks"),
         type = "list",
         name = "parentBotNetworks",
         target_id = prelude.Document.id,
         list_member = M.ParentBotNetwork,
      }),
   },
})

M.DescribeBotAnalyzerRecommendationInput = schema.new({
   id = id.from(_N, "DescribeBotAnalyzerRecommendationRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DescribeBotAnalyzerRecommendationInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botAnalyzerRequestId = schema.new({
         id = id.from(_N, "DescribeBotAnalyzerRecommendationInput", "botAnalyzerRequestId"),
         type = "string",
         name = "botAnalyzerRequestId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeBotAnalyzerRecommendationInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "DescribeBotAnalyzerRecommendationInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.DescribeBotAnalyzerRecommendationOutput = schema.new({
   id = id.from(_N, "DescribeBotAnalyzerRecommendationResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DescribeBotAnalyzerRecommendationOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "DescribeBotAnalyzerRecommendationOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "DescribeBotAnalyzerRecommendationOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      botAnalyzerStatus = schema.new({
         id = id.from(_N, "DescribeBotAnalyzerRecommendationOutput", "botAnalyzerStatus"),
         type = "string",
         name = "botAnalyzerStatus",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "DescribeBotAnalyzerRecommendationOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      botAnalyzerRecommendationList = schema.new({
         id = id.from(_N, "DescribeBotAnalyzerRecommendationOutput", "botAnalyzerRecommendationList"),
         type = "list",
         name = "botAnalyzerRecommendationList",
         target_id = prelude.Document.id,
         list_member = M.BotAnalyzerRecommendation,
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeBotAnalyzerRecommendationOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeBotLocaleInput = schema.new({
   id = id.from(_N, "DescribeBotLocaleRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DescribeBotLocaleInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "DescribeBotLocaleInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "DescribeBotLocaleInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeBotLocaleOutput = schema.new({
   id = id.from(_N, "DescribeBotLocaleResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      localeName = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "localeName"),
         type = "string",
         name = "localeName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      nluIntentConfidenceThreshold = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "nluIntentConfidenceThreshold"),
         type = "double",
         name = "nluIntentConfidenceThreshold",
         target_id = prelude.Double.id,
      }),
      voiceSettings = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "voiceSettings"),
         type = "structure",
         name = "voiceSettings",
         target_id = id.from(_N, "VoiceSettings"),
         target = M.VoiceSettings,
      }),
      unifiedSpeechSettings = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "unifiedSpeechSettings"),
         type = "structure",
         name = "unifiedSpeechSettings",
         target_id = id.from(_N, "UnifiedSpeechSettings"),
         target = M.UnifiedSpeechSettings,
      }),
      audioFillerSettings = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "audioFillerSettings"),
         type = "structure",
         name = "audioFillerSettings",
         target_id = id.from(_N, "AudioFillerSettings"),
         target = M.AudioFillerSettings,
      }),
      speechRecognitionSettings = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "speechRecognitionSettings"),
         type = "structure",
         name = "speechRecognitionSettings",
         target_id = id.from(_N, "SpeechRecognitionSettings"),
         target = M.SpeechRecognitionSettings,
      }),
      intentsCount = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "intentsCount"),
         type = "integer",
         name = "intentsCount",
         target_id = prelude.Integer.id,
      }),
      slotTypesCount = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "slotTypesCount"),
         type = "integer",
         name = "slotTypesCount",
         target_id = prelude.Integer.id,
      }),
      botLocaleStatus = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "botLocaleStatus"),
         type = "string",
         name = "botLocaleStatus",
         target_id = prelude.String.id,
      }),
      failureReasons = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "failureReasons"),
         type = "list",
         name = "failureReasons",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastBuildSubmittedDateTime = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "lastBuildSubmittedDateTime"),
         type = "timestamp",
         name = "lastBuildSubmittedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      botLocaleHistoryEvents = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "botLocaleHistoryEvents"),
         type = "list",
         name = "botLocaleHistoryEvents",
         target_id = prelude.Document.id,
         list_member = M.BotLocaleHistoryEvent,
      }),
      recommendedActions = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "recommendedActions"),
         type = "list",
         name = "recommendedActions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      generativeAISettings = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "generativeAISettings"),
         type = "structure",
         name = "generativeAISettings",
         target_id = id.from(_N, "GenerativeAISettings"),
         target = M.GenerativeAISettings,
      }),
      speechDetectionSensitivity = schema.new({
         id = id.from(_N, "DescribeBotLocaleOutput", "speechDetectionSensitivity"),
         type = "string",
         name = "speechDetectionSensitivity",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeBotRecommendationInput = schema.new({
   id = id.from(_N, "DescribeBotRecommendationRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DescribeBotRecommendationInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "DescribeBotRecommendationInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "DescribeBotRecommendationInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botRecommendationId = schema.new({
         id = id.from(_N, "DescribeBotRecommendationInput", "botRecommendationId"),
         type = "string",
         name = "botRecommendationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.EncryptionSetting = schema.new({
   id = id.from(_N, "EncryptionSetting"),
   type = "structure",
   members = {
      kmsKeyArn = schema.new({
         id = id.from(_N, "EncryptionSetting", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
      }),
      botLocaleExportPassword = schema.new({
         id = id.from(_N, "EncryptionSetting", "botLocaleExportPassword"),
         type = "string",
         name = "botLocaleExportPassword",
         target_id = prelude.String.id,
      }),
      associatedTranscriptsPassword = schema.new({
         id = id.from(_N, "EncryptionSetting", "associatedTranscriptsPassword"),
         type = "string",
         name = "associatedTranscriptsPassword",
         target_id = prelude.String.id,
      }),
   },
})

M.PathFormat = schema.new({
   id = id.from(_N, "PathFormat"),
   type = "structure",
   members = {
      objectPrefixes = schema.new({
         id = id.from(_N, "PathFormat", "objectPrefixes"),
         type = "list",
         name = "objectPrefixes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.LexTranscriptFilter = schema.new({
   id = id.from(_N, "LexTranscriptFilter"),
   type = "structure",
   members = {
      dateRangeFilter = schema.new({
         id = id.from(_N, "LexTranscriptFilter", "dateRangeFilter"),
         type = "structure",
         name = "dateRangeFilter",
         target_id = id.from(_N, "DateRangeFilter"),
         target = M.DateRangeFilter,
      }),
   },
})

M.TranscriptFilter = schema.new({
   id = id.from(_N, "TranscriptFilter"),
   type = "structure",
   members = {
      lexTranscriptFilter = schema.new({
         id = id.from(_N, "TranscriptFilter", "lexTranscriptFilter"),
         type = "structure",
         name = "lexTranscriptFilter",
         target_id = id.from(_N, "LexTranscriptFilter"),
         target = M.LexTranscriptFilter,
      }),
   },
})

M.S3BucketTranscriptSource = schema.new({
   id = id.from(_N, "S3BucketTranscriptSource"),
   type = "structure",
   members = {
      s3BucketName = schema.new({
         id = id.from(_N, "S3BucketTranscriptSource", "s3BucketName"),
         type = "string",
         name = "s3BucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      pathFormat = schema.new({
         id = id.from(_N, "S3BucketTranscriptSource", "pathFormat"),
         type = "structure",
         name = "pathFormat",
         target_id = id.from(_N, "PathFormat"),
         target = M.PathFormat,
      }),
      transcriptFormat = schema.new({
         id = id.from(_N, "S3BucketTranscriptSource", "transcriptFormat"),
         type = "string",
         name = "transcriptFormat",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      transcriptFilter = schema.new({
         id = id.from(_N, "S3BucketTranscriptSource", "transcriptFilter"),
         type = "structure",
         name = "transcriptFilter",
         target_id = id.from(_N, "TranscriptFilter"),
         target = M.TranscriptFilter,
      }),
      kmsKeyArn = schema.new({
         id = id.from(_N, "S3BucketTranscriptSource", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.TranscriptSourceSetting = schema.new({
   id = id.from(_N, "TranscriptSourceSetting"),
   type = "structure",
   members = {
      s3BucketTranscriptSource = schema.new({
         id = id.from(_N, "TranscriptSourceSetting", "s3BucketTranscriptSource"),
         type = "structure",
         name = "s3BucketTranscriptSource",
         target_id = id.from(_N, "S3BucketTranscriptSource"),
         target = M.S3BucketTranscriptSource,
      }),
   },
})

M.DescribeBotRecommendationOutput = schema.new({
   id = id.from(_N, "DescribeBotRecommendationResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DescribeBotRecommendationOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "DescribeBotRecommendationOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "DescribeBotRecommendationOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      botRecommendationStatus = schema.new({
         id = id.from(_N, "DescribeBotRecommendationOutput", "botRecommendationStatus"),
         type = "string",
         name = "botRecommendationStatus",
         target_id = prelude.String.id,
      }),
      botRecommendationId = schema.new({
         id = id.from(_N, "DescribeBotRecommendationOutput", "botRecommendationId"),
         type = "string",
         name = "botRecommendationId",
         target_id = prelude.String.id,
      }),
      failureReasons = schema.new({
         id = id.from(_N, "DescribeBotRecommendationOutput", "failureReasons"),
         type = "list",
         name = "failureReasons",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "DescribeBotRecommendationOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "DescribeBotRecommendationOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      transcriptSourceSetting = schema.new({
         id = id.from(_N, "DescribeBotRecommendationOutput", "transcriptSourceSetting"),
         type = "structure",
         name = "transcriptSourceSetting",
         target_id = id.from(_N, "TranscriptSourceSetting"),
         target = M.TranscriptSourceSetting,
      }),
      encryptionSetting = schema.new({
         id = id.from(_N, "DescribeBotRecommendationOutput", "encryptionSetting"),
         type = "structure",
         name = "encryptionSetting",
         target_id = id.from(_N, "EncryptionSetting"),
         target = M.EncryptionSetting,
      }),
      botRecommendationResults = schema.new({
         id = id.from(_N, "DescribeBotRecommendationOutput", "botRecommendationResults"),
         type = "structure",
         name = "botRecommendationResults",
         target_id = id.from(_N, "BotRecommendationResults"),
         target = M.BotRecommendationResults,
      }),
   },
})

M.DescribeBotReplicaInput = schema.new({
   id = id.from(_N, "DescribeBotReplicaRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DescribeBotReplicaInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      replicaRegion = schema.new({
         id = id.from(_N, "DescribeBotReplicaInput", "replicaRegion"),
         type = "string",
         name = "replicaRegion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeBotReplicaOutput = schema.new({
   id = id.from(_N, "DescribeBotReplicaResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DescribeBotReplicaOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      replicaRegion = schema.new({
         id = id.from(_N, "DescribeBotReplicaOutput", "replicaRegion"),
         type = "string",
         name = "replicaRegion",
         target_id = prelude.String.id,
      }),
      sourceRegion = schema.new({
         id = id.from(_N, "DescribeBotReplicaOutput", "sourceRegion"),
         type = "string",
         name = "sourceRegion",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "DescribeBotReplicaOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      botReplicaStatus = schema.new({
         id = id.from(_N, "DescribeBotReplicaOutput", "botReplicaStatus"),
         type = "string",
         name = "botReplicaStatus",
         target_id = prelude.String.id,
      }),
      failureReasons = schema.new({
         id = id.from(_N, "DescribeBotReplicaOutput", "failureReasons"),
         type = "list",
         name = "failureReasons",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.DescribeBotResourceGenerationInput = schema.new({
   id = id.from(_N, "DescribeBotResourceGenerationRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DescribeBotResourceGenerationInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "DescribeBotResourceGenerationInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "DescribeBotResourceGenerationInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      generationId = schema.new({
         id = id.from(_N, "DescribeBotResourceGenerationInput", "generationId"),
         type = "string",
         name = "generationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeBotResourceGenerationOutput = schema.new({
   id = id.from(_N, "DescribeBotResourceGenerationResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DescribeBotResourceGenerationOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "DescribeBotResourceGenerationOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "DescribeBotResourceGenerationOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      generationId = schema.new({
         id = id.from(_N, "DescribeBotResourceGenerationOutput", "generationId"),
         type = "string",
         name = "generationId",
         target_id = prelude.String.id,
      }),
      failureReasons = schema.new({
         id = id.from(_N, "DescribeBotResourceGenerationOutput", "failureReasons"),
         type = "list",
         name = "failureReasons",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      generationStatus = schema.new({
         id = id.from(_N, "DescribeBotResourceGenerationOutput", "generationStatus"),
         type = "string",
         name = "generationStatus",
         target_id = prelude.String.id,
      }),
      generationInputPrompt = schema.new({
         id = id.from(_N, "DescribeBotResourceGenerationOutput", "generationInputPrompt"),
         type = "string",
         name = "generationInputPrompt",
         target_id = prelude.String.id,
      }),
      generatedBotLocaleUrl = schema.new({
         id = id.from(_N, "DescribeBotResourceGenerationOutput", "generatedBotLocaleUrl"),
         type = "string",
         name = "generatedBotLocaleUrl",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "DescribeBotResourceGenerationOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      modelArn = schema.new({
         id = id.from(_N, "DescribeBotResourceGenerationOutput", "modelArn"),
         type = "string",
         name = "modelArn",
         target_id = prelude.String.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "DescribeBotResourceGenerationOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeBotVersionInput = schema.new({
   id = id.from(_N, "DescribeBotVersionRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DescribeBotVersionInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "DescribeBotVersionInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeBotVersionOutput = schema.new({
   id = id.from(_N, "DescribeBotVersionResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DescribeBotVersionOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botName = schema.new({
         id = id.from(_N, "DescribeBotVersionOutput", "botName"),
         type = "string",
         name = "botName",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "DescribeBotVersionOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "DescribeBotVersionOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "DescribeBotVersionOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      dataPrivacy = schema.new({
         id = id.from(_N, "DescribeBotVersionOutput", "dataPrivacy"),
         type = "structure",
         name = "dataPrivacy",
         target_id = id.from(_N, "DataPrivacy"),
         target = M.DataPrivacy,
      }),
      idleSessionTTLInSeconds = schema.new({
         id = id.from(_N, "DescribeBotVersionOutput", "idleSessionTTLInSeconds"),
         type = "integer",
         name = "idleSessionTTLInSeconds",
         target_id = prelude.Integer.id,
      }),
      botStatus = schema.new({
         id = id.from(_N, "DescribeBotVersionOutput", "botStatus"),
         type = "string",
         name = "botStatus",
         target_id = prelude.String.id,
      }),
      failureReasons = schema.new({
         id = id.from(_N, "DescribeBotVersionOutput", "failureReasons"),
         type = "list",
         name = "failureReasons",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "DescribeBotVersionOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      parentBotNetworks = schema.new({
         id = id.from(_N, "DescribeBotVersionOutput", "parentBotNetworks"),
         type = "list",
         name = "parentBotNetworks",
         target_id = prelude.Document.id,
         list_member = M.ParentBotNetwork,
      }),
      botType = schema.new({
         id = id.from(_N, "DescribeBotVersionOutput", "botType"),
         type = "string",
         name = "botType",
         target_id = prelude.String.id,
      }),
      botMembers = schema.new({
         id = id.from(_N, "DescribeBotVersionOutput", "botMembers"),
         type = "list",
         name = "botMembers",
         target_id = prelude.Document.id,
         list_member = M.BotMember,
      }),
   },
})

M.DescribeCustomVocabularyMetadataInput = schema.new({
   id = id.from(_N, "DescribeCustomVocabularyMetadataRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DescribeCustomVocabularyMetadataInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "DescribeCustomVocabularyMetadataInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "DescribeCustomVocabularyMetadataInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeCustomVocabularyMetadataOutput = schema.new({
   id = id.from(_N, "DescribeCustomVocabularyMetadataResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "DescribeCustomVocabularyMetadataOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "DescribeCustomVocabularyMetadataOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "DescribeCustomVocabularyMetadataOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      customVocabularyStatus = schema.new({
         id = id.from(_N, "DescribeCustomVocabularyMetadataOutput", "customVocabularyStatus"),
         type = "string",
         name = "customVocabularyStatus",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "DescribeCustomVocabularyMetadataOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "DescribeCustomVocabularyMetadataOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeExportInput = schema.new({
   id = id.from(_N, "DescribeExportRequest"),
   type = "structure",
   members = {
      exportId = schema.new({
         id = id.from(_N, "DescribeExportInput", "exportId"),
         type = "string",
         name = "exportId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeExportOutput = schema.new({
   id = id.from(_N, "DescribeExportResponse"),
   type = "structure",
   members = {
      exportId = schema.new({
         id = id.from(_N, "DescribeExportOutput", "exportId"),
         type = "string",
         name = "exportId",
         target_id = prelude.String.id,
      }),
      resourceSpecification = schema.new({
         id = id.from(_N, "DescribeExportOutput", "resourceSpecification"),
         type = "structure",
         name = "resourceSpecification",
         target_id = id.from(_N, "ExportResourceSpecification"),
         target = M.ExportResourceSpecification,
      }),
      fileFormat = schema.new({
         id = id.from(_N, "DescribeExportOutput", "fileFormat"),
         type = "string",
         name = "fileFormat",
         target_id = prelude.String.id,
      }),
      exportStatus = schema.new({
         id = id.from(_N, "DescribeExportOutput", "exportStatus"),
         type = "string",
         name = "exportStatus",
         target_id = prelude.String.id,
      }),
      failureReasons = schema.new({
         id = id.from(_N, "DescribeExportOutput", "failureReasons"),
         type = "list",
         name = "failureReasons",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      downloadUrl = schema.new({
         id = id.from(_N, "DescribeExportOutput", "downloadUrl"),
         type = "string",
         name = "downloadUrl",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "DescribeExportOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "DescribeExportOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeImportInput = schema.new({
   id = id.from(_N, "DescribeImportRequest"),
   type = "structure",
   members = {
      importId = schema.new({
         id = id.from(_N, "DescribeImportInput", "importId"),
         type = "string",
         name = "importId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.TestSetImportInputLocation = schema.new({
   id = id.from(_N, "TestSetImportInputLocation"),
   type = "structure",
   members = {
      s3BucketName = schema.new({
         id = id.from(_N, "TestSetImportInputLocation", "s3BucketName"),
         type = "string",
         name = "s3BucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      s3Path = schema.new({
         id = id.from(_N, "TestSetImportInputLocation", "s3Path"),
         type = "string",
         name = "s3Path",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TestSetStorageLocation = schema.new({
   id = id.from(_N, "TestSetStorageLocation"),
   type = "structure",
   members = {
      s3BucketName = schema.new({
         id = id.from(_N, "TestSetStorageLocation", "s3BucketName"),
         type = "string",
         name = "s3BucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      s3Path = schema.new({
         id = id.from(_N, "TestSetStorageLocation", "s3Path"),
         type = "string",
         name = "s3Path",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      kmsKeyArn = schema.new({
         id = id.from(_N, "TestSetStorageLocation", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.TestSetImportResourceSpecification = schema.new({
   id = id.from(_N, "TestSetImportResourceSpecification"),
   type = "structure",
   members = {
      testSetName = schema.new({
         id = id.from(_N, "TestSetImportResourceSpecification", "testSetName"),
         type = "string",
         name = "testSetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "TestSetImportResourceSpecification", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "TestSetImportResourceSpecification", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      storageLocation = schema.new({
         id = id.from(_N, "TestSetImportResourceSpecification", "storageLocation"),
         type = "structure",
         name = "storageLocation",
         target_id = id.from(_N, "TestSetStorageLocation"),
         target = M.TestSetStorageLocation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      importInputLocation = schema.new({
         id = id.from(_N, "TestSetImportResourceSpecification", "importInputLocation"),
         type = "structure",
         name = "importInputLocation",
         target_id = id.from(_N, "TestSetImportInputLocation"),
         target = M.TestSetImportInputLocation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      modality = schema.new({
         id = id.from(_N, "TestSetImportResourceSpecification", "modality"),
         type = "string",
         name = "modality",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      testSetTags = schema.new({
         id = id.from(_N, "TestSetImportResourceSpecification", "testSetTags"),
         type = "map",
         name = "testSetTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ImportResourceSpecification = schema.new({
   id = id.from(_N, "ImportResourceSpecification"),
   type = "structure",
   members = {
      botImportSpecification = schema.new({
         id = id.from(_N, "ImportResourceSpecification", "botImportSpecification"),
         type = "structure",
         name = "botImportSpecification",
         target_id = id.from(_N, "BotImportSpecification"),
         target = M.BotImportSpecification,
      }),
      botLocaleImportSpecification = schema.new({
         id = id.from(_N, "ImportResourceSpecification", "botLocaleImportSpecification"),
         type = "structure",
         name = "botLocaleImportSpecification",
         target_id = id.from(_N, "BotLocaleImportSpecification"),
         target = M.BotLocaleImportSpecification,
      }),
      customVocabularyImportSpecification = schema.new({
         id = id.from(_N, "ImportResourceSpecification", "customVocabularyImportSpecification"),
         type = "structure",
         name = "customVocabularyImportSpecification",
         target_id = id.from(_N, "CustomVocabularyImportSpecification"),
         target = M.CustomVocabularyImportSpecification,
      }),
      testSetImportResourceSpecification = schema.new({
         id = id.from(_N, "ImportResourceSpecification", "testSetImportResourceSpecification"),
         type = "structure",
         name = "testSetImportResourceSpecification",
         target_id = id.from(_N, "TestSetImportResourceSpecification"),
         target = M.TestSetImportResourceSpecification,
      }),
   },
})

M.DescribeImportOutput = schema.new({
   id = id.from(_N, "DescribeImportResponse"),
   type = "structure",
   members = {
      importId = schema.new({
         id = id.from(_N, "DescribeImportOutput", "importId"),
         type = "string",
         name = "importId",
         target_id = prelude.String.id,
      }),
      resourceSpecification = schema.new({
         id = id.from(_N, "DescribeImportOutput", "resourceSpecification"),
         type = "structure",
         name = "resourceSpecification",
         target_id = id.from(_N, "ImportResourceSpecification"),
         target = M.ImportResourceSpecification,
      }),
      importedResourceId = schema.new({
         id = id.from(_N, "DescribeImportOutput", "importedResourceId"),
         type = "string",
         name = "importedResourceId",
         target_id = prelude.String.id,
      }),
      importedResourceName = schema.new({
         id = id.from(_N, "DescribeImportOutput", "importedResourceName"),
         type = "string",
         name = "importedResourceName",
         target_id = prelude.String.id,
      }),
      mergeStrategy = schema.new({
         id = id.from(_N, "DescribeImportOutput", "mergeStrategy"),
         type = "string",
         name = "mergeStrategy",
         target_id = prelude.String.id,
      }),
      importStatus = schema.new({
         id = id.from(_N, "DescribeImportOutput", "importStatus"),
         type = "string",
         name = "importStatus",
         target_id = prelude.String.id,
      }),
      failureReasons = schema.new({
         id = id.from(_N, "DescribeImportOutput", "failureReasons"),
         type = "list",
         name = "failureReasons",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "DescribeImportOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "DescribeImportOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeIntentInput = schema.new({
   id = id.from(_N, "DescribeIntentRequest"),
   type = "structure",
   members = {
      intentId = schema.new({
         id = id.from(_N, "DescribeIntentInput", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botId = schema.new({
         id = id.from(_N, "DescribeIntentInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "DescribeIntentInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "DescribeIntentInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.SlotPriority = schema.new({
   id = id.from(_N, "SlotPriority"),
   type = "structure",
   members = {
      priority = schema.new({
         id = id.from(_N, "SlotPriority", "priority"),
         type = "integer",
         name = "priority",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      slotId = schema.new({
         id = id.from(_N, "SlotPriority", "slotId"),
         type = "string",
         name = "slotId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeResourcePolicyInput = schema.new({
   id = id.from(_N, "DescribeResourcePolicyRequest"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "DescribeResourcePolicyInput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeResourcePolicyOutput = schema.new({
   id = id.from(_N, "DescribeResourcePolicyResponse"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "DescribeResourcePolicyOutput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
      }),
      policy = schema.new({
         id = id.from(_N, "DescribeResourcePolicyOutput", "policy"),
         type = "string",
         name = "policy",
         target_id = prelude.String.id,
      }),
      revisionId = schema.new({
         id = id.from(_N, "DescribeResourcePolicyOutput", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeSlotInput = schema.new({
   id = id.from(_N, "DescribeSlotRequest"),
   type = "structure",
   members = {
      slotId = schema.new({
         id = id.from(_N, "DescribeSlotInput", "slotId"),
         type = "string",
         name = "slotId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botId = schema.new({
         id = id.from(_N, "DescribeSlotInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "DescribeSlotInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "DescribeSlotInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      intentId = schema.new({
         id = id.from(_N, "DescribeSlotInput", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeSlotTypeInput = schema.new({
   id = id.from(_N, "DescribeSlotTypeRequest"),
   type = "structure",
   members = {
      slotTypeId = schema.new({
         id = id.from(_N, "DescribeSlotTypeInput", "slotTypeId"),
         type = "string",
         name = "slotTypeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botId = schema.new({
         id = id.from(_N, "DescribeSlotTypeInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "DescribeSlotTypeInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "DescribeSlotTypeInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeSlotTypeOutput = schema.new({
   id = id.from(_N, "DescribeSlotTypeResponse"),
   type = "structure",
   members = {
      slotTypeId = schema.new({
         id = id.from(_N, "DescribeSlotTypeOutput", "slotTypeId"),
         type = "string",
         name = "slotTypeId",
         target_id = prelude.String.id,
      }),
      slotTypeName = schema.new({
         id = id.from(_N, "DescribeSlotTypeOutput", "slotTypeName"),
         type = "string",
         name = "slotTypeName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "DescribeSlotTypeOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      slotTypeValues = schema.new({
         id = id.from(_N, "DescribeSlotTypeOutput", "slotTypeValues"),
         type = "list",
         name = "slotTypeValues",
         target_id = prelude.Document.id,
         list_member = M.SlotTypeValue,
      }),
      valueSelectionSetting = schema.new({
         id = id.from(_N, "DescribeSlotTypeOutput", "valueSelectionSetting"),
         type = "structure",
         name = "valueSelectionSetting",
         target_id = id.from(_N, "SlotValueSelectionSetting"),
         target = M.SlotValueSelectionSetting,
      }),
      parentSlotTypeSignature = schema.new({
         id = id.from(_N, "DescribeSlotTypeOutput", "parentSlotTypeSignature"),
         type = "string",
         name = "parentSlotTypeSignature",
         target_id = prelude.String.id,
      }),
      botId = schema.new({
         id = id.from(_N, "DescribeSlotTypeOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "DescribeSlotTypeOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "DescribeSlotTypeOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "DescribeSlotTypeOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "DescribeSlotTypeOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      externalSourceSetting = schema.new({
         id = id.from(_N, "DescribeSlotTypeOutput", "externalSourceSetting"),
         type = "structure",
         name = "externalSourceSetting",
         target_id = id.from(_N, "ExternalSourceSetting"),
         target = M.ExternalSourceSetting,
      }),
      compositeSlotTypeSetting = schema.new({
         id = id.from(_N, "DescribeSlotTypeOutput", "compositeSlotTypeSetting"),
         type = "structure",
         name = "compositeSlotTypeSetting",
         target_id = id.from(_N, "CompositeSlotTypeSetting"),
         target = M.CompositeSlotTypeSetting,
      }),
   },
})

M.DescribeTestExecutionInput = schema.new({
   id = id.from(_N, "DescribeTestExecutionRequest"),
   type = "structure",
   members = {
      testExecutionId = schema.new({
         id = id.from(_N, "DescribeTestExecutionInput", "testExecutionId"),
         type = "string",
         name = "testExecutionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.TestExecutionTarget = schema.new({
   id = id.from(_N, "TestExecutionTarget"),
   type = "structure",
   members = {
      botAliasTarget = schema.new({
         id = id.from(_N, "TestExecutionTarget", "botAliasTarget"),
         type = "structure",
         name = "botAliasTarget",
         target_id = id.from(_N, "BotAliasTestExecutionTarget"),
         target = M.BotAliasTestExecutionTarget,
      }),
   },
})

M.DescribeTestExecutionOutput = schema.new({
   id = id.from(_N, "DescribeTestExecutionResponse"),
   type = "structure",
   members = {
      testExecutionId = schema.new({
         id = id.from(_N, "DescribeTestExecutionOutput", "testExecutionId"),
         type = "string",
         name = "testExecutionId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "DescribeTestExecutionOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "DescribeTestExecutionOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      testExecutionStatus = schema.new({
         id = id.from(_N, "DescribeTestExecutionOutput", "testExecutionStatus"),
         type = "string",
         name = "testExecutionStatus",
         target_id = prelude.String.id,
      }),
      testSetId = schema.new({
         id = id.from(_N, "DescribeTestExecutionOutput", "testSetId"),
         type = "string",
         name = "testSetId",
         target_id = prelude.String.id,
      }),
      testSetName = schema.new({
         id = id.from(_N, "DescribeTestExecutionOutput", "testSetName"),
         type = "string",
         name = "testSetName",
         target_id = prelude.String.id,
      }),
      target = schema.new({
         id = id.from(_N, "DescribeTestExecutionOutput", "target"),
         type = "structure",
         name = "target",
         target_id = id.from(_N, "TestExecutionTarget"),
         target = M.TestExecutionTarget,
      }),
      apiMode = schema.new({
         id = id.from(_N, "DescribeTestExecutionOutput", "apiMode"),
         type = "string",
         name = "apiMode",
         target_id = prelude.String.id,
      }),
      testExecutionModality = schema.new({
         id = id.from(_N, "DescribeTestExecutionOutput", "testExecutionModality"),
         type = "string",
         name = "testExecutionModality",
         target_id = prelude.String.id,
      }),
      failureReasons = schema.new({
         id = id.from(_N, "DescribeTestExecutionOutput", "failureReasons"),
         type = "list",
         name = "failureReasons",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.DescribeTestSetInput = schema.new({
   id = id.from(_N, "DescribeTestSetRequest"),
   type = "structure",
   members = {
      testSetId = schema.new({
         id = id.from(_N, "DescribeTestSetInput", "testSetId"),
         type = "string",
         name = "testSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeTestSetOutput = schema.new({
   id = id.from(_N, "DescribeTestSetResponse"),
   type = "structure",
   members = {
      testSetId = schema.new({
         id = id.from(_N, "DescribeTestSetOutput", "testSetId"),
         type = "string",
         name = "testSetId",
         target_id = prelude.String.id,
      }),
      testSetName = schema.new({
         id = id.from(_N, "DescribeTestSetOutput", "testSetName"),
         type = "string",
         name = "testSetName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "DescribeTestSetOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      modality = schema.new({
         id = id.from(_N, "DescribeTestSetOutput", "modality"),
         type = "string",
         name = "modality",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "DescribeTestSetOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "DescribeTestSetOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      numTurns = schema.new({
         id = id.from(_N, "DescribeTestSetOutput", "numTurns"),
         type = "integer",
         name = "numTurns",
         target_id = prelude.Integer.id,
      }),
      storageLocation = schema.new({
         id = id.from(_N, "DescribeTestSetOutput", "storageLocation"),
         type = "structure",
         name = "storageLocation",
         target_id = id.from(_N, "TestSetStorageLocation"),
         target = M.TestSetStorageLocation,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "DescribeTestSetOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "DescribeTestSetOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.DescribeTestSetDiscrepancyReportInput = schema.new({
   id = id.from(_N, "DescribeTestSetDiscrepancyReportRequest"),
   type = "structure",
   members = {
      testSetDiscrepancyReportId = schema.new({
         id = id.from(_N, "DescribeTestSetDiscrepancyReportInput", "testSetDiscrepancyReportId"),
         type = "string",
         name = "testSetDiscrepancyReportId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.TestSetIntentDiscrepancyItem = schema.new({
   id = id.from(_N, "TestSetIntentDiscrepancyItem"),
   type = "structure",
   members = {
      intentName = schema.new({
         id = id.from(_N, "TestSetIntentDiscrepancyItem", "intentName"),
         type = "string",
         name = "intentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorMessage = schema.new({
         id = id.from(_N, "TestSetIntentDiscrepancyItem", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TestSetSlotDiscrepancyItem = schema.new({
   id = id.from(_N, "TestSetSlotDiscrepancyItem"),
   type = "structure",
   members = {
      intentName = schema.new({
         id = id.from(_N, "TestSetSlotDiscrepancyItem", "intentName"),
         type = "string",
         name = "intentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      slotName = schema.new({
         id = id.from(_N, "TestSetSlotDiscrepancyItem", "slotName"),
         type = "string",
         name = "slotName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorMessage = schema.new({
         id = id.from(_N, "TestSetSlotDiscrepancyItem", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TestSetDiscrepancyErrors = schema.new({
   id = id.from(_N, "TestSetDiscrepancyErrors"),
   type = "structure",
   members = {
      intentDiscrepancies = schema.new({
         id = id.from(_N, "TestSetDiscrepancyErrors", "intentDiscrepancies"),
         type = "list",
         name = "intentDiscrepancies",
         target_id = prelude.Document.id,
         list_member = M.TestSetIntentDiscrepancyItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      slotDiscrepancies = schema.new({
         id = id.from(_N, "TestSetDiscrepancyErrors", "slotDiscrepancies"),
         type = "list",
         name = "slotDiscrepancies",
         target_id = prelude.Document.id,
         list_member = M.TestSetSlotDiscrepancyItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeTestSetDiscrepancyReportOutput = schema.new({
   id = id.from(_N, "DescribeTestSetDiscrepancyReportResponse"),
   type = "structure",
   members = {
      testSetDiscrepancyReportId = schema.new({
         id = id.from(_N, "DescribeTestSetDiscrepancyReportOutput", "testSetDiscrepancyReportId"),
         type = "string",
         name = "testSetDiscrepancyReportId",
         target_id = prelude.String.id,
      }),
      testSetId = schema.new({
         id = id.from(_N, "DescribeTestSetDiscrepancyReportOutput", "testSetId"),
         type = "string",
         name = "testSetId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "DescribeTestSetDiscrepancyReportOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      target = schema.new({
         id = id.from(_N, "DescribeTestSetDiscrepancyReportOutput", "target"),
         type = "structure",
         name = "target",
         target_id = id.from(_N, "TestSetDiscrepancyReportResourceTarget"),
         target = M.TestSetDiscrepancyReportResourceTarget,
      }),
      testSetDiscrepancyReportStatus = schema.new({
         id = id.from(_N, "DescribeTestSetDiscrepancyReportOutput", "testSetDiscrepancyReportStatus"),
         type = "string",
         name = "testSetDiscrepancyReportStatus",
         target_id = prelude.String.id,
      }),
      lastUpdatedDataTime = schema.new({
         id = id.from(_N, "DescribeTestSetDiscrepancyReportOutput", "lastUpdatedDataTime"),
         type = "timestamp",
         name = "lastUpdatedDataTime",
         target_id = prelude.Timestamp.id,
      }),
      testSetDiscrepancyTopErrors = schema.new({
         id = id.from(_N, "DescribeTestSetDiscrepancyReportOutput", "testSetDiscrepancyTopErrors"),
         type = "structure",
         name = "testSetDiscrepancyTopErrors",
         target_id = id.from(_N, "TestSetDiscrepancyErrors"),
         target = M.TestSetDiscrepancyErrors,
      }),
      testSetDiscrepancyRawOutputUrl = schema.new({
         id = id.from(_N, "DescribeTestSetDiscrepancyReportOutput", "testSetDiscrepancyRawOutputUrl"),
         type = "string",
         name = "testSetDiscrepancyRawOutputUrl",
         target_id = prelude.String.id,
      }),
      failureReasons = schema.new({
         id = id.from(_N, "DescribeTestSetDiscrepancyReportOutput", "failureReasons"),
         type = "list",
         name = "failureReasons",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.DescribeTestSetGenerationInput = schema.new({
   id = id.from(_N, "DescribeTestSetGenerationRequest"),
   type = "structure",
   members = {
      testSetGenerationId = schema.new({
         id = id.from(_N, "DescribeTestSetGenerationInput", "testSetGenerationId"),
         type = "string",
         name = "testSetGenerationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.TestSetGenerationDataSource = schema.new({
   id = id.from(_N, "TestSetGenerationDataSource"),
   type = "structure",
   members = {
      conversationLogsDataSource = schema.new({
         id = id.from(_N, "TestSetGenerationDataSource", "conversationLogsDataSource"),
         type = "structure",
         name = "conversationLogsDataSource",
         target_id = id.from(_N, "ConversationLogsDataSource"),
         target = M.ConversationLogsDataSource,
      }),
   },
})

M.DescribeTestSetGenerationOutput = schema.new({
   id = id.from(_N, "DescribeTestSetGenerationResponse"),
   type = "structure",
   members = {
      testSetGenerationId = schema.new({
         id = id.from(_N, "DescribeTestSetGenerationOutput", "testSetGenerationId"),
         type = "string",
         name = "testSetGenerationId",
         target_id = prelude.String.id,
      }),
      testSetGenerationStatus = schema.new({
         id = id.from(_N, "DescribeTestSetGenerationOutput", "testSetGenerationStatus"),
         type = "string",
         name = "testSetGenerationStatus",
         target_id = prelude.String.id,
      }),
      failureReasons = schema.new({
         id = id.from(_N, "DescribeTestSetGenerationOutput", "failureReasons"),
         type = "list",
         name = "failureReasons",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      testSetId = schema.new({
         id = id.from(_N, "DescribeTestSetGenerationOutput", "testSetId"),
         type = "string",
         name = "testSetId",
         target_id = prelude.String.id,
      }),
      testSetName = schema.new({
         id = id.from(_N, "DescribeTestSetGenerationOutput", "testSetName"),
         type = "string",
         name = "testSetName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "DescribeTestSetGenerationOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      storageLocation = schema.new({
         id = id.from(_N, "DescribeTestSetGenerationOutput", "storageLocation"),
         type = "structure",
         name = "storageLocation",
         target_id = id.from(_N, "TestSetStorageLocation"),
         target = M.TestSetStorageLocation,
      }),
      generationDataSource = schema.new({
         id = id.from(_N, "DescribeTestSetGenerationOutput", "generationDataSource"),
         type = "structure",
         name = "generationDataSource",
         target_id = id.from(_N, "TestSetGenerationDataSource"),
         target = M.TestSetGenerationDataSource,
      }),
      roleArn = schema.new({
         id = id.from(_N, "DescribeTestSetGenerationOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "DescribeTestSetGenerationOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "DescribeTestSetGenerationOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ExportFilter = schema.new({
   id = id.from(_N, "ExportFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "ExportFilter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "ExportFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operator = schema.new({
         id = id.from(_N, "ExportFilter", "operator"),
         type = "string",
         name = "operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ExportSortBy = schema.new({
   id = id.from(_N, "ExportSortBy"),
   type = "structure",
   members = {
      attribute = schema.new({
         id = id.from(_N, "ExportSortBy", "attribute"),
         type = "string",
         name = "attribute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "ExportSortBy", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ExportSummary = schema.new({
   id = id.from(_N, "ExportSummary"),
   type = "structure",
   members = {
      exportId = schema.new({
         id = id.from(_N, "ExportSummary", "exportId"),
         type = "string",
         name = "exportId",
         target_id = prelude.String.id,
      }),
      resourceSpecification = schema.new({
         id = id.from(_N, "ExportSummary", "resourceSpecification"),
         type = "structure",
         name = "resourceSpecification",
         target_id = id.from(_N, "ExportResourceSpecification"),
         target = M.ExportResourceSpecification,
      }),
      fileFormat = schema.new({
         id = id.from(_N, "ExportSummary", "fileFormat"),
         type = "string",
         name = "fileFormat",
         target_id = prelude.String.id,
      }),
      exportStatus = schema.new({
         id = id.from(_N, "ExportSummary", "exportStatus"),
         type = "string",
         name = "exportStatus",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "ExportSummary", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "ExportSummary", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GenerateBotElementInput = schema.new({
   id = id.from(_N, "GenerateBotElementRequest"),
   type = "structure",
   members = {
      intentId = schema.new({
         id = id.from(_N, "GenerateBotElementInput", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      botId = schema.new({
         id = id.from(_N, "GenerateBotElementInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "GenerateBotElementInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "GenerateBotElementInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GenerateBotElementOutput = schema.new({
   id = id.from(_N, "GenerateBotElementResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "GenerateBotElementOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "GenerateBotElementOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "GenerateBotElementOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      intentId = schema.new({
         id = id.from(_N, "GenerateBotElementOutput", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
      }),
      sampleUtterances = schema.new({
         id = id.from(_N, "GenerateBotElementOutput", "sampleUtterances"),
         type = "list",
         name = "sampleUtterances",
         target_id = prelude.Document.id,
         list_member = M.SampleUtterance,
      }),
   },
})

M.GenerationSortBy = schema.new({
   id = id.from(_N, "GenerationSortBy"),
   type = "structure",
   members = {
      attribute = schema.new({
         id = id.from(_N, "GenerationSortBy", "attribute"),
         type = "string",
         name = "attribute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "GenerationSortBy", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GenerationSummary = schema.new({
   id = id.from(_N, "GenerationSummary"),
   type = "structure",
   members = {
      generationId = schema.new({
         id = id.from(_N, "GenerationSummary", "generationId"),
         type = "string",
         name = "generationId",
         target_id = prelude.String.id,
      }),
      generationStatus = schema.new({
         id = id.from(_N, "GenerationSummary", "generationStatus"),
         type = "string",
         name = "generationStatus",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "GenerationSummary", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "GenerationSummary", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetTestExecutionArtifactsUrlInput = schema.new({
   id = id.from(_N, "GetTestExecutionArtifactsUrlRequest"),
   type = "structure",
   members = {
      testExecutionId = schema.new({
         id = id.from(_N, "GetTestExecutionArtifactsUrlInput", "testExecutionId"),
         type = "string",
         name = "testExecutionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetTestExecutionArtifactsUrlOutput = schema.new({
   id = id.from(_N, "GetTestExecutionArtifactsUrlResponse"),
   type = "structure",
   members = {
      testExecutionId = schema.new({
         id = id.from(_N, "GetTestExecutionArtifactsUrlOutput", "testExecutionId"),
         type = "string",
         name = "testExecutionId",
         target_id = prelude.String.id,
      }),
      downloadArtifactsUrl = schema.new({
         id = id.from(_N, "GetTestExecutionArtifactsUrlOutput", "downloadArtifactsUrl"),
         type = "string",
         name = "downloadArtifactsUrl",
         target_id = prelude.String.id,
      }),
   },
})

M.ImportFilter = schema.new({
   id = id.from(_N, "ImportFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "ImportFilter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "ImportFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operator = schema.new({
         id = id.from(_N, "ImportFilter", "operator"),
         type = "string",
         name = "operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ImportSortBy = schema.new({
   id = id.from(_N, "ImportSortBy"),
   type = "structure",
   members = {
      attribute = schema.new({
         id = id.from(_N, "ImportSortBy", "attribute"),
         type = "string",
         name = "attribute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "ImportSortBy", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ImportSummary = schema.new({
   id = id.from(_N, "ImportSummary"),
   type = "structure",
   members = {
      importId = schema.new({
         id = id.from(_N, "ImportSummary", "importId"),
         type = "string",
         name = "importId",
         target_id = prelude.String.id,
      }),
      importedResourceId = schema.new({
         id = id.from(_N, "ImportSummary", "importedResourceId"),
         type = "string",
         name = "importedResourceId",
         target_id = prelude.String.id,
      }),
      importedResourceName = schema.new({
         id = id.from(_N, "ImportSummary", "importedResourceName"),
         type = "string",
         name = "importedResourceName",
         target_id = prelude.String.id,
      }),
      importStatus = schema.new({
         id = id.from(_N, "ImportSummary", "importStatus"),
         type = "string",
         name = "importStatus",
         target_id = prelude.String.id,
      }),
      mergeStrategy = schema.new({
         id = id.from(_N, "ImportSummary", "mergeStrategy"),
         type = "string",
         name = "mergeStrategy",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "ImportSummary", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "ImportSummary", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      importedResourceType = schema.new({
         id = id.from(_N, "ImportSummary", "importedResourceType"),
         type = "string",
         name = "importedResourceType",
         target_id = prelude.String.id,
      }),
   },
})

M.RuntimeHintValue = schema.new({
   id = id.from(_N, "RuntimeHintValue"),
   type = "structure",
   members = {
      phrase = schema.new({
         id = id.from(_N, "RuntimeHintValue", "phrase"),
         type = "string",
         name = "phrase",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IntentClassificationTestResultItemCounts = schema.new({
   id = id.from(_N, "IntentClassificationTestResultItemCounts"),
   type = "structure",
   members = {
      totalResultCount = schema.new({
         id = id.from(_N, "IntentClassificationTestResultItemCounts", "totalResultCount"),
         type = "integer",
         name = "totalResultCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      speechTranscriptionResultCounts = schema.new({
         id = id.from(_N, "IntentClassificationTestResultItemCounts", "speechTranscriptionResultCounts"),
         type = "map",
         name = "speechTranscriptionResultCounts",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Integer,
      }),
      intentMatchResultCounts = schema.new({
         id = id.from(_N, "IntentClassificationTestResultItemCounts", "intentMatchResultCounts"),
         type = "map",
         name = "intentMatchResultCounts",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Integer,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IntentClassificationTestResultItem = schema.new({
   id = id.from(_N, "IntentClassificationTestResultItem"),
   type = "structure",
   members = {
      intentName = schema.new({
         id = id.from(_N, "IntentClassificationTestResultItem", "intentName"),
         type = "string",
         name = "intentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      multiTurnConversation = schema.new({
         id = id.from(_N, "IntentClassificationTestResultItem", "multiTurnConversation"),
         type = "boolean",
         name = "multiTurnConversation",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
      resultCounts = schema.new({
         id = id.from(_N, "IntentClassificationTestResultItem", "resultCounts"),
         type = "structure",
         name = "resultCounts",
         target_id = id.from(_N, "IntentClassificationTestResultItemCounts"),
         target = M.IntentClassificationTestResultItemCounts,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IntentClassificationTestResults = schema.new({
   id = id.from(_N, "IntentClassificationTestResults"),
   type = "structure",
   members = {
      items = schema.new({
         id = id.from(_N, "IntentClassificationTestResults", "items"),
         type = "list",
         name = "items",
         target_id = prelude.Document.id,
         list_member = M.IntentClassificationTestResultItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IntentFilter = schema.new({
   id = id.from(_N, "IntentFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "IntentFilter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "IntentFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operator = schema.new({
         id = id.from(_N, "IntentFilter", "operator"),
         type = "string",
         name = "operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SlotResolutionTestResultItemCounts = schema.new({
   id = id.from(_N, "SlotResolutionTestResultItemCounts"),
   type = "structure",
   members = {
      totalResultCount = schema.new({
         id = id.from(_N, "SlotResolutionTestResultItemCounts", "totalResultCount"),
         type = "integer",
         name = "totalResultCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      speechTranscriptionResultCounts = schema.new({
         id = id.from(_N, "SlotResolutionTestResultItemCounts", "speechTranscriptionResultCounts"),
         type = "map",
         name = "speechTranscriptionResultCounts",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Integer,
      }),
      slotMatchResultCounts = schema.new({
         id = id.from(_N, "SlotResolutionTestResultItemCounts", "slotMatchResultCounts"),
         type = "map",
         name = "slotMatchResultCounts",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Integer,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SlotResolutionTestResultItem = schema.new({
   id = id.from(_N, "SlotResolutionTestResultItem"),
   type = "structure",
   members = {
      slotName = schema.new({
         id = id.from(_N, "SlotResolutionTestResultItem", "slotName"),
         type = "string",
         name = "slotName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resultCounts = schema.new({
         id = id.from(_N, "SlotResolutionTestResultItem", "resultCounts"),
         type = "structure",
         name = "resultCounts",
         target_id = id.from(_N, "SlotResolutionTestResultItemCounts"),
         target = M.SlotResolutionTestResultItemCounts,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IntentLevelSlotResolutionTestResultItem = schema.new({
   id = id.from(_N, "IntentLevelSlotResolutionTestResultItem"),
   type = "structure",
   members = {
      intentName = schema.new({
         id = id.from(_N, "IntentLevelSlotResolutionTestResultItem", "intentName"),
         type = "string",
         name = "intentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      multiTurnConversation = schema.new({
         id = id.from(_N, "IntentLevelSlotResolutionTestResultItem", "multiTurnConversation"),
         type = "boolean",
         name = "multiTurnConversation",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
      slotResolutionResults = schema.new({
         id = id.from(_N, "IntentLevelSlotResolutionTestResultItem", "slotResolutionResults"),
         type = "list",
         name = "slotResolutionResults",
         target_id = prelude.Document.id,
         list_member = M.SlotResolutionTestResultItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IntentLevelSlotResolutionTestResults = schema.new({
   id = id.from(_N, "IntentLevelSlotResolutionTestResults"),
   type = "structure",
   members = {
      items = schema.new({
         id = id.from(_N, "IntentLevelSlotResolutionTestResults", "items"),
         type = "list",
         name = "items",
         target_id = prelude.Document.id,
         list_member = M.IntentLevelSlotResolutionTestResultItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IntentSortBy = schema.new({
   id = id.from(_N, "IntentSortBy"),
   type = "structure",
   members = {
      attribute = schema.new({
         id = id.from(_N, "IntentSortBy", "attribute"),
         type = "string",
         name = "attribute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "IntentSortBy", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IntentSummary = schema.new({
   id = id.from(_N, "IntentSummary"),
   type = "structure",
   members = {
      intentId = schema.new({
         id = id.from(_N, "IntentSummary", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
      }),
      intentName = schema.new({
         id = id.from(_N, "IntentSummary", "intentName"),
         type = "string",
         name = "intentName",
         target_id = prelude.String.id,
      }),
      intentDisplayName = schema.new({
         id = id.from(_N, "IntentSummary", "intentDisplayName"),
         type = "string",
         name = "intentDisplayName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "IntentSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      parentIntentSignature = schema.new({
         id = id.from(_N, "IntentSummary", "parentIntentSignature"),
         type = "string",
         name = "parentIntentSignature",
         target_id = prelude.String.id,
      }),
      inputContexts = schema.new({
         id = id.from(_N, "IntentSummary", "inputContexts"),
         type = "list",
         name = "inputContexts",
         target_id = prelude.Document.id,
         list_member = M.InputContext,
      }),
      outputContexts = schema.new({
         id = id.from(_N, "IntentSummary", "outputContexts"),
         type = "list",
         name = "outputContexts",
         target_id = prelude.Document.id,
         list_member = M.OutputContext,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "IntentSummary", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.InvokedIntentSample = schema.new({
   id = id.from(_N, "InvokedIntentSample"),
   type = "structure",
   members = {
      intentName = schema.new({
         id = id.from(_N, "InvokedIntentSample", "intentName"),
         type = "string",
         name = "intentName",
         target_id = prelude.String.id,
      }),
   },
})

M.RelativeAggregationDuration = schema.new({
   id = id.from(_N, "RelativeAggregationDuration"),
   type = "structure",
   members = {
      timeDimension = schema.new({
         id = id.from(_N, "RelativeAggregationDuration", "timeDimension"),
         type = "string",
         name = "timeDimension",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timeValue = schema.new({
         id = id.from(_N, "RelativeAggregationDuration", "timeValue"),
         type = "integer",
         name = "timeValue",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UtteranceAggregationDuration = schema.new({
   id = id.from(_N, "UtteranceAggregationDuration"),
   type = "structure",
   members = {
      relativeAggregationDuration = schema.new({
         id = id.from(_N, "UtteranceAggregationDuration", "relativeAggregationDuration"),
         type = "structure",
         name = "relativeAggregationDuration",
         target_id = id.from(_N, "RelativeAggregationDuration"),
         target = M.RelativeAggregationDuration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListAggregatedUtterancesInput = schema.new({
   id = id.from(_N, "ListAggregatedUtterancesRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botAliasId = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesInput", "botAliasId"),
         type = "string",
         name = "botAliasId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      aggregationDuration = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesInput", "aggregationDuration"),
         type = "structure",
         name = "aggregationDuration",
         target_id = id.from(_N, "UtteranceAggregationDuration"),
         target = M.UtteranceAggregationDuration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesInput", "sortBy"),
         type = "structure",
         name = "sortBy",
         target_id = id.from(_N, "AggregatedUtterancesSortBy"),
         target = M.AggregatedUtterancesSortBy,
      }),
      filters = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.AggregatedUtterancesFilter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAggregatedUtterancesOutput = schema.new({
   id = id.from(_N, "ListAggregatedUtterancesResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botAliasId = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesOutput", "botAliasId"),
         type = "string",
         name = "botAliasId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      aggregationDuration = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesOutput", "aggregationDuration"),
         type = "structure",
         name = "aggregationDuration",
         target_id = id.from(_N, "UtteranceAggregationDuration"),
         target = M.UtteranceAggregationDuration,
      }),
      aggregationWindowStartTime = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesOutput", "aggregationWindowStartTime"),
         type = "timestamp",
         name = "aggregationWindowStartTime",
         target_id = prelude.Timestamp.id,
      }),
      aggregationWindowEndTime = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesOutput", "aggregationWindowEndTime"),
         type = "timestamp",
         name = "aggregationWindowEndTime",
         target_id = prelude.Timestamp.id,
      }),
      aggregationLastRefreshedDateTime = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesOutput", "aggregationLastRefreshedDateTime"),
         type = "timestamp",
         name = "aggregationLastRefreshedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      aggregatedUtterancesSummaries = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesOutput", "aggregatedUtterancesSummaries"),
         type = "list",
         name = "aggregatedUtterancesSummaries",
         target_id = prelude.Document.id,
         list_member = M.AggregatedUtterancesSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAggregatedUtterancesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBotAliasesInput = schema.new({
   id = id.from(_N, "ListBotAliasesRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListBotAliasesInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListBotAliasesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBotAliasesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBotAliasesOutput = schema.new({
   id = id.from(_N, "ListBotAliasesResponse"),
   type = "structure",
   members = {
      botAliasSummaries = schema.new({
         id = id.from(_N, "ListBotAliasesOutput", "botAliasSummaries"),
         type = "list",
         name = "botAliasSummaries",
         target_id = prelude.Document.id,
         list_member = M.BotAliasSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBotAliasesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      botId = schema.new({
         id = id.from(_N, "ListBotAliasesOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBotAliasReplicasInput = schema.new({
   id = id.from(_N, "ListBotAliasReplicasRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListBotAliasReplicasInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      replicaRegion = schema.new({
         id = id.from(_N, "ListBotAliasReplicasInput", "replicaRegion"),
         type = "string",
         name = "replicaRegion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListBotAliasReplicasInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBotAliasReplicasInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBotAliasReplicasOutput = schema.new({
   id = id.from(_N, "ListBotAliasReplicasResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListBotAliasReplicasOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      sourceRegion = schema.new({
         id = id.from(_N, "ListBotAliasReplicasOutput", "sourceRegion"),
         type = "string",
         name = "sourceRegion",
         target_id = prelude.String.id,
      }),
      replicaRegion = schema.new({
         id = id.from(_N, "ListBotAliasReplicasOutput", "replicaRegion"),
         type = "string",
         name = "replicaRegion",
         target_id = prelude.String.id,
      }),
      botAliasReplicaSummaries = schema.new({
         id = id.from(_N, "ListBotAliasReplicasOutput", "botAliasReplicaSummaries"),
         type = "list",
         name = "botAliasReplicaSummaries",
         target_id = prelude.Document.id,
         list_member = M.BotAliasReplicaSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBotAliasReplicasOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBotAnalyzerHistoryInput = schema.new({
   id = id.from(_N, "ListBotAnalyzerHistoryRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListBotAnalyzerHistoryInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "ListBotAnalyzerHistoryInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListBotAnalyzerHistoryInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBotAnalyzerHistoryInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListBotAnalyzerHistoryInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListBotAnalyzerHistoryOutput = schema.new({
   id = id.from(_N, "ListBotAnalyzerHistoryResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListBotAnalyzerHistoryOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "ListBotAnalyzerHistoryOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListBotAnalyzerHistoryOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      botAnalyzerHistoryList = schema.new({
         id = id.from(_N, "ListBotAnalyzerHistoryOutput", "botAnalyzerHistoryList"),
         type = "list",
         name = "botAnalyzerHistoryList",
         target_id = prelude.Document.id,
         list_member = M.BotAnalyzerHistorySummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBotAnalyzerHistoryOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBotLocalesInput = schema.new({
   id = id.from(_N, "ListBotLocalesRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListBotLocalesInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListBotLocalesInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListBotLocalesInput", "sortBy"),
         type = "structure",
         name = "sortBy",
         target_id = id.from(_N, "BotLocaleSortBy"),
         target = M.BotLocaleSortBy,
      }),
      filters = schema.new({
         id = id.from(_N, "ListBotLocalesInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.BotLocaleFilter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListBotLocalesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBotLocalesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBotLocalesOutput = schema.new({
   id = id.from(_N, "ListBotLocalesResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListBotLocalesOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListBotLocalesOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBotLocalesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      botLocaleSummaries = schema.new({
         id = id.from(_N, "ListBotLocalesOutput", "botLocaleSummaries"),
         type = "list",
         name = "botLocaleSummaries",
         target_id = prelude.Document.id,
         list_member = M.BotLocaleSummary,
      }),
   },
})

M.ListBotRecommendationsInput = schema.new({
   id = id.from(_N, "ListBotRecommendationsRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListBotRecommendationsInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListBotRecommendationsInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "ListBotRecommendationsInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListBotRecommendationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBotRecommendationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBotRecommendationsOutput = schema.new({
   id = id.from(_N, "ListBotRecommendationsResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListBotRecommendationsOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListBotRecommendationsOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "ListBotRecommendationsOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      botRecommendationSummaries = schema.new({
         id = id.from(_N, "ListBotRecommendationsOutput", "botRecommendationSummaries"),
         type = "list",
         name = "botRecommendationSummaries",
         target_id = prelude.Document.id,
         list_member = M.BotRecommendationSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBotRecommendationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBotReplicasInput = schema.new({
   id = id.from(_N, "ListBotReplicasRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListBotReplicasInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ListBotReplicasOutput = schema.new({
   id = id.from(_N, "ListBotReplicasResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListBotReplicasOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      sourceRegion = schema.new({
         id = id.from(_N, "ListBotReplicasOutput", "sourceRegion"),
         type = "string",
         name = "sourceRegion",
         target_id = prelude.String.id,
      }),
      botReplicaSummaries = schema.new({
         id = id.from(_N, "ListBotReplicasOutput", "botReplicaSummaries"),
         type = "list",
         name = "botReplicaSummaries",
         target_id = prelude.Document.id,
         list_member = M.BotReplicaSummary,
      }),
   },
})

M.ListBotResourceGenerationsInput = schema.new({
   id = id.from(_N, "ListBotResourceGenerationsRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListBotResourceGenerationsInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListBotResourceGenerationsInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "ListBotResourceGenerationsInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListBotResourceGenerationsInput", "sortBy"),
         type = "structure",
         name = "sortBy",
         target_id = id.from(_N, "GenerationSortBy"),
         target = M.GenerationSortBy,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListBotResourceGenerationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBotResourceGenerationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBotResourceGenerationsOutput = schema.new({
   id = id.from(_N, "ListBotResourceGenerationsResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListBotResourceGenerationsOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListBotResourceGenerationsOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "ListBotResourceGenerationsOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      generationSummaries = schema.new({
         id = id.from(_N, "ListBotResourceGenerationsOutput", "generationSummaries"),
         type = "list",
         name = "generationSummaries",
         target_id = prelude.Document.id,
         list_member = M.GenerationSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBotResourceGenerationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBotsInput = schema.new({
   id = id.from(_N, "ListBotsRequest"),
   type = "structure",
   members = {
      sortBy = schema.new({
         id = id.from(_N, "ListBotsInput", "sortBy"),
         type = "structure",
         name = "sortBy",
         target_id = id.from(_N, "BotSortBy"),
         target = M.BotSortBy,
      }),
      filters = schema.new({
         id = id.from(_N, "ListBotsInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.BotFilter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListBotsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBotsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBotsOutput = schema.new({
   id = id.from(_N, "ListBotsResponse"),
   type = "structure",
   members = {
      botSummaries = schema.new({
         id = id.from(_N, "ListBotsOutput", "botSummaries"),
         type = "list",
         name = "botSummaries",
         target_id = prelude.Document.id,
         list_member = M.BotSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBotsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBotVersionReplicasInput = schema.new({
   id = id.from(_N, "ListBotVersionReplicasRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListBotVersionReplicasInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      replicaRegion = schema.new({
         id = id.from(_N, "ListBotVersionReplicasInput", "replicaRegion"),
         type = "string",
         name = "replicaRegion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListBotVersionReplicasInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBotVersionReplicasInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListBotVersionReplicasInput", "sortBy"),
         type = "structure",
         name = "sortBy",
         target_id = id.from(_N, "BotVersionReplicaSortBy"),
         target = M.BotVersionReplicaSortBy,
      }),
   },
})

M.ListBotVersionReplicasOutput = schema.new({
   id = id.from(_N, "ListBotVersionReplicasResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListBotVersionReplicasOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      sourceRegion = schema.new({
         id = id.from(_N, "ListBotVersionReplicasOutput", "sourceRegion"),
         type = "string",
         name = "sourceRegion",
         target_id = prelude.String.id,
      }),
      replicaRegion = schema.new({
         id = id.from(_N, "ListBotVersionReplicasOutput", "replicaRegion"),
         type = "string",
         name = "replicaRegion",
         target_id = prelude.String.id,
      }),
      botVersionReplicaSummaries = schema.new({
         id = id.from(_N, "ListBotVersionReplicasOutput", "botVersionReplicaSummaries"),
         type = "list",
         name = "botVersionReplicaSummaries",
         target_id = prelude.Document.id,
         list_member = M.BotVersionReplicaSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBotVersionReplicasOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBotVersionsInput = schema.new({
   id = id.from(_N, "ListBotVersionsRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListBotVersionsInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListBotVersionsInput", "sortBy"),
         type = "structure",
         name = "sortBy",
         target_id = id.from(_N, "BotVersionSortBy"),
         target = M.BotVersionSortBy,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListBotVersionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBotVersionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBotVersionsOutput = schema.new({
   id = id.from(_N, "ListBotVersionsResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListBotVersionsOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersionSummaries = schema.new({
         id = id.from(_N, "ListBotVersionsOutput", "botVersionSummaries"),
         type = "list",
         name = "botVersionSummaries",
         target_id = prelude.Document.id,
         list_member = M.BotVersionSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBotVersionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBuiltInIntentsInput = schema.new({
   id = id.from(_N, "ListBuiltInIntentsRequest"),
   type = "structure",
   members = {
      localeId = schema.new({
         id = id.from(_N, "ListBuiltInIntentsInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListBuiltInIntentsInput", "sortBy"),
         type = "structure",
         name = "sortBy",
         target_id = id.from(_N, "BuiltInIntentSortBy"),
         target = M.BuiltInIntentSortBy,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListBuiltInIntentsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBuiltInIntentsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBuiltInIntentsOutput = schema.new({
   id = id.from(_N, "ListBuiltInIntentsResponse"),
   type = "structure",
   members = {
      builtInIntentSummaries = schema.new({
         id = id.from(_N, "ListBuiltInIntentsOutput", "builtInIntentSummaries"),
         type = "list",
         name = "builtInIntentSummaries",
         target_id = prelude.Document.id,
         list_member = M.BuiltInIntentSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBuiltInIntentsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "ListBuiltInIntentsOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBuiltInSlotTypesInput = schema.new({
   id = id.from(_N, "ListBuiltInSlotTypesRequest"),
   type = "structure",
   members = {
      localeId = schema.new({
         id = id.from(_N, "ListBuiltInSlotTypesInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListBuiltInSlotTypesInput", "sortBy"),
         type = "structure",
         name = "sortBy",
         target_id = id.from(_N, "BuiltInSlotTypeSortBy"),
         target = M.BuiltInSlotTypeSortBy,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListBuiltInSlotTypesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBuiltInSlotTypesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBuiltInSlotTypesOutput = schema.new({
   id = id.from(_N, "ListBuiltInSlotTypesResponse"),
   type = "structure",
   members = {
      builtInSlotTypeSummaries = schema.new({
         id = id.from(_N, "ListBuiltInSlotTypesOutput", "builtInSlotTypeSummaries"),
         type = "list",
         name = "builtInSlotTypeSummaries",
         target_id = prelude.Document.id,
         list_member = M.BuiltInSlotTypeSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListBuiltInSlotTypesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "ListBuiltInSlotTypesOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCustomVocabularyItemsInput = schema.new({
   id = id.from(_N, "ListCustomVocabularyItemsRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListCustomVocabularyItemsInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListCustomVocabularyItemsInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "ListCustomVocabularyItemsInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListCustomVocabularyItemsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCustomVocabularyItemsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCustomVocabularyItemsOutput = schema.new({
   id = id.from(_N, "ListCustomVocabularyItemsResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListCustomVocabularyItemsOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListCustomVocabularyItemsOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "ListCustomVocabularyItemsOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      customVocabularyItems = schema.new({
         id = id.from(_N, "ListCustomVocabularyItemsOutput", "customVocabularyItems"),
         type = "list",
         name = "customVocabularyItems",
         target_id = prelude.Document.id,
         list_member = M.CustomVocabularyItem,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCustomVocabularyItemsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListExportsInput = schema.new({
   id = id.from(_N, "ListExportsRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListExportsInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListExportsInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListExportsInput", "sortBy"),
         type = "structure",
         name = "sortBy",
         target_id = id.from(_N, "ExportSortBy"),
         target = M.ExportSortBy,
      }),
      filters = schema.new({
         id = id.from(_N, "ListExportsInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.ExportFilter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListExportsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListExportsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "ListExportsInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
   },
})

M.ListExportsOutput = schema.new({
   id = id.from(_N, "ListExportsResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListExportsOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListExportsOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      exportSummaries = schema.new({
         id = id.from(_N, "ListExportsOutput", "exportSummaries"),
         type = "list",
         name = "exportSummaries",
         target_id = prelude.Document.id,
         list_member = M.ExportSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListExportsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "ListExportsOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
   },
})

M.ListImportsInput = schema.new({
   id = id.from(_N, "ListImportsRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListImportsInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListImportsInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListImportsInput", "sortBy"),
         type = "structure",
         name = "sortBy",
         target_id = id.from(_N, "ImportSortBy"),
         target = M.ImportSortBy,
      }),
      filters = schema.new({
         id = id.from(_N, "ListImportsInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.ImportFilter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListImportsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListImportsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "ListImportsInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
   },
})

M.ListImportsOutput = schema.new({
   id = id.from(_N, "ListImportsResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListImportsOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListImportsOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      importSummaries = schema.new({
         id = id.from(_N, "ListImportsOutput", "importSummaries"),
         type = "list",
         name = "importSummaries",
         target_id = prelude.Document.id,
         list_member = M.ImportSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListImportsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "ListImportsOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
   },
})

M.ListIntentMetricsInput = schema.new({
   id = id.from(_N, "ListIntentMetricsRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListIntentMetricsInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      startDateTime = schema.new({
         id = id.from(_N, "ListIntentMetricsInput", "startDateTime"),
         type = "timestamp",
         name = "startDateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endDateTime = schema.new({
         id = id.from(_N, "ListIntentMetricsInput", "endDateTime"),
         type = "timestamp",
         name = "endDateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      metrics = schema.new({
         id = id.from(_N, "ListIntentMetricsInput", "metrics"),
         type = "list",
         name = "metrics",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsIntentMetric,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      binBy = schema.new({
         id = id.from(_N, "ListIntentMetricsInput", "binBy"),
         type = "list",
         name = "binBy",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsBinBySpecification,
      }),
      groupBy = schema.new({
         id = id.from(_N, "ListIntentMetricsInput", "groupBy"),
         type = "list",
         name = "groupBy",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsIntentGroupBySpecification,
      }),
      filters = schema.new({
         id = id.from(_N, "ListIntentMetricsInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsIntentFilter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListIntentMetricsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListIntentMetricsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListIntentMetricsOutput = schema.new({
   id = id.from(_N, "ListIntentMetricsResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListIntentMetricsOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      results = schema.new({
         id = id.from(_N, "ListIntentMetricsOutput", "results"),
         type = "list",
         name = "results",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsIntentResult,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListIntentMetricsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListIntentPathsInput = schema.new({
   id = id.from(_N, "ListIntentPathsRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListIntentPathsInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      startDateTime = schema.new({
         id = id.from(_N, "ListIntentPathsInput", "startDateTime"),
         type = "timestamp",
         name = "startDateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endDateTime = schema.new({
         id = id.from(_N, "ListIntentPathsInput", "endDateTime"),
         type = "timestamp",
         name = "endDateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      intentPath = schema.new({
         id = id.from(_N, "ListIntentPathsInput", "intentPath"),
         type = "string",
         name = "intentPath",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      filters = schema.new({
         id = id.from(_N, "ListIntentPathsInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsPathFilter,
      }),
   },
})

M.ListIntentPathsOutput = schema.new({
   id = id.from(_N, "ListIntentPathsResponse"),
   type = "structure",
   members = {
      nodeSummaries = schema.new({
         id = id.from(_N, "ListIntentPathsOutput", "nodeSummaries"),
         type = "list",
         name = "nodeSummaries",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsIntentNodeSummary,
      }),
   },
})

M.ListIntentsInput = schema.new({
   id = id.from(_N, "ListIntentsRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListIntentsInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListIntentsInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "ListIntentsInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListIntentsInput", "sortBy"),
         type = "structure",
         name = "sortBy",
         target_id = id.from(_N, "IntentSortBy"),
         target = M.IntentSortBy,
      }),
      filters = schema.new({
         id = id.from(_N, "ListIntentsInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.IntentFilter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListIntentsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListIntentsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListIntentsOutput = schema.new({
   id = id.from(_N, "ListIntentsResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListIntentsOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListIntentsOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "ListIntentsOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      intentSummaries = schema.new({
         id = id.from(_N, "ListIntentsOutput", "intentSummaries"),
         type = "list",
         name = "intentSummaries",
         target_id = prelude.Document.id,
         list_member = M.IntentSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListIntentsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListIntentStageMetricsInput = schema.new({
   id = id.from(_N, "ListIntentStageMetricsRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListIntentStageMetricsInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      startDateTime = schema.new({
         id = id.from(_N, "ListIntentStageMetricsInput", "startDateTime"),
         type = "timestamp",
         name = "startDateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endDateTime = schema.new({
         id = id.from(_N, "ListIntentStageMetricsInput", "endDateTime"),
         type = "timestamp",
         name = "endDateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      metrics = schema.new({
         id = id.from(_N, "ListIntentStageMetricsInput", "metrics"),
         type = "list",
         name = "metrics",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsIntentStageMetric,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      binBy = schema.new({
         id = id.from(_N, "ListIntentStageMetricsInput", "binBy"),
         type = "list",
         name = "binBy",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsBinBySpecification,
      }),
      groupBy = schema.new({
         id = id.from(_N, "ListIntentStageMetricsInput", "groupBy"),
         type = "list",
         name = "groupBy",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsIntentStageGroupBySpecification,
      }),
      filters = schema.new({
         id = id.from(_N, "ListIntentStageMetricsInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsIntentStageFilter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListIntentStageMetricsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListIntentStageMetricsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListIntentStageMetricsOutput = schema.new({
   id = id.from(_N, "ListIntentStageMetricsResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListIntentStageMetricsOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      results = schema.new({
         id = id.from(_N, "ListIntentStageMetricsOutput", "results"),
         type = "list",
         name = "results",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsIntentStageResult,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListIntentStageMetricsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListRecommendedIntentsInput = schema.new({
   id = id.from(_N, "ListRecommendedIntentsRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListRecommendedIntentsInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListRecommendedIntentsInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "ListRecommendedIntentsInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botRecommendationId = schema.new({
         id = id.from(_N, "ListRecommendedIntentsInput", "botRecommendationId"),
         type = "string",
         name = "botRecommendationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListRecommendedIntentsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListRecommendedIntentsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.RecommendedIntentSummary = schema.new({
   id = id.from(_N, "RecommendedIntentSummary"),
   type = "structure",
   members = {
      intentId = schema.new({
         id = id.from(_N, "RecommendedIntentSummary", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
      }),
      intentName = schema.new({
         id = id.from(_N, "RecommendedIntentSummary", "intentName"),
         type = "string",
         name = "intentName",
         target_id = prelude.String.id,
      }),
      sampleUtterancesCount = schema.new({
         id = id.from(_N, "RecommendedIntentSummary", "sampleUtterancesCount"),
         type = "integer",
         name = "sampleUtterancesCount",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListRecommendedIntentsOutput = schema.new({
   id = id.from(_N, "ListRecommendedIntentsResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListRecommendedIntentsOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListRecommendedIntentsOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "ListRecommendedIntentsOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      botRecommendationId = schema.new({
         id = id.from(_N, "ListRecommendedIntentsOutput", "botRecommendationId"),
         type = "string",
         name = "botRecommendationId",
         target_id = prelude.String.id,
      }),
      summaryList = schema.new({
         id = id.from(_N, "ListRecommendedIntentsOutput", "summaryList"),
         type = "list",
         name = "summaryList",
         target_id = prelude.Document.id,
         list_member = M.RecommendedIntentSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListRecommendedIntentsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.SessionDataSortBy = schema.new({
   id = id.from(_N, "SessionDataSortBy"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "SessionDataSortBy", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "SessionDataSortBy", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListSessionAnalyticsDataInput = schema.new({
   id = id.from(_N, "ListSessionAnalyticsDataRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListSessionAnalyticsDataInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      startDateTime = schema.new({
         id = id.from(_N, "ListSessionAnalyticsDataInput", "startDateTime"),
         type = "timestamp",
         name = "startDateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endDateTime = schema.new({
         id = id.from(_N, "ListSessionAnalyticsDataInput", "endDateTime"),
         type = "timestamp",
         name = "endDateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListSessionAnalyticsDataInput", "sortBy"),
         type = "structure",
         name = "sortBy",
         target_id = id.from(_N, "SessionDataSortBy"),
         target = M.SessionDataSortBy,
      }),
      filters = schema.new({
         id = id.from(_N, "ListSessionAnalyticsDataInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsSessionFilter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListSessionAnalyticsDataInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListSessionAnalyticsDataInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.SessionSpecification = schema.new({
   id = id.from(_N, "SessionSpecification"),
   type = "structure",
   members = {
      botAliasId = schema.new({
         id = id.from(_N, "SessionSpecification", "botAliasId"),
         type = "string",
         name = "botAliasId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "SessionSpecification", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "SessionSpecification", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      channel = schema.new({
         id = id.from(_N, "SessionSpecification", "channel"),
         type = "string",
         name = "channel",
         target_id = prelude.String.id,
      }),
      sessionId = schema.new({
         id = id.from(_N, "SessionSpecification", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
      }),
      conversationStartTime = schema.new({
         id = id.from(_N, "SessionSpecification", "conversationStartTime"),
         type = "timestamp",
         name = "conversationStartTime",
         target_id = prelude.Timestamp.id,
      }),
      conversationEndTime = schema.new({
         id = id.from(_N, "SessionSpecification", "conversationEndTime"),
         type = "timestamp",
         name = "conversationEndTime",
         target_id = prelude.Timestamp.id,
      }),
      conversationDurationSeconds = schema.new({
         id = id.from(_N, "SessionSpecification", "conversationDurationSeconds"),
         type = "long",
         name = "conversationDurationSeconds",
         target_id = prelude.Long.id,
      }),
      conversationEndState = schema.new({
         id = id.from(_N, "SessionSpecification", "conversationEndState"),
         type = "string",
         name = "conversationEndState",
         target_id = prelude.String.id,
      }),
      mode = schema.new({
         id = id.from(_N, "SessionSpecification", "mode"),
         type = "string",
         name = "mode",
         target_id = prelude.String.id,
      }),
      numberOfTurns = schema.new({
         id = id.from(_N, "SessionSpecification", "numberOfTurns"),
         type = "long",
         name = "numberOfTurns",
         target_id = prelude.Long.id,
      }),
      invokedIntentSamples = schema.new({
         id = id.from(_N, "SessionSpecification", "invokedIntentSamples"),
         type = "list",
         name = "invokedIntentSamples",
         target_id = prelude.Document.id,
         list_member = M.InvokedIntentSample,
      }),
      originatingRequestId = schema.new({
         id = id.from(_N, "SessionSpecification", "originatingRequestId"),
         type = "string",
         name = "originatingRequestId",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSessionAnalyticsDataOutput = schema.new({
   id = id.from(_N, "ListSessionAnalyticsDataResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListSessionAnalyticsDataOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListSessionAnalyticsDataOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      sessions = schema.new({
         id = id.from(_N, "ListSessionAnalyticsDataOutput", "sessions"),
         type = "list",
         name = "sessions",
         target_id = prelude.Document.id,
         list_member = M.SessionSpecification,
      }),
   },
})

M.ListSessionMetricsInput = schema.new({
   id = id.from(_N, "ListSessionMetricsRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListSessionMetricsInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      startDateTime = schema.new({
         id = id.from(_N, "ListSessionMetricsInput", "startDateTime"),
         type = "timestamp",
         name = "startDateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endDateTime = schema.new({
         id = id.from(_N, "ListSessionMetricsInput", "endDateTime"),
         type = "timestamp",
         name = "endDateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      metrics = schema.new({
         id = id.from(_N, "ListSessionMetricsInput", "metrics"),
         type = "list",
         name = "metrics",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsSessionMetric,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      binBy = schema.new({
         id = id.from(_N, "ListSessionMetricsInput", "binBy"),
         type = "list",
         name = "binBy",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsBinBySpecification,
      }),
      groupBy = schema.new({
         id = id.from(_N, "ListSessionMetricsInput", "groupBy"),
         type = "list",
         name = "groupBy",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsSessionGroupBySpecification,
      }),
      filters = schema.new({
         id = id.from(_N, "ListSessionMetricsInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsSessionFilter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListSessionMetricsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListSessionMetricsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSessionMetricsOutput = schema.new({
   id = id.from(_N, "ListSessionMetricsResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListSessionMetricsOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      results = schema.new({
         id = id.from(_N, "ListSessionMetricsOutput", "results"),
         type = "list",
         name = "results",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsSessionResult,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListSessionMetricsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.SlotFilter = schema.new({
   id = id.from(_N, "SlotFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "SlotFilter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "SlotFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operator = schema.new({
         id = id.from(_N, "SlotFilter", "operator"),
         type = "string",
         name = "operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SlotSortBy = schema.new({
   id = id.from(_N, "SlotSortBy"),
   type = "structure",
   members = {
      attribute = schema.new({
         id = id.from(_N, "SlotSortBy", "attribute"),
         type = "string",
         name = "attribute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "SlotSortBy", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListSlotsInput = schema.new({
   id = id.from(_N, "ListSlotsRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListSlotsInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListSlotsInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "ListSlotsInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      intentId = schema.new({
         id = id.from(_N, "ListSlotsInput", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListSlotsInput", "sortBy"),
         type = "structure",
         name = "sortBy",
         target_id = id.from(_N, "SlotSortBy"),
         target = M.SlotSortBy,
      }),
      filters = schema.new({
         id = id.from(_N, "ListSlotsInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.SlotFilter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListSlotsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListSlotsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.SlotSummary = schema.new({
   id = id.from(_N, "SlotSummary"),
   type = "structure",
   members = {
      slotId = schema.new({
         id = id.from(_N, "SlotSummary", "slotId"),
         type = "string",
         name = "slotId",
         target_id = prelude.String.id,
      }),
      slotName = schema.new({
         id = id.from(_N, "SlotSummary", "slotName"),
         type = "string",
         name = "slotName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "SlotSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      slotConstraint = schema.new({
         id = id.from(_N, "SlotSummary", "slotConstraint"),
         type = "string",
         name = "slotConstraint",
         target_id = prelude.String.id,
      }),
      slotTypeId = schema.new({
         id = id.from(_N, "SlotSummary", "slotTypeId"),
         type = "string",
         name = "slotTypeId",
         target_id = prelude.String.id,
      }),
      valueElicitationPromptSpecification = schema.new({
         id = id.from(_N, "SlotSummary", "valueElicitationPromptSpecification"),
         type = "structure",
         name = "valueElicitationPromptSpecification",
         target_id = id.from(_N, "PromptSpecification"),
         target = M.PromptSpecification,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "SlotSummary", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListSlotsOutput = schema.new({
   id = id.from(_N, "ListSlotsResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListSlotsOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListSlotsOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "ListSlotsOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      intentId = schema.new({
         id = id.from(_N, "ListSlotsOutput", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
      }),
      slotSummaries = schema.new({
         id = id.from(_N, "ListSlotsOutput", "slotSummaries"),
         type = "list",
         name = "slotSummaries",
         target_id = prelude.Document.id,
         list_member = M.SlotSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListSlotsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.SlotTypeFilter = schema.new({
   id = id.from(_N, "SlotTypeFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "SlotTypeFilter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      values = schema.new({
         id = id.from(_N, "SlotTypeFilter", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operator = schema.new({
         id = id.from(_N, "SlotTypeFilter", "operator"),
         type = "string",
         name = "operator",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SlotTypeSortBy = schema.new({
   id = id.from(_N, "SlotTypeSortBy"),
   type = "structure",
   members = {
      attribute = schema.new({
         id = id.from(_N, "SlotTypeSortBy", "attribute"),
         type = "string",
         name = "attribute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "SlotTypeSortBy", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListSlotTypesInput = schema.new({
   id = id.from(_N, "ListSlotTypesRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListSlotTypesInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListSlotTypesInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "ListSlotTypesInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListSlotTypesInput", "sortBy"),
         type = "structure",
         name = "sortBy",
         target_id = id.from(_N, "SlotTypeSortBy"),
         target = M.SlotTypeSortBy,
      }),
      filters = schema.new({
         id = id.from(_N, "ListSlotTypesInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.SlotTypeFilter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListSlotTypesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListSlotTypesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.SlotTypeSummary = schema.new({
   id = id.from(_N, "SlotTypeSummary"),
   type = "structure",
   members = {
      slotTypeId = schema.new({
         id = id.from(_N, "SlotTypeSummary", "slotTypeId"),
         type = "string",
         name = "slotTypeId",
         target_id = prelude.String.id,
      }),
      slotTypeName = schema.new({
         id = id.from(_N, "SlotTypeSummary", "slotTypeName"),
         type = "string",
         name = "slotTypeName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "SlotTypeSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      parentSlotTypeSignature = schema.new({
         id = id.from(_N, "SlotTypeSummary", "parentSlotTypeSignature"),
         type = "string",
         name = "parentSlotTypeSignature",
         target_id = prelude.String.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "SlotTypeSummary", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      slotTypeCategory = schema.new({
         id = id.from(_N, "SlotTypeSummary", "slotTypeCategory"),
         type = "string",
         name = "slotTypeCategory",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSlotTypesOutput = schema.new({
   id = id.from(_N, "ListSlotTypesResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListSlotTypesOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "ListSlotTypesOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "ListSlotTypesOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      slotTypeSummaries = schema.new({
         id = id.from(_N, "ListSlotTypesOutput", "slotTypeSummaries"),
         type = "list",
         name = "slotTypeSummaries",
         target_id = prelude.Document.id,
         list_member = M.SlotTypeSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListSlotTypesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTagsForResourceInput = schema.new({
   id = id.from(_N, "ListTagsForResourceRequest"),
   type = "structure",
   members = {
      resourceARN = schema.new({
         id = id.from(_N, "ListTagsForResourceInput", "resourceARN"),
         type = "string",
         name = "resourceARN",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ListTagsForResourceOutput = schema.new({
   id = id.from(_N, "ListTagsForResourceResponse"),
   type = "structure",
   members = {
      tags = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.TestExecutionResultFilterBy = schema.new({
   id = id.from(_N, "TestExecutionResultFilterBy"),
   type = "structure",
   members = {
      resultTypeFilter = schema.new({
         id = id.from(_N, "TestExecutionResultFilterBy", "resultTypeFilter"),
         type = "string",
         name = "resultTypeFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      conversationLevelTestResultsFilterBy = schema.new({
         id = id.from(_N, "TestExecutionResultFilterBy", "conversationLevelTestResultsFilterBy"),
         type = "structure",
         name = "conversationLevelTestResultsFilterBy",
         target_id = id.from(_N, "ConversationLevelTestResultsFilterBy"),
         target = M.ConversationLevelTestResultsFilterBy,
      }),
   },
})

M.ListTestExecutionResultItemsInput = schema.new({
   id = id.from(_N, "ListTestExecutionResultItemsRequest"),
   type = "structure",
   members = {
      testExecutionId = schema.new({
         id = id.from(_N, "ListTestExecutionResultItemsInput", "testExecutionId"),
         type = "string",
         name = "testExecutionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      resultFilterBy = schema.new({
         id = id.from(_N, "ListTestExecutionResultItemsInput", "resultFilterBy"),
         type = "structure",
         name = "resultFilterBy",
         target_id = id.from(_N, "TestExecutionResultFilterBy"),
         target = M.TestExecutionResultFilterBy,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListTestExecutionResultItemsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTestExecutionResultItemsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.OverallTestResultItem = schema.new({
   id = id.from(_N, "OverallTestResultItem"),
   type = "structure",
   members = {
      multiTurnConversation = schema.new({
         id = id.from(_N, "OverallTestResultItem", "multiTurnConversation"),
         type = "boolean",
         name = "multiTurnConversation",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
      totalResultCount = schema.new({
         id = id.from(_N, "OverallTestResultItem", "totalResultCount"),
         type = "integer",
         name = "totalResultCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      speechTranscriptionResultCounts = schema.new({
         id = id.from(_N, "OverallTestResultItem", "speechTranscriptionResultCounts"),
         type = "map",
         name = "speechTranscriptionResultCounts",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Integer,
      }),
      endToEndResultCounts = schema.new({
         id = id.from(_N, "OverallTestResultItem", "endToEndResultCounts"),
         type = "map",
         name = "endToEndResultCounts",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.Integer,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.OverallTestResults = schema.new({
   id = id.from(_N, "OverallTestResults"),
   type = "structure",
   members = {
      items = schema.new({
         id = id.from(_N, "OverallTestResults", "items"),
         type = "list",
         name = "items",
         target_id = prelude.Document.id,
         list_member = M.OverallTestResultItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UtteranceAudioInputSpecification = schema.new({
   id = id.from(_N, "UtteranceAudioInputSpecification"),
   type = "structure",
   members = {
      audioFileS3Location = schema.new({
         id = id.from(_N, "UtteranceAudioInputSpecification", "audioFileS3Location"),
         type = "string",
         name = "audioFileS3Location",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UtteranceInputSpecification = schema.new({
   id = id.from(_N, "UtteranceInputSpecification"),
   type = "structure",
   members = {
      textInput = schema.new({
         id = id.from(_N, "UtteranceInputSpecification", "textInput"),
         type = "string",
         name = "textInput",
         target_id = prelude.String.id,
      }),
      audioInput = schema.new({
         id = id.from(_N, "UtteranceInputSpecification", "audioInput"),
         type = "structure",
         name = "audioInput",
         target_id = id.from(_N, "UtteranceAudioInputSpecification"),
         target = M.UtteranceAudioInputSpecification,
      }),
   },
})

M.TestExecutionSortBy = schema.new({
   id = id.from(_N, "TestExecutionSortBy"),
   type = "structure",
   members = {
      attribute = schema.new({
         id = id.from(_N, "TestExecutionSortBy", "attribute"),
         type = "string",
         name = "attribute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "TestExecutionSortBy", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListTestExecutionsInput = schema.new({
   id = id.from(_N, "ListTestExecutionsRequest"),
   type = "structure",
   members = {
      sortBy = schema.new({
         id = id.from(_N, "ListTestExecutionsInput", "sortBy"),
         type = "structure",
         name = "sortBy",
         target_id = id.from(_N, "TestExecutionSortBy"),
         target = M.TestExecutionSortBy,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListTestExecutionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTestExecutionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.TestExecutionSummary = schema.new({
   id = id.from(_N, "TestExecutionSummary"),
   type = "structure",
   members = {
      testExecutionId = schema.new({
         id = id.from(_N, "TestExecutionSummary", "testExecutionId"),
         type = "string",
         name = "testExecutionId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "TestExecutionSummary", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "TestExecutionSummary", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      testExecutionStatus = schema.new({
         id = id.from(_N, "TestExecutionSummary", "testExecutionStatus"),
         type = "string",
         name = "testExecutionStatus",
         target_id = prelude.String.id,
      }),
      testSetId = schema.new({
         id = id.from(_N, "TestExecutionSummary", "testSetId"),
         type = "string",
         name = "testSetId",
         target_id = prelude.String.id,
      }),
      testSetName = schema.new({
         id = id.from(_N, "TestExecutionSummary", "testSetName"),
         type = "string",
         name = "testSetName",
         target_id = prelude.String.id,
      }),
      target = schema.new({
         id = id.from(_N, "TestExecutionSummary", "target"),
         type = "structure",
         name = "target",
         target_id = id.from(_N, "TestExecutionTarget"),
         target = M.TestExecutionTarget,
      }),
      apiMode = schema.new({
         id = id.from(_N, "TestExecutionSummary", "apiMode"),
         type = "string",
         name = "apiMode",
         target_id = prelude.String.id,
      }),
      testExecutionModality = schema.new({
         id = id.from(_N, "TestExecutionSummary", "testExecutionModality"),
         type = "string",
         name = "testExecutionModality",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTestExecutionsOutput = schema.new({
   id = id.from(_N, "ListTestExecutionsResponse"),
   type = "structure",
   members = {
      testExecutions = schema.new({
         id = id.from(_N, "ListTestExecutionsOutput", "testExecutions"),
         type = "list",
         name = "testExecutions",
         target_id = prelude.Document.id,
         list_member = M.TestExecutionSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTestExecutionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListTestSetRecordsInput = schema.new({
   id = id.from(_N, "ListTestSetRecordsRequest"),
   type = "structure",
   members = {
      testSetId = schema.new({
         id = id.from(_N, "ListTestSetRecordsInput", "testSetId"),
         type = "string",
         name = "testSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListTestSetRecordsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTestSetRecordsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.TestSetSortBy = schema.new({
   id = id.from(_N, "TestSetSortBy"),
   type = "structure",
   members = {
      attribute = schema.new({
         id = id.from(_N, "TestSetSortBy", "attribute"),
         type = "string",
         name = "attribute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "TestSetSortBy", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListTestSetsInput = schema.new({
   id = id.from(_N, "ListTestSetsRequest"),
   type = "structure",
   members = {
      sortBy = schema.new({
         id = id.from(_N, "ListTestSetsInput", "sortBy"),
         type = "structure",
         name = "sortBy",
         target_id = id.from(_N, "TestSetSortBy"),
         target = M.TestSetSortBy,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListTestSetsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTestSetsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.TestSetSummary = schema.new({
   id = id.from(_N, "TestSetSummary"),
   type = "structure",
   members = {
      testSetId = schema.new({
         id = id.from(_N, "TestSetSummary", "testSetId"),
         type = "string",
         name = "testSetId",
         target_id = prelude.String.id,
      }),
      testSetName = schema.new({
         id = id.from(_N, "TestSetSummary", "testSetName"),
         type = "string",
         name = "testSetName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "TestSetSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      modality = schema.new({
         id = id.from(_N, "TestSetSummary", "modality"),
         type = "string",
         name = "modality",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "TestSetSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "TestSetSummary", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      numTurns = schema.new({
         id = id.from(_N, "TestSetSummary", "numTurns"),
         type = "integer",
         name = "numTurns",
         target_id = prelude.Integer.id,
      }),
      storageLocation = schema.new({
         id = id.from(_N, "TestSetSummary", "storageLocation"),
         type = "structure",
         name = "storageLocation",
         target_id = id.from(_N, "TestSetStorageLocation"),
         target = M.TestSetStorageLocation,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "TestSetSummary", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "TestSetSummary", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ListTestSetsOutput = schema.new({
   id = id.from(_N, "ListTestSetsResponse"),
   type = "structure",
   members = {
      testSets = schema.new({
         id = id.from(_N, "ListTestSetsOutput", "testSets"),
         type = "list",
         name = "testSets",
         target_id = prelude.Document.id,
         list_member = M.TestSetSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTestSetsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UtteranceDataSortBy = schema.new({
   id = id.from(_N, "UtteranceDataSortBy"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "UtteranceDataSortBy", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      order = schema.new({
         id = id.from(_N, "UtteranceDataSortBy", "order"),
         type = "string",
         name = "order",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListUtteranceAnalyticsDataInput = schema.new({
   id = id.from(_N, "ListUtteranceAnalyticsDataRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListUtteranceAnalyticsDataInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      startDateTime = schema.new({
         id = id.from(_N, "ListUtteranceAnalyticsDataInput", "startDateTime"),
         type = "timestamp",
         name = "startDateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endDateTime = schema.new({
         id = id.from(_N, "ListUtteranceAnalyticsDataInput", "endDateTime"),
         type = "timestamp",
         name = "endDateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListUtteranceAnalyticsDataInput", "sortBy"),
         type = "structure",
         name = "sortBy",
         target_id = id.from(_N, "UtteranceDataSortBy"),
         target = M.UtteranceDataSortBy,
      }),
      filters = schema.new({
         id = id.from(_N, "ListUtteranceAnalyticsDataInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsUtteranceFilter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListUtteranceAnalyticsDataInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListUtteranceAnalyticsDataInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UtteranceBotResponse = schema.new({
   id = id.from(_N, "UtteranceBotResponse"),
   type = "structure",
   members = {
      content = schema.new({
         id = id.from(_N, "UtteranceBotResponse", "content"),
         type = "string",
         name = "content",
         target_id = prelude.String.id,
      }),
      contentType = schema.new({
         id = id.from(_N, "UtteranceBotResponse", "contentType"),
         type = "string",
         name = "contentType",
         target_id = prelude.String.id,
      }),
      imageResponseCard = schema.new({
         id = id.from(_N, "UtteranceBotResponse", "imageResponseCard"),
         type = "structure",
         name = "imageResponseCard",
         target_id = id.from(_N, "ImageResponseCard"),
         target = M.ImageResponseCard,
      }),
   },
})

M.UtteranceSpecification = schema.new({
   id = id.from(_N, "UtteranceSpecification"),
   type = "structure",
   members = {
      botAliasId = schema.new({
         id = id.from(_N, "UtteranceSpecification", "botAliasId"),
         type = "string",
         name = "botAliasId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "UtteranceSpecification", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "UtteranceSpecification", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      sessionId = schema.new({
         id = id.from(_N, "UtteranceSpecification", "sessionId"),
         type = "string",
         name = "sessionId",
         target_id = prelude.String.id,
      }),
      channel = schema.new({
         id = id.from(_N, "UtteranceSpecification", "channel"),
         type = "string",
         name = "channel",
         target_id = prelude.String.id,
      }),
      mode = schema.new({
         id = id.from(_N, "UtteranceSpecification", "mode"),
         type = "string",
         name = "mode",
         target_id = prelude.String.id,
      }),
      conversationStartTime = schema.new({
         id = id.from(_N, "UtteranceSpecification", "conversationStartTime"),
         type = "timestamp",
         name = "conversationStartTime",
         target_id = prelude.Timestamp.id,
      }),
      conversationEndTime = schema.new({
         id = id.from(_N, "UtteranceSpecification", "conversationEndTime"),
         type = "timestamp",
         name = "conversationEndTime",
         target_id = prelude.Timestamp.id,
      }),
      utterance = schema.new({
         id = id.from(_N, "UtteranceSpecification", "utterance"),
         type = "string",
         name = "utterance",
         target_id = prelude.String.id,
      }),
      utteranceTimestamp = schema.new({
         id = id.from(_N, "UtteranceSpecification", "utteranceTimestamp"),
         type = "timestamp",
         name = "utteranceTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      audioVoiceDurationMillis = schema.new({
         id = id.from(_N, "UtteranceSpecification", "audioVoiceDurationMillis"),
         type = "long",
         name = "audioVoiceDurationMillis",
         target_id = prelude.Long.id,
      }),
      utteranceUnderstood = schema.new({
         id = id.from(_N, "UtteranceSpecification", "utteranceUnderstood"),
         type = "boolean",
         name = "utteranceUnderstood",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      inputType = schema.new({
         id = id.from(_N, "UtteranceSpecification", "inputType"),
         type = "string",
         name = "inputType",
         target_id = prelude.String.id,
      }),
      outputType = schema.new({
         id = id.from(_N, "UtteranceSpecification", "outputType"),
         type = "string",
         name = "outputType",
         target_id = prelude.String.id,
      }),
      associatedIntentName = schema.new({
         id = id.from(_N, "UtteranceSpecification", "associatedIntentName"),
         type = "string",
         name = "associatedIntentName",
         target_id = prelude.String.id,
      }),
      associatedSlotName = schema.new({
         id = id.from(_N, "UtteranceSpecification", "associatedSlotName"),
         type = "string",
         name = "associatedSlotName",
         target_id = prelude.String.id,
      }),
      intentState = schema.new({
         id = id.from(_N, "UtteranceSpecification", "intentState"),
         type = "string",
         name = "intentState",
         target_id = prelude.String.id,
      }),
      dialogActionType = schema.new({
         id = id.from(_N, "UtteranceSpecification", "dialogActionType"),
         type = "string",
         name = "dialogActionType",
         target_id = prelude.String.id,
      }),
      botResponseAudioVoiceId = schema.new({
         id = id.from(_N, "UtteranceSpecification", "botResponseAudioVoiceId"),
         type = "string",
         name = "botResponseAudioVoiceId",
         target_id = prelude.String.id,
      }),
      slotsFilledInSession = schema.new({
         id = id.from(_N, "UtteranceSpecification", "slotsFilledInSession"),
         type = "string",
         name = "slotsFilledInSession",
         target_id = prelude.String.id,
      }),
      utteranceRequestId = schema.new({
         id = id.from(_N, "UtteranceSpecification", "utteranceRequestId"),
         type = "string",
         name = "utteranceRequestId",
         target_id = prelude.String.id,
      }),
      botResponses = schema.new({
         id = id.from(_N, "UtteranceSpecification", "botResponses"),
         type = "list",
         name = "botResponses",
         target_id = prelude.Document.id,
         list_member = M.UtteranceBotResponse,
      }),
   },
})

M.ListUtteranceAnalyticsDataOutput = schema.new({
   id = id.from(_N, "ListUtteranceAnalyticsDataResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListUtteranceAnalyticsDataOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListUtteranceAnalyticsDataOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      utterances = schema.new({
         id = id.from(_N, "ListUtteranceAnalyticsDataOutput", "utterances"),
         type = "list",
         name = "utterances",
         target_id = prelude.Document.id,
         list_member = M.UtteranceSpecification,
      }),
   },
})

M.ListUtteranceMetricsInput = schema.new({
   id = id.from(_N, "ListUtteranceMetricsRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListUtteranceMetricsInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      startDateTime = schema.new({
         id = id.from(_N, "ListUtteranceMetricsInput", "startDateTime"),
         type = "timestamp",
         name = "startDateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      endDateTime = schema.new({
         id = id.from(_N, "ListUtteranceMetricsInput", "endDateTime"),
         type = "timestamp",
         name = "endDateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      metrics = schema.new({
         id = id.from(_N, "ListUtteranceMetricsInput", "metrics"),
         type = "list",
         name = "metrics",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsUtteranceMetric,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      binBy = schema.new({
         id = id.from(_N, "ListUtteranceMetricsInput", "binBy"),
         type = "list",
         name = "binBy",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsBinBySpecification,
      }),
      groupBy = schema.new({
         id = id.from(_N, "ListUtteranceMetricsInput", "groupBy"),
         type = "list",
         name = "groupBy",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsUtteranceGroupBySpecification,
      }),
      attributes = schema.new({
         id = id.from(_N, "ListUtteranceMetricsInput", "attributes"),
         type = "list",
         name = "attributes",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsUtteranceAttribute,
      }),
      filters = schema.new({
         id = id.from(_N, "ListUtteranceMetricsInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsUtteranceFilter,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListUtteranceMetricsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListUtteranceMetricsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListUtteranceMetricsOutput = schema.new({
   id = id.from(_N, "ListUtteranceMetricsResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "ListUtteranceMetricsOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      results = schema.new({
         id = id.from(_N, "ListUtteranceMetricsOutput", "results"),
         type = "list",
         name = "results",
         target_id = prelude.Document.id,
         list_member = M.AnalyticsUtteranceResult,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListUtteranceMetricsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.SearchAssociatedTranscriptsInput = schema.new({
   id = id.from(_N, "SearchAssociatedTranscriptsRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "SearchAssociatedTranscriptsInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "SearchAssociatedTranscriptsInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "SearchAssociatedTranscriptsInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botRecommendationId = schema.new({
         id = id.from(_N, "SearchAssociatedTranscriptsInput", "botRecommendationId"),
         type = "string",
         name = "botRecommendationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      searchOrder = schema.new({
         id = id.from(_N, "SearchAssociatedTranscriptsInput", "searchOrder"),
         type = "string",
         name = "searchOrder",
         target_id = prelude.String.id,
      }),
      filters = schema.new({
         id = id.from(_N, "SearchAssociatedTranscriptsInput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.AssociatedTranscriptFilter,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "SearchAssociatedTranscriptsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextIndex = schema.new({
         id = id.from(_N, "SearchAssociatedTranscriptsInput", "nextIndex"),
         type = "integer",
         name = "nextIndex",
         target_id = prelude.Integer.id,
      }),
   },
})

M.SearchAssociatedTranscriptsOutput = schema.new({
   id = id.from(_N, "SearchAssociatedTranscriptsResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "SearchAssociatedTranscriptsOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "SearchAssociatedTranscriptsOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "SearchAssociatedTranscriptsOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      botRecommendationId = schema.new({
         id = id.from(_N, "SearchAssociatedTranscriptsOutput", "botRecommendationId"),
         type = "string",
         name = "botRecommendationId",
         target_id = prelude.String.id,
      }),
      nextIndex = schema.new({
         id = id.from(_N, "SearchAssociatedTranscriptsOutput", "nextIndex"),
         type = "integer",
         name = "nextIndex",
         target_id = prelude.Integer.id,
      }),
      associatedTranscripts = schema.new({
         id = id.from(_N, "SearchAssociatedTranscriptsOutput", "associatedTranscripts"),
         type = "list",
         name = "associatedTranscripts",
         target_id = prelude.Document.id,
         list_member = M.AssociatedTranscript,
      }),
      totalResults = schema.new({
         id = id.from(_N, "SearchAssociatedTranscriptsOutput", "totalResults"),
         type = "integer",
         name = "totalResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.StartBotAnalyzerInput = schema.new({
   id = id.from(_N, "StartBotAnalyzerRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "StartBotAnalyzerInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      analysisScope = schema.new({
         id = id.from(_N, "StartBotAnalyzerInput", "analysisScope"),
         type = "string",
         name = "analysisScope",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "StartBotAnalyzerInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "StartBotAnalyzerInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
   },
})

M.StartBotAnalyzerOutput = schema.new({
   id = id.from(_N, "StartBotAnalyzerResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "StartBotAnalyzerOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "StartBotAnalyzerOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "StartBotAnalyzerOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      botAnalyzerStatus = schema.new({
         id = id.from(_N, "StartBotAnalyzerOutput", "botAnalyzerStatus"),
         type = "string",
         name = "botAnalyzerStatus",
         target_id = prelude.String.id,
      }),
      botAnalyzerRequestId = schema.new({
         id = id.from(_N, "StartBotAnalyzerOutput", "botAnalyzerRequestId"),
         type = "string",
         name = "botAnalyzerRequestId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "StartBotAnalyzerOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.StartBotRecommendationInput = schema.new({
   id = id.from(_N, "StartBotRecommendationRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "StartBotRecommendationInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "StartBotRecommendationInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "StartBotRecommendationInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      transcriptSourceSetting = schema.new({
         id = id.from(_N, "StartBotRecommendationInput", "transcriptSourceSetting"),
         type = "structure",
         name = "transcriptSourceSetting",
         target_id = id.from(_N, "TranscriptSourceSetting"),
         target = M.TranscriptSourceSetting,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      encryptionSetting = schema.new({
         id = id.from(_N, "StartBotRecommendationInput", "encryptionSetting"),
         type = "structure",
         name = "encryptionSetting",
         target_id = id.from(_N, "EncryptionSetting"),
         target = M.EncryptionSetting,
      }),
   },
})

M.StartBotRecommendationOutput = schema.new({
   id = id.from(_N, "StartBotRecommendationResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "StartBotRecommendationOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "StartBotRecommendationOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "StartBotRecommendationOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      botRecommendationStatus = schema.new({
         id = id.from(_N, "StartBotRecommendationOutput", "botRecommendationStatus"),
         type = "string",
         name = "botRecommendationStatus",
         target_id = prelude.String.id,
      }),
      botRecommendationId = schema.new({
         id = id.from(_N, "StartBotRecommendationOutput", "botRecommendationId"),
         type = "string",
         name = "botRecommendationId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "StartBotRecommendationOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      transcriptSourceSetting = schema.new({
         id = id.from(_N, "StartBotRecommendationOutput", "transcriptSourceSetting"),
         type = "structure",
         name = "transcriptSourceSetting",
         target_id = id.from(_N, "TranscriptSourceSetting"),
         target = M.TranscriptSourceSetting,
      }),
      encryptionSetting = schema.new({
         id = id.from(_N, "StartBotRecommendationOutput", "encryptionSetting"),
         type = "structure",
         name = "encryptionSetting",
         target_id = id.from(_N, "EncryptionSetting"),
         target = M.EncryptionSetting,
      }),
   },
})

M.StartBotResourceGenerationInput = schema.new({
   id = id.from(_N, "StartBotResourceGenerationRequest"),
   type = "structure",
   members = {
      generationInputPrompt = schema.new({
         id = id.from(_N, "StartBotResourceGenerationInput", "generationInputPrompt"),
         type = "string",
         name = "generationInputPrompt",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      botId = schema.new({
         id = id.from(_N, "StartBotResourceGenerationInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "StartBotResourceGenerationInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "StartBotResourceGenerationInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.StartBotResourceGenerationOutput = schema.new({
   id = id.from(_N, "StartBotResourceGenerationResponse"),
   type = "structure",
   members = {
      generationInputPrompt = schema.new({
         id = id.from(_N, "StartBotResourceGenerationOutput", "generationInputPrompt"),
         type = "string",
         name = "generationInputPrompt",
         target_id = prelude.String.id,
      }),
      generationId = schema.new({
         id = id.from(_N, "StartBotResourceGenerationOutput", "generationId"),
         type = "string",
         name = "generationId",
         target_id = prelude.String.id,
      }),
      botId = schema.new({
         id = id.from(_N, "StartBotResourceGenerationOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "StartBotResourceGenerationOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "StartBotResourceGenerationOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      generationStatus = schema.new({
         id = id.from(_N, "StartBotResourceGenerationOutput", "generationStatus"),
         type = "string",
         name = "generationStatus",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "StartBotResourceGenerationOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.StartImportInput = schema.new({
   id = id.from(_N, "StartImportRequest"),
   type = "structure",
   members = {
      importId = schema.new({
         id = id.from(_N, "StartImportInput", "importId"),
         type = "string",
         name = "importId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceSpecification = schema.new({
         id = id.from(_N, "StartImportInput", "resourceSpecification"),
         type = "structure",
         name = "resourceSpecification",
         target_id = id.from(_N, "ImportResourceSpecification"),
         target = M.ImportResourceSpecification,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      mergeStrategy = schema.new({
         id = id.from(_N, "StartImportInput", "mergeStrategy"),
         type = "string",
         name = "mergeStrategy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      filePassword = schema.new({
         id = id.from(_N, "StartImportInput", "filePassword"),
         type = "string",
         name = "filePassword",
         target_id = prelude.String.id,
      }),
   },
})

M.StartImportOutput = schema.new({
   id = id.from(_N, "StartImportResponse"),
   type = "structure",
   members = {
      importId = schema.new({
         id = id.from(_N, "StartImportOutput", "importId"),
         type = "string",
         name = "importId",
         target_id = prelude.String.id,
      }),
      resourceSpecification = schema.new({
         id = id.from(_N, "StartImportOutput", "resourceSpecification"),
         type = "structure",
         name = "resourceSpecification",
         target_id = id.from(_N, "ImportResourceSpecification"),
         target = M.ImportResourceSpecification,
      }),
      mergeStrategy = schema.new({
         id = id.from(_N, "StartImportOutput", "mergeStrategy"),
         type = "string",
         name = "mergeStrategy",
         target_id = prelude.String.id,
      }),
      importStatus = schema.new({
         id = id.from(_N, "StartImportOutput", "importStatus"),
         type = "string",
         name = "importStatus",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "StartImportOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.StartTestExecutionInput = schema.new({
   id = id.from(_N, "StartTestExecutionRequest"),
   type = "structure",
   members = {
      testSetId = schema.new({
         id = id.from(_N, "StartTestExecutionInput", "testSetId"),
         type = "string",
         name = "testSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      target = schema.new({
         id = id.from(_N, "StartTestExecutionInput", "target"),
         type = "structure",
         name = "target",
         target_id = id.from(_N, "TestExecutionTarget"),
         target = M.TestExecutionTarget,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      apiMode = schema.new({
         id = id.from(_N, "StartTestExecutionInput", "apiMode"),
         type = "string",
         name = "apiMode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      testExecutionModality = schema.new({
         id = id.from(_N, "StartTestExecutionInput", "testExecutionModality"),
         type = "string",
         name = "testExecutionModality",
         target_id = prelude.String.id,
      }),
   },
})

M.StartTestExecutionOutput = schema.new({
   id = id.from(_N, "StartTestExecutionResponse"),
   type = "structure",
   members = {
      testExecutionId = schema.new({
         id = id.from(_N, "StartTestExecutionOutput", "testExecutionId"),
         type = "string",
         name = "testExecutionId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "StartTestExecutionOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      testSetId = schema.new({
         id = id.from(_N, "StartTestExecutionOutput", "testSetId"),
         type = "string",
         name = "testSetId",
         target_id = prelude.String.id,
      }),
      target = schema.new({
         id = id.from(_N, "StartTestExecutionOutput", "target"),
         type = "structure",
         name = "target",
         target_id = id.from(_N, "TestExecutionTarget"),
         target = M.TestExecutionTarget,
      }),
      apiMode = schema.new({
         id = id.from(_N, "StartTestExecutionOutput", "apiMode"),
         type = "string",
         name = "apiMode",
         target_id = prelude.String.id,
      }),
      testExecutionModality = schema.new({
         id = id.from(_N, "StartTestExecutionOutput", "testExecutionModality"),
         type = "string",
         name = "testExecutionModality",
         target_id = prelude.String.id,
      }),
   },
})

M.StartTestSetGenerationInput = schema.new({
   id = id.from(_N, "StartTestSetGenerationRequest"),
   type = "structure",
   members = {
      testSetName = schema.new({
         id = id.from(_N, "StartTestSetGenerationInput", "testSetName"),
         type = "string",
         name = "testSetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "StartTestSetGenerationInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      storageLocation = schema.new({
         id = id.from(_N, "StartTestSetGenerationInput", "storageLocation"),
         type = "structure",
         name = "storageLocation",
         target_id = id.from(_N, "TestSetStorageLocation"),
         target = M.TestSetStorageLocation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      generationDataSource = schema.new({
         id = id.from(_N, "StartTestSetGenerationInput", "generationDataSource"),
         type = "structure",
         name = "generationDataSource",
         target_id = id.from(_N, "TestSetGenerationDataSource"),
         target = M.TestSetGenerationDataSource,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "StartTestSetGenerationInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      testSetTags = schema.new({
         id = id.from(_N, "StartTestSetGenerationInput", "testSetTags"),
         type = "map",
         name = "testSetTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.StartTestSetGenerationOutput = schema.new({
   id = id.from(_N, "StartTestSetGenerationResponse"),
   type = "structure",
   members = {
      testSetGenerationId = schema.new({
         id = id.from(_N, "StartTestSetGenerationOutput", "testSetGenerationId"),
         type = "string",
         name = "testSetGenerationId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "StartTestSetGenerationOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      testSetGenerationStatus = schema.new({
         id = id.from(_N, "StartTestSetGenerationOutput", "testSetGenerationStatus"),
         type = "string",
         name = "testSetGenerationStatus",
         target_id = prelude.String.id,
      }),
      testSetName = schema.new({
         id = id.from(_N, "StartTestSetGenerationOutput", "testSetName"),
         type = "string",
         name = "testSetName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "StartTestSetGenerationOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      storageLocation = schema.new({
         id = id.from(_N, "StartTestSetGenerationOutput", "storageLocation"),
         type = "structure",
         name = "storageLocation",
         target_id = id.from(_N, "TestSetStorageLocation"),
         target = M.TestSetStorageLocation,
      }),
      generationDataSource = schema.new({
         id = id.from(_N, "StartTestSetGenerationOutput", "generationDataSource"),
         type = "structure",
         name = "generationDataSource",
         target_id = id.from(_N, "TestSetGenerationDataSource"),
         target = M.TestSetGenerationDataSource,
      }),
      roleArn = schema.new({
         id = id.from(_N, "StartTestSetGenerationOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      testSetTags = schema.new({
         id = id.from(_N, "StartTestSetGenerationOutput", "testSetTags"),
         type = "map",
         name = "testSetTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.StopBotAnalyzerInput = schema.new({
   id = id.from(_N, "StopBotAnalyzerRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "StopBotAnalyzerInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botAnalyzerRequestId = schema.new({
         id = id.from(_N, "StopBotAnalyzerInput", "botAnalyzerRequestId"),
         type = "string",
         name = "botAnalyzerRequestId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.StopBotAnalyzerOutput = schema.new({
   id = id.from(_N, "StopBotAnalyzerResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "StopBotAnalyzerOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "StopBotAnalyzerOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "StopBotAnalyzerOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      botAnalyzerStatus = schema.new({
         id = id.from(_N, "StopBotAnalyzerOutput", "botAnalyzerStatus"),
         type = "string",
         name = "botAnalyzerStatus",
         target_id = prelude.String.id,
      }),
      botAnalyzerRequestId = schema.new({
         id = id.from(_N, "StopBotAnalyzerOutput", "botAnalyzerRequestId"),
         type = "string",
         name = "botAnalyzerRequestId",
         target_id = prelude.String.id,
      }),
   },
})

M.StopBotRecommendationInput = schema.new({
   id = id.from(_N, "StopBotRecommendationRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "StopBotRecommendationInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "StopBotRecommendationInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "StopBotRecommendationInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botRecommendationId = schema.new({
         id = id.from(_N, "StopBotRecommendationInput", "botRecommendationId"),
         type = "string",
         name = "botRecommendationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.StopBotRecommendationOutput = schema.new({
   id = id.from(_N, "StopBotRecommendationResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "StopBotRecommendationOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "StopBotRecommendationOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "StopBotRecommendationOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      botRecommendationStatus = schema.new({
         id = id.from(_N, "StopBotRecommendationOutput", "botRecommendationStatus"),
         type = "string",
         name = "botRecommendationStatus",
         target_id = prelude.String.id,
      }),
      botRecommendationId = schema.new({
         id = id.from(_N, "StopBotRecommendationOutput", "botRecommendationId"),
         type = "string",
         name = "botRecommendationId",
         target_id = prelude.String.id,
      }),
   },
})

M.TagResourceInput = schema.new({
   id = id.from(_N, "TagResourceRequest"),
   type = "structure",
   members = {
      resourceARN = schema.new({
         id = id.from(_N, "TagResourceInput", "resourceARN"),
         type = "string",
         name = "resourceARN",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "TagResourceInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TagResourceOutput = schema.new({
   id = id.from(_N, "TagResourceResponse"),
   type = "structure",
})

M.UntagResourceInput = schema.new({
   id = id.from(_N, "UntagResourceRequest"),
   type = "structure",
   members = {
      resourceARN = schema.new({
         id = id.from(_N, "UntagResourceInput", "resourceARN"),
         type = "string",
         name = "resourceARN",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      tagKeys = schema.new({
         id = id.from(_N, "UntagResourceInput", "tagKeys"),
         type = "list",
         name = "tagKeys",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "tagKeys" },
         },
      }),
   },
})

M.UntagResourceOutput = schema.new({
   id = id.from(_N, "UntagResourceResponse"),
   type = "structure",
})

M.UpdateBotInput = schema.new({
   id = id.from(_N, "UpdateBotRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "UpdateBotInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botName = schema.new({
         id = id.from(_N, "UpdateBotInput", "botName"),
         type = "string",
         name = "botName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "UpdateBotInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "UpdateBotInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      dataPrivacy = schema.new({
         id = id.from(_N, "UpdateBotInput", "dataPrivacy"),
         type = "structure",
         name = "dataPrivacy",
         target_id = id.from(_N, "DataPrivacy"),
         target = M.DataPrivacy,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      idleSessionTTLInSeconds = schema.new({
         id = id.from(_N, "UpdateBotInput", "idleSessionTTLInSeconds"),
         type = "integer",
         name = "idleSessionTTLInSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      botType = schema.new({
         id = id.from(_N, "UpdateBotInput", "botType"),
         type = "string",
         name = "botType",
         target_id = prelude.String.id,
      }),
      botMembers = schema.new({
         id = id.from(_N, "UpdateBotInput", "botMembers"),
         type = "list",
         name = "botMembers",
         target_id = prelude.Document.id,
         list_member = M.BotMember,
      }),
      errorLogSettings = schema.new({
         id = id.from(_N, "UpdateBotInput", "errorLogSettings"),
         type = "structure",
         name = "errorLogSettings",
         target_id = id.from(_N, "ErrorLogSettings"),
         target = M.ErrorLogSettings,
      }),
   },
})

M.UpdateBotOutput = schema.new({
   id = id.from(_N, "UpdateBotResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "UpdateBotOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botName = schema.new({
         id = id.from(_N, "UpdateBotOutput", "botName"),
         type = "string",
         name = "botName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateBotOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "UpdateBotOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      dataPrivacy = schema.new({
         id = id.from(_N, "UpdateBotOutput", "dataPrivacy"),
         type = "structure",
         name = "dataPrivacy",
         target_id = id.from(_N, "DataPrivacy"),
         target = M.DataPrivacy,
      }),
      idleSessionTTLInSeconds = schema.new({
         id = id.from(_N, "UpdateBotOutput", "idleSessionTTLInSeconds"),
         type = "integer",
         name = "idleSessionTTLInSeconds",
         target_id = prelude.Integer.id,
      }),
      botStatus = schema.new({
         id = id.from(_N, "UpdateBotOutput", "botStatus"),
         type = "string",
         name = "botStatus",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "UpdateBotOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "UpdateBotOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      botType = schema.new({
         id = id.from(_N, "UpdateBotOutput", "botType"),
         type = "string",
         name = "botType",
         target_id = prelude.String.id,
      }),
      botMembers = schema.new({
         id = id.from(_N, "UpdateBotOutput", "botMembers"),
         type = "list",
         name = "botMembers",
         target_id = prelude.Document.id,
         list_member = M.BotMember,
      }),
      errorLogSettings = schema.new({
         id = id.from(_N, "UpdateBotOutput", "errorLogSettings"),
         type = "structure",
         name = "errorLogSettings",
         target_id = id.from(_N, "ErrorLogSettings"),
         target = M.ErrorLogSettings,
      }),
   },
})

M.UpdateBotAliasInput = schema.new({
   id = id.from(_N, "UpdateBotAliasRequest"),
   type = "structure",
   members = {
      botAliasId = schema.new({
         id = id.from(_N, "UpdateBotAliasInput", "botAliasId"),
         type = "string",
         name = "botAliasId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botAliasName = schema.new({
         id = id.from(_N, "UpdateBotAliasInput", "botAliasName"),
         type = "string",
         name = "botAliasName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "UpdateBotAliasInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "UpdateBotAliasInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      botAliasLocaleSettings = schema.new({
         id = id.from(_N, "UpdateBotAliasInput", "botAliasLocaleSettings"),
         type = "map",
         name = "botAliasLocaleSettings",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.BotAliasLocaleSettings,
      }),
      conversationLogSettings = schema.new({
         id = id.from(_N, "UpdateBotAliasInput", "conversationLogSettings"),
         type = "structure",
         name = "conversationLogSettings",
         target_id = id.from(_N, "ConversationLogSettings"),
         target = M.ConversationLogSettings,
      }),
      sentimentAnalysisSettings = schema.new({
         id = id.from(_N, "UpdateBotAliasInput", "sentimentAnalysisSettings"),
         type = "structure",
         name = "sentimentAnalysisSettings",
         target_id = id.from(_N, "SentimentAnalysisSettings"),
         target = M.SentimentAnalysisSettings,
      }),
      botId = schema.new({
         id = id.from(_N, "UpdateBotAliasInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.UpdateBotAliasOutput = schema.new({
   id = id.from(_N, "UpdateBotAliasResponse"),
   type = "structure",
   members = {
      botAliasId = schema.new({
         id = id.from(_N, "UpdateBotAliasOutput", "botAliasId"),
         type = "string",
         name = "botAliasId",
         target_id = prelude.String.id,
      }),
      botAliasName = schema.new({
         id = id.from(_N, "UpdateBotAliasOutput", "botAliasName"),
         type = "string",
         name = "botAliasName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateBotAliasOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "UpdateBotAliasOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      botAliasLocaleSettings = schema.new({
         id = id.from(_N, "UpdateBotAliasOutput", "botAliasLocaleSettings"),
         type = "map",
         name = "botAliasLocaleSettings",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.BotAliasLocaleSettings,
      }),
      conversationLogSettings = schema.new({
         id = id.from(_N, "UpdateBotAliasOutput", "conversationLogSettings"),
         type = "structure",
         name = "conversationLogSettings",
         target_id = id.from(_N, "ConversationLogSettings"),
         target = M.ConversationLogSettings,
      }),
      sentimentAnalysisSettings = schema.new({
         id = id.from(_N, "UpdateBotAliasOutput", "sentimentAnalysisSettings"),
         type = "structure",
         name = "sentimentAnalysisSettings",
         target_id = id.from(_N, "SentimentAnalysisSettings"),
         target = M.SentimentAnalysisSettings,
      }),
      botAliasStatus = schema.new({
         id = id.from(_N, "UpdateBotAliasOutput", "botAliasStatus"),
         type = "string",
         name = "botAliasStatus",
         target_id = prelude.String.id,
      }),
      botId = schema.new({
         id = id.from(_N, "UpdateBotAliasOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "UpdateBotAliasOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "UpdateBotAliasOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.UpdateBotLocaleInput = schema.new({
   id = id.from(_N, "UpdateBotLocaleRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "UpdateBotLocaleInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "UpdateBotLocaleInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "UpdateBotLocaleInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "UpdateBotLocaleInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      nluIntentConfidenceThreshold = schema.new({
         id = id.from(_N, "UpdateBotLocaleInput", "nluIntentConfidenceThreshold"),
         type = "double",
         name = "nluIntentConfidenceThreshold",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      voiceSettings = schema.new({
         id = id.from(_N, "UpdateBotLocaleInput", "voiceSettings"),
         type = "structure",
         name = "voiceSettings",
         target_id = id.from(_N, "VoiceSettings"),
         target = M.VoiceSettings,
      }),
      unifiedSpeechSettings = schema.new({
         id = id.from(_N, "UpdateBotLocaleInput", "unifiedSpeechSettings"),
         type = "structure",
         name = "unifiedSpeechSettings",
         target_id = id.from(_N, "UnifiedSpeechSettings"),
         target = M.UnifiedSpeechSettings,
      }),
      audioFillerSettings = schema.new({
         id = id.from(_N, "UpdateBotLocaleInput", "audioFillerSettings"),
         type = "structure",
         name = "audioFillerSettings",
         target_id = id.from(_N, "AudioFillerSettings"),
         target = M.AudioFillerSettings,
      }),
      speechRecognitionSettings = schema.new({
         id = id.from(_N, "UpdateBotLocaleInput", "speechRecognitionSettings"),
         type = "structure",
         name = "speechRecognitionSettings",
         target_id = id.from(_N, "SpeechRecognitionSettings"),
         target = M.SpeechRecognitionSettings,
      }),
      generativeAISettings = schema.new({
         id = id.from(_N, "UpdateBotLocaleInput", "generativeAISettings"),
         type = "structure",
         name = "generativeAISettings",
         target_id = id.from(_N, "GenerativeAISettings"),
         target = M.GenerativeAISettings,
      }),
      speechDetectionSensitivity = schema.new({
         id = id.from(_N, "UpdateBotLocaleInput", "speechDetectionSensitivity"),
         type = "string",
         name = "speechDetectionSensitivity",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateBotLocaleOutput = schema.new({
   id = id.from(_N, "UpdateBotLocaleResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "UpdateBotLocaleOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "UpdateBotLocaleOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "UpdateBotLocaleOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      localeName = schema.new({
         id = id.from(_N, "UpdateBotLocaleOutput", "localeName"),
         type = "string",
         name = "localeName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateBotLocaleOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      nluIntentConfidenceThreshold = schema.new({
         id = id.from(_N, "UpdateBotLocaleOutput", "nluIntentConfidenceThreshold"),
         type = "double",
         name = "nluIntentConfidenceThreshold",
         target_id = prelude.Double.id,
      }),
      voiceSettings = schema.new({
         id = id.from(_N, "UpdateBotLocaleOutput", "voiceSettings"),
         type = "structure",
         name = "voiceSettings",
         target_id = id.from(_N, "VoiceSettings"),
         target = M.VoiceSettings,
      }),
      unifiedSpeechSettings = schema.new({
         id = id.from(_N, "UpdateBotLocaleOutput", "unifiedSpeechSettings"),
         type = "structure",
         name = "unifiedSpeechSettings",
         target_id = id.from(_N, "UnifiedSpeechSettings"),
         target = M.UnifiedSpeechSettings,
      }),
      audioFillerSettings = schema.new({
         id = id.from(_N, "UpdateBotLocaleOutput", "audioFillerSettings"),
         type = "structure",
         name = "audioFillerSettings",
         target_id = id.from(_N, "AudioFillerSettings"),
         target = M.AudioFillerSettings,
      }),
      speechRecognitionSettings = schema.new({
         id = id.from(_N, "UpdateBotLocaleOutput", "speechRecognitionSettings"),
         type = "structure",
         name = "speechRecognitionSettings",
         target_id = id.from(_N, "SpeechRecognitionSettings"),
         target = M.SpeechRecognitionSettings,
      }),
      botLocaleStatus = schema.new({
         id = id.from(_N, "UpdateBotLocaleOutput", "botLocaleStatus"),
         type = "string",
         name = "botLocaleStatus",
         target_id = prelude.String.id,
      }),
      failureReasons = schema.new({
         id = id.from(_N, "UpdateBotLocaleOutput", "failureReasons"),
         type = "list",
         name = "failureReasons",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "UpdateBotLocaleOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "UpdateBotLocaleOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      recommendedActions = schema.new({
         id = id.from(_N, "UpdateBotLocaleOutput", "recommendedActions"),
         type = "list",
         name = "recommendedActions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      generativeAISettings = schema.new({
         id = id.from(_N, "UpdateBotLocaleOutput", "generativeAISettings"),
         type = "structure",
         name = "generativeAISettings",
         target_id = id.from(_N, "GenerativeAISettings"),
         target = M.GenerativeAISettings,
      }),
      speechDetectionSensitivity = schema.new({
         id = id.from(_N, "UpdateBotLocaleOutput", "speechDetectionSensitivity"),
         type = "string",
         name = "speechDetectionSensitivity",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateBotRecommendationInput = schema.new({
   id = id.from(_N, "UpdateBotRecommendationRequest"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "UpdateBotRecommendationInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "UpdateBotRecommendationInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "UpdateBotRecommendationInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botRecommendationId = schema.new({
         id = id.from(_N, "UpdateBotRecommendationInput", "botRecommendationId"),
         type = "string",
         name = "botRecommendationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      encryptionSetting = schema.new({
         id = id.from(_N, "UpdateBotRecommendationInput", "encryptionSetting"),
         type = "structure",
         name = "encryptionSetting",
         target_id = id.from(_N, "EncryptionSetting"),
         target = M.EncryptionSetting,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateBotRecommendationOutput = schema.new({
   id = id.from(_N, "UpdateBotRecommendationResponse"),
   type = "structure",
   members = {
      botId = schema.new({
         id = id.from(_N, "UpdateBotRecommendationOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "UpdateBotRecommendationOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "UpdateBotRecommendationOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      botRecommendationStatus = schema.new({
         id = id.from(_N, "UpdateBotRecommendationOutput", "botRecommendationStatus"),
         type = "string",
         name = "botRecommendationStatus",
         target_id = prelude.String.id,
      }),
      botRecommendationId = schema.new({
         id = id.from(_N, "UpdateBotRecommendationOutput", "botRecommendationId"),
         type = "string",
         name = "botRecommendationId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "UpdateBotRecommendationOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "UpdateBotRecommendationOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      transcriptSourceSetting = schema.new({
         id = id.from(_N, "UpdateBotRecommendationOutput", "transcriptSourceSetting"),
         type = "structure",
         name = "transcriptSourceSetting",
         target_id = id.from(_N, "TranscriptSourceSetting"),
         target = M.TranscriptSourceSetting,
      }),
      encryptionSetting = schema.new({
         id = id.from(_N, "UpdateBotRecommendationOutput", "encryptionSetting"),
         type = "structure",
         name = "encryptionSetting",
         target_id = id.from(_N, "EncryptionSetting"),
         target = M.EncryptionSetting,
      }),
   },
})

M.UpdateExportInput = schema.new({
   id = id.from(_N, "UpdateExportRequest"),
   type = "structure",
   members = {
      exportId = schema.new({
         id = id.from(_N, "UpdateExportInput", "exportId"),
         type = "string",
         name = "exportId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      filePassword = schema.new({
         id = id.from(_N, "UpdateExportInput", "filePassword"),
         type = "string",
         name = "filePassword",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateExportOutput = schema.new({
   id = id.from(_N, "UpdateExportResponse"),
   type = "structure",
   members = {
      exportId = schema.new({
         id = id.from(_N, "UpdateExportOutput", "exportId"),
         type = "string",
         name = "exportId",
         target_id = prelude.String.id,
      }),
      resourceSpecification = schema.new({
         id = id.from(_N, "UpdateExportOutput", "resourceSpecification"),
         type = "structure",
         name = "resourceSpecification",
         target_id = id.from(_N, "ExportResourceSpecification"),
         target = M.ExportResourceSpecification,
      }),
      fileFormat = schema.new({
         id = id.from(_N, "UpdateExportOutput", "fileFormat"),
         type = "string",
         name = "fileFormat",
         target_id = prelude.String.id,
      }),
      exportStatus = schema.new({
         id = id.from(_N, "UpdateExportOutput", "exportStatus"),
         type = "string",
         name = "exportStatus",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "UpdateExportOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "UpdateExportOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.UpdateResourcePolicyInput = schema.new({
   id = id.from(_N, "UpdateResourcePolicyRequest"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "UpdateResourcePolicyInput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      policy = schema.new({
         id = id.from(_N, "UpdateResourcePolicyInput", "policy"),
         type = "string",
         name = "policy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      expectedRevisionId = schema.new({
         id = id.from(_N, "UpdateResourcePolicyInput", "expectedRevisionId"),
         type = "string",
         name = "expectedRevisionId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "expectedRevisionId" },
         },
      }),
   },
})

M.UpdateResourcePolicyOutput = schema.new({
   id = id.from(_N, "UpdateResourcePolicyResponse"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "UpdateResourcePolicyOutput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
      }),
      revisionId = schema.new({
         id = id.from(_N, "UpdateResourcePolicyOutput", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateSlotTypeInput = schema.new({
   id = id.from(_N, "UpdateSlotTypeRequest"),
   type = "structure",
   members = {
      slotTypeId = schema.new({
         id = id.from(_N, "UpdateSlotTypeInput", "slotTypeId"),
         type = "string",
         name = "slotTypeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      slotTypeName = schema.new({
         id = id.from(_N, "UpdateSlotTypeInput", "slotTypeName"),
         type = "string",
         name = "slotTypeName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "UpdateSlotTypeInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      slotTypeValues = schema.new({
         id = id.from(_N, "UpdateSlotTypeInput", "slotTypeValues"),
         type = "list",
         name = "slotTypeValues",
         target_id = prelude.Document.id,
         list_member = M.SlotTypeValue,
      }),
      valueSelectionSetting = schema.new({
         id = id.from(_N, "UpdateSlotTypeInput", "valueSelectionSetting"),
         type = "structure",
         name = "valueSelectionSetting",
         target_id = id.from(_N, "SlotValueSelectionSetting"),
         target = M.SlotValueSelectionSetting,
      }),
      parentSlotTypeSignature = schema.new({
         id = id.from(_N, "UpdateSlotTypeInput", "parentSlotTypeSignature"),
         type = "string",
         name = "parentSlotTypeSignature",
         target_id = prelude.String.id,
      }),
      botId = schema.new({
         id = id.from(_N, "UpdateSlotTypeInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "UpdateSlotTypeInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "UpdateSlotTypeInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      externalSourceSetting = schema.new({
         id = id.from(_N, "UpdateSlotTypeInput", "externalSourceSetting"),
         type = "structure",
         name = "externalSourceSetting",
         target_id = id.from(_N, "ExternalSourceSetting"),
         target = M.ExternalSourceSetting,
      }),
      compositeSlotTypeSetting = schema.new({
         id = id.from(_N, "UpdateSlotTypeInput", "compositeSlotTypeSetting"),
         type = "structure",
         name = "compositeSlotTypeSetting",
         target_id = id.from(_N, "CompositeSlotTypeSetting"),
         target = M.CompositeSlotTypeSetting,
      }),
   },
})

M.UpdateSlotTypeOutput = schema.new({
   id = id.from(_N, "UpdateSlotTypeResponse"),
   type = "structure",
   members = {
      slotTypeId = schema.new({
         id = id.from(_N, "UpdateSlotTypeOutput", "slotTypeId"),
         type = "string",
         name = "slotTypeId",
         target_id = prelude.String.id,
      }),
      slotTypeName = schema.new({
         id = id.from(_N, "UpdateSlotTypeOutput", "slotTypeName"),
         type = "string",
         name = "slotTypeName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateSlotTypeOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      slotTypeValues = schema.new({
         id = id.from(_N, "UpdateSlotTypeOutput", "slotTypeValues"),
         type = "list",
         name = "slotTypeValues",
         target_id = prelude.Document.id,
         list_member = M.SlotTypeValue,
      }),
      valueSelectionSetting = schema.new({
         id = id.from(_N, "UpdateSlotTypeOutput", "valueSelectionSetting"),
         type = "structure",
         name = "valueSelectionSetting",
         target_id = id.from(_N, "SlotValueSelectionSetting"),
         target = M.SlotValueSelectionSetting,
      }),
      parentSlotTypeSignature = schema.new({
         id = id.from(_N, "UpdateSlotTypeOutput", "parentSlotTypeSignature"),
         type = "string",
         name = "parentSlotTypeSignature",
         target_id = prelude.String.id,
      }),
      botId = schema.new({
         id = id.from(_N, "UpdateSlotTypeOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "UpdateSlotTypeOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "UpdateSlotTypeOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "UpdateSlotTypeOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "UpdateSlotTypeOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      externalSourceSetting = schema.new({
         id = id.from(_N, "UpdateSlotTypeOutput", "externalSourceSetting"),
         type = "structure",
         name = "externalSourceSetting",
         target_id = id.from(_N, "ExternalSourceSetting"),
         target = M.ExternalSourceSetting,
      }),
      compositeSlotTypeSetting = schema.new({
         id = id.from(_N, "UpdateSlotTypeOutput", "compositeSlotTypeSetting"),
         type = "structure",
         name = "compositeSlotTypeSetting",
         target_id = id.from(_N, "CompositeSlotTypeSetting"),
         target = M.CompositeSlotTypeSetting,
      }),
   },
})

M.UpdateTestSetInput = schema.new({
   id = id.from(_N, "UpdateTestSetRequest"),
   type = "structure",
   members = {
      testSetId = schema.new({
         id = id.from(_N, "UpdateTestSetInput", "testSetId"),
         type = "string",
         name = "testSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      testSetName = schema.new({
         id = id.from(_N, "UpdateTestSetInput", "testSetName"),
         type = "string",
         name = "testSetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "UpdateTestSetInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateTestSetOutput = schema.new({
   id = id.from(_N, "UpdateTestSetResponse"),
   type = "structure",
   members = {
      testSetId = schema.new({
         id = id.from(_N, "UpdateTestSetOutput", "testSetId"),
         type = "string",
         name = "testSetId",
         target_id = prelude.String.id,
      }),
      testSetName = schema.new({
         id = id.from(_N, "UpdateTestSetOutput", "testSetName"),
         type = "string",
         name = "testSetName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateTestSetOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      modality = schema.new({
         id = id.from(_N, "UpdateTestSetOutput", "modality"),
         type = "string",
         name = "modality",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "UpdateTestSetOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      roleArn = schema.new({
         id = id.from(_N, "UpdateTestSetOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
      }),
      numTurns = schema.new({
         id = id.from(_N, "UpdateTestSetOutput", "numTurns"),
         type = "integer",
         name = "numTurns",
         target_id = prelude.Integer.id,
      }),
      storageLocation = schema.new({
         id = id.from(_N, "UpdateTestSetOutput", "storageLocation"),
         type = "structure",
         name = "storageLocation",
         target_id = id.from(_N, "TestSetStorageLocation"),
         target = M.TestSetStorageLocation,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "UpdateTestSetOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "UpdateTestSetOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.RuntimeHintDetails = schema.new({
   id = id.from(_N, "RuntimeHintDetails"),
   type = "structure",
   members = {
      runtimeHintValues = schema.new({
         id = id.from(_N, "RuntimeHintDetails", "runtimeHintValues"),
         type = "list",
         name = "runtimeHintValues",
         target_id = prelude.Document.id,
         list_member = M.RuntimeHintValue,
      }),
      subSlotHints = schema.new({
         id = id.from(_N, "RuntimeHintDetails", "subSlotHints"),
         type = "map",
         name = "subSlotHints",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.RuntimeHintDetails,
      }),
   },
})

M.SlotValueOverride = schema.new({
   id = id.from(_N, "SlotValueOverride"),
   type = "structure",
   members = {
      shape = schema.new({
         id = id.from(_N, "SlotValueOverride", "shape"),
         type = "string",
         name = "shape",
         target_id = prelude.String.id,
      }),
      value = schema.new({
         id = id.from(_N, "SlotValueOverride", "value"),
         type = "structure",
         name = "value",
         target_id = id.from(_N, "SlotValue"),
         target = M.SlotValue,
      }),
      values = schema.new({
         id = id.from(_N, "SlotValueOverride", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = M.SlotValueOverride,
      }),
   },
})

M.IntentOverride = schema.new({
   id = id.from(_N, "IntentOverride"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "IntentOverride", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      slots = schema.new({
         id = id.from(_N, "IntentOverride", "slots"),
         type = "map",
         name = "slots",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.SlotValueOverride,
      }),
   },
})

M.RuntimeHints = schema.new({
   id = id.from(_N, "RuntimeHints"),
   type = "structure",
   members = {
      slotHints = schema.new({
         id = id.from(_N, "RuntimeHints", "slotHints"),
         type = "map",
         name = "slotHints",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "map", map_key = prelude.String, map_value = M.RuntimeHintDetails }),
      }),
   },
})

M.UserTurnSlotOutput = schema.new({
   id = id.from(_N, "UserTurnSlotOutput"),
   type = "structure",
   members = {
      value = schema.new({
         id = id.from(_N, "UserTurnSlotOutput", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
      }),
      values = schema.new({
         id = id.from(_N, "UserTurnSlotOutput", "values"),
         type = "list",
         name = "values",
         target_id = prelude.Document.id,
         list_member = M.UserTurnSlotOutput,
      }),
      subSlots = schema.new({
         id = id.from(_N, "UserTurnSlotOutput", "subSlots"),
         type = "map",
         name = "subSlots",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.UserTurnSlotOutput,
      }),
   },
})

M.DialogState = schema.new({
   id = id.from(_N, "DialogState"),
   type = "structure",
   members = {
      dialogAction = schema.new({
         id = id.from(_N, "DialogState", "dialogAction"),
         type = "structure",
         name = "dialogAction",
         target_id = id.from(_N, "DialogAction"),
         target = M.DialogAction,
      }),
      intent = schema.new({
         id = id.from(_N, "DialogState", "intent"),
         type = "structure",
         name = "intent",
         target_id = id.from(_N, "IntentOverride"),
         target = M.IntentOverride,
      }),
      sessionAttributes = schema.new({
         id = id.from(_N, "DialogState", "sessionAttributes"),
         type = "map",
         name = "sessionAttributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.InputSessionStateSpecification = schema.new({
   id = id.from(_N, "InputSessionStateSpecification"),
   type = "structure",
   members = {
      sessionAttributes = schema.new({
         id = id.from(_N, "InputSessionStateSpecification", "sessionAttributes"),
         type = "map",
         name = "sessionAttributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      activeContexts = schema.new({
         id = id.from(_N, "InputSessionStateSpecification", "activeContexts"),
         type = "list",
         name = "activeContexts",
         target_id = prelude.Document.id,
         list_member = M.ActiveContext,
      }),
      runtimeHints = schema.new({
         id = id.from(_N, "InputSessionStateSpecification", "runtimeHints"),
         type = "structure",
         name = "runtimeHints",
         target_id = id.from(_N, "RuntimeHints"),
         target = M.RuntimeHints,
      }),
   },
})

M.ConditionalBranch = schema.new({
   id = id.from(_N, "ConditionalBranch"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "ConditionalBranch", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      condition = schema.new({
         id = id.from(_N, "ConditionalBranch", "condition"),
         type = "structure",
         name = "condition",
         target_id = id.from(_N, "Condition"),
         target = M.Condition,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextStep = schema.new({
         id = id.from(_N, "ConditionalBranch", "nextStep"),
         type = "structure",
         name = "nextStep",
         target_id = id.from(_N, "DialogState"),
         target = M.DialogState,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      response = schema.new({
         id = id.from(_N, "ConditionalBranch", "response"),
         type = "structure",
         name = "response",
         target_id = id.from(_N, "ResponseSpecification"),
         target = M.ResponseSpecification,
      }),
   },
})

M.DefaultConditionalBranch = schema.new({
   id = id.from(_N, "DefaultConditionalBranch"),
   type = "structure",
   members = {
      nextStep = schema.new({
         id = id.from(_N, "DefaultConditionalBranch", "nextStep"),
         type = "structure",
         name = "nextStep",
         target_id = id.from(_N, "DialogState"),
         target = M.DialogState,
      }),
      response = schema.new({
         id = id.from(_N, "DefaultConditionalBranch", "response"),
         type = "structure",
         name = "response",
         target_id = id.from(_N, "ResponseSpecification"),
         target = M.ResponseSpecification,
      }),
   },
})

M.UserTurnInputSpecification = schema.new({
   id = id.from(_N, "UserTurnInputSpecification"),
   type = "structure",
   members = {
      utteranceInput = schema.new({
         id = id.from(_N, "UserTurnInputSpecification", "utteranceInput"),
         type = "structure",
         name = "utteranceInput",
         target_id = id.from(_N, "UtteranceInputSpecification"),
         target = M.UtteranceInputSpecification,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      requestAttributes = schema.new({
         id = id.from(_N, "UserTurnInputSpecification", "requestAttributes"),
         type = "map",
         name = "requestAttributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      sessionState = schema.new({
         id = id.from(_N, "UserTurnInputSpecification", "sessionState"),
         type = "structure",
         name = "sessionState",
         target_id = id.from(_N, "InputSessionStateSpecification"),
         target = M.InputSessionStateSpecification,
      }),
   },
})

M.UserTurnIntentOutput = schema.new({
   id = id.from(_N, "UserTurnIntentOutput"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "UserTurnIntentOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      slots = schema.new({
         id = id.from(_N, "UserTurnIntentOutput", "slots"),
         type = "map",
         name = "slots",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.UserTurnSlotOutput,
      }),
   },
})

M.UserTurnOutputSpecification = schema.new({
   id = id.from(_N, "UserTurnOutputSpecification"),
   type = "structure",
   members = {
      intent = schema.new({
         id = id.from(_N, "UserTurnOutputSpecification", "intent"),
         type = "structure",
         name = "intent",
         target_id = id.from(_N, "UserTurnIntentOutput"),
         target = M.UserTurnIntentOutput,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      activeContexts = schema.new({
         id = id.from(_N, "UserTurnOutputSpecification", "activeContexts"),
         type = "list",
         name = "activeContexts",
         target_id = prelude.Document.id,
         list_member = M.ActiveContext,
      }),
      transcript = schema.new({
         id = id.from(_N, "UserTurnOutputSpecification", "transcript"),
         type = "string",
         name = "transcript",
         target_id = prelude.String.id,
      }),
   },
})

M.ConditionalSpecification = schema.new({
   id = id.from(_N, "ConditionalSpecification"),
   type = "structure",
   members = {
      active = schema.new({
         id = id.from(_N, "ConditionalSpecification", "active"),
         type = "boolean",
         name = "active",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      conditionalBranches = schema.new({
         id = id.from(_N, "ConditionalSpecification", "conditionalBranches"),
         type = "list",
         name = "conditionalBranches",
         target_id = prelude.Document.id,
         list_member = M.ConditionalBranch,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      defaultBranch = schema.new({
         id = id.from(_N, "ConditionalSpecification", "defaultBranch"),
         type = "structure",
         name = "defaultBranch",
         target_id = id.from(_N, "DefaultConditionalBranch"),
         target = M.DefaultConditionalBranch,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UserTurnSpecification = schema.new({
   id = id.from(_N, "UserTurnSpecification"),
   type = "structure",
   members = {
      input = schema.new({
         id = id.from(_N, "UserTurnSpecification", "input"),
         type = "structure",
         name = "input",
         target_id = id.from(_N, "UserTurnInputSpecification"),
         target = M.UserTurnInputSpecification,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      expected = schema.new({
         id = id.from(_N, "UserTurnSpecification", "expected"),
         type = "structure",
         name = "expected",
         target_id = id.from(_N, "UserTurnOutputSpecification"),
         target = M.UserTurnOutputSpecification,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TurnSpecification = schema.new({
   id = id.from(_N, "TurnSpecification"),
   type = "structure",
   members = {
      agentTurn = schema.new({
         id = id.from(_N, "TurnSpecification", "agentTurn"),
         type = "structure",
         name = "agentTurn",
         target_id = id.from(_N, "AgentTurnSpecification"),
         target = M.AgentTurnSpecification,
      }),
      userTurn = schema.new({
         id = id.from(_N, "TurnSpecification", "userTurn"),
         type = "structure",
         name = "userTurn",
         target_id = id.from(_N, "UserTurnSpecification"),
         target = M.UserTurnSpecification,
      }),
   },
})

M.IntentClosingSetting = schema.new({
   id = id.from(_N, "IntentClosingSetting"),
   type = "structure",
   members = {
      closingResponse = schema.new({
         id = id.from(_N, "IntentClosingSetting", "closingResponse"),
         type = "structure",
         name = "closingResponse",
         target_id = id.from(_N, "ResponseSpecification"),
         target = M.ResponseSpecification,
      }),
      active = schema.new({
         id = id.from(_N, "IntentClosingSetting", "active"),
         type = "boolean",
         name = "active",
         target_id = prelude.Boolean.id,
      }),
      nextStep = schema.new({
         id = id.from(_N, "IntentClosingSetting", "nextStep"),
         type = "structure",
         name = "nextStep",
         target_id = id.from(_N, "DialogState"),
         target = M.DialogState,
      }),
      conditional = schema.new({
         id = id.from(_N, "IntentClosingSetting", "conditional"),
         type = "structure",
         name = "conditional",
         target_id = id.from(_N, "ConditionalSpecification"),
         target = M.ConditionalSpecification,
      }),
   },
})

M.TestSetTurnRecord = schema.new({
   id = id.from(_N, "TestSetTurnRecord"),
   type = "structure",
   members = {
      recordNumber = schema.new({
         id = id.from(_N, "TestSetTurnRecord", "recordNumber"),
         type = "long",
         name = "recordNumber",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      conversationId = schema.new({
         id = id.from(_N, "TestSetTurnRecord", "conversationId"),
         type = "string",
         name = "conversationId",
         target_id = prelude.String.id,
      }),
      turnNumber = schema.new({
         id = id.from(_N, "TestSetTurnRecord", "turnNumber"),
         type = "integer",
         name = "turnNumber",
         target_id = prelude.Integer.id,
      }),
      turnSpecification = schema.new({
         id = id.from(_N, "TestSetTurnRecord", "turnSpecification"),
         type = "structure",
         name = "turnSpecification",
         target_id = id.from(_N, "TurnSpecification"),
         target = M.TurnSpecification,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UserTurnResult = schema.new({
   id = id.from(_N, "UserTurnResult"),
   type = "structure",
   members = {
      input = schema.new({
         id = id.from(_N, "UserTurnResult", "input"),
         type = "structure",
         name = "input",
         target_id = id.from(_N, "UserTurnInputSpecification"),
         target = M.UserTurnInputSpecification,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      expectedOutput = schema.new({
         id = id.from(_N, "UserTurnResult", "expectedOutput"),
         type = "structure",
         name = "expectedOutput",
         target_id = id.from(_N, "UserTurnOutputSpecification"),
         target = M.UserTurnOutputSpecification,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      actualOutput = schema.new({
         id = id.from(_N, "UserTurnResult", "actualOutput"),
         type = "structure",
         name = "actualOutput",
         target_id = id.from(_N, "UserTurnOutputSpecification"),
         target = M.UserTurnOutputSpecification,
      }),
      errorDetails = schema.new({
         id = id.from(_N, "UserTurnResult", "errorDetails"),
         type = "structure",
         name = "errorDetails",
         target_id = id.from(_N, "ExecutionErrorDetails"),
         target = M.ExecutionErrorDetails,
      }),
      endToEndResult = schema.new({
         id = id.from(_N, "UserTurnResult", "endToEndResult"),
         type = "string",
         name = "endToEndResult",
         target_id = prelude.String.id,
      }),
      intentMatchResult = schema.new({
         id = id.from(_N, "UserTurnResult", "intentMatchResult"),
         type = "string",
         name = "intentMatchResult",
         target_id = prelude.String.id,
      }),
      slotMatchResult = schema.new({
         id = id.from(_N, "UserTurnResult", "slotMatchResult"),
         type = "string",
         name = "slotMatchResult",
         target_id = prelude.String.id,
      }),
      speechTranscriptionResult = schema.new({
         id = id.from(_N, "UserTurnResult", "speechTranscriptionResult"),
         type = "string",
         name = "speechTranscriptionResult",
         target_id = prelude.String.id,
      }),
      conversationLevelResult = schema.new({
         id = id.from(_N, "UserTurnResult", "conversationLevelResult"),
         type = "structure",
         name = "conversationLevelResult",
         target_id = id.from(_N, "ConversationLevelResultDetail"),
         target = M.ConversationLevelResultDetail,
      }),
   },
})

M.ListTestSetRecordsOutput = schema.new({
   id = id.from(_N, "ListTestSetRecordsResponse"),
   type = "structure",
   members = {
      testSetRecords = schema.new({
         id = id.from(_N, "ListTestSetRecordsOutput", "testSetRecords"),
         type = "list",
         name = "testSetRecords",
         target_id = prelude.Document.id,
         list_member = M.TestSetTurnRecord,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTestSetRecordsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.TestSetTurnResult = schema.new({
   id = id.from(_N, "TestSetTurnResult"),
   type = "structure",
   members = {
      agent = schema.new({
         id = id.from(_N, "TestSetTurnResult", "agent"),
         type = "structure",
         name = "agent",
         target_id = id.from(_N, "AgentTurnResult"),
         target = M.AgentTurnResult,
      }),
      user = schema.new({
         id = id.from(_N, "TestSetTurnResult", "user"),
         type = "structure",
         name = "user",
         target_id = id.from(_N, "UserTurnResult"),
         target = M.UserTurnResult,
      }),
   },
})

M.UtteranceLevelTestResultItem = schema.new({
   id = id.from(_N, "UtteranceLevelTestResultItem"),
   type = "structure",
   members = {
      recordNumber = schema.new({
         id = id.from(_N, "UtteranceLevelTestResultItem", "recordNumber"),
         type = "long",
         name = "recordNumber",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      conversationId = schema.new({
         id = id.from(_N, "UtteranceLevelTestResultItem", "conversationId"),
         type = "string",
         name = "conversationId",
         target_id = prelude.String.id,
      }),
      turnResult = schema.new({
         id = id.from(_N, "UtteranceLevelTestResultItem", "turnResult"),
         type = "structure",
         name = "turnResult",
         target_id = id.from(_N, "TestSetTurnResult"),
         target = M.TestSetTurnResult,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UtteranceLevelTestResults = schema.new({
   id = id.from(_N, "UtteranceLevelTestResults"),
   type = "structure",
   members = {
      items = schema.new({
         id = id.from(_N, "UtteranceLevelTestResults", "items"),
         type = "list",
         name = "items",
         target_id = prelude.Document.id,
         list_member = M.UtteranceLevelTestResultItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TestExecutionResultItems = schema.new({
   id = id.from(_N, "TestExecutionResultItems"),
   type = "structure",
   members = {
      overallTestResults = schema.new({
         id = id.from(_N, "TestExecutionResultItems", "overallTestResults"),
         type = "structure",
         name = "overallTestResults",
         target_id = id.from(_N, "OverallTestResults"),
         target = M.OverallTestResults,
      }),
      conversationLevelTestResults = schema.new({
         id = id.from(_N, "TestExecutionResultItems", "conversationLevelTestResults"),
         type = "structure",
         name = "conversationLevelTestResults",
         target_id = id.from(_N, "ConversationLevelTestResults"),
         target = M.ConversationLevelTestResults,
      }),
      intentClassificationTestResults = schema.new({
         id = id.from(_N, "TestExecutionResultItems", "intentClassificationTestResults"),
         type = "structure",
         name = "intentClassificationTestResults",
         target_id = id.from(_N, "IntentClassificationTestResults"),
         target = M.IntentClassificationTestResults,
      }),
      intentLevelSlotResolutionTestResults = schema.new({
         id = id.from(_N, "TestExecutionResultItems", "intentLevelSlotResolutionTestResults"),
         type = "structure",
         name = "intentLevelSlotResolutionTestResults",
         target_id = id.from(_N, "IntentLevelSlotResolutionTestResults"),
         target = M.IntentLevelSlotResolutionTestResults,
      }),
      utteranceLevelTestResults = schema.new({
         id = id.from(_N, "TestExecutionResultItems", "utteranceLevelTestResults"),
         type = "structure",
         name = "utteranceLevelTestResults",
         target_id = id.from(_N, "UtteranceLevelTestResults"),
         target = M.UtteranceLevelTestResults,
      }),
   },
})

M.ListTestExecutionResultItemsOutput = schema.new({
   id = id.from(_N, "ListTestExecutionResultItemsResponse"),
   type = "structure",
   members = {
      testExecutionResults = schema.new({
         id = id.from(_N, "ListTestExecutionResultItemsOutput", "testExecutionResults"),
         type = "structure",
         name = "testExecutionResults",
         target_id = id.from(_N, "TestExecutionResultItems"),
         target = M.TestExecutionResultItems,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListTestExecutionResultItemsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.PostDialogCodeHookInvocationSpecification = schema.new({
   id = id.from(_N, "PostDialogCodeHookInvocationSpecification"),
   type = "structure",
   members = {
      successResponse = schema.new({
         id = id.from(_N, "PostDialogCodeHookInvocationSpecification", "successResponse"),
         type = "structure",
         name = "successResponse",
         target_id = id.from(_N, "ResponseSpecification"),
         target = M.ResponseSpecification,
      }),
      successNextStep = schema.new({
         id = id.from(_N, "PostDialogCodeHookInvocationSpecification", "successNextStep"),
         type = "structure",
         name = "successNextStep",
         target_id = id.from(_N, "DialogState"),
         target = M.DialogState,
      }),
      successConditional = schema.new({
         id = id.from(_N, "PostDialogCodeHookInvocationSpecification", "successConditional"),
         type = "structure",
         name = "successConditional",
         target_id = id.from(_N, "ConditionalSpecification"),
         target = M.ConditionalSpecification,
      }),
      failureResponse = schema.new({
         id = id.from(_N, "PostDialogCodeHookInvocationSpecification", "failureResponse"),
         type = "structure",
         name = "failureResponse",
         target_id = id.from(_N, "ResponseSpecification"),
         target = M.ResponseSpecification,
      }),
      failureNextStep = schema.new({
         id = id.from(_N, "PostDialogCodeHookInvocationSpecification", "failureNextStep"),
         type = "structure",
         name = "failureNextStep",
         target_id = id.from(_N, "DialogState"),
         target = M.DialogState,
      }),
      failureConditional = schema.new({
         id = id.from(_N, "PostDialogCodeHookInvocationSpecification", "failureConditional"),
         type = "structure",
         name = "failureConditional",
         target_id = id.from(_N, "ConditionalSpecification"),
         target = M.ConditionalSpecification,
      }),
      timeoutResponse = schema.new({
         id = id.from(_N, "PostDialogCodeHookInvocationSpecification", "timeoutResponse"),
         type = "structure",
         name = "timeoutResponse",
         target_id = id.from(_N, "ResponseSpecification"),
         target = M.ResponseSpecification,
      }),
      timeoutNextStep = schema.new({
         id = id.from(_N, "PostDialogCodeHookInvocationSpecification", "timeoutNextStep"),
         type = "structure",
         name = "timeoutNextStep",
         target_id = id.from(_N, "DialogState"),
         target = M.DialogState,
      }),
      timeoutConditional = schema.new({
         id = id.from(_N, "PostDialogCodeHookInvocationSpecification", "timeoutConditional"),
         type = "structure",
         name = "timeoutConditional",
         target_id = id.from(_N, "ConditionalSpecification"),
         target = M.ConditionalSpecification,
      }),
   },
})

M.PostFulfillmentStatusSpecification = schema.new({
   id = id.from(_N, "PostFulfillmentStatusSpecification"),
   type = "structure",
   members = {
      successResponse = schema.new({
         id = id.from(_N, "PostFulfillmentStatusSpecification", "successResponse"),
         type = "structure",
         name = "successResponse",
         target_id = id.from(_N, "ResponseSpecification"),
         target = M.ResponseSpecification,
      }),
      failureResponse = schema.new({
         id = id.from(_N, "PostFulfillmentStatusSpecification", "failureResponse"),
         type = "structure",
         name = "failureResponse",
         target_id = id.from(_N, "ResponseSpecification"),
         target = M.ResponseSpecification,
      }),
      timeoutResponse = schema.new({
         id = id.from(_N, "PostFulfillmentStatusSpecification", "timeoutResponse"),
         type = "structure",
         name = "timeoutResponse",
         target_id = id.from(_N, "ResponseSpecification"),
         target = M.ResponseSpecification,
      }),
      successNextStep = schema.new({
         id = id.from(_N, "PostFulfillmentStatusSpecification", "successNextStep"),
         type = "structure",
         name = "successNextStep",
         target_id = id.from(_N, "DialogState"),
         target = M.DialogState,
      }),
      successConditional = schema.new({
         id = id.from(_N, "PostFulfillmentStatusSpecification", "successConditional"),
         type = "structure",
         name = "successConditional",
         target_id = id.from(_N, "ConditionalSpecification"),
         target = M.ConditionalSpecification,
      }),
      failureNextStep = schema.new({
         id = id.from(_N, "PostFulfillmentStatusSpecification", "failureNextStep"),
         type = "structure",
         name = "failureNextStep",
         target_id = id.from(_N, "DialogState"),
         target = M.DialogState,
      }),
      failureConditional = schema.new({
         id = id.from(_N, "PostFulfillmentStatusSpecification", "failureConditional"),
         type = "structure",
         name = "failureConditional",
         target_id = id.from(_N, "ConditionalSpecification"),
         target = M.ConditionalSpecification,
      }),
      timeoutNextStep = schema.new({
         id = id.from(_N, "PostFulfillmentStatusSpecification", "timeoutNextStep"),
         type = "structure",
         name = "timeoutNextStep",
         target_id = id.from(_N, "DialogState"),
         target = M.DialogState,
      }),
      timeoutConditional = schema.new({
         id = id.from(_N, "PostFulfillmentStatusSpecification", "timeoutConditional"),
         type = "structure",
         name = "timeoutConditional",
         target_id = id.from(_N, "ConditionalSpecification"),
         target = M.ConditionalSpecification,
      }),
   },
})

M.DialogCodeHookInvocationSetting = schema.new({
   id = id.from(_N, "DialogCodeHookInvocationSetting"),
   type = "structure",
   members = {
      enableCodeHookInvocation = schema.new({
         id = id.from(_N, "DialogCodeHookInvocationSetting", "enableCodeHookInvocation"),
         type = "boolean",
         name = "enableCodeHookInvocation",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      active = schema.new({
         id = id.from(_N, "DialogCodeHookInvocationSetting", "active"),
         type = "boolean",
         name = "active",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      invocationLabel = schema.new({
         id = id.from(_N, "DialogCodeHookInvocationSetting", "invocationLabel"),
         type = "string",
         name = "invocationLabel",
         target_id = prelude.String.id,
      }),
      postCodeHookSpecification = schema.new({
         id = id.from(_N, "DialogCodeHookInvocationSetting", "postCodeHookSpecification"),
         type = "structure",
         name = "postCodeHookSpecification",
         target_id = id.from(_N, "PostDialogCodeHookInvocationSpecification"),
         target = M.PostDialogCodeHookInvocationSpecification,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FulfillmentCodeHookSettings = schema.new({
   id = id.from(_N, "FulfillmentCodeHookSettings"),
   type = "structure",
   members = {
      enabled = schema.new({
         id = id.from(_N, "FulfillmentCodeHookSettings", "enabled"),
         type = "boolean",
         name = "enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = false },
         },
      }),
      postFulfillmentStatusSpecification = schema.new({
         id = id.from(_N, "FulfillmentCodeHookSettings", "postFulfillmentStatusSpecification"),
         type = "structure",
         name = "postFulfillmentStatusSpecification",
         target_id = id.from(_N, "PostFulfillmentStatusSpecification"),
         target = M.PostFulfillmentStatusSpecification,
      }),
      fulfillmentUpdatesSpecification = schema.new({
         id = id.from(_N, "FulfillmentCodeHookSettings", "fulfillmentUpdatesSpecification"),
         type = "structure",
         name = "fulfillmentUpdatesSpecification",
         target_id = id.from(_N, "FulfillmentUpdatesSpecification"),
         target = M.FulfillmentUpdatesSpecification,
      }),
      active = schema.new({
         id = id.from(_N, "FulfillmentCodeHookSettings", "active"),
         type = "boolean",
         name = "active",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.InitialResponseSetting = schema.new({
   id = id.from(_N, "InitialResponseSetting"),
   type = "structure",
   members = {
      initialResponse = schema.new({
         id = id.from(_N, "InitialResponseSetting", "initialResponse"),
         type = "structure",
         name = "initialResponse",
         target_id = id.from(_N, "ResponseSpecification"),
         target = M.ResponseSpecification,
      }),
      nextStep = schema.new({
         id = id.from(_N, "InitialResponseSetting", "nextStep"),
         type = "structure",
         name = "nextStep",
         target_id = id.from(_N, "DialogState"),
         target = M.DialogState,
      }),
      conditional = schema.new({
         id = id.from(_N, "InitialResponseSetting", "conditional"),
         type = "structure",
         name = "conditional",
         target_id = id.from(_N, "ConditionalSpecification"),
         target = M.ConditionalSpecification,
      }),
      codeHook = schema.new({
         id = id.from(_N, "InitialResponseSetting", "codeHook"),
         type = "structure",
         name = "codeHook",
         target_id = id.from(_N, "DialogCodeHookInvocationSetting"),
         target = M.DialogCodeHookInvocationSetting,
      }),
   },
})

M.SlotCaptureSetting = schema.new({
   id = id.from(_N, "SlotCaptureSetting"),
   type = "structure",
   members = {
      captureResponse = schema.new({
         id = id.from(_N, "SlotCaptureSetting", "captureResponse"),
         type = "structure",
         name = "captureResponse",
         target_id = id.from(_N, "ResponseSpecification"),
         target = M.ResponseSpecification,
      }),
      captureNextStep = schema.new({
         id = id.from(_N, "SlotCaptureSetting", "captureNextStep"),
         type = "structure",
         name = "captureNextStep",
         target_id = id.from(_N, "DialogState"),
         target = M.DialogState,
      }),
      captureConditional = schema.new({
         id = id.from(_N, "SlotCaptureSetting", "captureConditional"),
         type = "structure",
         name = "captureConditional",
         target_id = id.from(_N, "ConditionalSpecification"),
         target = M.ConditionalSpecification,
      }),
      failureResponse = schema.new({
         id = id.from(_N, "SlotCaptureSetting", "failureResponse"),
         type = "structure",
         name = "failureResponse",
         target_id = id.from(_N, "ResponseSpecification"),
         target = M.ResponseSpecification,
      }),
      failureNextStep = schema.new({
         id = id.from(_N, "SlotCaptureSetting", "failureNextStep"),
         type = "structure",
         name = "failureNextStep",
         target_id = id.from(_N, "DialogState"),
         target = M.DialogState,
      }),
      failureConditional = schema.new({
         id = id.from(_N, "SlotCaptureSetting", "failureConditional"),
         type = "structure",
         name = "failureConditional",
         target_id = id.from(_N, "ConditionalSpecification"),
         target = M.ConditionalSpecification,
      }),
      codeHook = schema.new({
         id = id.from(_N, "SlotCaptureSetting", "codeHook"),
         type = "structure",
         name = "codeHook",
         target_id = id.from(_N, "DialogCodeHookInvocationSetting"),
         target = M.DialogCodeHookInvocationSetting,
      }),
      elicitationCodeHook = schema.new({
         id = id.from(_N, "SlotCaptureSetting", "elicitationCodeHook"),
         type = "structure",
         name = "elicitationCodeHook",
         target_id = id.from(_N, "ElicitationCodeHookInvocationSetting"),
         target = M.ElicitationCodeHookInvocationSetting,
      }),
   },
})

M.SlotValueElicitationSetting = schema.new({
   id = id.from(_N, "SlotValueElicitationSetting"),
   type = "structure",
   members = {
      defaultValueSpecification = schema.new({
         id = id.from(_N, "SlotValueElicitationSetting", "defaultValueSpecification"),
         type = "structure",
         name = "defaultValueSpecification",
         target_id = id.from(_N, "SlotDefaultValueSpecification"),
         target = M.SlotDefaultValueSpecification,
      }),
      slotConstraint = schema.new({
         id = id.from(_N, "SlotValueElicitationSetting", "slotConstraint"),
         type = "string",
         name = "slotConstraint",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      promptSpecification = schema.new({
         id = id.from(_N, "SlotValueElicitationSetting", "promptSpecification"),
         type = "structure",
         name = "promptSpecification",
         target_id = id.from(_N, "PromptSpecification"),
         target = M.PromptSpecification,
      }),
      sampleUtterances = schema.new({
         id = id.from(_N, "SlotValueElicitationSetting", "sampleUtterances"),
         type = "list",
         name = "sampleUtterances",
         target_id = prelude.Document.id,
         list_member = M.SampleUtterance,
      }),
      waitAndContinueSpecification = schema.new({
         id = id.from(_N, "SlotValueElicitationSetting", "waitAndContinueSpecification"),
         type = "structure",
         name = "waitAndContinueSpecification",
         target_id = id.from(_N, "WaitAndContinueSpecification"),
         target = M.WaitAndContinueSpecification,
      }),
      slotCaptureSetting = schema.new({
         id = id.from(_N, "SlotValueElicitationSetting", "slotCaptureSetting"),
         type = "structure",
         name = "slotCaptureSetting",
         target_id = id.from(_N, "SlotCaptureSetting"),
         target = M.SlotCaptureSetting,
      }),
      slotResolutionSetting = schema.new({
         id = id.from(_N, "SlotValueElicitationSetting", "slotResolutionSetting"),
         type = "structure",
         name = "slotResolutionSetting",
         target_id = id.from(_N, "SlotResolutionSetting"),
         target = M.SlotResolutionSetting,
      }),
   },
})

M.IntentConfirmationSetting = schema.new({
   id = id.from(_N, "IntentConfirmationSetting"),
   type = "structure",
   members = {
      promptSpecification = schema.new({
         id = id.from(_N, "IntentConfirmationSetting", "promptSpecification"),
         type = "structure",
         name = "promptSpecification",
         target_id = id.from(_N, "PromptSpecification"),
         target = M.PromptSpecification,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      declinationResponse = schema.new({
         id = id.from(_N, "IntentConfirmationSetting", "declinationResponse"),
         type = "structure",
         name = "declinationResponse",
         target_id = id.from(_N, "ResponseSpecification"),
         target = M.ResponseSpecification,
      }),
      active = schema.new({
         id = id.from(_N, "IntentConfirmationSetting", "active"),
         type = "boolean",
         name = "active",
         target_id = prelude.Boolean.id,
      }),
      confirmationResponse = schema.new({
         id = id.from(_N, "IntentConfirmationSetting", "confirmationResponse"),
         type = "structure",
         name = "confirmationResponse",
         target_id = id.from(_N, "ResponseSpecification"),
         target = M.ResponseSpecification,
      }),
      confirmationNextStep = schema.new({
         id = id.from(_N, "IntentConfirmationSetting", "confirmationNextStep"),
         type = "structure",
         name = "confirmationNextStep",
         target_id = id.from(_N, "DialogState"),
         target = M.DialogState,
      }),
      confirmationConditional = schema.new({
         id = id.from(_N, "IntentConfirmationSetting", "confirmationConditional"),
         type = "structure",
         name = "confirmationConditional",
         target_id = id.from(_N, "ConditionalSpecification"),
         target = M.ConditionalSpecification,
      }),
      declinationNextStep = schema.new({
         id = id.from(_N, "IntentConfirmationSetting", "declinationNextStep"),
         type = "structure",
         name = "declinationNextStep",
         target_id = id.from(_N, "DialogState"),
         target = M.DialogState,
      }),
      declinationConditional = schema.new({
         id = id.from(_N, "IntentConfirmationSetting", "declinationConditional"),
         type = "structure",
         name = "declinationConditional",
         target_id = id.from(_N, "ConditionalSpecification"),
         target = M.ConditionalSpecification,
      }),
      failureResponse = schema.new({
         id = id.from(_N, "IntentConfirmationSetting", "failureResponse"),
         type = "structure",
         name = "failureResponse",
         target_id = id.from(_N, "ResponseSpecification"),
         target = M.ResponseSpecification,
      }),
      failureNextStep = schema.new({
         id = id.from(_N, "IntentConfirmationSetting", "failureNextStep"),
         type = "structure",
         name = "failureNextStep",
         target_id = id.from(_N, "DialogState"),
         target = M.DialogState,
      }),
      failureConditional = schema.new({
         id = id.from(_N, "IntentConfirmationSetting", "failureConditional"),
         type = "structure",
         name = "failureConditional",
         target_id = id.from(_N, "ConditionalSpecification"),
         target = M.ConditionalSpecification,
      }),
      codeHook = schema.new({
         id = id.from(_N, "IntentConfirmationSetting", "codeHook"),
         type = "structure",
         name = "codeHook",
         target_id = id.from(_N, "DialogCodeHookInvocationSetting"),
         target = M.DialogCodeHookInvocationSetting,
      }),
      elicitationCodeHook = schema.new({
         id = id.from(_N, "IntentConfirmationSetting", "elicitationCodeHook"),
         type = "structure",
         name = "elicitationCodeHook",
         target_id = id.from(_N, "ElicitationCodeHookInvocationSetting"),
         target = M.ElicitationCodeHookInvocationSetting,
      }),
   },
})

M.CreateSlotInput = schema.new({
   id = id.from(_N, "CreateSlotRequest"),
   type = "structure",
   members = {
      slotName = schema.new({
         id = id.from(_N, "CreateSlotInput", "slotName"),
         type = "string",
         name = "slotName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateSlotInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      slotTypeId = schema.new({
         id = id.from(_N, "CreateSlotInput", "slotTypeId"),
         type = "string",
         name = "slotTypeId",
         target_id = prelude.String.id,
      }),
      valueElicitationSetting = schema.new({
         id = id.from(_N, "CreateSlotInput", "valueElicitationSetting"),
         type = "structure",
         name = "valueElicitationSetting",
         target_id = id.from(_N, "SlotValueElicitationSetting"),
         target = M.SlotValueElicitationSetting,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      obfuscationSetting = schema.new({
         id = id.from(_N, "CreateSlotInput", "obfuscationSetting"),
         type = "structure",
         name = "obfuscationSetting",
         target_id = id.from(_N, "ObfuscationSetting"),
         target = M.ObfuscationSetting,
      }),
      botId = schema.new({
         id = id.from(_N, "CreateSlotInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "CreateSlotInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "CreateSlotInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      intentId = schema.new({
         id = id.from(_N, "CreateSlotInput", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      multipleValuesSetting = schema.new({
         id = id.from(_N, "CreateSlotInput", "multipleValuesSetting"),
         type = "structure",
         name = "multipleValuesSetting",
         target_id = id.from(_N, "MultipleValuesSetting"),
         target = M.MultipleValuesSetting,
      }),
      subSlotSetting = schema.new({
         id = id.from(_N, "CreateSlotInput", "subSlotSetting"),
         type = "structure",
         name = "subSlotSetting",
         target_id = id.from(_N, "SubSlotSetting"),
         target = M.SubSlotSetting,
      }),
   },
})

M.CreateSlotOutput = schema.new({
   id = id.from(_N, "CreateSlotResponse"),
   type = "structure",
   members = {
      slotId = schema.new({
         id = id.from(_N, "CreateSlotOutput", "slotId"),
         type = "string",
         name = "slotId",
         target_id = prelude.String.id,
      }),
      slotName = schema.new({
         id = id.from(_N, "CreateSlotOutput", "slotName"),
         type = "string",
         name = "slotName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "CreateSlotOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      slotTypeId = schema.new({
         id = id.from(_N, "CreateSlotOutput", "slotTypeId"),
         type = "string",
         name = "slotTypeId",
         target_id = prelude.String.id,
      }),
      valueElicitationSetting = schema.new({
         id = id.from(_N, "CreateSlotOutput", "valueElicitationSetting"),
         type = "structure",
         name = "valueElicitationSetting",
         target_id = id.from(_N, "SlotValueElicitationSetting"),
         target = M.SlotValueElicitationSetting,
      }),
      obfuscationSetting = schema.new({
         id = id.from(_N, "CreateSlotOutput", "obfuscationSetting"),
         type = "structure",
         name = "obfuscationSetting",
         target_id = id.from(_N, "ObfuscationSetting"),
         target = M.ObfuscationSetting,
      }),
      botId = schema.new({
         id = id.from(_N, "CreateSlotOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "CreateSlotOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "CreateSlotOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      intentId = schema.new({
         id = id.from(_N, "CreateSlotOutput", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "CreateSlotOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      multipleValuesSetting = schema.new({
         id = id.from(_N, "CreateSlotOutput", "multipleValuesSetting"),
         type = "structure",
         name = "multipleValuesSetting",
         target_id = id.from(_N, "MultipleValuesSetting"),
         target = M.MultipleValuesSetting,
      }),
      subSlotSetting = schema.new({
         id = id.from(_N, "CreateSlotOutput", "subSlotSetting"),
         type = "structure",
         name = "subSlotSetting",
         target_id = id.from(_N, "SubSlotSetting"),
         target = M.SubSlotSetting,
      }),
   },
})

M.DescribeSlotOutput = schema.new({
   id = id.from(_N, "DescribeSlotResponse"),
   type = "structure",
   members = {
      slotId = schema.new({
         id = id.from(_N, "DescribeSlotOutput", "slotId"),
         type = "string",
         name = "slotId",
         target_id = prelude.String.id,
      }),
      slotName = schema.new({
         id = id.from(_N, "DescribeSlotOutput", "slotName"),
         type = "string",
         name = "slotName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "DescribeSlotOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      slotTypeId = schema.new({
         id = id.from(_N, "DescribeSlotOutput", "slotTypeId"),
         type = "string",
         name = "slotTypeId",
         target_id = prelude.String.id,
      }),
      valueElicitationSetting = schema.new({
         id = id.from(_N, "DescribeSlotOutput", "valueElicitationSetting"),
         type = "structure",
         name = "valueElicitationSetting",
         target_id = id.from(_N, "SlotValueElicitationSetting"),
         target = M.SlotValueElicitationSetting,
      }),
      obfuscationSetting = schema.new({
         id = id.from(_N, "DescribeSlotOutput", "obfuscationSetting"),
         type = "structure",
         name = "obfuscationSetting",
         target_id = id.from(_N, "ObfuscationSetting"),
         target = M.ObfuscationSetting,
      }),
      botId = schema.new({
         id = id.from(_N, "DescribeSlotOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "DescribeSlotOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "DescribeSlotOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      intentId = schema.new({
         id = id.from(_N, "DescribeSlotOutput", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "DescribeSlotOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "DescribeSlotOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      multipleValuesSetting = schema.new({
         id = id.from(_N, "DescribeSlotOutput", "multipleValuesSetting"),
         type = "structure",
         name = "multipleValuesSetting",
         target_id = id.from(_N, "MultipleValuesSetting"),
         target = M.MultipleValuesSetting,
      }),
      subSlotSetting = schema.new({
         id = id.from(_N, "DescribeSlotOutput", "subSlotSetting"),
         type = "structure",
         name = "subSlotSetting",
         target_id = id.from(_N, "SubSlotSetting"),
         target = M.SubSlotSetting,
      }),
   },
})

M.UpdateSlotInput = schema.new({
   id = id.from(_N, "UpdateSlotRequest"),
   type = "structure",
   members = {
      slotId = schema.new({
         id = id.from(_N, "UpdateSlotInput", "slotId"),
         type = "string",
         name = "slotId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      slotName = schema.new({
         id = id.from(_N, "UpdateSlotInput", "slotName"),
         type = "string",
         name = "slotName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "UpdateSlotInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      slotTypeId = schema.new({
         id = id.from(_N, "UpdateSlotInput", "slotTypeId"),
         type = "string",
         name = "slotTypeId",
         target_id = prelude.String.id,
      }),
      valueElicitationSetting = schema.new({
         id = id.from(_N, "UpdateSlotInput", "valueElicitationSetting"),
         type = "structure",
         name = "valueElicitationSetting",
         target_id = id.from(_N, "SlotValueElicitationSetting"),
         target = M.SlotValueElicitationSetting,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      obfuscationSetting = schema.new({
         id = id.from(_N, "UpdateSlotInput", "obfuscationSetting"),
         type = "structure",
         name = "obfuscationSetting",
         target_id = id.from(_N, "ObfuscationSetting"),
         target = M.ObfuscationSetting,
      }),
      botId = schema.new({
         id = id.from(_N, "UpdateSlotInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "UpdateSlotInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "UpdateSlotInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      intentId = schema.new({
         id = id.from(_N, "UpdateSlotInput", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      multipleValuesSetting = schema.new({
         id = id.from(_N, "UpdateSlotInput", "multipleValuesSetting"),
         type = "structure",
         name = "multipleValuesSetting",
         target_id = id.from(_N, "MultipleValuesSetting"),
         target = M.MultipleValuesSetting,
      }),
      subSlotSetting = schema.new({
         id = id.from(_N, "UpdateSlotInput", "subSlotSetting"),
         type = "structure",
         name = "subSlotSetting",
         target_id = id.from(_N, "SubSlotSetting"),
         target = M.SubSlotSetting,
      }),
   },
})

M.UpdateSlotOutput = schema.new({
   id = id.from(_N, "UpdateSlotResponse"),
   type = "structure",
   members = {
      slotId = schema.new({
         id = id.from(_N, "UpdateSlotOutput", "slotId"),
         type = "string",
         name = "slotId",
         target_id = prelude.String.id,
      }),
      slotName = schema.new({
         id = id.from(_N, "UpdateSlotOutput", "slotName"),
         type = "string",
         name = "slotName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateSlotOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      slotTypeId = schema.new({
         id = id.from(_N, "UpdateSlotOutput", "slotTypeId"),
         type = "string",
         name = "slotTypeId",
         target_id = prelude.String.id,
      }),
      valueElicitationSetting = schema.new({
         id = id.from(_N, "UpdateSlotOutput", "valueElicitationSetting"),
         type = "structure",
         name = "valueElicitationSetting",
         target_id = id.from(_N, "SlotValueElicitationSetting"),
         target = M.SlotValueElicitationSetting,
      }),
      obfuscationSetting = schema.new({
         id = id.from(_N, "UpdateSlotOutput", "obfuscationSetting"),
         type = "structure",
         name = "obfuscationSetting",
         target_id = id.from(_N, "ObfuscationSetting"),
         target = M.ObfuscationSetting,
      }),
      botId = schema.new({
         id = id.from(_N, "UpdateSlotOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "UpdateSlotOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "UpdateSlotOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      intentId = schema.new({
         id = id.from(_N, "UpdateSlotOutput", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "UpdateSlotOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "UpdateSlotOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      multipleValuesSetting = schema.new({
         id = id.from(_N, "UpdateSlotOutput", "multipleValuesSetting"),
         type = "structure",
         name = "multipleValuesSetting",
         target_id = id.from(_N, "MultipleValuesSetting"),
         target = M.MultipleValuesSetting,
      }),
      subSlotSetting = schema.new({
         id = id.from(_N, "UpdateSlotOutput", "subSlotSetting"),
         type = "structure",
         name = "subSlotSetting",
         target_id = id.from(_N, "SubSlotSetting"),
         target = M.SubSlotSetting,
      }),
   },
})

M.CreateIntentInput = schema.new({
   id = id.from(_N, "CreateIntentRequest"),
   type = "structure",
   members = {
      intentName = schema.new({
         id = id.from(_N, "CreateIntentInput", "intentName"),
         type = "string",
         name = "intentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      intentDisplayName = schema.new({
         id = id.from(_N, "CreateIntentInput", "intentDisplayName"),
         type = "string",
         name = "intentDisplayName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "CreateIntentInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      parentIntentSignature = schema.new({
         id = id.from(_N, "CreateIntentInput", "parentIntentSignature"),
         type = "string",
         name = "parentIntentSignature",
         target_id = prelude.String.id,
      }),
      sampleUtterances = schema.new({
         id = id.from(_N, "CreateIntentInput", "sampleUtterances"),
         type = "list",
         name = "sampleUtterances",
         target_id = prelude.Document.id,
         list_member = M.SampleUtterance,
      }),
      dialogCodeHook = schema.new({
         id = id.from(_N, "CreateIntentInput", "dialogCodeHook"),
         type = "structure",
         name = "dialogCodeHook",
         target_id = id.from(_N, "DialogCodeHookSettings"),
         target = M.DialogCodeHookSettings,
      }),
      fulfillmentCodeHook = schema.new({
         id = id.from(_N, "CreateIntentInput", "fulfillmentCodeHook"),
         type = "structure",
         name = "fulfillmentCodeHook",
         target_id = id.from(_N, "FulfillmentCodeHookSettings"),
         target = M.FulfillmentCodeHookSettings,
      }),
      intentConfirmationSetting = schema.new({
         id = id.from(_N, "CreateIntentInput", "intentConfirmationSetting"),
         type = "structure",
         name = "intentConfirmationSetting",
         target_id = id.from(_N, "IntentConfirmationSetting"),
         target = M.IntentConfirmationSetting,
      }),
      intentClosingSetting = schema.new({
         id = id.from(_N, "CreateIntentInput", "intentClosingSetting"),
         type = "structure",
         name = "intentClosingSetting",
         target_id = id.from(_N, "IntentClosingSetting"),
         target = M.IntentClosingSetting,
      }),
      inputContexts = schema.new({
         id = id.from(_N, "CreateIntentInput", "inputContexts"),
         type = "list",
         name = "inputContexts",
         target_id = prelude.Document.id,
         list_member = M.InputContext,
      }),
      outputContexts = schema.new({
         id = id.from(_N, "CreateIntentInput", "outputContexts"),
         type = "list",
         name = "outputContexts",
         target_id = prelude.Document.id,
         list_member = M.OutputContext,
      }),
      kendraConfiguration = schema.new({
         id = id.from(_N, "CreateIntentInput", "kendraConfiguration"),
         type = "structure",
         name = "kendraConfiguration",
         target_id = id.from(_N, "KendraConfiguration"),
         target = M.KendraConfiguration,
      }),
      botId = schema.new({
         id = id.from(_N, "CreateIntentInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "CreateIntentInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "CreateIntentInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      initialResponseSetting = schema.new({
         id = id.from(_N, "CreateIntentInput", "initialResponseSetting"),
         type = "structure",
         name = "initialResponseSetting",
         target_id = id.from(_N, "InitialResponseSetting"),
         target = M.InitialResponseSetting,
      }),
      qnAIntentConfiguration = schema.new({
         id = id.from(_N, "CreateIntentInput", "qnAIntentConfiguration"),
         type = "structure",
         name = "qnAIntentConfiguration",
         target_id = id.from(_N, "QnAIntentConfiguration"),
         target = M.QnAIntentConfiguration,
      }),
      qInConnectIntentConfiguration = schema.new({
         id = id.from(_N, "CreateIntentInput", "qInConnectIntentConfiguration"),
         type = "structure",
         name = "qInConnectIntentConfiguration",
         target_id = id.from(_N, "QInConnectIntentConfiguration"),
         target = M.QInConnectIntentConfiguration,
      }),
   },
})

M.CreateIntentOutput = schema.new({
   id = id.from(_N, "CreateIntentResponse"),
   type = "structure",
   members = {
      intentId = schema.new({
         id = id.from(_N, "CreateIntentOutput", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
      }),
      intentName = schema.new({
         id = id.from(_N, "CreateIntentOutput", "intentName"),
         type = "string",
         name = "intentName",
         target_id = prelude.String.id,
      }),
      intentDisplayName = schema.new({
         id = id.from(_N, "CreateIntentOutput", "intentDisplayName"),
         type = "string",
         name = "intentDisplayName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "CreateIntentOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      parentIntentSignature = schema.new({
         id = id.from(_N, "CreateIntentOutput", "parentIntentSignature"),
         type = "string",
         name = "parentIntentSignature",
         target_id = prelude.String.id,
      }),
      sampleUtterances = schema.new({
         id = id.from(_N, "CreateIntentOutput", "sampleUtterances"),
         type = "list",
         name = "sampleUtterances",
         target_id = prelude.Document.id,
         list_member = M.SampleUtterance,
      }),
      dialogCodeHook = schema.new({
         id = id.from(_N, "CreateIntentOutput", "dialogCodeHook"),
         type = "structure",
         name = "dialogCodeHook",
         target_id = id.from(_N, "DialogCodeHookSettings"),
         target = M.DialogCodeHookSettings,
      }),
      fulfillmentCodeHook = schema.new({
         id = id.from(_N, "CreateIntentOutput", "fulfillmentCodeHook"),
         type = "structure",
         name = "fulfillmentCodeHook",
         target_id = id.from(_N, "FulfillmentCodeHookSettings"),
         target = M.FulfillmentCodeHookSettings,
      }),
      intentConfirmationSetting = schema.new({
         id = id.from(_N, "CreateIntentOutput", "intentConfirmationSetting"),
         type = "structure",
         name = "intentConfirmationSetting",
         target_id = id.from(_N, "IntentConfirmationSetting"),
         target = M.IntentConfirmationSetting,
      }),
      intentClosingSetting = schema.new({
         id = id.from(_N, "CreateIntentOutput", "intentClosingSetting"),
         type = "structure",
         name = "intentClosingSetting",
         target_id = id.from(_N, "IntentClosingSetting"),
         target = M.IntentClosingSetting,
      }),
      inputContexts = schema.new({
         id = id.from(_N, "CreateIntentOutput", "inputContexts"),
         type = "list",
         name = "inputContexts",
         target_id = prelude.Document.id,
         list_member = M.InputContext,
      }),
      outputContexts = schema.new({
         id = id.from(_N, "CreateIntentOutput", "outputContexts"),
         type = "list",
         name = "outputContexts",
         target_id = prelude.Document.id,
         list_member = M.OutputContext,
      }),
      kendraConfiguration = schema.new({
         id = id.from(_N, "CreateIntentOutput", "kendraConfiguration"),
         type = "structure",
         name = "kendraConfiguration",
         target_id = id.from(_N, "KendraConfiguration"),
         target = M.KendraConfiguration,
      }),
      botId = schema.new({
         id = id.from(_N, "CreateIntentOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "CreateIntentOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "CreateIntentOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "CreateIntentOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      initialResponseSetting = schema.new({
         id = id.from(_N, "CreateIntentOutput", "initialResponseSetting"),
         type = "structure",
         name = "initialResponseSetting",
         target_id = id.from(_N, "InitialResponseSetting"),
         target = M.InitialResponseSetting,
      }),
      qnAIntentConfiguration = schema.new({
         id = id.from(_N, "CreateIntentOutput", "qnAIntentConfiguration"),
         type = "structure",
         name = "qnAIntentConfiguration",
         target_id = id.from(_N, "QnAIntentConfiguration"),
         target = M.QnAIntentConfiguration,
      }),
      qInConnectIntentConfiguration = schema.new({
         id = id.from(_N, "CreateIntentOutput", "qInConnectIntentConfiguration"),
         type = "structure",
         name = "qInConnectIntentConfiguration",
         target_id = id.from(_N, "QInConnectIntentConfiguration"),
         target = M.QInConnectIntentConfiguration,
      }),
   },
})

M.DescribeIntentOutput = schema.new({
   id = id.from(_N, "DescribeIntentResponse"),
   type = "structure",
   members = {
      intentId = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
      }),
      intentName = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "intentName"),
         type = "string",
         name = "intentName",
         target_id = prelude.String.id,
      }),
      intentDisplayName = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "intentDisplayName"),
         type = "string",
         name = "intentDisplayName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      parentIntentSignature = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "parentIntentSignature"),
         type = "string",
         name = "parentIntentSignature",
         target_id = prelude.String.id,
      }),
      sampleUtterances = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "sampleUtterances"),
         type = "list",
         name = "sampleUtterances",
         target_id = prelude.Document.id,
         list_member = M.SampleUtterance,
      }),
      dialogCodeHook = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "dialogCodeHook"),
         type = "structure",
         name = "dialogCodeHook",
         target_id = id.from(_N, "DialogCodeHookSettings"),
         target = M.DialogCodeHookSettings,
      }),
      fulfillmentCodeHook = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "fulfillmentCodeHook"),
         type = "structure",
         name = "fulfillmentCodeHook",
         target_id = id.from(_N, "FulfillmentCodeHookSettings"),
         target = M.FulfillmentCodeHookSettings,
      }),
      slotPriorities = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "slotPriorities"),
         type = "list",
         name = "slotPriorities",
         target_id = prelude.Document.id,
         list_member = M.SlotPriority,
      }),
      intentConfirmationSetting = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "intentConfirmationSetting"),
         type = "structure",
         name = "intentConfirmationSetting",
         target_id = id.from(_N, "IntentConfirmationSetting"),
         target = M.IntentConfirmationSetting,
      }),
      intentClosingSetting = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "intentClosingSetting"),
         type = "structure",
         name = "intentClosingSetting",
         target_id = id.from(_N, "IntentClosingSetting"),
         target = M.IntentClosingSetting,
      }),
      inputContexts = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "inputContexts"),
         type = "list",
         name = "inputContexts",
         target_id = prelude.Document.id,
         list_member = M.InputContext,
      }),
      outputContexts = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "outputContexts"),
         type = "list",
         name = "outputContexts",
         target_id = prelude.Document.id,
         list_member = M.OutputContext,
      }),
      kendraConfiguration = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "kendraConfiguration"),
         type = "structure",
         name = "kendraConfiguration",
         target_id = id.from(_N, "KendraConfiguration"),
         target = M.KendraConfiguration,
      }),
      botId = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      initialResponseSetting = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "initialResponseSetting"),
         type = "structure",
         name = "initialResponseSetting",
         target_id = id.from(_N, "InitialResponseSetting"),
         target = M.InitialResponseSetting,
      }),
      qnAIntentConfiguration = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "qnAIntentConfiguration"),
         type = "structure",
         name = "qnAIntentConfiguration",
         target_id = id.from(_N, "QnAIntentConfiguration"),
         target = M.QnAIntentConfiguration,
      }),
      qInConnectIntentConfiguration = schema.new({
         id = id.from(_N, "DescribeIntentOutput", "qInConnectIntentConfiguration"),
         type = "structure",
         name = "qInConnectIntentConfiguration",
         target_id = id.from(_N, "QInConnectIntentConfiguration"),
         target = M.QInConnectIntentConfiguration,
      }),
   },
})

M.UpdateIntentInput = schema.new({
   id = id.from(_N, "UpdateIntentRequest"),
   type = "structure",
   members = {
      intentId = schema.new({
         id = id.from(_N, "UpdateIntentInput", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      intentName = schema.new({
         id = id.from(_N, "UpdateIntentInput", "intentName"),
         type = "string",
         name = "intentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      intentDisplayName = schema.new({
         id = id.from(_N, "UpdateIntentInput", "intentDisplayName"),
         type = "string",
         name = "intentDisplayName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateIntentInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      parentIntentSignature = schema.new({
         id = id.from(_N, "UpdateIntentInput", "parentIntentSignature"),
         type = "string",
         name = "parentIntentSignature",
         target_id = prelude.String.id,
      }),
      sampleUtterances = schema.new({
         id = id.from(_N, "UpdateIntentInput", "sampleUtterances"),
         type = "list",
         name = "sampleUtterances",
         target_id = prelude.Document.id,
         list_member = M.SampleUtterance,
      }),
      dialogCodeHook = schema.new({
         id = id.from(_N, "UpdateIntentInput", "dialogCodeHook"),
         type = "structure",
         name = "dialogCodeHook",
         target_id = id.from(_N, "DialogCodeHookSettings"),
         target = M.DialogCodeHookSettings,
      }),
      fulfillmentCodeHook = schema.new({
         id = id.from(_N, "UpdateIntentInput", "fulfillmentCodeHook"),
         type = "structure",
         name = "fulfillmentCodeHook",
         target_id = id.from(_N, "FulfillmentCodeHookSettings"),
         target = M.FulfillmentCodeHookSettings,
      }),
      slotPriorities = schema.new({
         id = id.from(_N, "UpdateIntentInput", "slotPriorities"),
         type = "list",
         name = "slotPriorities",
         target_id = prelude.Document.id,
         list_member = M.SlotPriority,
      }),
      intentConfirmationSetting = schema.new({
         id = id.from(_N, "UpdateIntentInput", "intentConfirmationSetting"),
         type = "structure",
         name = "intentConfirmationSetting",
         target_id = id.from(_N, "IntentConfirmationSetting"),
         target = M.IntentConfirmationSetting,
      }),
      intentClosingSetting = schema.new({
         id = id.from(_N, "UpdateIntentInput", "intentClosingSetting"),
         type = "structure",
         name = "intentClosingSetting",
         target_id = id.from(_N, "IntentClosingSetting"),
         target = M.IntentClosingSetting,
      }),
      inputContexts = schema.new({
         id = id.from(_N, "UpdateIntentInput", "inputContexts"),
         type = "list",
         name = "inputContexts",
         target_id = prelude.Document.id,
         list_member = M.InputContext,
      }),
      outputContexts = schema.new({
         id = id.from(_N, "UpdateIntentInput", "outputContexts"),
         type = "list",
         name = "outputContexts",
         target_id = prelude.Document.id,
         list_member = M.OutputContext,
      }),
      kendraConfiguration = schema.new({
         id = id.from(_N, "UpdateIntentInput", "kendraConfiguration"),
         type = "structure",
         name = "kendraConfiguration",
         target_id = id.from(_N, "KendraConfiguration"),
         target = M.KendraConfiguration,
      }),
      botId = schema.new({
         id = id.from(_N, "UpdateIntentInput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      botVersion = schema.new({
         id = id.from(_N, "UpdateIntentInput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      localeId = schema.new({
         id = id.from(_N, "UpdateIntentInput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      initialResponseSetting = schema.new({
         id = id.from(_N, "UpdateIntentInput", "initialResponseSetting"),
         type = "structure",
         name = "initialResponseSetting",
         target_id = id.from(_N, "InitialResponseSetting"),
         target = M.InitialResponseSetting,
      }),
      qnAIntentConfiguration = schema.new({
         id = id.from(_N, "UpdateIntentInput", "qnAIntentConfiguration"),
         type = "structure",
         name = "qnAIntentConfiguration",
         target_id = id.from(_N, "QnAIntentConfiguration"),
         target = M.QnAIntentConfiguration,
      }),
      qInConnectIntentConfiguration = schema.new({
         id = id.from(_N, "UpdateIntentInput", "qInConnectIntentConfiguration"),
         type = "structure",
         name = "qInConnectIntentConfiguration",
         target_id = id.from(_N, "QInConnectIntentConfiguration"),
         target = M.QInConnectIntentConfiguration,
      }),
   },
})

M.UpdateIntentOutput = schema.new({
   id = id.from(_N, "UpdateIntentResponse"),
   type = "structure",
   members = {
      intentId = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "intentId"),
         type = "string",
         name = "intentId",
         target_id = prelude.String.id,
      }),
      intentName = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "intentName"),
         type = "string",
         name = "intentName",
         target_id = prelude.String.id,
      }),
      intentDisplayName = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "intentDisplayName"),
         type = "string",
         name = "intentDisplayName",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      parentIntentSignature = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "parentIntentSignature"),
         type = "string",
         name = "parentIntentSignature",
         target_id = prelude.String.id,
      }),
      sampleUtterances = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "sampleUtterances"),
         type = "list",
         name = "sampleUtterances",
         target_id = prelude.Document.id,
         list_member = M.SampleUtterance,
      }),
      dialogCodeHook = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "dialogCodeHook"),
         type = "structure",
         name = "dialogCodeHook",
         target_id = id.from(_N, "DialogCodeHookSettings"),
         target = M.DialogCodeHookSettings,
      }),
      fulfillmentCodeHook = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "fulfillmentCodeHook"),
         type = "structure",
         name = "fulfillmentCodeHook",
         target_id = id.from(_N, "FulfillmentCodeHookSettings"),
         target = M.FulfillmentCodeHookSettings,
      }),
      slotPriorities = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "slotPriorities"),
         type = "list",
         name = "slotPriorities",
         target_id = prelude.Document.id,
         list_member = M.SlotPriority,
      }),
      intentConfirmationSetting = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "intentConfirmationSetting"),
         type = "structure",
         name = "intentConfirmationSetting",
         target_id = id.from(_N, "IntentConfirmationSetting"),
         target = M.IntentConfirmationSetting,
      }),
      intentClosingSetting = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "intentClosingSetting"),
         type = "structure",
         name = "intentClosingSetting",
         target_id = id.from(_N, "IntentClosingSetting"),
         target = M.IntentClosingSetting,
      }),
      inputContexts = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "inputContexts"),
         type = "list",
         name = "inputContexts",
         target_id = prelude.Document.id,
         list_member = M.InputContext,
      }),
      outputContexts = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "outputContexts"),
         type = "list",
         name = "outputContexts",
         target_id = prelude.Document.id,
         list_member = M.OutputContext,
      }),
      kendraConfiguration = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "kendraConfiguration"),
         type = "structure",
         name = "kendraConfiguration",
         target_id = id.from(_N, "KendraConfiguration"),
         target = M.KendraConfiguration,
      }),
      botId = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "botId"),
         type = "string",
         name = "botId",
         target_id = prelude.String.id,
      }),
      botVersion = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "botVersion"),
         type = "string",
         name = "botVersion",
         target_id = prelude.String.id,
      }),
      localeId = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "localeId"),
         type = "string",
         name = "localeId",
         target_id = prelude.String.id,
      }),
      creationDateTime = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "creationDateTime"),
         type = "timestamp",
         name = "creationDateTime",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedDateTime = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "lastUpdatedDateTime"),
         type = "timestamp",
         name = "lastUpdatedDateTime",
         target_id = prelude.Timestamp.id,
      }),
      initialResponseSetting = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "initialResponseSetting"),
         type = "structure",
         name = "initialResponseSetting",
         target_id = id.from(_N, "InitialResponseSetting"),
         target = M.InitialResponseSetting,
      }),
      qnAIntentConfiguration = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "qnAIntentConfiguration"),
         type = "structure",
         name = "qnAIntentConfiguration",
         target_id = id.from(_N, "QnAIntentConfiguration"),
         target = M.QnAIntentConfiguration,
      }),
      qInConnectIntentConfiguration = schema.new({
         id = id.from(_N, "UpdateIntentOutput", "qInConnectIntentConfiguration"),
         type = "structure",
         name = "qInConnectIntentConfiguration",
         target_id = id.from(_N, "QInConnectIntentConfiguration"),
         target = M.QInConnectIntentConfiguration,
      }),
   },
})


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

M.Service = schema.service({
   id = id.from("com.amazonaws.lexmodelsv2", "LexModelBuildingServiceV2"),
   version = "2020-08-07",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchCreateCustomVocabularyItem = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "BatchCreateCustomVocabularyItem"),
   input = M.BatchCreateCustomVocabularyItemInput,
   output = M.BatchCreateCustomVocabularyItemOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchcreate" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchDeleteCustomVocabularyItem = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "BatchDeleteCustomVocabularyItem"),
   input = M.BatchDeleteCustomVocabularyItemInput,
   output = M.BatchDeleteCustomVocabularyItemOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchdelete" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchUpdateCustomVocabularyItem = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "BatchUpdateCustomVocabularyItem"),
   input = M.BatchUpdateCustomVocabularyItemInput,
   output = M.BatchUpdateCustomVocabularyItemOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchupdate" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BuildBotLocale = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "BuildBotLocale"),
   input = M.BuildBotLocaleInput,
   output = M.BuildBotLocaleOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateBot = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "CreateBot"),
   input = M.CreateBotInput,
   output = M.CreateBotOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateBotAlias = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "CreateBotAlias"),
   input = M.CreateBotAliasInput,
   output = M.CreateBotAliasOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/botaliases" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateBotLocale = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "CreateBotLocale"),
   input = M.CreateBotLocaleInput,
   output = M.CreateBotLocaleOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/botversions/{botVersion}/botlocales" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateBotReplica = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "CreateBotReplica"),
   input = M.CreateBotReplicaInput,
   output = M.CreateBotReplicaOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/replicas" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateBotVersion = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "CreateBotVersion"),
   input = M.CreateBotVersionInput,
   output = M.CreateBotVersionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/botversions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateExport = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "CreateExport"),
   input = M.CreateExportInput,
   output = M.CreateExportOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/exports" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateIntent = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "CreateIntent"),
   input = M.CreateIntentInput,
   output = M.CreateIntentOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateResourcePolicy = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "CreateResourcePolicy"),
   input = M.CreateResourcePolicyInput,
   output = M.CreateResourcePolicyOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/policy/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateResourcePolicyStatement = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "CreateResourcePolicyStatement"),
   input = M.CreateResourcePolicyStatementInput,
   output = M.CreateResourcePolicyStatementOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/policy/{resourceArn}/statements" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateSlot = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "CreateSlot"),
   input = M.CreateSlotInput,
   output = M.CreateSlotOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateSlotType = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "CreateSlotType"),
   input = M.CreateSlotTypeInput,
   output = M.CreateSlotTypeOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateTestSetDiscrepancyReport = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "CreateTestSetDiscrepancyReport"),
   input = M.CreateTestSetDiscrepancyReportInput,
   output = M.CreateTestSetDiscrepancyReportOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/testsets/{testSetId}/testsetdiscrepancy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateUploadUrl = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "CreateUploadUrl"),
   input = M.CreateUploadUrlInput,
   output = M.CreateUploadUrlOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/createuploadurl" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBot = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DeleteBot"),
   input = M.DeleteBotInput,
   output = M.DeleteBotOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/bots/{botId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBotAlias = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DeleteBotAlias"),
   input = M.DeleteBotAliasInput,
   output = M.DeleteBotAliasOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/bots/{botId}/botaliases/{botAliasId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBotAnalyzerRecommendation = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DeleteBotAnalyzerRecommendation"),
   input = M.DeleteBotAnalyzerRecommendationInput,
   output = M.DeleteBotAnalyzerRecommendationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/bots/{botId}/botanalyzer/{botAnalyzerRequestId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBotLocale = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DeleteBotLocale"),
   input = M.DeleteBotLocaleInput,
   output = M.DeleteBotLocaleOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBotReplica = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DeleteBotReplica"),
   input = M.DeleteBotReplicaInput,
   output = M.DeleteBotReplicaOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/bots/{botId}/replicas/{replicaRegion}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBotVersion = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DeleteBotVersion"),
   input = M.DeleteBotVersionInput,
   output = M.DeleteBotVersionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/bots/{botId}/botversions/{botVersion}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCustomVocabulary = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DeleteCustomVocabulary"),
   input = M.DeleteCustomVocabularyInput,
   output = M.DeleteCustomVocabularyOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteExport = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DeleteExport"),
   input = M.DeleteExportInput,
   output = M.DeleteExportOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/exports/{exportId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteImport = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DeleteImport"),
   input = M.DeleteImportInput,
   output = M.DeleteImportOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/imports/{importId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteIntent = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DeleteIntent"),
   input = M.DeleteIntentInput,
   output = M.DeleteIntentOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteResourcePolicy = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DeleteResourcePolicy"),
   input = M.DeleteResourcePolicyInput,
   output = M.DeleteResourcePolicyOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/policy/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteResourcePolicyStatement = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DeleteResourcePolicyStatement"),
   input = M.DeleteResourcePolicyStatementInput,
   output = M.DeleteResourcePolicyStatementOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/policy/{resourceArn}/statements/{statementId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteSlot = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DeleteSlot"),
   input = M.DeleteSlotInput,
   output = M.DeleteSlotOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteSlotType = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DeleteSlotType"),
   input = M.DeleteSlotTypeInput,
   output = M.DeleteSlotTypeOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteTestSet = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DeleteTestSet"),
   input = M.DeleteTestSetInput,
   output = M.DeleteTestSetOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/testsets/{testSetId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteUtterances = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DeleteUtterances"),
   input = M.DeleteUtterancesInput,
   output = M.DeleteUtterancesOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/bots/{botId}/utterances" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeBot = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeBot"),
   input = M.DescribeBotInput,
   output = M.DescribeBotOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/bots/{botId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeBotAlias = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeBotAlias"),
   input = M.DescribeBotAliasInput,
   output = M.DescribeBotAliasOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/bots/{botId}/botaliases/{botAliasId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeBotAnalyzerRecommendation = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeBotAnalyzerRecommendation"),
   input = M.DescribeBotAnalyzerRecommendationInput,
   output = M.DescribeBotAnalyzerRecommendationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/botanalyzer/describe/{botAnalyzerRequestId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeBotLocale = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeBotLocale"),
   input = M.DescribeBotLocaleInput,
   output = M.DescribeBotLocaleOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeBotRecommendation = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeBotRecommendation"),
   input = M.DescribeBotRecommendationInput,
   output = M.DescribeBotRecommendationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeBotReplica = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeBotReplica"),
   input = M.DescribeBotReplicaInput,
   output = M.DescribeBotReplicaOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/bots/{botId}/replicas/{replicaRegion}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeBotResourceGeneration = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeBotResourceGeneration"),
   input = M.DescribeBotResourceGenerationInput,
   output = M.DescribeBotResourceGenerationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/generations/{generationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeBotVersion = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeBotVersion"),
   input = M.DescribeBotVersionInput,
   output = M.DescribeBotVersionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/bots/{botId}/botversions/{botVersion}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeCustomVocabularyMetadata = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeCustomVocabularyMetadata"),
   input = M.DescribeCustomVocabularyMetadataInput,
   output = M.DescribeCustomVocabularyMetadataOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/metadata" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeExport = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeExport"),
   input = M.DescribeExportInput,
   output = M.DescribeExportOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/exports/{exportId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeImport = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeImport"),
   input = M.DescribeImportInput,
   output = M.DescribeImportOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/imports/{importId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeIntent = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeIntent"),
   input = M.DescribeIntentInput,
   output = M.DescribeIntentOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeResourcePolicy = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeResourcePolicy"),
   input = M.DescribeResourcePolicyInput,
   output = M.DescribeResourcePolicyOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/policy/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeSlot = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeSlot"),
   input = M.DescribeSlotInput,
   output = M.DescribeSlotOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeSlotType = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeSlotType"),
   input = M.DescribeSlotTypeInput,
   output = M.DescribeSlotTypeOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeTestExecution = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeTestExecution"),
   input = M.DescribeTestExecutionInput,
   output = M.DescribeTestExecutionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/testexecutions/{testExecutionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeTestSet = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeTestSet"),
   input = M.DescribeTestSetInput,
   output = M.DescribeTestSetOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/testsets/{testSetId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeTestSetDiscrepancyReport = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeTestSetDiscrepancyReport"),
   input = M.DescribeTestSetDiscrepancyReportInput,
   output = M.DescribeTestSetDiscrepancyReportOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/testsetdiscrepancy/{testSetDiscrepancyReportId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeTestSetGeneration = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "DescribeTestSetGeneration"),
   input = M.DescribeTestSetGenerationInput,
   output = M.DescribeTestSetGenerationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/testsetgenerations/{testSetGenerationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GenerateBotElement = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "GenerateBotElement"),
   input = M.GenerateBotElementInput,
   output = M.GenerateBotElementOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/generate" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetTestExecutionArtifactsUrl = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "GetTestExecutionArtifactsUrl"),
   input = M.GetTestExecutionArtifactsUrlInput,
   output = M.GetTestExecutionArtifactsUrlOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/testexecutions/{testExecutionId}/artifacturl" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAggregatedUtterances = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListAggregatedUtterances"),
   input = M.ListAggregatedUtterancesInput,
   output = M.ListAggregatedUtterancesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/aggregatedutterances" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBotAliases = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListBotAliases"),
   input = M.ListBotAliasesInput,
   output = M.ListBotAliasesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/botaliases" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBotAliasReplicas = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListBotAliasReplicas"),
   input = M.ListBotAliasReplicasInput,
   output = M.ListBotAliasReplicasOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/replicas/{replicaRegion}/botaliases" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBotAnalyzerHistory = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListBotAnalyzerHistory"),
   input = M.ListBotAnalyzerHistoryInput,
   output = M.ListBotAnalyzerHistoryOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/botanalyzer/history" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBotLocales = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListBotLocales"),
   input = M.ListBotLocalesInput,
   output = M.ListBotLocalesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/botversions/{botVersion}/botlocales" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBotRecommendations = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListBotRecommendations"),
   input = M.ListBotRecommendationsInput,
   output = M.ListBotRecommendationsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBotReplicas = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListBotReplicas"),
   input = M.ListBotReplicasInput,
   output = M.ListBotReplicasOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/replicas" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBotResourceGenerations = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListBotResourceGenerations"),
   input = M.ListBotResourceGenerationsInput,
   output = M.ListBotResourceGenerationsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/generations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBots = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListBots"),
   input = M.ListBotsInput,
   output = M.ListBotsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBotVersionReplicas = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListBotVersionReplicas"),
   input = M.ListBotVersionReplicasInput,
   output = M.ListBotVersionReplicasOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/replicas/{replicaRegion}/botversions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBotVersions = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListBotVersions"),
   input = M.ListBotVersionsInput,
   output = M.ListBotVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/botversions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBuiltInIntents = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListBuiltInIntents"),
   input = M.ListBuiltInIntentsInput,
   output = M.ListBuiltInIntentsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/builtins/locales/{localeId}/intents" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBuiltInSlotTypes = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListBuiltInSlotTypes"),
   input = M.ListBuiltInSlotTypesInput,
   output = M.ListBuiltInSlotTypesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/builtins/locales/{localeId}/slottypes" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCustomVocabularyItems = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListCustomVocabularyItems"),
   input = M.ListCustomVocabularyItemsInput,
   output = M.ListCustomVocabularyItemsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListExports = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListExports"),
   input = M.ListExportsInput,
   output = M.ListExportsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/exports" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListImports = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListImports"),
   input = M.ListImportsInput,
   output = M.ListImportsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/imports" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListIntentMetrics = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListIntentMetrics"),
   input = M.ListIntentMetricsInput,
   output = M.ListIntentMetricsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/analytics/intentmetrics" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListIntentPaths = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListIntentPaths"),
   input = M.ListIntentPathsInput,
   output = M.ListIntentPathsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/analytics/intentpaths" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListIntents = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListIntents"),
   input = M.ListIntentsInput,
   output = M.ListIntentsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListIntentStageMetrics = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListIntentStageMetrics"),
   input = M.ListIntentStageMetricsInput,
   output = M.ListIntentStageMetricsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/analytics/intentstagemetrics" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRecommendedIntents = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListRecommendedIntents"),
   input = M.ListRecommendedIntentsInput,
   output = M.ListRecommendedIntentsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/intents" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSessionAnalyticsData = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListSessionAnalyticsData"),
   input = M.ListSessionAnalyticsDataInput,
   output = M.ListSessionAnalyticsDataOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/analytics/sessions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSessionMetrics = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListSessionMetrics"),
   input = M.ListSessionMetricsInput,
   output = M.ListSessionMetricsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/analytics/sessionmetrics" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSlots = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListSlots"),
   input = M.ListSlotsInput,
   output = M.ListSlotsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSlotTypes = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListSlotTypes"),
   input = M.ListSlotTypesInput,
   output = M.ListSlotTypesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{resourceARN}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTestExecutionResultItems = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListTestExecutionResultItems"),
   input = M.ListTestExecutionResultItemsInput,
   output = M.ListTestExecutionResultItemsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/testexecutions/{testExecutionId}/results" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTestExecutions = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListTestExecutions"),
   input = M.ListTestExecutionsInput,
   output = M.ListTestExecutionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/testexecutions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTestSetRecords = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListTestSetRecords"),
   input = M.ListTestSetRecordsInput,
   output = M.ListTestSetRecordsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/testsets/{testSetId}/records" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTestSets = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListTestSets"),
   input = M.ListTestSetsInput,
   output = M.ListTestSetsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/testsets" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListUtteranceAnalyticsData = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListUtteranceAnalyticsData"),
   input = M.ListUtteranceAnalyticsDataInput,
   output = M.ListUtteranceAnalyticsDataOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/analytics/utterances" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListUtteranceMetrics = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "ListUtteranceMetrics"),
   input = M.ListUtteranceMetricsInput,
   output = M.ListUtteranceMetricsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/analytics/utterancemetrics" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SearchAssociatedTranscripts = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "SearchAssociatedTranscripts"),
   input = M.SearchAssociatedTranscriptsInput,
   output = M.SearchAssociatedTranscriptsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/associatedtranscripts" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartBotAnalyzer = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "StartBotAnalyzer"),
   input = M.StartBotAnalyzerInput,
   output = M.StartBotAnalyzerOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/bots/{botId}/botanalyzer" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartBotRecommendation = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "StartBotRecommendation"),
   input = M.StartBotRecommendationInput,
   output = M.StartBotRecommendationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartBotResourceGeneration = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "StartBotResourceGeneration"),
   input = M.StartBotResourceGenerationInput,
   output = M.StartBotResourceGenerationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/startgeneration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartImport = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "StartImport"),
   input = M.StartImportInput,
   output = M.StartImportOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/imports" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartTestExecution = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "StartTestExecution"),
   input = M.StartTestExecutionInput,
   output = M.StartTestExecutionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/testsets/{testSetId}/testexecutions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartTestSetGeneration = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "StartTestSetGeneration"),
   input = M.StartTestSetGenerationInput,
   output = M.StartTestSetGenerationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/testsetgenerations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopBotAnalyzer = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "StopBotAnalyzer"),
   input = M.StopBotAnalyzerInput,
   output = M.StopBotAnalyzerOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/botanalyzer/{botAnalyzerRequestId}/stop" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopBotRecommendation = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "StopBotRecommendation"),
   input = M.StopBotRecommendationInput,
   output = M.StopBotRecommendationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/stopbotrecommendation" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags/{resourceARN}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{resourceARN}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateBot = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "UpdateBot"),
   input = M.UpdateBotInput,
   output = M.UpdateBotOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateBotAlias = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "UpdateBotAlias"),
   input = M.UpdateBotAliasInput,
   output = M.UpdateBotAliasOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/botaliases/{botAliasId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateBotLocale = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "UpdateBotLocale"),
   input = M.UpdateBotLocaleInput,
   output = M.UpdateBotLocaleOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateBotRecommendation = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "UpdateBotRecommendation"),
   input = M.UpdateBotRecommendationInput,
   output = M.UpdateBotRecommendationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateExport = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "UpdateExport"),
   input = M.UpdateExportInput,
   output = M.UpdateExportOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/exports/{exportId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateIntent = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "UpdateIntent"),
   input = M.UpdateIntentInput,
   output = M.UpdateIntentOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateResourcePolicy = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "UpdateResourcePolicy"),
   input = M.UpdateResourcePolicyInput,
   output = M.UpdateResourcePolicyOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/policy/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateSlot = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "UpdateSlot"),
   input = M.UpdateSlotInput,
   output = M.UpdateSlotOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateSlotType = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "UpdateSlotType"),
   input = M.UpdateSlotTypeInput,
   output = M.UpdateSlotTypeOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateTestSet = schema.operation({
   id = id.from("com.amazonaws.lexmodelsv2", "UpdateTestSet"),
   input = M.UpdateTestSetInput,
   output = M.UpdateTestSetOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/testsets/{testSetId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
