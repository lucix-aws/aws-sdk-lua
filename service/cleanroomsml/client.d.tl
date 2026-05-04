local types = require("cleanroomsml.types")

local record Client
    cancelTrainedModel: function(Client, types.CancelTrainedModelInput): types.CancelTrainedModelOutput, table
    cancelTrainedModelInferenceJob: function(Client, types.CancelTrainedModelInferenceJobInput): types.CancelTrainedModelInferenceJobOutput, table
    createAudienceModel: function(Client, types.CreateAudienceModelInput): types.CreateAudienceModelOutput, table
    createConfiguredAudienceModel: function(Client, types.CreateConfiguredAudienceModelInput): types.CreateConfiguredAudienceModelOutput, table
    createConfiguredModelAlgorithm: function(Client, types.CreateConfiguredModelAlgorithmInput): types.CreateConfiguredModelAlgorithmOutput, table
    createConfiguredModelAlgorithmAssociation: function(Client, types.CreateConfiguredModelAlgorithmAssociationInput): types.CreateConfiguredModelAlgorithmAssociationOutput, table
    createMLInputChannel: function(Client, types.CreateMLInputChannelInput): types.CreateMLInputChannelOutput, table
    createTrainedModel: function(Client, types.CreateTrainedModelInput): types.CreateTrainedModelOutput, table
    createTrainingDataset: function(Client, types.CreateTrainingDatasetInput): types.CreateTrainingDatasetOutput, table
    deleteAudienceGenerationJob: function(Client, types.DeleteAudienceGenerationJobInput): types.DeleteAudienceGenerationJobOutput, table
    deleteAudienceModel: function(Client, types.DeleteAudienceModelInput): types.DeleteAudienceModelOutput, table
    deleteConfiguredAudienceModel: function(Client, types.DeleteConfiguredAudienceModelInput): types.DeleteConfiguredAudienceModelOutput, table
    deleteConfiguredAudienceModelPolicy: function(Client, types.DeleteConfiguredAudienceModelPolicyInput): types.DeleteConfiguredAudienceModelPolicyOutput, table
    deleteConfiguredModelAlgorithm: function(Client, types.DeleteConfiguredModelAlgorithmInput): types.DeleteConfiguredModelAlgorithmOutput, table
    deleteConfiguredModelAlgorithmAssociation: function(Client, types.DeleteConfiguredModelAlgorithmAssociationInput): types.DeleteConfiguredModelAlgorithmAssociationOutput, table
    deleteMLConfiguration: function(Client, types.DeleteMLConfigurationInput): types.DeleteMLConfigurationOutput, table
    deleteMLInputChannelData: function(Client, types.DeleteMLInputChannelDataInput): types.DeleteMLInputChannelDataOutput, table
    deleteTrainedModelOutput: function(Client, types.DeleteTrainedModelOutputInput): types.DeleteTrainedModelOutputOutput, table
    deleteTrainingDataset: function(Client, types.DeleteTrainingDatasetInput): types.DeleteTrainingDatasetOutput, table
    getAudienceGenerationJob: function(Client, types.GetAudienceGenerationJobInput): types.GetAudienceGenerationJobOutput, table
    getAudienceModel: function(Client, types.GetAudienceModelInput): types.GetAudienceModelOutput, table
    getCollaborationConfiguredModelAlgorithmAssociation: function(Client, types.GetCollaborationConfiguredModelAlgorithmAssociationInput): types.GetCollaborationConfiguredModelAlgorithmAssociationOutput, table
    getCollaborationMLInputChannel: function(Client, types.GetCollaborationMLInputChannelInput): types.GetCollaborationMLInputChannelOutput, table
    getCollaborationTrainedModel: function(Client, types.GetCollaborationTrainedModelInput): types.GetCollaborationTrainedModelOutput, table
    getConfiguredAudienceModel: function(Client, types.GetConfiguredAudienceModelInput): types.GetConfiguredAudienceModelOutput, table
    getConfiguredAudienceModelPolicy: function(Client, types.GetConfiguredAudienceModelPolicyInput): types.GetConfiguredAudienceModelPolicyOutput, table
    getConfiguredModelAlgorithm: function(Client, types.GetConfiguredModelAlgorithmInput): types.GetConfiguredModelAlgorithmOutput, table
    getConfiguredModelAlgorithmAssociation: function(Client, types.GetConfiguredModelAlgorithmAssociationInput): types.GetConfiguredModelAlgorithmAssociationOutput, table
    getMLConfiguration: function(Client, types.GetMLConfigurationInput): types.GetMLConfigurationOutput, table
    getMLInputChannel: function(Client, types.GetMLInputChannelInput): types.GetMLInputChannelOutput, table
    getTrainedModel: function(Client, types.GetTrainedModelInput): types.GetTrainedModelOutput, table
    getTrainedModelInferenceJob: function(Client, types.GetTrainedModelInferenceJobInput): types.GetTrainedModelInferenceJobOutput, table
    getTrainingDataset: function(Client, types.GetTrainingDatasetInput): types.GetTrainingDatasetOutput, table
    listAudienceExportJobs: function(Client, types.ListAudienceExportJobsInput): types.ListAudienceExportJobsOutput, table
    listAudienceGenerationJobs: function(Client, types.ListAudienceGenerationJobsInput): types.ListAudienceGenerationJobsOutput, table
    listAudienceModels: function(Client, types.ListAudienceModelsInput): types.ListAudienceModelsOutput, table
    listCollaborationConfiguredModelAlgorithmAssociations: function(Client, types.ListCollaborationConfiguredModelAlgorithmAssociationsInput): types.ListCollaborationConfiguredModelAlgorithmAssociationsOutput, table
    listCollaborationMLInputChannels: function(Client, types.ListCollaborationMLInputChannelsInput): types.ListCollaborationMLInputChannelsOutput, table
    listCollaborationTrainedModelExportJobs: function(Client, types.ListCollaborationTrainedModelExportJobsInput): types.ListCollaborationTrainedModelExportJobsOutput, table
    listCollaborationTrainedModelInferenceJobs: function(Client, types.ListCollaborationTrainedModelInferenceJobsInput): types.ListCollaborationTrainedModelInferenceJobsOutput, table
    listCollaborationTrainedModels: function(Client, types.ListCollaborationTrainedModelsInput): types.ListCollaborationTrainedModelsOutput, table
    listConfiguredAudienceModels: function(Client, types.ListConfiguredAudienceModelsInput): types.ListConfiguredAudienceModelsOutput, table
    listConfiguredModelAlgorithmAssociations: function(Client, types.ListConfiguredModelAlgorithmAssociationsInput): types.ListConfiguredModelAlgorithmAssociationsOutput, table
    listConfiguredModelAlgorithms: function(Client, types.ListConfiguredModelAlgorithmsInput): types.ListConfiguredModelAlgorithmsOutput, table
    listMLInputChannels: function(Client, types.ListMLInputChannelsInput): types.ListMLInputChannelsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTrainedModelInferenceJobs: function(Client, types.ListTrainedModelInferenceJobsInput): types.ListTrainedModelInferenceJobsOutput, table
    listTrainedModels: function(Client, types.ListTrainedModelsInput): types.ListTrainedModelsOutput, table
    listTrainedModelVersions: function(Client, types.ListTrainedModelVersionsInput): types.ListTrainedModelVersionsOutput, table
    listTrainingDatasets: function(Client, types.ListTrainingDatasetsInput): types.ListTrainingDatasetsOutput, table
    putConfiguredAudienceModelPolicy: function(Client, types.PutConfiguredAudienceModelPolicyInput): types.PutConfiguredAudienceModelPolicyOutput, table
    putMLConfiguration: function(Client, types.PutMLConfigurationInput): types.PutMLConfigurationOutput, table
    startAudienceExportJob: function(Client, types.StartAudienceExportJobInput): types.StartAudienceExportJobOutput, table
    startAudienceGenerationJob: function(Client, types.StartAudienceGenerationJobInput): types.StartAudienceGenerationJobOutput, table
    startTrainedModelExportJob: function(Client, types.StartTrainedModelExportJobInput): types.StartTrainedModelExportJobOutput, table
    startTrainedModelInferenceJob: function(Client, types.StartTrainedModelInferenceJobInput): types.StartTrainedModelInferenceJobOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateConfiguredAudienceModel: function(Client, types.UpdateConfiguredAudienceModelInput): types.UpdateConfiguredAudienceModelOutput, table
end

local record M
    new: function(table): Client
end

return M
