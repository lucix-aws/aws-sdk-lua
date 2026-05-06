local record AssociatePermissionInput
    applicationId: string
    statementId: string
    actions: {string}
    conditions: {PermissionCondition}
    principal: string
end

local record AssociatePermissionOutput
    statement: string
end

local record BatchDeleteDocumentInput
    applicationId: string
    indexId: string
    documents: {DeleteDocument}
    dataSourceSyncId: string
end

local record BatchDeleteDocumentOutput
    failedDocuments: {FailedDocument}
end

local record BatchPutDocumentInput
    applicationId: string
    indexId: string
    documents: {Document}
    roleArn: string
    dataSourceSyncId: string
end

local record BatchPutDocumentOutput
    failedDocuments: {FailedDocument}
end

local record CancelSubscriptionInput
    applicationId: string
    subscriptionId: string
end

local record CancelSubscriptionOutput
    subscriptionArn: string
    currentSubscription: SubscriptionDetails
    nextSubscription: SubscriptionDetails
end

local record ChatInput
    applicationId: string
    userId: string
    userGroups: {string}
    conversationId: string
    parentMessageId: string
    clientToken: string
    inputStream: function(): string, string
end

local record ChatOutput
    outputStream: function(): string, string
end

local record ChatSyncInput
    applicationId: string
    userId: string
    userGroups: {string}
    userMessage: string
    attachments: {AttachmentInput}
    actionExecution: ActionExecution
    authChallengeResponse: AuthChallengeResponse
    conversationId: string
    parentMessageId: string
    attributeFilter: AttributeFilter
    chatMode: string
    chatModeConfiguration: ChatModeConfiguration
    clientToken: string
end

local record ChatSyncOutput
    conversationId: string
    systemMessage: string
    systemMessageId: string
    userMessageId: string
    actionReview: ActionReview
    authChallengeRequest: AuthChallengeRequest
    sourceAttributions: {SourceAttribution}
    failedAttachments: {AttachmentOutput}
end

local record CheckDocumentAccessInput
    applicationId: string
    indexId: string
    userId: string
    documentId: string
    dataSourceId: string
end

local record CheckDocumentAccessOutput
    userGroups: {AssociatedGroup}
    userAliases: {AssociatedUser}
    hasAccess: boolean
    documentAcl: DocumentAcl
end

local record CreateAnonymousWebExperienceUrlInput
    applicationId: string
    webExperienceId: string
    sessionDurationInMinutes: number
end

local record CreateAnonymousWebExperienceUrlOutput
    anonymousUrl: string
end

local record CreateApplicationInput
    displayName: string
    roleArn: string
    identityType: string
    iamIdentityProviderArn: string
    identityCenterInstanceArn: string
    clientIdsForOIDC: {string}
    description: string
    encryptionConfiguration: EncryptionConfiguration
    tags: {Tag}
    clientToken: string
    attachmentsConfiguration: AttachmentsConfiguration
    qAppsConfiguration: QAppsConfiguration
    personalizationConfiguration: PersonalizationConfiguration
    quickSightConfiguration: QuickSightConfiguration
end

local record CreateApplicationOutput
    applicationId: string
    applicationArn: string
end

local record CreateChatResponseConfigurationInput
    applicationId: string
    displayName: string
    clientToken: string
    responseConfigurations: {string : ResponseConfiguration}
    tags: {Tag}
end

local record CreateChatResponseConfigurationOutput
    chatResponseConfigurationId: string
    chatResponseConfigurationArn: string
end

local record CreateDataAccessorInput
    applicationId: string
    principal: string
    actionConfigurations: {ActionConfiguration}
    clientToken: string
    displayName: string
    authenticationDetail: DataAccessorAuthenticationDetail
    tags: {Tag}
end

local record CreateDataAccessorOutput
    dataAccessorId: string
    idcApplicationArn: string
    dataAccessorArn: string
end

local record CreateDataSourceInput
    applicationId: string
    indexId: string
    displayName: string
    configuration: any
    vpcConfiguration: DataSourceVpcConfiguration
    description: string
    tags: {Tag}
    syncSchedule: string
    roleArn: string
    clientToken: string
    documentEnrichmentConfiguration: DocumentEnrichmentConfiguration
    mediaExtractionConfiguration: MediaExtractionConfiguration
end

local record CreateDataSourceOutput
    dataSourceId: string
    dataSourceArn: string
end

