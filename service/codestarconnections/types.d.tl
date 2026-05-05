local record CreateConnectionInput
    ProviderType: string
    ConnectionName: string
    Tags: {Tag}
    HostArn: string
end

local record CreateConnectionOutput
    ConnectionArn: string
    Tags: {Tag}
end

local record CreateHostInput
    Name: string
    ProviderType: string
    ProviderEndpoint: string
    VpcConfiguration: VpcConfiguration
    Tags: {Tag}
end

local record CreateHostOutput
    HostArn: string
    Tags: {Tag}
end

local record CreateRepositoryLinkInput
    ConnectionArn: string
    OwnerId: string
    RepositoryName: string
    EncryptionKeyArn: string
    Tags: {Tag}
end

local record CreateRepositoryLinkOutput
    RepositoryLinkInfo: RepositoryLinkInfo
end

local record CreateSyncConfigurationInput
    Branch: string
    ConfigFile: string
    RepositoryLinkId: string
    ResourceName: string
    RoleArn: string
    SyncType: string
    PublishDeploymentStatus: string
    TriggerResourceUpdateOn: string
end

local record CreateSyncConfigurationOutput
    SyncConfiguration: SyncConfiguration
end

local record DeleteConnectionInput
    ConnectionArn: string
end

local record DeleteConnectionOutput
end

local record DeleteHostInput
    HostArn: string
end

local record DeleteHostOutput
end

local record DeleteRepositoryLinkInput
    RepositoryLinkId: string
end

local record DeleteRepositoryLinkOutput
end

local record DeleteSyncConfigurationInput
    SyncType: string
    ResourceName: string
end

local record DeleteSyncConfigurationOutput
end

local record GetConnectionInput
    ConnectionArn: string
end

local record GetConnectionOutput
    Connection: Connection
end

local record GetHostInput
    HostArn: string
end

local record GetHostOutput
    Name: string
    Status: string
    ProviderType: string
    ProviderEndpoint: string
    VpcConfiguration: VpcConfiguration
end

local record GetRepositoryLinkInput
    RepositoryLinkId: string
end

local record GetRepositoryLinkOutput
    RepositoryLinkInfo: RepositoryLinkInfo
end

local record GetRepositorySyncStatusInput
    Branch: string
    RepositoryLinkId: string
    SyncType: string
end

local record GetRepositorySyncStatusOutput
    LatestSync: RepositorySyncAttempt
end

local record GetResourceSyncStatusInput
    ResourceName: string
    SyncType: string
end

local record GetResourceSyncStatusOutput
    DesiredState: Revision
    LatestSuccessfulSync: ResourceSyncAttempt
    LatestSync: ResourceSyncAttempt
end

local record GetSyncBlockerSummaryInput
    SyncType: string
    ResourceName: string
end

local record GetSyncBlockerSummaryOutput
    SyncBlockerSummary: SyncBlockerSummary
end

local record GetSyncConfigurationInput
    SyncType: string
    ResourceName: string
end

local record GetSyncConfigurationOutput
    SyncConfiguration: SyncConfiguration
end

local record ListConnectionsInput
    ProviderTypeFilter: string
    HostArnFilter: string
    MaxResults: number
    NextToken: string
end

local record ListConnectionsOutput
    Connections: {Connection}
    NextToken: string
end

local record ListHostsInput
    MaxResults: number
    NextToken: string
end

local record ListHostsOutput
    Hosts: {Host}
    NextToken: string
end

local record ListRepositoryLinksInput
    MaxResults: number
    NextToken: string
end

local record ListRepositoryLinksOutput
    RepositoryLinks: {RepositoryLinkInfo}
    NextToken: string
end

local record ListRepositorySyncDefinitionsInput
    RepositoryLinkId: string
    SyncType: string
end

local record ListRepositorySyncDefinitionsOutput
    RepositorySyncDefinitions: {RepositorySyncDefinition}
    NextToken: string
end

local record ListSyncConfigurationsInput
    MaxResults: number
    NextToken: string
    RepositoryLinkId: string
    SyncType: string
end

local record ListSyncConfigurationsOutput
    SyncConfigurations: {SyncConfiguration}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record TagResourceInput
    ResourceArn: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateHostInput
    HostArn: string
    ProviderEndpoint: string
    VpcConfiguration: VpcConfiguration
end

local record UpdateHostOutput
end

local record UpdateRepositoryLinkInput
    ConnectionArn: string
    EncryptionKeyArn: string
    RepositoryLinkId: string
end

local record UpdateRepositoryLinkOutput
    RepositoryLinkInfo: RepositoryLinkInfo
end

local record UpdateSyncBlockerInput
    Id: string
    SyncType: string
    ResourceName: string
    ResolvedReason: string
end

local record UpdateSyncBlockerOutput
    ResourceName: string
    ParentResourceName: string
    SyncBlocker: SyncBlocker
end

