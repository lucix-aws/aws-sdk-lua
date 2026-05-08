



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("notifications.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("notifications.schemas")
local traits = require("smithy.traits")
local types = require("notifications.types")
local sdk_defaults = require("aws.sdk_defaults")













































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Notifications"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "notifications", signing_region = c.region } }
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

function C:associateChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateChannel, input, options)
end

function C:associateManagedNotificationAccountContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateManagedNotificationAccountContact, input, options)
end

function C:associateManagedNotificationAdditionalChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateManagedNotificationAdditionalChannel, input, options)
end

function C:associateOrganizationalUnit(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateOrganizationalUnit, input, options)
end

function C:createEventRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEventRule, input, options)
end

function C:createNotificationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNotificationConfiguration, input, options)
end

function C:deleteEventRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventRule, input, options)
end

function C:deleteNotificationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNotificationConfiguration, input, options)
end

function C:deregisterNotificationHub(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterNotificationHub, input, options)
end

function C:disableNotificationsAccessForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableNotificationsAccessForOrganization, input, options)
end

function C:disassociateChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateChannel, input, options)
end

function C:disassociateManagedNotificationAccountContact(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateManagedNotificationAccountContact, input, options)
end

function C:disassociateManagedNotificationAdditionalChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateManagedNotificationAdditionalChannel, input, options)
end

function C:disassociateOrganizationalUnit(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateOrganizationalUnit, input, options)
end

function C:enableNotificationsAccessForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableNotificationsAccessForOrganization, input, options)
end

function C:getEventRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEventRule, input, options)
end

function C:getManagedNotificationChildEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedNotificationChildEvent, input, options)
end

function C:getManagedNotificationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedNotificationConfiguration, input, options)
end

function C:getManagedNotificationEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedNotificationEvent, input, options)
end

function C:getNotificationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNotificationConfiguration, input, options)
end

function C:getNotificationEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNotificationEvent, input, options)
end

function C:getNotificationsAccessForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNotificationsAccessForOrganization, input, options)
end

function C:listChannels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannels, input, options)
end

function C:listEventRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventRules, input, options)
end

function C:listManagedNotificationChannelAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedNotificationChannelAssociations, input, options)
end

function C:listManagedNotificationChildEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedNotificationChildEvents, input, options)
end

function C:listManagedNotificationConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedNotificationConfigurations, input, options)
end

function C:listManagedNotificationEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedNotificationEvents, input, options)
end

function C:listMemberAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMemberAccounts, input, options)
end

function C:listNotificationConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNotificationConfigurations, input, options)
end

function C:listNotificationEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNotificationEvents, input, options)
end

function C:listNotificationHubs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNotificationHubs, input, options)
end

function C:listOrganizationalUnits(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOrganizationalUnits, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:registerNotificationHub(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterNotificationHub, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateEventRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEventRule, input, options)
end

function C:updateNotificationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNotificationConfiguration, input, options)
end

return M
