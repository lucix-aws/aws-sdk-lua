local record CreateBotVersionInput
    name: string
    checksum: string
end

local record CreateBotVersionOutput
    name: string
    description: string
    intents: {Intent}
    clarificationPrompt: Prompt
    abortStatement: Statement
    status: string
    failureReason: string
    lastUpdatedDate: number
    createdDate: number
    idleSessionTTLInSeconds: number
    voiceId: string
    checksum: string
    version: string
    locale: string
    childDirected: boolean
    enableModelImprovements: boolean
    detectSentiment: boolean
end

local record CreateIntentVersionInput
    name: string
    checksum: string
end

local record CreateIntentVersionOutput
    name: string
    description: string
    slots: {Slot}
    sampleUtterances: {string}
    confirmationPrompt: Prompt
    rejectionStatement: Statement
    followUpPrompt: FollowUpPrompt
    conclusionStatement: Statement
    dialogCodeHook: CodeHook
    fulfillmentActivity: FulfillmentActivity
    parentIntentSignature: string
    lastUpdatedDate: number
    createdDate: number
    version: string
    checksum: string
    kendraConfiguration: KendraConfiguration
    inputContexts: {InputContext}
    outputContexts: {OutputContext}
end

local record CreateSlotTypeVersionInput
    name: string
    checksum: string
end

local record CreateSlotTypeVersionOutput
    name: string
    description: string
    enumerationValues: {EnumerationValue}
    lastUpdatedDate: number
    createdDate: number
    version: string
    checksum: string
    valueSelectionStrategy: string
    parentSlotTypeSignature: string
    slotTypeConfigurations: {SlotTypeConfiguration}
end

local record DeleteBotInput
    name: string
end

local record DeleteBotOutput
end

local record DeleteBotAliasInput
    name: string
    botName: string
end

local record DeleteBotAliasOutput
end

local record DeleteBotChannelAssociationInput
    name: string
    botName: string
    botAlias: string
end

local record DeleteBotChannelAssociationOutput
end

local record DeleteBotVersionInput
    name: string
    version: string
end

local record DeleteBotVersionOutput
end

local record DeleteIntentInput
    name: string
end

local record DeleteIntentOutput
end

local record DeleteIntentVersionInput
    name: string
    version: string
end

local record DeleteIntentVersionOutput
end

local record DeleteSlotTypeInput
    name: string
end

local record DeleteSlotTypeOutput
end

local record DeleteSlotTypeVersionInput
    name: string
    version: string
end

local record DeleteSlotTypeVersionOutput
end

local record DeleteUtterancesInput
    botName: string
    userId: string
end

local record DeleteUtterancesOutput
end

local record GetBotInput
    name: string
    versionOrAlias: string
end

local record GetBotOutput
    name: string
    description: string
    intents: {Intent}
    enableModelImprovements: boolean
    nluIntentConfidenceThreshold: number
    clarificationPrompt: Prompt
    abortStatement: Statement
    status: string
    failureReason: string
    lastUpdatedDate: number
    createdDate: number
    idleSessionTTLInSeconds: number
    voiceId: string
    checksum: string
    version: string
    locale: string
    childDirected: boolean
    detectSentiment: boolean
end

local record GetBotAliasInput
    name: string
    botName: string
end

local record GetBotAliasOutput
    name: string
    description: string
    botVersion: string
    botName: string
    lastUpdatedDate: number
    createdDate: number
    checksum: string
    conversationLogs: ConversationLogsResponse
end

local record GetBotAliasesInput
    botName: string
    nextToken: string
    maxResults: number
    nameContains: string
end

local record GetBotAliasesOutput
    BotAliases: {BotAliasMetadata}
    nextToken: string
end

local record GetBotChannelAssociationInput
    name: string
    botName: string
    botAlias: string
end

local record GetBotChannelAssociationOutput
    name: string
    description: string
    botAlias: string
    botName: string
    createdDate: number
    type: string
    botConfiguration: {string : string}
    status: string
    failureReason: string
