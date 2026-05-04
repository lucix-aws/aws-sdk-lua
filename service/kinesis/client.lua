local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("kinesis.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("kinesis.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Kinesis_20131202"
    cfg.signing_name = "kinesis"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:addTagsToStream(input, options)
    return self:invokeOperation(input, {
        name = "AddTagsToStream",
        input_schema = types.AddTagsToStreamInput,
        output_schema = types.AddTagsToStreamOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:createStream(input, options)
    return self:invokeOperation(input, {
        name = "CreateStream",
        input_schema = types.CreateStreamInput,
        output_schema = types.CreateStreamOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:decreaseStreamRetentionPeriod(input, options)
    return self:invokeOperation(input, {
        name = "DecreaseStreamRetentionPeriod",
        input_schema = types.DecreaseStreamRetentionPeriodInput,
        output_schema = types.DecreaseStreamRetentionPeriodOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            ResourceARN = "ResourceARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:deleteStream(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStream",
        input_schema = types.DeleteStreamInput,
        output_schema = types.DeleteStreamOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:deregisterStreamConsumer(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterStreamConsumer",
        input_schema = types.DeregisterStreamConsumerInput,
        output_schema = types.DeregisterStreamConsumerOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            ConsumerARN = "ConsumerARN",
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:describeAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountSettings",
        input_schema = types.DescribeAccountSettingsInput,
        output_schema = types.DescribeAccountSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLimits",
        input_schema = types.DescribeLimitsInput,
        output_schema = types.DescribeLimitsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeStream(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStream",
        input_schema = types.DescribeStreamInput,
        output_schema = types.DescribeStreamOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:describeStreamConsumer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStreamConsumer",
        input_schema = types.DescribeStreamConsumerInput,
        output_schema = types.DescribeStreamConsumerOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            ConsumerARN = "ConsumerARN",
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:describeStreamSummary(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStreamSummary",
        input_schema = types.DescribeStreamSummaryInput,
        output_schema = types.DescribeStreamSummaryOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:disableEnhancedMonitoring(input, options)
    return self:invokeOperation(input, {
        name = "DisableEnhancedMonitoring",
        input_schema = types.DisableEnhancedMonitoringInput,
        output_schema = types.DisableEnhancedMonitoringOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:enableEnhancedMonitoring(input, options)
    return self:invokeOperation(input, {
        name = "EnableEnhancedMonitoring",
        input_schema = types.EnableEnhancedMonitoringInput,
        output_schema = types.EnableEnhancedMonitoringOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:getRecords(input, options)
    return self:invokeOperation(input, {
        name = "GetRecords",
        input_schema = types.GetRecordsInput,
        output_schema = types.GetRecordsOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            ResourceARN = "ResourceARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:getShardIterator(input, options)
    return self:invokeOperation(input, {
        name = "GetShardIterator",
        input_schema = types.GetShardIteratorInput,
        output_schema = types.GetShardIteratorOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:increaseStreamRetentionPeriod(input, options)
    return self:invokeOperation(input, {
        name = "IncreaseStreamRetentionPeriod",
        input_schema = types.IncreaseStreamRetentionPeriodInput,
        output_schema = types.IncreaseStreamRetentionPeriodOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:listShards(input, options)
    return self:invokeOperation(input, {
        name = "ListShards",
        input_schema = types.ListShardsInput,
        output_schema = types.ListShardsOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:listStreamConsumers(input, options)
    return self:invokeOperation(input, {
        name = "ListStreamConsumers",
        input_schema = types.ListStreamConsumersInput,
        output_schema = types.ListStreamConsumersOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:listStreams(input, options)
    return self:invokeOperation(input, {
        name = "ListStreams",
        input_schema = types.ListStreamsInput,
        output_schema = types.ListStreamsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            ResourceARN = "ResourceARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:listTagsForStream(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForStream",
        input_schema = types.ListTagsForStreamInput,
        output_schema = types.ListTagsForStreamOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:mergeShards(input, options)
    return self:invokeOperation(input, {
        name = "MergeShards",
        input_schema = types.MergeShardsInput,
        output_schema = types.MergeShardsOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:putRecord(input, options)
    return self:invokeOperation(input, {
        name = "PutRecord",
        input_schema = types.PutRecordInput,
        output_schema = types.PutRecordOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:putRecords(input, options)
    return self:invokeOperation(input, {
        name = "PutRecords",
        input_schema = types.PutRecordsInput,
        output_schema = types.PutRecordsOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            ResourceARN = "ResourceARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:registerStreamConsumer(input, options)
    return self:invokeOperation(input, {
        name = "RegisterStreamConsumer",
        input_schema = types.RegisterStreamConsumerInput,
        output_schema = types.RegisterStreamConsumerOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:removeTagsFromStream(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTagsFromStream",
        input_schema = types.RemoveTagsFromStreamInput,
        output_schema = types.RemoveTagsFromStreamOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:splitShard(input, options)
    return self:invokeOperation(input, {
        name = "SplitShard",
        input_schema = types.SplitShardInput,
        output_schema = types.SplitShardOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:startStreamEncryption(input, options)
    return self:invokeOperation(input, {
        name = "StartStreamEncryption",
        input_schema = types.StartStreamEncryptionInput,
        output_schema = types.StartStreamEncryptionOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:stopStreamEncryption(input, options)
    return self:invokeOperation(input, {
        name = "StopStreamEncryption",
        input_schema = types.StopStreamEncryptionInput,
        output_schema = types.StopStreamEncryptionOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:subscribeToShard(input, options)
    return self:invokeOperation(input, {
        name = "SubscribeToShard",
        input_schema = types.SubscribeToShardInput,
        output_schema = types.SubscribeToShardOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            ConsumerARN = "ConsumerARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            ResourceARN = "ResourceARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            ResourceARN = "ResourceARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:updateAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountSettings",
        input_schema = types.UpdateAccountSettingsInput,
        output_schema = types.UpdateAccountSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateMaxRecordSize(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMaxRecordSize",
        input_schema = types.UpdateMaxRecordSizeInput,
        output_schema = types.UpdateMaxRecordSizeOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:updateShardCount(input, options)
    return self:invokeOperation(input, {
        name = "UpdateShardCount",
        input_schema = types.UpdateShardCountInput,
        output_schema = types.UpdateShardCountOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:updateStreamMode(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStreamMode",
        input_schema = types.UpdateStreamModeInput,
        output_schema = types.UpdateStreamModeOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:updateStreamWarmThroughput(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStreamWarmThroughput",
        input_schema = types.UpdateStreamWarmThroughputInput,
        output_schema = types.UpdateStreamWarmThroughputOutput,
        http_method = "POST",
        http_path = "/",
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

return M
