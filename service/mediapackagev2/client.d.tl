local types = require("mediapackagev2.types")

local record Client
    cancelHarvestJob: function(Client, types.CancelHarvestJobInput): types.CancelHarvestJobOutput, table
    createChannel: function(Client, types.CreateChannelInput): types.CreateChannelOutput, table
    createChannelGroup: function(Client, types.CreateChannelGroupInput): types.CreateChannelGroupOutput, table
    createHarvestJob: function(Client, types.CreateHarvestJobInput): types.CreateHarvestJobOutput, table
    createOriginEndpoint: function(Client, types.CreateOriginEndpointInput): types.CreateOriginEndpointOutput, table
    deleteChannel: function(Client, types.DeleteChannelInput): types.DeleteChannelOutput, table
    deleteChannelGroup: function(Client, types.DeleteChannelGroupInput): types.DeleteChannelGroupOutput, table
    deleteChannelPolicy: function(Client, types.DeleteChannelPolicyInput): types.DeleteChannelPolicyOutput, table
    deleteOriginEndpoint: function(Client, types.DeleteOriginEndpointInput): types.DeleteOriginEndpointOutput, table
    deleteOriginEndpointPolicy: function(Client, types.DeleteOriginEndpointPolicyInput): types.DeleteOriginEndpointPolicyOutput, table
    getChannel: function(Client, types.GetChannelInput): types.GetChannelOutput, table
    getChannelGroup: function(Client, types.GetChannelGroupInput): types.GetChannelGroupOutput, table
    getChannelPolicy: function(Client, types.GetChannelPolicyInput): types.GetChannelPolicyOutput, table
    getHarvestJob: function(Client, types.GetHarvestJobInput): types.GetHarvestJobOutput, table
    getOriginEndpoint: function(Client, types.GetOriginEndpointInput): types.GetOriginEndpointOutput, table
    getOriginEndpointPolicy: function(Client, types.GetOriginEndpointPolicyInput): types.GetOriginEndpointPolicyOutput, table
    listChannelGroups: function(Client, types.ListChannelGroupsInput): types.ListChannelGroupsOutput, table
    listChannels: function(Client, types.ListChannelsInput): types.ListChannelsOutput, table
    listHarvestJobs: function(Client, types.ListHarvestJobsInput): types.ListHarvestJobsOutput, table
    listOriginEndpoints: function(Client, types.ListOriginEndpointsInput): types.ListOriginEndpointsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putChannelPolicy: function(Client, types.PutChannelPolicyInput): types.PutChannelPolicyOutput, table
    putOriginEndpointPolicy: function(Client, types.PutOriginEndpointPolicyInput): types.PutOriginEndpointPolicyOutput, table
    resetChannelState: function(Client, types.ResetChannelStateInput): types.ResetChannelStateOutput, table
    resetOriginEndpointState: function(Client, types.ResetOriginEndpointStateInput): types.ResetOriginEndpointStateOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateChannel: function(Client, types.UpdateChannelInput): types.UpdateChannelOutput, table
    updateChannelGroup: function(Client, types.UpdateChannelGroupInput): types.UpdateChannelGroupOutput, table
    updateOriginEndpoint: function(Client, types.UpdateOriginEndpointInput): types.UpdateOriginEndpointOutput, table
end

local record M
    new: function(table): Client
end

return M
