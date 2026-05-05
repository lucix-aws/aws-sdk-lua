local record BatchCreateCustomVocabularyItemInput
    botId: string
    botVersion: string
    localeId: string
    customVocabularyItemList: {NewCustomVocabularyItem}
end

local record BatchCreateCustomVocabularyItemOutput
    botId: string
    botVersion: string
    localeId: string
    errors: {FailedCustomVocabularyItem}
    resources: {CustomVocabularyItem}
end

local record BatchDeleteCustomVocabularyItemInput
    botId: string
    botVersion: string
    localeId: string
    customVocabularyItemList: {CustomVocabularyEntryId}
end

local record BatchDeleteCustomVocabularyItemOutput
    botId: string
    botVersion: string
    localeId: string
    errors: {FailedCustomVocabularyItem}
    resources: {CustomVocabularyItem}
end

local record BatchUpdateCustomVocabularyItemInput
    botId: string
    botVersion: string
    localeId: string
    customVocabularyItemList: {CustomVocabularyItem}
end

local record BatchUpdateCustomVocabularyItemOutput
    botId: string
    botVersion: string
    localeId: string
    errors: {FailedCustomVocabularyItem}
    resources: {CustomVocabularyItem}
end

local record BuildBotLocaleInput
    botId: string
    botVersion: string
    localeId: string
end

local record BuildBotLocaleOutput
    botId: string
    botVersion: string
    localeId: string
    botLocaleStatus: string
    lastBuildSubmittedDateTime: number
end

local record CreateBotInput
    botName: string
    description: string
    roleArn: string
    dataPrivacy: DataPrivacy
    idleSessionTTLInSeconds: number
    botTags: {string : string}
    testBotAliasTags: {string : string}
    botType: string
    botMembers: {BotMember}
    errorLogSettings: ErrorLogSettings
end

local record CreateBotOutput
    botId: string
    botName: string
    description: string
    roleArn: string
    dataPrivacy: DataPrivacy
    idleSessionTTLInSeconds: number
    botStatus: string
    creationDateTime: number
    botTags: {string : string}
    testBotAliasTags: {string : string}
    botType: string
    botMembers: {BotMember}
    errorLogSettings: ErrorLogSettings
end

local record CreateBotAliasInput
    botAliasName: string
    description: string
    botVersion: string
    botAliasLocaleSettings: {string : BotAliasLocaleSettings}
    conversationLogSettings: ConversationLogSettings
    sentimentAnalysisSettings: SentimentAnalysisSettings
    botId: string
    tags: {string : string}
end

local record CreateBotAliasOutput
    botAliasId: string
    botAliasName: string
    description: string
    botVersion: string
    botAliasLocaleSettings: {string : BotAliasLocaleSettings}
    conversationLogSettings: ConversationLogSettings
    sentimentAnalysisSettings: SentimentAnalysisSettings
    botAliasStatus: string
    botId: string
    creationDateTime: number
    tags: {string : string}
end

local record CreateBotLocaleInput
    botId: string
    botVersion: string
    localeId: string
    description: string
    nluIntentConfidenceThreshold: number
    voiceSettings: VoiceSettings
    unifiedSpeechSettings: UnifiedSpeechSettings
    speechRecognitionSettings: SpeechRecognitionSettings
    generativeAISettings: GenerativeAISettings
    speechDetectionSensitivity: string
end

local record CreateBotLocaleOutput
    botId: string
    botVersion: string
    localeName: string
    localeId: string
    description: string
    nluIntentConfidenceThreshold: number
    voiceSettings: VoiceSettings
    unifiedSpeechSettings: UnifiedSpeechSettings
    speechRecognitionSettings: SpeechRecognitionSettings
    botLocaleStatus: string
    creationDateTime: number
    generativeAISettings: GenerativeAISettings
    speechDetectionSensitivity: string
end

local record CreateBotReplicaInput
    botId: string
    replicaRegion: string
end

local record CreateBotReplicaOutput
    botId: string
    replicaRegion: string
    sourceRegion: string
    creationDateTime: number
    botReplicaStatus: string
end

local record CreateBotVersionInput
    botId: string
    description: string
    botVersionLocaleSpecification: {string : BotVersionLocaleDetails}
end

local record CreateBotVersionOutput
    botId: string
    description: string
    botVersion: string
    botVersionLocaleSpecification: {string : BotVersionLocaleDetails}
    botStatus: string
    creationDateTime: number
end

local record CreateExportInput
    resourceSpecification: ExportResourceSpecification
    fileFormat: string
    filePassword: string
end

local record CreateExportOutput
    exportId: string
    resourceSpecification: ExportResourceSpecification
    fileFormat: string
    exportStatus: string
    creationDateTime: number
end

local record CreateIntentInput
    intentName: string
    intentDisplayName: string
    description: string
    parentIntentSignature: string
    sampleUtterances: {SampleUtterance}
    dialogCodeHook: DialogCodeHookSettings
    fulfillmentCodeHook: FulfillmentCodeHookSettings
    intentConfirmationSetting: IntentConfirmationSetting
    intentClosingSetting: IntentClosingSetting
    inputContexts: {InputContext}
    outputContexts: {OutputContext}
    kendraConfiguration: KendraConfiguration
    botId: string
    botVersion: string
    localeId: string
    initialResponseSetting: InitialResponseSetting
    qnAIntentConfiguration: QnAIntentConfiguration
    qInConnectIntentConfiguration: QInConnectIntentConfiguration
end

local record CreateIntentOutput
    intentId: string
    intentName: string
    intentDisplayName: string
    description: string
    parentIntentSignature: string
    sampleUtterances: {SampleUtterance}
    dialogCodeHook: DialogCodeHookSettings
    fulfillmentCodeHook: FulfillmentCodeHookSettings
    intentConfirmationSetting: IntentConfirmationSetting
    intentClosingSetting: IntentClosingSetting
    inputContexts: {InputContext}
    outputContexts: {OutputContext}
    kendraConfiguration: KendraConfiguration
    botId: string
    botVersion: string
    localeId: string
    creationDateTime: number
    initialResponseSetting: InitialResponseSetting
    qnAIntentConfiguration: QnAIntentConfiguration
    qInConnectIntentConfiguration: QInConnectIntentConfiguration
end

local record CreateResourcePolicyInput
    resourceArn: string
    policy: string
end

local record CreateResourcePolicyOutput
    resourceArn: string
    revisionId: string
end

local record CreateResourcePolicyStatementInput
    resourceArn: string
    statementId: string
    effect: string
    principal: {Principal}
    action: {string}
    condition: {string : {string : string}}
    expectedRevisionId: string
end

local record CreateResourcePolicyStatementOutput
    resourceArn: string
    revisionId: string
end

local record CreateSlotInput
    slotName: string
    description: string
    slotTypeId: string
    valueElicitationSetting: SlotValueElicitationSetting
    obfuscationSetting: ObfuscationSetting
    botId: string
    botVersion: string
    localeId: string
    intentId: string
    multipleValuesSetting: MultipleValuesSetting
    subSlotSetting: SubSlotSetting
end

local record CreateSlotOutput
    slotId: string
    slotName: string
    description: string
    slotTypeId: string
    valueElicitationSetting: SlotValueElicitationSetting
    obfuscationSetting: ObfuscationSetting
    botId: string
    botVersion: string
    localeId: string
    intentId: string
    creationDateTime: number
    multipleValuesSetting: MultipleValuesSetting
    subSlotSetting: SubSlotSetting
