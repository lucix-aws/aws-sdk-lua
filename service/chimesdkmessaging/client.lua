



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("chimesdkmessaging.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("chimesdkmessaging.schemas")
local traits = require("smithy.traits")
local types = require("chimesdkmessaging.types")
local sdk_defaults = require("aws.sdk_defaults")

























































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ChimeMessagingService"
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

function C:associateChannelFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateChannelFlow, input, options)
end

function C:batchCreateChannelMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreateChannelMembership, input, options)
end

function C:channelFlowCallback(input, options)
   return self:invokeOperation(schemas.Service, schemas.ChannelFlowCallback, input, options)
end

function C:createChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChannel, input, options)
end

function C:createChannelBan(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChannelBan, input, options)
end

function C:createChannelFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChannelFlow, input, options)
end

function C:createChannelMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChannelMembership, input, options)
end

function C:createChannelModerator(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChannelModerator, input, options)
end

function C:deleteChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChannel, input, options)
end

function C:deleteChannelBan(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChannelBan, input, options)
end

function C:deleteChannelFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChannelFlow, input, options)
end

function C:deleteChannelMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChannelMembership, input, options)
end

function C:deleteChannelMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChannelMessage, input, options)
end

function C:deleteChannelModerator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChannelModerator, input, options)
end

function C:deleteMessagingStreamingConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMessagingStreamingConfigurations, input, options)
end

function C:describeChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeChannel, input, options)
end

function C:describeChannelBan(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeChannelBan, input, options)
end

function C:describeChannelFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeChannelFlow, input, options)
end

function C:describeChannelMembership(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeChannelMembership, input, options)
end

function C:describeChannelMembershipForAppInstanceUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeChannelMembershipForAppInstanceUser, input, options)
end

function C:describeChannelModeratedByAppInstanceUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeChannelModeratedByAppInstanceUser, input, options)
end

function C:describeChannelModerator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeChannelModerator, input, options)
end

function C:disassociateChannelFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateChannelFlow, input, options)
end

function C:getChannelMembershipPreferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChannelMembershipPreferences, input, options)
end

function C:getChannelMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChannelMessage, input, options)
end

function C:getChannelMessageStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChannelMessageStatus, input, options)
end

function C:getMessagingSessionEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMessagingSessionEndpoint, input, options)
end

function C:getMessagingStreamingConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMessagingStreamingConfigurations, input, options)
end

function C:listChannelBans(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannelBans, input, options)
end

function C:listChannelFlows(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannelFlows, input, options)
end

function C:listChannelMemberships(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannelMemberships, input, options)
end

function C:listChannelMembershipsForAppInstanceUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannelMembershipsForAppInstanceUser, input, options)
end

function C:listChannelMessages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannelMessages, input, options)
end

function C:listChannelModerators(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannelModerators, input, options)
end

function C:listChannels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannels, input, options)
end

function C:listChannelsAssociatedWithChannelFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannelsAssociatedWithChannelFlow, input, options)
end

function C:listChannelsModeratedByAppInstanceUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannelsModeratedByAppInstanceUser, input, options)
end

function C:listSubChannels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSubChannels, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putChannelExpirationSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutChannelExpirationSettings, input, options)
end

function C:putChannelMembershipPreferences(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutChannelMembershipPreferences, input, options)
end

function C:putMessagingStreamingConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutMessagingStreamingConfigurations, input, options)
end

function C:redactChannelMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.RedactChannelMessage, input, options)
end

function C:searchChannels(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchChannels, input, options)
end

function C:sendChannelMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendChannelMessage, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateChannel, input, options)
end

function C:updateChannelFlow(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateChannelFlow, input, options)
end

function C:updateChannelMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateChannelMessage, input, options)
end

function C:updateChannelReadMarker(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateChannelReadMarker, input, options)
end

return M
