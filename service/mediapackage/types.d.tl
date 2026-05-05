local record ConfigureLogsInput
    EgressAccessLogs: EgressAccessLogs
    Id: string
    IngressAccessLogs: IngressAccessLogs
end

local record ConfigureLogsOutput
    Arn: string
    CreatedAt: string
    Description: string
    EgressAccessLogs: EgressAccessLogs
    HlsIngest: HlsIngest
    Id: string
    IngressAccessLogs: IngressAccessLogs
    Tags: {string : string}
end

local record CreateChannelInput
    Description: string
    Id: string
    Tags: {string : string}
end

local record CreateChannelOutput
    Arn: string
    CreatedAt: string
    Description: string
    EgressAccessLogs: EgressAccessLogs
    HlsIngest: HlsIngest
    Id: string
    IngressAccessLogs: IngressAccessLogs
    Tags: {string : string}
end

local record CreateHarvestJobInput
    EndTime: string
    Id: string
    OriginEndpointId: string
    S3Destination: S3Destination
    StartTime: string
end

local record CreateHarvestJobOutput
    Arn: string
    ChannelId: string
    CreatedAt: string
    EndTime: string
    Id: string
    OriginEndpointId: string
    S3Destination: S3Destination
    StartTime: string
    Status: string
end

local record CreateOriginEndpointInput
    Authorization: Authorization
    ChannelId: string
    CmafPackage: CmafPackageCreateOrUpdateParameters
    DashPackage: DashPackage
    Description: string
    HlsPackage: HlsPackage
    Id: string
    ManifestName: string
    MssPackage: MssPackage
    Origination: string
    StartoverWindowSeconds: number
    Tags: {string : string}
    TimeDelaySeconds: number
    Whitelist: {string}
end

local record CreateOriginEndpointOutput
    Arn: string
    Authorization: Authorization
    ChannelId: string
    CmafPackage: CmafPackage
    CreatedAt: string
    DashPackage: DashPackage
    Description: string
    HlsPackage: HlsPackage
    Id: string
    ManifestName: string
    MssPackage: MssPackage
    Origination: string
    StartoverWindowSeconds: number
    Tags: {string : string}
    TimeDelaySeconds: number
    Url: string
    Whitelist: {string}
end

local record DeleteChannelInput
    Id: string
end

local record DeleteChannelOutput
end

local record DeleteOriginEndpointInput
    Id: string
end

local record DeleteOriginEndpointOutput
end

local record DescribeChannelInput
    Id: string
end

local record DescribeChannelOutput
    Arn: string
    CreatedAt: string
    Description: string
    EgressAccessLogs: EgressAccessLogs
    HlsIngest: HlsIngest
    Id: string
    IngressAccessLogs: IngressAccessLogs
    Tags: {string : string}
end

local record DescribeHarvestJobInput
    Id: string
end

local record DescribeHarvestJobOutput
    Arn: string
    ChannelId: string
    CreatedAt: string
    EndTime: string
    Id: string
    OriginEndpointId: string
    S3Destination: S3Destination
    StartTime: string
    Status: string
end

local record DescribeOriginEndpointInput
    Id: string
end

local record DescribeOriginEndpointOutput
    Arn: string
    Authorization: Authorization
    ChannelId: string
    CmafPackage: CmafPackage
    CreatedAt: string
    DashPackage: DashPackage
    Description: string
    HlsPackage: HlsPackage
    Id: string
    ManifestName: string
    MssPackage: MssPackage
    Origination: string
    StartoverWindowSeconds: number
    Tags: {string : string}
    TimeDelaySeconds: number
    Url: string
    Whitelist: {string}
end

local record ListChannelsInput
    MaxResults: number
    NextToken: string
end

local record ListChannelsOutput
    Channels: {Channel}
    NextToken: string
end

local record ListHarvestJobsInput
    IncludeChannelId: string
    IncludeStatus: string
    MaxResults: number
    NextToken: string
end

local record ListHarvestJobsOutput
    HarvestJobs: {HarvestJob}
    NextToken: string
end

local record ListOriginEndpointsInput
    ChannelId: string
    MaxResults: number
    NextToken: string
end

local record ListOriginEndpointsOutput
    NextToken: string
    OriginEndpoints: {OriginEndpoint}
end

local record ListTagsForResourceInput
    ResourceArn: string
end

local record ListTagsForResourceOutput
    Tags: {string : string}
end

local record RotateChannelCredentialsInput
    Id: string
end

