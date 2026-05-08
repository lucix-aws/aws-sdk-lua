



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("chatbot.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("chatbot.schemas")
local traits = require("smithy.traits")
local types = require("chatbot.types")
local sdk_defaults = require("aws.sdk_defaults")








































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "WheatleyOrchestration_20171011"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "chatbot", signing_region = c.region } }
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

function C:associateToConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateToConfiguration, input, options)
end

function C:createChimeWebhookConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChimeWebhookConfiguration, input, options)
end

function C:createCustomAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomAction, input, options)
end

function C:createMicrosoftTeamsChannelConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMicrosoftTeamsChannelConfiguration, input, options)
end

function C:createSlackChannelConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSlackChannelConfiguration, input, options)
end

function C:deleteChimeWebhookConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChimeWebhookConfiguration, input, options)
end

function C:deleteCustomAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomAction, input, options)
end

function C:deleteMicrosoftTeamsChannelConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMicrosoftTeamsChannelConfiguration, input, options)
end

function C:deleteMicrosoftTeamsConfiguredTeam(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMicrosoftTeamsConfiguredTeam, input, options)
end

function C:deleteMicrosoftTeamsUserIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMicrosoftTeamsUserIdentity, input, options)
end

function C:deleteSlackChannelConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSlackChannelConfiguration, input, options)
end

function C:deleteSlackUserIdentity(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSlackUserIdentity, input, options)
end

function C:deleteSlackWorkspaceAuthorization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSlackWorkspaceAuthorization, input, options)
end

function C:describeChimeWebhookConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeChimeWebhookConfigurations, input, options)
end

function C:describeSlackChannelConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSlackChannelConfigurations, input, options)
end

function C:describeSlackUserIdentities(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSlackUserIdentities, input, options)
end

function C:describeSlackWorkspaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSlackWorkspaces, input, options)
end

function C:disassociateFromConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateFromConfiguration, input, options)
end

function C:getAccountPreferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountPreferences, input, options)
end

function C:getCustomAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCustomAction, input, options)
end

function C:getMicrosoftTeamsChannelConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMicrosoftTeamsChannelConfiguration, input, options)
end

function C:listAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssociations, input, options)
end

function C:listCustomActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomActions, input, options)
end

function C:listMicrosoftTeamsChannelConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMicrosoftTeamsChannelConfigurations, input, options)
end

function C:listMicrosoftTeamsConfiguredTeams(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMicrosoftTeamsConfiguredTeams, input, options)
end

function C:listMicrosoftTeamsUserIdentities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMicrosoftTeamsUserIdentities, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccountPreferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccountPreferences, input, options)
end

function C:updateChimeWebhookConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateChimeWebhookConfiguration, input, options)
end

function C:updateCustomAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCustomAction, input, options)
end

function C:updateMicrosoftTeamsChannelConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMicrosoftTeamsChannelConfiguration, input, options)
end

function C:updateSlackChannelConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSlackChannelConfiguration, input, options)
end

return M
