local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("chimesdkmessaging.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("chimesdkmessaging.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ChimeMessagingService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "chime", signing_region = cfg.region } }
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

function Client:associateChannelFlow(input, options)
    return self:invokeOperation(input, {
        name = "AssociateChannelFlow",
        input_schema = types.AssociateChannelFlowInput,
        output_schema = types.AssociateChannelFlowOutput,
        http_method = "PUT",
        http_path = "/channels/{ChannelArn}/channel-flow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchCreateChannelMembership(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateChannelMembership",
        input_schema = types.BatchCreateChannelMembershipInput,
        output_schema = types.BatchCreateChannelMembershipOutput,
        http_method = "POST",
        http_path = "/channels/{ChannelArn}/memberships?operation=batch-create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:channelFlowCallback(input, options)
    return self:invokeOperation(input, {
        name = "ChannelFlowCallback",
        input_schema = types.ChannelFlowCallbackInput,
        output_schema = types.ChannelFlowCallbackOutput,
        http_method = "POST",
        http_path = "/channels/{ChannelArn}?operation=channel-flow-callback",
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
        http_path = "/channels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createChannelBan(input, options)
    return self:invokeOperation(input, {
        name = "CreateChannelBan",
        input_schema = types.CreateChannelBanInput,
        output_schema = types.CreateChannelBanOutput,
        http_method = "POST",
        http_path = "/channels/{ChannelArn}/bans",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createChannelFlow(input, options)
    return self:invokeOperation(input, {
        name = "CreateChannelFlow",
        input_schema = types.CreateChannelFlowInput,
        output_schema = types.CreateChannelFlowOutput,
        http_method = "POST",
        http_path = "/channel-flows",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createChannelMembership(input, options)
    return self:invokeOperation(input, {
        name = "CreateChannelMembership",
        input_schema = types.CreateChannelMembershipInput,
        output_schema = types.CreateChannelMembershipOutput,
        http_method = "POST",
        http_path = "/channels/{ChannelArn}/memberships",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createChannelModerator(input, options)
    return self:invokeOperation(input, {
        name = "CreateChannelModerator",
        input_schema = types.CreateChannelModeratorInput,
        output_schema = types.CreateChannelModeratorOutput,
        http_method = "POST",
        http_path = "/channels/{ChannelArn}/moderators",
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
        http_path = "/channels/{ChannelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChannelBan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannelBan",
        input_schema = types.DeleteChannelBanInput,
        output_schema = types.DeleteChannelBanOutput,
        http_method = "DELETE",
        http_path = "/channels/{ChannelArn}/bans/{MemberArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChannelFlow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannelFlow",
        input_schema = types.DeleteChannelFlowInput,
        output_schema = types.DeleteChannelFlowOutput,
        http_method = "DELETE",
        http_path = "/channel-flows/{ChannelFlowArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChannelMembership(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannelMembership",
        input_schema = types.DeleteChannelMembershipInput,
        output_schema = types.DeleteChannelMembershipOutput,
        http_method = "DELETE",
        http_path = "/channels/{ChannelArn}/memberships/{MemberArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChannelMessage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannelMessage",
        input_schema = types.DeleteChannelMessageInput,
        output_schema = types.DeleteChannelMessageOutput,
        http_method = "DELETE",
        http_path = "/channels/{ChannelArn}/messages/{MessageId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChannelModerator(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannelModerator",
        input_schema = types.DeleteChannelModeratorInput,
        output_schema = types.DeleteChannelModeratorOutput,
        http_method = "DELETE",
        http_path = "/channels/{ChannelArn}/moderators/{ChannelModeratorArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMessagingStreamingConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMessagingStreamingConfigurations",
        input_schema = types.DeleteMessagingStreamingConfigurationsInput,
        output_schema = types.DeleteMessagingStreamingConfigurationsOutput,
        http_method = "DELETE",
        http_path = "/app-instances/{AppInstanceArn}/streaming-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeChannel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChannel",
        input_schema = types.DescribeChannelInput,
        output_schema = types.DescribeChannelOutput,
        http_method = "GET",
        http_path = "/channels/{ChannelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeChannelBan(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChannelBan",
        input_schema = types.DescribeChannelBanInput,
        output_schema = types.DescribeChannelBanOutput,
        http_method = "GET",
        http_path = "/channels/{ChannelArn}/bans/{MemberArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeChannelFlow(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChannelFlow",
        input_schema = types.DescribeChannelFlowInput,
        output_schema = types.DescribeChannelFlowOutput,
        http_method = "GET",
        http_path = "/channel-flows/{ChannelFlowArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeChannelMembership(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChannelMembership",
        input_schema = types.DescribeChannelMembershipInput,
        output_schema = types.DescribeChannelMembershipOutput,
        http_method = "GET",
        http_path = "/channels/{ChannelArn}/memberships/{MemberArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeChannelMembershipForAppInstanceUser(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChannelMembershipForAppInstanceUser",
        input_schema = types.DescribeChannelMembershipForAppInstanceUserInput,
        output_schema = types.DescribeChannelMembershipForAppInstanceUserOutput,
        http_method = "GET",
        http_path = "/channels/{ChannelArn}?scope=app-instance-user-membership",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeChannelModeratedByAppInstanceUser(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChannelModeratedByAppInstanceUser",
        input_schema = types.DescribeChannelModeratedByAppInstanceUserInput,
        output_schema = types.DescribeChannelModeratedByAppInstanceUserOutput,
        http_method = "GET",
        http_path = "/channels/{ChannelArn}?scope=app-instance-user-moderated-channel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeChannelModerator(input, options)
    return self:invokeOperation(input, {
        name = "DescribeChannelModerator",
        input_schema = types.DescribeChannelModeratorInput,
        output_schema = types.DescribeChannelModeratorOutput,
        http_method = "GET",
        http_path = "/channels/{ChannelArn}/moderators/{ChannelModeratorArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateChannelFlow(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateChannelFlow",
        input_schema = types.DisassociateChannelFlowInput,
        output_schema = types.DisassociateChannelFlowOutput,
        http_method = "DELETE",
        http_path = "/channels/{ChannelArn}/channel-flow/{ChannelFlowArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChannelMembershipPreferences(input, options)
    return self:invokeOperation(input, {
        name = "GetChannelMembershipPreferences",
        input_schema = types.GetChannelMembershipPreferencesInput,
        output_schema = types.GetChannelMembershipPreferencesOutput,
        http_method = "GET",
        http_path = "/channels/{ChannelArn}/memberships/{MemberArn}/preferences",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChannelMessage(input, options)
    return self:invokeOperation(input, {
        name = "GetChannelMessage",
        input_schema = types.GetChannelMessageInput,
        output_schema = types.GetChannelMessageOutput,
        http_method = "GET",
        http_path = "/channels/{ChannelArn}/messages/{MessageId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChannelMessageStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetChannelMessageStatus",
        input_schema = types.GetChannelMessageStatusInput,
        output_schema = types.GetChannelMessageStatusOutput,
        http_method = "GET",
        http_path = "/channels/{ChannelArn}/messages/{MessageId}?scope=message-status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMessagingSessionEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetMessagingSessionEndpoint",
        input_schema = types.GetMessagingSessionEndpointInput,
        output_schema = types.GetMessagingSessionEndpointOutput,
        http_method = "GET",
        http_path = "/endpoints/messaging-session",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMessagingStreamingConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "GetMessagingStreamingConfigurations",
        input_schema = types.GetMessagingStreamingConfigurationsInput,
        output_schema = types.GetMessagingStreamingConfigurationsOutput,
        http_method = "GET",
        http_path = "/app-instances/{AppInstanceArn}/streaming-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChannelBans(input, options)
    return self:invokeOperation(input, {
        name = "ListChannelBans",
        input_schema = types.ListChannelBansInput,
        output_schema = types.ListChannelBansOutput,
        http_method = "GET",
        http_path = "/channels/{ChannelArn}/bans",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChannelFlows(input, options)
    return self:invokeOperation(input, {
        name = "ListChannelFlows",
        input_schema = types.ListChannelFlowsInput,
        output_schema = types.ListChannelFlowsOutput,
        http_method = "GET",
        http_path = "/channel-flows",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChannelMemberships(input, options)
    return self:invokeOperation(input, {
        name = "ListChannelMemberships",
        input_schema = types.ListChannelMembershipsInput,
        output_schema = types.ListChannelMembershipsOutput,
        http_method = "GET",
        http_path = "/channels/{ChannelArn}/memberships",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChannelMembershipsForAppInstanceUser(input, options)
    return self:invokeOperation(input, {
        name = "ListChannelMembershipsForAppInstanceUser",
        input_schema = types.ListChannelMembershipsForAppInstanceUserInput,
        output_schema = types.ListChannelMembershipsForAppInstanceUserOutput,
        http_method = "GET",
        http_path = "/channels?scope=app-instance-user-memberships",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChannelMessages(input, options)
    return self:invokeOperation(input, {
        name = "ListChannelMessages",
        input_schema = types.ListChannelMessagesInput,
        output_schema = types.ListChannelMessagesOutput,
        http_method = "GET",
        http_path = "/channels/{ChannelArn}/messages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChannelModerators(input, options)
    return self:invokeOperation(input, {
        name = "ListChannelModerators",
        input_schema = types.ListChannelModeratorsInput,
        output_schema = types.ListChannelModeratorsOutput,
        http_method = "GET",
        http_path = "/channels/{ChannelArn}/moderators",
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
        http_path = "/channels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChannelsAssociatedWithChannelFlow(input, options)
    return self:invokeOperation(input, {
        name = "ListChannelsAssociatedWithChannelFlow",
        input_schema = types.ListChannelsAssociatedWithChannelFlowInput,
        output_schema = types.ListChannelsAssociatedWithChannelFlowOutput,
        http_method = "GET",
        http_path = "/channels?scope=channel-flow-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChannelsModeratedByAppInstanceUser(input, options)
    return self:invokeOperation(input, {
        name = "ListChannelsModeratedByAppInstanceUser",
        input_schema = types.ListChannelsModeratedByAppInstanceUserInput,
        output_schema = types.ListChannelsModeratedByAppInstanceUserOutput,
        http_method = "GET",
        http_path = "/channels?scope=app-instance-user-moderated-channels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSubChannels(input, options)
    return self:invokeOperation(input, {
        name = "ListSubChannels",
        input_schema = types.ListSubChannelsInput,
        output_schema = types.ListSubChannelsOutput,
        http_method = "GET",
        http_path = "/channels/{ChannelArn}/subchannels",
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
        http_path = "/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putChannelExpirationSettings(input, options)
    return self:invokeOperation(input, {
        name = "PutChannelExpirationSettings",
        input_schema = types.PutChannelExpirationSettingsInput,
        output_schema = types.PutChannelExpirationSettingsOutput,
        http_method = "PUT",
        http_path = "/channels/{ChannelArn}/expiration-settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putChannelMembershipPreferences(input, options)
    return self:invokeOperation(input, {
        name = "PutChannelMembershipPreferences",
        input_schema = types.PutChannelMembershipPreferencesInput,
        output_schema = types.PutChannelMembershipPreferencesOutput,
        http_method = "PUT",
        http_path = "/channels/{ChannelArn}/memberships/{MemberArn}/preferences",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putMessagingStreamingConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "PutMessagingStreamingConfigurations",
        input_schema = types.PutMessagingStreamingConfigurationsInput,
        output_schema = types.PutMessagingStreamingConfigurationsOutput,
        http_method = "PUT",
        http_path = "/app-instances/{AppInstanceArn}/streaming-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:redactChannelMessage(input, options)
    return self:invokeOperation(input, {
        name = "RedactChannelMessage",
        input_schema = types.RedactChannelMessageInput,
        output_schema = types.RedactChannelMessageOutput,
        http_method = "POST",
        http_path = "/channels/{ChannelArn}/messages/{MessageId}?operation=redact",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchChannels(input, options)
    return self:invokeOperation(input, {
        name = "SearchChannels",
        input_schema = types.SearchChannelsInput,
        output_schema = types.SearchChannelsOutput,
        http_method = "POST",
        http_path = "/channels?operation=search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendChannelMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendChannelMessage",
        input_schema = types.SendChannelMessageInput,
        output_schema = types.SendChannelMessageOutput,
        http_method = "POST",
        http_path = "/channels/{ChannelArn}/messages",
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
        http_path = "/tags?operation=tag-resource",
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
        http_path = "/tags?operation=untag-resource",
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
        http_path = "/channels/{ChannelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateChannelFlow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChannelFlow",
        input_schema = types.UpdateChannelFlowInput,
        output_schema = types.UpdateChannelFlowOutput,
        http_method = "PUT",
        http_path = "/channel-flows/{ChannelFlowArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateChannelMessage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChannelMessage",
        input_schema = types.UpdateChannelMessageInput,
        output_schema = types.UpdateChannelMessageOutput,
        http_method = "PUT",
        http_path = "/channels/{ChannelArn}/messages/{MessageId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateChannelReadMarker(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChannelReadMarker",
        input_schema = types.UpdateChannelReadMarkerInput,
        output_schema = types.UpdateChannelReadMarkerOutput,
        http_method = "PUT",
        http_path = "/channels/{ChannelArn}/readMarker",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
