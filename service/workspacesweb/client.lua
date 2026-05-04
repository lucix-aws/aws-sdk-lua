local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("workspacesweb.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("workspacesweb.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSErmineControlPlaneService"
    cfg.signing_name = "workspaces-web"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:associateBrowserSettings(input, options)
    return self:invokeOperation(input, {
        name = "AssociateBrowserSettings",
        input_schema = types.AssociateBrowserSettingsInput,
        output_schema = types.AssociateBrowserSettingsOutput,
        http_method = "PUT",
        http_path = "/portals/{portalArn+}/browserSettings",
    }, options)
end

function Client:associateDataProtectionSettings(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDataProtectionSettings",
        input_schema = types.AssociateDataProtectionSettingsInput,
        output_schema = types.AssociateDataProtectionSettingsOutput,
        http_method = "PUT",
        http_path = "/portals/{portalArn+}/dataProtectionSettings",
    }, options)
end

function Client:associateIpAccessSettings(input, options)
    return self:invokeOperation(input, {
        name = "AssociateIpAccessSettings",
        input_schema = types.AssociateIpAccessSettingsInput,
        output_schema = types.AssociateIpAccessSettingsOutput,
        http_method = "PUT",
        http_path = "/portals/{portalArn+}/ipAccessSettings",
    }, options)
end

function Client:associateNetworkSettings(input, options)
    return self:invokeOperation(input, {
        name = "AssociateNetworkSettings",
        input_schema = types.AssociateNetworkSettingsInput,
        output_schema = types.AssociateNetworkSettingsOutput,
        http_method = "PUT",
        http_path = "/portals/{portalArn+}/networkSettings",
    }, options)
end

function Client:associateSessionLogger(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSessionLogger",
        input_schema = types.AssociateSessionLoggerInput,
        output_schema = types.AssociateSessionLoggerOutput,
        http_method = "PUT",
        http_path = "/portals/{portalArn+}/sessionLogger",
    }, options)
end

function Client:associateTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "AssociateTrustStore",
        input_schema = types.AssociateTrustStoreInput,
        output_schema = types.AssociateTrustStoreOutput,
        http_method = "PUT",
        http_path = "/portals/{portalArn+}/trustStores",
    }, options)
end

function Client:associateUserAccessLoggingSettings(input, options)
    return self:invokeOperation(input, {
        name = "AssociateUserAccessLoggingSettings",
        input_schema = types.AssociateUserAccessLoggingSettingsInput,
        output_schema = types.AssociateUserAccessLoggingSettingsOutput,
        http_method = "PUT",
        http_path = "/portals/{portalArn+}/userAccessLoggingSettings",
    }, options)
end

function Client:associateUserSettings(input, options)
    return self:invokeOperation(input, {
        name = "AssociateUserSettings",
        input_schema = types.AssociateUserSettingsInput,
        output_schema = types.AssociateUserSettingsOutput,
        http_method = "PUT",
        http_path = "/portals/{portalArn+}/userSettings",
    }, options)
end

function Client:createBrowserSettings(input, options)
    return self:invokeOperation(input, {
        name = "CreateBrowserSettings",
        input_schema = types.CreateBrowserSettingsInput,
        output_schema = types.CreateBrowserSettingsOutput,
        http_method = "POST",
        http_path = "/browserSettings",
    }, options)
end

function Client:createDataProtectionSettings(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataProtectionSettings",
        input_schema = types.CreateDataProtectionSettingsInput,
        output_schema = types.CreateDataProtectionSettingsOutput,
        http_method = "POST",
        http_path = "/dataProtectionSettings",
    }, options)
end

function Client:createIdentityProvider(input, options)
    return self:invokeOperation(input, {
        name = "CreateIdentityProvider",
        input_schema = types.CreateIdentityProviderInput,
        output_schema = types.CreateIdentityProviderOutput,
        http_method = "POST",
        http_path = "/identityProviders",
    }, options)
end

function Client:createIpAccessSettings(input, options)
    return self:invokeOperation(input, {
        name = "CreateIpAccessSettings",
        input_schema = types.CreateIpAccessSettingsInput,
        output_schema = types.CreateIpAccessSettingsOutput,
        http_method = "POST",
        http_path = "/ipAccessSettings",
    }, options)
end

