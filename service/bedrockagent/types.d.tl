local record AssociateAgentCollaboratorInput
    agentId: string
    agentVersion: string
    agentDescriptor: AgentDescriptor
    collaboratorName: string
    collaborationInstruction: string
    relayConversationHistory: string
    clientToken: string
end

local record AssociateAgentCollaboratorOutput
    agentCollaborator: AgentCollaborator
end

local record AssociateAgentKnowledgeBaseInput
    agentId: string
    agentVersion: string
    knowledgeBaseId: string
    description: string
    knowledgeBaseState: string
end

local record AssociateAgentKnowledgeBaseOutput
    agentKnowledgeBase: AgentKnowledgeBase
end

local record CreateAgentInput
    agentName: string
    clientToken: string
    instruction: string
    foundationModel: string
    description: string
    orchestrationType: string
    customOrchestration: CustomOrchestration
    idleSessionTTLInSeconds: number
    agentResourceRoleArn: string
    customerEncryptionKeyArn: string
    tags: {string : string}
    promptOverrideConfiguration: PromptOverrideConfiguration
    guardrailConfiguration: GuardrailConfiguration
    memoryConfiguration: MemoryConfiguration
    agentCollaboration: string
end

local record CreateAgentOutput
    agent: Agent
end

local record CreateAgentActionGroupInput
    agentId: string
    agentVersion: string
    actionGroupName: string
    clientToken: string
    description: string
    parentActionGroupSignature: string
    parentActionGroupSignatureParams: {string : string}
    actionGroupExecutor: ActionGroupExecutor
    apiSchema: APISchema
    actionGroupState: string
    functionSchema: FunctionSchema
end

local record CreateAgentActionGroupOutput
    agentActionGroup: AgentActionGroup
end

local record CreateAgentAliasInput
    agentId: string
    agentAliasName: string
    clientToken: string
    description: string
    routingConfiguration: {AgentAliasRoutingConfigurationListItem}
    tags: {string : string}
end

local record CreateAgentAliasOutput
    agentAlias: AgentAlias
end

local record CreateDataSourceInput
    knowledgeBaseId: string
    clientToken: string
    name: string
    description: string
    dataSourceConfiguration: DataSourceConfiguration
    dataDeletionPolicy: string
    serverSideEncryptionConfiguration: ServerSideEncryptionConfiguration
    vectorIngestionConfiguration: VectorIngestionConfiguration
end

local record CreateDataSourceOutput
    dataSource: DataSource
end

local record CreateFlowInput
    name: string
    description: string
    executionRoleArn: string
    customerEncryptionKeyArn: string
    definition: FlowDefinition
    clientToken: string
    tags: {string : string}
end

local record CreateFlowOutput
    name: string
    description: string
    executionRoleArn: string
    customerEncryptionKeyArn: string
    id: string
    arn: string
    status: string
    createdAt: number
    updatedAt: number
    version: string
    definition: FlowDefinition
end

local record CreateFlowAliasInput
    name: string
    description: string
    routingConfiguration: {FlowAliasRoutingConfigurationListItem}
    concurrencyConfiguration: FlowAliasConcurrencyConfiguration
    flowIdentifier: string
    clientToken: string
    tags: {string : string}
end

local record CreateFlowAliasOutput
    name: string
    description: string
    routingConfiguration: {FlowAliasRoutingConfigurationListItem}
    concurrencyConfiguration: FlowAliasConcurrencyConfiguration
    flowId: string
    id: string
    arn: string
    createdAt: number
    updatedAt: number
end

local record CreateFlowVersionInput
    flowIdentifier: string
    description: string
    clientToken: string
end

local record CreateFlowVersionOutput
    name: string
    description: string
    executionRoleArn: string
    customerEncryptionKeyArn: string
    id: string
    arn: string
    status: string
    createdAt: number
    version: string
    definition: FlowDefinition
end

local record CreateKnowledgeBaseInput
    clientToken: string
    name: string
    description: string
    roleArn: string
    knowledgeBaseConfiguration: KnowledgeBaseConfiguration
    storageConfiguration: StorageConfiguration
    tags: {string : string}
end

local record CreateKnowledgeBaseOutput
    knowledgeBase: KnowledgeBase
end

local record CreatePromptInput
    name: string
    description: string
    customerEncryptionKeyArn: string
    defaultVariant: string
    variants: {PromptVariant}
    clientToken: string
    tags: {string : string}