end

local record GetBotChannelAssociationsInput
    botName: string
    botAlias: string
    nextToken: string
    maxResults: number
    nameContains: string
end

local record GetBotChannelAssociationsOutput
    botChannelAssociations: {BotChannelAssociation}
    nextToken: string
end

local record GetBotsInput
    nextToken: string
    maxResults: number
    nameContains: string
end

local record GetBotsOutput
    bots: {BotMetadata}
    nextToken: string
end

local record GetBotVersionsInput
    name: string
    nextToken: string
    maxResults: number
end

local record GetBotVersionsOutput
    bots: {BotMetadata}
    nextToken: string
end

local record GetBuiltinIntentInput
    signature: string
end

local record GetBuiltinIntentOutput
    signature: string
    supportedLocales: {string}
    slots: {BuiltinIntentSlot}
end

local record GetBuiltinIntentsInput
    locale: string
    signatureContains: string
    nextToken: string
    maxResults: number
end

local record GetBuiltinIntentsOutput
    intents: {BuiltinIntentMetadata}
    nextToken: string
end

local record GetBuiltinSlotTypesInput
    locale: string
    signatureContains: string
    nextToken: string
    maxResults: number
end

local record GetBuiltinSlotTypesOutput
    slotTypes: {BuiltinSlotTypeMetadata}
    nextToken: string
end

local record GetExportInput
    name: string
    version: string
    resourceType: string
    exportType: string
end

local record GetExportOutput
    name: string
    version: string
    resourceType: string
    exportType: string
    exportStatus: string
    failureReason: string
    url: string
end

local record GetImportInput
    importId: string
end

local record GetImportOutput
    name: string
    resourceType: string
    mergeStrategy: string
    importId: string
    importStatus: string
    failureReason: {string}
    createdDate: number
end

local record GetIntentInput
    name: string
    version: string
end

local record GetIntentOutput
    name: string
    description: string
    slots: {Slot}
    sampleUtterances: {string}
    confirmationPrompt: Prompt
    rejectionStatement: Statement
    followUpPrompt: FollowUpPrompt
    conclusionStatement: Statement
    dialogCodeHook: CodeHook
    fulfillmentActivity: FulfillmentActivity
    parentIntentSignature: string
    lastUpdatedDate: number
    createdDate: number
    version: string
    checksum: string
    kendraConfiguration: KendraConfiguration
    inputContexts: {InputContext}
    outputContexts: {OutputContext}
end

local record GetIntentsInput
    nextToken: string
    maxResults: number
    nameContains: string
end

local record GetIntentsOutput
    intents: {IntentMetadata}
    nextToken: string
end

local record GetIntentVersionsInput
    name: string
    nextToken: string
    maxResults: number
end

local record GetIntentVersionsOutput
    intents: {IntentMetadata}
    nextToken: string
end

local record GetMigrationInput
    migrationId: string
end

local record GetMigrationOutput
    migrationId: string
    v1BotName: string
    v1BotVersion: string
    v1BotLocale: string
    v2BotId: string
    v2BotRole: string
    migrationStatus: string
    migrationStrategy: string
    migrationTimestamp: number
    alerts: {MigrationAlert}
end

local record GetMigrationsInput
    sortByAttribute: string
    sortByOrder: string
    v1BotNameContains: string
    migrationStatusEquals: string
    maxResults: number
    nextToken: string
end

local record GetMigrationsOutput
    migrationSummaries: {MigrationSummary}
    nextToken: string
end

local record GetSlotTypeInput
    name: string
    version: string
end

local record GetSlotTypeOutput
    name: string
    description: string
    enumerationValues: {EnumerationValue}
    lastUpdatedDate: number
    createdDate: number
    version: string
    checksum: string
    valueSelectionStrategy: string
    parentSlotTypeSignature: string
    slotTypeConfigurations: {SlotTypeConfiguration}
end

