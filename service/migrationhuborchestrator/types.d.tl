local record CreateTemplateInput
    templateName: string
    templateDescription: string
    templateSource: TemplateSource
    clientToken: string
    tags: {string : string}
end

local record CreateTemplateOutput
    templateId: string
    templateArn: string
    tags: {string : string}
end

local record CreateWorkflowInput
    name: string
    description: string
    templateId: string
    applicationConfigurationId: string
    inputParameters: {string : StepInput}
    stepTargets: {string}
    tags: {string : string}
end

local record CreateWorkflowOutput
    id: string
    arn: string
    name: string
    description: string
    templateId: string
    adsApplicationConfigurationId: string
    workflowInputs: {string : StepInput}
    stepTargets: {string}
    status: string
    creationTime: number
    tags: {string : string}
end

local record CreateWorkflowStepInput
    name: string
    stepGroupId: string
    workflowId: string
    stepActionType: string
    description: string
    workflowStepAutomationConfiguration: WorkflowStepAutomationConfiguration
    stepTarget: {string}
    outputs: {WorkflowStepOutput}
    previous: {string}
    next: {string}
end

local record CreateWorkflowStepOutput
    id: string
    stepGroupId: string
    workflowId: string
    name: string
end

local record CreateWorkflowStepGroupInput
    workflowId: string
    name: string
    description: string
    next: {string}
    previous: {string}
end

local record CreateWorkflowStepGroupOutput
    workflowId: string
    name: string
    id: string
    description: string
    tools: {Tool}
    next: {string}
    previous: {string}
    creationTime: number
end

local record DeleteTemplateInput
    id: string
end

local record DeleteTemplateOutput
end

local record DeleteWorkflowInput
    id: string
end

local record DeleteWorkflowOutput
    id: string
    arn: string
    status: string
end

local record DeleteWorkflowStepInput
    id: string
    stepGroupId: string
    workflowId: string
end

local record DeleteWorkflowStepOutput
end

local record DeleteWorkflowStepGroupInput
    workflowId: string
    id: string
end

local record DeleteWorkflowStepGroupOutput
end

local record GetTemplateInput
    id: string
end

local record GetTemplateOutput
    id: string
    templateArn: string
    name: string
    description: string
    inputs: {TemplateInput}
    tools: {Tool}
    creationTime: number
    owner: string
    status: string
    statusMessage: string
    templateClass: string
    tags: {string : string}
end

local record GetTemplateStepInput
    id: string
    templateId: string
    stepGroupId: string
end

local record GetTemplateStepOutput
    id: string
    stepGroupId: string
    templateId: string
    name: string
    description: string
    stepActionType: string
    creationTime: string
    previous: {string}
    next: {string}
    outputs: {StepOutput}
    stepAutomationConfiguration: StepAutomationConfiguration
end

local record GetTemplateStepGroupInput
    templateId: string
    id: string
end

local record GetTemplateStepGroupOutput
    templateId: string
    id: string
    name: string
    description: string
    status: string
    creationTime: number
    lastModifiedTime: number
    tools: {Tool}
    previous: {string}
    next: {string}
end

local record GetWorkflowInput
    id: string
end

local record GetWorkflowOutput
    id: string
    arn: string
    name: string
    description: string
    templateId: string
    adsApplicationConfigurationId: string
    adsApplicationName: string
    status: string
    statusMessage: string
    creationTime: number
    lastStartTime: number
    lastStopTime: number
    lastModifiedTime: number
    endTime: number
    tools: {Tool}
    totalSteps: number
    completedSteps: number
    workflowInputs: {string : StepInput}
    tags: {string : string}
    workflowBucket: string
end

local record GetWorkflowStepInput
    workflowId: string
    stepGroupId: string
    id: string
end

local record GetWorkflowStepOutput
    name: string
    stepGroupId: string
    workflowId: string
    stepId: string
    description: string
    stepActionType: string
    owner: string
    workflowStepAutomationConfiguration: WorkflowStepAutomationConfiguration
    stepTarget: {string}
    outputs: {WorkflowStepOutput}
    previous: {string}
    next: {string}
    status: string
    statusMessage: string
    scriptOutputLocation: string
    creationTime: number
    lastStartTime: number
    endTime: number
    noOfSrvCompleted: number
    noOfSrvFailed: number
    totalNoOfSrv: number
