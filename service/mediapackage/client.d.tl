local types = require("mediapackage.types")

local record Client
    configureLogs: function(Client, types.ConfigureLogsInput): types.ConfigureLogsOutput, table
    createChannel: function(Client, types.CreateChannelInput): types.CreateChannelOutput, table
    createHarvestJob: function(Client, types.CreateHarvestJobInput): types.CreateHarvestJobOutput, table
    createOriginEndpoint: function(Client, types.CreateOriginEndpointInput): types.CreateOriginEndpointOutput, table
    deleteChannel: function(Client, types.DeleteChannelInput): types.DeleteChannelOutput, table
    deleteOriginEndpoint: function(Client, types.DeleteOriginEndpointInput): types.DeleteOriginEndpointOutput, table
    describeChannel: function(Client, types.DescribeChannelInput): types.DescribeChannelOutput, table
    describeHarvestJob: function(Client, types.DescribeHarvestJobInput): types.DescribeHarvestJobOutput, table
    describeOriginEndpoint: function(Client, types.DescribeOriginEndpointInput): types.DescribeOriginEndpointOutput, table
    listChannels: function(Client, types.ListChannelsInput): types.ListChannelsOutput, table
    listHarvestJobs: function(Client, types.ListHarvestJobsInput): types.ListHarvestJobsOutput, table
    listOriginEndpoints: function(Client, types.ListOriginEndpointsInput): types.ListOriginEndpointsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    rotateChannelCredentials: function(Client, types.RotateChannelCredentialsInput): types.RotateChannelCredentialsOutput, table
    rotateIngestEndpointCredentials: function(Client, types.RotateIngestEndpointCredentialsInput): types.RotateIngestEndpointCredentialsOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateChannel: function(Client, types.UpdateChannelInput): types.UpdateChannelOutput, table
    updateOriginEndpoint: function(Client, types.UpdateOriginEndpointInput): types.UpdateOriginEndpointOutput, table
end

local record M
    new: function(table): Client
end

return M