end

local record CreatePromptOutput
    name: string
    description: string
    customerEncryptionKeyArn: string
    defaultVariant: string
    variants: {PromptVariant}
    id: string
    arn: string
    version: string
    createdAt: number
    updatedAt: number
end

local record CreatePromptVersionInput
    promptIdentifier: string
    description: string
    clientToken: string
    tags: {string : string}
end

local record CreatePromptVersionOutput
    name: string
    description: string
    customerEncryptionKeyArn: string
    defaultVariant: string
    variants: {PromptVariant}
    id: string
    arn: string
    version: string
    createdAt: number
    updatedAt: number
end

local record DeleteAgentInput
    agentId: string
    skipResourceInUseCheck: boolean
end

local record DeleteAgentOutput
    agentId: string
    agentStatus: string
end

local record DeleteAgentActionGroupInput
    agentId: string
    agentVersion: string
    actionGroupId: string
    skipResourceInUseCheck: boolean
end

local record DeleteAgentActionGroupOutput
end

local record DeleteAgentAliasInput
    agentId: string
    agentAliasId: string
end

local record DeleteAgentAliasOutput
    agentId: string
    agentAliasId: string
    agentAliasStatus: string
end

local record DeleteAgentVersionInput
    agentId: string
    agentVersion: string
    skipResourceInUseCheck: boolean
end

local record DeleteAgentVersionOutput
    agentId: string
    agentVersion: string
    agentStatus: string
end

local record DeleteDataSourceInput
    knowledgeBaseId: string
    dataSourceId: string
end

local record DeleteDataSourceOutput
    knowledgeBaseId: string
    dataSourceId: string
    status: string
end

local record DeleteFlowInput
    flowIdentifier: string
    skipResourceInUseCheck: boolean
end

local record DeleteFlowOutput
    id: string
end

local record DeleteFlowAliasInput
    flowIdentifier: string
    aliasIdentifier: string
end

local record DeleteFlowAliasOutput
    flowId: string
    id: string
end

local record DeleteFlowVersionInput
    flowIdentifier: string
    flowVersion: string
    skipResourceInUseCheck: boolean
end

local record DeleteFlowVersionOutput
    id: string
    version: string
end

local record DeleteKnowledgeBaseInput
    knowledgeBaseId: string
end

local record DeleteKnowledgeBaseOutput
    knowledgeBaseId: string
    status: string
end

local record DeleteKnowledgeBaseDocumentsInput
    knowledgeBaseId: string
    dataSourceId: string
    clientToken: string
    documentIdentifiers: {DocumentIdentifier}
end

local record DeleteKnowledgeBaseDocumentsOutput
    documentDetails: {KnowledgeBaseDocumentDetail}
end

local record DeletePromptInput
    promptIdentifier: string
    promptVersion: string
end

local record DeletePromptOutput
    id: string
    version: string
end

local record DisassociateAgentCollaboratorInput
    agentId: string
    agentVersion: string
    collaboratorId: string
end

local record DisassociateAgentCollaboratorOutput
end

local record DisassociateAgentKnowledgeBaseInput
    agentId: string
    agentVersion: string
    knowledgeBaseId: string
end

local record DisassociateAgentKnowledgeBaseOutput
end

local record GetAgentInput
    agentId: string
end

local record GetAgentOutput
    agent: Agent
end

local record GetAgentActionGroupInput
    agentId: string
    agentVersion: string
    actionGroupId: string
end

local record GetAgentActionGroupOutput
    agentActionGroup: AgentActionGroup
end

local record GetAgentAliasInput
    agentId: string
    agentAliasId: string
end

local record GetAgentAliasOutput
    agentAlias: AgentAlias
end

local record GetAgentCollaboratorInput
    agentId: string
    agentVersion: string
    collaboratorId: string
end

local record GetAgentCollaboratorOutput
    agentCollaborator: AgentCollaborator
end

local record GetAgentKnowledgeBaseInput
    agentId: string
    agentVersion: string
    knowledgeBaseId: string
end

local record GetAgentKnowledgeBaseOutput
    agentKnowledgeBase: AgentKnowledgeBase
end

local record GetAgentVersionInput
    agentId: string
    agentVersion: string
end

local record GetAgentVersionOutput
    agentVersion: AgentVersion
end

local record GetDataSourceInput
    knowledgeBaseId: string
    dataSourceId: string
end

