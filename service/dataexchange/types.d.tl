local record AcceptDataGrantInput
    DataGrantArn: string
end

local record AcceptDataGrantOutput
    Name: string
    SenderPrincipal: string
    ReceiverPrincipal: string
    Description: string
    AcceptanceState: string
    AcceptedAt: number
    EndsAt: number
    GrantDistributionScope: string
    DataSetId: string
    Id: string
    Arn: string
    CreatedAt: number
    UpdatedAt: number
end

local record CancelJobInput
    JobId: string
end

local record CancelJobOutput
end

local record CreateDataGrantInput
    Name: string
    GrantDistributionScope: string
    ReceiverPrincipal: string
    SourceDataSetId: string
    EndsAt: number
    Description: string
    Tags: {string : string}
end

local record CreateDataGrantOutput
    Name: string
    SenderPrincipal: string
    ReceiverPrincipal: string
    Description: string
    AcceptanceState: string
    AcceptedAt: number
    EndsAt: number
    GrantDistributionScope: string
    DataSetId: string
    SourceDataSetId: string
    Id: string
    Arn: string
    CreatedAt: number
    UpdatedAt: number
    Tags: {string : string}
end

local record CreateDataSetInput
    AssetType: string
    Description: string
    Name: string
    Tags: {string : string}
end

local record CreateDataSetOutput
    Arn: string
    AssetType: string
    CreatedAt: number
    Description: string
    Id: string
    Name: string
    Origin: string
    OriginDetails: OriginDetails
    SourceId: string
    Tags: {string : string}
    UpdatedAt: number
end

local record CreateEventActionInput
    Action: Action
    Event: Event
    Tags: {string : string}
end

local record CreateEventActionOutput
    Action: Action
    Arn: string
    CreatedAt: number
    Event: Event
    Id: string
    Tags: {string : string}
    UpdatedAt: number
end

local record CreateJobInput
    AssetConfiguration: AssetConfiguration
    Details: RequestDetails
    Type: string
end

local record CreateJobOutput
    Arn: string
    AssetConfiguration: AssetConfiguration
    CreatedAt: number
    Details: ResponseDetails
    Errors: {JobError}
    Id: string
    State: string
    Type: string
    UpdatedAt: number
end

local record CreateRevisionInput
    Comment: string
    DataSetId: string
    Tags: {string : string}
end

local record CreateRevisionOutput
    Arn: string
    Comment: string
    CreatedAt: number
    DataSetId: string
    Finalized: boolean
    Id: string
    SourceId: string
    Tags: {string : string}
    UpdatedAt: number
    RevocationComment: string
    Revoked: boolean
    RevokedAt: number
end

local record DeleteAssetInput
    AssetId: string
    DataSetId: string
    RevisionId: string
end

local record DeleteAssetOutput
end

local record DeleteDataGrantInput
    DataGrantId: string
end

local record DeleteDataGrantOutput
end

local record DeleteDataSetInput
    DataSetId: string
end

local record DeleteDataSetOutput
end

local record DeleteEventActionInput
    EventActionId: string
end

local record DeleteEventActionOutput
end

local record DeleteRevisionInput
    DataSetId: string
    RevisionId: string
end

local record DeleteRevisionOutput
end

local record GetAssetInput
    AssetId: string
    DataSetId: string
    RevisionId: string
end

local record GetAssetOutput
    Arn: string
    AssetDetails: AssetDetails
    AssetType: string
    CreatedAt: number
    DataSetId: string
    Id: string
    Name: string
    RevisionId: string
    SourceId: string
    Tags: {string : string}
    UpdatedAt: number
end

local record GetDataGrantInput
    DataGrantId: string
end

local record GetDataGrantOutput
    Name: string
    SenderPrincipal: string
    ReceiverPrincipal: string
    Description: string
    AcceptanceState: string
    AcceptedAt: number
    EndsAt: number
    GrantDistributionScope: string
    DataSetId: string
    SourceDataSetId: string
    Id: string
    Arn: string
    CreatedAt: number
    UpdatedAt: number
    Tags: {string : string}
end

local record GetDataSetInput
    DataSetId: string
end

local record GetDataSetOutput
    Arn: string
    AssetType: string
    CreatedAt: number
    Description: string
    Id: string
    Name: string
    Origin: string
    OriginDetails: OriginDetails
    SourceId: string
    Tags: {string : string}
    UpdatedAt: number
end

local record GetEventActionInput
    EventActionId: string
end

local record GetEventActionOutput
    Action: Action
    Arn: string
    CreatedAt: number
    Event: Event
    Id: string
    Tags: {string : string}
    UpdatedAt: number
end