local record GetSlotTypesInput
    nextToken: string
    maxResults: number
    nameContains: string
end

local record GetSlotTypesOutput
    slotTypes: {SlotTypeMetadata}
    nextToken: string
end

local record GetSlotTypeVersionsInput
    name: string
    nextToken: string
    maxResults: number
end

local record GetSlotTypeVersionsOutput
    slotTypes: {SlotTypeMetadata}
    nextToken: string
end

local record GetUtterancesViewInput
    botName: string
    botVersions: {string}
    statusType: string
end

local record GetUtterancesViewOutput
    botName: string
    utterances: {UtteranceList}
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record PutBotInput
    name: string
    description: string
    intents: {Intent}
    enableModelImprovements: boolean
    nluIntentConfidenceThreshold: number
    clarificationPrompt: Prompt
    abortStatement: Statement
    idleSessionTTLInSeconds: number
    voiceId: string
    checksum: string
    processBehavior: string
    locale: string
    childDirected: boolean
    detectSentiment: boolean
    createVersion: boolean
    tags: {Tag}
end

local record PutBotOutput
    name: string
    description: string
    intents: {Intent}
    enableModelImprovements: boolean
    nluIntentConfidenceThreshold: number
    clarificationPrompt: Prompt
    abortStatement: Statement
    status: string
    failureReason: string
    lastUpdatedDate: number
    createdDate: number
    idleSessionTTLInSeconds: number
    voiceId: string
    checksum: string
    version: string
    locale: string
    childDirected: boolean
    createVersion: boolean
    detectSentiment: boolean
    tags: {Tag}
end

local record PutBotAliasInput
    name: string
    description: string
    botVersion: string
    botName: string
    checksum: string
    conversationLogs: ConversationLogsRequest
    tags: {Tag}
end

local record PutBotAliasOutput
    name: string
    description: string
    botVersion: string
    botName: string
    lastUpdatedDate: number
    createdDate: number
    checksum: string
    conversationLogs: ConversationLogsResponse
    tags: {Tag}
end

local record PutIntentInput
    name: string
    description: string
    slots: {Slot}
    sampleUtterances: {string}
    confirmationPrompt: Prompt
    rejectionStatement: Statement
    followUpPrompt: FollowUpPrompt
    conclusionStatement: Statement
    dialogCodeHook: CodeHook
    fulfillmentActivity: FulfillmentActivity
    parentIntentSignature: string
    checksum: string
    createVersion: boolean
    kendraConfiguration: KendraConfiguration
    inputContexts: {InputContext}
    outputContexts: {OutputContext}
end

local record PutIntentOutput
    name: string
    description: string
    slots: {Slot}
    sampleUtterances: {string}
    confirmationPrompt: Prompt
    rejectionStatement: Statement
    followUpPrompt: FollowUpPrompt
    conclusionStatement: Statement
    dialogCodeHook: CodeHook
    fulfillmentActivity: FulfillmentActivity
    parentIntentSignature: string
    lastUpdatedDate: number
    createdDate: number
    version: string
    checksum: string
    createVersion: boolean
    kendraConfiguration: KendraConfiguration
    inputContexts: {InputContext}
    outputContexts: {OutputContext}
end

local record PutSlotTypeInput
    name: string
    description: string
    enumerationValues: {EnumerationValue}
    checksum: string
    valueSelectionStrategy: string
    createVersion: boolean
    parentSlotTypeSignature: string
    slotTypeConfigurations: {SlotTypeConfiguration}
end

local record PutSlotTypeOutput
    name: string
    description: string
    enumerationValues: {EnumerationValue}
    lastUpdatedDate: number
    createdDate: number
    version: string
    checksum: string
    valueSelectionStrategy: string
    createVersion: boolean
    parentSlotTypeSignature: string
    slotTypeConfigurations: {SlotTypeConfiguration}
end

local record StartImportInput
    payload: string
    resourceType: string
    mergeStrategy: string
    tags: {Tag}
end

