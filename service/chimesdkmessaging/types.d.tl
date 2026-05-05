local record AssociateChannelFlowInput
    ChannelArn: string
    ChannelFlowArn: string
    ChimeBearer: string
end

local record AssociateChannelFlowOutput
end

local record BatchCreateChannelMembershipInput
    ChannelArn: string
    Type: string
    MemberArns: {string}
    ChimeBearer: string
    SubChannelId: string
end

local record BatchCreateChannelMembershipOutput
    BatchChannelMemberships: BatchChannelMemberships
    Errors: {BatchCreateChannelMembershipError}
end

local record ChannelFlowCallbackInput
    CallbackId: string
    ChannelArn: string
    DeleteResource: boolean
    ChannelMessage: ChannelMessageCallback
end

local record ChannelFlowCallbackOutput
    ChannelArn: string
    CallbackId: string
end

local record CreateChannelInput
    AppInstanceArn: string
    Name: string
    Mode: string
    Privacy: string
    Metadata: string
    ClientRequestToken: string
    Tags: {Tag}
    ChimeBearer: string
    ChannelId: string
    MemberArns: {string}
    ModeratorArns: {string}
    ElasticChannelConfiguration: ElasticChannelConfiguration
    ExpirationSettings: ExpirationSettings
end

local record CreateChannelOutput
    ChannelArn: string
end

local record CreateChannelBanInput
    ChannelArn: string
    MemberArn: string
    ChimeBearer: string
end

local record CreateChannelBanOutput
    ChannelArn: string
    Member: Identity
end

local record CreateChannelFlowInput
    AppInstanceArn: string
    Processors: {Processor}
    Name: string
    Tags: {Tag}
    ClientRequestToken: string
end

local record CreateChannelFlowOutput
    ChannelFlowArn: string
end

local record CreateChannelMembershipInput
    ChannelArn: string
    MemberArn: string
    Type: string
    ChimeBearer: string
    SubChannelId: string
end

local record CreateChannelMembershipOutput
    ChannelArn: string
    Member: Identity
    SubChannelId: string
end

local record CreateChannelModeratorInput
    ChannelArn: string
    ChannelModeratorArn: string
    ChimeBearer: string
end

local record CreateChannelModeratorOutput
    ChannelArn: string
    ChannelModerator: Identity
end

local record DeleteChannelInput
    ChannelArn: string
    ChimeBearer: string
end

local record DeleteChannelOutput
end

local record DeleteChannelBanInput
    ChannelArn: string
    MemberArn: string
    ChimeBearer: string
end

local record DeleteChannelBanOutput
end

local record DeleteChannelFlowInput
    ChannelFlowArn: string
end

local record DeleteChannelFlowOutput
end

local record DeleteChannelMembershipInput
    ChannelArn: string
    MemberArn: string
    ChimeBearer: string
    SubChannelId: string
end

local record DeleteChannelMembershipOutput
end

local record DeleteChannelMessageInput
    ChannelArn: string
    MessageId: string
    ChimeBearer: string
    SubChannelId: string
end

local record DeleteChannelMessageOutput
end

local record DeleteChannelModeratorInput
    ChannelArn: string
    ChannelModeratorArn: string
    ChimeBearer: string
end

local record DeleteChannelModeratorOutput
end

local record DeleteMessagingStreamingConfigurationsInput
    AppInstanceArn: string
end

local record DeleteMessagingStreamingConfigurationsOutput
end

local record DescribeChannelInput
    ChannelArn: string
    ChimeBearer: string
end

local record DescribeChannelOutput
    Channel: Channel
end

local record DescribeChannelBanInput
    ChannelArn: string
    MemberArn: string
    ChimeBearer: string
end

local record DescribeChannelBanOutput
    ChannelBan: ChannelBan
end

local record DescribeChannelFlowInput
    ChannelFlowArn: string
end

local record DescribeChannelFlowOutput
    ChannelFlow: ChannelFlow
end

local record DescribeChannelMembershipInput
    ChannelArn: string
    MemberArn: string
    ChimeBearer: string
    SubChannelId: string
end