local record RotateChannelCredentialsOutput
    Arn: string
    CreatedAt: string
    Description: string
    EgressAccessLogs: EgressAccessLogs
    HlsIngest: HlsIngest
    Id: string
    IngressAccessLogs: IngressAccessLogs
    Tags: {string : string}
end

local record RotateIngestEndpointCredentialsInput
    Id: string
    IngestEndpointId: string
end

local record RotateIngestEndpointCredentialsOutput
    Arn: string
    CreatedAt: string
    Description: string
    EgressAccessLogs: EgressAccessLogs
    HlsIngest: HlsIngest
    Id: string
    IngressAccessLogs: IngressAccessLogs
    Tags: {string : string}
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
    Description: string
    Id: string
end

local record UpdateChannelOutput
    Arn: string
    CreatedAt: string
    Description: string
    EgressAccessLogs: EgressAccessLogs
    HlsIngest: HlsIngest
    Id: string
    IngressAccessLogs: IngressAccessLogs
    Tags: {string : string}
end

local record UpdateOriginEndpointInput
    Authorization: Authorization
    CmafPackage: CmafPackageCreateOrUpdateParameters
    DashPackage: DashPackage
    Description: string
    HlsPackage: HlsPackage
    Id: string
    ManifestName: string
    MssPackage: MssPackage
    Origination: string
    StartoverWindowSeconds: number
    TimeDelaySeconds: number
    Whitelist: {string}
end

local record UpdateOriginEndpointOutput
    Arn: string
    Authorization: Authorization
    ChannelId: string
    CmafPackage: CmafPackage
    CreatedAt: string
    DashPackage: DashPackage
    Description: string
    HlsPackage: HlsPackage
    Id: string
    ManifestName: string
    MssPackage: MssPackage
    Origination: string
    StartoverWindowSeconds: number
    Tags: {string : string}
    TimeDelaySeconds: number
    Url: string
    Whitelist: {string}
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local record ForbiddenException
    Message: string
end

local record InternalServerErrorException
    Message: string
end

local record NotFoundException
    Message: string
end

local record ServiceUnavailableException
    Message: string
end

local record TooManyRequestsException
    Message: string
end

local record UnprocessableEntityException
    Message: string
end

local type Status = "IN_PROGRESS" | "SUCCEEDED" | "FAILED"

local type Origination = "ALLOW" | "DENY"

local record M
    ConfigureLogsInput: ConfigureLogsInput
    ConfigureLogsOutput: ConfigureLogsOutput
    CreateChannelInput: CreateChannelInput
    CreateChannelOutput: CreateChannelOutput
    CreateHarvestJobInput: CreateHarvestJobInput
    CreateHarvestJobOutput: CreateHarvestJobOutput
    CreateOriginEndpointInput: CreateOriginEndpointInput
    CreateOriginEndpointOutput: CreateOriginEndpointOutput
    DeleteChannelInput: DeleteChannelInput
    DeleteChannelOutput: DeleteChannelOutput
    DeleteOriginEndpointInput: DeleteOriginEndpointInput
    DeleteOriginEndpointOutput: DeleteOriginEndpointOutput
    DescribeChannelInput: DescribeChannelInput
    DescribeChannelOutput: DescribeChannelOutput
    DescribeHarvestJobInput: DescribeHarvestJobInput
    DescribeHarvestJobOutput: DescribeHarvestJobOutput
    DescribeOriginEndpointInput: DescribeOriginEndpointInput
    DescribeOriginEndpointOutput: DescribeOriginEndpointOutput
    ListChannelsInput: ListChannelsInput
    ListChannelsOutput: ListChannelsOutput
    ListHarvestJobsInput: ListHarvestJobsInput
    ListHarvestJobsOutput: ListHarvestJobsOutput
    ListOriginEndpointsInput: ListOriginEndpointsInput
    ListOriginEndpointsOutput: ListOriginEndpointsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    RotateChannelCredentialsInput: RotateChannelCredentialsInput
    RotateChannelCredentialsOutput: RotateChannelCredentialsOutput
    RotateIngestEndpointCredentialsInput: RotateIngestEndpointCredentialsInput
    RotateIngestEndpointCredentialsOutput: RotateIngestEndpointCredentialsOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateChannelInput: UpdateChannelInput
    UpdateChannelOutput: UpdateChannelOutput
    UpdateOriginEndpointInput: UpdateOriginEndpointInput
    UpdateOriginEndpointOutput: UpdateOriginEndpointOutput
end

return M
