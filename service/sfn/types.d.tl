local record CreateActivityInput
    name: string
    tags: {Tag}
    encryptionConfiguration: EncryptionConfiguration
end

local record CreateActivityOutput
    activityArn: string
    creationDate: number
end

local record CreateStateMachineInput
    name: string
    definition: string
    roleArn: string
    type: string
    loggingConfiguration: LoggingConfiguration
    tags: {Tag}
    tracingConfiguration: TracingConfiguration
    publish: boolean
    versionDescription: string
    encryptionConfiguration: EncryptionConfiguration
end

local record CreateStateMachineOutput
    stateMachineArn: string
    creationDate: number
    stateMachineVersionArn: string
end

local record CreateStateMachineAliasInput
    description: string
    name: string
    routingConfiguration: {RoutingConfigurationListItem}
end

local record CreateStateMachineAliasOutput
    stateMachineAliasArn: string
    creationDate: number
end

local record DeleteActivityInput
    activityArn: string
end

local record DeleteActivityOutput
end

local record DeleteStateMachineInput
    stateMachineArn: string
end

local record DeleteStateMachineOutput
end

local record DeleteStateMachineAliasInput
    stateMachineAliasArn: string
end

local record DeleteStateMachineAliasOutput
end

local record DeleteStateMachineVersionInput
    stateMachineVersionArn: string
end

local record DeleteStateMachineVersionOutput
end

local record DescribeActivityInput
    activityArn: string
end

local record DescribeActivityOutput
    activityArn: string
    name: string
    creationDate: number
    encryptionConfiguration: EncryptionConfiguration
end

local record DescribeExecutionInput
    executionArn: string
    includedData: string
end

local record DescribeExecutionOutput
    executionArn: string
    stateMachineArn: string
    name: string
    status: string
    startDate: number
    stopDate: number
    input: string
    inputDetails: CloudWatchEventsExecutionDataDetails
    output: string
    outputDetails: CloudWatchEventsExecutionDataDetails
    traceHeader: string
    mapRunArn: string
    error: string
    cause: string
    stateMachineVersionArn: string
    stateMachineAliasArn: string
    redriveCount: number
    redriveDate: number
    redriveStatus: string
    redriveStatusReason: string
end

local record DescribeMapRunInput
    mapRunArn: string
end

local record DescribeMapRunOutput
    mapRunArn: string
    executionArn: string
    status: string
    startDate: number
    stopDate: number
    maxConcurrency: number
    toleratedFailurePercentage: number
    toleratedFailureCount: number
    itemCounts: MapRunItemCounts
    executionCounts: MapRunExecutionCounts
    redriveCount: number
    redriveDate: number
end

local record DescribeStateMachineInput
    stateMachineArn: string
    includedData: string
end

local record DescribeStateMachineOutput
    stateMachineArn: string
    name: string
    status: string
    definition: string
    roleArn: string
    type: string
    creationDate: number
    loggingConfiguration: LoggingConfiguration
    tracingConfiguration: TracingConfiguration
    label: string
    revisionId: string
    description: string
    encryptionConfiguration: EncryptionConfiguration
    variableReferences: {string : {string}}
end

local record DescribeStateMachineAliasInput
    stateMachineAliasArn: string
end

local record DescribeStateMachineAliasOutput
    stateMachineAliasArn: string
    name: string
    description: string
    routingConfiguration: {RoutingConfigurationListItem}
    creationDate: number
    updateDate: number
end

local record DescribeStateMachineForExecutionInput
    executionArn: string
    includedData: string
end

local record DescribeStateMachineForExecutionOutput
    stateMachineArn: string
    name: string
    definition: string
    roleArn: string
    updateDate: number
    loggingConfiguration: LoggingConfiguration
    tracingConfiguration: TracingConfiguration
    mapRunArn: string
    label: string
    revisionId: string
    encryptionConfiguration: EncryptionConfiguration
    variableReferences: {string : {string}}
end

local record GetActivityTaskInput
    activityArn: string
    workerName: string
end

local record GetActivityTaskOutput
    taskToken: string
    input: string
end

local record GetExecutionHistoryInput
    executionArn: string
    maxResults: number
    reverseOrder: boolean
    nextToken: string
    includeExecutionData: boolean
end

local record GetExecutionHistoryOutput
    events: {HistoryEvent}
    nextToken: string
end

local record ListActivitiesInput
    maxResults: number
    nextToken: string
end

local record ListActivitiesOutput
    activities: {ActivityListItem}
    nextToken: string