end

local record CreateSlotTypeInput
    slotTypeName: string
    description: string
    slotTypeValues: {SlotTypeValue}
    valueSelectionSetting: SlotValueSelectionSetting
    parentSlotTypeSignature: string
    botId: string
    botVersion: string
    localeId: string
    externalSourceSetting: ExternalSourceSetting
    compositeSlotTypeSetting: CompositeSlotTypeSetting
end

local record CreateSlotTypeOutput
    slotTypeId: string
    slotTypeName: string
    description: string
    slotTypeValues: {SlotTypeValue}
    valueSelectionSetting: SlotValueSelectionSetting
    parentSlotTypeSignature: string
    botId: string
    botVersion: string
    localeId: string
    creationDateTime: number
    externalSourceSetting: ExternalSourceSetting
    compositeSlotTypeSetting: CompositeSlotTypeSetting
end

local record CreateTestSetDiscrepancyReportInput
    testSetId: string
    target: TestSetDiscrepancyReportResourceTarget
end

local record CreateTestSetDiscrepancyReportOutput
    testSetDiscrepancyReportId: string
    creationDateTime: number
    testSetId: string
    target: TestSetDiscrepancyReportResourceTarget
end

local record CreateUploadUrlInput
end

local record CreateUploadUrlOutput
    importId: string
    uploadUrl: string
end

local record DeleteBotInput
    botId: string
    skipResourceInUseCheck: boolean
end

local record DeleteBotOutput
    botId: string
    botStatus: string
end

local record DeleteBotAliasInput
    botAliasId: string
    botId: string
    skipResourceInUseCheck: boolean
end

local record DeleteBotAliasOutput
    botAliasId: string
    botId: string
    botAliasStatus: string
end

local record DeleteBotAnalyzerRecommendationInput
    botId: string
    botAnalyzerRequestId: string
end

local record DeleteBotAnalyzerRecommendationOutput
end

local record DeleteBotLocaleInput
    botId: string
    botVersion: string
    localeId: string
end

local record DeleteBotLocaleOutput
    botId: string
    botVersion: string
    localeId: string
    botLocaleStatus: string
end

local record DeleteBotReplicaInput
    botId: string
    replicaRegion: string
end

local record DeleteBotReplicaOutput
    botId: string
    replicaRegion: string
    botReplicaStatus: string
end

local record DeleteBotVersionInput
    botId: string
    botVersion: string
    skipResourceInUseCheck: boolean
end

local record DeleteBotVersionOutput
    botId: string
    botVersion: string
    botStatus: string
end

local record DeleteCustomVocabularyInput
    botId: string
    botVersion: string
    localeId: string
end

local record DeleteCustomVocabularyOutput
    botId: string
    botVersion: string
    localeId: string
    customVocabularyStatus: string
end

local record DeleteExportInput
    exportId: string
end

local record DeleteExportOutput
    exportId: string
    exportStatus: string
end

local record DeleteImportInput
    importId: string
end

local record DeleteImportOutput
    importId: string
    importStatus: string
end

local record DeleteIntentInput
    intentId: string
    botId: string
    botVersion: string
    localeId: string
end

local record DeleteIntentOutput
end

local record DeleteResourcePolicyInput
    resourceArn: string
    expectedRevisionId: string
end

local record DeleteResourcePolicyOutput
    resourceArn: string
    revisionId: string
end

local record DeleteResourcePolicyStatementInput
    resourceArn: string
    statementId: string
    expectedRevisionId: string
end

local record DeleteResourcePolicyStatementOutput
    resourceArn: string
    revisionId: string
end

local record DeleteSlotInput
    slotId: string
    botId: string
    botVersion: string
    localeId: string
    intentId: string
end

local record DeleteSlotOutput
end

local record DeleteSlotTypeInput
    slotTypeId: string
    botId: string
    botVersion: string
    localeId: string
    skipResourceInUseCheck: boolean
end

local record DeleteSlotTypeOutput
end

local record DeleteTestSetInput
    testSetId: string
end

local record DeleteTestSetOutput
end

local record DeleteUtterancesInput
    botId: string
    localeId: string
    sessionId: string
end

local record DeleteUtterancesOutput
end

local record DescribeBotInput
    botId: string
end

local record DescribeBotOutput
    botId: string
    botName: string
    description: string
    roleArn: string
    dataPrivacy: DataPrivacy
    idleSessionTTLInSeconds: number
    botStatus: string
    creationDateTime: number
    lastUpdatedDateTime: number
    botType: string
    botMembers: {BotMember}
    failureReasons: {string}
    errorLogSettings: ErrorLogSettings
end

local record DescribeBotAliasInput
    botAliasId: string
    botId: string
end

local record DescribeBotAliasOutput
    botAliasId: string
    botAliasName: string
    description: string
    botVersion: string
    botAliasLocaleSettings: {string : BotAliasLocaleSettings}
    conversationLogSettings: ConversationLogSettings
    sentimentAnalysisSettings: SentimentAnalysisSettings
    botAliasHistoryEvents: {BotAliasHistoryEvent}
    botAliasStatus: string
    botId: string
    creationDateTime: number
    lastUpdatedDateTime: number
    parentBotNetworks: {ParentBotNetwork}
end

local record DescribeBotAnalyzerRecommendationInput
    botId: string
    botAnalyzerRequestId: string
    nextToken: string
    maxResults: number
end

local record DescribeBotAnalyzerRecommendationOutput
    botId: string
    botVersion: string
    localeId: string
    botAnalyzerStatus: string
    creationDateTime: number
    botAnalyzerRecommendationList: {BotAnalyzerRecommendation}
    nextToken: string
end

local record DescribeBotLocaleInput
    botId: string
    botVersion: string
    localeId: string
end

local record DescribeBotLocaleOutput
    botId: string
    botVersion: string
    localeId: string
    localeName: string
    description: string
    nluIntentConfidenceThreshold: number
    voiceSettings: VoiceSettings
    unifiedSpeechSettings: UnifiedSpeechSettings
    speechRecognitionSettings: SpeechRecognitionSettings
    intentsCount: number
    slotTypesCount: number
    botLocaleStatus: string
    failureReasons: {string}
    creationDateTime: number
    lastUpdatedDateTime: number
    lastBuildSubmittedDateTime: number
    botLocaleHistoryEvents: {BotLocaleHistoryEvent}
    recommendedActions: {string}
    generativeAISettings: GenerativeAISettings
    speechDetectionSensitivity: string
end

local record DescribeBotRecommendationInput
    botId: string
    botVersion: string
    localeId: string
    botRecommendationId: string
end

local record DescribeBotRecommendationOutput
    botId: string
    botVersion: string
    localeId: string
    botRecommendationStatus: string
    botRecommendationId: string
    failureReasons: {string}
    creationDateTime: number
    lastUpdatedDateTime: number
    transcriptSourceSetting: TranscriptSourceSetting
    encryptionSetting: EncryptionSetting
    botRecommendationResults: BotRecommendationResults
end

local record DescribeBotReplicaInput
    botId: string
    replicaRegion: string
end

local record DescribeBotReplicaOutput
    botId: string
    replicaRegion: string
    sourceRegion: string
    creationDateTime: number
    botReplicaStatus: string
    failureReasons: {string}
end