local record CreateIndexInput
    applicationId: string
    displayName: string
    description: string
    type: string
    tags: {Tag}
    capacityConfiguration: IndexCapacityConfiguration
    clientToken: string
end

local record CreateIndexOutput
    indexId: string
    indexArn: string
end

local record CreatePluginInput
    applicationId: string
    displayName: string
    type: string
    authConfiguration: PluginAuthConfiguration
    serverUrl: string
    customPluginConfiguration: CustomPluginConfiguration
    tags: {Tag}
    clientToken: string
end

local record CreatePluginOutput
    pluginId: string
    pluginArn: string
    buildStatus: string
end

local record CreateRetrieverInput
    applicationId: string
    type: string
    displayName: string
    configuration: RetrieverConfiguration
    roleArn: string
    clientToken: string
    tags: {Tag}
end

local record CreateRetrieverOutput
    retrieverId: string
    retrieverArn: string
end

local record CreateSubscriptionInput
    applicationId: string
    principal: SubscriptionPrincipal
    type: string
    clientToken: string
end

local record CreateSubscriptionOutput
    subscriptionId: string
    subscriptionArn: string
    currentSubscription: SubscriptionDetails
    nextSubscription: SubscriptionDetails
end

local record CreateUserInput
    applicationId: string
    userId: string
    userAliases: {UserAlias}
    clientToken: string
end

local record CreateUserOutput
end

local record CreateWebExperienceInput
    applicationId: string
    title: string
    subtitle: string
    welcomeMessage: string
    samplePromptsControlMode: string
    origins: {string}
    roleArn: string
    tags: {Tag}
    clientToken: string
    identityProviderConfiguration: IdentityProviderConfiguration
    browserExtensionConfiguration: BrowserExtensionConfiguration
    customizationConfiguration: CustomizationConfiguration
end

local record CreateWebExperienceOutput
    webExperienceId: string
    webExperienceArn: string
end

local record DeleteApplicationInput
    applicationId: string
end

local record DeleteApplicationOutput
end

local record DeleteAttachmentInput
    applicationId: string
    conversationId: string
    attachmentId: string
    userId: string
end

local record DeleteAttachmentOutput
end

local record DeleteChatControlsConfigurationInput
    applicationId: string
end

local record DeleteChatControlsConfigurationOutput
end

local record DeleteChatResponseConfigurationInput
    applicationId: string
    chatResponseConfigurationId: string
end

local record DeleteChatResponseConfigurationOutput
end

local record DeleteConversationInput
    conversationId: string
    applicationId: string
    userId: string
end

local record DeleteConversationOutput
end

local record DeleteDataAccessorInput
    applicationId: string
    dataAccessorId: string
end

local record DeleteDataAccessorOutput
end

local record DeleteDataSourceInput
    applicationId: string
    indexId: string
    dataSourceId: string
end

local record DeleteDataSourceOutput
end

local record DeleteGroupInput
    applicationId: string
    indexId: string
    groupName: string
    dataSourceId: string
end

local record DeleteGroupOutput
end

local record DeleteIndexInput
    applicationId: string
    indexId: string
end

local record DeleteIndexOutput
end

local record DeletePluginInput
    applicationId: string
    pluginId: string
end

local record DeletePluginOutput
end

local record DeleteRetrieverInput
    applicationId: string
    retrieverId: string
end

local record DeleteRetrieverOutput
end

local record DeleteUserInput
    applicationId: string
    userId: string
end

local record DeleteUserOutput
end

local record DeleteWebExperienceInput
    applicationId: string
    webExperienceId: string
end

local record DeleteWebExperienceOutput
end

local record DisassociatePermissionInput
    applicationId: string
    statementId: string
end

local record DisassociatePermissionOutput
end

local record GetApplicationInput
    applicationId: string
end

local record GetApplicationOutput
    displayName: string
    applicationId: string
    applicationArn: string
    identityType: string
    iamIdentityProviderArn: string
    identityCenterApplicationArn: string
    roleArn: string
    status: string
    description: string
    encryptionConfiguration: EncryptionConfiguration
    createdAt: number
    updatedAt: number
    error: ErrorDetail
    attachmentsConfiguration: AppliedAttachmentsConfiguration
    qAppsConfiguration: QAppsConfiguration
    personalizationConfiguration: PersonalizationConfiguration
    autoSubscriptionConfiguration: AutoSubscriptionConfiguration
    clientIdsForOIDC: {string}
    quickSightConfiguration: QuickSightConfiguration
end

