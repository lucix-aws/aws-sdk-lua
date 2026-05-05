local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("chimesdkmessaging.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("chimesdkmessaging.schemas")
local sdk_defaults = require("aws.sdk_defaults")

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
        input_schema = schemas.AssociateChannelFlowInput,
        output_schema = schemas.AssociateChannelFlowOutput,
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
        input_schema = schemas.BatchCreateChannelMembershipInput,
        output_schema = schemas.BatchCreateChannelMembershipOutput,
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
        input_schema = schemas.ChannelFlowCallbackInput,
        output_schema = schemas.ChannelFlowCallbackOutput,
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
        input_schema = schemas.CreateChannelInput,
        output_schema = schemas.CreateChannelOutput,
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
        input_schema = schemas.CreateChannelBanInput,
        output_schema = schemas.CreateChannelBanOutput,
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
        input_schema = schemas.CreateChannelFlowInput,
        output_schema = schemas.CreateChannelFlowOutput,
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
        input_schema = schemas.CreateChannelMembershipInput,
        output_schema = schemas.CreateChannelMembershipOutput,
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
        input_schema = schemas.CreateChannelModeratorInput,
        output_schema = schemas.CreateChannelModeratorOutput,
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
        input_schema = schemas.DeleteChannelInput,
        output_schema = schemas.DeleteChannelOutput,
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
        input_schema = schemas.DeleteChannelBanInput,
        output_schema = schemas.DeleteChannelBanOutput,
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
        input_schema = schemas.DeleteChannelFlowInput,
        output_schema = schemas.DeleteChannelFlowOutput,
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
        input_schema = schemas.DeleteChannelMembershipInput,
        output_schema = schemas.DeleteChannelMembershipOutput,
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
        input_schema = schemas.DeleteChannelMessageInput,
        output_schema = schemas.DeleteChannelMessageOutput,
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
        input_schema = schemas.DeleteChannelModeratorInput,
        output_schema = schemas.DeleteChannelModeratorOutput,
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
        input_schema = schemas.DeleteMessagingStreamingConfigurationsInput,
        output_schema = schemas.DeleteMessagingStreamingConfigurationsOutput,
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
        input_schema = schemas.DescribeChannelInput,
        output_schema = schemas.DescribeChannelOutput,
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
        input_schema = schemas.DescribeChannelBanInput,
        output_schema = schemas.DescribeChannelBanOutput,
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
        input_schema = schemas.DescribeChannelFlowInput,
        output_schema = schemas.DescribeChannelFlowOutput,
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
        input_schema = schemas.DescribeChannelMembershipInput,
        output_schema = schemas.DescribeChannelMembershipOutput,
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
        input_schema = schemas.DescribeChannelMembershipForAppInstanceUserInput,
        output_schema = schemas.DescribeChannelMembershipForAppInstanceUserOutput,
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
        input_schema = schemas.DescribeChannelModeratedByAppInstanceUserInput,
        output_schema = schemas.DescribeChannelModeratedByAppInstanceUserOutput,
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
        input_schema = schemas.DescribeChannelModeratorInput,
        output_schema = schemas.DescribeChannelModeratorOutput,
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
        input_schema = schemas.DisassociateChannelFlowInput,
        output_schema = schemas.DisassociateChannelFlowOutput,
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
        input_schema = schemas.GetChannelMembershipPreferencesInput,
        output_schema = schemas.GetChannelMembershipPreferencesOutput,
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
        input_schema = schemas.GetChannelMessageInput,
        output_schema = schemas.GetChannelMessageOutput,
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
        input_schema = schemas.GetChannelMessageStatusInput,
        output_schema = schemas.GetChannelMessageStatusOutput,
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
        input_schema = schemas.GetMessagingSessionEndpointInput,
        output_schema = schemas.GetMessagingSessionEndpointOutput,
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
        input_schema = schemas.GetMessagingStreamingConfigurationsInput,
        output_schema = schemas.GetMessagingStreamingConfigurationsOutput,
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
        input_schema = schemas.ListChannelBansInput,
        output_schema = schemas.ListChannelBansOutput,
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
        input_schema = schemas.ListChannelFlowsInput,
        output_schema = schemas.ListChannelFlowsOutput,
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
        input_schema = schemas.ListChannelMembershipsInput,
        output_schema = schemas.ListChannelMembershipsOutput,
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
        input_schema = schemas.ListChannelMembershipsForAppInstanceUserInput,
        output_schema = schemas.ListChannelMembershipsForAppInstanceUserOutput,
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
        input_schema = schemas.ListChannelMessagesInput,
        output_schema = schemas.ListChannelMessagesOutput,
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
        input_schema = schemas.ListChannelModeratorsInput,
        output_schema = schemas.ListChannelModeratorsOutput,
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
        input_schema = schemas.ListChannelsInput,
        output_schema = schemas.ListChannelsOutput,
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
        input_schema = schemas.ListChannelsAssociatedWithChannelFlowInput,
        output_schema = schemas.ListChannelsAssociatedWithChannelFlowOutput,
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
        input_schema = schemas.ListChannelsModeratedByAppInstanceUserInput,
        output_schema = schemas.ListChannelsModeratedByAppInstanceUserOutput,
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
        input_schema = schemas.ListSubChannelsInput,
        output_schema = schemas.ListSubChannelsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.PutChannelExpirationSettingsInput,
        output_schema = schemas.PutChannelExpirationSettingsOutput,
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
        input_schema = schemas.PutChannelMembershipPreferencesInput,
        output_schema = schemas.PutChannelMembershipPreferencesOutput,
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
        input_schema = schemas.PutMessagingStreamingConfigurationsInput,
        output_schema = schemas.PutMessagingStreamingConfigurationsOutput,
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
        input_schema = schemas.RedactChannelMessageInput,
        output_schema = schemas.RedactChannelMessageOutput,
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
        input_schema = schemas.SearchChannelsInput,
        output_schema = schemas.SearchChannelsOutput,
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
        input_schema = schemas.SendChannelMessageInput,
        output_schema = schemas.SendChannelMessageOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateChannelInput,
        output_schema = schemas.UpdateChannelOutput,
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
        input_schema = schemas.UpdateChannelFlowInput,
        output_schema = schemas.UpdateChannelFlowOutput,
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
        input_schema = schemas.UpdateChannelMessageInput,
        output_schema = schemas.UpdateChannelMessageOutput,
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
        input_schema = schemas.UpdateChannelReadMarkerInput,
        output_schema = schemas.UpdateChannelReadMarkerOutput,
        http_method = "PUT",
        http_path = "/channels/{ChannelArn}/readMarker",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