local record DescribeBotResourceGenerationInput
    botId: string
    botVersion: string
    localeId: string
    generationId: string
end

local record DescribeBotResourceGenerationOutput
    botId: string
    botVersion: string
    localeId: string
    generationId: string
    failureReasons: {string}
    generationStatus: string
    generationInputPrompt: string
    generatedBotLocaleUrl: string
    creationDateTime: number
    modelArn: string
    lastUpdatedDateTime: number
end

local record DescribeBotVersionInput
    botId: string
    botVersion: string
end

local record DescribeBotVersionOutput
    botId: string
    botName: string
    botVersion: string
    description: string
    roleArn: string
    dataPrivacy: DataPrivacy
    idleSessionTTLInSeconds: number
    botStatus: string
    failureReasons: {string}
    creationDateTime: number
    parentBotNetworks: {ParentBotNetwork}
    botType: string
    botMembers: {BotMember}
end

local record DescribeCustomVocabularyMetadataInput
    botId: string
    botVersion: string
    localeId: string
end

local record DescribeCustomVocabularyMetadataOutput
    botId: string
    botVersion: string
    localeId: string
    customVocabularyStatus: string
    creationDateTime: number
    lastUpdatedDateTime: number
end

local record DescribeExportInput
    exportId: string
end

local record DescribeExportOutput
    exportId: string
    resourceSpecification: ExportResourceSpecification
    fileFormat: string
    exportStatus: string
    failureReasons: {string}
    downloadUrl: string
    creationDateTime: number
    lastUpdatedDateTime: number
end

local record DescribeImportInput
    importId: string
end

local record DescribeImportOutput
    importId: string
    resourceSpecification: ImportResourceSpecification
    importedResourceId: string
    importedResourceName: string
    mergeStrategy: string
    importStatus: string
    failureReasons: {string}
    creationDateTime: number
    lastUpdatedDateTime: number
end

local record DescribeIntentInput
    intentId: string
    botId: string
    botVersion: string
    localeId: string
end

local record DescribeIntentOutput
    intentId: string
    intentName: string
    intentDisplayName: string
    description: string
    parentIntentSignature: string
    sampleUtterances: {SampleUtterance}
    dialogCodeHook: DialogCodeHookSettings
    fulfillmentCodeHook: FulfillmentCodeHookSettings
    slotPriorities: {SlotPriority}
    intentConfirmationSetting: IntentConfirmationSetting
    intentClosingSetting: IntentClosingSetting
    inputContexts: {InputContext}
    outputContexts: {OutputContext}
    kendraConfiguration: KendraConfiguration
    botId: string
    botVersion: string
    localeId: string
    creationDateTime: number
    lastUpdatedDateTime: number
    initialResponseSetting: InitialResponseSetting
    qnAIntentConfiguration: QnAIntentConfiguration
    qInConnectIntentConfiguration: QInConnectIntentConfiguration
end

local record DescribeResourcePolicyInput
    resourceArn: string
end

local record DescribeResourcePolicyOutput
    resourceArn: string
    policy: string
    revisionId: string
end

local record DescribeSlotInput
    slotId: string
    botId: string
    botVersion: string
    localeId: string
    intentId: string
end

local record DescribeSlotOutput
    slotId: string
    slotName: string
    description: string
    slotTypeId: string
    valueElicitationSetting: SlotValueElicitationSetting
    obfuscationSetting: ObfuscationSetting
    botId: string
    botVersion: string
    localeId: string
    intentId: string
    creationDateTime: number
    lastUpdatedDateTime: number
    multipleValuesSetting: MultipleValuesSetting
    subSlotSetting: SubSlotSetting
end

local record DescribeSlotTypeInput
    slotTypeId: string
    botId: string
    botVersion: string
    localeId: string
end

local record DescribeSlotTypeOutput
    slotTypeId: string
    slotTypeName: string
    description: string
    slotTypeValues: {SlotTypeValue}
    valueSelectionSetting: SlotValueSelectionSetting
    parentSlotTypeSignature: string
    botId: string
    botVersion: string
    localeId: string
    creationDateTime: number
    lastUpdatedDateTime: number
    externalSourceSetting: ExternalSourceSetting
    compositeSlotTypeSetting: CompositeSlotTypeSetting
end

local record DescribeTestExecutionInput
    testExecutionId: string
end

local record DescribeTestExecutionOutput
    testExecutionId: string
    creationDateTime: number
    lastUpdatedDateTime: number
    testExecutionStatus: string
    testSetId: string
    testSetName: string
    target: TestExecutionTarget
    apiMode: string
    testExecutionModality: string
    failureReasons: {string}
end

local record DescribeTestSetInput
    testSetId: string
end

local record DescribeTestSetOutput
    testSetId: string
    testSetName: string
    description: string
    modality: string
    status: string
    roleArn: string
    numTurns: number
    storageLocation: TestSetStorageLocation
    creationDateTime: number
    lastUpdatedDateTime: number
end

local record DescribeTestSetDiscrepancyReportInput
    testSetDiscrepancyReportId: string
end

local record DescribeTestSetDiscrepancyReportOutput
    testSetDiscrepancyReportId: string
    testSetId: string
    creationDateTime: number
    target: TestSetDiscrepancyReportResourceTarget
    testSetDiscrepancyReportStatus: string
    lastUpdatedDataTime: number
    testSetDiscrepancyTopErrors: TestSetDiscrepancyErrors
    testSetDiscrepancyRawOutputUrl: string
    failureReasons: {string}
end

local record DescribeTestSetGenerationInput
    testSetGenerationId: string
end

local record DescribeTestSetGenerationOutput
    testSetGenerationId: string
    testSetGenerationStatus: string
    failureReasons: {string}
    testSetId: string
    testSetName: string
    description: string
    storageLocation: TestSetStorageLocation
    generationDataSource: TestSetGenerationDataSource
    roleArn: string
    creationDateTime: number
    lastUpdatedDateTime: number
end

local record GenerateBotElementInput
    intentId: string
    botId: string
    botVersion: string
    localeId: string
end

local record GenerateBotElementOutput
    botId: string
    botVersion: string
    localeId: string
    intentId: string
    sampleUtterances: {SampleUtterance}
end

local record GetTestExecutionArtifactsUrlInput
    testExecutionId: string
end

local record GetTestExecutionArtifactsUrlOutput
    testExecutionId: string
    downloadArtifactsUrl: string
end

local record ListAggregatedUtterancesInput
    botId: string
    botAliasId: string
    botVersion: string
    localeId: string
    aggregationDuration: UtteranceAggregationDuration
    sortBy: AggregatedUtterancesSortBy
    filters: {AggregatedUtterancesFilter}
    maxResults: number
    nextToken: string
end

local record ListAggregatedUtterancesOutput
    botId: string
    botAliasId: string
    botVersion: string
    localeId: string
    aggregationDuration: UtteranceAggregationDuration
    aggregationWindowStartTime: number
    aggregationWindowEndTime: number
    aggregationLastRefreshedDateTime: number
    aggregatedUtterancesSummaries: {AggregatedUtterancesSummary}
    nextToken: string
end

local record ListBotAliasesInput
    botId: string
    maxResults: number
    nextToken: string
end

local record ListBotAliasesOutput
    botAliasSummaries: {BotAliasSummary}
    nextToken: string
    botId: string
end

