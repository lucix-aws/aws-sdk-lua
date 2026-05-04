local types = require("notifications.types")

local record Client
    associateChannel: function(Client, types.AssociateChannelInput): types.AssociateChannelOutput, table
    associateManagedNotificationAccountContact: function(Client, types.AssociateManagedNotificationAccountContactInput): types.AssociateManagedNotificationAccountContactOutput, table
    associateManagedNotificationAdditionalChannel: function(Client, types.AssociateManagedNotificationAdditionalChannelInput): types.AssociateManagedNotificationAdditionalChannelOutput, table
    associateOrganizationalUnit: function(Client, types.AssociateOrganizationalUnitInput): types.AssociateOrganizationalUnitOutput, table
    createEventRule: function(Client, types.CreateEventRuleInput): types.CreateEventRuleOutput, table
    createNotificationConfiguration: function(Client, types.CreateNotificationConfigurationInput): types.CreateNotificationConfigurationOutput, table
    deleteEventRule: function(Client, types.DeleteEventRuleInput): types.DeleteEventRuleOutput, table
    deleteNotificationConfiguration: function(Client, types.DeleteNotificationConfigurationInput): types.DeleteNotificationConfigurationOutput, table
    deregisterNotificationHub: function(Client, types.DeregisterNotificationHubInput): types.DeregisterNotificationHubOutput, table
    disableNotificationsAccessForOrganization: function(Client, types.DisableNotificationsAccessForOrganizationInput): types.DisableNotificationsAccessForOrganizationOutput, table
    disassociateChannel: function(Client, types.DisassociateChannelInput): types.DisassociateChannelOutput, table
    disassociateManagedNotificationAccountContact: function(Client, types.DisassociateManagedNotificationAccountContactInput): types.DisassociateManagedNotificationAccountContactOutput, table
    disassociateManagedNotificationAdditionalChannel: function(Client, types.DisassociateManagedNotificationAdditionalChannelInput): types.DisassociateManagedNotificationAdditionalChannelOutput, table
    disassociateOrganizationalUnit: function(Client, types.DisassociateOrganizationalUnitInput): types.DisassociateOrganizationalUnitOutput, table
    enableNotificationsAccessForOrganization: function(Client, types.EnableNotificationsAccessForOrganizationInput): types.EnableNotificationsAccessForOrganizationOutput, table
    getEventRule: function(Client, types.GetEventRuleInput): types.GetEventRuleOutput, table
    getManagedNotificationChildEvent: function(Client, types.GetManagedNotificationChildEventInput): types.GetManagedNotificationChildEventOutput, table
    getManagedNotificationConfiguration: function(Client, types.GetManagedNotificationConfigurationInput): types.GetManagedNotificationConfigurationOutput, table
    getManagedNotificationEvent: function(Client, types.GetManagedNotificationEventInput): types.GetManagedNotificationEventOutput, table
    getNotificationConfiguration: function(Client, types.GetNotificationConfigurationInput): types.GetNotificationConfigurationOutput, table
    getNotificationEvent: function(Client, types.GetNotificationEventInput): types.GetNotificationEventOutput, table
    getNotificationsAccessForOrganization: function(Client, types.GetNotificationsAccessForOrganizationInput): types.GetNotificationsAccessForOrganizationOutput, table
    listChannels: function(Client, types.ListChannelsInput): types.ListChannelsOutput, table
    listEventRules: function(Client, types.ListEventRulesInput): types.ListEventRulesOutput, table
    listManagedNotificationChannelAssociations: function(Client, types.ListManagedNotificationChannelAssociationsInput): types.ListManagedNotificationChannelAssociationsOutput, table
    listManagedNotificationChildEvents: function(Client, types.ListManagedNotificationChildEventsInput): types.ListManagedNotificationChildEventsOutput, table
    listManagedNotificationConfigurations: function(Client, types.ListManagedNotificationConfigurationsInput): types.ListManagedNotificationConfigurationsOutput, table
    listManagedNotificationEvents: function(Client, types.ListManagedNotificationEventsInput): types.ListManagedNotificationEventsOutput, table
    listMemberAccounts: function(Client, types.ListMemberAccountsInput): types.ListMemberAccountsOutput, table
    listNotificationConfigurations: function(Client, types.ListNotificationConfigurationsInput): types.ListNotificationConfigurationsOutput, table
    listNotificationEvents: function(Client, types.ListNotificationEventsInput): types.ListNotificationEventsOutput, table
    listNotificationHubs: function(Client, types.ListNotificationHubsInput): types.ListNotificationHubsOutput, table
    listOrganizationalUnits: function(Client, types.ListOrganizationalUnitsInput): types.ListOrganizationalUnitsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    registerNotificationHub: function(Client, types.RegisterNotificationHubInput): types.RegisterNotificationHubOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateEventRule: function(Client, types.UpdateEventRuleInput): types.UpdateEventRuleOutput, table
    updateNotificationConfiguration: function(Client, types.UpdateNotificationConfigurationInput): types.UpdateNotificationConfigurationOutput, table
end

local record M
    new: function(table): Client
end

return M