local record GetDataSourceOutput
    dataSource: DataSource
end

local record GetFlowInput
    flowIdentifier: string
end

local record GetFlowOutput
    name: string
    description: string
    executionRoleArn: string
    customerEncryptionKeyArn: string
    id: string
    arn: string
    status: string
    createdAt: number
    updatedAt: number
    version: string
    definition: FlowDefinition
    validations: {FlowValidation}
end

local record GetFlowAliasInput
    flowIdentifier: string
    aliasIdentifier: string
end

local record GetFlowAliasOutput
    name: string
    description: string
    routingConfiguration: {FlowAliasRoutingConfigurationListItem}
    concurrencyConfiguration: FlowAliasConcurrencyConfiguration
    flowId: string
    id: string
    arn: string
    createdAt: number
    updatedAt: number
end

local record GetFlowVersionInput
    flowIdentifier: string
    flowVersion: string
end

local record GetFlowVersionOutput
    name: string
    description: string
    executionRoleArn: string
    customerEncryptionKeyArn: string
    id: string
    arn: string
    status: string
    createdAt: number
    version: string
    definition: FlowDefinition
end

local record GetIngestionJobInput
    knowledgeBaseId: string
    dataSourceId: string
    ingestionJobId: string
end

local record GetIngestionJobOutput
    ingestionJob: IngestionJob
end

local record GetKnowledgeBaseInput
    knowledgeBaseId: string
end

local record GetKnowledgeBaseOutput
    knowledgeBase: KnowledgeBase
end

local record GetKnowledgeBaseDocumentsInput
    knowledgeBaseId: string
    dataSourceId: string
    documentIdentifiers: {DocumentIdentifier}
end

local record GetKnowledgeBaseDocumentsOutput
    documentDetails: {KnowledgeBaseDocumentDetail}
end

local record GetPromptInput
    promptIdentifier: string
    promptVersion: string
end

local record GetPromptOutput
    name: string
    description: string
    customerEncryptionKeyArn: string
    defaultVariant: string
    variants: {PromptVariant}
    id: string
    arn: string
    version: string
    createdAt: number
    updatedAt: number
end

local record IngestKnowledgeBaseDocumentsInput
    knowledgeBaseId: string
    dataSourceId: string
    clientToken: string
    documents: {KnowledgeBaseDocument}
end

local record IngestKnowledgeBaseDocumentsOutput
    documentDetails: {KnowledgeBaseDocumentDetail}
end

local record ListAgentActionGroupsInput
    agentId: string
    agentVersion: string
    maxResults: number
    nextToken: string
end

local record ListAgentActionGroupsOutput
    actionGroupSummaries: {ActionGroupSummary}
    nextToken: string
end

local record ListAgentAliasesInput
    agentId: string
    maxResults: number
    nextToken: string
end

local record ListAgentAliasesOutput
    agentAliasSummaries: {AgentAliasSummary}
    nextToken: string
end

local record ListAgentCollaboratorsInput
    agentId: string
    agentVersion: string
    maxResults: number
    nextToken: string
end

local record ListAgentCollaboratorsOutput
    agentCollaboratorSummaries: {AgentCollaboratorSummary}
    nextToken: string
end

local record ListAgentKnowledgeBasesInput
    agentId: string
    agentVersion: string
    maxResults: number
    nextToken: string
end

local record ListAgentKnowledgeBasesOutput
    agentKnowledgeBaseSummaries: {AgentKnowledgeBaseSummary}
    nextToken: string
end

local record ListAgentsInput
    maxResults: number
    nextToken: string
end

local record ListAgentsOutput
    agentSummaries: {AgentSummary}
    nextToken: string
end

local record ListAgentVersionsInput
    agentId: string
    maxResults: number
    nextToken: string
end

local record ListAgentVersionsOutput
    agentVersionSummaries: {AgentVersionSummary}
    nextToken: string
end

local record ListDataSourcesInput
    knowledgeBaseId: string
    maxResults: number
    nextToken: string
end

local record ListDataSourcesOutput
    dataSourceSummaries: {DataSourceSummary}
    nextToken: string
end

local record ListFlowAliasesInput
    flowIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListFlowAliasesOutput
    flowAliasSummaries: {FlowAliasSummary}
    nextToken: string
end

local record ListFlowsInput
    maxResults: number
    nextToken: string
end

local record ListFlowsOutput
    flowSummaries: {FlowSummary}
    nextToken: string
