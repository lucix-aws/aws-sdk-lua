local record ApplyGuardrailInput
    guardrailIdentifier: string
    guardrailVersion: string
    source: string
    content: {GuardrailContentBlock}
    outputScope: string
end

local record ApplyGuardrailOutput
    usage: GuardrailUsage
    action: string
    actionReason: string
    outputs: {GuardrailOutputContent}
    assessments: {GuardrailAssessment}
    guardrailCoverage: GuardrailCoverage
end

local record ConverseInput
    modelId: string
    messages: {Message}
    system: {SystemContentBlock}
    inferenceConfig: InferenceConfiguration
    toolConfig: ToolConfiguration
    guardrailConfig: GuardrailConfiguration
    additionalModelRequestFields: any
    promptVariables: {string : PromptVariableValues}
    additionalModelResponseFieldPaths: {string}
    requestMetadata: {string : string}
    performanceConfig: PerformanceConfiguration
    serviceTier: ServiceTier
    outputConfig: OutputConfig
end

local record ConverseOperationOutput
    output: ConverseOutput
    stopReason: string
    usage: TokenUsage
    metrics: ConverseMetrics
    additionalModelResponseFields: any
    trace: ConverseTrace
    performanceConfig: PerformanceConfiguration
    serviceTier: ServiceTier
end

local record ConverseStreamInput
    modelId: string
    messages: {Message}
    system: {SystemContentBlock}
    inferenceConfig: InferenceConfiguration
    toolConfig: ToolConfiguration
    guardrailConfig: GuardrailStreamConfiguration
    additionalModelRequestFields: any
    promptVariables: {string : PromptVariableValues}
    additionalModelResponseFieldPaths: {string}
    requestMetadata: {string : string}
    performanceConfig: PerformanceConfiguration
    serviceTier: ServiceTier
    outputConfig: OutputConfig
end

local record ConverseStreamOperationOutput
    stream: ConverseStreamOutput
end

local record CountTokensOperationInput
    modelId: string
    input: CountTokensInput
end

local record CountTokensOutput
    inputTokens: number
end

local record GetAsyncInvokeInput
    invocationArn: string
end

local record GetAsyncInvokeOutput
    invocationArn: string
    modelArn: string
    clientRequestToken: string
    status: string
    failureMessage: string
    submitTime: number
    lastModifiedTime: number
    endTime: number
    outputDataConfig: AsyncInvokeOutputDataConfig
end

local record InvokeModelInput
    body: string
    contentType: string
    accept: string
    modelId: string
    trace: string
    guardrailIdentifier: string
    guardrailVersion: string
    performanceConfigLatency: string
    serviceTier: string
end

local record InvokeModelOutput
    body: string
    contentType: string
    performanceConfigLatency: string
    serviceTier: string
end

local record InvokeModelWithBidirectionalStreamOperationInput
    modelId: string
    body: InvokeModelWithBidirectionalStreamInput
end

local record InvokeModelWithBidirectionalStreamOperationOutput
    body: InvokeModelWithBidirectionalStreamOutput
end

local record InvokeModelWithResponseStreamInput
    body: string
    contentType: string
    accept: string
    modelId: string
    trace: string
    guardrailIdentifier: string
    guardrailVersion: string
    performanceConfigLatency: string
    serviceTier: string
end

local record InvokeModelWithResponseStreamOutput
    body: ResponseStream
    contentType: string
    performanceConfigLatency: string
    serviceTier: string
end

local record ListAsyncInvokesInput
    submitTimeAfter: number
    submitTimeBefore: number
    statusEquals: string
    maxResults: number
    nextToken: string
    sortBy: string
    sortOrder: string
end

local record ListAsyncInvokesOutput
    nextToken: string
    asyncInvokeSummaries: {AsyncInvokeSummary}
end

local record StartAsyncInvokeInput
    clientRequestToken: string
    modelId: string
    modelInput: any
    outputDataConfig: AsyncInvokeOutputDataConfig
    tags: {Tag}
end

local record StartAsyncInvokeOutput
    invocationArn: string
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

local record ServiceUnavailableException
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
end

local record ModelErrorException
    message: string
    originalStatusCode: number
    resourceName: string
end

local record ModelNotReadyException
    message: string
end

local record ModelTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
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
end

local record ModelErrorException
    message: string
    originalStatusCode: number
    resourceName: string
end

local record ModelNotReadyException
    message: string
end

local record ModelTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
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
end

local record ResourceNotFoundException
    message: string
end

local record ServiceUnavailableException
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
end

local record ModelErrorException
    message: string
    originalStatusCode: number
    resourceName: string
end

local record ModelNotReadyException
    message: string
end

local record ModelTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
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
end

local record ModelErrorException
    message: string
    originalStatusCode: number
    resourceName: string
end

local record ModelNotReadyException
    message: string
end

local record ModelStreamErrorException
    message: string
    originalStatusCode: number
    originalMessage: string
end

local record ModelTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
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
end

local record ModelErrorException
    message: string
    originalStatusCode: number
    resourceName: string
end

local record ModelNotReadyException
    message: string
end

local record ModelStreamErrorException
    message: string
    originalStatusCode: number
    originalMessage: string
end

local record ModelTimeoutException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
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
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local type SortAsyncInvocationBy = "SubmissionTime"

local type Trace = "ENABLED" | "DISABLED" | "ENABLED_FULL"

local type PerformanceConfigLatency = "standard" | "optimized"

local type GuardrailAction = "NONE" | "GUARDRAIL_INTERVENED"

local type SortOrder = "Ascending" | "Descending"

local type AsyncInvokeStatus = "InProgress" | "Completed" | "Failed"

local type ServiceTierType = "priority" | "default" | "flex" | "reserved"

local type GuardrailContentSource = "INPUT" | "OUTPUT"

local type StopReason = "end_turn" | "tool_use" | "max_tokens" | "stop_sequence" | "guardrail_intervened" | "content_filtered" | "malformed_model_output" | "malformed_tool_use" | "model_context_window_exceeded"

local type GuardrailOutputScope = "INTERVENTIONS" | "FULL"

local record M
    ApplyGuardrailInput: ApplyGuardrailInput
    ApplyGuardrailOutput: ApplyGuardrailOutput
    ConverseInput: ConverseInput
    ConverseOperationOutput: ConverseOperationOutput
    ConverseStreamInput: ConverseStreamInput
    ConverseStreamOperationOutput: ConverseStreamOperationOutput
    CountTokensOperationInput: CountTokensOperationInput
    CountTokensOutput: CountTokensOutput
    GetAsyncInvokeInput: GetAsyncInvokeInput
    GetAsyncInvokeOutput: GetAsyncInvokeOutput
    InvokeModelInput: InvokeModelInput
    InvokeModelOutput: InvokeModelOutput
    InvokeModelWithBidirectionalStreamOperationInput: InvokeModelWithBidirectionalStreamOperationInput
    InvokeModelWithBidirectionalStreamOperationOutput: InvokeModelWithBidirectionalStreamOperationOutput
    InvokeModelWithResponseStreamInput: InvokeModelWithResponseStreamInput
    InvokeModelWithResponseStreamOutput: InvokeModelWithResponseStreamOutput
    ListAsyncInvokesInput: ListAsyncInvokesInput
    ListAsyncInvokesOutput: ListAsyncInvokesOutput
    StartAsyncInvokeInput: StartAsyncInvokeInput
    StartAsyncInvokeOutput: StartAsyncInvokeOutput
end

return M