function Client:createNetworkSettings(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetworkSettings",
        input_schema = types.CreateNetworkSettingsInput,
        output_schema = types.CreateNetworkSettingsOutput,
        http_method = "POST",
        http_path = "/networkSettings",
    }, options)
end

function Client:createPortal(input, options)
    return self:invokeOperation(input, {
        name = "CreatePortal",
        input_schema = types.CreatePortalInput,
        output_schema = types.CreatePortalOutput,
        http_method = "POST",
        http_path = "/portals",
    }, options)
end

function Client:createSessionLogger(input, options)
    return self:invokeOperation(input, {
        name = "CreateSessionLogger",
        input_schema = types.CreateSessionLoggerInput,
        output_schema = types.CreateSessionLoggerOutput,
        http_method = "POST",
        http_path = "/sessionLoggers",
    }, options)
end

function Client:createTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrustStore",
        input_schema = types.CreateTrustStoreInput,
        output_schema = types.CreateTrustStoreOutput,
        http_method = "POST",
        http_path = "/trustStores",
    }, options)
end

function Client:createUserAccessLoggingSettings(input, options)
    return self:invokeOperation(input, {
        name = "CreateUserAccessLoggingSettings",
        input_schema = types.CreateUserAccessLoggingSettingsInput,
        output_schema = types.CreateUserAccessLoggingSettingsOutput,
        http_method = "POST",
        http_path = "/userAccessLoggingSettings",
    }, options)
end

function Client:createUserSettings(input, options)
    return self:invokeOperation(input, {
        name = "CreateUserSettings",
        input_schema = types.CreateUserSettingsInput,
        output_schema = types.CreateUserSettingsOutput,
        http_method = "POST",
        http_path = "/userSettings",
    }, options)
end

function Client:deleteBrowserSettings(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBrowserSettings",
        input_schema = types.DeleteBrowserSettingsInput,
        output_schema = types.DeleteBrowserSettingsOutput,
        http_method = "DELETE",
        http_path = "/browserSettings/{browserSettingsArn+}",
    }, options)
end

function Client:deleteDataProtectionSettings(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataProtectionSettings",
        input_schema = types.DeleteDataProtectionSettingsInput,
        output_schema = types.DeleteDataProtectionSettingsOutput,
        http_method = "DELETE",
        http_path = "/dataProtectionSettings/{dataProtectionSettingsArn+}",
    }, options)
end

function Client:deleteIdentityProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIdentityProvider",
        input_schema = types.DeleteIdentityProviderInput,
        output_schema = types.DeleteIdentityProviderOutput,
        http_method = "DELETE",
        http_path = "/identityProviders/{identityProviderArn+}",
    }, options)
end

function Client:deleteIpAccessSettings(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIpAccessSettings",
        input_schema = types.DeleteIpAccessSettingsInput,
        output_schema = types.DeleteIpAccessSettingsOutput,
        http_method = "DELETE",
        http_path = "/ipAccessSettings/{ipAccessSettingsArn+}",
    }, options)
end

function Client:deleteNetworkSettings(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetworkSettings",
        input_schema = types.DeleteNetworkSettingsInput,
        output_schema = types.DeleteNetworkSettingsOutput,
        http_method = "DELETE",
        http_path = "/networkSettings/{networkSettingsArn+}",
    }, options)
end

function Client:deletePortal(input, options)
    return self:invokeOperation(input, {
        name = "DeletePortal",
        input_schema = types.DeletePortalInput,
        output_schema = types.DeletePortalOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalArn+}",
    }, options)
end

function Client:deleteSessionLogger(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSessionLogger",
        input_schema = types.DeleteSessionLoggerInput,
        output_schema = types.DeleteSessionLoggerOutput,
        http_method = "DELETE",
        http_path = "/sessionLoggers/{sessionLoggerArn+}",
    }, options)
end

function Client:deleteTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrustStore",
        input_schema = types.DeleteTrustStoreInput,
        output_schema = types.DeleteTrustStoreOutput,
        http_method = "DELETE",
        http_path = "/trustStores/{trustStoreArn+}",
    }, options)
end

function Client:deleteUserAccessLoggingSettings(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserAccessLoggingSettings",
        input_schema = types.DeleteUserAccessLoggingSettingsInput,
        output_schema = types.DeleteUserAccessLoggingSettingsOutput,
        http_method = "DELETE",
        http_path = "/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}",
    }, options)
end