local record GetChatControlsConfigurationInput
    applicationId: string
    maxResults: number
    nextToken: string
end

local record GetChatControlsConfigurationOutput
    responseScope: string
    orchestrationConfiguration: AppliedOrchestrationConfiguration
    blockedPhrases: BlockedPhrasesConfiguration
    topicConfigurations: {TopicConfiguration}
    creatorModeConfiguration: AppliedCreatorModeConfiguration
    nextToken: string
    hallucinationReductionConfiguration: HallucinationReductionConfiguration
end

local record GetChatResponseConfigurationInput
    applicationId: string
    chatResponseConfigurationId: string
end

local record GetChatResponseConfigurationOutput
    chatResponseConfigurationId: string
    chatResponseConfigurationArn: string
    displayName: string
    createdAt: number
    inUseConfiguration: ChatResponseConfigurationDetail
    lastUpdateConfiguration: ChatResponseConfigurationDetail
end

local record GetDataAccessorInput
    applicationId: string
    dataAccessorId: string
end

local record GetDataAccessorOutput
    displayName: string
    dataAccessorId: string
    dataAccessorArn: string
    applicationId: string
    idcApplicationArn: string
    principal: string
    actionConfigurations: {ActionConfiguration}
    authenticationDetail: DataAccessorAuthenticationDetail
    createdAt: number
    updatedAt: number
end

local record GetDataSourceInput
    applicationId: string
    indexId: string
    dataSourceId: string
end

local record GetDataSourceOutput
    applicationId: string
    indexId: string
    dataSourceId: string
    dataSourceArn: string
    displayName: string
    type: string
    configuration: any
    vpcConfiguration: DataSourceVpcConfiguration
    createdAt: number
    updatedAt: number
    description: string
    status: string
    syncSchedule: string
    roleArn: string
    error: ErrorDetail
    documentEnrichmentConfiguration: DocumentEnrichmentConfiguration
    mediaExtractionConfiguration: MediaExtractionConfiguration
end

local record GetDocumentContentInput
    applicationId: string
    indexId: string
    dataSourceId: string
    documentId: string
    outputFormat: string
end

local record GetDocumentContentOutput
    presignedUrl: string
    mimeType: string
end

local record GetGroupInput
    applicationId: string
    indexId: string
    groupName: string
    dataSourceId: string
end

local record GetGroupOutput
    status: GroupStatusDetail
    statusHistory: {GroupStatusDetail}
end

local record GetIndexInput
    applicationId: string
    indexId: string
end

local record GetIndexOutput
    applicationId: string
    indexId: string
    displayName: string
    indexArn: string
    status: string
    type: string
    description: string
    createdAt: number
    updatedAt: number
    capacityConfiguration: IndexCapacityConfiguration
    documentAttributeConfigurations: {DocumentAttributeConfiguration}
    error: ErrorDetail
    indexStatistics: IndexStatistics
end

local record GetMediaInput
    applicationId: string
    conversationId: string
    messageId: string
    mediaId: string
end

local record GetMediaOutput
    mediaBytes: string
    mediaMimeType: string
end

local record GetPluginInput
    applicationId: string
    pluginId: string
end

local record GetPluginOutput
    applicationId: string
    pluginId: string
    displayName: string
    type: string
    serverUrl: string
    authConfiguration: PluginAuthConfiguration
    customPluginConfiguration: CustomPluginConfiguration
    buildStatus: string
    pluginArn: string
    state: string
    createdAt: number
    updatedAt: number
end

local record GetPolicyInput
    applicationId: string
end

local record GetPolicyOutput
    policy: string
end

local record GetRetrieverInput
    applicationId: string
    retrieverId: string
end

local record GetRetrieverOutput
    applicationId: string
    retrieverId: string
    retrieverArn: string
    type: string
    status: string
    displayName: string
    configuration: RetrieverConfiguration
    roleArn: string
    createdAt: number
    updatedAt: number
end

local record GetUserInput
    applicationId: string
    userId: string
end

local record GetUserOutput
    userAliases: {UserAlias}
end

local record GetWebExperienceInput
    applicationId: string
    webExperienceId: string
end

local record GetWebExperienceOutput
    applicationId: string
    webExperienceId: string
    webExperienceArn: string
    defaultEndpoint: string
    status: string
    createdAt: number
    updatedAt: number
    title: string
    subtitle: string
    welcomeMessage: string
    samplePromptsControlMode: string
    origins: {string}
    roleArn: string
    identityProviderConfiguration: IdentityProviderConfiguration
    authenticationConfiguration: WebExperienceAuthConfiguration
    error: ErrorDetail
    browserExtensionConfiguration: BrowserExtensionConfiguration
    customizationConfiguration: CustomizationConfiguration
