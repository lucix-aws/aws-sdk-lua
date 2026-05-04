local types = require("licensemanagerusersubscriptions.types")

local record Client
    associateUser: function(Client, types.AssociateUserInput): types.AssociateUserOutput, table
    createLicenseServerEndpoint: function(Client, types.CreateLicenseServerEndpointInput): types.CreateLicenseServerEndpointOutput, table
    deleteLicenseServerEndpoint: function(Client, types.DeleteLicenseServerEndpointInput): types.DeleteLicenseServerEndpointOutput, table
    deregisterIdentityProvider: function(Client, types.DeregisterIdentityProviderInput): types.DeregisterIdentityProviderOutput, table
    disassociateUser: function(Client, types.DisassociateUserInput): types.DisassociateUserOutput, table
    listIdentityProviders: function(Client, types.ListIdentityProvidersInput): types.ListIdentityProvidersOutput, table
    listInstances: function(Client, types.ListInstancesInput): types.ListInstancesOutput, table
    listLicenseServerEndpoints: function(Client, types.ListLicenseServerEndpointsInput): types.ListLicenseServerEndpointsOutput, table
    listProductSubscriptions: function(Client, types.ListProductSubscriptionsInput): types.ListProductSubscriptionsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listUserAssociations: function(Client, types.ListUserAssociationsInput): types.ListUserAssociationsOutput, table
    registerIdentityProvider: function(Client, types.RegisterIdentityProviderInput): types.RegisterIdentityProviderOutput, table
    startProductSubscription: function(Client, types.StartProductSubscriptionInput): types.StartProductSubscriptionOutput, table
    stopProductSubscription: function(Client, types.StopProductSubscriptionInput): types.StopProductSubscriptionOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateIdentityProviderSettings: function(Client, types.UpdateIdentityProviderSettingsInput): types.UpdateIdentityProviderSettingsOutput, table
end

local record M
    new: function(table): Client
end

return M
