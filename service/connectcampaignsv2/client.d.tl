local types = require("connectcampaignsv2.types")

local record Client
    createCampaign: function(Client, types.CreateCampaignInput): types.CreateCampaignOutput, table
    deleteCampaign: function(Client, types.DeleteCampaignInput): types.DeleteCampaignOutput, table
    deleteCampaignChannelSubtypeConfig: function(Client, types.DeleteCampaignChannelSubtypeConfigInput): types.DeleteCampaignChannelSubtypeConfigOutput, table
    deleteCampaignCommunicationLimits: function(Client, types.DeleteCampaignCommunicationLimitsInput): types.DeleteCampaignCommunicationLimitsOutput, table
    deleteCampaignCommunicationTime: function(Client, types.DeleteCampaignCommunicationTimeInput): types.DeleteCampaignCommunicationTimeOutput, table
    deleteCampaignEntryLimits: function(Client, types.DeleteCampaignEntryLimitsInput): types.DeleteCampaignEntryLimitsOutput, table
    deleteConnectInstanceConfig: function(Client, types.DeleteConnectInstanceConfigInput): types.DeleteConnectInstanceConfigOutput, table
    deleteConnectInstanceIntegration: function(Client, types.DeleteConnectInstanceIntegrationInput): types.DeleteConnectInstanceIntegrationOutput, table
    deleteInstanceOnboardingJob: function(Client, types.DeleteInstanceOnboardingJobInput): types.DeleteInstanceOnboardingJobOutput, table
    describeCampaign: function(Client, types.DescribeCampaignInput): types.DescribeCampaignOutput, table
    getCampaignState: function(Client, types.GetCampaignStateInput): types.GetCampaignStateOutput, table
    getCampaignStateBatch: function(Client, types.GetCampaignStateBatchInput): types.GetCampaignStateBatchOutput, table
    getConnectInstanceConfig: function(Client, types.GetConnectInstanceConfigInput): types.GetConnectInstanceConfigOutput, table
    getInstanceCommunicationLimits: function(Client, types.GetInstanceCommunicationLimitsInput): types.GetInstanceCommunicationLimitsOutput, table
    getInstanceOnboardingJobStatus: function(Client, types.GetInstanceOnboardingJobStatusInput): types.GetInstanceOnboardingJobStatusOutput, table
    listCampaigns: function(Client, types.ListCampaignsInput): types.ListCampaignsOutput, table
    listConnectInstanceIntegrations: function(Client, types.ListConnectInstanceIntegrationsInput): types.ListConnectInstanceIntegrationsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    pauseCampaign: function(Client, types.PauseCampaignInput): types.PauseCampaignOutput, table
    putConnectInstanceIntegration: function(Client, types.PutConnectInstanceIntegrationInput): types.PutConnectInstanceIntegrationOutput, table
    putInstanceCommunicationLimits: function(Client, types.PutInstanceCommunicationLimitsInput): types.PutInstanceCommunicationLimitsOutput, table
    putOutboundRequestBatch: function(Client, types.PutOutboundRequestBatchInput): types.PutOutboundRequestBatchOutput, table
    putProfileOutboundRequestBatch: function(Client, types.PutProfileOutboundRequestBatchInput): types.PutProfileOutboundRequestBatchOutput, table
    resumeCampaign: function(Client, types.ResumeCampaignInput): types.ResumeCampaignOutput, table
    startCampaign: function(Client, types.StartCampaignInput): types.StartCampaignOutput, table
    startInstanceOnboardingJob: function(Client, types.StartInstanceOnboardingJobInput): types.StartInstanceOnboardingJobOutput, table
    stopCampaign: function(Client, types.StopCampaignInput): types.StopCampaignOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateCampaignChannelSubtypeConfig: function(Client, types.UpdateCampaignChannelSubtypeConfigInput): types.UpdateCampaignChannelSubtypeConfigOutput, table
    updateCampaignCommunicationLimits: function(Client, types.UpdateCampaignCommunicationLimitsInput): types.UpdateCampaignCommunicationLimitsOutput, table
    updateCampaignCommunicationTime: function(Client, types.UpdateCampaignCommunicationTimeInput): types.UpdateCampaignCommunicationTimeOutput, table
    updateCampaignEntryLimits: function(Client, types.UpdateCampaignEntryLimitsInput): types.UpdateCampaignEntryLimitsOutput, table
    updateCampaignFlowAssociation: function(Client, types.UpdateCampaignFlowAssociationInput): types.UpdateCampaignFlowAssociationOutput, table
    updateCampaignName: function(Client, types.UpdateCampaignNameInput): types.UpdateCampaignNameOutput, table
    updateCampaignSchedule: function(Client, types.UpdateCampaignScheduleInput): types.UpdateCampaignScheduleOutput, table
    updateCampaignSource: function(Client, types.UpdateCampaignSourceInput): types.UpdateCampaignSourceOutput, table
end

local record M
    new: function(table): Client
end

return M