local record ListBotAliasReplicasInput
    botId: string
    replicaRegion: string
    maxResults: number
    nextToken: string
end

local record ListBotAliasReplicasOutput
    botId: string
    sourceRegion: string
    replicaRegion: string
    botAliasReplicaSummaries: {BotAliasReplicaSummary}
    nextToken: string
end

local record ListBotAnalyzerHistoryInput
    botId: string
    localeId: string
    botVersion: string
    nextToken: string
    maxResults: number
end

local record ListBotAnalyzerHistoryOutput
    botId: string
    localeId: string
    botVersion: string
    botAnalyzerHistoryList: {BotAnalyzerHistorySummary}
    nextToken: string
end

local record ListBotLocalesInput
    botId: string
    botVersion: string
    sortBy: BotLocaleSortBy
    filters: {BotLocaleFilter}
    maxResults: number
    nextToken: string
end

local record ListBotLocalesOutput
    botId: string
    botVersion: string
    nextToken: string
    botLocaleSummaries: {BotLocaleSummary}
end

local record ListBotRecommendationsInput
    botId: string
    botVersion: string
    localeId: string
    maxResults: number
    nextToken: string
end

local record ListBotRecommendationsOutput
    botId: string
    botVersion: string
    localeId: string
    botRecommendationSummaries: {BotRecommendationSummary}
    nextToken: string
end

local record ListBotReplicasInput
    botId: string
end

local record ListBotReplicasOutput
    botId: string
    sourceRegion: string
    botReplicaSummaries: {BotReplicaSummary}
end

local record ListBotResourceGenerationsInput
    botId: string
    botVersion: string
    localeId: string
    sortBy: GenerationSortBy
    maxResults: number
    nextToken: string
end

local record ListBotResourceGenerationsOutput
    botId: string
    botVersion: string
    localeId: string
    generationSummaries: {GenerationSummary}
    nextToken: string
end

local record ListBotsInput
    sortBy: BotSortBy
    filters: {BotFilter}
    maxResults: number
    nextToken: string
end

local record ListBotsOutput
    botSummaries: {BotSummary}
    nextToken: string
end

local record ListBotVersionReplicasInput
    botId: string
    replicaRegion: string
    maxResults: number
    nextToken: string
    sortBy: BotVersionReplicaSortBy
end

local record ListBotVersionReplicasOutput
    botId: string
    sourceRegion: string
    replicaRegion: string
    botVersionReplicaSummaries: {BotVersionReplicaSummary}
    nextToken: string
end

local record ListBotVersionsInput
    botId: string
    sortBy: BotVersionSortBy
    maxResults: number
    nextToken: string
end

local record ListBotVersionsOutput
    botId: string
    botVersionSummaries: {BotVersionSummary}
    nextToken: string
end

local record ListBuiltInIntentsInput
    localeId: string
    sortBy: BuiltInIntentSortBy
    maxResults: number
    nextToken: string
end

local record ListBuiltInIntentsOutput
    builtInIntentSummaries: {BuiltInIntentSummary}
    nextToken: string
    localeId: string
end

local record ListBuiltInSlotTypesInput
    localeId: string
    sortBy: BuiltInSlotTypeSortBy
    maxResults: number
    nextToken: string
end

local record ListBuiltInSlotTypesOutput
    builtInSlotTypeSummaries: {BuiltInSlotTypeSummary}
    nextToken: string
    localeId: string
end

local record ListCustomVocabularyItemsInput
    botId: string
    botVersion: string
    localeId: string
    maxResults: number
    nextToken: string
end

local record ListCustomVocabularyItemsOutput
    botId: string
    botVersion: string
    localeId: string
    customVocabularyItems: {CustomVocabularyItem}
    nextToken: string
end

local record ListExportsInput
    botId: string
    botVersion: string
    sortBy: ExportSortBy
    filters: {ExportFilter}
    maxResults: number
    nextToken: string
    localeId: string
end

local record ListExportsOutput
    botId: string
    botVersion: string
    exportSummaries: {ExportSummary}
    nextToken: string
    localeId: string
end

local record ListImportsInput
    botId: string
    botVersion: string
    sortBy: ImportSortBy
    filters: {ImportFilter}
    maxResults: number
    nextToken: string
    localeId: string
end

local record ListImportsOutput
    botId: string
    botVersion: string
    importSummaries: {ImportSummary}
    nextToken: string
    localeId: string
end

local record ListIntentMetricsInput
    botId: string
    startDateTime: number
    endDateTime: number
    metrics: {AnalyticsIntentMetric}
    binBy: {AnalyticsBinBySpecification}
    groupBy: {AnalyticsIntentGroupBySpecification}
    filters: {AnalyticsIntentFilter}
    maxResults: number
    nextToken: string
end

local record ListIntentMetricsOutput
    botId: string
    results: {AnalyticsIntentResult}
    nextToken: string
end

local record ListIntentPathsInput
    botId: string
    startDateTime: number
    endDateTime: number
    intentPath: string
    filters: {AnalyticsPathFilter}
end

local record ListIntentPathsOutput
    nodeSummaries: {AnalyticsIntentNodeSummary}
end

local record ListIntentsInput
    botId: string
    botVersion: string
    localeId: string
    sortBy: IntentSortBy
    filters: {IntentFilter}
    maxResults: number
    nextToken: string
end

local record ListIntentsOutput
    botId: string
    botVersion: string
    localeId: string
    intentSummaries: {IntentSummary}
    nextToken: string
end

local record ListIntentStageMetricsInput
    botId: string
    startDateTime: number
    endDateTime: number
    metrics: {AnalyticsIntentStageMetric}
    binBy: {AnalyticsBinBySpecification}
    groupBy: {AnalyticsIntentStageGroupBySpecification}
    filters: {AnalyticsIntentStageFilter}
    maxResults: number
    nextToken: string
end

local record ListIntentStageMetricsOutput
    botId: string
    results: {AnalyticsIntentStageResult}
    nextToken: string
end

local record ListRecommendedIntentsInput
    botId: string
    botVersion: string
    localeId: string
    botRecommendationId: string
    nextToken: string
    maxResults: number
end

local record ListRecommendedIntentsOutput
    botId: string
    botVersion: string
    localeId: string
    botRecommendationId: string
    summaryList: {RecommendedIntentSummary}
    nextToken: string
end

local record ListSessionAnalyticsDataInput
    botId: string
    startDateTime: number
    endDateTime: number
    sortBy: SessionDataSortBy
    filters: {AnalyticsSessionFilter}
    maxResults: number
    nextToken: string
end

local record ListSessionAnalyticsDataOutput
    botId: string
    nextToken: string
    sessions: {SessionSpecification}
end

local record ListSessionMetricsInput
    botId: string
    startDateTime: number
    endDateTime: number
    metrics: {AnalyticsSessionMetric}
    binBy: {AnalyticsBinBySpecification}
    groupBy: {AnalyticsSessionGroupBySpecification}
    filters: {AnalyticsSessionFilter}
    maxResults: number
    nextToken: string
end

local record ListSessionMetricsOutput
    botId: string
    results: {AnalyticsSessionResult}
    nextToken: string
end

local record ListSlotsInput
    botId: string
    botVersion: string
    localeId: string
    intentId: string
    sortBy: SlotSortBy
    filters: {SlotFilter}
    maxResults: number
    nextToken: string
end