local record GetJobInput
    JobId: string
end

local record GetJobOutput
    Arn: string
    AssetConfiguration: AssetConfiguration
    CreatedAt: number
    Details: ResponseDetails
    Errors: {JobError}
    Id: string
    State: string
    Type: string
    UpdatedAt: number
end

local record GetReceivedDataGrantInput
    DataGrantArn: string
end

local record GetReceivedDataGrantOutput
    Name: string
    SenderPrincipal: string
    ReceiverPrincipal: string
    Description: string
    AcceptanceState: string
    AcceptedAt: number
    EndsAt: number
    GrantDistributionScope: string
    DataSetId: string
    Id: string
    Arn: string
    CreatedAt: number
    UpdatedAt: number
end

local record GetRevisionInput
    DataSetId: string
    RevisionId: string
end

local record GetRevisionOutput
    Arn: string
    Comment: string
    CreatedAt: number
    DataSetId: string
    Finalized: boolean
    Id: string
    SourceId: string
    Tags: {string : string}
    UpdatedAt: number
    RevocationComment: string
    Revoked: boolean
    RevokedAt: number
end

local record ListDataGrantsInput
    MaxResults: number
    NextToken: string
end

local record ListDataGrantsOutput
    DataGrantSummaries: {DataGrantSummaryEntry}
    NextToken: string
end

local record ListDataSetRevisionsInput
    DataSetId: string
    MaxResults: number
    NextToken: string
end

local record ListDataSetRevisionsOutput
    NextToken: string
    Revisions: {RevisionEntry}
end

local record ListDataSetsInput
    MaxResults: number
    NextToken: string
    Origin: string
end

local record ListDataSetsOutput
    DataSets: {DataSetEntry}
    NextToken: string
end

local record ListEventActionsInput
    EventSourceId: string
    MaxResults: number
    NextToken: string
end

local record ListEventActionsOutput
    EventActions: {EventActionEntry}
    NextToken: string
end

local record ListJobsInput
    DataSetId: string
    MaxResults: number
    NextToken: string
    RevisionId: string
end

local record ListJobsOutput
    Jobs: {JobEntry}
    NextToken: string
end

local record ListReceivedDataGrantsInput
    MaxResults: number
    NextToken: string
    AcceptanceState: {string}
end

local record ListReceivedDataGrantsOutput
    DataGrantSummaries: {ReceivedDataGrantSummariesEntry}
    NextToken: string
end

local record ListRevisionAssetsInput
    DataSetId: string
    MaxResults: number
    NextToken: string
    RevisionId: string
end

local record ListRevisionAssetsOutput
    Assets: {AssetEntry}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record RevokeRevisionInput
    DataSetId: string
    RevisionId: string
    RevocationComment: string
end

local record RevokeRevisionOutput
    Arn: string
    Comment: string
    CreatedAt: number
    DataSetId: string
    Finalized: boolean
    Id: string
    SourceId: string
    UpdatedAt: number
    RevocationComment: string
    Revoked: boolean
    RevokedAt: number
end

local record SendApiAssetInput
    Body: string
    QueryStringParameters: {string : string}
    AssetId: string
    DataSetId: string
    RequestHeaders: {string : string}
    Method: string
    Path: string
    RevisionId: string
end

local record SendApiAssetOutput
    Body: string
    ResponseHeaders: {string : string}
end

local record SendDataSetNotificationInput
    Scope: ScopeDetails
    ClientToken: string
    Comment: string
    DataSetId: string
    Details: NotificationDetails
    Type: string
end

local record SendDataSetNotificationOutput
end

local record StartJobInput
    JobId: string
end

local record StartJobOutput
end

local record TagResourceInput
    ResourceArn: string
    Tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceArn: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateAssetInput
    AssetId: string
    DataSetId: string
    Name: string
    RevisionId: string
end

local record UpdateAssetOutput
    Arn: string
    AssetDetails: AssetDetails
    AssetType: string
    CreatedAt: number
    DataSetId: string
    Id: string
    Name: string
    RevisionId: string
    SourceId: string
    UpdatedAt: number
end

local record UpdateDataSetInput
    DataSetId: string
    Description: string
    Name: string
end

local record UpdateDataSetOutput
    Arn: string
    AssetType: string
    CreatedAt: number
    Description: string
    Id: string
    Name: string
    Origin: string
    OriginDetails: OriginDetails
    SourceId: string
    UpdatedAt: number
end

local record UpdateEventActionInput
    Action: Action
    EventActionId: string
end

local record UpdateEventActionOutput
    Action: Action
    Arn: string
    CreatedAt: number
    Event: Event
    Id: string
    UpdatedAt: number