end

local record ListApplicationsInput
    nextToken: string
    maxResults: number
end

local record ListApplicationsOutput
    nextToken: string
    applications: {Application}
end

local record ListAttachmentsInput
    applicationId: string
    conversationId: string
    userId: string
    nextToken: string
    maxResults: number
end

local record ListAttachmentsOutput
    attachments: {Attachment}
    nextToken: string
end

local record ListChatResponseConfigurationsInput
    applicationId: string
    maxResults: number
    nextToken: string
end

local record ListChatResponseConfigurationsOutput
    chatResponseConfigurations: {ChatResponseConfiguration}
    nextToken: string
end

local record ListConversationsInput
    applicationId: string
    userId: string
    nextToken: string
    maxResults: number
end

local record ListConversationsOutput
    nextToken: string
    conversations: {Conversation}
end

local record ListDataAccessorsInput
    applicationId: string
    nextToken: string
    maxResults: number
end

local record ListDataAccessorsOutput
    dataAccessors: {DataAccessor}
    nextToken: string
end

local record ListDataSourcesInput
    applicationId: string
    indexId: string
    nextToken: string
    maxResults: number
end

local record ListDataSourcesOutput
    dataSources: {DataSource}
    nextToken: string
end

local record ListDataSourceSyncJobsInput
    dataSourceId: string
    applicationId: string
    indexId: string
    nextToken: string
    maxResults: number
    startTime: number
    endTime: number
    statusFilter: string
end

local record ListDataSourceSyncJobsOutput
    history: {DataSourceSyncJob}
    nextToken: string
end

local record ListDocumentsInput
    applicationId: string
    indexId: string
    dataSourceIds: {string}
    nextToken: string
    maxResults: number
end

local record ListDocumentsOutput
    documentDetailList: {DocumentDetails}
    nextToken: string
end

local record ListGroupsInput
    applicationId: string
    indexId: string
    updatedEarlierThan: number
    dataSourceId: string
    nextToken: string
    maxResults: number
end

local record ListGroupsOutput
    nextToken: string
    items: {GroupSummary}
end

local record ListIndicesInput
    applicationId: string
    nextToken: string
    maxResults: number
end

local record ListIndicesOutput
    nextToken: string
    indices: {Index}
end

local record ListMessagesInput
    conversationId: string
    applicationId: string
    userId: string
    nextToken: string
    maxResults: number
end

local record ListMessagesOutput
    messages: {Message}
    nextToken: string
end

local record ListPluginActionsInput
    applicationId: string
    pluginId: string
    nextToken: string
    maxResults: number
end

local record ListPluginActionsOutput
    nextToken: string
    items: {ActionSummary}
end

local record ListPluginsInput
    applicationId: string
    nextToken: string
    maxResults: number
end

local record ListPluginsOutput
    nextToken: string
    plugins: {Plugin}
end

local record ListPluginTypeActionsInput
    pluginType: string
    nextToken: string
    maxResults: number
end

local record ListPluginTypeActionsOutput
    nextToken: string
    items: {ActionSummary}
end

local record ListPluginTypeMetadataInput
    nextToken: string
    maxResults: number
end

local record ListPluginTypeMetadataOutput
    nextToken: string
    items: {PluginTypeMetadataSummary}
end

local record ListRetrieversInput
    applicationId: string
    nextToken: string
    maxResults: number
end

local record ListRetrieversOutput
    retrievers: {Retriever}
    nextToken: string
end

local record ListSubscriptionsInput
    applicationId: string
    nextToken: string
    maxResults: number
end

local record ListSubscriptionsOutput
    nextToken: string
    subscriptions: {Subscription}
end

local record ListTagsForResourceInput
    resourceARN: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record ListWebExperiencesInput
    applicationId: string
    nextToken: string
    maxResults: number
end

local record ListWebExperiencesOutput
    webExperiences: {WebExperience}
    nextToken: string
end

local record PutFeedbackInput
    applicationId: string
    userId: string
    conversationId: string
    messageId: string
    messageCopiedAt: number
    messageUsefulness: MessageUsefulnessFeedback
end

local record PutFeedbackOutput
end

local record PutGroupInput
    applicationId: string
    indexId: string
    groupName: string
    dataSourceId: string
    type: string
    groupMembers: GroupMembers
    roleArn: string
