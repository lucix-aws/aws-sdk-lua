local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("repostspace.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("repostspace.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "RepostSpace"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "repostspace", signing_region = cfg.region } }
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

function Client:batchAddChannelRoleToAccessors(input, options)
    return self:invokeOperation(input, {
        name = "BatchAddChannelRoleToAccessors",
        input_schema = types.BatchAddChannelRoleToAccessorsInput,
        output_schema = types.BatchAddChannelRoleToAccessorsOutput,
        http_method = "POST",
        http_path = "/spaces/{spaceId}/channels/{channelId}/roles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchAddRole(input, options)
    return self:invokeOperation(input, {
        name = "BatchAddRole",
        input_schema = types.BatchAddRoleInput,
        output_schema = types.BatchAddRoleOutput,
        http_method = "POST",
        http_path = "/spaces/{spaceId}/roles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchRemoveChannelRoleFromAccessors(input, options)
    return self:invokeOperation(input, {
        name = "BatchRemoveChannelRoleFromAccessors",
        input_schema = types.BatchRemoveChannelRoleFromAccessorsInput,
        output_schema = types.BatchRemoveChannelRoleFromAccessorsOutput,
        http_method = "PATCH",
        http_path = "/spaces/{spaceId}/channels/{channelId}/roles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchRemoveRole(input, options)
    return self:invokeOperation(input, {
        name = "BatchRemoveRole",
        input_schema = types.BatchRemoveRoleInput,
        output_schema = types.BatchRemoveRoleOutput,
        http_method = "PATCH",
        http_path = "/spaces/{spaceId}/roles",
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
        http_path = "/spaces/{spaceId}/channels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSpace(input, options)
    return self:invokeOperation(input, {
        name = "CreateSpace",
        input_schema = types.CreateSpaceInput,
        output_schema = types.CreateSpaceOutput,
        http_method = "POST",
        http_path = "/spaces",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSpace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSpace",
        input_schema = types.DeleteSpaceInput,
        output_schema = types.DeleteSpaceOutput,
        http_method = "DELETE",
        http_path = "/spaces/{spaceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterAdmin(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterAdmin",
        input_schema = types.DeregisterAdminInput,
        output_schema = types.DeregisterAdminOutput,
        http_method = "DELETE",
        http_path = "/spaces/{spaceId}/admins/{adminId}",
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
        http_path = "/spaces/{spaceId}/channels/{channelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSpace(input, options)
    return self:invokeOperation(input, {
        name = "GetSpace",
        input_schema = types.GetSpaceInput,
        output_schema = types.GetSpaceOutput,
        http_method = "GET",
        http_path = "/spaces/{spaceId}",
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
        http_path = "/spaces/{spaceId}/channels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSpaces(input, options)
    return self:invokeOperation(input, {
        name = "ListSpaces",
        input_schema = types.ListSpacesInput,
        output_schema = types.ListSpacesOutput,
        http_method = "GET",
        http_path = "/spaces",
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

function Client:registerAdmin(input, options)
    return self:invokeOperation(input, {
        name = "RegisterAdmin",
        input_schema = types.RegisterAdminInput,
        output_schema = types.RegisterAdminOutput,
        http_method = "POST",
        http_path = "/spaces/{spaceId}/admins/{adminId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendInvites(input, options)
    return self:invokeOperation(input, {
        name = "SendInvites",
        input_schema = types.SendInvitesInput,
        output_schema = types.SendInvitesOutput,
        http_method = "POST",
        http_path = "/spaces/{spaceId}/invite",
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
        http_method = "PUT",
        http_path = "/spaces/{spaceId}/channels/{channelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSpace(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSpace",
        input_schema = types.UpdateSpaceInput,
        output_schema = types.UpdateSpaceOutput,
        http_method = "PUT",
        http_path = "/spaces/{spaceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
