local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("kinesisvideo.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("kinesisvideo.schemas")
local sdk_defaults = require("aws.sdk_defaults")

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
        input_schema = schemas.CreateSignalingChannelInput,
        output_schema = schemas.CreateSignalingChannelOutput,
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
        input_schema = schemas.CreateStreamInput,
        output_schema = schemas.CreateStreamOutput,
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
        input_schema = schemas.DeleteEdgeConfigurationInput,
        output_schema = schemas.DeleteEdgeConfigurationOutput,
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
        input_schema = schemas.DeleteSignalingChannelInput,
        output_schema = schemas.DeleteSignalingChannelOutput,
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
        input_schema = schemas.DeleteStreamInput,
        output_schema = schemas.DeleteStreamOutput,
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
        input_schema = schemas.DescribeEdgeConfigurationInput,
        output_schema = schemas.DescribeEdgeConfigurationOutput,
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
        input_schema = schemas.DescribeImageGenerationConfigurationInput,
        output_schema = schemas.DescribeImageGenerationConfigurationOutput,
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
        input_schema = schemas.DescribeMappedResourceConfigurationInput,
        output_schema = schemas.DescribeMappedResourceConfigurationOutput,
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
        input_schema = schemas.DescribeMediaStorageConfigurationInput,
        output_schema = schemas.DescribeMediaStorageConfigurationOutput,
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
        input_schema = schemas.DescribeNotificationConfigurationInput,
        output_schema = schemas.DescribeNotificationConfigurationOutput,
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
        input_schema = schemas.DescribeSignalingChannelInput,
        output_schema = schemas.DescribeSignalingChannelOutput,
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
        input_schema = schemas.DescribeStreamInput,
        output_schema = schemas.DescribeStreamOutput,
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
        input_schema = schemas.DescribeStreamStorageConfigurationInput,
        output_schema = schemas.DescribeStreamStorageConfigurationOutput,
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
        input_schema = schemas.GetDataEndpointInput,
        output_schema = schemas.GetDataEndpointOutput,
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
        input_schema = schemas.GetSignalingChannelEndpointInput,
        output_schema = schemas.GetSignalingChannelEndpointOutput,
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
        input_schema = schemas.ListEdgeAgentConfigurationsInput,
        output_schema = schemas.ListEdgeAgentConfigurationsOutput,
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
        input_schema = schemas.ListSignalingChannelsInput,
        output_schema = schemas.ListSignalingChannelsOutput,
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
        input_schema = schemas.ListStreamsInput,
        output_schema = schemas.ListStreamsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.ListTagsForStreamInput,
        output_schema = schemas.ListTagsForStreamOutput,
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
        input_schema = schemas.StartEdgeConfigurationUpdateInput,
        output_schema = schemas.StartEdgeConfigurationUpdateOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.TagStreamInput,
        output_schema = schemas.TagStreamOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UntagStreamInput,
        output_schema = schemas.UntagStreamOutput,
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
        input_schema = schemas.UpdateDataRetentionInput,
        output_schema = schemas.UpdateDataRetentionOutput,
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
        input_schema = schemas.UpdateImageGenerationConfigurationInput,
        output_schema = schemas.UpdateImageGenerationConfigurationOutput,
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
        input_schema = schemas.UpdateMediaStorageConfigurationInput,
        output_schema = schemas.UpdateMediaStorageConfigurationOutput,
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
        input_schema = schemas.UpdateNotificationConfigurationInput,
        output_schema = schemas.UpdateNotificationConfigurationOutput,
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
        input_schema = schemas.UpdateSignalingChannelInput,
        output_schema = schemas.UpdateSignalingChannelOutput,
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
        input_schema = schemas.UpdateStreamInput,
        output_schema = schemas.UpdateStreamOutput,
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
        input_schema = schemas.UpdateStreamStorageConfigurationInput,
        output_schema = schemas.UpdateStreamStorageConfigurationOutput,
        http_method = "POST",
        http_path = "/updateStreamStorageConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
