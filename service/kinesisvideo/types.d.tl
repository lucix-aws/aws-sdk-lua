local record CreateSignalingChannelInput
    ChannelName: string
    ChannelType: string
    SingleMasterConfiguration: SingleMasterConfiguration
    Tags: {Tag}
end

local record CreateSignalingChannelOutput
    ChannelARN: string
end

local record CreateStreamInput
    DeviceName: string
    StreamName: string
    MediaType: string
    KmsKeyId: string
    DataRetentionInHours: number
    Tags: {string : string}
    StreamStorageConfiguration: StreamStorageConfiguration
end

local record CreateStreamOutput
    StreamARN: string
end

local record DeleteEdgeConfigurationInput
    StreamName: string
    StreamARN: string
end

local record DeleteEdgeConfigurationOutput
end

local record DeleteSignalingChannelInput
    ChannelARN: string
    CurrentVersion: string
end

local record DeleteSignalingChannelOutput
end

local record DeleteStreamInput
    StreamARN: string
    CurrentVersion: string
end

local record DeleteStreamOutput
end

local record DescribeEdgeConfigurationInput
    StreamName: string
    StreamARN: string
end

local record DescribeEdgeConfigurationOutput
    StreamName: string
    StreamARN: string
    CreationTime: number
    LastUpdatedTime: number
    SyncStatus: string
    FailedStatusDetails: string
    EdgeConfig: EdgeConfig
    EdgeAgentStatus: EdgeAgentStatus
end

local record DescribeImageGenerationConfigurationInput
    StreamName: string
    StreamARN: string
end

local record DescribeImageGenerationConfigurationOutput
    ImageGenerationConfiguration: ImageGenerationConfiguration
end

local record DescribeMappedResourceConfigurationInput
    StreamName: string
    StreamARN: string
    MaxResults: number
    NextToken: string
end

local record DescribeMappedResourceConfigurationOutput
    MappedResourceConfigurationList: {MappedResourceConfigurationListItem}
    NextToken: string
end

local record DescribeMediaStorageConfigurationInput
    ChannelName: string
    ChannelARN: string
end

local record DescribeMediaStorageConfigurationOutput
    MediaStorageConfiguration: MediaStorageConfiguration
end

local record DescribeNotificationConfigurationInput
    StreamName: string
    StreamARN: string
end

local record DescribeNotificationConfigurationOutput
    NotificationConfiguration: NotificationConfiguration
end

local record DescribeSignalingChannelInput
    ChannelName: string
    ChannelARN: string
end

local record DescribeSignalingChannelOutput
    ChannelInfo: ChannelInfo
end

local record DescribeStreamInput
    StreamName: string
    StreamARN: string
end

local record DescribeStreamOutput
    StreamInfo: StreamInfo
end

local record DescribeStreamStorageConfigurationInput
    StreamName: string
    StreamARN: string
end

local record DescribeStreamStorageConfigurationOutput
    StreamName: string
    StreamARN: string
    StreamStorageConfiguration: StreamStorageConfiguration
end

local record GetDataEndpointInput
    StreamName: string
    StreamARN: string
    APIName: string
end

local record GetDataEndpointOutput
    DataEndpoint: string
end

local record GetSignalingChannelEndpointInput
    ChannelARN: string
    SingleMasterChannelEndpointConfiguration: SingleMasterChannelEndpointConfiguration
end

local record GetSignalingChannelEndpointOutput
    ResourceEndpointList: {ResourceEndpointListItem}
end

local record ListEdgeAgentConfigurationsInput
    HubDeviceArn: string
    MaxResults: number
    NextToken: string
end

local record ListEdgeAgentConfigurationsOutput
    EdgeConfigs: {ListEdgeAgentConfigurationsEdgeConfig}
    NextToken: string
end

local record ListSignalingChannelsInput
    MaxResults: number
    NextToken: string
    ChannelNameCondition: ChannelNameCondition
end

local record ListSignalingChannelsOutput
    ChannelInfoList: {ChannelInfo}
    NextToken: string
end

local record ListStreamsInput
    MaxResults: number
    NextToken: string
    StreamNameCondition: StreamNameCondition
end

local record ListStreamsOutput
    StreamInfoList: {StreamInfo}
    NextToken: string
end

local record ListTagsForResourceInput
    NextToken: string
    ResourceARN: string
end

local record ListTagsForResourceOutput
    NextToken: string
    Tags: {string : string}
