local record CreateInvocationInput
    invocationId: string
    description: string
    sessionIdentifier: string
end

local record CreateInvocationOutput
    sessionId: string
    invocationId: string
    createdAt: number
end

local record CreateSessionInput
    sessionMetadata: {string : string}
    encryptionKeyArn: string
    tags: {string : string}
end

local record CreateSessionOutput
    sessionId: string
    sessionArn: string
    sessionStatus: string
    createdAt: number
end

local record DeleteAgentMemoryInput
    agentId: string
    agentAliasId: string
    memoryId: string
    sessionId: string
end

local record DeleteAgentMemoryOutput
end

local record DeleteSessionInput
    sessionIdentifier: string
end

local record DeleteSessionOutput
end

local record EndSessionInput
    sessionIdentifier: string
end

local record EndSessionOutput
    sessionId: string
    sessionArn: string
    sessionStatus: string
end

local record GenerateQueryInput
    queryGenerationInput: QueryGenerationInput
    transformationConfiguration: TransformationConfiguration
end

local record GenerateQueryOutput
    queries: {GeneratedQuery}
end

local record GetAgentMemoryInput
    nextToken: string
    maxItems: number
    agentId: string
    agentAliasId: string
    memoryType: string
    memoryId: string
end

local record GetAgentMemoryOutput
    nextToken: string
    memoryContents: {Memory}
end

local record GetExecutionFlowSnapshotInput
    flowIdentifier: string
    flowAliasIdentifier: string
    executionIdentifier: string
end

local record GetExecutionFlowSnapshotOutput
    flowIdentifier: string
    flowAliasIdentifier: string
    flowVersion: string
    executionRoleArn: string
    definition: string
    customerEncryptionKeyArn: string
end

local record GetFlowExecutionInput
    flowIdentifier: string
    flowAliasIdentifier: string
    executionIdentifier: string
end

local record GetFlowExecutionOutput
    executionArn: string
    status: string
    startedAt: number
    endedAt: number
    errors: {FlowExecutionError}
    flowAliasIdentifier: string
    flowIdentifier: string
    flowVersion: string
end

local record GetInvocationStepInput
    invocationIdentifier: string
    invocationStepId: string
    sessionIdentifier: string
end

local record GetInvocationStepOutput
    invocationStep: InvocationStep
end

local record GetSessionInput
    sessionIdentifier: string
end

local record GetSessionOutput
    sessionId: string
    sessionArn: string
    sessionStatus: string
    createdAt: number
    lastUpdatedAt: number
    sessionMetadata: {string : string}
    encryptionKeyArn: string
end

local record InvokeAgentInput
    sessionState: SessionState
    agentId: string
    agentAliasId: string
    sessionId: string
    endSession: boolean
    enableTrace: boolean
    inputText: string
    memoryId: string
    bedrockModelConfigurations: BedrockModelConfigurations
    streamingConfigurations: StreamingConfigurations
    promptCreationConfigurations: PromptCreationConfigurations
    sourceArn: string
end

local record InvokeAgentOutput
    completion: ResponseStream
    contentType: string
    sessionId: string
    memoryId: string
end

local record InvokeFlowInput
    flowIdentifier: string
    flowAliasIdentifier: string
    inputs: {FlowInput}
    enableTrace: boolean
    modelPerformanceConfiguration: ModelPerformanceConfiguration
    executionId: string
end

local record InvokeFlowOutput
    responseStream: FlowResponseStream
    executionId: string
end

local record InvokeInlineAgentInput
    customerEncryptionKeyArn: string
    foundationModel: string
    instruction: string
    idleSessionTTLInSeconds: number
    actionGroups: {AgentActionGroup}
    knowledgeBases: {KnowledgeBase}
    guardrailConfiguration: GuardrailConfigurationWithArn
    promptOverrideConfiguration: PromptOverrideConfiguration
    agentCollaboration: string
    collaboratorConfigurations: {CollaboratorConfiguration}
    agentName: string
    sessionId: string
    endSession: boolean
    enableTrace: boolean
    inputText: string
    streamingConfigurations: StreamingConfigurations
    promptCreationConfigurations: PromptCreationConfigurations
    inlineSessionState: InlineSessionState
    collaborators: {Collaborator}
    bedrockModelConfigurations: InlineBedrockModelConfigurations
    orchestrationType: string
    customOrchestration: CustomOrchestration
