local types = require("mediatailor.types")

local record Client
    configureLogsForChannel: function(Client, types.ConfigureLogsForChannelInput): types.ConfigureLogsForChannelOutput, table
    configureLogsForPlaybackConfiguration: function(Client, types.ConfigureLogsForPlaybackConfigurationInput): types.ConfigureLogsForPlaybackConfigurationOutput, table
    createChannel: function(Client, types.CreateChannelInput): types.CreateChannelOutput, table
    createLiveSource: function(Client, types.CreateLiveSourceInput): types.CreateLiveSourceOutput, table
    createPrefetchSchedule: function(Client, types.CreatePrefetchScheduleInput): types.CreatePrefetchScheduleOutput, table
    createProgram: function(Client, types.CreateProgramInput): types.CreateProgramOutput, table
    createSourceLocation: function(Client, types.CreateSourceLocationInput): types.CreateSourceLocationOutput, table
    createVodSource: function(Client, types.CreateVodSourceInput): types.CreateVodSourceOutput, table
    deleteChannel: function(Client, types.DeleteChannelInput): types.DeleteChannelOutput, table
    deleteChannelPolicy: function(Client, types.DeleteChannelPolicyInput): types.DeleteChannelPolicyOutput, table
    deleteLiveSource: function(Client, types.DeleteLiveSourceInput): types.DeleteLiveSourceOutput, table
    deletePlaybackConfiguration: function(Client, types.DeletePlaybackConfigurationInput): types.DeletePlaybackConfigurationOutput, table
    deletePrefetchSchedule: function(Client, types.DeletePrefetchScheduleInput): types.DeletePrefetchScheduleOutput, table
    deleteProgram: function(Client, types.DeleteProgramInput): types.DeleteProgramOutput, table
    deleteSourceLocation: function(Client, types.DeleteSourceLocationInput): types.DeleteSourceLocationOutput, table
    deleteVodSource: function(Client, types.DeleteVodSourceInput): types.DeleteVodSourceOutput, table
    describeChannel: function(Client, types.DescribeChannelInput): types.DescribeChannelOutput, table
    describeLiveSource: function(Client, types.DescribeLiveSourceInput): types.DescribeLiveSourceOutput, table
    describeProgram: function(Client, types.DescribeProgramInput): types.DescribeProgramOutput, table
    describeSourceLocation: function(Client, types.DescribeSourceLocationInput): types.DescribeSourceLocationOutput, table
    describeVodSource: function(Client, types.DescribeVodSourceInput): types.DescribeVodSourceOutput, table
    getChannelPolicy: function(Client, types.GetChannelPolicyInput): types.GetChannelPolicyOutput, table
    getChannelSchedule: function(Client, types.GetChannelScheduleInput): types.GetChannelScheduleOutput, table
    getPlaybackConfiguration: function(Client, types.GetPlaybackConfigurationInput): types.GetPlaybackConfigurationOutput, table
    getPrefetchSchedule: function(Client, types.GetPrefetchScheduleInput): types.GetPrefetchScheduleOutput, table
    listAlerts: function(Client, types.ListAlertsInput): types.ListAlertsOutput, table
    listChannels: function(Client, types.ListChannelsInput): types.ListChannelsOutput, table
    listLiveSources: function(Client, types.ListLiveSourcesInput): types.ListLiveSourcesOutput, table
    listPlaybackConfigurations: function(Client, types.ListPlaybackConfigurationsInput): types.ListPlaybackConfigurationsOutput, table
    listPrefetchSchedules: function(Client, types.ListPrefetchSchedulesInput): types.ListPrefetchSchedulesOutput, table
    listSourceLocations: function(Client, types.ListSourceLocationsInput): types.ListSourceLocationsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listVodSources: function(Client, types.ListVodSourcesInput): types.ListVodSourcesOutput, table
    putChannelPolicy: function(Client, types.PutChannelPolicyInput): types.PutChannelPolicyOutput, table
    putPlaybackConfiguration: function(Client, types.PutPlaybackConfigurationInput): types.PutPlaybackConfigurationOutput, table
    startChannel: function(Client, types.StartChannelInput): types.StartChannelOutput, table
    stopChannel: function(Client, types.StopChannelInput): types.StopChannelOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateChannel: function(Client, types.UpdateChannelInput): types.UpdateChannelOutput, table
    updateLiveSource: function(Client, types.UpdateLiveSourceInput): types.UpdateLiveSourceOutput, table
    updateProgram: function(Client, types.UpdateProgramInput): types.UpdateProgramOutput, table
    updateSourceLocation: function(Client, types.UpdateSourceLocationInput): types.UpdateSourceLocationOutput, table
    updateVodSource: function(Client, types.UpdateVodSourceInput): types.UpdateVodSourceOutput, table
end

local record M
    new: function(table): Client
end

return M
