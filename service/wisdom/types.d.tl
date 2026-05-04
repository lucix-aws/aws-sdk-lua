local record CreateAssistantInput
    clientToken: string
    name: string
    type: string
    description: string
    tags: {string : string}
    serverSideEncryptionConfiguration: ServerSideEncryptionConfiguration
end

local record CreateAssistantOutput
    assistant: AssistantData
end

local record CreateAssistantAssociationInput
    assistantId: string
    associationType: string
    association: AssistantAssociationInputData
    clientToken: string
    tags: {string : string}
end

local record CreateAssistantAssociationOutput
    assistantAssociation: AssistantAssociationData
end

local record CreateContentInput
    knowledgeBaseId: string
    name: string
    title: string
    overrideLinkOutUri: string
    metadata: {string : string}
    uploadId: string
    clientToken: string
    tags: {string : string}
end

local record CreateContentOutput
    content: ContentData
end

local record CreateKnowledgeBaseInput
    clientToken: string
    name: string
    knowledgeBaseType: string
    sourceConfiguration: SourceConfiguration
    renderingConfiguration: RenderingConfiguration
    serverSideEncryptionConfiguration: ServerSideEncryptionConfiguration
    description: string
    tags: {string : string}
end

local record CreateKnowledgeBaseOutput
    knowledgeBase: KnowledgeBaseData
end

local record CreateQuickResponseInput
    knowledgeBaseId: string
    name: string
    content: QuickResponseDataProvider
    contentType: string
    groupingConfiguration: GroupingConfiguration
    description: string
    shortcutKey: string
    isActive: boolean
    channels: {string}
    language: string
    clientToken: string
    tags: {string : string}
end

local record CreateQuickResponseOutput
    quickResponse: QuickResponseData
end

local record CreateSessionInput
    clientToken: string
    assistantId: string
    name: string
    description: string
    tags: {string : string}
end

local record CreateSessionOutput
    session: SessionData
end

local record DeleteAssistantInput
    assistantId: string
end

local record DeleteAssistantOutput
end

local record DeleteAssistantAssociationInput
    assistantAssociationId: string
    assistantId: string
end

local record DeleteAssistantAssociationOutput
end

local record DeleteContentInput
    knowledgeBaseId: string
    contentId: string
end

local record DeleteContentOutput
end

local record DeleteImportJobInput
    knowledgeBaseId: string
    importJobId: string
end

local record DeleteImportJobOutput
end

local record DeleteKnowledgeBaseInput
    knowledgeBaseId: string
end

local record DeleteKnowledgeBaseOutput
end

local record DeleteQuickResponseInput
    knowledgeBaseId: string
    quickResponseId: string
end

local record DeleteQuickResponseOutput
end

local record GetAssistantInput
    assistantId: string
end

local record GetAssistantOutput
    assistant: AssistantData
end

local record GetAssistantAssociationInput
    assistantAssociationId: string
    assistantId: string
end

local record GetAssistantAssociationOutput
    assistantAssociation: AssistantAssociationData
end

local record GetContentInput
    contentId: string
    knowledgeBaseId: string
end

local record GetContentOutput
    content: ContentData
end

local record GetContentSummaryInput
    contentId: string
    knowledgeBaseId: string
end

local record GetContentSummaryOutput
    contentSummary: ContentSummary
end

local record GetImportJobInput
    importJobId: string
    knowledgeBaseId: string
end

local record GetImportJobOutput
    importJob: ImportJobData
end

local record GetKnowledgeBaseInput
    knowledgeBaseId: string
end

local record GetKnowledgeBaseOutput
    knowledgeBase: KnowledgeBaseData
end

local record GetQuickResponseInput
    quickResponseId: string
    knowledgeBaseId: string
end

local record GetQuickResponseOutput
    quickResponse: QuickResponseData
end

local record GetRecommendationsInput
    assistantId: string
    sessionId: string
    maxResults: number
    waitTimeSeconds: number
end

local record GetRecommendationsOutput
    recommendations: {RecommendationData}
    triggers: {RecommendationTrigger}
end

local record GetSessionInput
    assistantId: string
    sessionId: string
end

local record GetSessionOutput
    session: SessionData
end

local record ListAssistantAssociationsInput
    nextToken: string
    maxResults: number
    assistantId: string
end

local record ListAssistantAssociationsOutput
    assistantAssociationSummaries: {AssistantAssociationSummary}
    nextToken: string
end

local record ListAssistantsInput
    nextToken: string
    maxResults: number