function Client:deleteUserSettings(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserSettings",
        input_schema = types.DeleteUserSettingsInput,
        output_schema = types.DeleteUserSettingsOutput,
        http_method = "DELETE",
        http_path = "/userSettings/{userSettingsArn+}",
    }, options)
end

function Client:disassociateBrowserSettings(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateBrowserSettings",
        input_schema = types.DisassociateBrowserSettingsInput,
        output_schema = types.DisassociateBrowserSettingsOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalArn+}/browserSettings",
    }, options)
end

function Client:disassociateDataProtectionSettings(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateDataProtectionSettings",
        input_schema = types.DisassociateDataProtectionSettingsInput,
        output_schema = types.DisassociateDataProtectionSettingsOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalArn+}/dataProtectionSettings",
    }, options)
end

function Client:disassociateIpAccessSettings(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateIpAccessSettings",
        input_schema = types.DisassociateIpAccessSettingsInput,
        output_schema = types.DisassociateIpAccessSettingsOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalArn+}/ipAccessSettings",
    }, options)
end

function Client:disassociateNetworkSettings(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateNetworkSettings",
        input_schema = types.DisassociateNetworkSettingsInput,
        output_schema = types.DisassociateNetworkSettingsOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalArn+}/networkSettings",
    }, options)
end

function Client:disassociateSessionLogger(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateSessionLogger",
        input_schema = types.DisassociateSessionLoggerInput,
        output_schema = types.DisassociateSessionLoggerOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalArn+}/sessionLogger",
    }, options)
end

function Client:disassociateTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateTrustStore",
        input_schema = types.DisassociateTrustStoreInput,
        output_schema = types.DisassociateTrustStoreOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalArn+}/trustStores",
    }, options)
end

function Client:disassociateUserAccessLoggingSettings(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateUserAccessLoggingSettings",
        input_schema = types.DisassociateUserAccessLoggingSettingsInput,
        output_schema = types.DisassociateUserAccessLoggingSettingsOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalArn+}/userAccessLoggingSettings",
    }, options)
end

function Client:disassociateUserSettings(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateUserSettings",
        input_schema = types.DisassociateUserSettingsInput,
        output_schema = types.DisassociateUserSettingsOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalArn+}/userSettings",
    }, options)
end

function Client:expireSession(input, options)
    return self:invokeOperation(input, {
        name = "ExpireSession",
        input_schema = types.ExpireSessionInput,
        output_schema = types.ExpireSessionOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalId}/sessions/{sessionId}",
    }, options)
end

function Client:getBrowserSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetBrowserSettings",
        input_schema = types.GetBrowserSettingsInput,
        output_schema = types.GetBrowserSettingsOutput,
        http_method = "GET",
        http_path = "/browserSettings/{browserSettingsArn+}",
    }, options)
end

function Client:getDataProtectionSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetDataProtectionSettings",
        input_schema = types.GetDataProtectionSettingsInput,
        output_schema = types.GetDataProtectionSettingsOutput,
        http_method = "GET",
        http_path = "/dataProtectionSettings/{dataProtectionSettingsArn+}",
    }, options)
end

function Client:getIdentityProvider(input, options)
    return self:invokeOperation(input, {
        name = "GetIdentityProvider",
        input_schema = types.GetIdentityProviderInput,
        output_schema = types.GetIdentityProviderOutput,
        http_method = "GET",
        http_path = "/identityProviders/{identityProviderArn+}",
    }, options)
end

function Client:getIpAccessSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetIpAccessSettings",
        input_schema = types.GetIpAccessSettingsInput,
        output_schema = types.GetIpAccessSettingsOutput,
        http_method = "GET",
        http_path = "/ipAccessSettings/{ipAccessSettingsArn+}",
    }, options)
end

function Client:getNetworkSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkSettings",
        input_schema = types.GetNetworkSettingsInput,
        output_schema = types.GetNetworkSettingsOutput,
        http_method = "GET",
        http_path = "/networkSettings/{networkSettingsArn+}",
    }, options)
end

function Client:getPortal(input, options)
    return self:invokeOperation(input, {
        name = "GetPortal",
        input_schema = types.GetPortalInput,
        output_schema = types.GetPortalOutput,
        http_method = "GET",
        http_path = "/portals/{portalArn+}",
    }, options)
end

