local types = require("fis.types")

local record Client
    createExperimentTemplate: function(Client, types.CreateExperimentTemplateInput): types.CreateExperimentTemplateOutput, table
    createTargetAccountConfiguration: function(Client, types.CreateTargetAccountConfigurationInput): types.CreateTargetAccountConfigurationOutput, table
    deleteExperimentTemplate: function(Client, types.DeleteExperimentTemplateInput): types.DeleteExperimentTemplateOutput, table
    deleteTargetAccountConfiguration: function(Client, types.DeleteTargetAccountConfigurationInput): types.DeleteTargetAccountConfigurationOutput, table
    getAction: function(Client, types.GetActionInput): types.GetActionOutput, table
    getExperiment: function(Client, types.GetExperimentInput): types.GetExperimentOutput, table
    getExperimentTargetAccountConfiguration: function(Client, types.GetExperimentTargetAccountConfigurationInput): types.GetExperimentTargetAccountConfigurationOutput, table
    getExperimentTemplate: function(Client, types.GetExperimentTemplateInput): types.GetExperimentTemplateOutput, table
    getSafetyLever: function(Client, types.GetSafetyLeverInput): types.GetSafetyLeverOutput, table
    getTargetAccountConfiguration: function(Client, types.GetTargetAccountConfigurationInput): types.GetTargetAccountConfigurationOutput, table
    getTargetResourceType: function(Client, types.GetTargetResourceTypeInput): types.GetTargetResourceTypeOutput, table
    listActions: function(Client, types.ListActionsInput): types.ListActionsOutput, table
    listExperimentResolvedTargets: function(Client, types.ListExperimentResolvedTargetsInput): types.ListExperimentResolvedTargetsOutput, table
    listExperiments: function(Client, types.ListExperimentsInput): types.ListExperimentsOutput, table
    listExperimentTargetAccountConfigurations: function(Client, types.ListExperimentTargetAccountConfigurationsInput): types.ListExperimentTargetAccountConfigurationsOutput, table
    listExperimentTemplates: function(Client, types.ListExperimentTemplatesInput): types.ListExperimentTemplatesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTargetAccountConfigurations: function(Client, types.ListTargetAccountConfigurationsInput): types.ListTargetAccountConfigurationsOutput, table
    listTargetResourceTypes: function(Client, types.ListTargetResourceTypesInput): types.ListTargetResourceTypesOutput, table
    startExperiment: function(Client, types.StartExperimentInput): types.StartExperimentOutput, table
    stopExperiment: function(Client, types.StopExperimentInput): types.StopExperimentOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateExperimentTemplate: function(Client, types.UpdateExperimentTemplateInput): types.UpdateExperimentTemplateOutput, table
    updateSafetyLeverState: function(Client, types.UpdateSafetyLeverStateOperationInput): types.UpdateSafetyLeverStateOutput, table
    updateTargetAccountConfiguration: function(Client, types.UpdateTargetAccountConfigurationInput): types.UpdateTargetAccountConfigurationOutput, table
end

local record M
    new: function(table): Client
end

return M
