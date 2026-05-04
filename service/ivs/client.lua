local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ivs.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("ivs.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonInteractiveVideoService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ivs", signing_region = cfg.region } }
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

function Client:batchGetChannel(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetChannel",
        input_schema = types.BatchGetChannelInput,
        output_schema = types.BatchGetChannelOutput,
        http_method = "POST",
        http_path = "/BatchGetChannel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetStreamKey(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetStreamKey",
        input_schema = types.BatchGetStreamKeyInput,
        output_schema = types.BatchGetStreamKeyOutput,
        http_method = "POST",
        http_path = "/BatchGetStreamKey",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchStartViewerSessionRevocation(input, options)
    return self:invokeOperation(input, {
        name = "BatchStartViewerSessionRevocation",
        input_schema = types.BatchStartViewerSessionRevocationInput,
        output_schema = types.BatchStartViewerSessionRevocationOutput,
        http_method = "POST",
        http_path = "/BatchStartViewerSessionRevocation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAdConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateAdConfiguration",
        input_schema = types.CreateAdConfigurationInput,
        output_schema = types.CreateAdConfigurationOutput,
        http_method = "POST",
        http_path = "/CreateAdConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createChannel(input, options)
    return self:invokeOperation(input, {
        name = "CreateChannel",
        input_schema = types.CreateChannelInput,
        output_schema = types.CreateChannelOutput,
        http_method = "POST",
        http_path = "/CreateChannel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPlaybackRestrictionPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreatePlaybackRestrictionPolicy",
        input_schema = types.CreatePlaybackRestrictionPolicyInput,
        output_schema = types.CreatePlaybackRestrictionPolicyOutput,
        http_method = "POST",
        http_path = "/CreatePlaybackRestrictionPolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRecordingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateRecordingConfiguration",
        input_schema = types.CreateRecordingConfigurationInput,
        output_schema = types.CreateRecordingConfigurationOutput,
        http_method = "POST",
        http_path = "/CreateRecordingConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStreamKey(input, options)
    return self:invokeOperation(input, {
        name = "CreateStreamKey",
        input_schema = types.CreateStreamKeyInput,
        output_schema = types.CreateStreamKeyOutput,
        http_method = "POST",
        http_path = "/CreateStreamKey",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAdConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAdConfiguration",
        input_schema = types.DeleteAdConfigurationInput,
        output_schema = types.DeleteAdConfigurationOutput,
        http_method = "POST",
        http_path = "/DeleteAdConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannel",
        input_schema = types.DeleteChannelInput,
        output_schema = types.DeleteChannelOutput,
        http_method = "POST",
        http_path = "/DeleteChannel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePlaybackKeyPair(input, options)
    return self:invokeOperation(input, {
        name = "DeletePlaybackKeyPair",
        input_schema = types.DeletePlaybackKeyPairInput,
        output_schema = types.DeletePlaybackKeyPairOutput,
        http_method = "POST",
        http_path = "/DeletePlaybackKeyPair",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePlaybackRestrictionPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeletePlaybackRestrictionPolicy",
        input_schema = types.DeletePlaybackRestrictionPolicyInput,
        output_schema = types.DeletePlaybackRestrictionPolicyOutput,
        http_method = "POST",
        http_path = "/DeletePlaybackRestrictionPolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRecordingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecordingConfiguration",
        input_schema = types.DeleteRecordingConfigurationInput,
        output_schema = types.DeleteRecordingConfigurationOutput,
        http_method = "POST",
        http_path = "/DeleteRecordingConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStreamKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStreamKey",
        input_schema = types.DeleteStreamKeyInput,
        output_schema = types.DeleteStreamKeyOutput,
        http_method = "POST",
        http_path = "/DeleteStreamKey",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAdConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetAdConfiguration",
        input_schema = types.GetAdConfigurationInput,
        output_schema = types.GetAdConfigurationOutput,
        http_method = "POST",
        http_path = "/GetAdConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetChannel",
        input_schema = types.GetChannelInput,
        output_schema = types.GetChannelOutput,
        http_method = "POST",
        http_path = "/GetChannel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPlaybackKeyPair(input, options)
    return self:invokeOperation(input, {
        name = "GetPlaybackKeyPair",
        input_schema = types.GetPlaybackKeyPairInput,
        output_schema = types.GetPlaybackKeyPairOutput,
        http_method = "POST",
        http_path = "/GetPlaybackKeyPair",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPlaybackRestrictionPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetPlaybackRestrictionPolicy",
        input_schema = types.GetPlaybackRestrictionPolicyInput,
        output_schema = types.GetPlaybackRestrictionPolicyOutput,
        http_method = "POST",
        http_path = "/GetPlaybackRestrictionPolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRecordingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetRecordingConfiguration",
        input_schema = types.GetRecordingConfigurationInput,
        output_schema = types.GetRecordingConfigurationOutput,
        http_method = "POST",
        http_path = "/GetRecordingConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStream(input, options)
    return self:invokeOperation(input, {
        name = "GetStream",
        input_schema = types.GetStreamInput,
        output_schema = types.GetStreamOutput,
        http_method = "POST",
        http_path = "/GetStream",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStreamKey(input, options)
    return self:invokeOperation(input, {
        name = "GetStreamKey",
        input_schema = types.GetStreamKeyInput,
        output_schema = types.GetStreamKeyOutput,
        http_method = "POST",
        http_path = "/GetStreamKey",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStreamSession(input, options)
    return self:invokeOperation(input, {
        name = "GetStreamSession",
        input_schema = types.GetStreamSessionInput,
        output_schema = types.GetStreamSessionOutput,
        http_method = "POST",
        http_path = "/GetStreamSession",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importPlaybackKeyPair(input, options)
    return self:invokeOperation(input, {
        name = "ImportPlaybackKeyPair",
        input_schema = types.ImportPlaybackKeyPairInput,
        output_schema = types.ImportPlaybackKeyPairOutput,
        http_method = "POST",
        http_path = "/ImportPlaybackKeyPair",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:insertAdBreak(input, options)
    return self:invokeOperation(input, {
        name = "InsertAdBreak",
        input_schema = types.InsertAdBreakInput,
        output_schema = types.InsertAdBreakOutput,
        http_method = "POST",
        http_path = "/InsertAdBreak",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAdConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListAdConfigurations",
        input_schema = types.ListAdConfigurationsInput,
        output_schema = types.ListAdConfigurationsOutput,
        http_method = "POST",
        http_path = "/ListAdConfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChannels(input, options)
    return self:invokeOperation(input, {
        name = "ListChannels",
        input_schema = types.ListChannelsInput,
        output_schema = types.ListChannelsOutput,
        http_method = "POST",
        http_path = "/ListChannels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPlaybackKeyPairs(input, options)
    return self:invokeOperation(input, {
        name = "ListPlaybackKeyPairs",
        input_schema = types.ListPlaybackKeyPairsInput,
        output_schema = types.ListPlaybackKeyPairsOutput,
        http_method = "POST",
        http_path = "/ListPlaybackKeyPairs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPlaybackRestrictionPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListPlaybackRestrictionPolicies",
        input_schema = types.ListPlaybackRestrictionPoliciesInput,
        output_schema = types.ListPlaybackRestrictionPoliciesOutput,
        http_method = "POST",
        http_path = "/ListPlaybackRestrictionPolicies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecordingConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListRecordingConfigurations",
        input_schema = types.ListRecordingConfigurationsInput,
        output_schema = types.ListRecordingConfigurationsOutput,
        http_method = "POST",
        http_path = "/ListRecordingConfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStreamKeys(input, options)
    return self:invokeOperation(input, {
        name = "ListStreamKeys",
        input_schema = types.ListStreamKeysInput,
        output_schema = types.ListStreamKeysOutput,
        http_method = "POST",
        http_path = "/ListStreamKeys",
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
        http_path = "/ListStreams",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStreamSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListStreamSessions",
        input_schema = types.ListStreamSessionsInput,
        output_schema = types.ListStreamSessionsOutput,
        http_method = "POST",
        http_path = "/ListStreamSessions",
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
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putMetadata(input, options)
    return self:invokeOperation(input, {
        name = "PutMetadata",
        input_schema = types.PutMetadataInput,
        output_schema = types.PutMetadataOutput,
        http_method = "POST",
        http_path = "/PutMetadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startViewerSessionRevocation(input, options)
    return self:invokeOperation(input, {
        name = "StartViewerSessionRevocation",
        input_schema = types.StartViewerSessionRevocationInput,
        output_schema = types.StartViewerSessionRevocationOutput,
        http_method = "POST",
        http_path = "/StartViewerSessionRevocation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopStream(input, options)
    return self:invokeOperation(input, {
        name = "StopStream",
        input_schema = types.StopStreamInput,
        output_schema = types.StopStreamOutput,
        http_method = "POST",
        http_path = "/StopStream",
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
        http_path = "/tags/{resourceArn}",
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
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChannel",
        input_schema = types.UpdateChannelInput,
        output_schema = types.UpdateChannelOutput,
        http_method = "POST",
        http_path = "/UpdateChannel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePlaybackRestrictionPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePlaybackRestrictionPolicy",
        input_schema = types.UpdatePlaybackRestrictionPolicyInput,
        output_schema = types.UpdatePlaybackRestrictionPolicyOutput,
        http_method = "POST",
        http_path = "/UpdatePlaybackRestrictionPolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
