local record AcknowledgeJobInput
    jobId: string
    nonce: string
end

local record AcknowledgeJobOutput
    status: string
end

local record AcknowledgeThirdPartyJobInput
    jobId: string
    nonce: string
    clientToken: string
end

local record AcknowledgeThirdPartyJobOutput
    status: string
end

local record CreateCustomActionTypeInput
    category: string
    provider: string
    version: string
    settings: ActionTypeSettings
    configurationProperties: {ActionConfigurationProperty}
    inputArtifactDetails: ArtifactDetails
    outputArtifactDetails: ArtifactDetails
    tags: {Tag}
end

local record CreateCustomActionTypeOutput
    actionType: ActionType
    tags: {Tag}
end

local record CreatePipelineInput
    pipeline: PipelineDeclaration
    tags: {Tag}
end

local record CreatePipelineOutput
    pipeline: PipelineDeclaration
    tags: {Tag}
end

local record DeleteCustomActionTypeInput
    category: string
    provider: string
    version: string
end

local record DeleteCustomActionTypeOutput
end

local record DeletePipelineInput
    name: string
end

local record DeletePipelineOutput
end

local record DeleteWebhookInput
    name: string
end

local record DeleteWebhookOutput
end

local record DeregisterWebhookWithThirdPartyInput
    webhookName: string
end

local record DeregisterWebhookWithThirdPartyOutput
end

local record DisableStageTransitionInput
    pipelineName: string
    stageName: string
    transitionType: string
    reason: string
end

local record DisableStageTransitionOutput
end

local record EnableStageTransitionInput
    pipelineName: string
    stageName: string
    transitionType: string
end

local record EnableStageTransitionOutput
end

local record GetActionTypeInput
    category: string
    owner: string
    provider: string
    version: string
end

local record GetActionTypeOutput
    actionType: ActionTypeDeclaration
end

local record GetJobDetailsInput
    jobId: string
end

local record GetJobDetailsOutput
    jobDetails: JobDetails
end

local record GetPipelineInput
    name: string
    version: number
end

local record GetPipelineOutput
    pipeline: PipelineDeclaration
    metadata: PipelineMetadata
end

local record GetPipelineExecutionInput
    pipelineName: string
    pipelineExecutionId: string
end

local record GetPipelineExecutionOutput
    pipelineExecution: PipelineExecution
end

local record GetPipelineStateInput
    name: string
end

local record GetPipelineStateOutput
    pipelineName: string
    pipelineVersion: number
    stageStates: {StageState}
    created: number
    updated: number
end

local record GetThirdPartyJobDetailsInput
    jobId: string
    clientToken: string
end

local record GetThirdPartyJobDetailsOutput
    jobDetails: ThirdPartyJobDetails
end

local record ListActionExecutionsInput
    pipelineName: string
    filter: ActionExecutionFilter
    maxResults: number
    nextToken: string
end

local record ListActionExecutionsOutput
    actionExecutionDetails: {ActionExecutionDetail}
    nextToken: string
end

local record ListActionTypesInput
    actionOwnerFilter: string
    nextToken: string
    regionFilter: string
end

local record ListActionTypesOutput
    actionTypes: {ActionType}
    nextToken: string
end

local record ListDeployActionExecutionTargetsInput
    pipelineName: string
    actionExecutionId: string
    filters: {TargetFilter}
    maxResults: number
    nextToken: string
end

local record ListDeployActionExecutionTargetsOutput
    targets: {DeployActionExecutionTarget}
    nextToken: string
end

local record ListPipelineExecutionsInput
    pipelineName: string
    maxResults: number
    filter: PipelineExecutionFilter
    nextToken: string
end

local record ListPipelineExecutionsOutput
    pipelineExecutionSummaries: {PipelineExecutionSummary}
    nextToken: string
end

local record ListPipelinesInput
    nextToken: string
    maxResults: number
end

local record ListPipelinesOutput
    pipelines: {PipelineSummary}
    nextToken: string
end

local record ListRuleExecutionsInput
    pipelineName: string
    filter: RuleExecutionFilter
    maxResults: number
    nextToken: string
end

local record ListRuleExecutionsOutput
    ruleExecutionDetails: {RuleExecutionDetail}
    nextToken: string
end

local record ListRuleTypesInput
    ruleOwnerFilter: string
    regionFilter: string
end

local record ListRuleTypesOutput
    ruleTypes: {RuleType}
end

local record ListTagsForResourceInput
    resourceArn: string
    nextToken: string
    maxResults: number
end

