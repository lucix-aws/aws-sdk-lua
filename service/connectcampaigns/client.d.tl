local types = require("connectcampaigns.types")

local record Client
    createCampaign: function(Client, types.CreateCampaignInput): types.CreateCampaignOutput, table
    deleteCampaign: function(Client, types.DeleteCampaignInput): types.DeleteCampaignOutput, table
    deleteConnectInstanceConfig: function(Client, types.DeleteConnectInstanceConfigInput): types.DeleteConnectInstanceConfigOutput, table
    deleteInstanceOnboardingJob: function(Client, types.DeleteInstanceOnboardingJobInput): types.DeleteInstanceOnboardingJobOutput, table
    describeCampaign: function(Client, types.DescribeCampaignInput): types.DescribeCampaignOutput, table
    getCampaignState: function(Client, types.GetCampaignStateInput): types.GetCampaignStateOutput, table
    getCampaignStateBatch: function(Client, types.GetCampaignStateBatchInput): types.GetCampaignStateBatchOutput, table
    getConnectInstanceConfig: function(Client, types.GetConnectInstanceConfigInput): types.GetConnectInstanceConfigOutput, table
    getInstanceOnboardingJobStatus: function(Client, types.GetInstanceOnboardingJobStatusInput): types.GetInstanceOnboardingJobStatusOutput, table
    listCampaigns: function(Client, types.ListCampaignsInput): types.ListCampaignsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    pauseCampaign: function(Client, types.PauseCampaignInput): types.PauseCampaignOutput, table
    putDialRequestBatch: function(Client, types.PutDialRequestBatchInput): types.PutDialRequestBatchOutput, table
    resumeCampaign: function(Client, types.ResumeCampaignInput): types.ResumeCampaignOutput, table
    startCampaign: function(Client, types.StartCampaignInput): types.StartCampaignOutput, table
    startInstanceOnboardingJob: function(Client, types.StartInstanceOnboardingJobInput): types.StartInstanceOnboardingJobOutput, table
    stopCampaign: function(Client, types.StopCampaignInput): types.StopCampaignOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateCampaignDialerConfig: function(Client, types.UpdateCampaignDialerConfigInput): types.UpdateCampaignDialerConfigOutput, table
    updateCampaignName: function(Client, types.UpdateCampaignNameInput): types.UpdateCampaignNameOutput, table
    updateCampaignOutboundCallConfig: function(Client, types.UpdateCampaignOutboundCallConfigInput): types.UpdateCampaignOutboundCallConfigOutput, table
end

local record M
    new: function(table): Client
end

return M
