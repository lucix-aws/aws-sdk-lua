local record CreateApplicationInput
    Name: string
    Namespace: string
    Description: string
    ApplicationSourceConfig: ApplicationSourceConfig
    Subscriptions: {Subscription}
    Publications: {Publication}
    ClientToken: string
    Tags: {string : string}
    Permissions: {string}
    IsService: boolean
    InitializationTimeout: number
    ApplicationConfig: ApplicationConfig
    IframeConfig: IframeConfig
    ApplicationType: string
end

local record CreateApplicationOutput
    Arn: string
    Id: string
end

local record CreateDataIntegrationInput
    Name: string
    Description: string
    KmsKey: string
    SourceURI: string
    ScheduleConfig: ScheduleConfiguration
    Tags: {string : string}
    ClientToken: string
    FileConfiguration: FileConfiguration
    ObjectConfiguration: {string : {string : {string}}}
end

local record CreateDataIntegrationOutput
    Arn: string
    Id: string
    Name: string
    Description: string
    KmsKey: string
    SourceURI: string
    ScheduleConfiguration: ScheduleConfiguration
    Tags: {string : string}
    ClientToken: string
    FileConfiguration: FileConfiguration
    ObjectConfiguration: {string : {string : {string}}}
end

local record CreateDataIntegrationAssociationInput
    DataIntegrationIdentifier: string
    ClientId: string
    ObjectConfiguration: {string : {string : {string}}}
    DestinationURI: string
    ClientAssociationMetadata: {string : string}
    ClientToken: string
    ExecutionConfiguration: ExecutionConfiguration
end

local record CreateDataIntegrationAssociationOutput
    DataIntegrationAssociationId: string
    DataIntegrationArn: string
end

local record CreateEventIntegrationInput
    Name: string
    Description: string
    EventFilter: EventFilter
    EventBridgeBus: string
    ClientToken: string
    Tags: {string : string}
end

local record CreateEventIntegrationOutput
    EventIntegrationArn: string
end

local record DeleteApplicationInput
    Arn: string
end

local record DeleteApplicationOutput
end

local record DeleteDataIntegrationInput
    DataIntegrationIdentifier: string
end

local record DeleteDataIntegrationOutput
end

local record DeleteEventIntegrationInput
    Name: string
end

local record DeleteEventIntegrationOutput
end

local record GetApplicationInput
    Arn: string
end

local record GetApplicationOutput
    Arn: string
    Id: string
    Name: string
    Namespace: string
    Description: string
    ApplicationSourceConfig: ApplicationSourceConfig
    Subscriptions: {Subscription}
    Publications: {Publication}
    CreatedTime: number
    LastModifiedTime: number
    Tags: {string : string}
    Permissions: {string}
    IsService: boolean
    InitializationTimeout: number
    ApplicationConfig: ApplicationConfig
    IframeConfig: IframeConfig
    ApplicationType: string
end

local record GetDataIntegrationInput
    Identifier: string
end

local record GetDataIntegrationOutput
    Arn: string
    Id: string
    Name: string
    Description: string
    KmsKey: string
    SourceURI: string
    ScheduleConfiguration: ScheduleConfiguration
    Tags: {string : string}
    FileConfiguration: FileConfiguration
    ObjectConfiguration: {string : {string : {string}}}
end

local record GetEventIntegrationInput
    Name: string
end

local record GetEventIntegrationOutput
    Name: string
    Description: string
    EventIntegrationArn: string
    EventBridgeBus: string
    EventFilter: EventFilter
    Tags: {string : string}
end

local record ListApplicationAssociationsInput
    ApplicationId: string
    NextToken: string
    MaxResults: number
end

local record ListApplicationAssociationsOutput
    ApplicationAssociations: {ApplicationAssociationSummary}
    NextToken: string
end

local record ListApplicationsInput
    NextToken: string
    MaxResults: number
    ApplicationType: string
end

local record ListApplicationsOutput
    Applications: {ApplicationSummary}
    NextToken: string
end

local record ListDataIntegrationAssociationsInput
    DataIntegrationIdentifier: string
    NextToken: string
    MaxResults: number
end

local record ListDataIntegrationAssociationsOutput
    DataIntegrationAssociations: {DataIntegrationAssociationSummary}
    NextToken: string
end

local record ListDataIntegrationsInput
    NextToken: string
    MaxResults: number
end

local record ListDataIntegrationsOutput
    DataIntegrations: {DataIntegrationSummary}
    NextToken: string
end

