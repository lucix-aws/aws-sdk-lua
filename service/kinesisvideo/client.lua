



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("kinesisvideo.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("kinesisvideo.schemas")
local traits = require("smithy.traits")
local types = require("kinesisvideo.types")
local sdk_defaults = require("aws.sdk_defaults")






































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "KinesisVideo_20170930"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "kinesisvideo", signing_region = c.region } }
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

function C:createSignalingChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSignalingChannel, input, options)
end

function C:createStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStream, input, options)
end

function C:deleteEdgeConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEdgeConfiguration, input, options)
end

function C:deleteSignalingChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSignalingChannel, input, options)
end

function C:deleteStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStream, input, options)
end

function C:describeEdgeConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEdgeConfiguration, input, options)
end

function C:describeImageGenerationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImageGenerationConfiguration, input, options)
end

function C:describeMappedResourceConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMappedResourceConfiguration, input, options)
end

function C:describeMediaStorageConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMediaStorageConfiguration, input, options)
end

function C:describeNotificationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNotificationConfiguration, input, options)
end

function C:describeSignalingChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSignalingChannel, input, options)
end

function C:describeStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStream, input, options)
end

function C:describeStreamStorageConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStreamStorageConfiguration, input, options)
end

function C:getDataEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataEndpoint, input, options)
end

function C:getSignalingChannelEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSignalingChannelEndpoint, input, options)
end

function C:listEdgeAgentConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEdgeAgentConfigurations, input, options)
end

function C:listSignalingChannels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSignalingChannels, input, options)
end

function C:listStreams(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStreams, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTagsForStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForStream, input, options)
end

function C:startEdgeConfigurationUpdate(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartEdgeConfigurationUpdate, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:tagStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagStream, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:untagStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagStream, input, options)
end

function C:updateDataRetention(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataRetention, input, options)
end

function C:updateImageGenerationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateImageGenerationConfiguration, input, options)
end

function C:updateMediaStorageConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMediaStorageConfiguration, input, options)
end

function C:updateNotificationConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNotificationConfiguration, input, options)
end

function C:updateSignalingChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSignalingChannel, input, options)
end

function C:updateStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStream, input, options)
end

function C:updateStreamStorageConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStreamStorageConfiguration, input, options)
end

return M
