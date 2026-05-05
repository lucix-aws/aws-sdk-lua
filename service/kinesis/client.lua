local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("kinesis.endpoint_rules")
local schemas = require("kinesis.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Kinesis_20131202"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "kinesis", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:addTagsToStream(input, options)
    return self:invokeOperation(input, {
        name = "AddTagsToStream",
        input_schema = schemas.AddTagsToStreamInput,
        output_schema = schemas.AddTagsToStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:createStream(input, options)
    return self:invokeOperation(input, {
        name = "CreateStream",
        input_schema = schemas.CreateStreamInput,
        output_schema = schemas.CreateStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:decreaseStreamRetentionPeriod(input, options)
    return self:invokeOperation(input, {
        name = "DecreaseStreamRetentionPeriod",
        input_schema = schemas.DecreaseStreamRetentionPeriodInput,
        output_schema = schemas.DecreaseStreamRetentionPeriodOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = schemas.DeleteResourcePolicyInput,
        output_schema = schemas.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceARN = "ResourceARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:deleteStream(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStream",
        input_schema = schemas.DeleteStreamInput,
        output_schema = schemas.DeleteStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:deregisterStreamConsumer(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterStreamConsumer",
        input_schema = schemas.DeregisterStreamConsumerInput,
        output_schema = schemas.DeregisterStreamConsumerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
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
        input_schema = schemas.DescribeAccountSettingsInput,
        output_schema = schemas.DescribeAccountSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLimits",
        input_schema = schemas.DescribeLimitsInput,
        output_schema = schemas.DescribeLimitsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStream(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStream",
        input_schema = schemas.DescribeStreamInput,
        output_schema = schemas.DescribeStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:describeStreamConsumer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStreamConsumer",
        input_schema = schemas.DescribeStreamConsumerInput,
        output_schema = schemas.DescribeStreamConsumerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
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
        input_schema = schemas.DescribeStreamSummaryInput,
        output_schema = schemas.DescribeStreamSummaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:disableEnhancedMonitoring(input, options)
    return self:invokeOperation(input, {
        name = "DisableEnhancedMonitoring",
        input_schema = schemas.DisableEnhancedMonitoringInput,
        output_schema = schemas.DisableEnhancedMonitoringOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:enableEnhancedMonitoring(input, options)
    return self:invokeOperation(input, {
        name = "EnableEnhancedMonitoring",
        input_schema = schemas.EnableEnhancedMonitoringInput,
        output_schema = schemas.EnableEnhancedMonitoringOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:getRecords(input, options)
    return self:invokeOperation(input, {
        name = "GetRecords",
        input_schema = schemas.GetRecordsInput,
        output_schema = schemas.GetRecordsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = schemas.GetResourcePolicyInput,
        output_schema = schemas.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceARN = "ResourceARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:getShardIterator(input, options)
    return self:invokeOperation(input, {
        name = "GetShardIterator",
        input_schema = schemas.GetShardIteratorInput,
        output_schema = schemas.GetShardIteratorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:increaseStreamRetentionPeriod(input, options)
    return self:invokeOperation(input, {
        name = "IncreaseStreamRetentionPeriod",
        input_schema = schemas.IncreaseStreamRetentionPeriodInput,
        output_schema = schemas.IncreaseStreamRetentionPeriodOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:listShards(input, options)
    return self:invokeOperation(input, {
        name = "ListShards",
        input_schema = schemas.ListShardsInput,
        output_schema = schemas.ListShardsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:listStreamConsumers(input, options)
    return self:invokeOperation(input, {
        name = "ListStreamConsumers",
        input_schema = schemas.ListStreamConsumersInput,
        output_schema = schemas.ListStreamConsumersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:listStreams(input, options)
    return self:invokeOperation(input, {
        name = "ListStreams",
        input_schema = schemas.ListStreamsInput,
        output_schema = schemas.ListStreamsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceARN = "ResourceARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:listTagsForStream(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForStream",
        input_schema = schemas.ListTagsForStreamInput,
        output_schema = schemas.ListTagsForStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:mergeShards(input, options)
    return self:invokeOperation(input, {
        name = "MergeShards",
        input_schema = schemas.MergeShardsInput,
        output_schema = schemas.MergeShardsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:putRecord(input, options)
    return self:invokeOperation(input, {
        name = "PutRecord",
        input_schema = schemas.PutRecordInput,
        output_schema = schemas.PutRecordOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:putRecords(input, options)
    return self:invokeOperation(input, {
        name = "PutRecords",
        input_schema = schemas.PutRecordsInput,
        output_schema = schemas.PutRecordsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = schemas.PutResourcePolicyInput,
        output_schema = schemas.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceARN = "ResourceARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:registerStreamConsumer(input, options)
    return self:invokeOperation(input, {
        name = "RegisterStreamConsumer",
        input_schema = schemas.RegisterStreamConsumerInput,
        output_schema = schemas.RegisterStreamConsumerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:removeTagsFromStream(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTagsFromStream",
        input_schema = schemas.RemoveTagsFromStreamInput,
        output_schema = schemas.RemoveTagsFromStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:splitShard(input, options)
    return self:invokeOperation(input, {
        name = "SplitShard",
        input_schema = schemas.SplitShardInput,
        output_schema = schemas.SplitShardOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:startStreamEncryption(input, options)
    return self:invokeOperation(input, {
        name = "StartStreamEncryption",
        input_schema = schemas.StartStreamEncryptionInput,
        output_schema = schemas.StartStreamEncryptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:stopStreamEncryption(input, options)
    return self:invokeOperation(input, {
        name = "StopStreamEncryption",
        input_schema = schemas.StopStreamEncryptionInput,
        output_schema = schemas.StopStreamEncryptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:subscribeToShard(input, options)
    return self:invokeOperation(input, {
        name = "SubscribeToShard",
        input_schema = schemas.SubscribeToShardInput,
        output_schema = schemas.SubscribeToShardOutput,
        http_method = "POST",
        http_path = "/",
        event_stream = schemas.SubscribeToShardEventStream,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ConsumerARN = "ConsumerARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceARN = "ResourceARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceARN = "ResourceARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:updateAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountSettings",
        input_schema = schemas.UpdateAccountSettingsInput,
        output_schema = schemas.UpdateAccountSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMaxRecordSize(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMaxRecordSize",
        input_schema = schemas.UpdateMaxRecordSizeInput,
        output_schema = schemas.UpdateMaxRecordSizeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:updateShardCount(input, options)
    return self:invokeOperation(input, {
        name = "UpdateShardCount",
        input_schema = schemas.UpdateShardCountInput,
        output_schema = schemas.UpdateShardCountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:updateStreamMode(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStreamMode",
        input_schema = schemas.UpdateStreamModeInput,
        output_schema = schemas.UpdateStreamModeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

function Client:updateStreamWarmThroughput(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStreamWarmThroughput",
        input_schema = schemas.UpdateStreamWarmThroughputInput,
        output_schema = schemas.UpdateStreamWarmThroughputOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            StreamARN = "StreamARN",
            StreamId = "StreamId",
        },
    }, options)
end

return M