end

local record ListTagsForStreamInput
    NextToken: string
    StreamARN: string
    StreamName: string
end

local record ListTagsForStreamOutput
    NextToken: string
    Tags: {string : string}
end

local record StartEdgeConfigurationUpdateInput
    StreamName: string
    StreamARN: string
    EdgeConfig: EdgeConfig
end

local record StartEdgeConfigurationUpdateOutput
    StreamName: string
    StreamARN: string
    CreationTime: number
    LastUpdatedTime: number
    SyncStatus: string
    FailedStatusDetails: string
    EdgeConfig: EdgeConfig
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record TagStreamInput
    StreamARN: string
    StreamName: string
    Tags: {string : string}
end

local record TagStreamOutput
end

local record UntagResourceInput
    ResourceARN: string
    TagKeyList: {string}
end

local record UntagResourceOutput
end

local record UntagStreamInput
    StreamARN: string
    StreamName: string
    TagKeyList: {string}
end

local record UntagStreamOutput
end

local record UpdateDataRetentionInput
    StreamName: string
    StreamARN: string
    CurrentVersion: string
    Operation: string
    DataRetentionChangeInHours: number
end

local record UpdateDataRetentionOutput
end

local record UpdateImageGenerationConfigurationInput
    StreamName: string
    StreamARN: string
    ImageGenerationConfiguration: ImageGenerationConfiguration
end

local record UpdateImageGenerationConfigurationOutput
end

local record UpdateMediaStorageConfigurationInput
    ChannelARN: string
    MediaStorageConfiguration: MediaStorageConfiguration
end

local record UpdateMediaStorageConfigurationOutput
end

local record UpdateNotificationConfigurationInput
    StreamName: string
    StreamARN: string
    NotificationConfiguration: NotificationConfiguration
end

local record UpdateNotificationConfigurationOutput
end

local record UpdateSignalingChannelInput
    ChannelARN: string
    CurrentVersion: string
    SingleMasterConfiguration: SingleMasterConfiguration
end

local record UpdateSignalingChannelOutput
end

local record UpdateStreamInput
    StreamName: string
    StreamARN: string
    CurrentVersion: string
    DeviceName: string
    MediaType: string
end

local record UpdateStreamOutput
end

local record UpdateStreamStorageConfigurationInput
    StreamName: string
    StreamARN: string
    CurrentVersion: string
    StreamStorageConfiguration: StreamStorageConfiguration
end

local record UpdateStreamStorageConfigurationOutput
end

local record AccessDeniedException
    Message: string
end

local record AccountChannelLimitExceededException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record TagsPerResourceExceededLimitException
    Message: string
end

local record AccountStreamLimitExceededException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record DeviceStreamLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidDeviceException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record TagsPerResourceExceededLimitException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record StreamEdgeConfigurationNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record VersionMismatchException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record VersionMismatchException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record StreamEdgeConfigurationNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidResourceFormatException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NoDataRetentionException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TagsPerResourceExceededLimitException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidResourceFormatException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record TagsPerResourceExceededLimitException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record InvalidResourceFormatException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record VersionMismatchException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NoDataRetentionException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NoDataRetentionException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NoDataRetentionException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record VersionMismatchException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record NotAuthorizedException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record VersionMismatchException
    Message: string
end

local record AccessDeniedException
    Message: string
end

local record ClientLimitExceededException
    Message: string
end

local record InvalidArgumentException
    Message: string
end

local record ResourceInUseException
    Message: string
end

local record ResourceNotFoundException
    Message: string
end

local record VersionMismatchException
    Message: string
end

local type APIName = "PUT_MEDIA" | "GET_MEDIA" | "LIST_FRAGMENTS" | "GET_MEDIA_FOR_FRAGMENT_LIST" | "GET_HLS_STREAMING_SESSION_URL" | "GET_DASH_STREAMING_SESSION_URL" | "GET_CLIP" | "GET_IMAGES"

local type SyncStatus = "SYNCING" | "ACKNOWLEDGED" | "IN_SYNC" | "SYNC_FAILED" | "DELETING" | "DELETE_FAILED" | "DELETING_ACKNOWLEDGED"

local type UpdateDataRetentionOperation = "INCREASE_DATA_RETENTION" | "DECREASE_DATA_RETENTION"

local type ChannelType = "SINGLE_MASTER" | "FULL_MESH"

