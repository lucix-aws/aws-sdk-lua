local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccountChannelLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AccountStreamLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.APIName = {
    PUT_MEDIA = "PUT_MEDIA",
    GET_MEDIA = "GET_MEDIA",
    LIST_FRAGMENTS = "LIST_FRAGMENTS",
    GET_MEDIA_FOR_FRAGMENT_LIST = "GET_MEDIA_FOR_FRAGMENT_LIST",
    GET_HLS_STREAMING_SESSION_URL = "GET_HLS_STREAMING_SESSION_URL",
    GET_DASH_STREAMING_SESSION_URL = "GET_DASH_STREAMING_SESSION_URL",
    GET_CLIP = "GET_CLIP",
    GET_IMAGES = "GET_IMAGES",
}

M.Status = {
    CREATING = "CREATING",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
}

M.ChannelType = {
    SINGLE_MASTER = "SINGLE_MASTER",
    FULL_MESH = "FULL_MESH",
}

M.SingleMasterConfiguration = {
    type = "structure",
    members = {
        MessageTtlSeconds = {
            type = "number",
        },
    },
}

M.ChannelInfo = {
    type = "structure",
    members = {
        ChannelName = {
            type = "string",
        },
        ChannelARN = {
            type = "string",
        },
        ChannelType = {
            type = "string",
        },
        ChannelStatus = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        SingleMasterConfiguration = {
            type = "structure",
        },
        Version = {
            type = "string",
        },
    },
}

M.ComparisonOperator = {
    BEGINS_WITH = "BEGINS_WITH",
}

M.ChannelNameCondition = {
    type = "structure",
    members = {
        ComparisonOperator = {
            type = "string",
        },
        ComparisonValue = {
            type = "string",
        },
    },
}

M.ChannelProtocol = {
    WSS = "WSS",
    HTTPS = "HTTPS",
    WEBRTC = "WEBRTC",
}

M.ChannelRole = {
    MASTER = "MASTER",
    VIEWER = "VIEWER",
}

