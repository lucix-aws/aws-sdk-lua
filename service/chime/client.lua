



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("chime.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("chime.schemas")
local traits = require("smithy.traits")
local types = require("chime.types")
local sdk_defaults = require("aws.sdk_defaults")




































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "UCBuzzConsoleService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "chime", signing_region = c.region } }
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

function C:associatePhoneNumberWithUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociatePhoneNumberWithUser, input, options)
end

function C:associateSigninDelegateGroupsWithAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateSigninDelegateGroupsWithAccount, input, options)
end

function C:batchCreateRoomMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreateRoomMembership, input, options)
end

function C:batchDeletePhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeletePhoneNumber, input, options)
end

function C:batchSuspendUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchSuspendUser, input, options)
end

function C:batchUnsuspendUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUnsuspendUser, input, options)
end

function C:batchUpdatePhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdatePhoneNumber, input, options)
end

function C:batchUpdateUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateUser, input, options)
end

function C:createAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccount, input, options)
end

function C:createBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBot, input, options)
end

function C:createMeetingDialOut(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMeetingDialOut, input, options)
end

function C:createPhoneNumberOrder(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePhoneNumberOrder, input, options)
end

function C:createRoom(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRoom, input, options)
end

function C:createRoomMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRoomMembership, input, options)
end

function C:createUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUser, input, options)
end

function C:deleteAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccount, input, options)
end

function C:deleteEventsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventsConfiguration, input, options)
end

function C:deletePhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePhoneNumber, input, options)
end

function C:deleteRoom(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRoom, input, options)
end

function C:deleteRoomMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRoomMembership, input, options)
end

function C:disassociatePhoneNumberFromUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociatePhoneNumberFromUser, input, options)
end

function C:disassociateSigninDelegateGroupsFromAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateSigninDelegateGroupsFromAccount, input, options)
end

function C:getAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccount, input, options)
end

function C:getAccountSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountSettings, input, options)
end

function C:getBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBot, input, options)
end

function C:getEventsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEventsConfiguration, input, options)
end

function C:getGlobalSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGlobalSettings, input, options)
end

function C:getPhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPhoneNumber, input, options)
end

function C:getPhoneNumberOrder(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPhoneNumberOrder, input, options)
end

function C:getPhoneNumberSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPhoneNumberSettings, input, options)
end

function C:getRetentionSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRetentionSettings, input, options)
end

function C:getRoom(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRoom, input, options)
end

function C:getUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUser, input, options)
end

function C:getUserSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUserSettings, input, options)
end

function C:inviteUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.InviteUsers, input, options)
end

function C:listAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccounts, input, options)
end

function C:listBots(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBots, input, options)
end

function C:listPhoneNumberOrders(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPhoneNumberOrders, input, options)
end

function C:listPhoneNumbers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPhoneNumbers, input, options)
end

function C:listRoomMemberships(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRoomMemberships, input, options)
end

function C:listRooms(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRooms, input, options)
end

function C:listSupportedPhoneNumberCountries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSupportedPhoneNumberCountries, input, options)
end

function C:listUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUsers, input, options)
end

function C:logoutUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.LogoutUser, input, options)
end

function C:putEventsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEventsConfiguration, input, options)
end

function C:putRetentionSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRetentionSettings, input, options)
end

function C:redactConversationMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.RedactConversationMessage, input, options)
end

function C:redactRoomMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.RedactRoomMessage, input, options)
end

function C:regenerateSecurityToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegenerateSecurityToken, input, options)
end

function C:resetPersonalPIN(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetPersonalPIN, input, options)
end

function C:restorePhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestorePhoneNumber, input, options)
end

function C:searchAvailablePhoneNumbers(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchAvailablePhoneNumbers, input, options)
end

function C:updateAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccount, input, options)
end

function C:updateAccountSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccountSettings, input, options)
end

function C:updateBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBot, input, options)
end

function C:updateGlobalSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGlobalSettings, input, options)
end

function C:updatePhoneNumber(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePhoneNumber, input, options)
end

function C:updatePhoneNumberSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePhoneNumberSettings, input, options)
end

function C:updateRoom(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRoom, input, options)
end

function C:updateRoomMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRoomMembership, input, options)
end

function C:updateUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUser, input, options)
end

function C:updateUserSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserSettings, input, options)
end

return M
