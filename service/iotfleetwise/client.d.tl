local types = require("iotfleetwise.types")

local record Client
    associateVehicleFleet: function(Client, types.AssociateVehicleFleetInput): types.AssociateVehicleFleetOutput, table
    batchCreateVehicle: function(Client, types.BatchCreateVehicleInput): types.BatchCreateVehicleOutput, table
    batchUpdateVehicle: function(Client, types.BatchUpdateVehicleInput): types.BatchUpdateVehicleOutput, table
    createCampaign: function(Client, types.CreateCampaignInput): types.CreateCampaignOutput, table
    createDecoderManifest: function(Client, types.CreateDecoderManifestInput): types.CreateDecoderManifestOutput, table
    createFleet: function(Client, types.CreateFleetInput): types.CreateFleetOutput, table
    createModelManifest: function(Client, types.CreateModelManifestInput): types.CreateModelManifestOutput, table
    createSignalCatalog: function(Client, types.CreateSignalCatalogInput): types.CreateSignalCatalogOutput, table
    createStateTemplate: function(Client, types.CreateStateTemplateInput): types.CreateStateTemplateOutput, table
    createVehicle: function(Client, types.CreateVehicleInput): types.CreateVehicleOutput, table
    deleteCampaign: function(Client, types.DeleteCampaignInput): types.DeleteCampaignOutput, table
    deleteDecoderManifest: function(Client, types.DeleteDecoderManifestInput): types.DeleteDecoderManifestOutput, table
    deleteFleet: function(Client, types.DeleteFleetInput): types.DeleteFleetOutput, table
    deleteModelManifest: function(Client, types.DeleteModelManifestInput): types.DeleteModelManifestOutput, table
    deleteSignalCatalog: function(Client, types.DeleteSignalCatalogInput): types.DeleteSignalCatalogOutput, table
    deleteStateTemplate: function(Client, types.DeleteStateTemplateInput): types.DeleteStateTemplateOutput, table
    deleteVehicle: function(Client, types.DeleteVehicleInput): types.DeleteVehicleOutput, table
    disassociateVehicleFleet: function(Client, types.DisassociateVehicleFleetInput): types.DisassociateVehicleFleetOutput, table
    getCampaign: function(Client, types.GetCampaignInput): types.GetCampaignOutput, table
    getDecoderManifest: function(Client, types.GetDecoderManifestInput): types.GetDecoderManifestOutput, table
    getEncryptionConfiguration: function(Client, types.GetEncryptionConfigurationInput): types.GetEncryptionConfigurationOutput, table
    getFleet: function(Client, types.GetFleetInput): types.GetFleetOutput, table
    getLoggingOptions: function(Client, types.GetLoggingOptionsInput): types.GetLoggingOptionsOutput, table
    getModelManifest: function(Client, types.GetModelManifestInput): types.GetModelManifestOutput, table
    getRegisterAccountStatus: function(Client, types.GetRegisterAccountStatusInput): types.GetRegisterAccountStatusOutput, table
    getSignalCatalog: function(Client, types.GetSignalCatalogInput): types.GetSignalCatalogOutput, table
    getStateTemplate: function(Client, types.GetStateTemplateInput): types.GetStateTemplateOutput, table
    getVehicle: function(Client, types.GetVehicleInput): types.GetVehicleOutput, table
    getVehicleStatus: function(Client, types.GetVehicleStatusInput): types.GetVehicleStatusOutput, table
    importDecoderManifest: function(Client, types.ImportDecoderManifestInput): types.ImportDecoderManifestOutput, table
    importSignalCatalog: function(Client, types.ImportSignalCatalogInput): types.ImportSignalCatalogOutput, table
    listCampaigns: function(Client, types.ListCampaignsInput): types.ListCampaignsOutput, table
    listDecoderManifestNetworkInterfaces: function(Client, types.ListDecoderManifestNetworkInterfacesInput): types.ListDecoderManifestNetworkInterfacesOutput, table
    listDecoderManifests: function(Client, types.ListDecoderManifestsInput): types.ListDecoderManifestsOutput, table
    listDecoderManifestSignals: function(Client, types.ListDecoderManifestSignalsInput): types.ListDecoderManifestSignalsOutput, table
    listFleets: function(Client, types.ListFleetsInput): types.ListFleetsOutput, table
    listFleetsForVehicle: function(Client, types.ListFleetsForVehicleInput): types.ListFleetsForVehicleOutput, table
    listModelManifestNodes: function(Client, types.ListModelManifestNodesInput): types.ListModelManifestNodesOutput, table
    listModelManifests: function(Client, types.ListModelManifestsInput): types.ListModelManifestsOutput, table
    listSignalCatalogNodes: function(Client, types.ListSignalCatalogNodesInput): types.ListSignalCatalogNodesOutput, table
    listSignalCatalogs: function(Client, types.ListSignalCatalogsInput): types.ListSignalCatalogsOutput, table
    listStateTemplates: function(Client, types.ListStateTemplatesInput): types.ListStateTemplatesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listVehicles: function(Client, types.ListVehiclesInput): types.ListVehiclesOutput, table
    listVehiclesInFleet: function(Client, types.ListVehiclesInFleetInput): types.ListVehiclesInFleetOutput, table
    putEncryptionConfiguration: function(Client, types.PutEncryptionConfigurationInput): types.PutEncryptionConfigurationOutput, table
    putLoggingOptions: function(Client, types.PutLoggingOptionsInput): types.PutLoggingOptionsOutput, table
    registerAccount: function(Client, types.RegisterAccountInput): types.RegisterAccountOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateCampaign: function(Client, types.UpdateCampaignInput): types.UpdateCampaignOutput, table
    updateDecoderManifest: function(Client, types.UpdateDecoderManifestInput): types.UpdateDecoderManifestOutput, table
    updateFleet: function(Client, types.UpdateFleetInput): types.UpdateFleetOutput, table
    updateModelManifest: function(Client, types.UpdateModelManifestInput): types.UpdateModelManifestOutput, table
    updateSignalCatalog: function(Client, types.UpdateSignalCatalogInput): types.UpdateSignalCatalogOutput, table
    updateStateTemplate: function(Client, types.UpdateStateTemplateInput): types.UpdateStateTemplateOutput, table
    updateVehicle: function(Client, types.UpdateVehicleInput): types.UpdateVehicleOutput, table
end

local record M
    new: function(table): Client
end

return M
