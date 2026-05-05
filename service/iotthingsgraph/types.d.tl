local record AssociateEntityToThingInput
    thingName: string
    entityId: string
    namespaceVersion: number
end

local record AssociateEntityToThingOutput
end

local record CreateFlowTemplateInput
    definition: DefinitionDocument
    compatibleNamespaceVersion: number
end

local record CreateFlowTemplateOutput
    summary: FlowTemplateSummary
end

local record CreateSystemInstanceInput
    tags: {Tag}
    definition: DefinitionDocument
    target: string
    greengrassGroupName: string
    s3BucketName: string
    metricsConfiguration: MetricsConfiguration
    flowActionsRoleArn: string
end

local record CreateSystemInstanceOutput
    summary: SystemInstanceSummary
end

local record CreateSystemTemplateInput
    definition: DefinitionDocument
    compatibleNamespaceVersion: number
end

local record CreateSystemTemplateOutput
    summary: SystemTemplateSummary
end

local record DeleteFlowTemplateInput
    id: string
end

local record DeleteFlowTemplateOutput
end

local record DeleteNamespaceInput
end

local record DeleteNamespaceOutput
    namespaceArn: string
    namespaceName: string
end

local record DeleteSystemInstanceInput
    id: string
end

local record DeleteSystemInstanceOutput
end

local record DeleteSystemTemplateInput
    id: string
end

local record DeleteSystemTemplateOutput
end

local record DeploySystemInstanceInput
    id: string
end

local record DeploySystemInstanceOutput
    summary: SystemInstanceSummary
    greengrassDeploymentId: string
end

local record DeprecateFlowTemplateInput
    id: string
end

local record DeprecateFlowTemplateOutput
end

local record DeprecateSystemTemplateInput
    id: string
end

local record DeprecateSystemTemplateOutput
end

local record DescribeNamespaceInput
    namespaceName: string
end

local record DescribeNamespaceOutput
    namespaceArn: string
    namespaceName: string
    trackingNamespaceName: string
    trackingNamespaceVersion: number
    namespaceVersion: number
end

local record DissociateEntityFromThingInput
    thingName: string
    entityType: string
end

local record DissociateEntityFromThingOutput
end

local record GetEntitiesInput
    ids: {string}
    namespaceVersion: number
end

local record GetEntitiesOutput
    descriptions: {EntityDescription}
end

local record GetFlowTemplateInput
    id: string
    revisionNumber: number
end

local record GetFlowTemplateOutput
    description: FlowTemplateDescription
end

local record GetFlowTemplateRevisionsInput
    id: string
    nextToken: string
    maxResults: number
end

local record GetFlowTemplateRevisionsOutput
    summaries: {FlowTemplateSummary}
    nextToken: string
end

local record GetNamespaceDeletionStatusInput
end

local record GetNamespaceDeletionStatusOutput
    namespaceArn: string
    namespaceName: string
    status: string
    errorCode: string
    errorMessage: string
end

local record GetSystemInstanceInput
    id: string
end

local record GetSystemInstanceOutput
    description: SystemInstanceDescription
end

local record GetSystemTemplateInput
    id: string
    revisionNumber: number
end

local record GetSystemTemplateOutput
    description: SystemTemplateDescription
end

local record GetSystemTemplateRevisionsInput
    id: string
    nextToken: string
    maxResults: number
end

local record GetSystemTemplateRevisionsOutput
    summaries: {SystemTemplateSummary}
    nextToken: string
end

local record GetUploadStatusInput
    uploadId: string
end

local record GetUploadStatusOutput
    uploadId: string
    uploadStatus: string
    namespaceArn: string
    namespaceName: string
    namespaceVersion: number
    failureReason: {string}
    createdDate: number
end

local record ListFlowExecutionMessagesInput
    flowExecutionId: string
    nextToken: string
    maxResults: number
end

local record ListFlowExecutionMessagesOutput
    messages: {FlowExecutionMessage}
    nextToken: string
end

local record ListTagsForResourceInput
    maxResults: number
    resourceArn: string
    nextToken: string