local record StartImportOutput
    name: string
    resourceType: string
    mergeStrategy: string
    importId: string
    importStatus: string
    tags: {Tag}
    createdDate: number
end

local record StartMigrationInput
    v1BotName: string
    v1BotVersion: string
    v2BotName: string
    v2BotRole: string
    migrationStrategy: string
end

local record StartMigrationOutput
    v1BotName: string
    v1BotVersion: string
    v1BotLocale: string
    v2BotId: string
    v2BotRole: string
    migrationId: string
    migrationStrategy: string
    migrationTimestamp: number
end

local record TagResourceInput
    resourceArn: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record ResourceInUseException
    referenceType: string
    exampleReference: ResourceReference
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record ResourceInUseException
    referenceType: string
    exampleReference: ResourceReference
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record ResourceInUseException
    referenceType: string
    exampleReference: ResourceReference
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record ResourceInUseException
    referenceType: string
    exampleReference: ResourceReference
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record ResourceInUseException
    referenceType: string
    exampleReference: ResourceReference
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record ResourceInUseException
    referenceType: string
    exampleReference: ResourceReference
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record ResourceInUseException
    referenceType: string
    exampleReference: ResourceReference
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record PreconditionFailedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record PreconditionFailedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record PreconditionFailedException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record PreconditionFailedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadRequestException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local record BadRequestException
    message: string
end

local record ConflictException
    message: string
end

local record InternalFailureException
    message: string
end

local record LimitExceededException
    retryAfterSeconds: string
    message: string
end

local record NotFoundException
    message: string
end

local type ImportStatus = "IN_PROGRESS" | "COMPLETE" | "FAILED"

local type MigrationStatus = "IN_PROGRESS" | "COMPLETED" | "FAILED"

local type SlotValueSelectionStrategy = "ORIGINAL_VALUE" | "TOP_RESOLUTION"

local type MigrationStrategy = "CREATE_NEW" | "UPDATE_EXISTING"

local type Status = "BUILDING" | "READY" | "READY_BASIC_TESTING" | "FAILED" | "NOT_BUILT"

local type ResourceType = "BOT" | "INTENT" | "SLOT_TYPE"

local type MergeStrategy = "OVERWRITE_LATEST" | "FAIL_ON_CONFLICT"

local type ChannelType = "Facebook" | "Slack" | "Twilio-Sms" | "Kik"

local type SortOrder = "ASCENDING" | "DESCENDING"

local type Locale = "de-DE" | "en-AU" | "en-GB" | "en-IN" | "en-US" | "es-419" | "es-ES" | "es-US" | "fr-FR" | "fr-CA" | "it-IT" | "ja-JP" | "ko-KR"

local type ExportStatus = "IN_PROGRESS" | "READY" | "FAILED"

local type MigrationSortAttribute = "V1_BOT_NAME" | "MIGRATION_DATE_TIME"

local type ExportType = "ALEXA_SKILLS_KIT" | "LEX"

local type ProcessBehavior = "SAVE" | "BUILD"

local type ChannelStatus = "IN_PROGRESS" | "CREATED" | "FAILED"

local type StatusType = "Detected" | "Missed"