local record M
    CreateSignalingChannelInput: CreateSignalingChannelInput
    CreateSignalingChannelOutput: CreateSignalingChannelOutput
    CreateStreamInput: CreateStreamInput
    CreateStreamOutput: CreateStreamOutput
    DeleteEdgeConfigurationInput: DeleteEdgeConfigurationInput
    DeleteEdgeConfigurationOutput: DeleteEdgeConfigurationOutput
    DeleteSignalingChannelInput: DeleteSignalingChannelInput
    DeleteSignalingChannelOutput: DeleteSignalingChannelOutput
    DeleteStreamInput: DeleteStreamInput
    DeleteStreamOutput: DeleteStreamOutput
    DescribeEdgeConfigurationInput: DescribeEdgeConfigurationInput
    DescribeEdgeConfigurationOutput: DescribeEdgeConfigurationOutput
    DescribeImageGenerationConfigurationInput: DescribeImageGenerationConfigurationInput
    DescribeImageGenerationConfigurationOutput: DescribeImageGenerationConfigurationOutput
    DescribeMappedResourceConfigurationInput: DescribeMappedResourceConfigurationInput
    DescribeMappedResourceConfigurationOutput: DescribeMappedResourceConfigurationOutput
    DescribeMediaStorageConfigurationInput: DescribeMediaStorageConfigurationInput
    DescribeMediaStorageConfigurationOutput: DescribeMediaStorageConfigurationOutput
    DescribeNotificationConfigurationInput: DescribeNotificationConfigurationInput
    DescribeNotificationConfigurationOutput: DescribeNotificationConfigurationOutput
    DescribeSignalingChannelInput: DescribeSignalingChannelInput
    DescribeSignalingChannelOutput: DescribeSignalingChannelOutput
    DescribeStreamInput: DescribeStreamInput
    DescribeStreamOutput: DescribeStreamOutput
    DescribeStreamStorageConfigurationInput: DescribeStreamStorageConfigurationInput
    DescribeStreamStorageConfigurationOutput: DescribeStreamStorageConfigurationOutput
    GetDataEndpointInput: GetDataEndpointInput
    GetDataEndpointOutput: GetDataEndpointOutput
    GetSignalingChannelEndpointInput: GetSignalingChannelEndpointInput
    GetSignalingChannelEndpointOutput: GetSignalingChannelEndpointOutput
    ListEdgeAgentConfigurationsInput: ListEdgeAgentConfigurationsInput
    ListEdgeAgentConfigurationsOutput: ListEdgeAgentConfigurationsOutput
    ListSignalingChannelsInput: ListSignalingChannelsInput
    ListSignalingChannelsOutput: ListSignalingChannelsOutput
    ListStreamsInput: ListStreamsInput
    ListStreamsOutput: ListStreamsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListTagsForStreamInput: ListTagsForStreamInput
    ListTagsForStreamOutput: ListTagsForStreamOutput
    StartEdgeConfigurationUpdateInput: StartEdgeConfigurationUpdateInput
    StartEdgeConfigurationUpdateOutput: StartEdgeConfigurationUpdateOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    TagStreamInput: TagStreamInput
    TagStreamOutput: TagStreamOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UntagStreamInput: UntagStreamInput
    UntagStreamOutput: UntagStreamOutput
    UpdateDataRetentionInput: UpdateDataRetentionInput
    UpdateDataRetentionOutput: UpdateDataRetentionOutput
    UpdateImageGenerationConfigurationInput: UpdateImageGenerationConfigurationInput
    UpdateImageGenerationConfigurationOutput: UpdateImageGenerationConfigurationOutput
    UpdateMediaStorageConfigurationInput: UpdateMediaStorageConfigurationInput
    UpdateMediaStorageConfigurationOutput: UpdateMediaStorageConfigurationOutput
    UpdateNotificationConfigurationInput: UpdateNotificationConfigurationInput
    UpdateNotificationConfigurationOutput: UpdateNotificationConfigurationOutput
    UpdateSignalingChannelInput: UpdateSignalingChannelInput
    UpdateSignalingChannelOutput: UpdateSignalingChannelOutput
    UpdateStreamInput: UpdateStreamInput
    UpdateStreamOutput: UpdateStreamOutput
    UpdateStreamStorageConfigurationInput: UpdateStreamStorageConfigurationInput
    UpdateStreamStorageConfigurationOutput: UpdateStreamStorageConfigurationOutput
end

return M