M.ClientLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ConfigurationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSignalingChannelInput = {
    type = "structure",
    members = {
        ChannelName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ChannelType = {
            type = "string",
        },
        SingleMasterConfiguration = {
            type = "structure",
        },
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.CreateSignalingChannelOutput = {
    type = "structure",
    members = {
        ChannelARN = {
            type = "string",
        },
    },
}

M.InvalidArgumentException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TagsPerResourceExceededLimitException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DefaultStorageTier = {
    HOT = "HOT",
    WARM = "WARM",
}

M.StreamStorageConfiguration = {
    type = "structure",
    members = {
        DefaultStorageTier = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateStreamInput = {
    type = "structure",
    members = {
        DeviceName = {
            type = "string",
        },
        StreamName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MediaType = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        DataRetentionInHours = {
            type = "number",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        StreamStorageConfiguration = {
            type = "structure",
        },
    },
}

M.CreateStreamOutput = {
    type = "structure",
    members = {
        StreamARN = {
            type = "string",
        },
    },
}

M.DeviceStreamLimitExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidDeviceException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteEdgeConfigurationInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
    },
}

M.DeleteEdgeConfigurationOutput = {
    type = "structure",
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StreamEdgeConfigurationNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteSignalingChannelInput = {
    type = "structure",
    members = {
        ChannelARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentVersion = {
            type = "string",
        },
    },
}

M.DeleteSignalingChannelOutput = {
    type = "structure",
}

M.VersionMismatchException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteStreamInput = {
    type = "structure",
    members = {
        StreamARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentVersion = {
            type = "string",
        },
    },
}

M.DeleteStreamOutput = {
    type = "structure",
}

M.NotAuthorizedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StrategyOnFullSize = {
    DELETE_OLDEST_MEDIA = "DELETE_OLDEST_MEDIA",
    DENY_NEW_MEDIA = "DENY_NEW_MEDIA",
}

M.LocalSizeConfig = {
    type = "structure",
    members = {
        MaxLocalMediaSizeInMB = {
            type = "number",
        },
        StrategyOnFullSize = {
            type = "string",
        },
    },
}

M.DeletionConfig = {
    type = "structure",
    members = {
        EdgeRetentionInHours = {
            type = "number",
        },
        LocalSizeConfig = {
            type = "structure",
        },
        DeleteAfterUpload = {
            type = "boolean",
        },
    },
}

M.DescribeEdgeConfigurationInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
    },
}

M.RecorderStatus = {
    SUCCESS = "SUCCESS",
    USER_ERROR = "USER_ERROR",
    SYSTEM_ERROR = "SYSTEM_ERROR",
}

M.LastRecorderStatus = {
    type = "structure",
    members = {
        JobStatusDetails = {
            type = "string",
        },
        LastCollectedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        RecorderStatus = {
            type = "string",
        },
    },
}

M.UploaderStatus = {
    SUCCESS = "SUCCESS",
    USER_ERROR = "USER_ERROR",
    SYSTEM_ERROR = "SYSTEM_ERROR",
}

M.LastUploaderStatus = {
    type = "structure",
    members = {
        JobStatusDetails = {
            type = "string",
        },
        LastCollectedTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        UploaderStatus = {
            type = "string",
        },
    },
}

M.EdgeAgentStatus = {
    type = "structure",
    members = {
        LastRecorderStatus = {
            type = "structure",
        },
        LastUploaderStatus = {
            type = "structure",
        },
    },
}

M.MediaUriType = {
    RTSP_URI = "RTSP_URI",
    FILE_URI = "FILE_URI",
}

M.MediaSourceConfig = {
    type = "structure",
    members = {
        MediaUriSecretArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MediaUriType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ScheduleConfig = {
    type = "structure",
    members = {
        ScheduleExpression = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DurationInSeconds = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.RecorderConfig = {
    type = "structure",
    members = {
        MediaSourceConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ScheduleConfig = {
            type = "structure",
        },
    },
}

M.UploaderConfig = {
    type = "structure",
    members = {
        ScheduleConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.EdgeConfig = {
    type = "structure",
    members = {
        HubDeviceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RecorderConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        UploaderConfig = {
            type = "structure",
        },
        DeletionConfig = {
            type = "structure",
        },
    },
}

M.SyncStatus = {
    SYNCING = "SYNCING",
    ACKNOWLEDGED = "ACKNOWLEDGED",
    IN_SYNC = "IN_SYNC",
    SYNC_FAILED = "SYNC_FAILED",
    DELETING = "DELETING",
    DELETE_FAILED = "DELETE_FAILED",
    DELETING_ACKNOWLEDGED = "DELETING_ACKNOWLEDGED",
}

M.DescribeEdgeConfigurationOutput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        SyncStatus = {
            type = "string",
        },
        FailedStatusDetails = {
            type = "string",
        },
        EdgeConfig = {
            type = "structure",
        },
        EdgeAgentStatus = {
            type = "structure",
        },
    },
}

M.DescribeImageGenerationConfigurationInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
    },
}

M.ImageGenerationDestinationConfig = {
    type = "structure",
    members = {
        Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Format = {
    JPEG = "JPEG",
    PNG = "PNG",
}

M.FormatConfigKey = {
    JPEGQuality = "JPEGQuality",
}

M.ImageSelectorType = {
    SERVER_TIMESTAMP = "SERVER_TIMESTAMP",
    PRODUCER_TIMESTAMP = "PRODUCER_TIMESTAMP",
}

M.ImageGenerationConfiguration = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ImageSelectorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        SamplingInterval = {
            type = "number",
            traits = {
                required = true,
            },
        },
        Format = {
            type = "string",
            traits = {
                required = true,
            },
        },
        FormatConfig = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        WidthPixels = {
            type = "number",
        },
        HeightPixels = {
            type = "number",
        },
    },
}

M.DescribeImageGenerationConfigurationOutput = {
    type = "structure",
    members = {
        ImageGenerationConfiguration = {
            type = "structure",
        },
    },
}

M.DescribeMappedResourceConfigurationInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.MappedResourceConfigurationListItem = {
    type = "structure",
    members = {
        Type = {
            type = "string",
        },
        ARN = {
            type = "string",
        },
    },
}

M.DescribeMappedResourceConfigurationOutput = {
    type = "structure",
    members = {
        MappedResourceConfigurationList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.DescribeMediaStorageConfigurationInput = {
    type = "structure",
    members = {
        ChannelName = {
            type = "string",
        },
        ChannelARN = {
            type = "string",
        },
    },
}

M.MediaStorageConfigurationStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.MediaStorageConfiguration = {
    type = "structure",
    members = {
        StreamARN = {
            type = "string",
        },
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeMediaStorageConfigurationOutput = {
    type = "structure",
    members = {
        MediaStorageConfiguration = {
            type = "structure",
        },
    },
}

M.DescribeNotificationConfigurationInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
    },
}

M.NotificationDestinationConfig = {
    type = "structure",
    members = {
        Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NotificationConfiguration = {
    type = "structure",
    members = {
        Status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DestinationConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.DescribeNotificationConfigurationOutput = {
    type = "structure",
    members = {
        NotificationConfiguration = {
            type = "structure",
        },
    },
}

M.DescribeSignalingChannelInput = {
    type = "structure",
    members = {
        ChannelName = {
            type = "string",
        },
        ChannelARN = {
            type = "string",
        },
    },
}

M.DescribeSignalingChannelOutput = {
    type = "structure",
    members = {
        ChannelInfo = {
            type = "structure",
        },
    },
}

M.DescribeStreamInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
    },
}

M.StreamInfo = {
    type = "structure",
    members = {
        DeviceName = {
            type = "string",
        },
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        MediaType = {
            type = "string",
        },
        KmsKeyId = {
            type = "string",
        },
        Version = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        DataRetentionInHours = {
            type = "number",
        },
    },
}

M.DescribeStreamOutput = {
    type = "structure",
    members = {
        StreamInfo = {
            type = "structure",
        },
    },
}

M.DescribeStreamStorageConfigurationInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
    },
}

M.DescribeStreamStorageConfigurationOutput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        StreamStorageConfiguration = {
            type = "structure",
        },
    },
}

M.GetDataEndpointInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        APIName = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDataEndpointOutput = {
    type = "structure",
    members = {
        DataEndpoint = {
            type = "string",
        },
    },
}

M.SingleMasterChannelEndpointConfiguration = {
    type = "structure",
    members = {
        Protocols = {
            type = "list",
            member_type = "string",
        },
        Role = {
            type = "string",
        },
    },
}

M.GetSignalingChannelEndpointInput = {
    type = "structure",
    members = {
        ChannelARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SingleMasterChannelEndpointConfiguration = {
            type = "structure",
        },
    },
}

M.ResourceEndpointListItem = {
    type = "structure",
    members = {
        Protocol = {
            type = "string",
        },
        ResourceEndpoint = {
            type = "string",
        },
    },
}

M.GetSignalingChannelEndpointOutput = {
    type = "structure",
    members = {
        ResourceEndpointList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.InvalidResourceFormatException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListEdgeAgentConfigurationsInput = {
    type = "structure",
    members = {
        HubDeviceArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListEdgeAgentConfigurationsEdgeConfig = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        SyncStatus = {
            type = "string",
        },
        FailedStatusDetails = {
            type = "string",
        },
        EdgeConfig = {
            type = "structure",
        },
    },
}

M.ListEdgeAgentConfigurationsOutput = {
    type = "structure",
    members = {
        EdgeConfigs = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListSignalingChannelsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        ChannelNameCondition = {
            type = "structure",
        },
    },
}

M.ListSignalingChannelsOutput = {
    type = "structure",
    members = {
        ChannelInfoList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.StreamNameCondition = {
    type = "structure",
    members = {
        ComparisonOperator = {
            type = "string",
        },
        ComparisonValue = {
            type = "string",
        },
    },
}

M.ListStreamsInput = {
    type = "structure",
    members = {
        MaxResults = {
            type = "number",
        },
        NextToken = {
            type = "string",
        },
        StreamNameCondition = {
            type = "structure",
        },
    },
}

M.ListStreamsOutput = {
    type = "structure",
    members = {
        StreamInfoList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListTagsForStreamInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        StreamName = {
            type = "string",
        },
    },
}

M.ListTagsForStreamOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
    },
}

M.NoDataRetentionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.StartEdgeConfigurationUpdateInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        EdgeConfig = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.StartEdgeConfigurationUpdateOutput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        CreationTime = {
            type = "timestamp",
        },
        LastUpdatedTime = {
            type = "timestamp",
        },
        SyncStatus = {
            type = "string",
        },
        FailedStatusDetails = {
            type = "string",
        },
        EdgeConfig = {
            type = "structure",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.TagStreamInput = {
    type = "structure",
    members = {
        StreamARN = {
            type = "string",
        },
        StreamName = {
            type = "string",
        },
        Tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TagStreamOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeyList = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UntagStreamInput = {
    type = "structure",
    members = {
        StreamARN = {
            type = "string",
        },
        StreamName = {
            type = "string",
        },
        TagKeyList = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagStreamOutput = {
    type = "structure",
}

M.UpdateDataRetentionOperation = {
    INCREASE_DATA_RETENTION = "INCREASE_DATA_RETENTION",
    DECREASE_DATA_RETENTION = "DECREASE_DATA_RETENTION",
}

M.UpdateDataRetentionInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        CurrentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Operation = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DataRetentionChangeInHours = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateDataRetentionOutput = {
    type = "structure",
}

M.UpdateImageGenerationConfigurationInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        ImageGenerationConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateImageGenerationConfigurationOutput = {
    type = "structure",
}

M.UpdateMediaStorageConfigurationInput = {
    type = "structure",
    members = {
        ChannelARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        MediaStorageConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateMediaStorageConfigurationOutput = {
    type = "structure",
}

M.UpdateNotificationConfigurationInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        NotificationConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateNotificationConfigurationOutput = {
    type = "structure",
}

M.UpdateSignalingChannelInput = {
    type = "structure",
    members = {
        ChannelARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        CurrentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SingleMasterConfiguration = {
            type = "structure",
        },
    },
}

M.UpdateSignalingChannelOutput = {
    type = "structure",
}

M.UpdateStreamInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        CurrentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DeviceName = {
            type = "string",
        },
        MediaType = {
            type = "string",
        },
    },
}

M.UpdateStreamOutput = {
    type = "structure",
}

M.UpdateStreamStorageConfigurationInput = {
    type = "structure",
    members = {
        StreamName = {
            type = "string",
        },
        StreamARN = {
            type = "string",
        },
        CurrentVersion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        StreamStorageConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.UpdateStreamStorageConfigurationOutput = {
    type = "structure",
}

return M
