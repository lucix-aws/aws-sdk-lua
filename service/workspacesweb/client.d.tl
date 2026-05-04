local types = require("workspacesweb.types")

local record Client
    associateBrowserSettings: function(Client, types.AssociateBrowserSettingsInput): types.AssociateBrowserSettingsOutput, table
    associateDataProtectionSettings: function(Client, types.AssociateDataProtectionSettingsInput): types.AssociateDataProtectionSettingsOutput, table
    associateIpAccessSettings: function(Client, types.AssociateIpAccessSettingsInput): types.AssociateIpAccessSettingsOutput, table
    associateNetworkSettings: function(Client, types.AssociateNetworkSettingsInput): types.AssociateNetworkSettingsOutput, table
    associateSessionLogger: function(Client, types.AssociateSessionLoggerInput): types.AssociateSessionLoggerOutput, table
    associateTrustStore: function(Client, types.AssociateTrustStoreInput): types.AssociateTrustStoreOutput, table
    associateUserAccessLoggingSettings: function(Client, types.AssociateUserAccessLoggingSettingsInput): types.AssociateUserAccessLoggingSettingsOutput, table
    associateUserSettings: function(Client, types.AssociateUserSettingsInput): types.AssociateUserSettingsOutput, table
    createBrowserSettings: function(Client, types.CreateBrowserSettingsInput): types.CreateBrowserSettingsOutput, table
    createDataProtectionSettings: function(Client, types.CreateDataProtectionSettingsInput): types.CreateDataProtectionSettingsOutput, table
    createIdentityProvider: function(Client, types.CreateIdentityProviderInput): types.CreateIdentityProviderOutput, table
    createIpAccessSettings: function(Client, types.CreateIpAccessSettingsInput): types.CreateIpAccessSettingsOutput, table
    createNetworkSettings: function(Client, types.CreateNetworkSettingsInput): types.CreateNetworkSettingsOutput, table
    createPortal: function(Client, types.CreatePortalInput): types.CreatePortalOutput, table
    createSessionLogger: function(Client, types.CreateSessionLoggerInput): types.CreateSessionLoggerOutput, table
    createTrustStore: function(Client, types.CreateTrustStoreInput): types.CreateTrustStoreOutput, table
    createUserAccessLoggingSettings: function(Client, types.CreateUserAccessLoggingSettingsInput): types.CreateUserAccessLoggingSettingsOutput, table
    createUserSettings: function(Client, types.CreateUserSettingsInput): types.CreateUserSettingsOutput, table
    deleteBrowserSettings: function(Client, types.DeleteBrowserSettingsInput): types.DeleteBrowserSettingsOutput, table
    deleteDataProtectionSettings: function(Client, types.DeleteDataProtectionSettingsInput): types.DeleteDataProtectionSettingsOutput, table
    deleteIdentityProvider: function(Client, types.DeleteIdentityProviderInput): types.DeleteIdentityProviderOutput, table
    deleteIpAccessSettings: function(Client, types.DeleteIpAccessSettingsInput): types.DeleteIpAccessSettingsOutput, table
    deleteNetworkSettings: function(Client, types.DeleteNetworkSettingsInput): types.DeleteNetworkSettingsOutput, table
    deletePortal: function(Client, types.DeletePortalInput): types.DeletePortalOutput, table
    deleteSessionLogger: function(Client, types.DeleteSessionLoggerInput): types.DeleteSessionLoggerOutput, table
    deleteTrustStore: function(Client, types.DeleteTrustStoreInput): types.DeleteTrustStoreOutput, table
    deleteUserAccessLoggingSettings: function(Client, types.DeleteUserAccessLoggingSettingsInput): types.DeleteUserAccessLoggingSettingsOutput, table
    deleteUserSettings: function(Client, types.DeleteUserSettingsInput): types.DeleteUserSettingsOutput, table
    disassociateBrowserSettings: function(Client, types.DisassociateBrowserSettingsInput): types.DisassociateBrowserSettingsOutput, table
    disassociateDataProtectionSettings: function(Client, types.DisassociateDataProtectionSettingsInput): types.DisassociateDataProtectionSettingsOutput, table
    disassociateIpAccessSettings: function(Client, types.DisassociateIpAccessSettingsInput): types.DisassociateIpAccessSettingsOutput, table
    disassociateNetworkSettings: function(Client, types.DisassociateNetworkSettingsInput): types.DisassociateNetworkSettingsOutput, table
    disassociateSessionLogger: function(Client, types.DisassociateSessionLoggerInput): types.DisassociateSessionLoggerOutput, table
    disassociateTrustStore: function(Client, types.DisassociateTrustStoreInput): types.DisassociateTrustStoreOutput, table
    disassociateUserAccessLoggingSettings: function(Client, types.DisassociateUserAccessLoggingSettingsInput): types.DisassociateUserAccessLoggingSettingsOutput, table
    disassociateUserSettings: function(Client, types.DisassociateUserSettingsInput): types.DisassociateUserSettingsOutput, table
    expireSession: function(Client, types.ExpireSessionInput): types.ExpireSessionOutput, table
    getBrowserSettings: function(Client, types.GetBrowserSettingsInput): types.GetBrowserSettingsOutput, table
    getDataProtectionSettings: function(Client, types.GetDataProtectionSettingsInput): types.GetDataProtectionSettingsOutput, table
    getIdentityProvider: function(Client, types.GetIdentityProviderInput): types.GetIdentityProviderOutput, table
    getIpAccessSettings: function(Client, types.GetIpAccessSettingsInput): types.GetIpAccessSettingsOutput, table
    getNetworkSettings: function(Client, types.GetNetworkSettingsInput): types.GetNetworkSettingsOutput, table
    getPortal: function(Client, types.GetPortalInput): types.GetPortalOutput, table
    getPortalServiceProviderMetadata: function(Client, types.GetPortalServiceProviderMetadataInput): types.GetPortalServiceProviderMetadataOutput, table
    getSession: function(Client, types.GetSessionInput): types.GetSessionOutput, table
    getSessionLogger: function(Client, types.GetSessionLoggerInput): types.GetSessionLoggerOutput, table
    getTrustStore: function(Client, types.GetTrustStoreInput): types.GetTrustStoreOutput, table
    getTrustStoreCertificate: function(Client, types.GetTrustStoreCertificateInput): types.GetTrustStoreCertificateOutput, table
    getUserAccessLoggingSettings: function(Client, types.GetUserAccessLoggingSettingsInput): types.GetUserAccessLoggingSettingsOutput, table
    getUserSettings: function(Client, types.GetUserSettingsInput): types.GetUserSettingsOutput, table
    listBrowserSettings: function(Client, types.ListBrowserSettingsInput): types.ListBrowserSettingsOutput, table
    listDataProtectionSettings: function(Client, types.ListDataProtectionSettingsInput): types.ListDataProtectionSettingsOutput, table
    listIdentityProviders: function(Client, types.ListIdentityProvidersInput): types.ListIdentityProvidersOutput, table
    listIpAccessSettings: function(Client, types.ListIpAccessSettingsInput): types.ListIpAccessSettingsOutput, table
    listNetworkSettings: function(Client, types.ListNetworkSettingsInput): types.ListNetworkSettingsOutput, table
    listPortals: function(Client, types.ListPortalsInput): types.ListPortalsOutput, table
    listSessionLoggers: function(Client, types.ListSessionLoggersInput): types.ListSessionLoggersOutput, table
    listSessions: function(Client, types.ListSessionsInput): types.ListSessionsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTrustStoreCertificates: function(Client, types.ListTrustStoreCertificatesInput): types.ListTrustStoreCertificatesOutput, table
    listTrustStores: function(Client, types.ListTrustStoresInput): types.ListTrustStoresOutput, table
    listUserAccessLoggingSettings: function(Client, types.ListUserAccessLoggingSettingsInput): types.ListUserAccessLoggingSettingsOutput, table
    listUserSettings: function(Client, types.ListUserSettingsInput): types.ListUserSettingsOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateBrowserSettings: function(Client, types.UpdateBrowserSettingsInput): types.UpdateBrowserSettingsOutput, table
    updateDataProtectionSettings: function(Client, types.UpdateDataProtectionSettingsInput): types.UpdateDataProtectionSettingsOutput, table
    updateIdentityProvider: function(Client, types.UpdateIdentityProviderInput): types.UpdateIdentityProviderOutput, table
    updateIpAccessSettings: function(Client, types.UpdateIpAccessSettingsInput): types.UpdateIpAccessSettingsOutput, table
    updateNetworkSettings: function(Client, types.UpdateNetworkSettingsInput): types.UpdateNetworkSettingsOutput, table
    updatePortal: function(Client, types.UpdatePortalInput): types.UpdatePortalOutput, table
    updateSessionLogger: function(Client, types.UpdateSessionLoggerInput): types.UpdateSessionLoggerOutput, table
    updateTrustStore: function(Client, types.UpdateTrustStoreInput): types.UpdateTrustStoreOutput, table
    updateUserAccessLoggingSettings: function(Client, types.UpdateUserAccessLoggingSettingsInput): types.UpdateUserAccessLoggingSettingsOutput, table
    updateUserSettings: function(Client, types.UpdateUserSettingsInput): types.UpdateUserSettingsOutput, table
end

local record M
    new: function(table): Client
end

return M
