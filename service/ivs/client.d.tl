local types = require("ivs.types")

local record Client
    batchGetChannel: function(Client, types.BatchGetChannelInput): types.BatchGetChannelOutput, table
    batchGetStreamKey: function(Client, types.BatchGetStreamKeyInput): types.BatchGetStreamKeyOutput, table
    batchStartViewerSessionRevocation: function(Client, types.BatchStartViewerSessionRevocationInput): types.BatchStartViewerSessionRevocationOutput, table
    createAdConfiguration: function(Client, types.CreateAdConfigurationInput): types.CreateAdConfigurationOutput, table
    createChannel: function(Client, types.CreateChannelInput): types.CreateChannelOutput, table
    createPlaybackRestrictionPolicy: function(Client, types.CreatePlaybackRestrictionPolicyInput): types.CreatePlaybackRestrictionPolicyOutput, table
    createRecordingConfiguration: function(Client, types.CreateRecordingConfigurationInput): types.CreateRecordingConfigurationOutput, table
    createStreamKey: function(Client, types.CreateStreamKeyInput): types.CreateStreamKeyOutput, table
    deleteAdConfiguration: function(Client, types.DeleteAdConfigurationInput): types.DeleteAdConfigurationOutput, table
    deleteChannel: function(Client, types.DeleteChannelInput): types.DeleteChannelOutput, table
    deletePlaybackKeyPair: function(Client, types.DeletePlaybackKeyPairInput): types.DeletePlaybackKeyPairOutput, table
    deletePlaybackRestrictionPolicy: function(Client, types.DeletePlaybackRestrictionPolicyInput): types.DeletePlaybackRestrictionPolicyOutput, table
    deleteRecordingConfiguration: function(Client, types.DeleteRecordingConfigurationInput): types.DeleteRecordingConfigurationOutput, table
    deleteStreamKey: function(Client, types.DeleteStreamKeyInput): types.DeleteStreamKeyOutput, table
    getAdConfiguration: function(Client, types.GetAdConfigurationInput): types.GetAdConfigurationOutput, table
    getChannel: function(Client, types.GetChannelInput): types.GetChannelOutput, table
    getPlaybackKeyPair: function(Client, types.GetPlaybackKeyPairInput): types.GetPlaybackKeyPairOutput, table
    getPlaybackRestrictionPolicy: function(Client, types.GetPlaybackRestrictionPolicyInput): types.GetPlaybackRestrictionPolicyOutput, table
    getRecordingConfiguration: function(Client, types.GetRecordingConfigurationInput): types.GetRecordingConfigurationOutput, table
    getStream: function(Client, types.GetStreamInput): types.GetStreamOutput, table
    getStreamKey: function(Client, types.GetStreamKeyInput): types.GetStreamKeyOutput, table
    getStreamSession: function(Client, types.GetStreamSessionInput): types.GetStreamSessionOutput, table
    importPlaybackKeyPair: function(Client, types.ImportPlaybackKeyPairInput): types.ImportPlaybackKeyPairOutput, table
    insertAdBreak: function(Client, types.InsertAdBreakInput): types.InsertAdBreakOutput, table
    listAdConfigurations: function(Client, types.ListAdConfigurationsInput): types.ListAdConfigurationsOutput, table
    listChannels: function(Client, types.ListChannelsInput): types.ListChannelsOutput, table
    listPlaybackKeyPairs: function(Client, types.ListPlaybackKeyPairsInput): types.ListPlaybackKeyPairsOutput, table
    listPlaybackRestrictionPolicies: function(Client, types.ListPlaybackRestrictionPoliciesInput): types.ListPlaybackRestrictionPoliciesOutput, table
    listRecordingConfigurations: function(Client, types.ListRecordingConfigurationsInput): types.ListRecordingConfigurationsOutput, table
    listStreamKeys: function(Client, types.ListStreamKeysInput): types.ListStreamKeysOutput, table
    listStreams: function(Client, types.ListStreamsInput): types.ListStreamsOutput, table
    listStreamSessions: function(Client, types.ListStreamSessionsInput): types.ListStreamSessionsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putMetadata: function(Client, types.PutMetadataInput): types.PutMetadataOutput, table
    startViewerSessionRevocation: function(Client, types.StartViewerSessionRevocationInput): types.StartViewerSessionRevocationOutput, table
    stopStream: function(Client, types.StopStreamInput): types.StopStreamOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateChannel: function(Client, types.UpdateChannelInput): types.UpdateChannelOutput, table
    updatePlaybackRestrictionPolicy: function(Client, types.UpdatePlaybackRestrictionPolicyInput): types.UpdatePlaybackRestrictionPolicyOutput, table
end

local record M
    new: function(table): Client
end

return M