local record DescribeChannelMembershipOutput
    ChannelMembership: ChannelMembership
end

local record DescribeChannelMembershipForAppInstanceUserInput
    ChannelArn: string
    AppInstanceUserArn: string
    ChimeBearer: string
end

local record DescribeChannelMembershipForAppInstanceUserOutput
    ChannelMembership: ChannelMembershipForAppInstanceUserSummary
end

local record DescribeChannelModeratedByAppInstanceUserInput
    ChannelArn: string
    AppInstanceUserArn: string
    ChimeBearer: string
end

local record DescribeChannelModeratedByAppInstanceUserOutput
    Channel: ChannelModeratedByAppInstanceUserSummary
end

local record DescribeChannelModeratorInput
    ChannelArn: string
    ChannelModeratorArn: string
    ChimeBearer: string
end

local record DescribeChannelModeratorOutput
    ChannelModerator: ChannelModerator
end

local record DisassociateChannelFlowInput
    ChannelArn: string
    ChannelFlowArn: string
    ChimeBearer: string
end

local record DisassociateChannelFlowOutput
end

local record GetChannelMembershipPreferencesInput
    ChannelArn: string
    MemberArn: string
    ChimeBearer: string
end

local record GetChannelMembershipPreferencesOutput
    ChannelArn: string
    Member: Identity
    Preferences: ChannelMembershipPreferences
end

local record GetChannelMessageInput
    ChannelArn: string
    MessageId: string
    ChimeBearer: string
    SubChannelId: string
end

local record GetChannelMessageOutput
    ChannelMessage: ChannelMessage
end

local record GetChannelMessageStatusInput
    ChannelArn: string
    MessageId: string
    ChimeBearer: string
    SubChannelId: string
end

local record GetChannelMessageStatusOutput
    Status: ChannelMessageStatusStructure
end

local record GetMessagingSessionEndpointInput
    NetworkType: string
end

local record GetMessagingSessionEndpointOutput
    Endpoint: MessagingSessionEndpoint
end

local record GetMessagingStreamingConfigurationsInput
    AppInstanceArn: string
end

local record GetMessagingStreamingConfigurationsOutput
    StreamingConfigurations: {StreamingConfiguration}
end

local record ListChannelBansInput
    ChannelArn: string
    MaxResults: number
    NextToken: string
    ChimeBearer: string
end

local record ListChannelBansOutput
    ChannelArn: string
    NextToken: string
    ChannelBans: {ChannelBanSummary}
end

local record ListChannelFlowsInput
    AppInstanceArn: string
    MaxResults: number
    NextToken: string
end

local record ListChannelFlowsOutput
    ChannelFlows: {ChannelFlowSummary}
    NextToken: string
end

local record ListChannelMembershipsInput
    ChannelArn: string
    Type: string
    MaxResults: number
    NextToken: string
    ChimeBearer: string
    SubChannelId: string
end

local record ListChannelMembershipsOutput
    ChannelArn: string
    ChannelMemberships: {ChannelMembershipSummary}
    NextToken: string
end

local record ListChannelMembershipsForAppInstanceUserInput
    AppInstanceUserArn: string
    MaxResults: number
    NextToken: string
    ChimeBearer: string
end

local record ListChannelMembershipsForAppInstanceUserOutput
    ChannelMemberships: {ChannelMembershipForAppInstanceUserSummary}
    NextToken: string
end

local record ListChannelMessagesInput
    ChannelArn: string
    SortOrder: string
    NotBefore: number
    NotAfter: number
    MaxResults: number
    NextToken: string
    ChimeBearer: string
    SubChannelId: string
end

local record ListChannelMessagesOutput
    ChannelArn: string
    NextToken: string
    ChannelMessages: {ChannelMessageSummary}
    SubChannelId: string
end

local record ListChannelModeratorsInput
    ChannelArn: string
    MaxResults: number
    NextToken: string
    ChimeBearer: string
end

local record ListChannelModeratorsOutput
    ChannelArn: string
    NextToken: string
    ChannelModerators: {ChannelModeratorSummary}
end