end

local record PutGroupOutput
end

local record SearchRelevantContentInput
    applicationId: string
    queryText: string
    contentSource: ContentSource
    attributeFilter: AttributeFilter
    maxResults: number
    nextToken: string
end

local record SearchRelevantContentOutput
    relevantContent: {RelevantContent}
    nextToken: string
end

local record StartDataSourceSyncJobInput
    dataSourceId: string
    applicationId: string
    indexId: string
end

local record StartDataSourceSyncJobOutput
    executionId: string
end

local record StopDataSourceSyncJobInput
    dataSourceId: string
    applicationId: string
    indexId: string
end

local record StopDataSourceSyncJobOutput
end

local record TagResourceInput
    resourceARN: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceARN: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateApplicationInput
    applicationId: string
    identityCenterInstanceArn: string
    displayName: string
    description: string
    roleArn: string
    attachmentsConfiguration: AttachmentsConfiguration
    qAppsConfiguration: QAppsConfiguration
    personalizationConfiguration: PersonalizationConfiguration
    autoSubscriptionConfiguration: AutoSubscriptionConfiguration
end

local record UpdateApplicationOutput
end

local record UpdateChatControlsConfigurationInput
    applicationId: string
    clientToken: string
    responseScope: string
    orchestrationConfiguration: OrchestrationConfiguration
    blockedPhrasesConfigurationUpdate: BlockedPhrasesConfigurationUpdate
    topicConfigurationsToCreateOrUpdate: {TopicConfiguration}
    topicConfigurationsToDelete: {TopicConfiguration}
    creatorModeConfiguration: CreatorModeConfiguration
    hallucinationReductionConfiguration: HallucinationReductionConfiguration
end

local record UpdateChatControlsConfigurationOutput
end

local record UpdateChatResponseConfigurationInput
    applicationId: string
    chatResponseConfigurationId: string
    displayName: string
    responseConfigurations: {string : ResponseConfiguration}
    clientToken: string
end

local record UpdateChatResponseConfigurationOutput
end

local record UpdateDataAccessorInput
    applicationId: string
    dataAccessorId: string
    actionConfigurations: {ActionConfiguration}
    authenticationDetail: DataAccessorAuthenticationDetail
    displayName: string
end

local record UpdateDataAccessorOutput
end

local record UpdateDataSourceInput
    applicationId: string
    indexId: string
    dataSourceId: string
    displayName: string
    configuration: any
    vpcConfiguration: DataSourceVpcConfiguration
    description: string
    syncSchedule: string
    roleArn: string
    documentEnrichmentConfiguration: DocumentEnrichmentConfiguration
    mediaExtractionConfiguration: MediaExtractionConfiguration
end

local record UpdateDataSourceOutput
end

local record UpdateIndexInput
    applicationId: string
    indexId: string
    displayName: string
    description: string
    capacityConfiguration: IndexCapacityConfiguration
    documentAttributeConfigurations: {DocumentAttributeConfiguration}
end

local record UpdateIndexOutput
end

local record UpdatePluginInput
    applicationId: string
    pluginId: string
    displayName: string
    state: string
    serverUrl: string
    customPluginConfiguration: CustomPluginConfiguration
    authConfiguration: PluginAuthConfiguration
end

local record UpdatePluginOutput
end

local record UpdateRetrieverInput
    applicationId: string
    retrieverId: string
    configuration: RetrieverConfiguration
    displayName: string
    roleArn: string
end

local record UpdateRetrieverOutput
end

local record UpdateSubscriptionInput
    applicationId: string
    subscriptionId: string
    type: string
end

local record UpdateSubscriptionOutput
    subscriptionArn: string
    currentSubscription: SubscriptionDetails
    nextSubscription: SubscriptionDetails
end

local record UpdateUserInput
    applicationId: string
    userId: string
    userAliasesToUpdate: {UserAlias}
    userAliasesToDelete: {UserAlias}
end

local record UpdateUserOutput
    userAliasesAdded: {UserAlias}
    userAliasesUpdated: {UserAlias}
    userAliasesDeleted: {UserAlias}
end

local record UpdateWebExperienceInput
    applicationId: string
    webExperienceId: string
    roleArn: string
    authenticationConfiguration: WebExperienceAuthConfiguration
    title: string
    subtitle: string
    welcomeMessage: string
    samplePromptsControlMode: string
    identityProviderConfiguration: IdentityProviderConfiguration
    origins: {string}
    browserExtensionConfiguration: BrowserExtensionConfiguration
    customizationConfiguration: CustomizationConfiguration
