local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("mediapackagev2.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("mediapackagev2.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "mediapackagev2"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mediapackagev2", signing_region = cfg.region } }
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

function Client:cancelHarvestJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelHarvestJob",
        input_schema = schemas.CancelHarvestJobInput,
        output_schema = schemas.CancelHarvestJobOutput,
        http_method = "PUT",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/harvestJob/{HarvestJobName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createChannel(input, options)
    return self:invokeOperation(input, {
        name = "CreateChannel",
        input_schema = schemas.CreateChannelInput,
        output_schema = schemas.CreateChannelOutput,
        http_method = "POST",
        http_path = "/channelGroup/{ChannelGroupName}/channel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createChannelGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateChannelGroup",
        input_schema = schemas.CreateChannelGroupInput,
        output_schema = schemas.CreateChannelGroupOutput,
        http_method = "POST",
        http_path = "/channelGroup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHarvestJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateHarvestJob",
        input_schema = schemas.CreateHarvestJobInput,
        output_schema = schemas.CreateHarvestJobOutput,
        http_method = "POST",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/harvestJob",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOriginEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateOriginEndpoint",
        input_schema = schemas.CreateOriginEndpointInput,
        output_schema = schemas.CreateOriginEndpointOutput,
        http_method = "POST",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannel",
        input_schema = schemas.DeleteChannelInput,
        output_schema = schemas.DeleteChannelOutput,
        http_method = "DELETE",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChannelGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannelGroup",
        input_schema = schemas.DeleteChannelGroupInput,
        output_schema = schemas.DeleteChannelGroupOutput,
        http_method = "DELETE",
        http_path = "/channelGroup/{ChannelGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChannelPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannelPolicy",
        input_schema = schemas.DeleteChannelPolicyInput,
        output_schema = schemas.DeleteChannelPolicyOutput,
        http_method = "DELETE",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOriginEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOriginEndpoint",
        input_schema = schemas.DeleteOriginEndpointInput,
        output_schema = schemas.DeleteOriginEndpointOutput,
        http_method = "DELETE",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOriginEndpointPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOriginEndpointPolicy",
        input_schema = schemas.DeleteOriginEndpointPolicyInput,
        output_schema = schemas.DeleteOriginEndpointPolicyOutput,
        http_method = "DELETE",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChannel(input, options)
    return self:invokeOperation(input, {
        name = "GetChannel",
        input_schema = schemas.GetChannelInput,
        output_schema = schemas.GetChannelOutput,
        http_method = "GET",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChannelGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetChannelGroup",
        input_schema = schemas.GetChannelGroupInput,
        output_schema = schemas.GetChannelGroupOutput,
        http_method = "GET",
        http_path = "/channelGroup/{ChannelGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChannelPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetChannelPolicy",
        input_schema = schemas.GetChannelPolicyInput,
        output_schema = schemas.GetChannelPolicyOutput,
        http_method = "GET",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHarvestJob(input, options)
    return self:invokeOperation(input, {
        name = "GetHarvestJob",
        input_schema = schemas.GetHarvestJobInput,
        output_schema = schemas.GetHarvestJobOutput,
        http_method = "GET",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/harvestJob/{HarvestJobName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOriginEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetOriginEndpoint",
        input_schema = schemas.GetOriginEndpointInput,
        output_schema = schemas.GetOriginEndpointOutput,
        http_method = "GET",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOriginEndpointPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetOriginEndpointPolicy",
        input_schema = schemas.GetOriginEndpointPolicyInput,
        output_schema = schemas.GetOriginEndpointPolicyOutput,
        http_method = "GET",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChannelGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListChannelGroups",
        input_schema = schemas.ListChannelGroupsInput,
        output_schema = schemas.ListChannelGroupsOutput,
        http_method = "GET",
        http_path = "/channelGroup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChannels(input, options)
    return self:invokeOperation(input, {
        name = "ListChannels",
        input_schema = schemas.ListChannelsInput,
        output_schema = schemas.ListChannelsOutput,
        http_method = "GET",
        http_path = "/channelGroup/{ChannelGroupName}/channel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHarvestJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListHarvestJobs",
        input_schema = schemas.ListHarvestJobsInput,
        output_schema = schemas.ListHarvestJobsOutput,
        http_method = "GET",
        http_path = "/channelGroup/{ChannelGroupName}/harvestJob",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOriginEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListOriginEndpoints",
        input_schema = schemas.ListOriginEndpointsInput,
        output_schema = schemas.ListOriginEndpointsOutput,
        http_method = "GET",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint",
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
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putChannelPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutChannelPolicy",
        input_schema = schemas.PutChannelPolicyInput,
        output_schema = schemas.PutChannelPolicyOutput,
        http_method = "PUT",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putOriginEndpointPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutOriginEndpointPolicy",
        input_schema = schemas.PutOriginEndpointPolicyInput,
        output_schema = schemas.PutOriginEndpointPolicyOutput,
        http_method = "POST",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetChannelState(input, options)
    return self:invokeOperation(input, {
        name = "ResetChannelState",
        input_schema = schemas.ResetChannelStateInput,
        output_schema = schemas.ResetChannelStateOutput,
        http_method = "POST",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/reset",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetOriginEndpointState(input, options)
    return self:invokeOperation(input, {
        name = "ResetOriginEndpointState",
        input_schema = schemas.ResetOriginEndpointStateInput,
        output_schema = schemas.ResetOriginEndpointStateOutput,
        http_method = "POST",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}/reset",
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
        http_path = "/tags/{ResourceArn}",
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
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateChannel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChannel",
        input_schema = schemas.UpdateChannelInput,
        output_schema = schemas.UpdateChannelOutput,
        http_method = "PUT",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateChannelGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChannelGroup",
        input_schema = schemas.UpdateChannelGroupInput,
        output_schema = schemas.UpdateChannelGroupOutput,
        http_method = "PUT",
        http_path = "/channelGroup/{ChannelGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOriginEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOriginEndpoint",
        input_schema = schemas.UpdateOriginEndpointInput,
        output_schema = schemas.UpdateOriginEndpointOutput,
        http_method = "PUT",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