local record ListChannelsInput
    AppInstanceArn: string
    Privacy: string
    MaxResults: number
    NextToken: string
    ChimeBearer: string
end

local record ListChannelsOutput
    Channels: {ChannelSummary}
    NextToken: string
end

local record ListChannelsAssociatedWithChannelFlowInput
    ChannelFlowArn: string
    MaxResults: number
    NextToken: string
end

local record ListChannelsAssociatedWithChannelFlowOutput
    Channels: {ChannelAssociatedWithFlowSummary}
    NextToken: string
end

local record ListChannelsModeratedByAppInstanceUserInput
    AppInstanceUserArn: string
    MaxResults: number
    NextToken: string
    ChimeBearer: string
end

local record ListChannelsModeratedByAppInstanceUserOutput
    Channels: {ChannelModeratedByAppInstanceUserSummary}
    NextToken: string
end

local record ListSubChannelsInput
    ChannelArn: string
    ChimeBearer: string
    MaxResults: number
    NextToken: string
end

local record ListSubChannelsOutput
    ChannelArn: string
    SubChannels: {SubChannelSummary}
    NextToken: string
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record PutChannelExpirationSettingsInput
    ChannelArn: string
    ChimeBearer: string
    ExpirationSettings: ExpirationSettings
end

local record PutChannelExpirationSettingsOutput
    ChannelArn: string
    ExpirationSettings: ExpirationSettings
end

local record PutChannelMembershipPreferencesInput
    ChannelArn: string
    MemberArn: string
    ChimeBearer: string
    Preferences: ChannelMembershipPreferences
end

local record PutChannelMembershipPreferencesOutput
    ChannelArn: string
    Member: Identity
    Preferences: ChannelMembershipPreferences
end

local record PutMessagingStreamingConfigurationsInput
    AppInstanceArn: string
    StreamingConfigurations: {StreamingConfiguration}
end

local record PutMessagingStreamingConfigurationsOutput
    StreamingConfigurations: {StreamingConfiguration}
end

local record RedactChannelMessageInput
    ChannelArn: string
    MessageId: string
    ChimeBearer: string
    SubChannelId: string
end

local record RedactChannelMessageOutput
    ChannelArn: string
    MessageId: string
    SubChannelId: string
end

local record SearchChannelsInput
    ChimeBearer: string
    Fields: {SearchField}
    MaxResults: number
    NextToken: string
end

local record SearchChannelsOutput
    Channels: {ChannelSummary}
    NextToken: string
end

local record SendChannelMessageInput
    ChannelArn: string
    Content: string
    Type: string
    Persistence: string
    Metadata: string
    ClientRequestToken: string
    ChimeBearer: string
    PushNotification: PushNotificationConfiguration
    MessageAttributes: {string : MessageAttributeValue}
    SubChannelId: string
    ContentType: string
    Target: {Target}
end

local record SendChannelMessageOutput
    ChannelArn: string
    MessageId: string
    Status: ChannelMessageStatusStructure
    SubChannelId: string
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateChannelInput
    ChannelArn: string
    Name: string
    Mode: string
    Metadata: string
    ChimeBearer: string
end

local record UpdateChannelOutput
    ChannelArn: string
end

local record UpdateChannelFlowInput
    ChannelFlowArn: string
    Processors: {Processor}
    Name: string
end

local record UpdateChannelFlowOutput
    ChannelFlowArn: string
end

local record UpdateChannelMessageInput
    ChannelArn: string
    MessageId: string
    Content: string
    Metadata: string
    ChimeBearer: string
    SubChannelId: string
    ContentType: string
end

local record UpdateChannelMessageOutput
    ChannelArn: string
    MessageId: string
    Status: ChannelMessageStatusStructure
    SubChannelId: string
end

local record UpdateChannelReadMarkerInput
    ChannelArn: string
    ChimeBearer: string
end

local record UpdateChannelReadMarkerOutput
    ChannelArn: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record NotFoundException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ResourceLimitExceededException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local record BadRequestException
    Code: string
    Message: string
end

local record ConflictException
    Code: string
    Message: string
end

local record ForbiddenException
    Code: string
    Message: string
