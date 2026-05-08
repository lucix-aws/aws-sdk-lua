



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("wickr.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("wickr.schemas")
local traits = require("smithy.traits")
local types = require("wickr.types")
local sdk_defaults = require("aws.sdk_defaults")


















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "WickrAdminApi"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "wickr", signing_region = c.region } }
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

function C:batchCreateUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreateUser, input, options)
end

function C:batchDeleteUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteUser, input, options)
end

function C:batchLookupUserUname(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchLookupUserUname, input, options)
end

function C:batchReinviteUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchReinviteUser, input, options)
end

function C:batchResetDevicesForUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchResetDevicesForUser, input, options)
end

function C:batchToggleUserSuspendStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchToggleUserSuspendStatus, input, options)
end

function C:createBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBot, input, options)
end

function C:createDataRetentionBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataRetentionBot, input, options)
end

function C:createDataRetentionBotChallenge(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataRetentionBotChallenge, input, options)
end

function C:createNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNetwork, input, options)
end

function C:createSecurityGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSecurityGroup, input, options)
end

function C:deleteBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBot, input, options)
end

function C:deleteDataRetentionBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataRetentionBot, input, options)
end

function C:deleteNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNetwork, input, options)
end

function C:deleteSecurityGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSecurityGroup, input, options)
end

function C:getBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBot, input, options)
end

function C:getBotsCount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBotsCount, input, options)
end

function C:getDataRetentionBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataRetentionBot, input, options)
end

function C:getGuestUserHistoryCount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGuestUserHistoryCount, input, options)
end

function C:getNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNetwork, input, options)
end

function C:getNetworkSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNetworkSettings, input, options)
end

function C:getOidcInfo(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOidcInfo, input, options)
end

function C:getOpentdfConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOpentdfConfig, input, options)
end

function C:getSecurityGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSecurityGroup, input, options)
end

function C:getUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUser, input, options)
end

function C:getUsersCount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUsersCount, input, options)
end

function C:listBlockedGuestUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBlockedGuestUsers, input, options)
end

function C:listBots(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBots, input, options)
end

function C:listDevicesForUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDevicesForUser, input, options)
end

function C:listGuestUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGuestUsers, input, options)
end

function C:listNetworks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNetworks, input, options)
end

function C:listSecurityGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSecurityGroups, input, options)
end

function C:listSecurityGroupUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSecurityGroupUsers, input, options)
end

function C:listUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUsers, input, options)
end

function C:registerOidcConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterOidcConfig, input, options)
end

function C:registerOidcConfigTest(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterOidcConfigTest, input, options)
end

function C:registerOpentdfConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterOpentdfConfig, input, options)
end

function C:updateBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBot, input, options)
end

function C:updateDataRetention(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataRetention, input, options)
end

function C:updateGuestUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGuestUser, input, options)
end

function C:updateNetwork(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNetwork, input, options)
end

function C:updateNetworkSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNetworkSettings, input, options)
end

function C:updateSecurityGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSecurityGroup, input, options)
end

function C:updateUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUser, input, options)
end

return M
