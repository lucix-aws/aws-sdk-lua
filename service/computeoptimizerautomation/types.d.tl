local record AssociateAccountsInput
    accountIds: {string}
    clientToken: string
end

local record AssociateAccountsOutput
    accountIds: {string}
    errors: {string}
end

local record CreateAutomationRuleInput
    name: string
    description: string
    ruleType: string
    organizationConfiguration: OrganizationConfiguration
    priority: string
    recommendedActionTypes: {string}
    criteria: Criteria
    schedule: Schedule
    status: string
    tags: {Tag}
    clientToken: string
end

local record CreateAutomationRuleOutput
    ruleArn: string
    ruleId: string
    name: string
    description: string
    ruleType: string
    ruleRevision: number
    organizationConfiguration: OrganizationConfiguration
    priority: string
    recommendedActionTypes: {string}
    criteria: Criteria
    schedule: Schedule
    status: string
    tags: {Tag}
    createdTimestamp: number
end

local record DeleteAutomationRuleInput
    ruleArn: string
    ruleRevision: number
    clientToken: string
end

local record DeleteAutomationRuleOutput
end

local record DisassociateAccountsInput
    accountIds: {string}
    clientToken: string
end

local record DisassociateAccountsOutput
    accountIds: {string}
    errors: {string}
end

local record GetAutomationEventInput
    eventId: string
end

local record GetAutomationEventOutput
    eventId: string
    eventDescription: string
    eventType: string
    eventStatus: string
    eventStatusReason: string
    resourceArn: string
    resourceId: string
    recommendedActionId: string
    accountId: string
    region: string
    ruleId: string
    resourceType: string
    createdTimestamp: number
    completedTimestamp: number
    estimatedMonthlySavings: EstimatedMonthlySavings
end

local record GetAutomationRuleInput
    ruleArn: string
end

local record GetAutomationRuleOutput
    ruleArn: string
    ruleId: string
    name: string
    description: string
    ruleType: string
    ruleRevision: number
    accountId: string
    organizationConfiguration: OrganizationConfiguration
    priority: string
    recommendedActionTypes: {string}
    criteria: Criteria
    schedule: Schedule
    status: string
    tags: {Tag}
    createdTimestamp: number
    lastUpdatedTimestamp: number
end

local record GetEnrollmentConfigurationInput
end

local record GetEnrollmentConfigurationOutput
    status: string
    statusReason: string
    organizationRuleMode: string
    lastUpdatedTimestamp: number
end

local record ListAccountsInput
    maxResults: number
    nextToken: string
end

local record ListAccountsOutput
    accounts: {AccountInfo}
    nextToken: string
end

local record ListAutomationEventsInput
    filters: {AutomationEventFilter}
    startTimeInclusive: number
    endTimeExclusive: number
    maxResults: number
    nextToken: string
end

local record ListAutomationEventsOutput
    automationEvents: {AutomationEvent}
    nextToken: string
end

local record ListAutomationEventStepsInput
    eventId: string
    maxResults: number
    nextToken: string
end

local record ListAutomationEventStepsOutput
    automationEventSteps: {AutomationEventStep}
    nextToken: string
end

local record ListAutomationEventSummariesInput
    filters: {AutomationEventFilter}
    startDateInclusive: string
    endDateExclusive: string
    maxResults: number
    nextToken: string
end

local record ListAutomationEventSummariesOutput
    automationEventSummaries: {AutomationEventSummary}
    nextToken: string
end

local record ListAutomationRulePreviewInput
    ruleType: string
    organizationScope: OrganizationScope
    recommendedActionTypes: {string}
    criteria: Criteria
    maxResults: number
    nextToken: string
end

local record ListAutomationRulePreviewOutput
    previewResults: {PreviewResult}
    nextToken: string
end

local record ListAutomationRulePreviewSummariesInput
    ruleType: string
    organizationScope: OrganizationScope
    recommendedActionTypes: {string}
    criteria: Criteria
    maxResults: number
    nextToken: string
end

local record ListAutomationRulePreviewSummariesOutput
    previewResultSummaries: {PreviewResultSummary}
    nextToken: string
end

local record ListAutomationRulesInput
    filters: {Filter}
    maxResults: number
    nextToken: string
end

local record ListAutomationRulesOutput
    automationRules: {AutomationRule}
    nextToken: string
end

local record ListRecommendedActionsInput
    filters: {RecommendedActionFilter}
    maxResults: number
    nextToken: string
end

local record ListRecommendedActionsOutput
    recommendedActions: {RecommendedAction}
    nextToken: string
end

local record ListRecommendedActionSummariesInput
    filters: {RecommendedActionFilter}
    maxResults: number
    nextToken: string
end

