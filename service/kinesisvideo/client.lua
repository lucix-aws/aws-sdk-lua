local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("kinesisvideo.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("kinesisvideo.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "KinesisVideo_20170930"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "kinesisvideo", signing_region = cfg.region } }
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

function Client:createSignalingChannel(input, options)
    return self:invokeOperation(input, {
        name = "CreateSignalingChannel",
        input_schema = types.CreateSignalingChannelInput,
        output_schema = types.CreateSignalingChannelOutput,
        http_method = "POST",
        http_path = "/createSignalingChannel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStream(input, options)
    return self:invokeOperation(input, {
        name = "CreateStream",
        input_schema = types.CreateStreamInput,
        output_schema = types.CreateStreamOutput,
        http_method = "POST",
        http_path = "/createStream",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEdgeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEdgeConfiguration",
        input_schema = types.DeleteEdgeConfigurationInput,
        output_schema = types.DeleteEdgeConfigurationOutput,
        http_method = "POST",
        http_path = "/deleteEdgeConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSignalingChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSignalingChannel",
        input_schema = types.DeleteSignalingChannelInput,
        output_schema = types.DeleteSignalingChannelOutput,
        http_method = "POST",
        http_path = "/deleteSignalingChannel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStream(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStream",
        input_schema = types.DeleteStreamInput,
        output_schema = types.DeleteStreamOutput,
        http_method = "POST",
        http_path = "/deleteStream",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEdgeConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEdgeConfiguration",
        input_schema = types.DescribeEdgeConfigurationInput,
        output_schema = types.DescribeEdgeConfigurationOutput,
        http_method = "POST",
        http_path = "/describeEdgeConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImageGenerationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImageGenerationConfiguration",
        input_schema = types.DescribeImageGenerationConfigurationInput,
        output_schema = types.DescribeImageGenerationConfigurationOutput,
        http_method = "POST",
        http_path = "/describeImageGenerationConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMappedResourceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMappedResourceConfiguration",
        input_schema = types.DescribeMappedResourceConfigurationInput,
        output_schema = types.DescribeMappedResourceConfigurationOutput,
        http_method = "POST",
        http_path = "/describeMappedResourceConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMediaStorageConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMediaStorageConfiguration",
        input_schema = types.DescribeMediaStorageConfigurationInput,
        output_schema = types.DescribeMediaStorageConfigurationOutput,
        http_method = "POST",
        http_path = "/describeMediaStorageConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNotificationConfiguration",
        input_schema = types.DescribeNotificationConfigurationInput,
        output_schema = types.DescribeNotificationConfigurationOutput,
        http_method = "POST",
        http_path = "/describeNotificationConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSignalingChannel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSignalingChannel",
        input_schema = types.DescribeSignalingChannelInput,
        output_schema = types.DescribeSignalingChannelOutput,
        http_method = "POST",
        http_path = "/describeSignalingChannel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStream(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStream",
        input_schema = types.DescribeStreamInput,
        output_schema = types.DescribeStreamOutput,
        http_method = "POST",
        http_path = "/describeStream",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStreamStorageConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStreamStorageConfiguration",
        input_schema = types.DescribeStreamStorageConfigurationInput,
        output_schema = types.DescribeStreamStorageConfigurationOutput,
        http_method = "POST",
        http_path = "/describeStreamStorageConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetDataEndpoint",
        input_schema = types.GetDataEndpointInput,
        output_schema = types.GetDataEndpointOutput,
        http_method = "POST",
        http_path = "/getDataEndpoint",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSignalingChannelEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetSignalingChannelEndpoint",
        input_schema = types.GetSignalingChannelEndpointInput,
        output_schema = types.GetSignalingChannelEndpointOutput,
        http_method = "POST",
        http_path = "/getSignalingChannelEndpoint",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEdgeAgentConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListEdgeAgentConfigurations",
        input_schema = types.ListEdgeAgentConfigurationsInput,
        output_schema = types.ListEdgeAgentConfigurationsOutput,
        http_method = "POST",
        http_path = "/listEdgeAgentConfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSignalingChannels(input, options)
    return self:invokeOperation(input, {
        name = "ListSignalingChannels",
        input_schema = types.ListSignalingChannelsInput,
        output_schema = types.ListSignalingChannelsOutput,
        http_method = "POST",
        http_path = "/listSignalingChannels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStreams(input, options)
    return self:invokeOperation(input, {
        name = "ListStreams",
        input_schema = types.ListStreamsInput,
        output_schema = types.ListStreamsOutput,
        http_method = "POST",
        http_path = "/listStreams",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/ListTagsForResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForStream(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForStream",
        input_schema = types.ListTagsForStreamInput,
        output_schema = types.ListTagsForStreamOutput,
        http_method = "POST",
        http_path = "/listTagsForStream",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startEdgeConfigurationUpdate(input, options)
    return self:invokeOperation(input, {
        name = "StartEdgeConfigurationUpdate",
        input_schema = types.StartEdgeConfigurationUpdateInput,
        output_schema = types.StartEdgeConfigurationUpdateOutput,
        http_method = "POST",
        http_path = "/startEdgeConfigurationUpdate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/TagResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagStream(input, options)
    return self:invokeOperation(input, {
        name = "TagStream",
        input_schema = types.TagStreamInput,
        output_schema = types.TagStreamOutput,
        http_method = "POST",
        http_path = "/tagStream",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/UntagResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagStream(input, options)
    return self:invokeOperation(input, {
        name = "UntagStream",
        input_schema = types.UntagStreamInput,
        output_schema = types.UntagStreamOutput,
        http_method = "POST",
        http_path = "/untagStream",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataRetention(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataRetention",
        input_schema = types.UpdateDataRetentionInput,
        output_schema = types.UpdateDataRetentionOutput,
        http_method = "POST",
        http_path = "/updateDataRetention",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateImageGenerationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateImageGenerationConfiguration",
        input_schema = types.UpdateImageGenerationConfigurationInput,
        output_schema = types.UpdateImageGenerationConfigurationOutput,
        http_method = "POST",
        http_path = "/updateImageGenerationConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMediaStorageConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMediaStorageConfiguration",
        input_schema = types.UpdateMediaStorageConfigurationInput,
        output_schema = types.UpdateMediaStorageConfigurationOutput,
        http_method = "POST",
        http_path = "/updateMediaStorageConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNotificationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNotificationConfiguration",
        input_schema = types.UpdateNotificationConfigurationInput,
        output_schema = types.UpdateNotificationConfigurationOutput,
        http_method = "POST",
        http_path = "/updateNotificationConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSignalingChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSignalingChannel",
        input_schema = types.UpdateSignalingChannelInput,
        output_schema = types.UpdateSignalingChannelOutput,
        http_method = "POST",
        http_path = "/updateSignalingChannel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStream(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStream",
        input_schema = types.UpdateStreamInput,
        output_schema = types.UpdateStreamOutput,
        http_method = "POST",
        http_path = "/updateStream",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStreamStorageConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStreamStorageConfiguration",
        input_schema = types.UpdateStreamStorageConfigurationInput,
        output_schema = types.UpdateStreamStorageConfigurationOutput,
        http_method = "POST",
        http_path = "/updateStreamStorageConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