local record M
    CreateBotVersionInput: CreateBotVersionInput
    CreateBotVersionOutput: CreateBotVersionOutput
    CreateIntentVersionInput: CreateIntentVersionInput
    CreateIntentVersionOutput: CreateIntentVersionOutput
    CreateSlotTypeVersionInput: CreateSlotTypeVersionInput
    CreateSlotTypeVersionOutput: CreateSlotTypeVersionOutput
    DeleteBotInput: DeleteBotInput
    DeleteBotOutput: DeleteBotOutput
    DeleteBotAliasInput: DeleteBotAliasInput
    DeleteBotAliasOutput: DeleteBotAliasOutput
    DeleteBotChannelAssociationInput: DeleteBotChannelAssociationInput
    DeleteBotChannelAssociationOutput: DeleteBotChannelAssociationOutput
    DeleteBotVersionInput: DeleteBotVersionInput
    DeleteBotVersionOutput: DeleteBotVersionOutput
    DeleteIntentInput: DeleteIntentInput
    DeleteIntentOutput: DeleteIntentOutput
    DeleteIntentVersionInput: DeleteIntentVersionInput
    DeleteIntentVersionOutput: DeleteIntentVersionOutput
    DeleteSlotTypeInput: DeleteSlotTypeInput
    DeleteSlotTypeOutput: DeleteSlotTypeOutput
    DeleteSlotTypeVersionInput: DeleteSlotTypeVersionInput
    DeleteSlotTypeVersionOutput: DeleteSlotTypeVersionOutput
    DeleteUtterancesInput: DeleteUtterancesInput
    DeleteUtterancesOutput: DeleteUtterancesOutput
    GetBotInput: GetBotInput
    GetBotOutput: GetBotOutput
    GetBotAliasInput: GetBotAliasInput
    GetBotAliasOutput: GetBotAliasOutput
    GetBotAliasesInput: GetBotAliasesInput
    GetBotAliasesOutput: GetBotAliasesOutput
    GetBotChannelAssociationInput: GetBotChannelAssociationInput
    GetBotChannelAssociationOutput: GetBotChannelAssociationOutput
    GetBotChannelAssociationsInput: GetBotChannelAssociationsInput
    GetBotChannelAssociationsOutput: GetBotChannelAssociationsOutput
    GetBotsInput: GetBotsInput
    GetBotsOutput: GetBotsOutput
    GetBotVersionsInput: GetBotVersionsInput
    GetBotVersionsOutput: GetBotVersionsOutput
    GetBuiltinIntentInput: GetBuiltinIntentInput
    GetBuiltinIntentOutput: GetBuiltinIntentOutput
    GetBuiltinIntentsInput: GetBuiltinIntentsInput
    GetBuiltinIntentsOutput: GetBuiltinIntentsOutput
    GetBuiltinSlotTypesInput: GetBuiltinSlotTypesInput
    GetBuiltinSlotTypesOutput: GetBuiltinSlotTypesOutput
    GetExportInput: GetExportInput
    GetExportOutput: GetExportOutput
    GetImportInput: GetImportInput
    GetImportOutput: GetImportOutput
    GetIntentInput: GetIntentInput
    GetIntentOutput: GetIntentOutput
    GetIntentsInput: GetIntentsInput
    GetIntentsOutput: GetIntentsOutput
    GetIntentVersionsInput: GetIntentVersionsInput
    GetIntentVersionsOutput: GetIntentVersionsOutput
    GetMigrationInput: GetMigrationInput
    GetMigrationOutput: GetMigrationOutput
    GetMigrationsInput: GetMigrationsInput
    GetMigrationsOutput: GetMigrationsOutput
    GetSlotTypeInput: GetSlotTypeInput
    GetSlotTypeOutput: GetSlotTypeOutput
    GetSlotTypesInput: GetSlotTypesInput
    GetSlotTypesOutput: GetSlotTypesOutput
    GetSlotTypeVersionsInput: GetSlotTypeVersionsInput
    GetSlotTypeVersionsOutput: GetSlotTypeVersionsOutput
    GetUtterancesViewInput: GetUtterancesViewInput
    GetUtterancesViewOutput: GetUtterancesViewOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutBotInput: PutBotInput
    PutBotOutput: PutBotOutput
    PutBotAliasInput: PutBotAliasInput
    PutBotAliasOutput: PutBotAliasOutput
    PutIntentInput: PutIntentInput
    PutIntentOutput: PutIntentOutput
    PutSlotTypeInput: PutSlotTypeInput
    PutSlotTypeOutput: PutSlotTypeOutput
    StartImportInput: StartImportInput
    StartImportOutput: StartImportOutput
    StartMigrationInput: StartMigrationInput
    StartMigrationOutput: StartMigrationOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