end

local record ListFlowVersionsInput
    flowIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListFlowVersionsOutput
    flowVersionSummaries: {FlowVersionSummary}
    nextToken: string
end

local record ListIngestionJobsInput
    knowledgeBaseId: string
    dataSourceId: string
    filters: {IngestionJobFilter}
    sortBy: IngestionJobSortBy
    maxResults: number
    nextToken: string
end

local record ListIngestionJobsOutput
    ingestionJobSummaries: {IngestionJobSummary}
    nextToken: string
end

local record ListKnowledgeBaseDocumentsInput
    knowledgeBaseId: string
    dataSourceId: string
    maxResults: number
    nextToken: string
end

local record ListKnowledgeBaseDocumentsOutput
    documentDetails: {KnowledgeBaseDocumentDetail}
    nextToken: string
end

local record ListKnowledgeBasesInput
    maxResults: number
    nextToken: string
end

local record ListKnowledgeBasesOutput
    knowledgeBaseSummaries: {KnowledgeBaseSummary}
    nextToken: string
end

local record ListPromptsInput
    promptIdentifier: string
    maxResults: number
    nextToken: string
end

local record ListPromptsOutput
    promptSummaries: {PromptSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record PrepareAgentInput
    agentId: string
end

local record PrepareAgentOutput
    agentId: string
    agentStatus: string
    agentVersion: string
    preparedAt: number
end

local record PrepareFlowInput
    flowIdentifier: string
end

local record PrepareFlowOutput
    id: string
    status: string
end

local record StartIngestionJobInput
    knowledgeBaseId: string
    dataSourceId: string
    clientToken: string
    description: string
end

local record StartIngestionJobOutput
    ingestionJob: IngestionJob
end

local record StopIngestionJobInput
    knowledgeBaseId: string
    dataSourceId: string
    ingestionJobId: string
end

local record StopIngestionJobOutput
    ingestionJob: IngestionJob
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

local record UpdateAgentInput
    agentId: string
    agentName: string
    instruction: string
    foundationModel: string
    description: string
    orchestrationType: string
    customOrchestration: CustomOrchestration
    idleSessionTTLInSeconds: number
    agentResourceRoleArn: string
    customerEncryptionKeyArn: string
    promptOverrideConfiguration: PromptOverrideConfiguration
    guardrailConfiguration: GuardrailConfiguration
    memoryConfiguration: MemoryConfiguration
    agentCollaboration: string
end

local record UpdateAgentOutput
    agent: Agent
end

local record UpdateAgentActionGroupInput
    agentId: string
    agentVersion: string
    actionGroupId: string
    actionGroupName: string
    description: string
    parentActionGroupSignature: string
    parentActionGroupSignatureParams: {string : string}
    actionGroupExecutor: ActionGroupExecutor
    actionGroupState: string
    apiSchema: APISchema
    functionSchema: FunctionSchema
end

local record UpdateAgentActionGroupOutput
    agentActionGroup: AgentActionGroup
end

local record UpdateAgentAliasInput
    agentId: string
    agentAliasId: string
    agentAliasName: string
    description: string
    routingConfiguration: {AgentAliasRoutingConfigurationListItem}
    aliasInvocationState: string
end

local record UpdateAgentAliasOutput
    agentAlias: AgentAlias
end

local record UpdateAgentCollaboratorInput
    agentId: string
    agentVersion: string
    collaboratorId: string
    agentDescriptor: AgentDescriptor
    collaboratorName: string
    collaborationInstruction: string
    relayConversationHistory: string
end

local record UpdateAgentCollaboratorOutput
    agentCollaborator: AgentCollaborator
end

local record UpdateAgentKnowledgeBaseInput
    agentId: string
    agentVersion: string
    knowledgeBaseId: string
    description: string
    knowledgeBaseState: string
end

local record UpdateAgentKnowledgeBaseOutput
    agentKnowledgeBase: AgentKnowledgeBase
end

local record UpdateDataSourceInput
    knowledgeBaseId: string
    dataSourceId: string
    name: string
    description: string
    dataSourceConfiguration: DataSourceConfiguration
    dataDeletionPolicy: string
    serverSideEncryptionConfiguration: ServerSideEncryptionConfiguration
    vectorIngestionConfiguration: VectorIngestionConfiguration
end

local record UpdateDataSourceOutput
    dataSource: DataSource
end

local record UpdateFlowInput
    name: string
    description: string
    executionRoleArn: string
    customerEncryptionKeyArn: string
    definition: FlowDefinition
    flowIdentifier: string
end

local record UpdateFlowOutput
    name: string
    description: string
    executionRoleArn: string
    customerEncryptionKeyArn: string
    id: string
    arn: string
    status: string
    createdAt: number
    updatedAt: number
    version: string
    definition: FlowDefinition
end

local record UpdateFlowAliasInput
    name: string
    description: string
    routingConfiguration: {FlowAliasRoutingConfigurationListItem}
    concurrencyConfiguration: FlowAliasConcurrencyConfiguration
    flowIdentifier: string
    aliasIdentifier: string
end

local record UpdateFlowAliasOutput
    name: string
    description: string
    routingConfiguration: {FlowAliasRoutingConfigurationListItem}
    concurrencyConfiguration: FlowAliasConcurrencyConfiguration
    flowId: string
    id: string
    arn: string
    createdAt: number
    updatedAt: number
end

local record UpdateKnowledgeBaseInput
    knowledgeBaseId: string
    name: string
    description: string
    roleArn: string
    knowledgeBaseConfiguration: KnowledgeBaseConfiguration
    storageConfiguration: StorageConfiguration
end

local record UpdateKnowledgeBaseOutput
    knowledgeBase: KnowledgeBase
end

local record UpdatePromptInput
    name: string
    description: string
    customerEncryptionKeyArn: string
    defaultVariant: string
    variants: {PromptVariant}
    promptIdentifier: string
end

local record UpdatePromptOutput
    name: string
    description: string
    customerEncryptionKeyArn: string
    defaultVariant: string
    variants: {PromptVariant}
    id: string
    arn: string
    version: string
    createdAt: number
    updatedAt: number
end

local record ValidateFlowDefinitionInput
    definition: FlowDefinition
end

local record ValidateFlowDefinitionOutput
    validations: {FlowValidation}
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
    fieldList: {ValidationExceptionField}
end

local type DataDeletionPolicy = "RETAIN" | "DELETE"

local type AgentAliasStatus = "CREATING" | "PREPARED" | "FAILED" | "UPDATING" | "DELETING" | "DISSOCIATED"

local type KnowledgeBaseStatus = "CREATING" | "ACTIVE" | "DELETING" | "UPDATING" | "FAILED" | "DELETE_UNSUCCESSFUL"

local type ActionGroupSignature = "AMAZON.UserInput" | "AMAZON.CodeInterpreter" | "ANTHROPIC.Computer" | "ANTHROPIC.Bash" | "ANTHROPIC.TextEditor"

local type AgentStatus = "CREATING" | "PREPARING" | "PREPARED" | "NOT_PREPARED" | "DELETING" | "FAILED" | "VERSIONING" | "UPDATING"

local type KnowledgeBaseState = "ENABLED" | "DISABLED"

local type DataSourceStatus = "AVAILABLE" | "DELETING" | "DELETE_UNSUCCESSFUL"

local type AgentCollaboration = "SUPERVISOR" | "SUPERVISOR_ROUTER" | "DISABLED"

local type AliasInvocationState = "ACCEPT_INVOCATIONS" | "REJECT_INVOCATIONS"

local type RelayConversationHistory = "TO_COLLABORATOR" | "DISABLED"

local type FlowStatus = "Failed" | "Prepared" | "Preparing" | "NotPrepared"

local type OrchestrationType = "DEFAULT" | "CUSTOM_ORCHESTRATION"

local type ActionGroupState = "ENABLED" | "DISABLED"

local record M
    AssociateAgentCollaboratorInput: AssociateAgentCollaboratorInput
    AssociateAgentCollaboratorOutput: AssociateAgentCollaboratorOutput
    AssociateAgentKnowledgeBaseInput: AssociateAgentKnowledgeBaseInput
    AssociateAgentKnowledgeBaseOutput: AssociateAgentKnowledgeBaseOutput
    CreateAgentInput: CreateAgentInput
    CreateAgentOutput: CreateAgentOutput
    CreateAgentActionGroupInput: CreateAgentActionGroupInput
    CreateAgentActionGroupOutput: CreateAgentActionGroupOutput
    CreateAgentAliasInput: CreateAgentAliasInput
    CreateAgentAliasOutput: CreateAgentAliasOutput
    CreateDataSourceInput: CreateDataSourceInput
    CreateDataSourceOutput: CreateDataSourceOutput
    CreateFlowInput: CreateFlowInput
    CreateFlowOutput: CreateFlowOutput
    CreateFlowAliasInput: CreateFlowAliasInput
    CreateFlowAliasOutput: CreateFlowAliasOutput
    CreateFlowVersionInput: CreateFlowVersionInput
    CreateFlowVersionOutput: CreateFlowVersionOutput
    CreateKnowledgeBaseInput: CreateKnowledgeBaseInput
    CreateKnowledgeBaseOutput: CreateKnowledgeBaseOutput
    CreatePromptInput: CreatePromptInput
    CreatePromptOutput: CreatePromptOutput
    CreatePromptVersionInput: CreatePromptVersionInput
    CreatePromptVersionOutput: CreatePromptVersionOutput
    DeleteAgentInput: DeleteAgentInput
    DeleteAgentOutput: DeleteAgentOutput
    DeleteAgentActionGroupInput: DeleteAgentActionGroupInput
    DeleteAgentActionGroupOutput: DeleteAgentActionGroupOutput
    DeleteAgentAliasInput: DeleteAgentAliasInput
    DeleteAgentAliasOutput: DeleteAgentAliasOutput
    DeleteAgentVersionInput: DeleteAgentVersionInput
    DeleteAgentVersionOutput: DeleteAgentVersionOutput
    DeleteDataSourceInput: DeleteDataSourceInput
    DeleteDataSourceOutput: DeleteDataSourceOutput
    DeleteFlowInput: DeleteFlowInput
    DeleteFlowOutput: DeleteFlowOutput
    DeleteFlowAliasInput: DeleteFlowAliasInput
    DeleteFlowAliasOutput: DeleteFlowAliasOutput
    DeleteFlowVersionInput: DeleteFlowVersionInput
    DeleteFlowVersionOutput: DeleteFlowVersionOutput
    DeleteKnowledgeBaseInput: DeleteKnowledgeBaseInput
    DeleteKnowledgeBaseOutput: DeleteKnowledgeBaseOutput
    DeleteKnowledgeBaseDocumentsInput: DeleteKnowledgeBaseDocumentsInput
    DeleteKnowledgeBaseDocumentsOutput: DeleteKnowledgeBaseDocumentsOutput
    DeletePromptInput: DeletePromptInput
    DeletePromptOutput: DeletePromptOutput
    DisassociateAgentCollaboratorInput: DisassociateAgentCollaboratorInput
    DisassociateAgentCollaboratorOutput: DisassociateAgentCollaboratorOutput
    DisassociateAgentKnowledgeBaseInput: DisassociateAgentKnowledgeBaseInput
    DisassociateAgentKnowledgeBaseOutput: DisassociateAgentKnowledgeBaseOutput
    GetAgentInput: GetAgentInput
    GetAgentOutput: GetAgentOutput
    GetAgentActionGroupInput: GetAgentActionGroupInput
    GetAgentActionGroupOutput: GetAgentActionGroupOutput
    GetAgentAliasInput: GetAgentAliasInput
    GetAgentAliasOutput: GetAgentAliasOutput
    GetAgentCollaboratorInput: GetAgentCollaboratorInput
    GetAgentCollaboratorOutput: GetAgentCollaboratorOutput
    GetAgentKnowledgeBaseInput: GetAgentKnowledgeBaseInput
    GetAgentKnowledgeBaseOutput: GetAgentKnowledgeBaseOutput
    GetAgentVersionInput: GetAgentVersionInput
    GetAgentVersionOutput: GetAgentVersionOutput
    GetDataSourceInput: GetDataSourceInput
    GetDataSourceOutput: GetDataSourceOutput
    GetFlowInput: GetFlowInput
    GetFlowOutput: GetFlowOutput
    GetFlowAliasInput: GetFlowAliasInput
    GetFlowAliasOutput: GetFlowAliasOutput
    GetFlowVersionInput: GetFlowVersionInput
    GetFlowVersionOutput: GetFlowVersionOutput
    GetIngestionJobInput: GetIngestionJobInput
    GetIngestionJobOutput: GetIngestionJobOutput
    GetKnowledgeBaseInput: GetKnowledgeBaseInput
    GetKnowledgeBaseOutput: GetKnowledgeBaseOutput
    GetKnowledgeBaseDocumentsInput: GetKnowledgeBaseDocumentsInput
    GetKnowledgeBaseDocumentsOutput: GetKnowledgeBaseDocumentsOutput
    GetPromptInput: GetPromptInput
    GetPromptOutput: GetPromptOutput
    IngestKnowledgeBaseDocumentsInput: IngestKnowledgeBaseDocumentsInput
    IngestKnowledgeBaseDocumentsOutput: IngestKnowledgeBaseDocumentsOutput
    ListAgentActionGroupsInput: ListAgentActionGroupsInput
    ListAgentActionGroupsOutput: ListAgentActionGroupsOutput
    ListAgentAliasesInput: ListAgentAliasesInput
    ListAgentAliasesOutput: ListAgentAliasesOutput
    ListAgentCollaboratorsInput: ListAgentCollaboratorsInput
    ListAgentCollaboratorsOutput: ListAgentCollaboratorsOutput
    ListAgentKnowledgeBasesInput: ListAgentKnowledgeBasesInput
    ListAgentKnowledgeBasesOutput: ListAgentKnowledgeBasesOutput
    ListAgentsInput: ListAgentsInput
    ListAgentsOutput: ListAgentsOutput
    ListAgentVersionsInput: ListAgentVersionsInput
    ListAgentVersionsOutput: ListAgentVersionsOutput
    ListDataSourcesInput: ListDataSourcesInput
    ListDataSourcesOutput: ListDataSourcesOutput
    ListFlowAliasesInput: ListFlowAliasesInput
    ListFlowAliasesOutput: ListFlowAliasesOutput
    ListFlowsInput: ListFlowsInput
    ListFlowsOutput: ListFlowsOutput
    ListFlowVersionsInput: ListFlowVersionsInput
    ListFlowVersionsOutput: ListFlowVersionsOutput
    ListIngestionJobsInput: ListIngestionJobsInput
    ListIngestionJobsOutput: ListIngestionJobsOutput
    ListKnowledgeBaseDocumentsInput: ListKnowledgeBaseDocumentsInput
    ListKnowledgeBaseDocumentsOutput: ListKnowledgeBaseDocumentsOutput
    ListKnowledgeBasesInput: ListKnowledgeBasesInput
    ListKnowledgeBasesOutput: ListKnowledgeBasesOutput
    ListPromptsInput: ListPromptsInput
    ListPromptsOutput: ListPromptsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PrepareAgentInput: PrepareAgentInput
    PrepareAgentOutput: PrepareAgentOutput
    PrepareFlowInput: PrepareFlowInput
    PrepareFlowOutput: PrepareFlowOutput
    StartIngestionJobInput: StartIngestionJobInput
    StartIngestionJobOutput: StartIngestionJobOutput
    StopIngestionJobInput: StopIngestionJobInput
    StopIngestionJobOutput: StopIngestionJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAgentInput: UpdateAgentInput
    UpdateAgentOutput: UpdateAgentOutput
    UpdateAgentActionGroupInput: UpdateAgentActionGroupInput
    UpdateAgentActionGroupOutput: UpdateAgentActionGroupOutput
    UpdateAgentAliasInput: UpdateAgentAliasInput
    UpdateAgentAliasOutput: UpdateAgentAliasOutput
    UpdateAgentCollaboratorInput: UpdateAgentCollaboratorInput
    UpdateAgentCollaboratorOutput: UpdateAgentCollaboratorOutput
    UpdateAgentKnowledgeBaseInput: UpdateAgentKnowledgeBaseInput
    UpdateAgentKnowledgeBaseOutput: UpdateAgentKnowledgeBaseOutput
    UpdateDataSourceInput: UpdateDataSourceInput
    UpdateDataSourceOutput: UpdateDataSourceOutput
    UpdateFlowInput: UpdateFlowInput
    UpdateFlowOutput: UpdateFlowOutput
    UpdateFlowAliasInput: UpdateFlowAliasInput
    UpdateFlowAliasOutput: UpdateFlowAliasOutput
    UpdateKnowledgeBaseInput: UpdateKnowledgeBaseInput
    UpdateKnowledgeBaseOutput: UpdateKnowledgeBaseOutput
    UpdatePromptInput: UpdatePromptInput
    UpdatePromptOutput: UpdatePromptOutput
    ValidateFlowDefinitionInput: ValidateFlowDefinitionInput
    ValidateFlowDefinitionOutput: ValidateFlowDefinitionOutput
end

return M