function Client:getPortalServiceProviderMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetPortalServiceProviderMetadata",
        input_schema = types.GetPortalServiceProviderMetadataInput,
        output_schema = types.GetPortalServiceProviderMetadataOutput,
        http_method = "GET",
        http_path = "/portalIdp/{portalArn+}",
    }, options)
end

function Client:getSession(input, options)
    return self:invokeOperation(input, {
        name = "GetSession",
        input_schema = types.GetSessionInput,
        output_schema = types.GetSessionOutput,
        http_method = "GET",
        http_path = "/portals/{portalId}/sessions/{sessionId}",
    }, options)
end

function Client:getSessionLogger(input, options)
    return self:invokeOperation(input, {
        name = "GetSessionLogger",
        input_schema = types.GetSessionLoggerInput,
        output_schema = types.GetSessionLoggerOutput,
        http_method = "GET",
        http_path = "/sessionLoggers/{sessionLoggerArn+}",
    }, options)
end

function Client:getTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "GetTrustStore",
        input_schema = types.GetTrustStoreInput,
        output_schema = types.GetTrustStoreOutput,
        http_method = "GET",
        http_path = "/trustStores/{trustStoreArn+}",
    }, options)
end

function Client:getTrustStoreCertificate(input, options)
    return self:invokeOperation(input, {
        name = "GetTrustStoreCertificate",
        input_schema = types.GetTrustStoreCertificateInput,
        output_schema = types.GetTrustStoreCertificateOutput,
        http_method = "GET",
        http_path = "/trustStores/{trustStoreArn+}/certificate",
    }, options)
end

function Client:getUserAccessLoggingSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetUserAccessLoggingSettings",
        input_schema = types.GetUserAccessLoggingSettingsInput,
        output_schema = types.GetUserAccessLoggingSettingsOutput,
        http_method = "GET",
        http_path = "/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}",
    }, options)
end

function Client:getUserSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetUserSettings",
        input_schema = types.GetUserSettingsInput,
        output_schema = types.GetUserSettingsOutput,
        http_method = "GET",
        http_path = "/userSettings/{userSettingsArn+}",
    }, options)
end

function Client:listBrowserSettings(input, options)
    return self:invokeOperation(input, {
        name = "ListBrowserSettings",
        input_schema = types.ListBrowserSettingsInput,
        output_schema = types.ListBrowserSettingsOutput,
        http_method = "GET",
        http_path = "/browserSettings",
    }, options)
end

function Client:listDataProtectionSettings(input, options)
    return self:invokeOperation(input, {
        name = "ListDataProtectionSettings",
        input_schema = types.ListDataProtectionSettingsInput,
        output_schema = types.ListDataProtectionSettingsOutput,
        http_method = "GET",
        http_path = "/dataProtectionSettings",
    }, options)
end

function Client:listIdentityProviders(input, options)
    return self:invokeOperation(input, {
        name = "ListIdentityProviders",
        input_schema = types.ListIdentityProvidersInput,
        output_schema = types.ListIdentityProvidersOutput,
        http_method = "GET",
        http_path = "/portals/{portalArn+}/identityProviders",
    }, options)
end

function Client:listIpAccessSettings(input, options)
    return self:invokeOperation(input, {
        name = "ListIpAccessSettings",
        input_schema = types.ListIpAccessSettingsInput,
        output_schema = types.ListIpAccessSettingsOutput,
        http_method = "GET",
        http_path = "/ipAccessSettings",
    }, options)
end

function Client:listNetworkSettings(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworkSettings",
        input_schema = types.ListNetworkSettingsInput,
        output_schema = types.ListNetworkSettingsOutput,
        http_method = "GET",
        http_path = "/networkSettings",
    }, options)
end

function Client:listPortals(input, options)
    return self:invokeOperation(input, {
        name = "ListPortals",
        input_schema = types.ListPortalsInput,
        output_schema = types.ListPortalsOutput,
        http_method = "GET",
        http_path = "/portals",
    }, options)
end

function Client:listSessionLoggers(input, options)
    return self:invokeOperation(input, {
        name = "ListSessionLoggers",
        input_schema = types.ListSessionLoggersInput,
        output_schema = types.ListSessionLoggersOutput,
        http_method = "GET",
        http_path = "/sessionLoggers",
    }, options)
end

function Client:listSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListSessions",
        input_schema = types.ListSessionsInput,
        output_schema = types.ListSessionsOutput,
        http_method = "GET",
        http_path = "/portals/{portalId}/sessions",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn+}",
    }, options)
