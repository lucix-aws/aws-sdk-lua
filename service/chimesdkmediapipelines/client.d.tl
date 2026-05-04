local types = require("chimesdkmediapipelines.types")

local record Client
    createMediaCapturePipeline: function(Client, types.CreateMediaCapturePipelineInput): types.CreateMediaCapturePipelineOutput, table
    createMediaConcatenationPipeline: function(Client, types.CreateMediaConcatenationPipelineInput): types.CreateMediaConcatenationPipelineOutput, table
    createMediaInsightsPipeline: function(Client, types.CreateMediaInsightsPipelineInput): types.CreateMediaInsightsPipelineOutput, table
    createMediaInsightsPipelineConfiguration: function(Client, types.CreateMediaInsightsPipelineConfigurationInput): types.CreateMediaInsightsPipelineConfigurationOutput, table
    createMediaLiveConnectorPipeline: function(Client, types.CreateMediaLiveConnectorPipelineInput): types.CreateMediaLiveConnectorPipelineOutput, table
    createMediaPipelineKinesisVideoStreamPool: function(Client, types.CreateMediaPipelineKinesisVideoStreamPoolInput): types.CreateMediaPipelineKinesisVideoStreamPoolOutput, table
    createMediaStreamPipeline: function(Client, types.CreateMediaStreamPipelineInput): types.CreateMediaStreamPipelineOutput, table
    deleteMediaCapturePipeline: function(Client, types.DeleteMediaCapturePipelineInput): types.DeleteMediaCapturePipelineOutput, table
    deleteMediaInsightsPipelineConfiguration: function(Client, types.DeleteMediaInsightsPipelineConfigurationInput): types.DeleteMediaInsightsPipelineConfigurationOutput, table
    deleteMediaPipeline: function(Client, types.DeleteMediaPipelineInput): types.DeleteMediaPipelineOutput, table
    deleteMediaPipelineKinesisVideoStreamPool: function(Client, types.DeleteMediaPipelineKinesisVideoStreamPoolInput): types.DeleteMediaPipelineKinesisVideoStreamPoolOutput, table
    getMediaCapturePipeline: function(Client, types.GetMediaCapturePipelineInput): types.GetMediaCapturePipelineOutput, table
    getMediaInsightsPipelineConfiguration: function(Client, types.GetMediaInsightsPipelineConfigurationInput): types.GetMediaInsightsPipelineConfigurationOutput, table
    getMediaPipeline: function(Client, types.GetMediaPipelineInput): types.GetMediaPipelineOutput, table
    getMediaPipelineKinesisVideoStreamPool: function(Client, types.GetMediaPipelineKinesisVideoStreamPoolInput): types.GetMediaPipelineKinesisVideoStreamPoolOutput, table
    getSpeakerSearchTask: function(Client, types.GetSpeakerSearchTaskInput): types.GetSpeakerSearchTaskOutput, table
    getVoiceToneAnalysisTask: function(Client, types.GetVoiceToneAnalysisTaskInput): types.GetVoiceToneAnalysisTaskOutput, table
    listMediaCapturePipelines: function(Client, types.ListMediaCapturePipelinesInput): types.ListMediaCapturePipelinesOutput, table
    listMediaInsightsPipelineConfigurations: function(Client, types.ListMediaInsightsPipelineConfigurationsInput): types.ListMediaInsightsPipelineConfigurationsOutput, table
    listMediaPipelineKinesisVideoStreamPools: function(Client, types.ListMediaPipelineKinesisVideoStreamPoolsInput): types.ListMediaPipelineKinesisVideoStreamPoolsOutput, table
    listMediaPipelines: function(Client, types.ListMediaPipelinesInput): types.ListMediaPipelinesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    startSpeakerSearchTask: function(Client, types.StartSpeakerSearchTaskInput): types.StartSpeakerSearchTaskOutput, table
    startVoiceToneAnalysisTask: function(Client, types.StartVoiceToneAnalysisTaskInput): types.StartVoiceToneAnalysisTaskOutput, table
    stopSpeakerSearchTask: function(Client, types.StopSpeakerSearchTaskInput): types.StopSpeakerSearchTaskOutput, table
    stopVoiceToneAnalysisTask: function(Client, types.StopVoiceToneAnalysisTaskInput): types.StopVoiceToneAnalysisTaskOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateMediaInsightsPipelineConfiguration: function(Client, types.UpdateMediaInsightsPipelineConfigurationInput): types.UpdateMediaInsightsPipelineConfigurationOutput, table
    updateMediaInsightsPipelineStatus: function(Client, types.UpdateMediaInsightsPipelineStatusInput): types.UpdateMediaInsightsPipelineStatusOutput, table
    updateMediaPipelineKinesisVideoStreamPool: function(Client, types.UpdateMediaPipelineKinesisVideoStreamPoolInput): types.UpdateMediaPipelineKinesisVideoStreamPoolOutput, table
end

local record M
    new: function(table): Client
end

return M