end

local record ListExecutionsInput
    stateMachineArn: string
    statusFilter: string
    maxResults: number
    nextToken: string
    mapRunArn: string
    redriveFilter: string
end

local record ListExecutionsOutput
    executions: {ExecutionListItem}
    nextToken: string
end

local record ListMapRunsInput
    executionArn: string
    maxResults: number
    nextToken: string
end

local record ListMapRunsOutput
    mapRuns: {MapRunListItem}
    nextToken: string
end

local record ListStateMachineAliasesInput
    stateMachineArn: string
    nextToken: string
    maxResults: number
end

local record ListStateMachineAliasesOutput
    stateMachineAliases: {StateMachineAliasListItem}
    nextToken: string
end

local record ListStateMachinesInput
    maxResults: number
    nextToken: string
end

local record ListStateMachinesOutput
    stateMachines: {StateMachineListItem}
    nextToken: string
end

local record ListStateMachineVersionsInput
    stateMachineArn: string
    nextToken: string
    maxResults: number
end

local record ListStateMachineVersionsOutput
    stateMachineVersions: {StateMachineVersionListItem}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record PublishStateMachineVersionInput
    stateMachineArn: string
    revisionId: string
    description: string
end

local record PublishStateMachineVersionOutput
    creationDate: number
    stateMachineVersionArn: string
end

local record RedriveExecutionInput
    executionArn: string
    clientToken: string
end

local record RedriveExecutionOutput
    redriveDate: number
end

local record SendTaskFailureInput
    taskToken: string
    error: string
    cause: string
end

local record SendTaskFailureOutput
end

local record SendTaskHeartbeatInput
    taskToken: string
end

local record SendTaskHeartbeatOutput
end

local record SendTaskSuccessInput
    taskToken: string
    output: string
end

local record SendTaskSuccessOutput
end

local record StartExecutionInput
    stateMachineArn: string
    name: string
    input: string
    traceHeader: string
end

local record StartExecutionOutput
    executionArn: string
    startDate: number
end

local record StartSyncExecutionInput
    stateMachineArn: string
    name: string
    input: string
    traceHeader: string
    includedData: string
end

local record StartSyncExecutionOutput
    executionArn: string
    stateMachineArn: string
    name: string
    startDate: number
    stopDate: number
    status: string
    error: string
    cause: string
    input: string
    inputDetails: CloudWatchEventsExecutionDataDetails
    output: string
    outputDetails: CloudWatchEventsExecutionDataDetails
    traceHeader: string
    billingDetails: BillingDetails
end

local record StopExecutionInput
    executionArn: string
    error: string
    cause: string
end

local record StopExecutionOutput
    stopDate: number
end

local record TagResourceInput
    resourceArn: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record TestStateInput
    definition: string
    roleArn: string
    input: string
    inspectionLevel: string
    revealSecrets: boolean
    variables: string
    stateName: string
    mock: MockInput
    context: string
    stateConfiguration: TestStateConfiguration
end

local record TestStateOutput
    output: string
    error: string
    cause: string
    inspectionData: InspectionData
    nextState: string
    status: string
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateMapRunInput
    mapRunArn: string
    maxConcurrency: number
    toleratedFailurePercentage: number
    toleratedFailureCount: number
end

local record UpdateMapRunOutput
end

local record UpdateStateMachineInput
    stateMachineArn: string
    definition: string
    roleArn: string
    loggingConfiguration: LoggingConfiguration
    tracingConfiguration: TracingConfiguration
    publish: boolean
    versionDescription: string
    encryptionConfiguration: EncryptionConfiguration
end

local record UpdateStateMachineOutput
    updateDate: number
    revisionId: string
    stateMachineVersionArn: string
end

local record UpdateStateMachineAliasInput
    stateMachineAliasArn: string
    description: string
    routingConfiguration: {RoutingConfigurationListItem}
end

local record UpdateStateMachineAliasOutput
    updateDate: number
end

local record ValidateStateMachineDefinitionInput
    definition: string
    type: string
    severity: string
    maxResults: number
end

local record ValidateStateMachineDefinitionOutput
    result: string
    diagnostics: {ValidateStateMachineDefinitionDiagnostic}
    truncated: boolean
end

local record ActivityAlreadyExists
    message: string
end

local record ActivityLimitExceeded
    message: string
end

local record InvalidEncryptionConfiguration
    message: string
end

local record InvalidName
    message: string
end

local record KmsAccessDeniedException
    message: string
end

local record KmsThrottlingException
    message: string
