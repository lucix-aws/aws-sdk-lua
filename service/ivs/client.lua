



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("ivs.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("ivs.schemas")
local traits = require("smithy.traits")
local types = require("ivs.types")
local sdk_defaults = require("aws.sdk_defaults")














































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonInteractiveVideoService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ivs", signing_region = c.region } }
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

function C:batchGetChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetChannel, input, options)
end

function C:batchGetStreamKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetStreamKey, input, options)
end

function C:batchStartViewerSessionRevocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchStartViewerSessionRevocation, input, options)
end

function C:createAdConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAdConfiguration, input, options)
end

function C:createChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChannel, input, options)
end

function C:createPlaybackRestrictionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePlaybackRestrictionPolicy, input, options)
end

function C:createRecordingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRecordingConfiguration, input, options)
end

function C:createStreamKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStreamKey, input, options)
end

function C:deleteAdConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAdConfiguration, input, options)
end

function C:deleteChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChannel, input, options)
end

function C:deletePlaybackKeyPair(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePlaybackKeyPair, input, options)
end

function C:deletePlaybackRestrictionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePlaybackRestrictionPolicy, input, options)
end

function C:deleteRecordingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRecordingConfiguration, input, options)
end

function C:deleteStreamKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStreamKey, input, options)
end

function C:getAdConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAdConfiguration, input, options)
end

function C:getChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChannel, input, options)
end

function C:getPlaybackKeyPair(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPlaybackKeyPair, input, options)
end

function C:getPlaybackRestrictionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPlaybackRestrictionPolicy, input, options)
end

function C:getRecordingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecordingConfiguration, input, options)
end

function C:getStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStream, input, options)
end

function C:getStreamKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStreamKey, input, options)
end

function C:getStreamSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStreamSession, input, options)
end

function C:importPlaybackKeyPair(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportPlaybackKeyPair, input, options)
end

function C:insertAdBreak(input, options)
   return self:invokeOperation(schemas.Service, schemas.InsertAdBreak, input, options)
end

function C:listAdConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAdConfigurations, input, options)
end

function C:listChannels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannels, input, options)
end

function C:listPlaybackKeyPairs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPlaybackKeyPairs, input, options)
end

function C:listPlaybackRestrictionPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPlaybackRestrictionPolicies, input, options)
end

function C:listRecordingConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecordingConfigurations, input, options)
end

function C:listStreamKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStreamKeys, input, options)
end

function C:listStreams(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStreams, input, options)
end

function C:listStreamSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStreamSessions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutMetadata, input, options)
end

function C:startViewerSessionRevocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartViewerSessionRevocation, input, options)
end

function C:stopStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopStream, input, options)
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

function C:updatePlaybackRestrictionPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePlaybackRestrictionPolicy, input, options)
end

return M