local record ListTagsForResourceOutput
    tags: {Tag}
    nextToken: string
end

local record ListWebhooksInput
    NextToken: string
    MaxResults: number
end

local record ListWebhooksOutput
    webhooks: {ListWebhookItem}
    NextToken: string
end

local record OverrideStageConditionInput
    pipelineName: string
    stageName: string
    pipelineExecutionId: string
    conditionType: string
end

local record OverrideStageConditionOutput
end

local record PollForJobsInput
    actionTypeId: ActionTypeId
    maxBatchSize: number
    queryParam: {string : string}
end

local record PollForJobsOutput
    jobs: {Job}
end

local record PollForThirdPartyJobsInput
    actionTypeId: ActionTypeId
    maxBatchSize: number
end

local record PollForThirdPartyJobsOutput
    jobs: {ThirdPartyJob}
end

local record PutActionRevisionInput
    pipelineName: string
    stageName: string
    actionName: string
    actionRevision: ActionRevision
end

local record PutActionRevisionOutput
    newRevision: boolean
    pipelineExecutionId: string
end

local record PutApprovalResultInput
    pipelineName: string
    stageName: string
    actionName: string
    result: ApprovalResult
    token: string
end

local record PutApprovalResultOutput
    approvedAt: number
end

local record PutJobFailureResultInput
    jobId: string
    failureDetails: FailureDetails
end

local record PutJobFailureResultOutput
end

local record PutJobSuccessResultInput
    jobId: string
    currentRevision: CurrentRevision
    continuationToken: string
    executionDetails: ExecutionDetails
    outputVariables: {string : string}
end

local record PutJobSuccessResultOutput
end

local record PutThirdPartyJobFailureResultInput
    jobId: string
    clientToken: string
    failureDetails: FailureDetails
end

local record PutThirdPartyJobFailureResultOutput
end

local record PutThirdPartyJobSuccessResultInput
    jobId: string
    clientToken: string
    currentRevision: CurrentRevision
    continuationToken: string
    executionDetails: ExecutionDetails
end

local record PutThirdPartyJobSuccessResultOutput
end

local record PutWebhookInput
    webhook: WebhookDefinition
    tags: {Tag}
end

local record PutWebhookOutput
    webhook: ListWebhookItem
end

local record RegisterWebhookWithThirdPartyInput
    webhookName: string
end

local record RegisterWebhookWithThirdPartyOutput
end

local record RetryStageExecutionInput
    pipelineName: string
    stageName: string
    pipelineExecutionId: string
    retryMode: string
end

local record RetryStageExecutionOutput
    pipelineExecutionId: string
end

local record RollbackStageInput
    pipelineName: string
    stageName: string
    targetPipelineExecutionId: string
end

local record RollbackStageOutput
    pipelineExecutionId: string
end

local record StartPipelineExecutionInput
    name: string
    variables: {PipelineVariable}
    clientRequestToken: string
    sourceRevisions: {SourceRevisionOverride}
end

local record StartPipelineExecutionOutput
    pipelineExecutionId: string
end

local record StopPipelineExecutionInput
    pipelineName: string
    pipelineExecutionId: string
    abandon: boolean
    reason: string
end

local record StopPipelineExecutionOutput
    pipelineExecutionId: string
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

local record UpdateActionTypeInput
    actionType: ActionTypeDeclaration
end

local record UpdateActionTypeOutput
end

local record UpdatePipelineInput
    pipeline: PipelineDeclaration
end

local record UpdatePipelineOutput
    pipeline: PipelineDeclaration
end

local record InvalidNonceException
    message: string
end

local record JobNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record InvalidNonceException
    message: string
end

local record JobNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidTagsException
    message: string
end

local record LimitExceededException
    message: string
end

local record TooManyTagsException
    message: string
end

local record ValidationException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidActionDeclarationException
    message: string
end

local record InvalidBlockerDeclarationException
    message: string
end

local record InvalidStageDeclarationException
    message: string
end

local record InvalidStructureException
    message: string
end

local record InvalidTagsException
    message: string
end

local record LimitExceededException
    message: string
end

local record PipelineNameInUseException
    message: string
end

local record TooManyTagsException
    message: string
end

local record ValidationException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record ValidationException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record ValidationException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record ValidationException
    message: string
end

local record ValidationException
    message: string
end

local record WebhookNotFoundException
end

local record PipelineNotFoundException
    message: string
end

local record StageNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record StageNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ActionTypeNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record JobNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record PipelineVersionNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record PipelineExecutionNotFoundException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record InvalidJobException
    message: string
end

