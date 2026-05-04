local types = require("kinesisvideo.types")

local record Client
    createSignalingChannel: function(Client, types.CreateSignalingChannelInput): types.CreateSignalingChannelOutput, table
    createStream: function(Client, types.CreateStreamInput): types.CreateStreamOutput, table
    deleteEdgeConfiguration: function(Client, types.DeleteEdgeConfigurationInput): types.DeleteEdgeConfigurationOutput, table
    deleteSignalingChannel: function(Client, types.DeleteSignalingChannelInput): types.DeleteSignalingChannelOutput, table
    deleteStream: function(Client, types.DeleteStreamInput): types.DeleteStreamOutput, table
    describeEdgeConfiguration: function(Client, types.DescribeEdgeConfigurationInput): types.DescribeEdgeConfigurationOutput, table
    describeImageGenerationConfiguration: function(Client, types.DescribeImageGenerationConfigurationInput): types.DescribeImageGenerationConfigurationOutput, table
    describeMappedResourceConfiguration: function(Client, types.DescribeMappedResourceConfigurationInput): types.DescribeMappedResourceConfigurationOutput, table
    describeMediaStorageConfiguration: function(Client, types.DescribeMediaStorageConfigurationInput): types.DescribeMediaStorageConfigurationOutput, table
    describeNotificationConfiguration: function(Client, types.DescribeNotificationConfigurationInput): types.DescribeNotificationConfigurationOutput, table
    describeSignalingChannel: function(Client, types.DescribeSignalingChannelInput): types.DescribeSignalingChannelOutput, table
    describeStream: function(Client, types.DescribeStreamInput): types.DescribeStreamOutput, table
    describeStreamStorageConfiguration: function(Client, types.DescribeStreamStorageConfigurationInput): types.DescribeStreamStorageConfigurationOutput, table
    getDataEndpoint: function(Client, types.GetDataEndpointInput): types.GetDataEndpointOutput, table
    getSignalingChannelEndpoint: function(Client, types.GetSignalingChannelEndpointInput): types.GetSignalingChannelEndpointOutput, table
    listEdgeAgentConfigurations: function(Client, types.ListEdgeAgentConfigurationsInput): types.ListEdgeAgentConfigurationsOutput, table
    listSignalingChannels: function(Client, types.ListSignalingChannelsInput): types.ListSignalingChannelsOutput, table
    listStreams: function(Client, types.ListStreamsInput): types.ListStreamsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTagsForStream: function(Client, types.ListTagsForStreamInput): types.ListTagsForStreamOutput, table
    startEdgeConfigurationUpdate: function(Client, types.StartEdgeConfigurationUpdateInput): types.StartEdgeConfigurationUpdateOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    tagStream: function(Client, types.TagStreamInput): types.TagStreamOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    untagStream: function(Client, types.UntagStreamInput): types.UntagStreamOutput, table
    updateDataRetention: function(Client, types.UpdateDataRetentionInput): types.UpdateDataRetentionOutput, table
    updateImageGenerationConfiguration: function(Client, types.UpdateImageGenerationConfigurationInput): types.UpdateImageGenerationConfigurationOutput, table
    updateMediaStorageConfiguration: function(Client, types.UpdateMediaStorageConfigurationInput): types.UpdateMediaStorageConfigurationOutput, table
    updateNotificationConfiguration: function(Client, types.UpdateNotificationConfigurationInput): types.UpdateNotificationConfigurationOutput, table
    updateSignalingChannel: function(Client, types.UpdateSignalingChannelInput): types.UpdateSignalingChannelOutput, table
    updateStream: function(Client, types.UpdateStreamInput): types.UpdateStreamOutput, table
    updateStreamStorageConfiguration: function(Client, types.UpdateStreamStorageConfigurationInput): types.UpdateStreamStorageConfigurationOutput, table
end

local record M
    new: function(table): Client
end

return M