end

function Client:listTrustStoreCertificates(input, options)
    return self:invokeOperation(input, {
        name = "ListTrustStoreCertificates",
        input_schema = types.ListTrustStoreCertificatesInput,
        output_schema = types.ListTrustStoreCertificatesOutput,
        http_method = "GET",
        http_path = "/trustStores/{trustStoreArn+}/certificates",
    }, options)
end

function Client:listTrustStores(input, options)
    return self:invokeOperation(input, {
        name = "ListTrustStores",
        input_schema = types.ListTrustStoresInput,
        output_schema = types.ListTrustStoresOutput,
        http_method = "GET",
        http_path = "/trustStores",
    }, options)
end

function Client:listUserAccessLoggingSettings(input, options)
    return self:invokeOperation(input, {
        name = "ListUserAccessLoggingSettings",
        input_schema = types.ListUserAccessLoggingSettingsInput,
        output_schema = types.ListUserAccessLoggingSettingsOutput,
        http_method = "GET",
        http_path = "/userAccessLoggingSettings",
    }, options)
end

function Client:listUserSettings(input, options)
    return self:invokeOperation(input, {
        name = "ListUserSettings",
        input_schema = types.ListUserSettingsInput,
        output_schema = types.ListUserSettingsOutput,
        http_method = "GET",
        http_path = "/userSettings",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn+}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn+}",
    }, options)
end

function Client:updateBrowserSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBrowserSettings",
        input_schema = types.UpdateBrowserSettingsInput,
        output_schema = types.UpdateBrowserSettingsOutput,
        http_method = "PATCH",
        http_path = "/browserSettings/{browserSettingsArn+}",
    }, options)
end

function Client:updateDataProtectionSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataProtectionSettings",
        input_schema = types.UpdateDataProtectionSettingsInput,
        output_schema = types.UpdateDataProtectionSettingsOutput,
        http_method = "PATCH",
        http_path = "/dataProtectionSettings/{dataProtectionSettingsArn+}",
    }, options)
end

function Client:updateIdentityProvider(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIdentityProvider",
        input_schema = types.UpdateIdentityProviderInput,
        output_schema = types.UpdateIdentityProviderOutput,
        http_method = "PATCH",
        http_path = "/identityProviders/{identityProviderArn+}",
    }, options)
end

function Client:updateIpAccessSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIpAccessSettings",
        input_schema = types.UpdateIpAccessSettingsInput,
        output_schema = types.UpdateIpAccessSettingsOutput,
        http_method = "PATCH",
        http_path = "/ipAccessSettings/{ipAccessSettingsArn+}",
    }, options)
end

function Client:updateNetworkSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNetworkSettings",
        input_schema = types.UpdateNetworkSettingsInput,
        output_schema = types.UpdateNetworkSettingsOutput,
        http_method = "PATCH",
        http_path = "/networkSettings/{networkSettingsArn+}",
    }, options)
end

function Client:updatePortal(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePortal",
        input_schema = types.UpdatePortalInput,
        output_schema = types.UpdatePortalOutput,
        http_method = "PUT",
        http_path = "/portals/{portalArn+}",
    }, options)
end

function Client:updateSessionLogger(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSessionLogger",
        input_schema = types.UpdateSessionLoggerInput,
        output_schema = types.UpdateSessionLoggerOutput,
        http_method = "POST",
        http_path = "/sessionLoggers/{sessionLoggerArn+}",
    }, options)
end

function Client:updateTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTrustStore",
        input_schema = types.UpdateTrustStoreInput,
        output_schema = types.UpdateTrustStoreOutput,
        http_method = "PATCH",
        http_path = "/trustStores/{trustStoreArn+}",
    }, options)
end

function Client:updateUserAccessLoggingSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserAccessLoggingSettings",
        input_schema = types.UpdateUserAccessLoggingSettingsInput,
        output_schema = types.UpdateUserAccessLoggingSettingsOutput,
        http_method = "PATCH",
        http_path = "/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}",
    }, options)
end

function Client:updateUserSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserSettings",
        input_schema = types.UpdateUserSettingsInput,
        output_schema = types.UpdateUserSettingsOutput,
        http_method = "PATCH",
        http_path = "/userSettings/{userSettingsArn+}",
    }, options)
end

return M
