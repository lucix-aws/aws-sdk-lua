local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("connectparticipant.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("connectparticipant.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonConnectParticipantServiceLambda"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "execute-api", signing_region = cfg.region } }
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

function Client:cancelParticipantAuthentication(input, options)
    return self:invokeOperation(input, {
        name = "CancelParticipantAuthentication",
        input_schema = types.CancelParticipantAuthenticationInput,
        output_schema = types.CancelParticipantAuthenticationOutput,
        http_method = "POST",
        http_path = "/participant/cancel-authentication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:completeAttachmentUpload(input, options)
    return self:invokeOperation(input, {
        name = "CompleteAttachmentUpload",
        input_schema = types.CompleteAttachmentUploadInput,
        output_schema = types.CompleteAttachmentUploadOutput,
        http_method = "POST",
        http_path = "/participant/complete-attachment-upload",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createParticipantConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateParticipantConnection",
        input_schema = types.CreateParticipantConnectionInput,
        output_schema = types.CreateParticipantConnectionOutput,
        http_method = "POST",
        http_path = "/participant/connection",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeView(input, options)
    return self:invokeOperation(input, {
        name = "DescribeView",
        input_schema = types.DescribeViewInput,
        output_schema = types.DescribeViewOutput,
        http_method = "GET",
        http_path = "/participant/views/{ViewToken}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disconnectParticipant(input, options)
    return self:invokeOperation(input, {
        name = "DisconnectParticipant",
        input_schema = types.DisconnectParticipantInput,
        output_schema = types.DisconnectParticipantOutput,
        http_method = "POST",
        http_path = "/participant/disconnect",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAttachment(input, options)
    return self:invokeOperation(input, {
        name = "GetAttachment",
        input_schema = types.GetAttachmentInput,
        output_schema = types.GetAttachmentOutput,
        http_method = "POST",
        http_path = "/participant/attachment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAuthenticationUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetAuthenticationUrl",
        input_schema = types.GetAuthenticationUrlInput,
        output_schema = types.GetAuthenticationUrlOutput,
        http_method = "POST",
        http_path = "/participant/authentication-url",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTranscript(input, options)
    return self:invokeOperation(input, {
        name = "GetTranscript",
        input_schema = types.GetTranscriptInput,
        output_schema = types.GetTranscriptOutput,
        http_method = "POST",
        http_path = "/participant/transcript",
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
        http_path = "/participant/event",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendMessage",
        input_schema = types.SendMessageInput,
        output_schema = types.SendMessageOutput,
        http_method = "POST",
        http_path = "/participant/message",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startAttachmentUpload(input, options)
    return self:invokeOperation(input, {
        name = "StartAttachmentUpload",
        input_schema = types.StartAttachmentUploadInput,
        output_schema = types.StartAttachmentUploadOutput,
        http_method = "POST",
        http_path = "/participant/start-attachment-upload",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
