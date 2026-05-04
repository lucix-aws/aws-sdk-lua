local types = require("ivsrealtime.types")

local record Client
    createEncoderConfiguration: function(Client, types.CreateEncoderConfigurationInput): types.CreateEncoderConfigurationOutput, table
    createIngestConfiguration: function(Client, types.CreateIngestConfigurationInput): types.CreateIngestConfigurationOutput, table
    createParticipantToken: function(Client, types.CreateParticipantTokenInput): types.CreateParticipantTokenOutput, table
    createStage: function(Client, types.CreateStageInput): types.CreateStageOutput, table
    createStorageConfiguration: function(Client, types.CreateStorageConfigurationInput): types.CreateStorageConfigurationOutput, table
    deleteEncoderConfiguration: function(Client, types.DeleteEncoderConfigurationInput): types.DeleteEncoderConfigurationOutput, table
    deleteIngestConfiguration: function(Client, types.DeleteIngestConfigurationInput): types.DeleteIngestConfigurationOutput, table
    deletePublicKey: function(Client, types.DeletePublicKeyInput): types.DeletePublicKeyOutput, table
    deleteStage: function(Client, types.DeleteStageInput): types.DeleteStageOutput, table
    deleteStorageConfiguration: function(Client, types.DeleteStorageConfigurationInput): types.DeleteStorageConfigurationOutput, table
    disconnectParticipant: function(Client, types.DisconnectParticipantInput): types.DisconnectParticipantOutput, table
    getComposition: function(Client, types.GetCompositionInput): types.GetCompositionOutput, table
    getEncoderConfiguration: function(Client, types.GetEncoderConfigurationInput): types.GetEncoderConfigurationOutput, table
    getIngestConfiguration: function(Client, types.GetIngestConfigurationInput): types.GetIngestConfigurationOutput, table
    getParticipant: function(Client, types.GetParticipantInput): types.GetParticipantOutput, table
    getPublicKey: function(Client, types.GetPublicKeyInput): types.GetPublicKeyOutput, table
    getStage: function(Client, types.GetStageInput): types.GetStageOutput, table
    getStageSession: function(Client, types.GetStageSessionInput): types.GetStageSessionOutput, table
    getStorageConfiguration: function(Client, types.GetStorageConfigurationInput): types.GetStorageConfigurationOutput, table
    importPublicKey: function(Client, types.ImportPublicKeyInput): types.ImportPublicKeyOutput, table
    listCompositions: function(Client, types.ListCompositionsInput): types.ListCompositionsOutput, table
    listEncoderConfigurations: function(Client, types.ListEncoderConfigurationsInput): types.ListEncoderConfigurationsOutput, table
    listIngestConfigurations: function(Client, types.ListIngestConfigurationsInput): types.ListIngestConfigurationsOutput, table
    listParticipantEvents: function(Client, types.ListParticipantEventsInput): types.ListParticipantEventsOutput, table
    listParticipantReplicas: function(Client, types.ListParticipantReplicasInput): types.ListParticipantReplicasOutput, table
    listParticipants: function(Client, types.ListParticipantsInput): types.ListParticipantsOutput, table
    listPublicKeys: function(Client, types.ListPublicKeysInput): types.ListPublicKeysOutput, table
    listStages: function(Client, types.ListStagesInput): types.ListStagesOutput, table
    listStageSessions: function(Client, types.ListStageSessionsInput): types.ListStageSessionsOutput, table
    listStorageConfigurations: function(Client, types.ListStorageConfigurationsInput): types.ListStorageConfigurationsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    startComposition: function(Client, types.StartCompositionInput): types.StartCompositionOutput, table
    startParticipantReplication: function(Client, types.StartParticipantReplicationInput): types.StartParticipantReplicationOutput, table
    stopComposition: function(Client, types.StopCompositionInput): types.StopCompositionOutput, table
    stopParticipantReplication: function(Client, types.StopParticipantReplicationInput): types.StopParticipantReplicationOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateIngestConfiguration: function(Client, types.UpdateIngestConfigurationInput): types.UpdateIngestConfigurationOutput, table
    updateStage: function(Client, types.UpdateStageInput): types.UpdateStageOutput, table
end

local record M
    new: function(table): Client
end

return M
