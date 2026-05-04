local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ivschat.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("ivschat.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonInteractiveVideoServiceChat"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ivschat", signing_region = cfg.region } }
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

function Client:createChatToken(input, options)
    return self:invokeOperation(input, {
        name = "CreateChatToken",
        input_schema = types.CreateChatTokenInput,
        output_schema = types.CreateChatTokenOutput,
        http_method = "POST",
        http_path = "/CreateChatToken",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateLoggingConfiguration",
        input_schema = types.CreateLoggingConfigurationInput,
        output_schema = types.CreateLoggingConfigurationOutput,
        http_method = "POST",
        http_path = "/CreateLoggingConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRoom(input, options)
    return self:invokeOperation(input, {
        name = "CreateRoom",
        input_schema = types.CreateRoomInput,
        output_schema = types.CreateRoomOutput,
        http_method = "POST",
        http_path = "/CreateRoom",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLoggingConfiguration",
        input_schema = types.DeleteLoggingConfigurationInput,
        output_schema = types.DeleteLoggingConfigurationOutput,
        http_method = "POST",
        http_path = "/DeleteLoggingConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMessage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMessage",
        input_schema = types.DeleteMessageInput,
        output_schema = types.DeleteMessageOutput,
        http_method = "POST",
        http_path = "/DeleteMessage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRoom(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRoom",
        input_schema = types.DeleteRoomInput,
        output_schema = types.DeleteRoomOutput,
        http_method = "POST",
        http_path = "/DeleteRoom",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disconnectUser(input, options)
    return self:invokeOperation(input, {
        name = "DisconnectUser",
        input_schema = types.DisconnectUserInput,
        output_schema = types.DisconnectUserOutput,
        http_method = "POST",
        http_path = "/DisconnectUser",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetLoggingConfiguration",
        input_schema = types.GetLoggingConfigurationInput,
        output_schema = types.GetLoggingConfigurationOutput,
        http_method = "POST",
        http_path = "/GetLoggingConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRoom(input, options)
    return self:invokeOperation(input, {
        name = "GetRoom",
        input_schema = types.GetRoomInput,
        output_schema = types.GetRoomOutput,
        http_method = "POST",
        http_path = "/GetRoom",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLoggingConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListLoggingConfigurations",
        input_schema = types.ListLoggingConfigurationsInput,
        output_schema = types.ListLoggingConfigurationsOutput,
        http_method = "POST",
        http_path = "/ListLoggingConfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRooms(input, options)
    return self:invokeOperation(input, {
        name = "ListRooms",
        input_schema = types.ListRoomsInput,
        output_schema = types.ListRoomsOutput,
        http_method = "POST",
        http_path = "/ListRooms",
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

function Client:sendEvent(input, options)
    return self:invokeOperation(input, {
        name = "SendEvent",
        input_schema = types.SendEventInput,
        output_schema = types.SendEventOutput,
        http_method = "POST",
        http_path = "/SendEvent",
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

function Client:updateLoggingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLoggingConfiguration",
        input_schema = types.UpdateLoggingConfigurationInput,
        output_schema = types.UpdateLoggingConfigurationOutput,
        http_method = "POST",
        http_path = "/UpdateLoggingConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRoom(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoom",
        input_schema = types.UpdateRoomInput,
        output_schema = types.UpdateRoomOutput,
        http_method = "POST",
        http_path = "/UpdateRoom",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