end

local record TooManyTags
    message: string
    resourceName: string
end

local record ConflictException
    message: string
end

local record InvalidArn
    message: string
end

local record InvalidDefinition
    message: string
end

local record InvalidEncryptionConfiguration
    message: string
end

local record InvalidLoggingConfiguration
    message: string
end

local record InvalidName
    message: string
end

local record InvalidTracingConfiguration
    message: string
end

local record KmsAccessDeniedException
    message: string
end

local record KmsThrottlingException
    message: string
end

local record StateMachineAlreadyExists
    message: string
end

local record StateMachineDeleting
    message: string
end

local record StateMachineLimitExceeded
    message: string
end

local record StateMachineTypeNotSupported
    message: string
end

local record TooManyTags
    message: string
    resourceName: string
end

local record ValidationException
    message: string
    reason: string
end

local record ConflictException
    message: string
end

local record InvalidArn
    message: string
end

local record InvalidName
    message: string
end

local record ResourceNotFound
    message: string
    resourceName: string
end

local record ServiceQuotaExceededException
    message: string
end

local record StateMachineDeleting
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record InvalidArn
    message: string
end

local record InvalidArn
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record ConflictException
    message: string
end

local record InvalidArn
    message: string
end

local record ResourceNotFound
    message: string
    resourceName: string
end

local record ValidationException
    message: string
    reason: string
end

local record ConflictException
    message: string
end

local record InvalidArn
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record ActivityDoesNotExist
    message: string
end

local record InvalidArn
    message: string
end

local record ExecutionDoesNotExist
    message: string
end

local record InvalidArn
    message: string
end

local record KmsAccessDeniedException
    message: string
end

local record KmsInvalidStateException
    kmsKeyState: string
    message: string
end

local record KmsThrottlingException
    message: string
end

local record InvalidArn
    message: string
end

local record ResourceNotFound
    message: string
    resourceName: string
end

local record InvalidArn
    message: string
end

local record KmsAccessDeniedException
    message: string
end

local record KmsInvalidStateException
    kmsKeyState: string
    message: string
end

local record KmsThrottlingException
    message: string
end

local record StateMachineDoesNotExist
    message: string
end

local record InvalidArn
    message: string
end

local record ResourceNotFound
    message: string
    resourceName: string
end

local record ValidationException
    message: string
    reason: string
end

local record ExecutionDoesNotExist
    message: string
end

local record InvalidArn
    message: string
end

local record KmsAccessDeniedException
    message: string
end

local record KmsInvalidStateException
    kmsKeyState: string
    message: string
end

local record KmsThrottlingException
    message: string
end

local record ActivityDoesNotExist
    message: string
end

local record ActivityWorkerLimitExceeded
    message: string
end

local record InvalidArn
    message: string
end

local record KmsAccessDeniedException
    message: string
end

local record KmsInvalidStateException
    kmsKeyState: string
    message: string
end

local record KmsThrottlingException
    message: string
end

local record ExecutionDoesNotExist
    message: string
end

local record InvalidArn
    message: string
end

local record InvalidToken
    message: string
end

local record KmsAccessDeniedException
    message: string
end

local record KmsInvalidStateException
    kmsKeyState: string
    message: string
end

local record KmsThrottlingException
    message: string
end

local record InvalidToken
    message: string
end

local record InvalidArn
    message: string
end

local record InvalidToken
    message: string
end

local record ResourceNotFound
    message: string
    resourceName: string
end

local record StateMachineDoesNotExist
    message: string
end

local record StateMachineTypeNotSupported
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record ExecutionDoesNotExist
    message: string
end

local record InvalidArn
    message: string
end

local record InvalidToken
    message: string
end

local record InvalidArn
    message: string
end

local record InvalidToken
    message: string
end

local record ResourceNotFound
    message: string
    resourceName: string
end

local record StateMachineDeleting
    message: string
end

local record StateMachineDoesNotExist
    message: string
end

local record InvalidToken
    message: string
end

local record InvalidArn
    message: string
end

local record InvalidToken
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record InvalidArn
    message: string
end

local record ResourceNotFound
    message: string
    resourceName: string
end

local record ConflictException
    message: string
end

local record InvalidArn
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record StateMachineDeleting
    message: string
end

local record StateMachineDoesNotExist
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record ExecutionDoesNotExist
    message: string
end

local record ExecutionLimitExceeded
    message: string
end

local record ExecutionNotRedrivable
    message: string
end

local record InvalidArn
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record InvalidToken
    message: string
