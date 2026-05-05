local record AssociateServiceInput
    agentSpaceId: string
    serviceId: string
    configuration: ServiceConfiguration
end

local record AssociateServiceOutput
    association: Association
    webhook: GenericWebhook
end

local record CreateAgentSpaceInput
    name: string
    description: string
    locale: string
    kmsKeyArn: string
    clientToken: string
    tags: {string : string}
end

local record CreateAgentSpaceOutput
    agentSpace: AgentSpace
    tags: {string : string}
end

local record CreateBacklogTaskInput
    agentSpaceId: string
    reference: ReferenceInput
    taskType: string
    title: string
    description: string
    priority: string
    clientToken: string
end

local record CreateBacklogTaskOutput
    task: Task
end

local record CreateChatInput
    agentSpaceId: string
    userId: string
    userType: string
end

local record CreateChatOutput
    executionId: string
    createdAt: number
end

local record CreatePrivateConnectionInput
    name: string
    mode: PrivateConnectionMode
    tags: {string : string}
end

local record CreatePrivateConnectionOutput
    name: string
    type: string
    resourceGatewayId: string
    hostAddress: string
    vpcId: string
    resourceConfigurationId: string
    status: string
    certificateExpiryTime: number
    tags: {string : string}
end

local record DeleteAgentSpaceInput
    agentSpaceId: string
end

local record DeleteAgentSpaceOutput
end

local record DeletePrivateConnectionInput
    name: string
end

local record DeletePrivateConnectionOutput
    name: string
    status: string
end

local record DeregisterServiceInput
    serviceId: string
end

local record DeregisterServiceOutput
end

local record DescribePrivateConnectionInput
    name: string
end

local record DescribePrivateConnectionOutput
    name: string
    type: string
    resourceGatewayId: string
    hostAddress: string
    vpcId: string
    resourceConfigurationId: string
    status: string
    certificateExpiryTime: number
    tags: {string : string}
end

local record DisableOperatorAppInput
    agentSpaceId: string
    authFlow: string
end

local record DisableOperatorAppOutput
end

local record DisassociateServiceInput
    agentSpaceId: string
    associationId: string
end

local record DisassociateServiceOutput
end

local record EnableOperatorAppInput
    agentSpaceId: string
    authFlow: string
    operatorAppRoleArn: string
    idcInstanceArn: string
    issuerUrl: string
    idpClientId: string
    idpClientSecret: string
    provider: string
end

local record EnableOperatorAppOutput
    agentSpaceId: string
    iam: IamAuthConfiguration
    idc: IdcAuthConfiguration
    idp: IdpAuthConfiguration
end

local record GetAccountUsageInput
end

local record GetAccountUsageOutput
    monthlyAccountInvestigationHours: UsageMetric
    monthlyAccountEvaluationHours: UsageMetric
    monthlyAccountSystemLearningHours: UsageMetric
    monthlyAccountOnDemandHours: UsageMetric
    usagePeriodStartTime: number
    usagePeriodEndTime: number
end

local record GetAgentSpaceInput
    agentSpaceId: string
end

local record GetAgentSpaceOutput
    agentSpace: AgentSpace
    tags: {string : string}
end

local record GetAssociationInput
    agentSpaceId: string
    associationId: string
end

local record GetAssociationOutput
    association: Association
end

local record GetBacklogTaskInput
    agentSpaceId: string
    taskId: string
end

local record GetBacklogTaskOutput
    task: Task
end

local record GetOperatorAppInput
    agentSpaceId: string
end

local record GetOperatorAppOutput
    iam: IamAuthConfiguration
    idc: IdcAuthConfiguration
    idp: IdpAuthConfiguration
end

local record GetRecommendationInput
    agentSpaceId: string
    recommendationId: string
    recommendationVersion: number
end

local record GetRecommendationOutput
    recommendation: Recommendation
end

local record GetServiceInput
    serviceId: string
end

local record GetServiceOutput
    service: RegisteredService
    tags: {string : string}
end

local record ListAgentSpacesInput
    maxResults: number
    nextToken: string
end

local record ListAgentSpacesOutput
    nextToken: string
    agentSpaces: {AgentSpace}