end

local record GetWorkflowStepGroupInput
    id: string
    workflowId: string
end

local record GetWorkflowStepGroupOutput
    id: string
    workflowId: string
    name: string
    description: string
    status: string
    owner: string
    creationTime: number
    lastModifiedTime: number
    endTime: number
    tools: {Tool}
    previous: {string}
    next: {string}
end

local record ListPluginsInput
    maxResults: number
    nextToken: string
end

local record ListPluginsOutput
    nextToken: string
    plugins: {PluginSummary}
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListTemplatesInput
    maxResults: number
    nextToken: string
    name: string
end

local record ListTemplatesOutput
    nextToken: string
    templateSummary: {TemplateSummary}
end

local record ListTemplateStepGroupsInput
    maxResults: number
    nextToken: string
    templateId: string
end

local record ListTemplateStepGroupsOutput
    nextToken: string
    templateStepGroupSummary: {TemplateStepGroupSummary}
end

local record ListTemplateStepsInput
    maxResults: number
    nextToken: string
    templateId: string
    stepGroupId: string
end

local record ListTemplateStepsOutput
    nextToken: string
    templateStepSummaryList: {TemplateStepSummary}
end

local record ListWorkflowsInput
    maxResults: number
    nextToken: string
    templateId: string
    adsApplicationConfigurationName: string
    status: string
    name: string
end

local record ListWorkflowsOutput
    nextToken: string
    migrationWorkflowSummary: {MigrationWorkflowSummary}
end

local record ListWorkflowStepGroupsInput
    nextToken: string
    maxResults: number
    workflowId: string
end

local record ListWorkflowStepGroupsOutput
    nextToken: string
    workflowStepGroupsSummary: {WorkflowStepGroupSummary}
end

local record ListWorkflowStepsInput
    nextToken: string
    maxResults: number
    workflowId: string
    stepGroupId: string
end

local record ListWorkflowStepsOutput
    nextToken: string
    workflowStepsSummary: {WorkflowStepSummary}
end

local record RetryWorkflowStepInput
    workflowId: string
    stepGroupId: string
    id: string
end

local record RetryWorkflowStepOutput
    stepGroupId: string
    workflowId: string
    id: string
    status: string
end

local record StartWorkflowInput
    id: string
end

local record StartWorkflowOutput
    id: string
    arn: string
    status: string
    statusMessage: string
    lastStartTime: number
end

local record StopWorkflowInput
    id: string
end

local record StopWorkflowOutput
    id: string
    arn: string
    status: string
    statusMessage: string
    lastStopTime: number
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

local record UpdateTemplateInput
    id: string
    templateName: string
    templateDescription: string
    clientToken: string
end

local record UpdateTemplateOutput
    templateId: string
    templateArn: string
    tags: {string : string}
end

local record UpdateWorkflowInput
    id: string
    name: string
    description: string
    inputParameters: {string : StepInput}
    stepTargets: {string}
end

local record UpdateWorkflowOutput
    id: string
    arn: string
    name: string
    description: string
    templateId: string
    adsApplicationConfigurationId: string
    workflowInputs: {string : StepInput}
    stepTargets: {string}
    status: string
    creationTime: number
    lastModifiedTime: number
    tags: {string : string}
end

local record UpdateWorkflowStepInput
    id: string
    stepGroupId: string
    workflowId: string
    name: string
    description: string
    stepActionType: string
    workflowStepAutomationConfiguration: WorkflowStepAutomationConfiguration
    stepTarget: {string}
    outputs: {WorkflowStepOutput}
    previous: {string}
    next: {string}
    status: string
end

local record UpdateWorkflowStepOutput
    id: string
    stepGroupId: string
    workflowId: string
    name: string
end

local record UpdateWorkflowStepGroupInput
    workflowId: string
    id: string
    name: string
    description: string
    next: {string}
    previous: {string}
end

