



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("chimesdkmediapipelines.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("chimesdkmediapipelines.schemas")
local traits = require("smithy.traits")
local types = require("chimesdkmediapipelines.types")
local sdk_defaults = require("aws.sdk_defaults")





































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ChimeSDKMediaPipelinesService"
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

function C:createMediaCapturePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMediaCapturePipeline, input, options)
end

function C:createMediaConcatenationPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMediaConcatenationPipeline, input, options)
end

function C:createMediaInsightsPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMediaInsightsPipeline, input, options)
end

function C:createMediaInsightsPipelineConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMediaInsightsPipelineConfiguration, input, options)
end

function C:createMediaLiveConnectorPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMediaLiveConnectorPipeline, input, options)
end

function C:createMediaPipelineKinesisVideoStreamPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMediaPipelineKinesisVideoStreamPool, input, options)
end

function C:createMediaStreamPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMediaStreamPipeline, input, options)
end

function C:deleteMediaCapturePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMediaCapturePipeline, input, options)
end

function C:deleteMediaInsightsPipelineConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMediaInsightsPipelineConfiguration, input, options)
end

function C:deleteMediaPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMediaPipeline, input, options)
end

function C:deleteMediaPipelineKinesisVideoStreamPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMediaPipelineKinesisVideoStreamPool, input, options)
end

function C:getMediaCapturePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMediaCapturePipeline, input, options)
end

function C:getMediaInsightsPipelineConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMediaInsightsPipelineConfiguration, input, options)
end

function C:getMediaPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMediaPipeline, input, options)
end

function C:getMediaPipelineKinesisVideoStreamPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMediaPipelineKinesisVideoStreamPool, input, options)
end

function C:getSpeakerSearchTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSpeakerSearchTask, input, options)
end

function C:getVoiceToneAnalysisTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVoiceToneAnalysisTask, input, options)
end

function C:listMediaCapturePipelines(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMediaCapturePipelines, input, options)
end

function C:listMediaInsightsPipelineConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMediaInsightsPipelineConfigurations, input, options)
end

function C:listMediaPipelineKinesisVideoStreamPools(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMediaPipelineKinesisVideoStreamPools, input, options)
end

function C:listMediaPipelines(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMediaPipelines, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:startSpeakerSearchTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSpeakerSearchTask, input, options)
end

function C:startVoiceToneAnalysisTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartVoiceToneAnalysisTask, input, options)
end

function C:stopSpeakerSearchTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopSpeakerSearchTask, input, options)
end

function C:stopVoiceToneAnalysisTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopVoiceToneAnalysisTask, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateMediaInsightsPipelineConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMediaInsightsPipelineConfiguration, input, options)
end

function C:updateMediaInsightsPipelineStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMediaInsightsPipelineStatus, input, options)
end

function C:updateMediaPipelineKinesisVideoStreamPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMediaPipelineKinesisVideoStreamPool, input, options)
end

return M