local record UpdateSyncConfigurationInput
    Branch: string
    ConfigFile: string
    RepositoryLinkId: string
    ResourceName: string
    RoleArn: string
    SyncType: string
    PublishDeploymentStatus: string
    TriggerResourceUpdateOn: string
end

local record UpdateSyncConfigurationOutput
    SyncConfiguration: SyncConfiguration
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceUnavailableException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceAlreadyExistsException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceUnavailableException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record SyncConfigurationStillExistsException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UnsupportedProviderTypeException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceUnavailableException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceUnavailableException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidInputException
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

local record InternalServerException
    Message: string
end

local record InvalidInputException
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

local record InternalServerException
    Message: string
end

local record InvalidInputException
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

local record InternalServerException
    Message: string
end

local record InvalidInputException
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

local record InternalServerException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidInputException
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

local record InternalServerException
    Message: string
end

local record InvalidInputException
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

local record InternalServerException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record LimitExceededException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ConflictException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ResourceUnavailableException
    Message: string
end

local record UnsupportedOperationException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConditionalCheckFailedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UpdateOutOfSyncException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record RetryLatestCommitFailedException
    Message: string
end

local record SyncBlockerDoesNotExistException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ConcurrentModificationException
    Message: string
end

local record InternalServerException
    Message: string
end

local record InvalidInputException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record UpdateOutOfSyncException
    Message: string
end

local type SyncConfigurationType = "CFN_STACK_SYNC"

local type ProviderType = "Bitbucket" | "GitHub" | "GitHubEnterpriseServer" | "GitLab" | "GitLabSelfManaged"

local type TriggerResourceUpdateOn = "ANY_CHANGE" | "FILE_CHANGE"

local type PublishDeploymentStatus = "ENABLED" | "DISABLED"

local record M
    CreateConnectionInput: CreateConnectionInput
    CreateConnectionOutput: CreateConnectionOutput
    CreateHostInput: CreateHostInput
    CreateHostOutput: CreateHostOutput
    CreateRepositoryLinkInput: CreateRepositoryLinkInput
    CreateRepositoryLinkOutput: CreateRepositoryLinkOutput
    CreateSyncConfigurationInput: CreateSyncConfigurationInput
    CreateSyncConfigurationOutput: CreateSyncConfigurationOutput
    DeleteConnectionInput: DeleteConnectionInput
    DeleteConnectionOutput: DeleteConnectionOutput
    DeleteHostInput: DeleteHostInput
    DeleteHostOutput: DeleteHostOutput
    DeleteRepositoryLinkInput: DeleteRepositoryLinkInput
    DeleteRepositoryLinkOutput: DeleteRepositoryLinkOutput
    DeleteSyncConfigurationInput: DeleteSyncConfigurationInput
    DeleteSyncConfigurationOutput: DeleteSyncConfigurationOutput
    GetConnectionInput: GetConnectionInput
    GetConnectionOutput: GetConnectionOutput
    GetHostInput: GetHostInput
    GetHostOutput: GetHostOutput
    GetRepositoryLinkInput: GetRepositoryLinkInput
    GetRepositoryLinkOutput: GetRepositoryLinkOutput
    GetRepositorySyncStatusInput: GetRepositorySyncStatusInput
    GetRepositorySyncStatusOutput: GetRepositorySyncStatusOutput
    GetResourceSyncStatusInput: GetResourceSyncStatusInput
    GetResourceSyncStatusOutput: GetResourceSyncStatusOutput
    GetSyncBlockerSummaryInput: GetSyncBlockerSummaryInput
    GetSyncBlockerSummaryOutput: GetSyncBlockerSummaryOutput
    GetSyncConfigurationInput: GetSyncConfigurationInput
    GetSyncConfigurationOutput: GetSyncConfigurationOutput
    ListConnectionsInput: ListConnectionsInput
    ListConnectionsOutput: ListConnectionsOutput
    ListHostsInput: ListHostsInput
    ListHostsOutput: ListHostsOutput
    ListRepositoryLinksInput: ListRepositoryLinksInput
    ListRepositoryLinksOutput: ListRepositoryLinksOutput
    ListRepositorySyncDefinitionsInput: ListRepositorySyncDefinitionsInput
    ListRepositorySyncDefinitionsOutput: ListRepositorySyncDefinitionsOutput
    ListSyncConfigurationsInput: ListSyncConfigurationsInput
    ListSyncConfigurationsOutput: ListSyncConfigurationsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateHostInput: UpdateHostInput
    UpdateHostOutput: UpdateHostOutput
    UpdateRepositoryLinkInput: UpdateRepositoryLinkInput
    UpdateRepositoryLinkOutput: UpdateRepositoryLinkOutput
    UpdateSyncBlockerInput: UpdateSyncBlockerInput
    UpdateSyncBlockerOutput: UpdateSyncBlockerOutput
    UpdateSyncConfigurationInput: UpdateSyncConfigurationInput
    UpdateSyncConfigurationOutput: UpdateSyncConfigurationOutput
end

return M