end

local record ListAssociationsInput
    agentSpaceId: string
    maxResults: number
    nextToken: string
    filterServiceTypes: string
end

local record ListAssociationsOutput
    nextToken: string
    associations: {Association}
end

local record ListBacklogTasksInput
    agentSpaceId: string
    filter: TaskFilter
    limit: number
    nextToken: string
    sortField: string
    order: string
end

local record ListBacklogTasksOutput
    tasks: {Task}
    nextToken: string
end

local record ListChatsInput
    agentSpaceId: string
    userId: string
    maxResults: number
    nextToken: string
end

local record ListChatsOutput
    executions: {ChatExecution}
    nextToken: string
end

local record ListExecutionsInput
    agentSpaceId: string
    taskId: string
    limit: number
    nextToken: string
end

local record ListExecutionsOutput
    executions: {Execution}
    nextToken: string
end

local record ListGoalsInput
    agentSpaceId: string
    status: string
    goalType: string
    limit: number
    nextToken: string
end

local record ListGoalsOutput
    goals: {Goal}
    nextToken: string
end

local record ListJournalRecordsInput
    agentSpaceId: string
    executionId: string
    limit: number
    nextToken: string
    recordType: string
    order: string
end

local record ListJournalRecordsOutput
    records: {JournalRecord}
    nextToken: string
end

local record ListPendingMessagesInput
    agentSpaceId: string
    executionId: string
end

local record ListPendingMessagesOutput
    agentSpaceId: string
    executionId: string
    messages: {PendingMessage}
    createdAt: number
end

local record ListPrivateConnectionsInput
end

local record ListPrivateConnectionsOutput
    privateConnections: {PrivateConnectionSummary}
end

local record ListRecommendationsInput
    agentSpaceId: string
    taskId: string
    goalId: string
    status: string
    priority: string
    limit: number
    nextToken: string
end

local record ListRecommendationsOutput
    recommendations: {Recommendation}
    nextToken: string
end

local record ListServicesInput
    maxResults: number
    nextToken: string
    filterServiceType: string
end

local record ListServicesOutput
    nextToken: string
    services: {RegisteredService}
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ListWebhooksInput
    agentSpaceId: string
    associationId: string
end

local record ListWebhooksOutput
    webhooks: {Webhook}
end

local record RegisterServiceInput
    service: string
    serviceDetails: ServiceDetails
    kmsKeyArn: string
    privateConnectionName: string
    name: string
    tags: {string : string}
end

local record RegisterServiceOutput
    serviceId: string
    additionalStep: AdditionalServiceRegistrationStep
    kmsKeyArn: string
    tags: {string : string}
end

local record SendMessageInput
    agentSpaceId: string
    executionId: string
    content: string
    context: SendMessageContext
    userId: string
end

local record SendMessageOutput
    events: function(): string, string
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

local record UpdateAgentSpaceInput
    agentSpaceId: string
    name: string
    description: string
    locale: string
end

local record UpdateAgentSpaceOutput
    agentSpace: AgentSpace
end

local record UpdateAssociationInput
    agentSpaceId: string
    associationId: string
    configuration: ServiceConfiguration
end

local record UpdateAssociationOutput
    association: Association
    webhook: GenericWebhook
end

local record UpdateBacklogTaskInput
    agentSpaceId: string
    taskId: string
    taskStatus: string
    clientToken: string
end

local record UpdateBacklogTaskOutput
    task: Task
end

local record UpdateGoalInput
    agentSpaceId: string
    goalId: string
    evaluationSchedule: GoalScheduleInput
    clientToken: string
end

local record UpdateGoalOutput
    goal: Goal
end

local record UpdateOperatorAppIdpConfigInput
    agentSpaceId: string
    idpClientSecret: string
end

local record UpdateOperatorAppIdpConfigOutput
    agentSpaceId: string
    idp: IdpAuthConfiguration
end

local record UpdatePrivateConnectionCertificateInput
    name: string
    certificate: string
end

local record UpdatePrivateConnectionCertificateOutput
    name: string
    type: string
    resourceGatewayId: string
    hostAddress: string
    vpcId: string
    resourceConfigurationId: string
    status: string
    certificateExpiryTime: number
