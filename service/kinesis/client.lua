



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("kinesis.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("kinesis.schemas")
local traits = require("smithy.traits")
local types = require("kinesis.types")
local sdk_defaults = require("aws.sdk_defaults")













































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Kinesis_20131202"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "kinesis", signing_region = c.region } }
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

function C:addTagsToStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTagsToStream, input, options)
end

function C:createStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStream, input, options)
end

function C:decreaseStreamRetentionPeriod(input, options)
   return self:invokeOperation(schemas.Service, schemas.DecreaseStreamRetentionPeriod, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStream, input, options)
end

function C:deregisterStreamConsumer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterStreamConsumer, input, options)
end

function C:describeAccountSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountSettings, input, options)
end

function C:describeLimits(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLimits, input, options)
end

function C:describeStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStream, input, options)
end

function C:describeStreamConsumer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStreamConsumer, input, options)
end

function C:describeStreamSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStreamSummary, input, options)
end

function C:disableEnhancedMonitoring(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableEnhancedMonitoring, input, options)
end

function C:enableEnhancedMonitoring(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableEnhancedMonitoring, input, options)
end

function C:getRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecords, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:getShardIterator(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetShardIterator, input, options)
end

function C:increaseStreamRetentionPeriod(input, options)
   return self:invokeOperation(schemas.Service, schemas.IncreaseStreamRetentionPeriod, input, options)
end

function C:listShards(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListShards, input, options)
end

function C:listStreamConsumers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStreamConsumers, input, options)
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

function C:mergeShards(input, options)
   return self:invokeOperation(schemas.Service, schemas.MergeShards, input, options)
end

function C:putRecord(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRecord, input, options)
end

function C:putRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRecords, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:registerStreamConsumer(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterStreamConsumer, input, options)
end

function C:removeTagsFromStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTagsFromStream, input, options)
end

function C:splitShard(input, options)
   return self:invokeOperation(schemas.Service, schemas.SplitShard, input, options)
end

function C:startStreamEncryption(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartStreamEncryption, input, options)
end

function C:stopStreamEncryption(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopStreamEncryption, input, options)
end

function C:subscribeToShard(input, options)
   return self:invokeOperation(schemas.Service, schemas.SubscribeToShard, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccountSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccountSettings, input, options)
end

function C:updateMaxRecordSize(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMaxRecordSize, input, options)
end

function C:updateShardCount(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateShardCount, input, options)
end

function C:updateStreamMode(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStreamMode, input, options)
end

function C:updateStreamWarmThroughput(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStreamWarmThroughput, input, options)
end

return M
