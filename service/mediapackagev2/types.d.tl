local record CancelHarvestJobInput
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
    HarvestJobName: string
    ETag: string
end

local record CancelHarvestJobOutput
end

local record CreateChannelInput
    ChannelGroupName: string
    ChannelName: string
    ClientToken: string
    InputType: string
    Description: string
    InputSwitchConfiguration: InputSwitchConfiguration
    OutputHeaderConfiguration: OutputHeaderConfiguration
    Tags: {string : string}
end

local record CreateChannelOutput
    Arn: string
    ChannelName: string
    ChannelGroupName: string
    CreatedAt: number
    ModifiedAt: number
    Description: string
    IngestEndpoints: {IngestEndpoint}
    InputType: string
    ETag: string
    Tags: {string : string}
    InputSwitchConfiguration: InputSwitchConfiguration
    OutputHeaderConfiguration: OutputHeaderConfiguration
end

local record CreateChannelGroupInput
    ChannelGroupName: string
    ClientToken: string
    Description: string
    Tags: {string : string}
end

local record CreateChannelGroupOutput
    ChannelGroupName: string
    Arn: string
    EgressDomain: string
    CreatedAt: number
    ModifiedAt: number
    ETag: string
    Description: string
    Tags: {string : string}
end

local record CreateHarvestJobInput
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
    Description: string
    HarvestedManifests: HarvestedManifests
    ScheduleConfiguration: HarvesterScheduleConfiguration
    Destination: Destination
    ClientToken: string
    HarvestJobName: string
    Tags: {string : string}
end

local record CreateHarvestJobOutput
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
    Destination: Destination
    HarvestJobName: string
    HarvestedManifests: HarvestedManifests
    Description: string
    ScheduleConfiguration: HarvesterScheduleConfiguration
    Arn: string
    CreatedAt: number
    ModifiedAt: number
    Status: string
    ErrorMessage: string
    ETag: string
    Tags: {string : string}
end

local record CreateOriginEndpointInput
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
    ContainerType: string
    Segment: Segment
    ClientToken: string
    Description: string
    StartoverWindowSeconds: number
    HlsManifests: {CreateHlsManifestConfiguration}
    LowLatencyHlsManifests: {CreateLowLatencyHlsManifestConfiguration}
    DashManifests: {CreateDashManifestConfiguration}
    MssManifests: {CreateMssManifestConfiguration}
    ForceEndpointErrorConfiguration: ForceEndpointErrorConfiguration
    UriSeparator: string
    Tags: {string : string}
end

local record CreateOriginEndpointOutput
    Arn: string
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
    ContainerType: string
    Segment: Segment
    CreatedAt: number
    ModifiedAt: number
    Description: string
    StartoverWindowSeconds: number
    HlsManifests: {GetHlsManifestConfiguration}
    LowLatencyHlsManifests: {GetLowLatencyHlsManifestConfiguration}
    DashManifests: {GetDashManifestConfiguration}
    MssManifests: {GetMssManifestConfiguration}
    ForceEndpointErrorConfiguration: ForceEndpointErrorConfiguration
    UriSeparator: string
    ETag: string
    Tags: {string : string}
end

local record DeleteChannelInput
    ChannelGroupName: string
    ChannelName: string
end

local record DeleteChannelOutput
end

local record DeleteChannelGroupInput
    ChannelGroupName: string
end

local record DeleteChannelGroupOutput
end

local record DeleteChannelPolicyInput
    ChannelGroupName: string
    ChannelName: string
end

local record DeleteChannelPolicyOutput
end

local record DeleteOriginEndpointInput
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
end

local record DeleteOriginEndpointOutput
end

local record DeleteOriginEndpointPolicyInput
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
end

local record DeleteOriginEndpointPolicyOutput
end

local record GetChannelInput
    ChannelGroupName: string
    ChannelName: string
end

local record GetChannelOutput
    Arn: string
    ChannelName: string
    ChannelGroupName: string
    CreatedAt: number
    ModifiedAt: number
    ResetAt: number
    Description: string
    IngestEndpoints: {IngestEndpoint}
    InputType: string
    ETag: string
    Tags: {string : string}
    InputSwitchConfiguration: InputSwitchConfiguration
    OutputHeaderConfiguration: OutputHeaderConfiguration
end

local record GetChannelGroupInput
    ChannelGroupName: string
end

local record GetChannelGroupOutput
    ChannelGroupName: string
    Arn: string
    EgressDomain: string
    CreatedAt: number
    ModifiedAt: number
    Description: string
    ETag: string
    Tags: {string : string}
end

local record GetChannelPolicyInput
    ChannelGroupName: string
    ChannelName: string
end

local record GetChannelPolicyOutput
    ChannelGroupName: string
    ChannelName: string
    Policy: string
end

local record GetHarvestJobInput
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
    HarvestJobName: string
end