end

local record InvokeInlineAgentOutput
    completion: InlineAgentResponseStream
    contentType: string
    sessionId: string
end

local record ListFlowExecutionEventsInput
    flowIdentifier: string
    flowAliasIdentifier: string
    executionIdentifier: string
    maxResults: number
    nextToken: string
    eventType: string
end

local record ListFlowExecutionEventsOutput
    flowExecutionEvents: {FlowExecutionEvent}
    nextToken: string
end

local record ListFlowExecutionsInput
    flowIdentifier: string
    flowAliasIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListFlowExecutionsOutput
    flowExecutionSummaries: {FlowExecutionSummary}
    nextToken: string
end

local record ListInvocationsInput
    nextToken: string
    maxResults: number
    sessionIdentifier: string
end

local record ListInvocationsOutput
    invocationSummaries: {InvocationSummary}
    nextToken: string
end

local record ListInvocationStepsInput
    invocationIdentifier: string
    nextToken: string
    maxResults: number
    sessionIdentifier: string
end

local record ListInvocationStepsOutput
    invocationStepSummaries: {InvocationStepSummary}
    nextToken: string
end

local record ListSessionsInput
    maxResults: number
    nextToken: string
end

local record ListSessionsOutput
    sessionSummaries: {SessionSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record OptimizePromptInput
    input: InputPrompt
    targetModelId: string
end

local record OptimizePromptOutput
    optimizedPrompt: OptimizedPromptStream
end

local record PutInvocationStepInput
    sessionIdentifier: string
    invocationIdentifier: string
    invocationStepTime: number
    payload: InvocationStepPayload
    invocationStepId: string
end

local record PutInvocationStepOutput
    invocationStepId: string
end

local record RerankInput
    queries: {RerankQuery}
    sources: {RerankSource}
    rerankingConfiguration: RerankingConfiguration
    nextToken: string
end

local record RerankOutput
    results: {RerankResult}
    nextToken: string
end

local record RetrieveInput
    knowledgeBaseId: string
    retrievalQuery: KnowledgeBaseQuery
    retrievalConfiguration: KnowledgeBaseRetrievalConfiguration
    guardrailConfiguration: GuardrailConfiguration
    nextToken: string
end

local record RetrieveOutput
    retrievalResults: {KnowledgeBaseRetrievalResult}
    guardrailAction: string
    nextToken: string
end

local record RetrieveAndGenerateOperationInput
    sessionId: string
    input: RetrieveAndGenerateInput
    retrieveAndGenerateConfiguration: RetrieveAndGenerateConfiguration
    sessionConfiguration: RetrieveAndGenerateSessionConfiguration
end

local record RetrieveAndGenerateOperationOutput
    sessionId: string
    output: RetrieveAndGenerateOutput
    citations: {Citation}
    guardrailAction: string
end

local record RetrieveAndGenerateStreamInput
    sessionId: string
    input: RetrieveAndGenerateInput
    retrieveAndGenerateConfiguration: RetrieveAndGenerateConfiguration
    sessionConfiguration: RetrieveAndGenerateSessionConfiguration
end

local record RetrieveAndGenerateStreamOutput
    stream: RetrieveAndGenerateStreamResponseOutput
    sessionId: string
end

local record StartFlowExecutionInput
    flowIdentifier: string
    flowAliasIdentifier: string
    flowExecutionName: string
    inputs: {FlowInput}
    modelPerformanceConfiguration: ModelPerformanceConfiguration
end

local record StartFlowExecutionOutput
    executionArn: string
end

local record StopFlowExecutionInput
    flowIdentifier: string
    flowAliasIdentifier: string
    executionIdentifier: string
end

local record StopFlowExecutionOutput
    executionArn: string
    status: string
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

local record UpdateSessionInput
    sessionMetadata: {string : string}
    sessionIdentifier: string
end

local record UpdateSessionOutput
    sessionId: string
    sessionArn: string
    sessionStatus: string
    createdAt: number
    lastUpdatedAt: number
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
    reason: string
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
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
    reason: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadGatewayException
    message: string
    resourceName: string
end

local record ConflictException
    message: string
end

local record DependencyFailedException
    message: string
    resourceName: string
end

local record InternalServerException
    message: string
    reason: string
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
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
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

local record InternalServerException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadGatewayException
    message: string
    resourceName: string
end

local record ConflictException
    message: string
end

local record DependencyFailedException
    message: string
    resourceName: string
end

local record InternalServerException
    message: string
    reason: string
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
end

local record AccessDeniedException
    message: string
end

local record BadGatewayException
    message: string
    resourceName: string
end

local record ConflictException
    message: string
end

local record DependencyFailedException
    message: string
    resourceName: string
end

local record InternalServerException
    message: string
    reason: string
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
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadGatewayException
    message: string
    resourceName: string
end

local record ConflictException
    message: string
end

local record DependencyFailedException
    message: string
    resourceName: string
end

local record InternalServerException
    message: string
    reason: string
end

local record ModelNotReadyException
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
end

local record AccessDeniedException
    message: string
end

local record BadGatewayException
    message: string
    resourceName: string
end

local record ConflictException
    message: string
end

local record DependencyFailedException
    message: string
    resourceName: string
end

local record InternalServerException
    message: string
    reason: string
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
end

local record AccessDeniedException
    message: string
end

local record BadGatewayException
    message: string
    resourceName: string
end

local record ConflictException
    message: string
end

local record DependencyFailedException
    message: string
    resourceName: string
end

local record InternalServerException
    message: string
    reason: string
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
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    reason: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record BadGatewayException
    message: string
    resourceName: string
end

local record DependencyFailedException
    message: string
    resourceName: string
end

local record InternalServerException
    message: string
    reason: string
end

local record ThrottlingException
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

local record InternalServerException
    message: string
    reason: string
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
end

local record AccessDeniedException
    message: string
end

local record BadGatewayException
    message: string
    resourceName: string
end

local record ConflictException
    message: string
end

local record DependencyFailedException
    message: string
    resourceName: string
end

local record InternalServerException
    message: string
    reason: string
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
end

local record AccessDeniedException
    message: string
end

local record BadGatewayException
    message: string
    resourceName: string
end

local record ConflictException
    message: string
end

local record DependencyFailedException
    message: string
    resourceName: string
end

local record InternalServerException
    message: string
    reason: string
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
end

local record AccessDeniedException
    message: string
end

local record BadGatewayException
    message: string
    resourceName: string
end

local record ConflictException
    message: string
end

local record DependencyFailedException
    message: string
    resourceName: string
end

local record InternalServerException
    message: string
    reason: string
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
end

local record AccessDeniedException
    message: string
end

local record BadGatewayException
    message: string
    resourceName: string
end

local record ConflictException
    message: string
end

local record DependencyFailedException
    message: string
    resourceName: string
end

local record InternalServerException
    message: string
    reason: string
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
end

local record AccessDeniedException
    message: string
end

local record BadGatewayException
    message: string
    resourceName: string
end

local record ConflictException
    message: string
end

local record DependencyFailedException
    message: string
    resourceName: string
end

local record InternalServerException
    message: string
    reason: string
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
end

local record AccessDeniedException
    message: string
end

local record BadGatewayException
    message: string
    resourceName: string
end

local record ConflictException
    message: string
end

local record DependencyFailedException
    message: string
    resourceName: string
end

local record InternalServerException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    reason: string
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
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
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

local record InternalServerException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local type FlowExecutionStatus = "Running" | "Succeeded" | "Failed" | "TimedOut" | "Aborted"

local type SessionStatus = "ACTIVE" | "EXPIRED" | "ENDED"

local type MemoryType = "SESSION_SUMMARY"

local type OrchestrationType = "DEFAULT" | "CUSTOM_ORCHESTRATION"

local type FlowExecutionEventType = "Node" | "Flow"

local type GuadrailAction = "INTERVENED" | "NONE"

local type AgentCollaboration = "SUPERVISOR" | "SUPERVISOR_ROUTER" | "DISABLED"

local record M
    CreateInvocationInput: CreateInvocationInput
    CreateInvocationOutput: CreateInvocationOutput
    CreateSessionInput: CreateSessionInput
    CreateSessionOutput: CreateSessionOutput
    DeleteAgentMemoryInput: DeleteAgentMemoryInput
    DeleteAgentMemoryOutput: DeleteAgentMemoryOutput
    DeleteSessionInput: DeleteSessionInput
    DeleteSessionOutput: DeleteSessionOutput
    EndSessionInput: EndSessionInput
    EndSessionOutput: EndSessionOutput
    GenerateQueryInput: GenerateQueryInput
    GenerateQueryOutput: GenerateQueryOutput
    GetAgentMemoryInput: GetAgentMemoryInput
    GetAgentMemoryOutput: GetAgentMemoryOutput
    GetExecutionFlowSnapshotInput: GetExecutionFlowSnapshotInput
    GetExecutionFlowSnapshotOutput: GetExecutionFlowSnapshotOutput
    GetFlowExecutionInput: GetFlowExecutionInput
    GetFlowExecutionOutput: GetFlowExecutionOutput
    GetInvocationStepInput: GetInvocationStepInput
    GetInvocationStepOutput: GetInvocationStepOutput
    GetSessionInput: GetSessionInput
    GetSessionOutput: GetSessionOutput
    InvokeAgentInput: InvokeAgentInput
    InvokeAgentOutput: InvokeAgentOutput
    InvokeFlowInput: InvokeFlowInput
    InvokeFlowOutput: InvokeFlowOutput
    InvokeInlineAgentInput: InvokeInlineAgentInput
    InvokeInlineAgentOutput: InvokeInlineAgentOutput
    ListFlowExecutionEventsInput: ListFlowExecutionEventsInput
    ListFlowExecutionEventsOutput: ListFlowExecutionEventsOutput
    ListFlowExecutionsInput: ListFlowExecutionsInput
    ListFlowExecutionsOutput: ListFlowExecutionsOutput
    ListInvocationsInput: ListInvocationsInput
    ListInvocationsOutput: ListInvocationsOutput
    ListInvocationStepsInput: ListInvocationStepsInput
    ListInvocationStepsOutput: ListInvocationStepsOutput
    ListSessionsInput: ListSessionsInput
    ListSessionsOutput: ListSessionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    OptimizePromptInput: OptimizePromptInput
    OptimizePromptOutput: OptimizePromptOutput
    PutInvocationStepInput: PutInvocationStepInput
    PutInvocationStepOutput: PutInvocationStepOutput
    RerankInput: RerankInput
    RerankOutput: RerankOutput
    RetrieveInput: RetrieveInput
    RetrieveOutput: RetrieveOutput
    RetrieveAndGenerateOperationInput: RetrieveAndGenerateOperationInput
    RetrieveAndGenerateOperationOutput: RetrieveAndGenerateOperationOutput
    RetrieveAndGenerateStreamInput: RetrieveAndGenerateStreamInput
    RetrieveAndGenerateStreamOutput: RetrieveAndGenerateStreamOutput
    StartFlowExecutionInput: StartFlowExecutionInput
    StartFlowExecutionOutput: StartFlowExecutionOutput
    StopFlowExecutionInput: StopFlowExecutionInput
    StopFlowExecutionOutput: StopFlowExecutionOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateSessionInput: UpdateSessionInput
    UpdateSessionOutput: UpdateSessionOutput
end

return M
