local types = require("supportapp.types")

local record Client
    createSlackChannelConfiguration: function(Client, types.CreateSlackChannelConfigurationInput): types.CreateSlackChannelConfigurationOutput, table
    deleteAccountAlias: function(Client, types.DeleteAccountAliasInput): types.DeleteAccountAliasOutput, table
    deleteSlackChannelConfiguration: function(Client, types.DeleteSlackChannelConfigurationInput): types.DeleteSlackChannelConfigurationOutput, table
    deleteSlackWorkspaceConfiguration: function(Client, types.DeleteSlackWorkspaceConfigurationInput): types.DeleteSlackWorkspaceConfigurationOutput, table
    getAccountAlias: function(Client, types.GetAccountAliasInput): types.GetAccountAliasOutput, table
    listSlackChannelConfigurations: function(Client, types.ListSlackChannelConfigurationsInput): types.ListSlackChannelConfigurationsOutput, table
    listSlackWorkspaceConfigurations: function(Client, types.ListSlackWorkspaceConfigurationsInput): types.ListSlackWorkspaceConfigurationsOutput, table
    putAccountAlias: function(Client, types.PutAccountAliasInput): types.PutAccountAliasOutput, table
    registerSlackWorkspaceForOrganization: function(Client, types.RegisterSlackWorkspaceForOrganizationInput): types.RegisterSlackWorkspaceForOrganizationOutput, table
    updateSlackChannelConfiguration: function(Client, types.UpdateSlackChannelConfigurationInput): types.UpdateSlackChannelConfigurationOutput, table
end

local record M
    new: function(table): Client
end

return M
