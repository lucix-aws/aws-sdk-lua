local record ApprovePlanExecutionStepInput
    planArn: string
    executionId: string
    stepName: string
    approval: string
    comment: string
end

local record ApprovePlanExecutionStepOutput
end

local record CancelPlanExecutionInput
    planArn: string
    executionId: string
    comment: string
end

local record CancelPlanExecutionOutput
end

local record CreatePlanInput
    description: string
    workflows: {Workflow}
    executionRole: string
    recoveryTimeObjectiveMinutes: number
    associatedAlarms: {string : AssociatedAlarm}
    triggers: {Trigger}
    reportConfiguration: ReportConfiguration
    name: string
    regions: {string}
    recoveryApproach: string
    primaryRegion: string
    tags: {string : string}
end

local record CreatePlanOutput
    plan: Plan
end

local record DeletePlanInput
    arn: string
end

local record DeletePlanOutput
end

local record GetPlanInput
    arn: string
end

local record GetPlanOutput
    plan: Plan
end

local record GetPlanEvaluationStatusInput
    planArn: string
    maxResults: number
    nextToken: string
end

local record GetPlanEvaluationStatusOutput
    planArn: string
    lastEvaluationTime: number
    lastEvaluatedVersion: string
    region: string
    evaluationState: string
    warnings: {ResourceWarning}
    nextToken: string
end

local record GetPlanExecutionInput
    planArn: string
    executionId: string
    maxResults: number
    nextToken: string
end

local record GetPlanExecutionOutput
    planArn: string
    executionId: string
    version: string
    updatedAt: number
    comment: string
    startTime: number
    endTime: number
    mode: string
    executionState: string
    executionAction: string
    executionRegion: string
    recoveryExecutionId: string
    stepStates: {StepState}
    plan: Plan
    actualRecoveryTime: string
    generatedReportDetails: {GeneratedReport}
    nextToken: string
end

local record GetPlanInRegionInput
    arn: string
end

local record GetPlanInRegionOutput
    plan: Plan
end

local record ListPlanExecutionEventsInput
    planArn: string
    executionId: string
    maxResults: number
    nextToken: string
    name: string
end

local record ListPlanExecutionEventsOutput
    items: {ExecutionEvent}
    nextToken: string
end

local record ListPlanExecutionsInput
    planArn: string
    maxResults: number
    nextToken: string
    state: string
end

local record ListPlanExecutionsOutput
    items: {AbbreviatedExecution}
    nextToken: string
end

local record ListPlansInput
    maxResults: number
    nextToken: string
end

local record ListPlansOutput
    plans: {AbbreviatedPlan}
    nextToken: string
end

local record ListPlansInRegionInput
    maxResults: number
    nextToken: string
end

local record ListPlansInRegionOutput
    plans: {AbbreviatedPlan}
    nextToken: string
end

local record ListRoute53HealthChecksInput
    arn: string
    hostedZoneId: string
    recordName: string
    maxResults: number
    nextToken: string
end

local record ListRoute53HealthChecksOutput
    healthChecks: {Route53HealthCheck}
    nextToken: string
end

local record ListRoute53HealthChecksInRegionInput
    arn: string
    hostedZoneId: string
    recordName: string
    maxResults: number
    nextToken: string
end

local record ListRoute53HealthChecksInRegionOutput
    healthChecks: {Route53HealthCheck}
    nextToken: string
end

local record ListTagsForResourceInput
    arn: string
end

local record ListTagsForResourceOutput
    resourceTags: {string : string}
end

local record StartPlanExecutionInput
    planArn: string
    targetRegion: string
    action: string
    mode: string
    comment: string
    latestVersion: string
    recoveryExecutionId: string
end

local record StartPlanExecutionOutput
    executionId: string
    plan: string
    planVersion: string
    activateRegion: string
    deactivateRegion: string
end

local record TagResourceInput
    arn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    arn: string
    resourceTagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdatePlanInput
    arn: string
    description: string
    workflows: {Workflow}
    executionRole: string
    recoveryTimeObjectiveMinutes: number
    associatedAlarms: {string : AssociatedAlarm}
    triggers: {Trigger}
    reportConfiguration: ReportConfiguration
