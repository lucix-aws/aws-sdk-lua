



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("mediatailor.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("mediatailor.schemas")
local traits = require("smithy.traits")
local types = require("mediatailor.types")
local sdk_defaults = require("aws.sdk_defaults")






















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "MediaTailor"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mediatailor", signing_region = c.region } }
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

function C:configureLogsForChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConfigureLogsForChannel, input, options)
end

function C:configureLogsForPlaybackConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConfigureLogsForPlaybackConfiguration, input, options)
end

function C:createChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChannel, input, options)
end

function C:createLiveSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLiveSource, input, options)
end

function C:createPrefetchSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePrefetchSchedule, input, options)
end

function C:createProgram(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProgram, input, options)
end

function C:createSourceLocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSourceLocation, input, options)
end

function C:createVodSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVodSource, input, options)
end

function C:deleteChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChannel, input, options)
end

function C:deleteChannelPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteChannelPolicy, input, options)
end

function C:deleteFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFunction, input, options)
end

function C:deleteLiveSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLiveSource, input, options)
end

function C:deletePlaybackConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePlaybackConfiguration, input, options)
end

function C:deletePrefetchSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePrefetchSchedule, input, options)
end

function C:deleteProgram(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProgram, input, options)
end

function C:deleteSourceLocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSourceLocation, input, options)
end

function C:deleteVodSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVodSource, input, options)
end

function C:describeChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeChannel, input, options)
end

function C:describeLiveSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLiveSource, input, options)
end

function C:describeProgram(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProgram, input, options)
end

function C:describeSourceLocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSourceLocation, input, options)
end

function C:describeVodSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVodSource, input, options)
end

function C:getChannelPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChannelPolicy, input, options)
end

function C:getChannelSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChannelSchedule, input, options)
end

function C:getFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFunction, input, options)
end

function C:getPlaybackConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPlaybackConfiguration, input, options)
end

function C:getPrefetchSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPrefetchSchedule, input, options)
end

function C:listAlerts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAlerts, input, options)
end

function C:listChannels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChannels, input, options)
end

function C:listFunctions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFunctions, input, options)
end

function C:listLiveSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLiveSources, input, options)
end

function C:listPlaybackConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPlaybackConfigurations, input, options)
end

function C:listPrefetchSchedules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPrefetchSchedules, input, options)
end

function C:listSourceLocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSourceLocations, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listVodSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVodSources, input, options)
end

function C:putChannelPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutChannelPolicy, input, options)
end

function C:putFunction(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutFunction, input, options)
end

function C:putPlaybackConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutPlaybackConfiguration, input, options)
end

function C:startChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartChannel, input, options)
end

function C:stopChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopChannel, input, options)
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

function C:updateLiveSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLiveSource, input, options)
end

function C:updateProgram(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProgram, input, options)
end

function C:updateSourceLocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSourceLocation, input, options)
end

function C:updateVodSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVodSource, input, options)
end

return M
