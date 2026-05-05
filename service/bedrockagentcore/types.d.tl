local record BatchCreateMemoryRecordsInput
    memoryId: string
    records: {MemoryRecordCreateInput}
    clientToken: string
end

local record BatchCreateMemoryRecordsOutput
    successfulRecords: {MemoryRecordOutput}
    failedRecords: {MemoryRecordOutput}
end

local record BatchDeleteMemoryRecordsInput
    memoryId: string
    records: {MemoryRecordDeleteInput}
end

local record BatchDeleteMemoryRecordsOutput
    successfulRecords: {MemoryRecordOutput}
    failedRecords: {MemoryRecordOutput}
end

local record BatchUpdateMemoryRecordsInput
    memoryId: string
    records: {MemoryRecordUpdateInput}
end

local record BatchUpdateMemoryRecordsOutput
    successfulRecords: {MemoryRecordOutput}
    failedRecords: {MemoryRecordOutput}
end

local record CompleteResourceTokenAuthInput
    userIdentifier: UserIdentifier
    sessionUri: string
end

local record CompleteResourceTokenAuthOutput
end

local record CreateABTestInput
    name: string
    description: string
    gatewayArn: string
    variants: {Variant}
    gatewayFilter: GatewayFilter
    evaluationConfig: ABTestEvaluationConfig
    roleArn: string
    enableOnCreate: boolean
    clientToken: string
end

local record CreateABTestOutput
    abTestId: string
    abTestArn: string
    name: string
    status: string
    executionStatus: string
    createdAt: number
end

local record CreateEventInput
    memoryId: string
    actorId: string
    sessionId: string
    eventTimestamp: number
    payload: {PayloadType}
    branch: Branch
    clientToken: string
    metadata: {string : MetadataValue}
end

local record CreateEventOutput
    event: Event
end

local record DeleteABTestInput
    abTestId: string
end

local record DeleteABTestOutput
    abTestId: string
    abTestArn: string
    status: string
end

local record DeleteBatchEvaluationInput
    batchEvaluationId: string
end

local record DeleteBatchEvaluationOutput
    batchEvaluationId: string
    batchEvaluationArn: string
    status: string
end

local record DeleteEventInput
    memoryId: string
    sessionId: string
    eventId: string
    actorId: string
end

local record DeleteEventOutput
    eventId: string
end

local record DeleteMemoryRecordInput
    memoryId: string
    memoryRecordId: string
end

local record DeleteMemoryRecordOutput
    memoryRecordId: string
end

local record DeleteRecommendationInput
    recommendationId: string
end

local record DeleteRecommendationOutput
    recommendationId: string
    status: string
end

local record EvaluateInput
    evaluatorId: string
    evaluationInput: EvaluationInput
    evaluationTarget: EvaluationTarget
    evaluationReferenceInputs: {EvaluationReferenceInput}
end

local record EvaluateOutput
    evaluationResults: {EvaluationResultContent}
end

local record GetABTestInput
    abTestId: string
end

local record GetABTestOutput
    abTestId: string
    abTestArn: string
    name: string
    description: string
    status: string
    executionStatus: string
    gatewayArn: string
    variants: {Variant}
    gatewayFilter: GatewayFilter
    evaluationConfig: ABTestEvaluationConfig
    roleArn: string
    currentRunId: string
    errorDetails: {string}
    startedAt: number
    stoppedAt: number
    maxDurationExpiresAt: number
    createdAt: number
    updatedAt: number
    results: ABTestResults
end

local record GetAgentCardInput
    runtimeSessionId: string
    agentRuntimeArn: string
    qualifier: string
end

local record GetAgentCardOutput
    runtimeSessionId: string
    agentCard: any
    statusCode: number
end

local record GetBatchEvaluationInput
    batchEvaluationId: string
end

local record GetBatchEvaluationOutput
    batchEvaluationId: string
    batchEvaluationArn: string
    batchEvaluationName: string
    status: string
    createdAt: number
    evaluators: {Evaluator}
    dataSourceConfig: DataSourceConfig
    outputConfig: OutputConfig
    evaluationResults: EvaluationJobResults
    errorDetails: {string}
    description: string
    updatedAt: number
end

local record GetBrowserSessionInput
    browserIdentifier: string
    sessionId: string
end