end

local record KmsAccessDeniedException
    message: string
end

local record KmsInvalidStateException
    kmsKeyState: string
    message: string
end

local record KmsThrottlingException
    message: string
end

local record TaskDoesNotExist
    message: string
end

local record TaskTimedOut
    message: string
end

local record InvalidToken
    message: string
end

local record TaskDoesNotExist
    message: string
end

local record TaskTimedOut
    message: string
end

local record InvalidOutput
    message: string
end

local record InvalidToken
    message: string
end

local record KmsAccessDeniedException
    message: string
end

local record KmsInvalidStateException
    kmsKeyState: string
    message: string
end

local record KmsThrottlingException
    message: string
end

local record TaskDoesNotExist
    message: string
end

local record TaskTimedOut
    message: string
end

local record ExecutionAlreadyExists
    message: string
end

local record ExecutionLimitExceeded
    message: string
end

local record InvalidArn
    message: string
end

local record InvalidExecutionInput
    message: string
end

local record InvalidName
    message: string
end

local record KmsAccessDeniedException
    message: string
end

local record KmsInvalidStateException
    kmsKeyState: string
    message: string
end

local record KmsThrottlingException
    message: string
end

local record StateMachineDeleting
    message: string
end

local record StateMachineDoesNotExist
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record InvalidArn
    message: string
end

local record InvalidExecutionInput
    message: string
end

local record InvalidName
    message: string
end

local record KmsAccessDeniedException
    message: string
end

local record KmsInvalidStateException
    kmsKeyState: string
    message: string
end

local record KmsThrottlingException
    message: string
end

local record StateMachineDeleting
    message: string
end

local record StateMachineDoesNotExist
    message: string
end

local record StateMachineTypeNotSupported
    message: string
end

local record ExecutionDoesNotExist
    message: string
end

local record InvalidArn
    message: string
end

local record KmsAccessDeniedException
    message: string
end

local record KmsInvalidStateException
    kmsKeyState: string
    message: string
end

local record KmsThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record InvalidArn
    message: string
end

local record ResourceNotFound
    message: string
    resourceName: string
end

local record TooManyTags
    message: string
    resourceName: string
end

local record InvalidArn
    message: string
end

local record InvalidDefinition
    message: string
end

local record InvalidExecutionInput
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record InvalidArn
    message: string
end

local record ResourceNotFound
    message: string
    resourceName: string
end

local record InvalidArn
    message: string
end

local record ResourceNotFound
    message: string
    resourceName: string
end

local record ValidationException
    message: string
    reason: string
end

local record ConflictException
    message: string
end

local record InvalidArn
    message: string
end

local record InvalidDefinition
    message: string
end

local record InvalidEncryptionConfiguration
    message: string
end

local record InvalidLoggingConfiguration
    message: string
end

local record InvalidTracingConfiguration
    message: string
end

local record KmsAccessDeniedException
    message: string
end

local record KmsThrottlingException
    message: string
end

local record MissingRequiredParameter
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record StateMachineDeleting
    message: string
end

local record StateMachineDoesNotExist
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record ConflictException
    message: string
end

local record InvalidArn
    message: string
end

local record ResourceNotFound
    message: string
    resourceName: string
end

local record StateMachineDeleting
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record ValidationException
    message: string
    reason: string
end

local type ExecutionRedriveFilter = "REDRIVEN" | "NOT_REDRIVEN"

local type ExecutionRedriveStatus = "REDRIVABLE" | "NOT_REDRIVABLE" | "REDRIVABLE_BY_MAP_RUN"

local type ExecutionStatus = "RUNNING" | "SUCCEEDED" | "FAILED" | "TIMED_OUT" | "ABORTED" | "PENDING_REDRIVE"

local type IncludedData = "ALL_DATA" | "METADATA_ONLY"

local type InspectionLevel = "INFO" | "DEBUG" | "TRACE"

local type MapRunStatus = "RUNNING" | "SUCCEEDED" | "FAILED" | "ABORTED"

local type StateMachineStatus = "ACTIVE" | "DELETING"

local type StateMachineType = "STANDARD" | "EXPRESS"

local type SyncExecutionStatus = "SUCCEEDED" | "FAILED" | "TIMED_OUT"

local type TestExecutionStatus = "SUCCEEDED" | "FAILED" | "RETRIABLE" | "CAUGHT_ERROR"

local type ValidateStateMachineDefinitionResultCode = "OK" | "FAIL"

local type ValidateStateMachineDefinitionSeverity = "ERROR" | "WARNING"

