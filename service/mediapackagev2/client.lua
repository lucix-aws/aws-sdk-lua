local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("mediapackagev2.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("mediapackagev2.types")

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
        input_schema = types.CancelHarvestJobInput,
        output_schema = types.CancelHarvestJobOutput,
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
        input_schema = types.CreateChannelInput,
        output_schema = types.CreateChannelOutput,
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
        input_schema = types.CreateChannelGroupInput,
        output_schema = types.CreateChannelGroupOutput,
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
        input_schema = types.CreateHarvestJobInput,
        output_schema = types.CreateHarvestJobOutput,
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
        input_schema = types.CreateOriginEndpointInput,
        output_schema = types.CreateOriginEndpointOutput,
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
        input_schema = types.DeleteChannelInput,
        output_schema = types.DeleteChannelOutput,
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
        input_schema = types.DeleteChannelGroupInput,
        output_schema = types.DeleteChannelGroupOutput,
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
        input_schema = types.DeleteChannelPolicyInput,
        output_schema = types.DeleteChannelPolicyOutput,
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
        input_schema = types.DeleteOriginEndpointInput,
        output_schema = types.DeleteOriginEndpointOutput,
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
        input_schema = types.DeleteOriginEndpointPolicyInput,
        output_schema = types.DeleteOriginEndpointPolicyOutput,
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
        input_schema = types.GetChannelInput,
        output_schema = types.GetChannelOutput,
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
        input_schema = types.GetChannelGroupInput,
        output_schema = types.GetChannelGroupOutput,
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
        input_schema = types.GetChannelPolicyInput,
        output_schema = types.GetChannelPolicyOutput,
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
        input_schema = types.GetHarvestJobInput,
        output_schema = types.GetHarvestJobOutput,
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
        input_schema = types.GetOriginEndpointInput,
        output_schema = types.GetOriginEndpointOutput,
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
        input_schema = types.GetOriginEndpointPolicyInput,
        output_schema = types.GetOriginEndpointPolicyOutput,
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
        input_schema = types.ListChannelGroupsInput,
        output_schema = types.ListChannelGroupsOutput,
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
        input_schema = types.ListChannelsInput,
        output_schema = types.ListChannelsOutput,
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
        input_schema = types.ListHarvestJobsInput,
        output_schema = types.ListHarvestJobsOutput,
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
        input_schema = types.ListOriginEndpointsInput,
        output_schema = types.ListOriginEndpointsOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.PutChannelPolicyInput,
        output_schema = types.PutChannelPolicyOutput,
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
        input_schema = types.PutOriginEndpointPolicyInput,
        output_schema = types.PutOriginEndpointPolicyOutput,
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
        input_schema = types.ResetChannelStateInput,
        output_schema = types.ResetChannelStateOutput,
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
        input_schema = types.ResetOriginEndpointStateInput,
        output_schema = types.ResetOriginEndpointStateOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
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
        input_schema = types.UpdateChannelInput,
        output_schema = types.UpdateChannelOutput,
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
        input_schema = types.UpdateChannelGroupInput,
        output_schema = types.UpdateChannelGroupOutput,
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
        input_schema = types.UpdateOriginEndpointInput,
        output_schema = types.UpdateOriginEndpointOutput,
        http_method = "PUT",
        http_path = "/channelGroup/{ChannelGroupName}/channel/{ChannelName}/originEndpoint/{OriginEndpointName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