end

local record UpdateWebExperienceOutput
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record ExternalResourceException
    message: string
end

local record InternalServerException
    message: string
end

local record LicenseNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record ExternalResourceException
    message: string
end

local record InternalServerException
    message: string
end

local record LicenseNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record LicenseNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record LicenseNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record LicenseNotFoundException
    message: string
end

local record MediaTooLargeException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record LicenseNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record LicenseNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record LicenseNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record LicenseNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fields: {ValidationExceptionField}
end

local type IndexType = "ENTERPRISE" | "STARTER"

local type OutputFormat = "RAW" | "EXTRACTED"

local type RetrieverType = "NATIVE_INDEX" | "KENDRA_INDEX"

local type IdentityType = "AWS_IAM_IDP_SAML" | "AWS_IAM_IDP_OIDC" | "AWS_IAM_IDC" | "AWS_QUICKSIGHT_IDP" | "ANONYMOUS"

local type WebExperienceSamplePromptsControlMode = "ENABLED" | "DISABLED"

local type ResponseScope = "ENTERPRISE_CONTENT_ONLY" | "EXTENDED_KNOWLEDGE_ENABLED"

local type SubscriptionType = "Q_LITE" | "Q_BUSINESS"

local type DataSourceSyncJobStatus = "FAILED" | "SUCCEEDED" | "SYNCING" | "INCOMPLETE" | "STOPPING" | "ABORTED" | "SYNCING_INDEXING"

local type ApplicationStatus = "CREATING" | "ACTIVE" | "DELETING" | "FAILED" | "UPDATING"

local type IndexStatus = "CREATING" | "ACTIVE" | "DELETING" | "FAILED" | "UPDATING"

local type RetrieverStatus = "CREATING" | "ACTIVE" | "FAILED"

local type PluginState = "ENABLED" | "DISABLED"

local type PluginType = "SERVICE_NOW" | "SALESFORCE" | "JIRA" | "ZENDESK" | "CUSTOM" | "QUICKSIGHT" | "SERVICENOW_NOW_PLATFORM" | "JIRA_CLOUD" | "SALESFORCE_CRM" | "ZENDESK_SUITE" | "ATLASSIAN_CONFLUENCE" | "GOOGLE_CALENDAR" | "MICROSOFT_TEAMS" | "MICROSOFT_EXCHANGE" | "PAGERDUTY_ADVANCE" | "SMARTSHEET" | "ASANA"

local type MembershipType = "INDEX" | "DATASOURCE"

local type PluginBuildStatus = "READY" | "CREATE_IN_PROGRESS" | "CREATE_FAILED" | "UPDATE_IN_PROGRESS" | "UPDATE_FAILED" | "DELETE_IN_PROGRESS" | "DELETE_FAILED"

local type WebExperienceStatus = "CREATING" | "ACTIVE" | "DELETING" | "FAILED" | "PENDING_AUTH_CONFIG"

local type DataSourceStatus = "PENDING_CREATION" | "CREATING" | "ACTIVE" | "DELETING" | "FAILED" | "UPDATING"

local type ChatMode = "RETRIEVAL_MODE" | "CREATOR_MODE" | "PLUGIN_MODE"