local record ListSlotsOutput
    botId: string
    botVersion: string
    localeId: string
    intentId: string
    slotSummaries: {SlotSummary}
    nextToken: string
end

local record ListSlotTypesInput
    botId: string
    botVersion: string
    localeId: string
    sortBy: SlotTypeSortBy
    filters: {SlotTypeFilter}
    maxResults: number
    nextToken: string
end

local record ListSlotTypesOutput
    botId: string
    botVersion: string
    localeId: string
    slotTypeSummaries: {SlotTypeSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceARN: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListTestExecutionResultItemsInput
    testExecutionId: string
    resultFilterBy: TestExecutionResultFilterBy
    maxResults: number
    nextToken: string
end

local record ListTestExecutionResultItemsOutput
    testExecutionResults: TestExecutionResultItems
    nextToken: string
end

local record ListTestExecutionsInput
    sortBy: TestExecutionSortBy
    maxResults: number
    nextToken: string
end

local record ListTestExecutionsOutput
    testExecutions: {TestExecutionSummary}
    nextToken: string
end

local record ListTestSetRecordsInput
    testSetId: string
    maxResults: number
    nextToken: string
end

local record ListTestSetRecordsOutput
    testSetRecords: {TestSetTurnRecord}
    nextToken: string
end

local record ListTestSetsInput
    sortBy: TestSetSortBy
    maxResults: number
    nextToken: string
end

local record ListTestSetsOutput
    testSets: {TestSetSummary}
    nextToken: string
end

local record ListUtteranceAnalyticsDataInput
    botId: string
    startDateTime: number
    endDateTime: number
    sortBy: UtteranceDataSortBy
    filters: {AnalyticsUtteranceFilter}
    maxResults: number
    nextToken: string
end

local record ListUtteranceAnalyticsDataOutput
    botId: string
    nextToken: string
    utterances: {UtteranceSpecification}
end

local record ListUtteranceMetricsInput
    botId: string
    startDateTime: number
    endDateTime: number
    metrics: {AnalyticsUtteranceMetric}
    binBy: {AnalyticsBinBySpecification}
    groupBy: {AnalyticsUtteranceGroupBySpecification}
    attributes: {AnalyticsUtteranceAttribute}
    filters: {AnalyticsUtteranceFilter}
    maxResults: number
    nextToken: string
end

local record ListUtteranceMetricsOutput
    botId: string
    results: {AnalyticsUtteranceResult}
    nextToken: string
end

local record SearchAssociatedTranscriptsInput
    botId: string
    botVersion: string
    localeId: string
    botRecommendationId: string
    searchOrder: string
    filters: {AssociatedTranscriptFilter}
    maxResults: number
    nextIndex: number
end

local record SearchAssociatedTranscriptsOutput
    botId: string
    botVersion: string
    localeId: string
    botRecommendationId: string
    nextIndex: number
    associatedTranscripts: {AssociatedTranscript}
    totalResults: number
end

local record StartBotAnalyzerInput
    botId: string
    analysisScope: string
    localeId: string
    botVersion: string
end

local record StartBotAnalyzerOutput
    botId: string
    botVersion: string
    localeId: string
    botAnalyzerStatus: string
    botAnalyzerRequestId: string
    creationDateTime: number
end

local record StartBotRecommendationInput
    botId: string
    botVersion: string
    localeId: string
    transcriptSourceSetting: TranscriptSourceSetting
    encryptionSetting: EncryptionSetting
end

local record StartBotRecommendationOutput
    botId: string
    botVersion: string
    localeId: string
    botRecommendationStatus: string
    botRecommendationId: string
    creationDateTime: number
    transcriptSourceSetting: TranscriptSourceSetting
    encryptionSetting: EncryptionSetting
end

local record StartBotResourceGenerationInput
    generationInputPrompt: string
    botId: string
    botVersion: string
    localeId: string
end

local record StartBotResourceGenerationOutput
    generationInputPrompt: string
    generationId: string
    botId: string
    botVersion: string
    localeId: string
    generationStatus: string
    creationDateTime: number
end

local record StartImportInput
    importId: string
    resourceSpecification: ImportResourceSpecification
    mergeStrategy: string
    filePassword: string
end

local record StartImportOutput
    importId: string
    resourceSpecification: ImportResourceSpecification
    mergeStrategy: string
    importStatus: string
    creationDateTime: number
end

local record StartTestExecutionInput
    testSetId: string
    target: TestExecutionTarget
    apiMode: string
    testExecutionModality: string
end

local record StartTestExecutionOutput
    testExecutionId: string
    creationDateTime: number
    testSetId: string
    target: TestExecutionTarget
    apiMode: string
    testExecutionModality: string
end

local record StartTestSetGenerationInput
    testSetName: string
    description: string
    storageLocation: TestSetStorageLocation
    generationDataSource: TestSetGenerationDataSource
    roleArn: string
    testSetTags: {string : string}
end

local record StartTestSetGenerationOutput
    testSetGenerationId: string
    creationDateTime: number
    testSetGenerationStatus: string
    testSetName: string
    description: string
    storageLocation: TestSetStorageLocation
    generationDataSource: TestSetGenerationDataSource
    roleArn: string
    testSetTags: {string : string}
end

local record StopBotAnalyzerInput
    botId: string
    botAnalyzerRequestId: string
end

local record StopBotAnalyzerOutput
    botId: string
    botVersion: string
    localeId: string
    botAnalyzerStatus: string
    botAnalyzerRequestId: string
end

local record StopBotRecommendationInput
    botId: string
    botVersion: string
    localeId: string
    botRecommendationId: string
end

local record StopBotRecommendationOutput
    botId: string
    botVersion: string
    localeId: string
    botRecommendationStatus: string
    botRecommendationId: string
end

local record TagResourceInput
    resourceARN: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceARN: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateBotInput
    botId: string
    botName: string
    description: string
    roleArn: string
    dataPrivacy: DataPrivacy
    idleSessionTTLInSeconds: number
    botType: string
    botMembers: {BotMember}
    errorLogSettings: ErrorLogSettings
end

local record UpdateBotOutput
    botId: string
    botName: string
    description: string
    roleArn: string
    dataPrivacy: DataPrivacy
    idleSessionTTLInSeconds: number
    botStatus: string
    creationDateTime: number
    lastUpdatedDateTime: number
    botType: string
    botMembers: {BotMember}
    errorLogSettings: ErrorLogSettings
end

local record UpdateBotAliasInput
    botAliasId: string
    botAliasName: string
    description: string
    botVersion: string
    botAliasLocaleSettings: {string : BotAliasLocaleSettings}
    conversationLogSettings: ConversationLogSettings
    sentimentAnalysisSettings: SentimentAnalysisSettings
    botId: string
end

local record UpdateBotAliasOutput
    botAliasId: string
    botAliasName: string
    description: string
    botVersion: string
    botAliasLocaleSettings: {string : BotAliasLocaleSettings}
    conversationLogSettings: ConversationLogSettings
    sentimentAnalysisSettings: SentimentAnalysisSettings
    botAliasStatus: string
    botId: string
    creationDateTime: number
    lastUpdatedDateTime: number
end

local record UpdateBotLocaleInput
    botId: string
    botVersion: string
    localeId: string
    description: string
    nluIntentConfidenceThreshold: number
    voiceSettings: VoiceSettings
    unifiedSpeechSettings: UnifiedSpeechSettings
    speechRecognitionSettings: SpeechRecognitionSettings
    generativeAISettings: GenerativeAISettings
    speechDetectionSensitivity: string
end

local record UpdateBotLocaleOutput
    botId: string
    botVersion: string
    localeId: string
    localeName: string
    description: string
    nluIntentConfidenceThreshold: number
    voiceSettings: VoiceSettings
    unifiedSpeechSettings: UnifiedSpeechSettings
    speechRecognitionSettings: SpeechRecognitionSettings
    botLocaleStatus: string
    failureReasons: {string}
    creationDateTime: number
    lastUpdatedDateTime: number
    recommendedActions: {string}
    generativeAISettings: GenerativeAISettings
    speechDetectionSensitivity: string
end

local record UpdateBotRecommendationInput
    botId: string
    botVersion: string
    localeId: string
    botRecommendationId: string
    encryptionSetting: EncryptionSetting
end

local record UpdateBotRecommendationOutput
    botId: string
    botVersion: string
    localeId: string
    botRecommendationStatus: string
    botRecommendationId: string
    creationDateTime: number
    lastUpdatedDateTime: number
    transcriptSourceSetting: TranscriptSourceSetting
    encryptionSetting: EncryptionSetting
end

local record UpdateExportInput
    exportId: string
    filePassword: string
end

local record UpdateExportOutput
    exportId: string
    resourceSpecification: ExportResourceSpecification
    fileFormat: string
    exportStatus: string
    creationDateTime: number
    lastUpdatedDateTime: number
end

local record UpdateIntentInput
    intentId: string
    intentName: string
    intentDisplayName: string
    description: string
    parentIntentSignature: string
    sampleUtterances: {SampleUtterance}
    dialogCodeHook: DialogCodeHookSettings
    fulfillmentCodeHook: FulfillmentCodeHookSettings
    slotPriorities: {SlotPriority}
    intentConfirmationSetting: IntentConfirmationSetting
    intentClosingSetting: IntentClosingSetting
    inputContexts: {InputContext}
    outputContexts: {OutputContext}
    kendraConfiguration: KendraConfiguration
    botId: string
    botVersion: string
    localeId: string
    initialResponseSetting: InitialResponseSetting
    qnAIntentConfiguration: QnAIntentConfiguration
    qInConnectIntentConfiguration: QInConnectIntentConfiguration
end

local record UpdateIntentOutput
    intentId: string
    intentName: string
    intentDisplayName: string
    description: string
    parentIntentSignature: string
    sampleUtterances: {SampleUtterance}
    dialogCodeHook: DialogCodeHookSettings
    fulfillmentCodeHook: FulfillmentCodeHookSettings
    slotPriorities: {SlotPriority}
    intentConfirmationSetting: IntentConfirmationSetting
    intentClosingSetting: IntentClosingSetting
    inputContexts: {InputContext}
    outputContexts: {OutputContext}
    kendraConfiguration: KendraConfiguration
    botId: string
    botVersion: string
    localeId: string
    creationDateTime: number
    lastUpdatedDateTime: number
    initialResponseSetting: InitialResponseSetting
    qnAIntentConfiguration: QnAIntentConfiguration
    qInConnectIntentConfiguration: QInConnectIntentConfiguration
end

local record UpdateResourcePolicyInput
    resourceArn: string
    policy: string
    expectedRevisionId: string
end

local record UpdateResourcePolicyOutput
    resourceArn: string
    revisionId: string
end

local record UpdateSlotInput
    slotId: string
    slotName: string
    description: string
    slotTypeId: string
    valueElicitationSetting: SlotValueElicitationSetting
    obfuscationSetting: ObfuscationSetting
    botId: string
    botVersion: string
    localeId: string
    intentId: string
    multipleValuesSetting: MultipleValuesSetting
    subSlotSetting: SubSlotSetting
end

local record UpdateSlotOutput
    slotId: string
    slotName: string
    description: string
    slotTypeId: string
    valueElicitationSetting: SlotValueElicitationSetting
    obfuscationSetting: ObfuscationSetting
    botId: string
    botVersion: string
    localeId: string
    intentId: string
    creationDateTime: number
    lastUpdatedDateTime: number
    multipleValuesSetting: MultipleValuesSetting
    subSlotSetting: SubSlotSetting
end

local record UpdateSlotTypeInput
    slotTypeId: string
    slotTypeName: string
    description: string
    slotTypeValues: {SlotTypeValue}
    valueSelectionSetting: SlotValueSelectionSetting
    parentSlotTypeSignature: string
    botId: string
    botVersion: string
    localeId: string
    externalSourceSetting: ExternalSourceSetting
    compositeSlotTypeSetting: CompositeSlotTypeSetting
end

local record UpdateSlotTypeOutput
    slotTypeId: string
    slotTypeName: string
    description: string
    slotTypeValues: {SlotTypeValue}
    valueSelectionSetting: SlotValueSelectionSetting
    parentSlotTypeSignature: string
    botId: string
    botVersion: string
    localeId: string
    creationDateTime: number
    lastUpdatedDateTime: number
    externalSourceSetting: ExternalSourceSetting
    compositeSlotTypeSetting: CompositeSlotTypeSetting
end

local record UpdateTestSetInput
    testSetId: string
    testSetName: string
    description: string
end

local record UpdateTestSetOutput
    testSetId: string
    testSetName: string
    description: string
    modality: string
    status: string
    roleArn: string
    numTurns: number
    storageLocation: TestSetStorageLocation
    creationDateTime: number
    lastUpdatedDateTime: number
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    retryAfterSeconds: number
    message: string
end

local record ValidationException
    message: string
end

local type BotAliasStatus = "Creating" | "Available" | "Deleting" | "Failed"

local type BotRecommendationStatus = "Processing" | "Deleting" | "Deleted" | "Downloading" | "Updating" | "Available" | "Failed" | "Stopping" | "Stopped"

local type TestSetStatus = "Importing" | "PendingAnnotation" | "Deleting" | "ValidationError" | "Ready"

local type AnalysisScope = "BotLocale"

local type ExportStatus = "InProgress" | "Completed" | "Failed" | "Deleting"

local type SpeechDetectionSensitivity = "Default" | "HighNoiseTolerance" | "MaximumNoiseTolerance"

local type Effect = "Allow" | "Deny"

local type TestExecutionStatus = "Pending" | "Waiting" | "InProgress" | "Completed" | "Failed" | "Stopping" | "Stopped"

local type ImportExportFileFormat = "LexJson" | "TSV" | "CSV"

local type SearchOrder = "Ascending" | "Descending"

local type TestSetDiscrepancyReportStatus = "InProgress" | "Completed" | "Failed"

local type BotReplicaStatus = "Enabling" | "Enabled" | "Deleting" | "Failed"

local type CustomVocabularyStatus = "Ready" | "Deleting" | "Exporting" | "Importing" | "Creating"

local type ImportStatus = "InProgress" | "Completed" | "Failed" | "Deleting"

local type TestSetModality = "Text" | "Audio"

local type BotLocaleStatus = "Creating" | "Building" | "Built" | "ReadyExpressTesting" | "Failed" | "Deleting" | "NotBuilt" | "Importing" | "Processing"

local type MergeStrategy = "Overwrite" | "FailOnConflict" | "Append"

local type TestExecutionApiMode = "Streaming" | "NonStreaming"

local type GenerationStatus = "Failed" | "Complete" | "InProgress"

local type BotAnalyzerStatus = "Processing" | "Available" | "Failed" | "Stopping" | "Stopped"

local type BotType = "Bot" | "BotNetwork"

local type TestSetGenerationStatus = "Generating" | "Ready" | "Failed" | "Pending"

local type BotStatus = "Creating" | "Available" | "Inactive" | "Deleting" | "Failed" | "Versioning" | "Importing" | "Updating"

local type TestExecutionModality = "Text" | "Audio"

local record M
    BatchCreateCustomVocabularyItemInput: BatchCreateCustomVocabularyItemInput
    BatchCreateCustomVocabularyItemOutput: BatchCreateCustomVocabularyItemOutput
    BatchDeleteCustomVocabularyItemInput: BatchDeleteCustomVocabularyItemInput
    BatchDeleteCustomVocabularyItemOutput: BatchDeleteCustomVocabularyItemOutput
    BatchUpdateCustomVocabularyItemInput: BatchUpdateCustomVocabularyItemInput
    BatchUpdateCustomVocabularyItemOutput: BatchUpdateCustomVocabularyItemOutput
    BuildBotLocaleInput: BuildBotLocaleInput
    BuildBotLocaleOutput: BuildBotLocaleOutput
    CreateBotInput: CreateBotInput
    CreateBotOutput: CreateBotOutput
    CreateBotAliasInput: CreateBotAliasInput
    CreateBotAliasOutput: CreateBotAliasOutput
    CreateBotLocaleInput: CreateBotLocaleInput
    CreateBotLocaleOutput: CreateBotLocaleOutput
    CreateBotReplicaInput: CreateBotReplicaInput
    CreateBotReplicaOutput: CreateBotReplicaOutput
    CreateBotVersionInput: CreateBotVersionInput
    CreateBotVersionOutput: CreateBotVersionOutput
    CreateExportInput: CreateExportInput
    CreateExportOutput: CreateExportOutput
    CreateIntentInput: CreateIntentInput
    CreateIntentOutput: CreateIntentOutput
    CreateResourcePolicyInput: CreateResourcePolicyInput
    CreateResourcePolicyOutput: CreateResourcePolicyOutput
    CreateResourcePolicyStatementInput: CreateResourcePolicyStatementInput
    CreateResourcePolicyStatementOutput: CreateResourcePolicyStatementOutput
    CreateSlotInput: CreateSlotInput
    CreateSlotOutput: CreateSlotOutput
    CreateSlotTypeInput: CreateSlotTypeInput
    CreateSlotTypeOutput: CreateSlotTypeOutput
    CreateTestSetDiscrepancyReportInput: CreateTestSetDiscrepancyReportInput
    CreateTestSetDiscrepancyReportOutput: CreateTestSetDiscrepancyReportOutput
    CreateUploadUrlInput: CreateUploadUrlInput
    CreateUploadUrlOutput: CreateUploadUrlOutput
    DeleteBotInput: DeleteBotInput
    DeleteBotOutput: DeleteBotOutput
    DeleteBotAliasInput: DeleteBotAliasInput
    DeleteBotAliasOutput: DeleteBotAliasOutput
    DeleteBotAnalyzerRecommendationInput: DeleteBotAnalyzerRecommendationInput
    DeleteBotAnalyzerRecommendationOutput: DeleteBotAnalyzerRecommendationOutput
    DeleteBotLocaleInput: DeleteBotLocaleInput
    DeleteBotLocaleOutput: DeleteBotLocaleOutput
    DeleteBotReplicaInput: DeleteBotReplicaInput
    DeleteBotReplicaOutput: DeleteBotReplicaOutput
    DeleteBotVersionInput: DeleteBotVersionInput
    DeleteBotVersionOutput: DeleteBotVersionOutput
    DeleteCustomVocabularyInput: DeleteCustomVocabularyInput
    DeleteCustomVocabularyOutput: DeleteCustomVocabularyOutput
    DeleteExportInput: DeleteExportInput
    DeleteExportOutput: DeleteExportOutput
    DeleteImportInput: DeleteImportInput
    DeleteImportOutput: DeleteImportOutput
    DeleteIntentInput: DeleteIntentInput
    DeleteIntentOutput: DeleteIntentOutput
    DeleteResourcePolicyInput: DeleteResourcePolicyInput
    DeleteResourcePolicyOutput: DeleteResourcePolicyOutput
    DeleteResourcePolicyStatementInput: DeleteResourcePolicyStatementInput
    DeleteResourcePolicyStatementOutput: DeleteResourcePolicyStatementOutput
    DeleteSlotInput: DeleteSlotInput
    DeleteSlotOutput: DeleteSlotOutput
    DeleteSlotTypeInput: DeleteSlotTypeInput
    DeleteSlotTypeOutput: DeleteSlotTypeOutput
    DeleteTestSetInput: DeleteTestSetInput
    DeleteTestSetOutput: DeleteTestSetOutput
    DeleteUtterancesInput: DeleteUtterancesInput
    DeleteUtterancesOutput: DeleteUtterancesOutput
    DescribeBotInput: DescribeBotInput
    DescribeBotOutput: DescribeBotOutput
    DescribeBotAliasInput: DescribeBotAliasInput
    DescribeBotAliasOutput: DescribeBotAliasOutput
    DescribeBotAnalyzerRecommendationInput: DescribeBotAnalyzerRecommendationInput
    DescribeBotAnalyzerRecommendationOutput: DescribeBotAnalyzerRecommendationOutput
    DescribeBotLocaleInput: DescribeBotLocaleInput
    DescribeBotLocaleOutput: DescribeBotLocaleOutput
    DescribeBotRecommendationInput: DescribeBotRecommendationInput
    DescribeBotRecommendationOutput: DescribeBotRecommendationOutput
    DescribeBotReplicaInput: DescribeBotReplicaInput
    DescribeBotReplicaOutput: DescribeBotReplicaOutput
    DescribeBotResourceGenerationInput: DescribeBotResourceGenerationInput
    DescribeBotResourceGenerationOutput: DescribeBotResourceGenerationOutput
    DescribeBotVersionInput: DescribeBotVersionInput
    DescribeBotVersionOutput: DescribeBotVersionOutput
    DescribeCustomVocabularyMetadataInput: DescribeCustomVocabularyMetadataInput
    DescribeCustomVocabularyMetadataOutput: DescribeCustomVocabularyMetadataOutput
    DescribeExportInput: DescribeExportInput
    DescribeExportOutput: DescribeExportOutput
    DescribeImportInput: DescribeImportInput
    DescribeImportOutput: DescribeImportOutput
    DescribeIntentInput: DescribeIntentInput
    DescribeIntentOutput: DescribeIntentOutput
    DescribeResourcePolicyInput: DescribeResourcePolicyInput
    DescribeResourcePolicyOutput: DescribeResourcePolicyOutput
    DescribeSlotInput: DescribeSlotInput
    DescribeSlotOutput: DescribeSlotOutput
    DescribeSlotTypeInput: DescribeSlotTypeInput
    DescribeSlotTypeOutput: DescribeSlotTypeOutput
    DescribeTestExecutionInput: DescribeTestExecutionInput
    DescribeTestExecutionOutput: DescribeTestExecutionOutput
    DescribeTestSetInput: DescribeTestSetInput
    DescribeTestSetOutput: DescribeTestSetOutput
    DescribeTestSetDiscrepancyReportInput: DescribeTestSetDiscrepancyReportInput
    DescribeTestSetDiscrepancyReportOutput: DescribeTestSetDiscrepancyReportOutput
    DescribeTestSetGenerationInput: DescribeTestSetGenerationInput
    DescribeTestSetGenerationOutput: DescribeTestSetGenerationOutput
    GenerateBotElementInput: GenerateBotElementInput
    GenerateBotElementOutput: GenerateBotElementOutput
    GetTestExecutionArtifactsUrlInput: GetTestExecutionArtifactsUrlInput
    GetTestExecutionArtifactsUrlOutput: GetTestExecutionArtifactsUrlOutput
    ListAggregatedUtterancesInput: ListAggregatedUtterancesInput
    ListAggregatedUtterancesOutput: ListAggregatedUtterancesOutput
    ListBotAliasesInput: ListBotAliasesInput
    ListBotAliasesOutput: ListBotAliasesOutput
    ListBotAliasReplicasInput: ListBotAliasReplicasInput
    ListBotAliasReplicasOutput: ListBotAliasReplicasOutput
    ListBotAnalyzerHistoryInput: ListBotAnalyzerHistoryInput
    ListBotAnalyzerHistoryOutput: ListBotAnalyzerHistoryOutput
    ListBotLocalesInput: ListBotLocalesInput
    ListBotLocalesOutput: ListBotLocalesOutput
    ListBotRecommendationsInput: ListBotRecommendationsInput
    ListBotRecommendationsOutput: ListBotRecommendationsOutput
    ListBotReplicasInput: ListBotReplicasInput
    ListBotReplicasOutput: ListBotReplicasOutput
    ListBotResourceGenerationsInput: ListBotResourceGenerationsInput
    ListBotResourceGenerationsOutput: ListBotResourceGenerationsOutput
    ListBotsInput: ListBotsInput
    ListBotsOutput: ListBotsOutput
    ListBotVersionReplicasInput: ListBotVersionReplicasInput
    ListBotVersionReplicasOutput: ListBotVersionReplicasOutput
    ListBotVersionsInput: ListBotVersionsInput
    ListBotVersionsOutput: ListBotVersionsOutput
    ListBuiltInIntentsInput: ListBuiltInIntentsInput
    ListBuiltInIntentsOutput: ListBuiltInIntentsOutput
    ListBuiltInSlotTypesInput: ListBuiltInSlotTypesInput
    ListBuiltInSlotTypesOutput: ListBuiltInSlotTypesOutput
    ListCustomVocabularyItemsInput: ListCustomVocabularyItemsInput
    ListCustomVocabularyItemsOutput: ListCustomVocabularyItemsOutput
    ListExportsInput: ListExportsInput
    ListExportsOutput: ListExportsOutput
    ListImportsInput: ListImportsInput
    ListImportsOutput: ListImportsOutput
    ListIntentMetricsInput: ListIntentMetricsInput
    ListIntentMetricsOutput: ListIntentMetricsOutput
    ListIntentPathsInput: ListIntentPathsInput
    ListIntentPathsOutput: ListIntentPathsOutput
    ListIntentsInput: ListIntentsInput
    ListIntentsOutput: ListIntentsOutput
    ListIntentStageMetricsInput: ListIntentStageMetricsInput
    ListIntentStageMetricsOutput: ListIntentStageMetricsOutput
    ListRecommendedIntentsInput: ListRecommendedIntentsInput
    ListRecommendedIntentsOutput: ListRecommendedIntentsOutput
    ListSessionAnalyticsDataInput: ListSessionAnalyticsDataInput
    ListSessionAnalyticsDataOutput: ListSessionAnalyticsDataOutput
    ListSessionMetricsInput: ListSessionMetricsInput
    ListSessionMetricsOutput: ListSessionMetricsOutput
    ListSlotsInput: ListSlotsInput
    ListSlotsOutput: ListSlotsOutput
    ListSlotTypesInput: ListSlotTypesInput
    ListSlotTypesOutput: ListSlotTypesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTestExecutionResultItemsInput: ListTestExecutionResultItemsInput
    ListTestExecutionResultItemsOutput: ListTestExecutionResultItemsOutput
    ListTestExecutionsInput: ListTestExecutionsInput
    ListTestExecutionsOutput: ListTestExecutionsOutput
    ListTestSetRecordsInput: ListTestSetRecordsInput
    ListTestSetRecordsOutput: ListTestSetRecordsOutput
    ListTestSetsInput: ListTestSetsInput
    ListTestSetsOutput: ListTestSetsOutput
    ListUtteranceAnalyticsDataInput: ListUtteranceAnalyticsDataInput
    ListUtteranceAnalyticsDataOutput: ListUtteranceAnalyticsDataOutput
    ListUtteranceMetricsInput: ListUtteranceMetricsInput
    ListUtteranceMetricsOutput: ListUtteranceMetricsOutput
    SearchAssociatedTranscriptsInput: SearchAssociatedTranscriptsInput
    SearchAssociatedTranscriptsOutput: SearchAssociatedTranscriptsOutput
    StartBotAnalyzerInput: StartBotAnalyzerInput
    StartBotAnalyzerOutput: StartBotAnalyzerOutput
    StartBotRecommendationInput: StartBotRecommendationInput
    StartBotRecommendationOutput: StartBotRecommendationOutput
    StartBotResourceGenerationInput: StartBotResourceGenerationInput
    StartBotResourceGenerationOutput: StartBotResourceGenerationOutput
    StartImportInput: StartImportInput
    StartImportOutput: StartImportOutput
    StartTestExecutionInput: StartTestExecutionInput
    StartTestExecutionOutput: StartTestExecutionOutput
    StartTestSetGenerationInput: StartTestSetGenerationInput
    StartTestSetGenerationOutput: StartTestSetGenerationOutput
    StopBotAnalyzerInput: StopBotAnalyzerInput
    StopBotAnalyzerOutput: StopBotAnalyzerOutput
    StopBotRecommendationInput: StopBotRecommendationInput
    StopBotRecommendationOutput: StopBotRecommendationOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateBotInput: UpdateBotInput
    UpdateBotOutput: UpdateBotOutput
    UpdateBotAliasInput: UpdateBotAliasInput
    UpdateBotAliasOutput: UpdateBotAliasOutput
    UpdateBotLocaleInput: UpdateBotLocaleInput
    UpdateBotLocaleOutput: UpdateBotLocaleOutput
    UpdateBotRecommendationInput: UpdateBotRecommendationInput
    UpdateBotRecommendationOutput: UpdateBotRecommendationOutput
    UpdateExportInput: UpdateExportInput
    UpdateExportOutput: UpdateExportOutput
    UpdateIntentInput: UpdateIntentInput
    UpdateIntentOutput: UpdateIntentOutput
    UpdateResourcePolicyInput: UpdateResourcePolicyInput
    UpdateResourcePolicyOutput: UpdateResourcePolicyOutput
    UpdateSlotInput: UpdateSlotInput
    UpdateSlotOutput: UpdateSlotOutput
    UpdateSlotTypeInput: UpdateSlotTypeInput
    UpdateSlotTypeOutput: UpdateSlotTypeOutput
    UpdateTestSetInput: UpdateTestSetInput
    UpdateTestSetOutput: UpdateTestSetOutput
end

return M