local record JobNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record PipelineExecutionNotFoundException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record ValidationException
    message: string
end

local record ActionExecutionNotFoundException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record PipelineExecutionNotFoundException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidNextTokenException
    message: string
end

local record ValidationException
    message: string
end

local record ConcurrentPipelineExecutionsLimitExceededException
    message: string
end

local record ConditionNotOverridableException
    message: string
end

local record ConflictException
    message: string
end

local record NotLatestPipelineExecutionException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record StageNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ActionTypeNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ActionTypeNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ActionNotFoundException
    message: string
end

local record ConcurrentPipelineExecutionsLimitExceededException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record StageNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ActionNotFoundException
    message: string
end

local record ApprovalAlreadyCompletedException
    message: string
end

local record InvalidApprovalTokenException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record StageNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidJobStateException
    message: string
end

local record JobNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidJobStateException
    message: string
end

local record JobNotFoundException
    message: string
end

local record OutputVariablesSizeExceededException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record InvalidJobStateException
    message: string
end

local record JobNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidClientTokenException
    message: string
end

local record InvalidJobStateException
    message: string
end

local record JobNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidTagsException
    message: string
end

local record InvalidWebhookAuthenticationParametersException
    message: string
end

local record InvalidWebhookFilterPatternException
    message: string
end

local record LimitExceededException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record TooManyTagsException
    message: string
end

local record ValidationException
    message: string
end

local record ValidationException
    message: string
end

local record WebhookNotFoundException
end

local record ConcurrentPipelineExecutionsLimitExceededException
    message: string
end

local record ConflictException
    message: string
end

local record NotLatestPipelineExecutionException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record StageNotFoundException
    message: string
end

local record StageNotRetryableException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record PipelineExecutionNotFoundException
    message: string
end

local record PipelineExecutionOutdatedException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record StageNotFoundException
    message: string
end

local record UnableToRollbackStageException
    message: string
end

local record ValidationException
    message: string
end

local record ConcurrentPipelineExecutionsLimitExceededException
    message: string
end

local record ConflictException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ConflictException
    message: string
end

local record DuplicatedStopRequestException
    message: string
end

local record PipelineExecutionNotStoppableException
    message: string
end

local record PipelineNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidTagsException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record TooManyTagsException
    message: string
end

local record ValidationException
    message: string
end

local record ConcurrentModificationException
    message: string
end

local record InvalidArnException
    message: string
end

local record InvalidTagsException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ActionTypeNotFoundException
    message: string
end

local record RequestFailedException
    message: string
end

local record ValidationException
    message: string
end

local record InvalidActionDeclarationException
    message: string
end

local record InvalidBlockerDeclarationException
    message: string
end

local record InvalidStageDeclarationException
    message: string
end

local record InvalidStructureException
    message: string
end

local record LimitExceededException
    message: string
end

local record ValidationException
    message: string
end

local type StageTransitionType = "Inbound" | "Outbound"

local type ConditionType = "BEFORE_ENTRY" | "ON_SUCCESS"

local type StageRetryMode = "FAILED_ACTIONS" | "ALL_ACTIONS"

local type RuleOwner = "AWS"

local type ActionCategory = "Source" | "Build" | "Deploy" | "Test" | "Invoke" | "Approval" | "Compute"

local type JobStatus = "Created" | "Queued" | "Dispatched" | "InProgress" | "TimedOut" | "Succeeded" | "Failed"

local type ActionOwner = "AWS" | "ThirdParty" | "Custom"