local record GetBrowserSessionOutput
    browserIdentifier: string
    sessionId: string
    name: string
    createdAt: number
    viewPort: ViewPort
    extensions: {BrowserExtension}
    enterprisePolicies: {BrowserEnterprisePolicy}
    profileConfiguration: BrowserProfileConfiguration
    sessionTimeoutSeconds: number
    status: string
    streams: BrowserSessionStream
    proxyConfiguration: ProxyConfiguration
    certificates: {Certificate}
    sessionReplayArtifact: string
    lastUpdatedAt: number
end

local record GetCodeInterpreterSessionInput
    codeInterpreterIdentifier: string
    sessionId: string
end

local record GetCodeInterpreterSessionOutput
    codeInterpreterIdentifier: string
    sessionId: string
    name: string
    createdAt: number
    sessionTimeoutSeconds: number
    status: string
    certificates: {Certificate}
end

local record GetEventInput
    memoryId: string
    sessionId: string
    actorId: string
    eventId: string
end

local record GetEventOutput
    event: Event
end

local record GetMemoryRecordInput
    memoryId: string
    memoryRecordId: string
end

local record GetMemoryRecordOutput
    memoryRecord: MemoryRecord
end

local record GetRecommendationInput
    recommendationId: string
end

local record GetRecommendationOutput
    recommendationId: string
    recommendationArn: string
    name: string
    description: string
    type: string
    recommendationConfig: RecommendationConfig
    status: string
    createdAt: number
    updatedAt: number
    recommendationResult: RecommendationResult
end

local record GetResourceApiKeyInput
    workloadIdentityToken: string
    resourceCredentialProviderName: string
end

local record GetResourceApiKeyOutput
    apiKey: string
end

local record GetResourceOauth2TokenInput
    workloadIdentityToken: string
    resourceCredentialProviderName: string
    scopes: {string}
    oauth2Flow: string
    sessionUri: string
    resourceOauth2ReturnUrl: string
    forceAuthentication: boolean
    customParameters: {string : string}
    customState: string
    resources: {string}
    audiences: {string}
end

local record GetResourceOauth2TokenOutput
    authorizationUrl: string
    accessToken: string
    sessionUri: string
    sessionStatus: string
end

local record GetWorkloadAccessTokenInput
    workloadName: string
end

local record GetWorkloadAccessTokenOutput
    workloadAccessToken: string
end

local record GetWorkloadAccessTokenForJWTInput
    workloadName: string
    userToken: string
end

local record GetWorkloadAccessTokenForJWTOutput
    workloadAccessToken: string
end

local record GetWorkloadAccessTokenForUserIdInput
    workloadName: string
    userId: string
end

local record GetWorkloadAccessTokenForUserIdOutput
    workloadAccessToken: string
end

local record InvokeAgentRuntimeInput
    contentType: string
    accept: string
    mcpSessionId: string
    runtimeSessionId: string
    mcpProtocolVersion: string
    runtimeUserId: string
    traceId: string
    traceParent: string
    traceState: string
    baggage: string
    agentRuntimeArn: string
    qualifier: string
    accountId: string
    payload: string
end

local record InvokeAgentRuntimeOutput
    runtimeSessionId: string
    mcpSessionId: string
    mcpProtocolVersion: string
    traceId: string
    traceParent: string
    traceState: string
    baggage: string
    contentType: string
    response: string
    statusCode: number
end

local record InvokeAgentRuntimeCommandInput
    contentType: string
    accept: string
    runtimeSessionId: string
    traceId: string
    traceParent: string
    traceState: string
    baggage: string
    agentRuntimeArn: string
    qualifier: string
    accountId: string
    body: InvokeAgentRuntimeCommandRequestBody
end

local record InvokeAgentRuntimeCommandOutput
    runtimeSessionId: string
    traceId: string
    traceParent: string
    traceState: string
    baggage: string
    contentType: string
    statusCode: number
    stream: InvokeAgentRuntimeCommandStreamOutput
end

local record InvokeBrowserInput
    browserIdentifier: string
    sessionId: string
    action: BrowserAction
end

local record InvokeBrowserOutput
    result: BrowserActionResult
    sessionId: string
end

local record InvokeCodeInterpreterInput
    codeInterpreterIdentifier: string
    sessionId: string
    traceId: string
    traceParent: string
    name: string
    arguments: ToolArguments
