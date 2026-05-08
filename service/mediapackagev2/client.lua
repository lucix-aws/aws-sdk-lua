



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("mediapackagev2.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("mediapackagev2.schemas")
local traits = require("smithy.traits")
local types = require("mediapackagev2.types")
local sdk_defaults = require("aws.sdk_defaults")




































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "mediapackagev2"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mediapackagev2", signing_region = c.region } }
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

function C:cancelHarvestJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelHarvestJob, input, options)
end

function C:createChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChannel, input, options)
end

function C:createChannelGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChannelGroup, input, options)
end

function C:createHarvestJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHarvestJob, input, options)
end

function C:createOriginEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOriginEndpoint, input, options)
end

function C:deleteChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChannel, input, options)
end

function C:deleteChannelGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChannelGroup, input, options)
end

function C:deleteChannelPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChannelPolicy, input, options)
end

function C:deleteOriginEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOriginEndpoint, input, options)
end

function C:deleteOriginEndpointPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOriginEndpointPolicy, input, options)
end

function C:getChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChannel, input, options)
end

function C:getChannelGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChannelGroup, input, options)
end

function C:getChannelPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChannelPolicy, input, options)
end

function C:getHarvestJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHarvestJob, input, options)
end

function C:getOriginEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOriginEndpoint, input, options)
end

function C:getOriginEndpointPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOriginEndpointPolicy, input, options)
end

function C:listChannelGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannelGroups, input, options)
end

function C:listChannels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannels, input, options)
end

function C:listHarvestJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHarvestJobs, input, options)
end

function C:listOriginEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOriginEndpoints, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putChannelPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutChannelPolicy, input, options)
end

function C:putOriginEndpointPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutOriginEndpointPolicy, input, options)
end

function C:resetChannelState(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetChannelState, input, options)
end

function C:resetOriginEndpointState(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetOriginEndpointState, input, options)
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

function C:updateChannelGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateChannelGroup, input, options)
end

function C:updateOriginEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOriginEndpoint, input, options)
end

return M