local record ListEventIntegrationAssociationsInput
    EventIntegrationName: string
    NextToken: string
    MaxResults: number
end

local record ListEventIntegrationAssociationsOutput
    EventIntegrationAssociations: {EventIntegrationAssociation}
    NextToken: string
end

local record ListEventIntegrationsInput
    NextToken: string
    MaxResults: number
end

local record ListEventIntegrationsOutput
    EventIntegrations: {EventIntegration}
    NextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
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

local record UpdateApplicationInput
    Arn: string
    Name: string
    Description: string
    ApplicationSourceConfig: ApplicationSourceConfig
    Subscriptions: {Subscription}
    Publications: {Publication}
    Permissions: {string}
    IsService: boolean
    InitializationTimeout: number
    ApplicationConfig: ApplicationConfig
    IframeConfig: IframeConfig
    ApplicationType: string
end

local record UpdateApplicationOutput
end

local record UpdateDataIntegrationInput
    Identifier: string
    Name: string
    Description: string
end

local record UpdateDataIntegrationOutput
end

local record UpdateDataIntegrationAssociationInput
    DataIntegrationIdentifier: string
    DataIntegrationAssociationIdentifier: string
    ExecutionConfiguration: ExecutionConfiguration
end

local record UpdateDataIntegrationAssociationOutput
end

local record UpdateEventIntegrationInput
    Name: string
    Description: string
end

local record UpdateEventIntegrationOutput
end

local record AccessDeniedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record DuplicateResourceException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServiceError
    Message: string
end

local record InvalidRequestException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local type ApplicationType = "STANDARD" | "SERVICE" | "MCP_SERVER"

local record M
    CreateApplicationInput: CreateApplicationInput
    CreateApplicationOutput: CreateApplicationOutput
    CreateDataIntegrationInput: CreateDataIntegrationInput
    CreateDataIntegrationOutput: CreateDataIntegrationOutput
    CreateDataIntegrationAssociationInput: CreateDataIntegrationAssociationInput
    CreateDataIntegrationAssociationOutput: CreateDataIntegrationAssociationOutput
    CreateEventIntegrationInput: CreateEventIntegrationInput
    CreateEventIntegrationOutput: CreateEventIntegrationOutput
    DeleteApplicationInput: DeleteApplicationInput
    DeleteApplicationOutput: DeleteApplicationOutput
    DeleteDataIntegrationInput: DeleteDataIntegrationInput
    DeleteDataIntegrationOutput: DeleteDataIntegrationOutput
    DeleteEventIntegrationInput: DeleteEventIntegrationInput
    DeleteEventIntegrationOutput: DeleteEventIntegrationOutput
    GetApplicationInput: GetApplicationInput
    GetApplicationOutput: GetApplicationOutput
    GetDataIntegrationInput: GetDataIntegrationInput
    GetDataIntegrationOutput: GetDataIntegrationOutput
    GetEventIntegrationInput: GetEventIntegrationInput
    GetEventIntegrationOutput: GetEventIntegrationOutput
    ListApplicationAssociationsInput: ListApplicationAssociationsInput
    ListApplicationAssociationsOutput: ListApplicationAssociationsOutput
    ListApplicationsInput: ListApplicationsInput
    ListApplicationsOutput: ListApplicationsOutput
    ListDataIntegrationAssociationsInput: ListDataIntegrationAssociationsInput
    ListDataIntegrationAssociationsOutput: ListDataIntegrationAssociationsOutput
    ListDataIntegrationsInput: ListDataIntegrationsInput
    ListDataIntegrationsOutput: ListDataIntegrationsOutput
    ListEventIntegrationAssociationsInput: ListEventIntegrationAssociationsInput
    ListEventIntegrationAssociationsOutput: ListEventIntegrationAssociationsOutput
    ListEventIntegrationsInput: ListEventIntegrationsInput
    ListEventIntegrationsOutput: ListEventIntegrationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateApplicationInput: UpdateApplicationInput
    UpdateApplicationOutput: UpdateApplicationOutput
    UpdateDataIntegrationInput: UpdateDataIntegrationInput
    UpdateDataIntegrationOutput: UpdateDataIntegrationOutput
    UpdateDataIntegrationAssociationInput: UpdateDataIntegrationAssociationInput
    UpdateDataIntegrationAssociationOutput: UpdateDataIntegrationAssociationOutput
    UpdateEventIntegrationInput: UpdateEventIntegrationInput
    UpdateEventIntegrationOutput: UpdateEventIntegrationOutput
end

return M