end

local record UpdatePlanOutput
    plan: Plan
end

local record UpdatePlanExecutionInput
    planArn: string
    executionId: string
    action: string
    comment: string
end

local record UpdatePlanExecutionOutput
end

local record UpdatePlanExecutionStepInput
    planArn: string
    executionId: string
    comment: string
    stepName: string
    actionToTake: string
end

local record UpdatePlanExecutionStepOutput
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record IllegalStateException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
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

local record AccessDeniedException
    message: string
end

local record IllegalArgumentException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record IllegalArgumentException
    message: string
end

local record IllegalStateException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record IllegalStateException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local type RecoveryApproach = "activeActive" | "activePassive"

local type UpdatePlanExecutionStepAction = "switchToUngraceful" | "skip"

local type ExecutionMode = "graceful" | "ungraceful"

local type ExecutionState = "inProgress" | "pausedByFailedStep" | "pausedByOperator" | "completed" | "completedWithExceptions" | "canceled" | "planExecutionTimedOut" | "pendingManualApproval" | "failed" | "pending" | "completedMonitoringApplicationHealth"

local type EvaluationStatus = "passed" | "actionRequired" | "pendingEvaluation" | "unknown"

local type Approval = "approve" | "decline"

local type UpdatePlanExecutionAction = "switchToGraceful" | "switchToUngraceful" | "pause" | "resume"

local type ExecutionAction = "activate" | "deactivate" | "postRecovery"

local record M
    ApprovePlanExecutionStepInput: ApprovePlanExecutionStepInput
    ApprovePlanExecutionStepOutput: ApprovePlanExecutionStepOutput
    CancelPlanExecutionInput: CancelPlanExecutionInput
    CancelPlanExecutionOutput: CancelPlanExecutionOutput
    CreatePlanInput: CreatePlanInput
    CreatePlanOutput: CreatePlanOutput
    DeletePlanInput: DeletePlanInput
    DeletePlanOutput: DeletePlanOutput
    GetPlanInput: GetPlanInput
    GetPlanOutput: GetPlanOutput
    GetPlanEvaluationStatusInput: GetPlanEvaluationStatusInput
    GetPlanEvaluationStatusOutput: GetPlanEvaluationStatusOutput
    GetPlanExecutionInput: GetPlanExecutionInput
    GetPlanExecutionOutput: GetPlanExecutionOutput
    GetPlanInRegionInput: GetPlanInRegionInput
    GetPlanInRegionOutput: GetPlanInRegionOutput
    ListPlanExecutionEventsInput: ListPlanExecutionEventsInput
    ListPlanExecutionEventsOutput: ListPlanExecutionEventsOutput
    ListPlanExecutionsInput: ListPlanExecutionsInput
    ListPlanExecutionsOutput: ListPlanExecutionsOutput
    ListPlansInput: ListPlansInput
    ListPlansOutput: ListPlansOutput
    ListPlansInRegionInput: ListPlansInRegionInput
    ListPlansInRegionOutput: ListPlansInRegionOutput
    ListRoute53HealthChecksInput: ListRoute53HealthChecksInput
    ListRoute53HealthChecksOutput: ListRoute53HealthChecksOutput
    ListRoute53HealthChecksInRegionInput: ListRoute53HealthChecksInRegionInput
    ListRoute53HealthChecksInRegionOutput: ListRoute53HealthChecksInRegionOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    StartPlanExecutionInput: StartPlanExecutionInput
    StartPlanExecutionOutput: StartPlanExecutionOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdatePlanInput: UpdatePlanInput
    UpdatePlanOutput: UpdatePlanOutput
    UpdatePlanExecutionInput: UpdatePlanExecutionInput
    UpdatePlanExecutionOutput: UpdatePlanExecutionOutput
    UpdatePlanExecutionStepInput: UpdatePlanExecutionStepInput
    UpdatePlanExecutionStepOutput: UpdatePlanExecutionStepOutput
end

return M