end

local record ListAssistantsOutput
    assistantSummaries: {AssistantSummary}
    nextToken: string
end

local record ListContentsInput
    nextToken: string
    maxResults: number
    knowledgeBaseId: string
end

local record ListContentsOutput
    contentSummaries: {ContentSummary}
    nextToken: string
end

local record ListImportJobsInput
    nextToken: string
    maxResults: number
    knowledgeBaseId: string
end

local record ListImportJobsOutput
    importJobSummaries: {ImportJobSummary}
    nextToken: string
end

local record ListKnowledgeBasesInput
    nextToken: string
    maxResults: number
end

local record ListKnowledgeBasesOutput
    knowledgeBaseSummaries: {KnowledgeBaseSummary}
    nextToken: string
end

local record ListQuickResponsesInput
    nextToken: string
    maxResults: number
    knowledgeBaseId: string
end

local record ListQuickResponsesOutput
    quickResponseSummaries: {QuickResponseSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record NotifyRecommendationsReceivedInput
    assistantId: string
    sessionId: string
    recommendationIds: {string}
end

local record NotifyRecommendationsReceivedOutput
    recommendationIds: {string}
    errors: {NotifyRecommendationsReceivedError}
end

local record QueryAssistantInput
    assistantId: string
    queryText: string
    nextToken: string
    maxResults: number
end

local record QueryAssistantOutput
    results: {ResultData}
    nextToken: string
end

local record RemoveKnowledgeBaseTemplateUriInput
    knowledgeBaseId: string
end

local record RemoveKnowledgeBaseTemplateUriOutput
end

local record SearchContentInput
    nextToken: string
    maxResults: number
    knowledgeBaseId: string
    searchExpression: SearchExpression
end

local record SearchContentOutput
    contentSummaries: {ContentSummary}
    nextToken: string
end

local record SearchQuickResponsesInput
    knowledgeBaseId: string
    searchExpression: QuickResponseSearchExpression
    nextToken: string
    maxResults: number
    attributes: {string : string}
end

local record SearchQuickResponsesOutput
    results: {QuickResponseSearchResultData}
    nextToken: string
end

local record SearchSessionsInput
    nextToken: string
    maxResults: number
    assistantId: string
    searchExpression: SearchExpression
end

local record SearchSessionsOutput
    sessionSummaries: {SessionSummary}
    nextToken: string
end

local record StartContentUploadInput
    knowledgeBaseId: string
    contentType: string
    presignedUrlTimeToLive: number
end

local record StartContentUploadOutput
    uploadId: string
    url: string
    urlExpiry: number
    headersToInclude: {string : string}
end

local record StartImportJobInput
    knowledgeBaseId: string
    importJobType: string
    uploadId: string
    clientToken: string
    metadata: {string : string}
    externalSourceConfiguration: ExternalSourceConfiguration
end

local record StartImportJobOutput
    importJob: ImportJobData
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateContentInput
    knowledgeBaseId: string
    contentId: string
    revisionId: string
    title: string
    overrideLinkOutUri: string
    removeOverrideLinkOutUri: boolean
    metadata: {string : string}
    uploadId: string
end

local record UpdateContentOutput
    content: ContentData
end

local record UpdateKnowledgeBaseTemplateUriInput
    knowledgeBaseId: string
    templateUri: string
end

local record UpdateKnowledgeBaseTemplateUriOutput
    knowledgeBase: KnowledgeBaseData
end

local record UpdateQuickResponseInput
    knowledgeBaseId: string
    quickResponseId: string
    name: string
    content: QuickResponseDataProvider
    contentType: string
    groupingConfiguration: GroupingConfiguration
    removeGroupingConfiguration: boolean
    description: string
    removeDescription: boolean
    shortcutKey: string
    removeShortcutKey: boolean
    isActive: boolean
    channels: {string}
    language: string
end

local record UpdateQuickResponseOutput
    quickResponse: QuickResponseData
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record RequestTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record TooManyTagsException
    message: string
    resourceName: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record AccessDeniedException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record PreconditionFailedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceName: string
end

local record ValidationException
    message: string
end

local record M
    CreateAssistantInput: CreateAssistantInput
    CreateAssistantOutput: CreateAssistantOutput
    CreateAssistantAssociationInput: CreateAssistantAssociationInput
    CreateAssistantAssociationOutput: CreateAssistantAssociationOutput
    CreateContentInput: CreateContentInput
    CreateContentOutput: CreateContentOutput
    CreateKnowledgeBaseInput: CreateKnowledgeBaseInput
    CreateKnowledgeBaseOutput: CreateKnowledgeBaseOutput
    CreateQuickResponseInput: CreateQuickResponseInput
    CreateQuickResponseOutput: CreateQuickResponseOutput
    CreateSessionInput: CreateSessionInput
    CreateSessionOutput: CreateSessionOutput
    DeleteAssistantInput: DeleteAssistantInput
    DeleteAssistantOutput: DeleteAssistantOutput
    DeleteAssistantAssociationInput: DeleteAssistantAssociationInput
    DeleteAssistantAssociationOutput: DeleteAssistantAssociationOutput
    DeleteContentInput: DeleteContentInput
    DeleteContentOutput: DeleteContentOutput
    DeleteImportJobInput: DeleteImportJobInput
    DeleteImportJobOutput: DeleteImportJobOutput
    DeleteKnowledgeBaseInput: DeleteKnowledgeBaseInput
    DeleteKnowledgeBaseOutput: DeleteKnowledgeBaseOutput
    DeleteQuickResponseInput: DeleteQuickResponseInput
    DeleteQuickResponseOutput: DeleteQuickResponseOutput
    GetAssistantInput: GetAssistantInput
    GetAssistantOutput: GetAssistantOutput
    GetAssistantAssociationInput: GetAssistantAssociationInput
    GetAssistantAssociationOutput: GetAssistantAssociationOutput
    GetContentInput: GetContentInput
    GetContentOutput: GetContentOutput
    GetContentSummaryInput: GetContentSummaryInput
    GetContentSummaryOutput: GetContentSummaryOutput
    GetImportJobInput: GetImportJobInput
    GetImportJobOutput: GetImportJobOutput
    GetKnowledgeBaseInput: GetKnowledgeBaseInput
    GetKnowledgeBaseOutput: GetKnowledgeBaseOutput
    GetQuickResponseInput: GetQuickResponseInput
    GetQuickResponseOutput: GetQuickResponseOutput
    GetRecommendationsInput: GetRecommendationsInput
    GetRecommendationsOutput: GetRecommendationsOutput
    GetSessionInput: GetSessionInput
    GetSessionOutput: GetSessionOutput
    ListAssistantAssociationsInput: ListAssistantAssociationsInput
    ListAssistantAssociationsOutput: ListAssistantAssociationsOutput
    ListAssistantsInput: ListAssistantsInput
    ListAssistantsOutput: ListAssistantsOutput
    ListContentsInput: ListContentsInput
    ListContentsOutput: ListContentsOutput
    ListImportJobsInput: ListImportJobsInput
    ListImportJobsOutput: ListImportJobsOutput
    ListKnowledgeBasesInput: ListKnowledgeBasesInput
    ListKnowledgeBasesOutput: ListKnowledgeBasesOutput
    ListQuickResponsesInput: ListQuickResponsesInput
    ListQuickResponsesOutput: ListQuickResponsesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    NotifyRecommendationsReceivedInput: NotifyRecommendationsReceivedInput
    NotifyRecommendationsReceivedOutput: NotifyRecommendationsReceivedOutput
    QueryAssistantInput: QueryAssistantInput
    QueryAssistantOutput: QueryAssistantOutput
    RemoveKnowledgeBaseTemplateUriInput: RemoveKnowledgeBaseTemplateUriInput
    RemoveKnowledgeBaseTemplateUriOutput: RemoveKnowledgeBaseTemplateUriOutput
    SearchContentInput: SearchContentInput
    SearchContentOutput: SearchContentOutput
    SearchQuickResponsesInput: SearchQuickResponsesInput
    SearchQuickResponsesOutput: SearchQuickResponsesOutput
    SearchSessionsInput: SearchSessionsInput
    SearchSessionsOutput: SearchSessionsOutput
    StartContentUploadInput: StartContentUploadInput
    StartContentUploadOutput: StartContentUploadOutput
    StartImportJobInput: StartImportJobInput
    StartImportJobOutput: StartImportJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateContentInput: UpdateContentInput
    UpdateContentOutput: UpdateContentOutput
    UpdateKnowledgeBaseTemplateUriInput: UpdateKnowledgeBaseTemplateUriInput
    UpdateKnowledgeBaseTemplateUriOutput: UpdateKnowledgeBaseTemplateUriOutput
    UpdateQuickResponseInput: UpdateQuickResponseInput
    UpdateQuickResponseOutput: UpdateQuickResponseOutput
end

return M