end

local record UpdateRevisionInput
    Comment: string
    DataSetId: string
    Finalized: boolean
    RevisionId: string
end

local record UpdateRevisionOutput
    Arn: string
    Comment: string
    CreatedAt: number
    DataSetId: string
    Finalized: boolean
    Id: string
    SourceId: string
    UpdatedAt: number
    RevocationComment: string
    Revoked: boolean
    RevokedAt: number
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ServiceLimitExceededException
    LimitName: string
    LimitValue: number
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceLimitExceededException
    LimitName: string
    LimitValue: number
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ServiceLimitExceededException
    LimitName: string
    LimitValue: number
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceId: string
    ResourceType: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ExceptionCause: string
end

local record M
    AcceptDataGrantInput: AcceptDataGrantInput
    AcceptDataGrantOutput: AcceptDataGrantOutput
    CancelJobInput: CancelJobInput
    CancelJobOutput: CancelJobOutput
    CreateDataGrantInput: CreateDataGrantInput
    CreateDataGrantOutput: CreateDataGrantOutput
    CreateDataSetInput: CreateDataSetInput
    CreateDataSetOutput: CreateDataSetOutput
    CreateEventActionInput: CreateEventActionInput
    CreateEventActionOutput: CreateEventActionOutput
    CreateJobInput: CreateJobInput
    CreateJobOutput: CreateJobOutput
    CreateRevisionInput: CreateRevisionInput
    CreateRevisionOutput: CreateRevisionOutput
    DeleteAssetInput: DeleteAssetInput
    DeleteAssetOutput: DeleteAssetOutput
    DeleteDataGrantInput: DeleteDataGrantInput
    DeleteDataGrantOutput: DeleteDataGrantOutput
    DeleteDataSetInput: DeleteDataSetInput
    DeleteDataSetOutput: DeleteDataSetOutput
    DeleteEventActionInput: DeleteEventActionInput
    DeleteEventActionOutput: DeleteEventActionOutput
    DeleteRevisionInput: DeleteRevisionInput
    DeleteRevisionOutput: DeleteRevisionOutput
    GetAssetInput: GetAssetInput
    GetAssetOutput: GetAssetOutput
    GetDataGrantInput: GetDataGrantInput
    GetDataGrantOutput: GetDataGrantOutput
    GetDataSetInput: GetDataSetInput
    GetDataSetOutput: GetDataSetOutput
    GetEventActionInput: GetEventActionInput
    GetEventActionOutput: GetEventActionOutput
    GetJobInput: GetJobInput
    GetJobOutput: GetJobOutput
    GetReceivedDataGrantInput: GetReceivedDataGrantInput
    GetReceivedDataGrantOutput: GetReceivedDataGrantOutput
    GetRevisionInput: GetRevisionInput
    GetRevisionOutput: GetRevisionOutput
    ListDataGrantsInput: ListDataGrantsInput
    ListDataGrantsOutput: ListDataGrantsOutput
    ListDataSetRevisionsInput: ListDataSetRevisionsInput
    ListDataSetRevisionsOutput: ListDataSetRevisionsOutput
    ListDataSetsInput: ListDataSetsInput
    ListDataSetsOutput: ListDataSetsOutput
    ListEventActionsInput: ListEventActionsInput
    ListEventActionsOutput: ListEventActionsOutput
    ListJobsInput: ListJobsInput
    ListJobsOutput: ListJobsOutput
    ListReceivedDataGrantsInput: ListReceivedDataGrantsInput
    ListReceivedDataGrantsOutput: ListReceivedDataGrantsOutput
    ListRevisionAssetsInput: ListRevisionAssetsInput
    ListRevisionAssetsOutput: ListRevisionAssetsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RevokeRevisionInput: RevokeRevisionInput
    RevokeRevisionOutput: RevokeRevisionOutput
    SendApiAssetInput: SendApiAssetInput
    SendApiAssetOutput: SendApiAssetOutput
    SendDataSetNotificationInput: SendDataSetNotificationInput
    SendDataSetNotificationOutput: SendDataSetNotificationOutput
    StartJobInput: StartJobInput
    StartJobOutput: StartJobOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateAssetInput: UpdateAssetInput
    UpdateAssetOutput: UpdateAssetOutput
    UpdateDataSetInput: UpdateDataSetInput
    UpdateDataSetOutput: UpdateDataSetOutput
    UpdateEventActionInput: UpdateEventActionInput
    UpdateEventActionOutput: UpdateEventActionOutput
    UpdateRevisionInput: UpdateRevisionInput
    UpdateRevisionOutput: UpdateRevisionOutput
end

return M