end

local record InvokeCodeInterpreterOutput
    sessionId: string
    stream: CodeInterpreterStreamOutput
end

local record InvokeHarnessInput
    harnessArn: string
    runtimeSessionId: string
    messages: {HarnessMessage}
    model: HarnessModelConfiguration
    systemPrompt: {HarnessSystemContentBlock}
    tools: {HarnessTool}
    skills: {HarnessSkill}
    allowedTools: {string}
    maxIterations: number
    maxTokens: number
    timeoutSeconds: number
    actorId: string
end

local record InvokeHarnessOutput
    stream: InvokeHarnessStreamOutput
end

local record ListABTestsInput
    maxResults: number
    nextToken: string
end

local record ListABTestsOutput
    abTests: {ABTestSummary}
    nextToken: string
end

local record ListActorsInput
    memoryId: string
    maxResults: number
    nextToken: string
end

local record ListActorsOutput
    actorSummaries: {ActorSummary}
    nextToken: string
end

local record ListBatchEvaluationsInput
    maxResults: number
    nextToken: string
end

local record ListBatchEvaluationsOutput
    batchEvaluations: {BatchEvaluationSummary}
    nextToken: string
end

local record ListBrowserSessionsInput
    browserIdentifier: string
    maxResults: number
    nextToken: string
    status: string
end

local record ListBrowserSessionsOutput
    items: {BrowserSessionSummary}
    nextToken: string
end

local record ListCodeInterpreterSessionsInput
    codeInterpreterIdentifier: string
    maxResults: number
    nextToken: string
    status: string
end

local record ListCodeInterpreterSessionsOutput
    items: {CodeInterpreterSessionSummary}
    nextToken: string
end

local record ListEventsInput
    memoryId: string
    sessionId: string
    actorId: string
    includePayloads: boolean
    filter: FilterInput
    maxResults: number
    nextToken: string
end

local record ListEventsOutput
    events: {Event}
    nextToken: string
end

local record ListMemoryExtractionJobsInput
    memoryId: string
    maxResults: number
    filter: ExtractionJobFilterInput
    nextToken: string
end

local record ListMemoryExtractionJobsOutput
    jobs: {ExtractionJobMetadata}
    nextToken: string
end

local record ListMemoryRecordsInput
    memoryId: string
    namespace: string
    namespacePath: string
    memoryStrategyId: string
    maxResults: number
    nextToken: string
    metadataFilters: {MemoryMetadataFilterExpression}
end

local record ListMemoryRecordsOutput
    memoryRecordSummaries: {MemoryRecordSummary}
    nextToken: string
end

local record ListRecommendationsInput
    maxResults: number
    nextToken: string
    statusFilter: string
end

local record ListRecommendationsOutput
    recommendationSummaries: {RecommendationSummary}
    nextToken: string
end

local record ListSessionsInput
    memoryId: string
    actorId: string
    maxResults: number
    nextToken: string
    filter: SessionFilter
end

local record ListSessionsOutput
    sessionSummaries: {SessionSummary}
    nextToken: string
end

local record RetrieveMemoryRecordsInput
    memoryId: string
    namespace: string
    namespacePath: string
    searchCriteria: SearchCriteria
    nextToken: string
    maxResults: number
end

local record RetrieveMemoryRecordsOutput
    memoryRecordSummaries: {MemoryRecordSummary}
    nextToken: string
end

local record SaveBrowserSessionProfileInput
    traceId: string
    traceParent: string
    profileIdentifier: string
    browserIdentifier: string
    sessionId: string
    clientToken: string
end

local record SaveBrowserSessionProfileOutput
    profileIdentifier: string
    browserIdentifier: string
    sessionId: string
    lastUpdatedAt: number
end

local record SearchRegistryRecordsInput
    searchQuery: string
    registryIds: {string}
    maxResults: number
    filters: any
end

local record SearchRegistryRecordsOutput
    registryRecords: {RegistryRecordSummary}
end

local record StartBatchEvaluationInput
    batchEvaluationName: string
    evaluators: {Evaluator}
    dataSourceConfig: DataSourceConfig
    clientToken: string
    evaluationMetadata: EvaluationMetadata
    description: string
end