end

local record UpdateRecommendationInput
    agentSpaceId: string
    recommendationId: string
    status: string
    additionalContext: string
    clientToken: string
end

local record UpdateRecommendationOutput
    recommendation: Recommendation
end

local record ValidateAwsAssociationsInput
    agentSpaceId: string
end

local record ValidateAwsAssociationsOutput
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ConflictException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record ResourceNotFoundException
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

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record IdentityCenterServiceException
    message: string
    underlyingErrorCode: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record IdentityCenterServiceException
    message: string
    underlyingErrorCode: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
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

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
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

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record InternalServerException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record ServiceQuotaExceededException
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

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
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

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ThrottlingException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    fieldList: {ValidationExceptionField}
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
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
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
end

local record ContentSizeExceededException
    message: string
end

local record InvalidParameterException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local type PrivateConnectionType = "SELF_MANAGED" | "SERVICE_MANAGED"

local type TaskStatus = "PENDING_TRIAGE" | "LINKED" | "PENDING_START" | "IN_PROGRESS" | "PENDING_CUSTOMER_APPROVAL" | "COMPLETED" | "FAILED" | "TIMED_OUT" | "CANCELED"

local type PostRegisterServiceSupportedService = "dynatrace" | "servicenow" | "pagerduty" | "gitlab" | "eventChannel" | "mcpservernewrelic" | "mcpservergrafana" | "mcpserverdatadog" | "mcpserver" | "mcpserversplunk" | "azureidentity"

local type GoalType = "CUSTOMER_DEFINED" | "ONCALL_REPORT"

local type Service = "github" | "slack" | "azure" | "azuredevops" | "dynatrace" | "servicenow" | "pagerduty" | "gitlab" | "eventChannel" | "mcpservernewrelic" | "mcpservergrafana" | "mcpserverdatadog" | "mcpserver" | "mcpserversplunk" | "azureidentity"

local type RecommendationPriority = "HIGH" | "MEDIUM" | "LOW"

local type GoalStatus = "ACTIVE" | "PAUSED" | "COMPLETE"

local type TaskType = "INVESTIGATION" | "EVALUATION"

local type OrderType = "ASC" | "DESC"

local type TaskSortField = "CREATED_AT" | "PRIORITY"

local type Priority = "CRITICAL" | "HIGH" | "MEDIUM" | "LOW" | "MINIMAL"

local type UserType = "IAM" | "IDC" | "IDP"

local type PrivateConnectionStatus = "ACTIVE" | "CREATE_IN_PROGRESS" | "CREATE_FAILED" | "DELETE_IN_PROGRESS" | "DELETE_FAILED"

local type TaskSortOrder = "ASC" | "DESC"

local type RecommendationStatus = "PROPOSED" | "ACCEPTED" | "REJECTED" | "CLOSED" | "COMPLETED" | "UPDATE_IN_PROGRESS"

local type AuthFlow = "iam" | "idc" | "idp"

