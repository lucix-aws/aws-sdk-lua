



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("workspacesweb.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("workspacesweb.schemas")
local traits = require("smithy.traits")
local types = require("workspacesweb.types")
local sdk_defaults = require("aws.sdk_defaults")

















































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSErmineControlPlaneService"
   if not c.protocol then c.protocol = restjson_protocol.new() end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "workspaces-web", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:associateBrowserSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateBrowserSettings, input, options)
end

function C:associateDataProtectionSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateDataProtectionSettings, input, options)
end

function C:associateIpAccessSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateIpAccessSettings, input, options)
end

function C:associateNetworkSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateNetworkSettings, input, options)
end

function C:associateSessionLogger(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateSessionLogger, input, options)
end

function C:associateTrustStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateTrustStore, input, options)
end

function C:associateUserAccessLoggingSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateUserAccessLoggingSettings, input, options)
end

function C:associateUserSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateUserSettings, input, options)
end

function C:createBrowserSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBrowserSettings, input, options)
end

function C:createDataProtectionSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataProtectionSettings, input, options)
end

function C:createIdentityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIdentityProvider, input, options)
end

function C:createIpAccessSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIpAccessSettings, input, options)
end

function C:createNetworkSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNetworkSettings, input, options)
end

function C:createPortal(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePortal, input, options)
end

function C:createSessionLogger(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSessionLogger, input, options)
end

function C:createTrustStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrustStore, input, options)
end

function C:createUserAccessLoggingSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUserAccessLoggingSettings, input, options)
end

function C:createUserSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUserSettings, input, options)
end

function C:deleteBrowserSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBrowserSettings, input, options)
end

function C:deleteDataProtectionSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataProtectionSettings, input, options)
end

function C:deleteIdentityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIdentityProvider, input, options)
end

function C:deleteIpAccessSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIpAccessSettings, input, options)
end

function C:deleteNetworkSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNetworkSettings, input, options)
end

function C:deletePortal(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePortal, input, options)
end

function C:deleteSessionLogger(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSessionLogger, input, options)
end

function C:deleteTrustStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrustStore, input, options)
end

function C:deleteUserAccessLoggingSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUserAccessLoggingSettings, input, options)
end

function C:deleteUserSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUserSettings, input, options)
end

function C:disassociateBrowserSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateBrowserSettings, input, options)
end

function C:disassociateDataProtectionSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateDataProtectionSettings, input, options)
end

function C:disassociateIpAccessSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateIpAccessSettings, input, options)
end

function C:disassociateNetworkSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateNetworkSettings, input, options)
end

function C:disassociateSessionLogger(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateSessionLogger, input, options)
end

function C:disassociateTrustStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateTrustStore, input, options)
end

function C:disassociateUserAccessLoggingSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateUserAccessLoggingSettings, input, options)
end

function C:disassociateUserSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateUserSettings, input, options)
end

function C:expireSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExpireSession, input, options)
end

function C:getBrowserSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBrowserSettings, input, options)
end

function C:getDataProtectionSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataProtectionSettings, input, options)
end

function C:getIdentityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIdentityProvider, input, options)
end

function C:getIpAccessSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIpAccessSettings, input, options)
end

function C:getNetworkSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNetworkSettings, input, options)
end

function C:getPortal(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPortal, input, options)
end

function C:getPortalServiceProviderMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPortalServiceProviderMetadata, input, options)
end

function C:getSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSession, input, options)
end

function C:getSessionLogger(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSessionLogger, input, options)
end

function C:getTrustStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrustStore, input, options)
end

function C:getTrustStoreCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrustStoreCertificate, input, options)
end

function C:getUserAccessLoggingSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUserAccessLoggingSettings, input, options)
end

function C:getUserSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUserSettings, input, options)
end

function C:listBrowserSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBrowserSettings, input, options)
end

function C:listDataProtectionSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataProtectionSettings, input, options)
end

function C:listIdentityProviders(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIdentityProviders, input, options)
end

function C:listIpAccessSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIpAccessSettings, input, options)
end

function C:listNetworkSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNetworkSettings, input, options)
end

function C:listPortals(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPortals, input, options)
end

function C:listSessionLoggers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSessionLoggers, input, options)
end

function C:listSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSessions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTrustStoreCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrustStoreCertificates, input, options)
end

function C:listTrustStores(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrustStores, input, options)
end

function C:listUserAccessLoggingSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUserAccessLoggingSettings, input, options)
end

function C:listUserSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUserSettings, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateBrowserSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBrowserSettings, input, options)
end

function C:updateDataProtectionSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataProtectionSettings, input, options)
end

function C:updateIdentityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIdentityProvider, input, options)
end

function C:updateIpAccessSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIpAccessSettings, input, options)
end

function C:updateNetworkSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNetworkSettings, input, options)
end

function C:updatePortal(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePortal, input, options)
end

function C:updateSessionLogger(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSessionLogger, input, options)
end

function C:updateTrustStore(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTrustStore, input, options)
end

function C:updateUserAccessLoggingSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserAccessLoggingSettings, input, options)
end

function C:updateUserSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserSettings, input, options)
end

return M
