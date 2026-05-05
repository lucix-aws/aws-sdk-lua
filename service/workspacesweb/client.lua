local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("workspacesweb.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("workspacesweb.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSErmineControlPlaneService"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "workspaces-web", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:associateBrowserSettings(input, options)
    return self:invokeOperation(input, {
        name = "AssociateBrowserSettings",
        input_schema = schemas.AssociateBrowserSettingsInput,
        output_schema = schemas.AssociateBrowserSettingsOutput,
        http_method = "PUT",
        http_path = "/portals/{portalArn+}/browserSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateDataProtectionSettings(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDataProtectionSettings",
        input_schema = schemas.AssociateDataProtectionSettingsInput,
        output_schema = schemas.AssociateDataProtectionSettingsOutput,
        http_method = "PUT",
        http_path = "/portals/{portalArn+}/dataProtectionSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateIpAccessSettings(input, options)
    return self:invokeOperation(input, {
        name = "AssociateIpAccessSettings",
        input_schema = schemas.AssociateIpAccessSettingsInput,
        output_schema = schemas.AssociateIpAccessSettingsOutput,
        http_method = "PUT",
        http_path = "/portals/{portalArn+}/ipAccessSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateNetworkSettings(input, options)
    return self:invokeOperation(input, {
        name = "AssociateNetworkSettings",
        input_schema = schemas.AssociateNetworkSettingsInput,
        output_schema = schemas.AssociateNetworkSettingsOutput,
        http_method = "PUT",
        http_path = "/portals/{portalArn+}/networkSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateSessionLogger(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSessionLogger",
        input_schema = schemas.AssociateSessionLoggerInput,
        output_schema = schemas.AssociateSessionLoggerOutput,
        http_method = "PUT",
        http_path = "/portals/{portalArn+}/sessionLogger",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "AssociateTrustStore",
        input_schema = schemas.AssociateTrustStoreInput,
        output_schema = schemas.AssociateTrustStoreOutput,
        http_method = "PUT",
        http_path = "/portals/{portalArn+}/trustStores",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateUserAccessLoggingSettings(input, options)
    return self:invokeOperation(input, {
        name = "AssociateUserAccessLoggingSettings",
        input_schema = schemas.AssociateUserAccessLoggingSettingsInput,
        output_schema = schemas.AssociateUserAccessLoggingSettingsOutput,
        http_method = "PUT",
        http_path = "/portals/{portalArn+}/userAccessLoggingSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateUserSettings(input, options)
    return self:invokeOperation(input, {
        name = "AssociateUserSettings",
        input_schema = schemas.AssociateUserSettingsInput,
        output_schema = schemas.AssociateUserSettingsOutput,
        http_method = "PUT",
        http_path = "/portals/{portalArn+}/userSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBrowserSettings(input, options)
    return self:invokeOperation(input, {
        name = "CreateBrowserSettings",
        input_schema = schemas.CreateBrowserSettingsInput,
        output_schema = schemas.CreateBrowserSettingsOutput,
        http_method = "POST",
        http_path = "/browserSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataProtectionSettings(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataProtectionSettings",
        input_schema = schemas.CreateDataProtectionSettingsInput,
        output_schema = schemas.CreateDataProtectionSettingsOutput,
        http_method = "POST",
        http_path = "/dataProtectionSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIdentityProvider(input, options)
    return self:invokeOperation(input, {
        name = "CreateIdentityProvider",
        input_schema = schemas.CreateIdentityProviderInput,
        output_schema = schemas.CreateIdentityProviderOutput,
        http_method = "POST",
        http_path = "/identityProviders",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIpAccessSettings(input, options)
    return self:invokeOperation(input, {
        name = "CreateIpAccessSettings",
        input_schema = schemas.CreateIpAccessSettingsInput,
        output_schema = schemas.CreateIpAccessSettingsOutput,
        http_method = "POST",
        http_path = "/ipAccessSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNetworkSettings(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetworkSettings",
        input_schema = schemas.CreateNetworkSettingsInput,
        output_schema = schemas.CreateNetworkSettingsOutput,
        http_method = "POST",
        http_path = "/networkSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPortal(input, options)
    return self:invokeOperation(input, {
        name = "CreatePortal",
        input_schema = schemas.CreatePortalInput,
        output_schema = schemas.CreatePortalOutput,
        http_method = "POST",
        http_path = "/portals",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSessionLogger(input, options)
    return self:invokeOperation(input, {
        name = "CreateSessionLogger",
        input_schema = schemas.CreateSessionLoggerInput,
        output_schema = schemas.CreateSessionLoggerOutput,
        http_method = "POST",
        http_path = "/sessionLoggers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrustStore",
        input_schema = schemas.CreateTrustStoreInput,
        output_schema = schemas.CreateTrustStoreOutput,
        http_method = "POST",
        http_path = "/trustStores",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUserAccessLoggingSettings(input, options)
    return self:invokeOperation(input, {
        name = "CreateUserAccessLoggingSettings",
        input_schema = schemas.CreateUserAccessLoggingSettingsInput,
        output_schema = schemas.CreateUserAccessLoggingSettingsOutput,
        http_method = "POST",
        http_path = "/userAccessLoggingSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUserSettings(input, options)
    return self:invokeOperation(input, {
        name = "CreateUserSettings",
        input_schema = schemas.CreateUserSettingsInput,
        output_schema = schemas.CreateUserSettingsOutput,
        http_method = "POST",
        http_path = "/userSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBrowserSettings(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBrowserSettings",
        input_schema = schemas.DeleteBrowserSettingsInput,
        output_schema = schemas.DeleteBrowserSettingsOutput,
        http_method = "DELETE",
        http_path = "/browserSettings/{browserSettingsArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataProtectionSettings(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataProtectionSettings",
        input_schema = schemas.DeleteDataProtectionSettingsInput,
        output_schema = schemas.DeleteDataProtectionSettingsOutput,
        http_method = "DELETE",
        http_path = "/dataProtectionSettings/{dataProtectionSettingsArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIdentityProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIdentityProvider",
        input_schema = schemas.DeleteIdentityProviderInput,
        output_schema = schemas.DeleteIdentityProviderOutput,
        http_method = "DELETE",
        http_path = "/identityProviders/{identityProviderArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIpAccessSettings(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIpAccessSettings",
        input_schema = schemas.DeleteIpAccessSettingsInput,
        output_schema = schemas.DeleteIpAccessSettingsOutput,
        http_method = "DELETE",
        http_path = "/ipAccessSettings/{ipAccessSettingsArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNetworkSettings(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNetworkSettings",
        input_schema = schemas.DeleteNetworkSettingsInput,
        output_schema = schemas.DeleteNetworkSettingsOutput,
        http_method = "DELETE",
        http_path = "/networkSettings/{networkSettingsArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePortal(input, options)
    return self:invokeOperation(input, {
        name = "DeletePortal",
        input_schema = schemas.DeletePortalInput,
        output_schema = schemas.DeletePortalOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSessionLogger(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSessionLogger",
        input_schema = schemas.DeleteSessionLoggerInput,
        output_schema = schemas.DeleteSessionLoggerOutput,
        http_method = "DELETE",
        http_path = "/sessionLoggers/{sessionLoggerArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrustStore",
        input_schema = schemas.DeleteTrustStoreInput,
        output_schema = schemas.DeleteTrustStoreOutput,
        http_method = "DELETE",
        http_path = "/trustStores/{trustStoreArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUserAccessLoggingSettings(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserAccessLoggingSettings",
        input_schema = schemas.DeleteUserAccessLoggingSettingsInput,
        output_schema = schemas.DeleteUserAccessLoggingSettingsOutput,
        http_method = "DELETE",
        http_path = "/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUserSettings(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserSettings",
        input_schema = schemas.DeleteUserSettingsInput,
        output_schema = schemas.DeleteUserSettingsOutput,
        http_method = "DELETE",
        http_path = "/userSettings/{userSettingsArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateBrowserSettings(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateBrowserSettings",
        input_schema = schemas.DisassociateBrowserSettingsInput,
        output_schema = schemas.DisassociateBrowserSettingsOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalArn+}/browserSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateDataProtectionSettings(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateDataProtectionSettings",
        input_schema = schemas.DisassociateDataProtectionSettingsInput,
        output_schema = schemas.DisassociateDataProtectionSettingsOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalArn+}/dataProtectionSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateIpAccessSettings(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateIpAccessSettings",
        input_schema = schemas.DisassociateIpAccessSettingsInput,
        output_schema = schemas.DisassociateIpAccessSettingsOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalArn+}/ipAccessSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateNetworkSettings(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateNetworkSettings",
        input_schema = schemas.DisassociateNetworkSettingsInput,
        output_schema = schemas.DisassociateNetworkSettingsOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalArn+}/networkSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateSessionLogger(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateSessionLogger",
        input_schema = schemas.DisassociateSessionLoggerInput,
        output_schema = schemas.DisassociateSessionLoggerOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalArn+}/sessionLogger",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateTrustStore",
        input_schema = schemas.DisassociateTrustStoreInput,
        output_schema = schemas.DisassociateTrustStoreOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalArn+}/trustStores",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateUserAccessLoggingSettings(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateUserAccessLoggingSettings",
        input_schema = schemas.DisassociateUserAccessLoggingSettingsInput,
        output_schema = schemas.DisassociateUserAccessLoggingSettingsOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalArn+}/userAccessLoggingSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateUserSettings(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateUserSettings",
        input_schema = schemas.DisassociateUserSettingsInput,
        output_schema = schemas.DisassociateUserSettingsOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalArn+}/userSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:expireSession(input, options)
    return self:invokeOperation(input, {
        name = "ExpireSession",
        input_schema = schemas.ExpireSessionInput,
        output_schema = schemas.ExpireSessionOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalId}/sessions/{sessionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBrowserSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetBrowserSettings",
        input_schema = schemas.GetBrowserSettingsInput,
        output_schema = schemas.GetBrowserSettingsOutput,
        http_method = "GET",
        http_path = "/browserSettings/{browserSettingsArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataProtectionSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetDataProtectionSettings",
        input_schema = schemas.GetDataProtectionSettingsInput,
        output_schema = schemas.GetDataProtectionSettingsOutput,
        http_method = "GET",
        http_path = "/dataProtectionSettings/{dataProtectionSettingsArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIdentityProvider(input, options)
    return self:invokeOperation(input, {
        name = "GetIdentityProvider",
        input_schema = schemas.GetIdentityProviderInput,
        output_schema = schemas.GetIdentityProviderOutput,
        http_method = "GET",
        http_path = "/identityProviders/{identityProviderArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIpAccessSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetIpAccessSettings",
        input_schema = schemas.GetIpAccessSettingsInput,
        output_schema = schemas.GetIpAccessSettingsOutput,
        http_method = "GET",
        http_path = "/ipAccessSettings/{ipAccessSettingsArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNetworkSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetNetworkSettings",
        input_schema = schemas.GetNetworkSettingsInput,
        output_schema = schemas.GetNetworkSettingsOutput,
        http_method = "GET",
        http_path = "/networkSettings/{networkSettingsArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPortal(input, options)
    return self:invokeOperation(input, {
        name = "GetPortal",
        input_schema = schemas.GetPortalInput,
        output_schema = schemas.GetPortalOutput,
        http_method = "GET",
        http_path = "/portals/{portalArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPortalServiceProviderMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetPortalServiceProviderMetadata",
        input_schema = schemas.GetPortalServiceProviderMetadataInput,
        output_schema = schemas.GetPortalServiceProviderMetadataOutput,
        http_method = "GET",
        http_path = "/portalIdp/{portalArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSession(input, options)
    return self:invokeOperation(input, {
        name = "GetSession",
        input_schema = schemas.GetSessionInput,
        output_schema = schemas.GetSessionOutput,
        http_method = "GET",
        http_path = "/portals/{portalId}/sessions/{sessionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSessionLogger(input, options)
    return self:invokeOperation(input, {
        name = "GetSessionLogger",
        input_schema = schemas.GetSessionLoggerInput,
        output_schema = schemas.GetSessionLoggerOutput,
        http_method = "GET",
        http_path = "/sessionLoggers/{sessionLoggerArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "GetTrustStore",
        input_schema = schemas.GetTrustStoreInput,
        output_schema = schemas.GetTrustStoreOutput,
        http_method = "GET",
        http_path = "/trustStores/{trustStoreArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTrustStoreCertificate(input, options)
    return self:invokeOperation(input, {
        name = "GetTrustStoreCertificate",
        input_schema = schemas.GetTrustStoreCertificateInput,
        output_schema = schemas.GetTrustStoreCertificateOutput,
        http_method = "GET",
        http_path = "/trustStores/{trustStoreArn+}/certificate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUserAccessLoggingSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetUserAccessLoggingSettings",
        input_schema = schemas.GetUserAccessLoggingSettingsInput,
        output_schema = schemas.GetUserAccessLoggingSettingsOutput,
        http_method = "GET",
        http_path = "/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUserSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetUserSettings",
        input_schema = schemas.GetUserSettingsInput,
        output_schema = schemas.GetUserSettingsOutput,
        http_method = "GET",
        http_path = "/userSettings/{userSettingsArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBrowserSettings(input, options)
    return self:invokeOperation(input, {
        name = "ListBrowserSettings",
        input_schema = schemas.ListBrowserSettingsInput,
        output_schema = schemas.ListBrowserSettingsOutput,
        http_method = "GET",
        http_path = "/browserSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataProtectionSettings(input, options)
    return self:invokeOperation(input, {
        name = "ListDataProtectionSettings",
        input_schema = schemas.ListDataProtectionSettingsInput,
        output_schema = schemas.ListDataProtectionSettingsOutput,
        http_method = "GET",
        http_path = "/dataProtectionSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIdentityProviders(input, options)
    return self:invokeOperation(input, {
        name = "ListIdentityProviders",
        input_schema = schemas.ListIdentityProvidersInput,
        output_schema = schemas.ListIdentityProvidersOutput,
        http_method = "GET",
        http_path = "/portals/{portalArn+}/identityProviders",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIpAccessSettings(input, options)
    return self:invokeOperation(input, {
        name = "ListIpAccessSettings",
        input_schema = schemas.ListIpAccessSettingsInput,
        output_schema = schemas.ListIpAccessSettingsOutput,
        http_method = "GET",
        http_path = "/ipAccessSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNetworkSettings(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworkSettings",
        input_schema = schemas.ListNetworkSettingsInput,
        output_schema = schemas.ListNetworkSettingsOutput,
        http_method = "GET",
        http_path = "/networkSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPortals(input, options)
    return self:invokeOperation(input, {
        name = "ListPortals",
        input_schema = schemas.ListPortalsInput,
        output_schema = schemas.ListPortalsOutput,
        http_method = "GET",
        http_path = "/portals",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSessionLoggers(input, options)
    return self:invokeOperation(input, {
        name = "ListSessionLoggers",
        input_schema = schemas.ListSessionLoggersInput,
        output_schema = schemas.ListSessionLoggersOutput,
        http_method = "GET",
        http_path = "/sessionLoggers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListSessions",
        input_schema = schemas.ListSessionsInput,
        output_schema = schemas.ListSessionsOutput,
        http_method = "GET",
        http_path = "/portals/{portalId}/sessions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrustStoreCertificates(input, options)
    return self:invokeOperation(input, {
        name = "ListTrustStoreCertificates",
        input_schema = schemas.ListTrustStoreCertificatesInput,
        output_schema = schemas.ListTrustStoreCertificatesOutput,
        http_method = "GET",
        http_path = "/trustStores/{trustStoreArn+}/certificates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrustStores(input, options)
    return self:invokeOperation(input, {
        name = "ListTrustStores",
        input_schema = schemas.ListTrustStoresInput,
        output_schema = schemas.ListTrustStoresOutput,
        http_method = "GET",
        http_path = "/trustStores",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUserAccessLoggingSettings(input, options)
    return self:invokeOperation(input, {
        name = "ListUserAccessLoggingSettings",
        input_schema = schemas.ListUserAccessLoggingSettingsInput,
        output_schema = schemas.ListUserAccessLoggingSettingsOutput,
        http_method = "GET",
        http_path = "/userAccessLoggingSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUserSettings(input, options)
    return self:invokeOperation(input, {
        name = "ListUserSettings",
        input_schema = schemas.ListUserSettingsInput,
        output_schema = schemas.ListUserSettingsOutput,
        http_method = "GET",
        http_path = "/userSettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBrowserSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBrowserSettings",
        input_schema = schemas.UpdateBrowserSettingsInput,
        output_schema = schemas.UpdateBrowserSettingsOutput,
        http_method = "PATCH",
        http_path = "/browserSettings/{browserSettingsArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataProtectionSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataProtectionSettings",
        input_schema = schemas.UpdateDataProtectionSettingsInput,
        output_schema = schemas.UpdateDataProtectionSettingsOutput,
        http_method = "PATCH",
        http_path = "/dataProtectionSettings/{dataProtectionSettingsArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIdentityProvider(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIdentityProvider",
        input_schema = schemas.UpdateIdentityProviderInput,
        output_schema = schemas.UpdateIdentityProviderOutput,
        http_method = "PATCH",
        http_path = "/identityProviders/{identityProviderArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIpAccessSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIpAccessSettings",
        input_schema = schemas.UpdateIpAccessSettingsInput,
        output_schema = schemas.UpdateIpAccessSettingsOutput,
        http_method = "PATCH",
        http_path = "/ipAccessSettings/{ipAccessSettingsArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNetworkSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNetworkSettings",
        input_schema = schemas.UpdateNetworkSettingsInput,
        output_schema = schemas.UpdateNetworkSettingsOutput,
        http_method = "PATCH",
        http_path = "/networkSettings/{networkSettingsArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePortal(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePortal",
        input_schema = schemas.UpdatePortalInput,
        output_schema = schemas.UpdatePortalOutput,
        http_method = "PUT",
        http_path = "/portals/{portalArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSessionLogger(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSessionLogger",
        input_schema = schemas.UpdateSessionLoggerInput,
        output_schema = schemas.UpdateSessionLoggerOutput,
        http_method = "POST",
        http_path = "/sessionLoggers/{sessionLoggerArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTrustStore(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTrustStore",
        input_schema = schemas.UpdateTrustStoreInput,
        output_schema = schemas.UpdateTrustStoreOutput,
        http_method = "PATCH",
        http_path = "/trustStores/{trustStoreArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUserAccessLoggingSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserAccessLoggingSettings",
        input_schema = schemas.UpdateUserAccessLoggingSettingsInput,
        output_schema = schemas.UpdateUserAccessLoggingSettingsOutput,
        http_method = "PATCH",
        http_path = "/userAccessLoggingSettings/{userAccessLoggingSettingsArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUserSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserSettings",
        input_schema = schemas.UpdateUserSettingsInput,
        output_schema = schemas.UpdateUserSettingsOutput,
        http_method = "PATCH",
        http_path = "/userSettings/{userSettingsArn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