local record M
    AcknowledgeJobInput: AcknowledgeJobInput
    AcknowledgeJobOutput: AcknowledgeJobOutput
    AcknowledgeThirdPartyJobInput: AcknowledgeThirdPartyJobInput
    AcknowledgeThirdPartyJobOutput: AcknowledgeThirdPartyJobOutput
    CreateCustomActionTypeInput: CreateCustomActionTypeInput
    CreateCustomActionTypeOutput: CreateCustomActionTypeOutput
    CreatePipelineInput: CreatePipelineInput
    CreatePipelineOutput: CreatePipelineOutput
    DeleteCustomActionTypeInput: DeleteCustomActionTypeInput
    DeleteCustomActionTypeOutput: DeleteCustomActionTypeOutput
    DeletePipelineInput: DeletePipelineInput
    DeletePipelineOutput: DeletePipelineOutput
    DeleteWebhookInput: DeleteWebhookInput
    DeleteWebhookOutput: DeleteWebhookOutput
    DeregisterWebhookWithThirdPartyInput: DeregisterWebhookWithThirdPartyInput
    DeregisterWebhookWithThirdPartyOutput: DeregisterWebhookWithThirdPartyOutput
    DisableStageTransitionInput: DisableStageTransitionInput
    DisableStageTransitionOutput: DisableStageTransitionOutput
    EnableStageTransitionInput: EnableStageTransitionInput
    EnableStageTransitionOutput: EnableStageTransitionOutput
    GetActionTypeInput: GetActionTypeInput
    GetActionTypeOutput: GetActionTypeOutput
    GetJobDetailsInput: GetJobDetailsInput
    GetJobDetailsOutput: GetJobDetailsOutput
    GetPipelineInput: GetPipelineInput
    GetPipelineOutput: GetPipelineOutput
    GetPipelineExecutionInput: GetPipelineExecutionInput
    GetPipelineExecutionOutput: GetPipelineExecutionOutput
    GetPipelineStateInput: GetPipelineStateInput
    GetPipelineStateOutput: GetPipelineStateOutput
    GetThirdPartyJobDetailsInput: GetThirdPartyJobDetailsInput
    GetThirdPartyJobDetailsOutput: GetThirdPartyJobDetailsOutput
    ListActionExecutionsInput: ListActionExecutionsInput
    ListActionExecutionsOutput: ListActionExecutionsOutput
    ListActionTypesInput: ListActionTypesInput
    ListActionTypesOutput: ListActionTypesOutput
    ListDeployActionExecutionTargetsInput: ListDeployActionExecutionTargetsInput
    ListDeployActionExecutionTargetsOutput: ListDeployActionExecutionTargetsOutput
    ListPipelineExecutionsInput: ListPipelineExecutionsInput
    ListPipelineExecutionsOutput: ListPipelineExecutionsOutput
    ListPipelinesInput: ListPipelinesInput
    ListPipelinesOutput: ListPipelinesOutput
    ListRuleExecutionsInput: ListRuleExecutionsInput
    ListRuleExecutionsOutput: ListRuleExecutionsOutput
    ListRuleTypesInput: ListRuleTypesInput
    ListRuleTypesOutput: ListRuleTypesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListWebhooksInput: ListWebhooksInput
    ListWebhooksOutput: ListWebhooksOutput
    OverrideStageConditionInput: OverrideStageConditionInput
    OverrideStageConditionOutput: OverrideStageConditionOutput
    PollForJobsInput: PollForJobsInput
    PollForJobsOutput: PollForJobsOutput
    PollForThirdPartyJobsInput: PollForThirdPartyJobsInput
    PollForThirdPartyJobsOutput: PollForThirdPartyJobsOutput
    PutActionRevisionInput: PutActionRevisionInput
    PutActionRevisionOutput: PutActionRevisionOutput
    PutApprovalResultInput: PutApprovalResultInput
    PutApprovalResultOutput: PutApprovalResultOutput
    PutJobFailureResultInput: PutJobFailureResultInput
    PutJobFailureResultOutput: PutJobFailureResultOutput
    PutJobSuccessResultInput: PutJobSuccessResultInput
    PutJobSuccessResultOutput: PutJobSuccessResultOutput
    PutThirdPartyJobFailureResultInput: PutThirdPartyJobFailureResultInput
    PutThirdPartyJobFailureResultOutput: PutThirdPartyJobFailureResultOutput
    PutThirdPartyJobSuccessResultInput: PutThirdPartyJobSuccessResultInput
    PutThirdPartyJobSuccessResultOutput: PutThirdPartyJobSuccessResultOutput
    PutWebhookInput: PutWebhookInput
    PutWebhookOutput: PutWebhookOutput
    RegisterWebhookWithThirdPartyInput: RegisterWebhookWithThirdPartyInput
    RegisterWebhookWithThirdPartyOutput: RegisterWebhookWithThirdPartyOutput
    RetryStageExecutionInput: RetryStageExecutionInput
    RetryStageExecutionOutput: RetryStageExecutionOutput
    RollbackStageInput: RollbackStageInput
    RollbackStageOutput: RollbackStageOutput
    StartPipelineExecutionInput: StartPipelineExecutionInput
    StartPipelineExecutionOutput: StartPipelineExecutionOutput
    StopPipelineExecutionInput: StopPipelineExecutionInput
    StopPipelineExecutionOutput: StopPipelineExecutionOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateActionTypeInput: UpdateActionTypeInput
    UpdateActionTypeOutput: UpdateActionTypeOutput
    UpdatePipelineInput: UpdatePipelineInput
    UpdatePipelineOutput: UpdatePipelineOutput
end

return M
