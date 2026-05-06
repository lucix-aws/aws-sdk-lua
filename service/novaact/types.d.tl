local record CreateActInput
    workflowDefinitionName: string
    workflowRunId: string
    sessionId: string
    task: string
    toolSpecs: {ToolSpec}
    clientToken: string
end

local record CreateActOutput
    actId: string
    status: string
end

local record CreateSessionInput
    workflowDefinitionName: string
    workflowRunId: string
    clientToken: string
end

local record CreateSessionOutput
    sessionId: string
end

local record CreateWorkflowDefinitionInput
    name: string
    description: string
    exportConfig: WorkflowExportConfig
    clientToken: string
end

local record CreateWorkflowDefinitionOutput
    status: string
end

local record CreateWorkflowRunInput
    workflowDefinitionName: string
    modelId: string
    clientToken: string
    logGroupName: string
    clientInfo: ClientInfo
end

local record CreateWorkflowRunOutput
    workflowRunId: string
    status: string
end

local record DeleteWorkflowDefinitionInput
    workflowDefinitionName: string
end

local record DeleteWorkflowDefinitionOutput
    status: string
end

local record DeleteWorkflowRunInput
    workflowDefinitionName: string
    workflowRunId: string
end

local record DeleteWorkflowRunOutput
    status: string
end

local record GetWorkflowDefinitionInput
    workflowDefinitionName: string
end

local record GetWorkflowDefinitionOutput
    name: string
    arn: string
    createdAt: number
    description: string
    exportConfig: WorkflowExportConfig
    status: string
end

local record GetWorkflowRunInput
    workflowDefinitionName: string
    workflowRunId: string
end

local record GetWorkflowRunOutput
    workflowRunArn: string
    workflowRunId: string
    status: string
    startedAt: number
    endedAt: number
    modelId: string
    logGroupName: string
end

local record InvokeActStepInput
    workflowDefinitionName: string
    workflowRunId: string
    sessionId: string
    actId: string
    callResults: {CallResult}
    previousStepId: string
end

local record InvokeActStepOutput
    calls: {Call}
    stepId: string
end

local record ListActsInput
    workflowDefinitionName: string
    workflowRunId: string
    sessionId: string
    maxResults: number
    nextToken: string
    sortOrder: string
end

local record ListActsOutput
    actSummaries: {ActSummary}
    nextToken: string
end

local record ListModelsInput
    clientCompatibilityVersion: number
end

local record ListModelsOutput
    modelSummaries: {ModelSummary}
    modelAliases: {ModelAlias}
    compatibilityInformation: CompatibilityInformation
end

local record ListSessionsInput
    workflowDefinitionName: string
    workflowRunId: string
    maxResults: number
    nextToken: string
    sortOrder: string
end

local record ListSessionsOutput
    sessionSummaries: {SessionSummary}
    nextToken: string
end

local record ListWorkflowDefinitionsInput
    maxResults: number
    nextToken: string
    sortOrder: string
end

local record ListWorkflowDefinitionsOutput
    workflowDefinitionSummaries: {WorkflowDefinitionSummary}
    nextToken: string
end

local record ListWorkflowRunsInput
    workflowDefinitionName: string
    maxResults: number
    nextToken: string
    sortOrder: string
end

local record ListWorkflowRunsOutput
    workflowRunSummaries: {WorkflowRunSummary}
    nextToken: string
end

local record UpdateActInput
    workflowDefinitionName: string
    workflowRunId: string
    sessionId: string
    actId: string
    status: string
    error: ActError
end

local record UpdateActOutput
end

local record UpdateWorkflowRunInput
    workflowDefinitionName: string
    workflowRunId: string
    status: string
end

local record UpdateWorkflowRunOutput
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
    retryAfterSeconds: number
    reason: string
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
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
    reason: string
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
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
    reason: string
end

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
    reason: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
    reason: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
    reason: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
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
    retryAfterSeconds: number
    reason: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
    reason: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
    reason: string
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
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
    reason: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
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
    retryAfterSeconds: number
    reason: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
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
    retryAfterSeconds: number
    reason: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
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
    retryAfterSeconds: number
    reason: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
    reason: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
    reason: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
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
    resourceId: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
    reason: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local type ActStatus = "RUNNING" | "PENDING_CLIENT_ACTION" | "PENDING_HUMAN_ACTION" | "SUCCEEDED" | "FAILED" | "TIMED_OUT"

local type SortOrder = "Ascending" | "Descending"

local type WorkflowDefinitionStatus = "ACTIVE" | "DELETING"

local type WorkflowRunStatus = "RUNNING" | "SUCCEEDED" | "FAILED" | "TIMED_OUT" | "DELETING"

local record M
    CreateActInput: CreateActInput
    CreateActOutput: CreateActOutput
    CreateSessionInput: CreateSessionInput
    CreateSessionOutput: CreateSessionOutput
    CreateWorkflowDefinitionInput: CreateWorkflowDefinitionInput
    CreateWorkflowDefinitionOutput: CreateWorkflowDefinitionOutput
    CreateWorkflowRunInput: CreateWorkflowRunInput
    CreateWorkflowRunOutput: CreateWorkflowRunOutput
    DeleteWorkflowDefinitionInput: DeleteWorkflowDefinitionInput
    DeleteWorkflowDefinitionOutput: DeleteWorkflowDefinitionOutput
    DeleteWorkflowRunInput: DeleteWorkflowRunInput
    DeleteWorkflowRunOutput: DeleteWorkflowRunOutput
    GetWorkflowDefinitionInput: GetWorkflowDefinitionInput
    GetWorkflowDefinitionOutput: GetWorkflowDefinitionOutput
    GetWorkflowRunInput: GetWorkflowRunInput
    GetWorkflowRunOutput: GetWorkflowRunOutput
    InvokeActStepInput: InvokeActStepInput
    InvokeActStepOutput: InvokeActStepOutput
    ListActsInput: ListActsInput
    ListActsOutput: ListActsOutput
    ListModelsInput: ListModelsInput
    ListModelsOutput: ListModelsOutput
    ListSessionsInput: ListSessionsInput
    ListSessionsOutput: ListSessionsOutput
    ListWorkflowDefinitionsInput: ListWorkflowDefinitionsInput
    ListWorkflowDefinitionsOutput: ListWorkflowDefinitionsOutput
    ListWorkflowRunsInput: ListWorkflowRunsInput
    ListWorkflowRunsOutput: ListWorkflowRunsOutput
    UpdateActInput: UpdateActInput
    UpdateActOutput: UpdateActOutput
    UpdateWorkflowRunInput: UpdateWorkflowRunInput
    UpdateWorkflowRunOutput: UpdateWorkflowRunOutput
end

return M