local record GetHarvestJobOutput
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
    Destination: Destination
    HarvestJobName: string
    HarvestedManifests: HarvestedManifests
    Description: string
    ScheduleConfiguration: HarvesterScheduleConfiguration
    Arn: string
    CreatedAt: number
    ModifiedAt: number
    Status: string
    ErrorMessage: string
    ETag: string
    Tags: {string : string}
end

local record GetOriginEndpointInput
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
end

local record GetOriginEndpointOutput
    Arn: string
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
    ContainerType: string
    Segment: Segment
    CreatedAt: number
    ModifiedAt: number
    ResetAt: number
    Description: string
    StartoverWindowSeconds: number
    HlsManifests: {GetHlsManifestConfiguration}
    LowLatencyHlsManifests: {GetLowLatencyHlsManifestConfiguration}
    DashManifests: {GetDashManifestConfiguration}
    MssManifests: {GetMssManifestConfiguration}
    ForceEndpointErrorConfiguration: ForceEndpointErrorConfiguration
    UriSeparator: string
    ETag: string
    Tags: {string : string}
end

local record GetOriginEndpointPolicyInput
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
end

local record GetOriginEndpointPolicyOutput
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
    Policy: string
    CdnAuthConfiguration: CdnAuthConfiguration
end

local record ListChannelGroupsInput
    MaxResults: number
    NextToken: string
end

local record ListChannelGroupsOutput
    Items: {ChannelGroupListConfiguration}
    NextToken: string
end

local record ListChannelsInput
    ChannelGroupName: string
    MaxResults: number
    NextToken: string
end

local record ListChannelsOutput
    Items: {ChannelListConfiguration}
    NextToken: string
end

local record ListHarvestJobsInput
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
    Status: string
    MaxResults: number
    NextToken: string
end

local record ListHarvestJobsOutput
    Items: {HarvestJob}
    NextToken: string
end

local record ListOriginEndpointsInput
    ChannelGroupName: string
    ChannelName: string
    MaxResults: number
    NextToken: string
end

local record ListOriginEndpointsOutput
    Items: {OriginEndpointListConfiguration}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record PutChannelPolicyInput
    ChannelGroupName: string
    ChannelName: string
    Policy: string
end

local record PutChannelPolicyOutput
end

local record PutOriginEndpointPolicyInput
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
    Policy: string
    CdnAuthConfiguration: CdnAuthConfiguration
end

local record PutOriginEndpointPolicyOutput
end

local record ResetChannelStateInput
    ChannelGroupName: string
    ChannelName: string
end

local record ResetChannelStateOutput
    ChannelGroupName: string
    ChannelName: string
    Arn: string
    ResetAt: number
end

local record ResetOriginEndpointStateInput
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
end

local record ResetOriginEndpointStateOutput
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
    Arn: string
    ResetAt: number
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

local record UpdateChannelInput
    ChannelGroupName: string
    ChannelName: string
    ETag: string
    Description: string
    InputSwitchConfiguration: InputSwitchConfiguration
    OutputHeaderConfiguration: OutputHeaderConfiguration
end

local record UpdateChannelOutput
    Arn: string
    ChannelName: string
    ChannelGroupName: string
    CreatedAt: number
    ModifiedAt: number
    Description: string
    IngestEndpoints: {IngestEndpoint}
    InputType: string
    ETag: string
    Tags: {string : string}
    InputSwitchConfiguration: InputSwitchConfiguration
    OutputHeaderConfiguration: OutputHeaderConfiguration
end

local record UpdateChannelGroupInput
    ChannelGroupName: string
    ETag: string
    Description: string
end

local record UpdateChannelGroupOutput
    ChannelGroupName: string
    Arn: string
    EgressDomain: string
    CreatedAt: number
    ModifiedAt: number
    Description: string
    ETag: string
    Tags: {string : string}
end

local record UpdateOriginEndpointInput
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
    ContainerType: string
    Segment: Segment
    Description: string
    StartoverWindowSeconds: number
    HlsManifests: {CreateHlsManifestConfiguration}
    LowLatencyHlsManifests: {CreateLowLatencyHlsManifestConfiguration}
    DashManifests: {CreateDashManifestConfiguration}
    MssManifests: {CreateMssManifestConfiguration}
    ForceEndpointErrorConfiguration: ForceEndpointErrorConfiguration
    UriSeparator: string
    ETag: string
end

local record UpdateOriginEndpointOutput
    Arn: string
    ChannelGroupName: string
    ChannelName: string
    OriginEndpointName: string
    ContainerType: string
    Segment: Segment
    CreatedAt: number
    ModifiedAt: number
    Description: string
    StartoverWindowSeconds: number
    HlsManifests: {GetHlsManifestConfiguration}
    LowLatencyHlsManifests: {GetLowLatencyHlsManifestConfiguration}
    MssManifests: {GetMssManifestConfiguration}
    ForceEndpointErrorConfiguration: ForceEndpointErrorConfiguration
    UriSeparator: string
    ETag: string
    Tags: {string : string}
    DashManifests: {GetDashManifestConfiguration}
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ConflictExceptionType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ConflictExceptionType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ConflictExceptionType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ConflictExceptionType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ConflictExceptionType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ConflictExceptionType: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ConflictExceptionType: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ConflictExceptionType: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ConflictExceptionType: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ConflictExceptionType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ConflictExceptionType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ConflictExceptionType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ConflictExceptionType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ConflictExceptionType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ConflictExceptionType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local record AccessDeniedException
    Message: string