end

local record ListTagsForResourceOutput
    tags: {Tag}
    nextToken: string
end

local record SearchEntitiesInput
    entityTypes: {string}
    filters: {EntityFilter}
    nextToken: string
    maxResults: number
    namespaceVersion: number
end

local record SearchEntitiesOutput
    descriptions: {EntityDescription}
    nextToken: string
end

local record SearchFlowExecutionsInput
    systemInstanceId: string
    flowExecutionId: string
    startTime: number
    endTime: number
    nextToken: string
    maxResults: number
end

local record SearchFlowExecutionsOutput
    summaries: {FlowExecutionSummary}
    nextToken: string
end

local record SearchFlowTemplatesInput
    filters: {FlowTemplateFilter}
    nextToken: string
    maxResults: number
end

local record SearchFlowTemplatesOutput
    summaries: {FlowTemplateSummary}
    nextToken: string
end

local record SearchSystemInstancesInput
    filters: {SystemInstanceFilter}
    nextToken: string
    maxResults: number
end

local record SearchSystemInstancesOutput
    summaries: {SystemInstanceSummary}
    nextToken: string
end

local record SearchSystemTemplatesInput
    filters: {SystemTemplateFilter}
    nextToken: string
    maxResults: number
end

local record SearchSystemTemplatesOutput
    summaries: {SystemTemplateSummary}
    nextToken: string
end

local record SearchThingsInput
    entityId: string
    nextToken: string
    maxResults: number
    namespaceVersion: number
end

local record SearchThingsOutput
    things: {Thing}
    nextToken: string
end

local record TagResourceInput
    resourceArn: string
    tags: {Tag}
end

local record TagResourceOutput
end

local record UndeploySystemInstanceInput
    id: string
end

local record UndeploySystemInstanceOutput
    summary: SystemInstanceSummary
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateFlowTemplateInput
    id: string
    definition: DefinitionDocument
    compatibleNamespaceVersion: number
end

local record UpdateFlowTemplateOutput
    summary: FlowTemplateSummary
end

local record UpdateSystemTemplateInput
    id: string
    definition: DefinitionDocument
    compatibleNamespaceVersion: number
end

local record UpdateSystemTemplateOutput
    summary: SystemTemplateSummary
end

local record UploadEntityDefinitionsInput
    document: DefinitionDocument
    syncWithPublicNamespace: boolean
    deprecateExistingEntities: boolean
end

local record UploadEntityDefinitionsOutput
    uploadId: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record LimitExceededException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceInUseException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceAlreadyExistsException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ThrottlingException
    message: string
end

local record InternalFailureException
    message: string
end

local record InvalidRequestException
    message: string
end

local record ThrottlingException
    message: string
end

local type NamespaceDeletionStatusErrorCodes = "VALIDATION_FAILED"

local type NamespaceDeletionStatus = "IN_PROGRESS" | "SUCCEEDED" | "FAILED"

local type DeploymentTarget = "GREENGRASS" | "CLOUD"

local type UploadStatus = "IN_PROGRESS" | "SUCCEEDED" | "FAILED"

local type EntityType = "DEVICE" | "SERVICE" | "DEVICE_MODEL" | "CAPABILITY" | "STATE" | "ACTION" | "EVENT" | "PROPERTY" | "MAPPING" | "ENUM"