local record StartBatchEvaluationOutput
    batchEvaluationId: string
    batchEvaluationArn: string
    batchEvaluationName: string
    evaluators: {Evaluator}
    status: string
    createdAt: number
    outputConfig: OutputConfig
    description: string
end

local record StartBrowserSessionInput
    traceId: string
    traceParent: string
    browserIdentifier: string
    name: string
    sessionTimeoutSeconds: number
    viewPort: ViewPort
    extensions: {BrowserExtension}
    profileConfiguration: BrowserProfileConfiguration
    proxyConfiguration: ProxyConfiguration
    enterprisePolicies: {BrowserEnterprisePolicy}
    certificates: {Certificate}
    clientToken: string
end

local record StartBrowserSessionOutput
    browserIdentifier: string
    sessionId: string
    createdAt: number
    streams: BrowserSessionStream
end

local record StartCodeInterpreterSessionInput
    traceId: string
    traceParent: string
    codeInterpreterIdentifier: string
    name: string
    sessionTimeoutSeconds: number
    certificates: {Certificate}
    clientToken: string
end

local record StartCodeInterpreterSessionOutput
    codeInterpreterIdentifier: string
    sessionId: string
    createdAt: number
end

local record StartMemoryExtractionJobInput
    memoryId: string
    extractionJob: ExtractionJob
    clientToken: string
end

local record StartMemoryExtractionJobOutput
    jobId: string
end

local record StartRecommendationInput
    name: string
    description: string
    type: string
    recommendationConfig: RecommendationConfig
    clientToken: string
end

local record StartRecommendationOutput
    recommendationId: string
    recommendationArn: string
    name: string
    description: string
    type: string
    recommendationConfig: RecommendationConfig
    status: string
    createdAt: number
    updatedAt: number
end

local record StopBatchEvaluationInput
    batchEvaluationId: string
end

local record StopBatchEvaluationOutput
    batchEvaluationId: string
    batchEvaluationArn: string
    status: string
    description: string
end

local record StopBrowserSessionInput
    traceId: string
    traceParent: string
    browserIdentifier: string
    sessionId: string
    clientToken: string
end

local record StopBrowserSessionOutput
    browserIdentifier: string
    sessionId: string
    lastUpdatedAt: number
end

local record StopCodeInterpreterSessionInput
    traceId: string
    traceParent: string
    codeInterpreterIdentifier: string
    sessionId: string
    clientToken: string
end

local record StopCodeInterpreterSessionOutput
    codeInterpreterIdentifier: string
    sessionId: string
    lastUpdatedAt: number
end

local record StopRuntimeSessionInput
    runtimeSessionId: string
    agentRuntimeArn: string
    qualifier: string
    clientToken: string
end

local record StopRuntimeSessionOutput
    runtimeSessionId: string
    statusCode: number
end

local record UpdateABTestInput
    abTestId: string
    clientToken: string
    name: string
    description: string
    variants: {Variant}
    gatewayFilter: GatewayFilter
    evaluationConfig: ABTestEvaluationConfig
    roleArn: string
    executionStatus: string
end

local record UpdateABTestOutput
    abTestId: string
    abTestArn: string
    status: string
    executionStatus: string
    updatedAt: number
end

local record UpdateBrowserStreamInput
    browserIdentifier: string
    sessionId: string
    streamUpdate: StreamUpdate
    clientToken: string
end

local record UpdateBrowserStreamOutput
    browserIdentifier: string
    sessionId: string
    streams: BrowserSessionStream
    updatedAt: number
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record RetryableConflictException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
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
    message: string
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
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
    message: string
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
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
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record DuplicateIdException
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
    message: string
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record RuntimeClientError
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record RuntimeClientError
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record RuntimeClientError
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
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
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
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
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InvalidInputException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
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
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
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
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
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
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottledException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
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
    message: string
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
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
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
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
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
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

local record RuntimeClientError
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
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
    message: string
end

local record UnauthorizedException
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
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
    message: string
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local type Oauth2FlowType = "USER_FEDERATION" | "M2M" | "ON_BEHALF_OF_TOKEN_EXCHANGE"

local type CodeInterpreterSessionStatus = "READY" | "TERMINATED"

local type RecommendationType = "SYSTEM_PROMPT_RECOMMENDATION" | "TOOL_DESCRIPTION_RECOMMENDATION"