end

local record ServiceFailureException
    Code: string
    Message: string
end

local record ServiceUnavailableException
    Code: string
    Message: string
end

local record ThrottledClientException
    Code: string
    Message: string
end

local record UnauthorizedClientException
    Code: string
    Message: string
end

local type ChannelMessageType = "STANDARD" | "CONTROL"

local type SortOrder = "ASCENDING" | "DESCENDING"

local type ChannelMessagePersistenceType = "PERSISTENT" | "NON_PERSISTENT"

local type ChannelMode = "UNRESTRICTED" | "RESTRICTED"

local type ChannelPrivacy = "PUBLIC" | "PRIVATE"

local type NetworkType = "IPV4_ONLY" | "DUAL_STACK"

local type ChannelMembershipType = "DEFAULT" | "HIDDEN"

local record M
    AssociateChannelFlowInput: AssociateChannelFlowInput
    AssociateChannelFlowOutput: AssociateChannelFlowOutput
    BatchCreateChannelMembershipInput: BatchCreateChannelMembershipInput
    BatchCreateChannelMembershipOutput: BatchCreateChannelMembershipOutput
    ChannelFlowCallbackInput: ChannelFlowCallbackInput
    ChannelFlowCallbackOutput: ChannelFlowCallbackOutput
    CreateChannelInput: CreateChannelInput
    CreateChannelOutput: CreateChannelOutput
    CreateChannelBanInput: CreateChannelBanInput
    CreateChannelBanOutput: CreateChannelBanOutput
    CreateChannelFlowInput: CreateChannelFlowInput
    CreateChannelFlowOutput: CreateChannelFlowOutput
    CreateChannelMembershipInput: CreateChannelMembershipInput
    CreateChannelMembershipOutput: CreateChannelMembershipOutput
    CreateChannelModeratorInput: CreateChannelModeratorInput
    CreateChannelModeratorOutput: CreateChannelModeratorOutput
    DeleteChannelInput: DeleteChannelInput
    DeleteChannelOutput: DeleteChannelOutput
    DeleteChannelBanInput: DeleteChannelBanInput
    DeleteChannelBanOutput: DeleteChannelBanOutput
    DeleteChannelFlowInput: DeleteChannelFlowInput
    DeleteChannelFlowOutput: DeleteChannelFlowOutput
    DeleteChannelMembershipInput: DeleteChannelMembershipInput
    DeleteChannelMembershipOutput: DeleteChannelMembershipOutput
    DeleteChannelMessageInput: DeleteChannelMessageInput
    DeleteChannelMessageOutput: DeleteChannelMessageOutput
    DeleteChannelModeratorInput: DeleteChannelModeratorInput
    DeleteChannelModeratorOutput: DeleteChannelModeratorOutput
    DeleteMessagingStreamingConfigurationsInput: DeleteMessagingStreamingConfigurationsInput
    DeleteMessagingStreamingConfigurationsOutput: DeleteMessagingStreamingConfigurationsOutput
    DescribeChannelInput: DescribeChannelInput
    DescribeChannelOutput: DescribeChannelOutput
    DescribeChannelBanInput: DescribeChannelBanInput
    DescribeChannelBanOutput: DescribeChannelBanOutput
    DescribeChannelFlowInput: DescribeChannelFlowInput
    DescribeChannelFlowOutput: DescribeChannelFlowOutput
    DescribeChannelMembershipInput: DescribeChannelMembershipInput
    DescribeChannelMembershipOutput: DescribeChannelMembershipOutput
    DescribeChannelMembershipForAppInstanceUserInput: DescribeChannelMembershipForAppInstanceUserInput
    DescribeChannelMembershipForAppInstanceUserOutput: DescribeChannelMembershipForAppInstanceUserOutput
    DescribeChannelModeratedByAppInstanceUserInput: DescribeChannelModeratedByAppInstanceUserInput
    DescribeChannelModeratedByAppInstanceUserOutput: DescribeChannelModeratedByAppInstanceUserOutput
    DescribeChannelModeratorInput: DescribeChannelModeratorInput
    DescribeChannelModeratorOutput: DescribeChannelModeratorOutput
    DisassociateChannelFlowInput: DisassociateChannelFlowInput
    DisassociateChannelFlowOutput: DisassociateChannelFlowOutput
    GetChannelMembershipPreferencesInput: GetChannelMembershipPreferencesInput
    GetChannelMembershipPreferencesOutput: GetChannelMembershipPreferencesOutput
    GetChannelMessageInput: GetChannelMessageInput
    GetChannelMessageOutput: GetChannelMessageOutput
    GetChannelMessageStatusInput: GetChannelMessageStatusInput
    GetChannelMessageStatusOutput: GetChannelMessageStatusOutput
    GetMessagingSessionEndpointInput: GetMessagingSessionEndpointInput
    GetMessagingSessionEndpointOutput: GetMessagingSessionEndpointOutput
    GetMessagingStreamingConfigurationsInput: GetMessagingStreamingConfigurationsInput
    GetMessagingStreamingConfigurationsOutput: GetMessagingStreamingConfigurationsOutput
    ListChannelBansInput: ListChannelBansInput
    ListChannelBansOutput: ListChannelBansOutput
    ListChannelFlowsInput: ListChannelFlowsInput
    ListChannelFlowsOutput: ListChannelFlowsOutput
    ListChannelMembershipsInput: ListChannelMembershipsInput
    ListChannelMembershipsOutput: ListChannelMembershipsOutput
    ListChannelMembershipsForAppInstanceUserInput: ListChannelMembershipsForAppInstanceUserInput
    ListChannelMembershipsForAppInstanceUserOutput: ListChannelMembershipsForAppInstanceUserOutput
    ListChannelMessagesInput: ListChannelMessagesInput
    ListChannelMessagesOutput: ListChannelMessagesOutput
    ListChannelModeratorsInput: ListChannelModeratorsInput
    ListChannelModeratorsOutput: ListChannelModeratorsOutput
    ListChannelsInput: ListChannelsInput
    ListChannelsOutput: ListChannelsOutput
    ListChannelsAssociatedWithChannelFlowInput: ListChannelsAssociatedWithChannelFlowInput
    ListChannelsAssociatedWithChannelFlowOutput: ListChannelsAssociatedWithChannelFlowOutput
    ListChannelsModeratedByAppInstanceUserInput: ListChannelsModeratedByAppInstanceUserInput
    ListChannelsModeratedByAppInstanceUserOutput: ListChannelsModeratedByAppInstanceUserOutput
    ListSubChannelsInput: ListSubChannelsInput
    ListSubChannelsOutput: ListSubChannelsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    PutChannelExpirationSettingsInput: PutChannelExpirationSettingsInput
    PutChannelExpirationSettingsOutput: PutChannelExpirationSettingsOutput
    PutChannelMembershipPreferencesInput: PutChannelMembershipPreferencesInput
    PutChannelMembershipPreferencesOutput: PutChannelMembershipPreferencesOutput
    PutMessagingStreamingConfigurationsInput: PutMessagingStreamingConfigurationsInput
    PutMessagingStreamingConfigurationsOutput: PutMessagingStreamingConfigurationsOutput
    RedactChannelMessageInput: RedactChannelMessageInput
    RedactChannelMessageOutput: RedactChannelMessageOutput
    SearchChannelsInput: SearchChannelsInput
    SearchChannelsOutput: SearchChannelsOutput
    SendChannelMessageInput: SendChannelMessageInput
    SendChannelMessageOutput: SendChannelMessageOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateChannelInput: UpdateChannelInput
    UpdateChannelOutput: UpdateChannelOutput
    UpdateChannelFlowInput: UpdateChannelFlowInput
    UpdateChannelFlowOutput: UpdateChannelFlowOutput
    UpdateChannelMessageInput: UpdateChannelMessageInput
    UpdateChannelMessageOutput: UpdateChannelMessageOutput
    UpdateChannelReadMarkerInput: UpdateChannelReadMarkerInput
    UpdateChannelReadMarkerOutput: UpdateChannelReadMarkerOutput
end

return M