local record ListRecommendedActionSummariesOutput
    recommendedActionSummaries: {RecommendedActionSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
end

local record RollbackAutomationEventInput
    eventId: string
    clientToken: string
end

local record RollbackAutomationEventOutput
    eventId: string
    eventStatus: string
end

local record StartAutomationEventInput
    recommendedActionId: string
    clientToken: string
end

local record StartAutomationEventOutput
    recommendedActionId: string
    eventId: string
    eventStatus: string
end

local record TagResourceInput
    resourceArn: string
    ruleRevision: number
    tags: {Tag}
    clientToken: string
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    ruleRevision: number
    tagKeys: {string}
    clientToken: string
end

local record UntagResourceOutput
end

local record UpdateAutomationRuleInput
    ruleArn: string
    ruleRevision: number
    name: string
    description: string
    ruleType: string
    organizationConfiguration: OrganizationConfiguration
    priority: string
    recommendedActionTypes: {string}
    criteria: Criteria
    schedule: Schedule
    status: string
    clientToken: string
end

local record UpdateAutomationRuleOutput
    ruleArn: string
    ruleRevision: number
    name: string
    description: string
    ruleType: string
    organizationConfiguration: OrganizationConfiguration
    priority: string
    recommendedActionTypes: {string}
    criteria: Criteria
    schedule: Schedule
    status: string
    createdTimestamp: number
    lastUpdatedTimestamp: number
end

local record UpdateEnrollmentConfigurationInput
    status: string
    clientToken: string
end

local record UpdateEnrollmentConfigurationOutput
    status: string
    statusReason: string
    lastUpdatedTimestamp: number
end

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotencyTokenInUseException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record NotManagementAccountException
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotencyTokenInUseException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
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

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotencyTokenInUseException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
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

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotencyTokenInUseException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record NotManagementAccountException
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
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

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
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

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
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

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record NotManagementAccountException
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
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

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
    message: string
end

local record ServiceUnavailableException
    message: string
end

local record ThrottlingException
    message: string
end

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
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

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotencyTokenInUseException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
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

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotencyTokenInUseException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
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

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotencyTokenInUseException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
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

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotencyTokenInUseException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
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

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotencyTokenInUseException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record OptInRequiredException
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

local record AccessDeniedException
    message: string
end

local record ForbiddenException
    message: string
end

local record IdempotencyTokenInUseException
    message: string
end

local record IdempotentParameterMismatchException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterValueException
    message: string
end

local record NotManagementAccountException
    message: string
end

local record OptInRequiredException
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

local type OrganizationRuleMode = "AnyAllowed" | "NoneAllowed"

local type EventStatus = "Ready" | "InProgress" | "Complete" | "Failed" | "Cancelled" | "RollbackReady" | "RollbackInProgress" | "RollbackComplete" | "RollbackFailed"

local type ResourceType = "EbsVolume"

local type RuleStatus = "Active" | "Inactive"

local type EventType = "SnapshotAndDeleteUnattachedEbsVolume" | "UpgradeEbsVolumeType"

local type EnrollmentStatus = "Active" | "Inactive" | "Pending" | "Failed"

local type RuleType = "OrganizationRule" | "AccountRule"

local record M
    AssociateAccountsInput: AssociateAccountsInput
    AssociateAccountsOutput: AssociateAccountsOutput
    CreateAutomationRuleInput: CreateAutomationRuleInput
    CreateAutomationRuleOutput: CreateAutomationRuleOutput
    DeleteAutomationRuleInput: DeleteAutomationRuleInput
    DeleteAutomationRuleOutput: DeleteAutomationRuleOutput
    DisassociateAccountsInput: DisassociateAccountsInput
    DisassociateAccountsOutput: DisassociateAccountsOutput
    GetAutomationEventInput: GetAutomationEventInput
    GetAutomationEventOutput: GetAutomationEventOutput
    GetAutomationRuleInput: GetAutomationRuleInput
    GetAutomationRuleOutput: GetAutomationRuleOutput
    GetEnrollmentConfigurationInput: GetEnrollmentConfigurationInput
    GetEnrollmentConfigurationOutput: GetEnrollmentConfigurationOutput
    ListAccountsInput: ListAccountsInput
    ListAccountsOutput: ListAccountsOutput
    ListAutomationEventsInput: ListAutomationEventsInput
    ListAutomationEventsOutput: ListAutomationEventsOutput
    ListAutomationEventStepsInput: ListAutomationEventStepsInput
    ListAutomationEventStepsOutput: ListAutomationEventStepsOutput
    ListAutomationEventSummariesInput: ListAutomationEventSummariesInput
    ListAutomationEventSummariesOutput: ListAutomationEventSummariesOutput
    ListAutomationRulePreviewInput: ListAutomationRulePreviewInput
    ListAutomationRulePreviewOutput: ListAutomationRulePreviewOutput
    ListAutomationRulePreviewSummariesInput: ListAutomationRulePreviewSummariesInput
    ListAutomationRulePreviewSummariesOutput: ListAutomationRulePreviewSummariesOutput
    ListAutomationRulesInput: ListAutomationRulesInput
    ListAutomationRulesOutput: ListAutomationRulesOutput
    ListRecommendedActionsInput: ListRecommendedActionsInput
    ListRecommendedActionsOutput: ListRecommendedActionsOutput
    ListRecommendedActionSummariesInput: ListRecommendedActionSummariesInput
    ListRecommendedActionSummariesOutput: ListRecommendedActionSummariesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RollbackAutomationEventInput: RollbackAutomationEventInput
    RollbackAutomationEventOutput: RollbackAutomationEventOutput
    StartAutomationEventInput: StartAutomationEventInput
    StartAutomationEventOutput: StartAutomationEventOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAutomationRuleInput: UpdateAutomationRuleInput
    UpdateAutomationRuleOutput: UpdateAutomationRuleOutput
    UpdateEnrollmentConfigurationInput: UpdateEnrollmentConfigurationInput
    UpdateEnrollmentConfigurationOutput: UpdateEnrollmentConfigurationOutput
end

return M