end

local record ConflictException
    Message: string
    ConflictExceptionType: string
end

local record InternalServerException
    Message: string
end

local record ResourceNotFoundException
    Message: string
    ResourceTypeNotFound: string
end

local record ServiceQuotaExceededException
    Message: string
end

local record ThrottlingException
    Message: string
end

local record ValidationException
    Message: string
    ValidationExceptionType: string
end

local type InputType = "HLS" | "CMAF"

local type UriSeparator = "UNDERSCORE" | "HYPHEN"

local type ContainerType = "TS" | "CMAF" | "ISM"

local type HarvestJobStatus = "QUEUED" | "IN_PROGRESS" | "CANCELLED" | "COMPLETED" | "FAILED"

local record M
    CancelHarvestJobInput: CancelHarvestJobInput
    CancelHarvestJobOutput: CancelHarvestJobOutput
    CreateChannelInput: CreateChannelInput
    CreateChannelOutput: CreateChannelOutput
    CreateChannelGroupInput: CreateChannelGroupInput
    CreateChannelGroupOutput: CreateChannelGroupOutput
    CreateHarvestJobInput: CreateHarvestJobInput
    CreateHarvestJobOutput: CreateHarvestJobOutput
    CreateOriginEndpointInput: CreateOriginEndpointInput
    CreateOriginEndpointOutput: CreateOriginEndpointOutput
    DeleteChannelInput: DeleteChannelInput
    DeleteChannelOutput: DeleteChannelOutput
    DeleteChannelGroupInput: DeleteChannelGroupInput
    DeleteChannelGroupOutput: DeleteChannelGroupOutput
    DeleteChannelPolicyInput: DeleteChannelPolicyInput
    DeleteChannelPolicyOutput: DeleteChannelPolicyOutput
    DeleteOriginEndpointInput: DeleteOriginEndpointInput
    DeleteOriginEndpointOutput: DeleteOriginEndpointOutput
    DeleteOriginEndpointPolicyInput: DeleteOriginEndpointPolicyInput
    DeleteOriginEndpointPolicyOutput: DeleteOriginEndpointPolicyOutput
    GetChannelInput: GetChannelInput
    GetChannelOutput: GetChannelOutput
    GetChannelGroupInput: GetChannelGroupInput
    GetChannelGroupOutput: GetChannelGroupOutput
    GetChannelPolicyInput: GetChannelPolicyInput
    GetChannelPolicyOutput: GetChannelPolicyOutput
    GetHarvestJobInput: GetHarvestJobInput
    GetHarvestJobOutput: GetHarvestJobOutput
    GetOriginEndpointInput: GetOriginEndpointInput
    GetOriginEndpointOutput: GetOriginEndpointOutput
    GetOriginEndpointPolicyInput: GetOriginEndpointPolicyInput
    GetOriginEndpointPolicyOutput: GetOriginEndpointPolicyOutput
    ListChannelGroupsInput: ListChannelGroupsInput
    ListChannelGroupsOutput: ListChannelGroupsOutput
    ListChannelsInput: ListChannelsInput
    ListChannelsOutput: ListChannelsOutput
    ListHarvestJobsInput: ListHarvestJobsInput
    ListHarvestJobsOutput: ListHarvestJobsOutput
    ListOriginEndpointsInput: ListOriginEndpointsInput
    ListOriginEndpointsOutput: ListOriginEndpointsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutChannelPolicyInput: PutChannelPolicyInput
    PutChannelPolicyOutput: PutChannelPolicyOutput
    PutOriginEndpointPolicyInput: PutOriginEndpointPolicyInput
    PutOriginEndpointPolicyOutput: PutOriginEndpointPolicyOutput
    ResetChannelStateInput: ResetChannelStateInput
    ResetChannelStateOutput: ResetChannelStateOutput
    ResetOriginEndpointStateInput: ResetOriginEndpointStateInput
    ResetOriginEndpointStateOutput: ResetOriginEndpointStateOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateChannelInput: UpdateChannelInput
    UpdateChannelOutput: UpdateChannelOutput
    UpdateChannelGroupInput: UpdateChannelGroupInput
    UpdateChannelGroupOutput: UpdateChannelGroupOutput
    UpdateOriginEndpointInput: UpdateOriginEndpointInput
    UpdateOriginEndpointOutput: UpdateOriginEndpointOutput
end

return M