local record UpdateWorkflowStepGroupOutput
    workflowId: string
    name: string
    id: string
    description: string
    tools: {Tool}
    next: {string}
    previous: {string}
    lastModifiedTime: number
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
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
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

local record ThrottlingException
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

local record ValidationException
    message: string
end

local record ResourceNotFoundException
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

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
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

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record ResourceNotFoundException
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

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
end

local record M
    CreateTemplateInput: CreateTemplateInput
    CreateTemplateOutput: CreateTemplateOutput
    CreateWorkflowInput: CreateWorkflowInput
    CreateWorkflowOutput: CreateWorkflowOutput
    CreateWorkflowStepInput: CreateWorkflowStepInput
    CreateWorkflowStepOutput: CreateWorkflowStepOutput
    CreateWorkflowStepGroupInput: CreateWorkflowStepGroupInput
    CreateWorkflowStepGroupOutput: CreateWorkflowStepGroupOutput
    DeleteTemplateInput: DeleteTemplateInput
    DeleteTemplateOutput: DeleteTemplateOutput
    DeleteWorkflowInput: DeleteWorkflowInput
    DeleteWorkflowOutput: DeleteWorkflowOutput
    DeleteWorkflowStepInput: DeleteWorkflowStepInput
    DeleteWorkflowStepOutput: DeleteWorkflowStepOutput
    DeleteWorkflowStepGroupInput: DeleteWorkflowStepGroupInput
    DeleteWorkflowStepGroupOutput: DeleteWorkflowStepGroupOutput
    GetTemplateInput: GetTemplateInput
    GetTemplateOutput: GetTemplateOutput
    GetTemplateStepInput: GetTemplateStepInput
    GetTemplateStepOutput: GetTemplateStepOutput
    GetTemplateStepGroupInput: GetTemplateStepGroupInput
    GetTemplateStepGroupOutput: GetTemplateStepGroupOutput
    GetWorkflowInput: GetWorkflowInput
    GetWorkflowOutput: GetWorkflowOutput
    GetWorkflowStepInput: GetWorkflowStepInput
    GetWorkflowStepOutput: GetWorkflowStepOutput
    GetWorkflowStepGroupInput: GetWorkflowStepGroupInput
    GetWorkflowStepGroupOutput: GetWorkflowStepGroupOutput
    ListPluginsInput: ListPluginsInput
    ListPluginsOutput: ListPluginsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTemplatesInput: ListTemplatesInput
    ListTemplatesOutput: ListTemplatesOutput
    ListTemplateStepGroupsInput: ListTemplateStepGroupsInput
    ListTemplateStepGroupsOutput: ListTemplateStepGroupsOutput
    ListTemplateStepsInput: ListTemplateStepsInput
    ListTemplateStepsOutput: ListTemplateStepsOutput
    ListWorkflowsInput: ListWorkflowsInput
    ListWorkflowsOutput: ListWorkflowsOutput
    ListWorkflowStepGroupsInput: ListWorkflowStepGroupsInput
    ListWorkflowStepGroupsOutput: ListWorkflowStepGroupsOutput
    ListWorkflowStepsInput: ListWorkflowStepsInput
    ListWorkflowStepsOutput: ListWorkflowStepsOutput
    RetryWorkflowStepInput: RetryWorkflowStepInput
    RetryWorkflowStepOutput: RetryWorkflowStepOutput
    StartWorkflowInput: StartWorkflowInput
    StartWorkflowOutput: StartWorkflowOutput
    StopWorkflowInput: StopWorkflowInput
    StopWorkflowOutput: StopWorkflowOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateTemplateInput: UpdateTemplateInput
    UpdateTemplateOutput: UpdateTemplateOutput
    UpdateWorkflowInput: UpdateWorkflowInput
    UpdateWorkflowOutput: UpdateWorkflowOutput
    UpdateWorkflowStepInput: UpdateWorkflowStepInput
    UpdateWorkflowStepOutput: UpdateWorkflowStepOutput
    UpdateWorkflowStepGroupInput: UpdateWorkflowStepGroupInput
    UpdateWorkflowStepGroupOutput: UpdateWorkflowStepGroupOutput
end

return M