local record M
    AssociatePermissionInput: AssociatePermissionInput
    AssociatePermissionOutput: AssociatePermissionOutput
    BatchDeleteDocumentInput: BatchDeleteDocumentInput
    BatchDeleteDocumentOutput: BatchDeleteDocumentOutput
    BatchPutDocumentInput: BatchPutDocumentInput
    BatchPutDocumentOutput: BatchPutDocumentOutput
    CancelSubscriptionInput: CancelSubscriptionInput
    CancelSubscriptionOutput: CancelSubscriptionOutput
    ChatInput: ChatInput
    ChatOutput: ChatOutput
    ChatSyncInput: ChatSyncInput
    ChatSyncOutput: ChatSyncOutput
    CheckDocumentAccessInput: CheckDocumentAccessInput
    CheckDocumentAccessOutput: CheckDocumentAccessOutput
    CreateAnonymousWebExperienceUrlInput: CreateAnonymousWebExperienceUrlInput
    CreateAnonymousWebExperienceUrlOutput: CreateAnonymousWebExperienceUrlOutput
    CreateApplicationInput: CreateApplicationInput
    CreateApplicationOutput: CreateApplicationOutput
    CreateChatResponseConfigurationInput: CreateChatResponseConfigurationInput
    CreateChatResponseConfigurationOutput: CreateChatResponseConfigurationOutput
    CreateDataAccessorInput: CreateDataAccessorInput
    CreateDataAccessorOutput: CreateDataAccessorOutput
    CreateDataSourceInput: CreateDataSourceInput
    CreateDataSourceOutput: CreateDataSourceOutput
    CreateIndexInput: CreateIndexInput
    CreateIndexOutput: CreateIndexOutput
    CreatePluginInput: CreatePluginInput
    CreatePluginOutput: CreatePluginOutput
    CreateRetrieverInput: CreateRetrieverInput
    CreateRetrieverOutput: CreateRetrieverOutput
    CreateSubscriptionInput: CreateSubscriptionInput
    CreateSubscriptionOutput: CreateSubscriptionOutput
    CreateUserInput: CreateUserInput
    CreateUserOutput: CreateUserOutput
    CreateWebExperienceInput: CreateWebExperienceInput
    CreateWebExperienceOutput: CreateWebExperienceOutput
    DeleteApplicationInput: DeleteApplicationInput
    DeleteApplicationOutput: DeleteApplicationOutput
    DeleteAttachmentInput: DeleteAttachmentInput
    DeleteAttachmentOutput: DeleteAttachmentOutput
    DeleteChatControlsConfigurationInput: DeleteChatControlsConfigurationInput
    DeleteChatControlsConfigurationOutput: DeleteChatControlsConfigurationOutput
    DeleteChatResponseConfigurationInput: DeleteChatResponseConfigurationInput
    DeleteChatResponseConfigurationOutput: DeleteChatResponseConfigurationOutput
    DeleteConversationInput: DeleteConversationInput
    DeleteConversationOutput: DeleteConversationOutput
    DeleteDataAccessorInput: DeleteDataAccessorInput
    DeleteDataAccessorOutput: DeleteDataAccessorOutput
    DeleteDataSourceInput: DeleteDataSourceInput
    DeleteDataSourceOutput: DeleteDataSourceOutput
    DeleteGroupInput: DeleteGroupInput
    DeleteGroupOutput: DeleteGroupOutput
    DeleteIndexInput: DeleteIndexInput
    DeleteIndexOutput: DeleteIndexOutput
    DeletePluginInput: DeletePluginInput
    DeletePluginOutput: DeletePluginOutput
    DeleteRetrieverInput: DeleteRetrieverInput
    DeleteRetrieverOutput: DeleteRetrieverOutput
    DeleteUserInput: DeleteUserInput
    DeleteUserOutput: DeleteUserOutput
    DeleteWebExperienceInput: DeleteWebExperienceInput
    DeleteWebExperienceOutput: DeleteWebExperienceOutput
    DisassociatePermissionInput: DisassociatePermissionInput
    DisassociatePermissionOutput: DisassociatePermissionOutput
    GetApplicationInput: GetApplicationInput
    GetApplicationOutput: GetApplicationOutput
    GetChatControlsConfigurationInput: GetChatControlsConfigurationInput
    GetChatControlsConfigurationOutput: GetChatControlsConfigurationOutput
    GetChatResponseConfigurationInput: GetChatResponseConfigurationInput
    GetChatResponseConfigurationOutput: GetChatResponseConfigurationOutput
    GetDataAccessorInput: GetDataAccessorInput
    GetDataAccessorOutput: GetDataAccessorOutput
    GetDataSourceInput: GetDataSourceInput
    GetDataSourceOutput: GetDataSourceOutput
    GetDocumentContentInput: GetDocumentContentInput
    GetDocumentContentOutput: GetDocumentContentOutput
    GetGroupInput: GetGroupInput
    GetGroupOutput: GetGroupOutput
    GetIndexInput: GetIndexInput
    GetIndexOutput: GetIndexOutput
    GetMediaInput: GetMediaInput
    GetMediaOutput: GetMediaOutput
    GetPluginInput: GetPluginInput
    GetPluginOutput: GetPluginOutput
    GetPolicyInput: GetPolicyInput
    GetPolicyOutput: GetPolicyOutput
    GetRetrieverInput: GetRetrieverInput
    GetRetrieverOutput: GetRetrieverOutput
    GetUserInput: GetUserInput
    GetUserOutput: GetUserOutput
    GetWebExperienceInput: GetWebExperienceInput
    GetWebExperienceOutput: GetWebExperienceOutput
    ListApplicationsInput: ListApplicationsInput
    ListApplicationsOutput: ListApplicationsOutput
    ListAttachmentsInput: ListAttachmentsInput
    ListAttachmentsOutput: ListAttachmentsOutput
    ListChatResponseConfigurationsInput: ListChatResponseConfigurationsInput
    ListChatResponseConfigurationsOutput: ListChatResponseConfigurationsOutput
    ListConversationsInput: ListConversationsInput
    ListConversationsOutput: ListConversationsOutput
    ListDataAccessorsInput: ListDataAccessorsInput
    ListDataAccessorsOutput: ListDataAccessorsOutput
    ListDataSourcesInput: ListDataSourcesInput
    ListDataSourcesOutput: ListDataSourcesOutput
    ListDataSourceSyncJobsInput: ListDataSourceSyncJobsInput
    ListDataSourceSyncJobsOutput: ListDataSourceSyncJobsOutput
    ListDocumentsInput: ListDocumentsInput
    ListDocumentsOutput: ListDocumentsOutput
    ListGroupsInput: ListGroupsInput
    ListGroupsOutput: ListGroupsOutput
    ListIndicesInput: ListIndicesInput
    ListIndicesOutput: ListIndicesOutput
    ListMessagesInput: ListMessagesInput
    ListMessagesOutput: ListMessagesOutput
    ListPluginActionsInput: ListPluginActionsInput
    ListPluginActionsOutput: ListPluginActionsOutput
    ListPluginsInput: ListPluginsInput
    ListPluginsOutput: ListPluginsOutput
    ListPluginTypeActionsInput: ListPluginTypeActionsInput
    ListPluginTypeActionsOutput: ListPluginTypeActionsOutput
    ListPluginTypeMetadataInput: ListPluginTypeMetadataInput
    ListPluginTypeMetadataOutput: ListPluginTypeMetadataOutput
    ListRetrieversInput: ListRetrieversInput
    ListRetrieversOutput: ListRetrieversOutput
    ListSubscriptionsInput: ListSubscriptionsInput
    ListSubscriptionsOutput: ListSubscriptionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListWebExperiencesInput: ListWebExperiencesInput
    ListWebExperiencesOutput: ListWebExperiencesOutput
    PutFeedbackInput: PutFeedbackInput
    PutFeedbackOutput: PutFeedbackOutput
    PutGroupInput: PutGroupInput
    PutGroupOutput: PutGroupOutput
    SearchRelevantContentInput: SearchRelevantContentInput
    SearchRelevantContentOutput: SearchRelevantContentOutput
    StartDataSourceSyncJobInput: StartDataSourceSyncJobInput
    StartDataSourceSyncJobOutput: StartDataSourceSyncJobOutput
    StopDataSourceSyncJobInput: StopDataSourceSyncJobInput
    StopDataSourceSyncJobOutput: StopDataSourceSyncJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateApplicationInput: UpdateApplicationInput
    UpdateApplicationOutput: UpdateApplicationOutput
    UpdateChatControlsConfigurationInput: UpdateChatControlsConfigurationInput
    UpdateChatControlsConfigurationOutput: UpdateChatControlsConfigurationOutput
    UpdateChatResponseConfigurationInput: UpdateChatResponseConfigurationInput
    UpdateChatResponseConfigurationOutput: UpdateChatResponseConfigurationOutput
    UpdateDataAccessorInput: UpdateDataAccessorInput
    UpdateDataAccessorOutput: UpdateDataAccessorOutput
    UpdateDataSourceInput: UpdateDataSourceInput
    UpdateDataSourceOutput: UpdateDataSourceOutput
    UpdateIndexInput: UpdateIndexInput
    UpdateIndexOutput: UpdateIndexOutput
    UpdatePluginInput: UpdatePluginInput
    UpdatePluginOutput: UpdatePluginOutput
    UpdateRetrieverInput: UpdateRetrieverInput
    UpdateRetrieverOutput: UpdateRetrieverOutput
    UpdateSubscriptionInput: UpdateSubscriptionInput
    UpdateSubscriptionOutput: UpdateSubscriptionOutput
    UpdateUserInput: UpdateUserInput
    UpdateUserOutput: UpdateUserOutput
    UpdateWebExperienceInput: UpdateWebExperienceInput
    UpdateWebExperienceOutput: UpdateWebExperienceOutput
end

return M
