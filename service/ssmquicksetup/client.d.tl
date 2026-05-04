local types = require("ssmquicksetup.types")

local record Client
    createConfigurationManager: function(Client, types.CreateConfigurationManagerInput): types.CreateConfigurationManagerOutput, table
    deleteConfigurationManager: function(Client, types.DeleteConfigurationManagerInput): types.DeleteConfigurationManagerOutput, table
    getConfiguration: function(Client, types.GetConfigurationInput): types.GetConfigurationOutput, table
    getConfigurationManager: function(Client, types.GetConfigurationManagerInput): types.GetConfigurationManagerOutput, table
    getServiceSettings: function(Client, types.GetServiceSettingsInput): types.GetServiceSettingsOutput, table
    listConfigurationManagers: function(Client, types.ListConfigurationManagersInput): types.ListConfigurationManagersOutput, table
    listConfigurations: function(Client, types.ListConfigurationsInput): types.ListConfigurationsOutput, table
    listQuickSetupTypes: function(Client, types.ListQuickSetupTypesInput): types.ListQuickSetupTypesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateConfigurationDefinition: function(Client, types.UpdateConfigurationDefinitionInput): types.UpdateConfigurationDefinitionOutput, table
    updateConfigurationManager: function(Client, types.UpdateConfigurationManagerInput): types.UpdateConfigurationManagerOutput, table
    updateServiceSettings: function(Client, types.UpdateServiceSettingsInput): types.UpdateServiceSettingsOutput, table
end

local record M
    new: function(table): Client
end

return M