local record M
    AssociateServiceInput: AssociateServiceInput
    AssociateServiceOutput: AssociateServiceOutput
    CreateAgentSpaceInput: CreateAgentSpaceInput
    CreateAgentSpaceOutput: CreateAgentSpaceOutput
    CreateBacklogTaskInput: CreateBacklogTaskInput
    CreateBacklogTaskOutput: CreateBacklogTaskOutput
    CreateChatInput: CreateChatInput
    CreateChatOutput: CreateChatOutput
    CreatePrivateConnectionInput: CreatePrivateConnectionInput
    CreatePrivateConnectionOutput: CreatePrivateConnectionOutput
    DeleteAgentSpaceInput: DeleteAgentSpaceInput
    DeleteAgentSpaceOutput: DeleteAgentSpaceOutput
    DeletePrivateConnectionInput: DeletePrivateConnectionInput
    DeletePrivateConnectionOutput: DeletePrivateConnectionOutput
    DeregisterServiceInput: DeregisterServiceInput
    DeregisterServiceOutput: DeregisterServiceOutput
    DescribePrivateConnectionInput: DescribePrivateConnectionInput
    DescribePrivateConnectionOutput: DescribePrivateConnectionOutput
    DisableOperatorAppInput: DisableOperatorAppInput
    DisableOperatorAppOutput: DisableOperatorAppOutput
    DisassociateServiceInput: DisassociateServiceInput
    DisassociateServiceOutput: DisassociateServiceOutput
    EnableOperatorAppInput: EnableOperatorAppInput
    EnableOperatorAppOutput: EnableOperatorAppOutput
    GetAccountUsageInput: GetAccountUsageInput
    GetAccountUsageOutput: GetAccountUsageOutput
    GetAgentSpaceInput: GetAgentSpaceInput
    GetAgentSpaceOutput: GetAgentSpaceOutput
    GetAssociationInput: GetAssociationInput
    GetAssociationOutput: GetAssociationOutput
    GetBacklogTaskInput: GetBacklogTaskInput
    GetBacklogTaskOutput: GetBacklogTaskOutput
    GetOperatorAppInput: GetOperatorAppInput
    GetOperatorAppOutput: GetOperatorAppOutput
    GetRecommendationInput: GetRecommendationInput
    GetRecommendationOutput: GetRecommendationOutput
    GetServiceInput: GetServiceInput
    GetServiceOutput: GetServiceOutput
    ListAgentSpacesInput: ListAgentSpacesInput
    ListAgentSpacesOutput: ListAgentSpacesOutput
    ListAssociationsInput: ListAssociationsInput
    ListAssociationsOutput: ListAssociationsOutput
    ListBacklogTasksInput: ListBacklogTasksInput
    ListBacklogTasksOutput: ListBacklogTasksOutput
    ListChatsInput: ListChatsInput
    ListChatsOutput: ListChatsOutput
    ListExecutionsInput: ListExecutionsInput
    ListExecutionsOutput: ListExecutionsOutput
    ListGoalsInput: ListGoalsInput
    ListGoalsOutput: ListGoalsOutput
    ListJournalRecordsInput: ListJournalRecordsInput
    ListJournalRecordsOutput: ListJournalRecordsOutput
    ListPendingMessagesInput: ListPendingMessagesInput
    ListPendingMessagesOutput: ListPendingMessagesOutput
    ListPrivateConnectionsInput: ListPrivateConnectionsInput
    ListPrivateConnectionsOutput: ListPrivateConnectionsOutput
    ListRecommendationsInput: ListRecommendationsInput
    ListRecommendationsOutput: ListRecommendationsOutput
    ListServicesInput: ListServicesInput
    ListServicesOutput: ListServicesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListWebhooksInput: ListWebhooksInput
    ListWebhooksOutput: ListWebhooksOutput
    RegisterServiceInput: RegisterServiceInput
    RegisterServiceOutput: RegisterServiceOutput
    SendMessageInput: SendMessageInput
    SendMessageOutput: SendMessageOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAgentSpaceInput: UpdateAgentSpaceInput
    UpdateAgentSpaceOutput: UpdateAgentSpaceOutput
    UpdateAssociationInput: UpdateAssociationInput
    UpdateAssociationOutput: UpdateAssociationOutput
    UpdateBacklogTaskInput: UpdateBacklogTaskInput
    UpdateBacklogTaskOutput: UpdateBacklogTaskOutput
    UpdateGoalInput: UpdateGoalInput
    UpdateGoalOutput: UpdateGoalOutput
    UpdateOperatorAppIdpConfigInput: UpdateOperatorAppIdpConfigInput
    UpdateOperatorAppIdpConfigOutput: UpdateOperatorAppIdpConfigOutput
    UpdatePrivateConnectionCertificateInput: UpdatePrivateConnectionCertificateInput
    UpdatePrivateConnectionCertificateOutput: UpdatePrivateConnectionCertificateOutput
    UpdateRecommendationInput: UpdateRecommendationInput
    UpdateRecommendationOutput: UpdateRecommendationOutput
    ValidateAwsAssociationsInput: ValidateAwsAssociationsInput
    ValidateAwsAssociationsOutput: ValidateAwsAssociationsOutput
end

return M
