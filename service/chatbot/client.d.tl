local types = require("chatbot.types")

local record Client
    associateToConfiguration: function(Client, types.AssociateToConfigurationInput): types.AssociateToConfigurationOutput, table
    createChimeWebhookConfiguration: function(Client, types.CreateChimeWebhookConfigurationInput): types.CreateChimeWebhookConfigurationOutput, table
    createCustomAction: function(Client, types.CreateCustomActionInput): types.CreateCustomActionOutput, table
    createMicrosoftTeamsChannelConfiguration: function(Client, types.CreateMicrosoftTeamsChannelConfigurationInput): types.CreateMicrosoftTeamsChannelConfigurationOutput, table
    createSlackChannelConfiguration: function(Client, types.CreateSlackChannelConfigurationInput): types.CreateSlackChannelConfigurationOutput, table
    deleteChimeWebhookConfiguration: function(Client, types.DeleteChimeWebhookConfigurationInput): types.DeleteChimeWebhookConfigurationOutput, table
    deleteCustomAction: function(Client, types.DeleteCustomActionInput): types.DeleteCustomActionOutput, table
    deleteMicrosoftTeamsChannelConfiguration: function(Client, types.DeleteMicrosoftTeamsChannelConfigurationInput): types.DeleteMicrosoftTeamsChannelConfigurationOutput, table
    deleteMicrosoftTeamsConfiguredTeam: function(Client, types.DeleteMicrosoftTeamsConfiguredTeamInput): types.DeleteMicrosoftTeamsConfiguredTeamOutput, table
    deleteMicrosoftTeamsUserIdentity: function(Client, types.DeleteMicrosoftTeamsUserIdentityInput): types.DeleteMicrosoftTeamsUserIdentityOutput, table
    deleteSlackChannelConfiguration: function(Client, types.DeleteSlackChannelConfigurationInput): types.DeleteSlackChannelConfigurationOutput, table
    deleteSlackUserIdentity: function(Client, types.DeleteSlackUserIdentityInput): types.DeleteSlackUserIdentityOutput, table
    deleteSlackWorkspaceAuthorization: function(Client, types.DeleteSlackWorkspaceAuthorizationInput): types.DeleteSlackWorkspaceAuthorizationOutput, table
    describeChimeWebhookConfigurations: function(Client, types.DescribeChimeWebhookConfigurationsInput): types.DescribeChimeWebhookConfigurationsOutput, table
    describeSlackChannelConfigurations: function(Client, types.DescribeSlackChannelConfigurationsInput): types.DescribeSlackChannelConfigurationsOutput, table
    describeSlackUserIdentities: function(Client, types.DescribeSlackUserIdentitiesInput): types.DescribeSlackUserIdentitiesOutput, table
    describeSlackWorkspaces: function(Client, types.DescribeSlackWorkspacesInput): types.DescribeSlackWorkspacesOutput, table
    disassociateFromConfiguration: function(Client, types.DisassociateFromConfigurationInput): types.DisassociateFromConfigurationOutput, table
    getAccountPreferences: function(Client, types.GetAccountPreferencesInput): types.GetAccountPreferencesOutput, table
    getCustomAction: function(Client, types.GetCustomActionInput): types.GetCustomActionOutput, table
    getMicrosoftTeamsChannelConfiguration: function(Client, types.GetMicrosoftTeamsChannelConfigurationInput): types.GetMicrosoftTeamsChannelConfigurationOutput, table
    listAssociations: function(Client, types.ListAssociationsInput): types.ListAssociationsOutput, table
    listCustomActions: function(Client, types.ListCustomActionsInput): types.ListCustomActionsOutput, table
    listMicrosoftTeamsChannelConfigurations: function(Client, types.ListMicrosoftTeamsChannelConfigurationsInput): types.ListMicrosoftTeamsChannelConfigurationsOutput, table
    listMicrosoftTeamsConfiguredTeams: function(Client, types.ListMicrosoftTeamsConfiguredTeamsInput): types.ListMicrosoftTeamsConfiguredTeamsOutput, table
    listMicrosoftTeamsUserIdentities: function(Client, types.ListMicrosoftTeamsUserIdentitiesInput): types.ListMicrosoftTeamsUserIdentitiesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAccountPreferences: function(Client, types.UpdateAccountPreferencesInput): types.UpdateAccountPreferencesOutput, table
    updateChimeWebhookConfiguration: function(Client, types.UpdateChimeWebhookConfigurationInput): types.UpdateChimeWebhookConfigurationOutput, table
    updateCustomAction: function(Client, types.UpdateCustomActionInput): types.UpdateCustomActionOutput, table
    updateMicrosoftTeamsChannelConfiguration: function(Client, types.UpdateMicrosoftTeamsChannelConfigurationInput): types.UpdateMicrosoftTeamsChannelConfigurationOutput, table
    updateSlackChannelConfiguration: function(Client, types.UpdateSlackChannelConfigurationInput): types.UpdateSlackChannelConfigurationOutput, table
end

local record M
    new: function(table): Client
end

return M