local record M
    AssociateEntityToThingInput: AssociateEntityToThingInput
    AssociateEntityToThingOutput: AssociateEntityToThingOutput
    CreateFlowTemplateInput: CreateFlowTemplateInput
    CreateFlowTemplateOutput: CreateFlowTemplateOutput
    CreateSystemInstanceInput: CreateSystemInstanceInput
    CreateSystemInstanceOutput: CreateSystemInstanceOutput
    CreateSystemTemplateInput: CreateSystemTemplateInput
    CreateSystemTemplateOutput: CreateSystemTemplateOutput
    DeleteFlowTemplateInput: DeleteFlowTemplateInput
    DeleteFlowTemplateOutput: DeleteFlowTemplateOutput
    DeleteNamespaceInput: DeleteNamespaceInput
    DeleteNamespaceOutput: DeleteNamespaceOutput
    DeleteSystemInstanceInput: DeleteSystemInstanceInput
    DeleteSystemInstanceOutput: DeleteSystemInstanceOutput
    DeleteSystemTemplateInput: DeleteSystemTemplateInput
    DeleteSystemTemplateOutput: DeleteSystemTemplateOutput
    DeploySystemInstanceInput: DeploySystemInstanceInput
    DeploySystemInstanceOutput: DeploySystemInstanceOutput
    DeprecateFlowTemplateInput: DeprecateFlowTemplateInput
    DeprecateFlowTemplateOutput: DeprecateFlowTemplateOutput
    DeprecateSystemTemplateInput: DeprecateSystemTemplateInput
    DeprecateSystemTemplateOutput: DeprecateSystemTemplateOutput
    DescribeNamespaceInput: DescribeNamespaceInput
    DescribeNamespaceOutput: DescribeNamespaceOutput
    DissociateEntityFromThingInput: DissociateEntityFromThingInput
    DissociateEntityFromThingOutput: DissociateEntityFromThingOutput
    GetEntitiesInput: GetEntitiesInput
    GetEntitiesOutput: GetEntitiesOutput
    GetFlowTemplateInput: GetFlowTemplateInput
    GetFlowTemplateOutput: GetFlowTemplateOutput
    GetFlowTemplateRevisionsInput: GetFlowTemplateRevisionsInput
    GetFlowTemplateRevisionsOutput: GetFlowTemplateRevisionsOutput
    GetNamespaceDeletionStatusInput: GetNamespaceDeletionStatusInput
    GetNamespaceDeletionStatusOutput: GetNamespaceDeletionStatusOutput
    GetSystemInstanceInput: GetSystemInstanceInput
    GetSystemInstanceOutput: GetSystemInstanceOutput
    GetSystemTemplateInput: GetSystemTemplateInput
    GetSystemTemplateOutput: GetSystemTemplateOutput
    GetSystemTemplateRevisionsInput: GetSystemTemplateRevisionsInput
    GetSystemTemplateRevisionsOutput: GetSystemTemplateRevisionsOutput
    GetUploadStatusInput: GetUploadStatusInput
    GetUploadStatusOutput: GetUploadStatusOutput
    ListFlowExecutionMessagesInput: ListFlowExecutionMessagesInput
    ListFlowExecutionMessagesOutput: ListFlowExecutionMessagesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    SearchEntitiesInput: SearchEntitiesInput
    SearchEntitiesOutput: SearchEntitiesOutput
    SearchFlowExecutionsInput: SearchFlowExecutionsInput
    SearchFlowExecutionsOutput: SearchFlowExecutionsOutput
    SearchFlowTemplatesInput: SearchFlowTemplatesInput
    SearchFlowTemplatesOutput: SearchFlowTemplatesOutput
    SearchSystemInstancesInput: SearchSystemInstancesInput
    SearchSystemInstancesOutput: SearchSystemInstancesOutput
    SearchSystemTemplatesInput: SearchSystemTemplatesInput
    SearchSystemTemplatesOutput: SearchSystemTemplatesOutput
    SearchThingsInput: SearchThingsInput
    SearchThingsOutput: SearchThingsOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UndeploySystemInstanceInput: UndeploySystemInstanceInput
    UndeploySystemInstanceOutput: UndeploySystemInstanceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateFlowTemplateInput: UpdateFlowTemplateInput
    UpdateFlowTemplateOutput: UpdateFlowTemplateOutput
    UpdateSystemTemplateInput: UpdateSystemTemplateInput
    UpdateSystemTemplateOutput: UpdateSystemTemplateOutput
    UploadEntityDefinitionsInput: UploadEntityDefinitionsInput
    UploadEntityDefinitionsOutput: UploadEntityDefinitionsOutput
end

return M