local type ABTestStatus = "CREATING" | "ACTIVE" | "CREATE_FAILED" | "UPDATING" | "UPDATE_FAILED" | "DELETING" | "DELETE_FAILED" | "FAILED"

local type BatchEvaluationStatus = "PENDING" | "IN_PROGRESS" | "COMPLETED" | "COMPLETED_WITH_ERRORS" | "FAILED" | "STOPPING" | "STOPPED" | "DELETING"

local type RecommendationStatus = "PENDING" | "IN_PROGRESS" | "COMPLETED" | "FAILED" | "DELETING"

local type ToolName = "executeCode" | "executeCommand" | "readFiles" | "listFiles" | "removeFiles" | "writeFiles" | "startCommandExecution" | "getTask" | "stopTask"

local type ABTestExecutionStatus = "PAUSED" | "RUNNING" | "STOPPED" | "NOT_STARTED"

local type BrowserSessionStatus = "READY" | "TERMINATED"

local type SessionStatus = "IN_PROGRESS" | "FAILED"

local record M
    BatchCreateMemoryRecordsInput: BatchCreateMemoryRecordsInput
    BatchCreateMemoryRecordsOutput: BatchCreateMemoryRecordsOutput
    BatchDeleteMemoryRecordsInput: BatchDeleteMemoryRecordsInput
    BatchDeleteMemoryRecordsOutput: BatchDeleteMemoryRecordsOutput
    BatchUpdateMemoryRecordsInput: BatchUpdateMemoryRecordsInput
    BatchUpdateMemoryRecordsOutput: BatchUpdateMemoryRecordsOutput
    CompleteResourceTokenAuthInput: CompleteResourceTokenAuthInput
    CompleteResourceTokenAuthOutput: CompleteResourceTokenAuthOutput
    CreateABTestInput: CreateABTestInput
    CreateABTestOutput: CreateABTestOutput
    CreateEventInput: CreateEventInput
    CreateEventOutput: CreateEventOutput
    DeleteABTestInput: DeleteABTestInput
    DeleteABTestOutput: DeleteABTestOutput
    DeleteBatchEvaluationInput: DeleteBatchEvaluationInput
    DeleteBatchEvaluationOutput: DeleteBatchEvaluationOutput
    DeleteEventInput: DeleteEventInput
    DeleteEventOutput: DeleteEventOutput
    DeleteMemoryRecordInput: DeleteMemoryRecordInput
    DeleteMemoryRecordOutput: DeleteMemoryRecordOutput
    DeleteRecommendationInput: DeleteRecommendationInput
    DeleteRecommendationOutput: DeleteRecommendationOutput
    EvaluateInput: EvaluateInput
    EvaluateOutput: EvaluateOutput
    GetABTestInput: GetABTestInput
    GetABTestOutput: GetABTestOutput
    GetAgentCardInput: GetAgentCardInput
    GetAgentCardOutput: GetAgentCardOutput
    GetBatchEvaluationInput: GetBatchEvaluationInput
    GetBatchEvaluationOutput: GetBatchEvaluationOutput
    GetBrowserSessionInput: GetBrowserSessionInput
    GetBrowserSessionOutput: GetBrowserSessionOutput
    GetCodeInterpreterSessionInput: GetCodeInterpreterSessionInput
    GetCodeInterpreterSessionOutput: GetCodeInterpreterSessionOutput
    GetEventInput: GetEventInput
    GetEventOutput: GetEventOutput
    GetMemoryRecordInput: GetMemoryRecordInput
    GetMemoryRecordOutput: GetMemoryRecordOutput
    GetRecommendationInput: GetRecommendationInput
    GetRecommendationOutput: GetRecommendationOutput
    GetResourceApiKeyInput: GetResourceApiKeyInput
    GetResourceApiKeyOutput: GetResourceApiKeyOutput
    GetResourceOauth2TokenInput: GetResourceOauth2TokenInput
    GetResourceOauth2TokenOutput: GetResourceOauth2TokenOutput
    GetWorkloadAccessTokenInput: GetWorkloadAccessTokenInput
    GetWorkloadAccessTokenOutput: GetWorkloadAccessTokenOutput
    GetWorkloadAccessTokenForJWTInput: GetWorkloadAccessTokenForJWTInput
    GetWorkloadAccessTokenForJWTOutput: GetWorkloadAccessTokenForJWTOutput
    GetWorkloadAccessTokenForUserIdInput: GetWorkloadAccessTokenForUserIdInput
    GetWorkloadAccessTokenForUserIdOutput: GetWorkloadAccessTokenForUserIdOutput
    InvokeAgentRuntimeInput: InvokeAgentRuntimeInput
    InvokeAgentRuntimeOutput: InvokeAgentRuntimeOutput
    InvokeAgentRuntimeCommandInput: InvokeAgentRuntimeCommandInput
    InvokeAgentRuntimeCommandOutput: InvokeAgentRuntimeCommandOutput
    InvokeBrowserInput: InvokeBrowserInput
    InvokeBrowserOutput: InvokeBrowserOutput
    InvokeCodeInterpreterInput: InvokeCodeInterpreterInput
    InvokeCodeInterpreterOutput: InvokeCodeInterpreterOutput
    InvokeHarnessInput: InvokeHarnessInput
    InvokeHarnessOutput: InvokeHarnessOutput
    ListABTestsInput: ListABTestsInput
    ListABTestsOutput: ListABTestsOutput
    ListActorsInput: ListActorsInput
    ListActorsOutput: ListActorsOutput
    ListBatchEvaluationsInput: ListBatchEvaluationsInput
    ListBatchEvaluationsOutput: ListBatchEvaluationsOutput
    ListBrowserSessionsInput: ListBrowserSessionsInput
    ListBrowserSessionsOutput: ListBrowserSessionsOutput
    ListCodeInterpreterSessionsInput: ListCodeInterpreterSessionsInput
    ListCodeInterpreterSessionsOutput: ListCodeInterpreterSessionsOutput
    ListEventsInput: ListEventsInput
    ListEventsOutput: ListEventsOutput
    ListMemoryExtractionJobsInput: ListMemoryExtractionJobsInput
    ListMemoryExtractionJobsOutput: ListMemoryExtractionJobsOutput
    ListMemoryRecordsInput: ListMemoryRecordsInput
    ListMemoryRecordsOutput: ListMemoryRecordsOutput
    ListRecommendationsInput: ListRecommendationsInput
    ListRecommendationsOutput: ListRecommendationsOutput
    ListSessionsInput: ListSessionsInput
    ListSessionsOutput: ListSessionsOutput
    RetrieveMemoryRecordsInput: RetrieveMemoryRecordsInput
    RetrieveMemoryRecordsOutput: RetrieveMemoryRecordsOutput
    SaveBrowserSessionProfileInput: SaveBrowserSessionProfileInput
    SaveBrowserSessionProfileOutput: SaveBrowserSessionProfileOutput
    SearchRegistryRecordsInput: SearchRegistryRecordsInput
    SearchRegistryRecordsOutput: SearchRegistryRecordsOutput
    StartBatchEvaluationInput: StartBatchEvaluationInput
    StartBatchEvaluationOutput: StartBatchEvaluationOutput
    StartBrowserSessionInput: StartBrowserSessionInput
    StartBrowserSessionOutput: StartBrowserSessionOutput
    StartCodeInterpreterSessionInput: StartCodeInterpreterSessionInput
    StartCodeInterpreterSessionOutput: StartCodeInterpreterSessionOutput
    StartMemoryExtractionJobInput: StartMemoryExtractionJobInput
    StartMemoryExtractionJobOutput: StartMemoryExtractionJobOutput
    StartRecommendationInput: StartRecommendationInput
    StartRecommendationOutput: StartRecommendationOutput
    StopBatchEvaluationInput: StopBatchEvaluationInput
    StopBatchEvaluationOutput: StopBatchEvaluationOutput
    StopBrowserSessionInput: StopBrowserSessionInput
    StopBrowserSessionOutput: StopBrowserSessionOutput
    StopCodeInterpreterSessionInput: StopCodeInterpreterSessionInput
    StopCodeInterpreterSessionOutput: StopCodeInterpreterSessionOutput
    StopRuntimeSessionInput: StopRuntimeSessionInput
    StopRuntimeSessionOutput: StopRuntimeSessionOutput
    UpdateABTestInput: UpdateABTestInput
    UpdateABTestOutput: UpdateABTestOutput
    UpdateBrowserStreamInput: UpdateBrowserStreamInput
    UpdateBrowserStreamOutput: UpdateBrowserStreamOutput
end

return M