local record M
    CreateActivityInput: CreateActivityInput
    CreateActivityOutput: CreateActivityOutput
    CreateStateMachineInput: CreateStateMachineInput
    CreateStateMachineOutput: CreateStateMachineOutput
    CreateStateMachineAliasInput: CreateStateMachineAliasInput
    CreateStateMachineAliasOutput: CreateStateMachineAliasOutput
    DeleteActivityInput: DeleteActivityInput
    DeleteActivityOutput: DeleteActivityOutput
    DeleteStateMachineInput: DeleteStateMachineInput
    DeleteStateMachineOutput: DeleteStateMachineOutput
    DeleteStateMachineAliasInput: DeleteStateMachineAliasInput
    DeleteStateMachineAliasOutput: DeleteStateMachineAliasOutput
    DeleteStateMachineVersionInput: DeleteStateMachineVersionInput
    DeleteStateMachineVersionOutput: DeleteStateMachineVersionOutput
    DescribeActivityInput: DescribeActivityInput
    DescribeActivityOutput: DescribeActivityOutput
    DescribeExecutionInput: DescribeExecutionInput
    DescribeExecutionOutput: DescribeExecutionOutput
    DescribeMapRunInput: DescribeMapRunInput
    DescribeMapRunOutput: DescribeMapRunOutput
    DescribeStateMachineInput: DescribeStateMachineInput
    DescribeStateMachineOutput: DescribeStateMachineOutput
    DescribeStateMachineAliasInput: DescribeStateMachineAliasInput
    DescribeStateMachineAliasOutput: DescribeStateMachineAliasOutput
    DescribeStateMachineForExecutionInput: DescribeStateMachineForExecutionInput
    DescribeStateMachineForExecutionOutput: DescribeStateMachineForExecutionOutput
    GetActivityTaskInput: GetActivityTaskInput
    GetActivityTaskOutput: GetActivityTaskOutput
    GetExecutionHistoryInput: GetExecutionHistoryInput
    GetExecutionHistoryOutput: GetExecutionHistoryOutput
    ListActivitiesInput: ListActivitiesInput
    ListActivitiesOutput: ListActivitiesOutput
    ListExecutionsInput: ListExecutionsInput
    ListExecutionsOutput: ListExecutionsOutput
    ListMapRunsInput: ListMapRunsInput
    ListMapRunsOutput: ListMapRunsOutput
    ListStateMachineAliasesInput: ListStateMachineAliasesInput
    ListStateMachineAliasesOutput: ListStateMachineAliasesOutput
    ListStateMachinesInput: ListStateMachinesInput
    ListStateMachinesOutput: ListStateMachinesOutput
    ListStateMachineVersionsInput: ListStateMachineVersionsInput
    ListStateMachineVersionsOutput: ListStateMachineVersionsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PublishStateMachineVersionInput: PublishStateMachineVersionInput
    PublishStateMachineVersionOutput: PublishStateMachineVersionOutput
    RedriveExecutionInput: RedriveExecutionInput
    RedriveExecutionOutput: RedriveExecutionOutput
    SendTaskFailureInput: SendTaskFailureInput
    SendTaskFailureOutput: SendTaskFailureOutput
    SendTaskHeartbeatInput: SendTaskHeartbeatInput
    SendTaskHeartbeatOutput: SendTaskHeartbeatOutput
    SendTaskSuccessInput: SendTaskSuccessInput
    SendTaskSuccessOutput: SendTaskSuccessOutput
    StartExecutionInput: StartExecutionInput
    StartExecutionOutput: StartExecutionOutput
    StartSyncExecutionInput: StartSyncExecutionInput
    StartSyncExecutionOutput: StartSyncExecutionOutput
    StopExecutionInput: StopExecutionInput
    StopExecutionOutput: StopExecutionOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TestStateInput: TestStateInput
    TestStateOutput: TestStateOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateMapRunInput: UpdateMapRunInput
    UpdateMapRunOutput: UpdateMapRunOutput
    UpdateStateMachineInput: UpdateStateMachineInput
    UpdateStateMachineOutput: UpdateStateMachineOutput
    UpdateStateMachineAliasInput: UpdateStateMachineAliasInput
    UpdateStateMachineAliasOutput: UpdateStateMachineAliasOutput
    ValidateStateMachineDefinitionInput: ValidateStateMachineDefinitionInput
    ValidateStateMachineDefinitionOutput: ValidateStateMachineDefinitionOutput
end

return M
