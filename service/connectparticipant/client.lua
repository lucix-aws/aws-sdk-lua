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
    cfg.signing_name = "amazonconnectparticipantservicelambda"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
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
    }, options)
end

function Client:completeAttachmentUpload(input, options)
    return self:invokeOperation(input, {
        name = "CompleteAttachmentUpload",
        input_schema = types.CompleteAttachmentUploadInput,
        output_schema = types.CompleteAttachmentUploadOutput,
        http_method = "POST",
        http_path = "/participant/complete-attachment-upload",
    }, options)
end

function Client:createParticipantConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateParticipantConnection",
        input_schema = types.CreateParticipantConnectionInput,
        output_schema = types.CreateParticipantConnectionOutput,
        http_method = "POST",
        http_path = "/participant/connection",
    }, options)
end

function Client:describeView(input, options)
    return self:invokeOperation(input, {
        name = "DescribeView",
        input_schema = types.DescribeViewInput,
        output_schema = types.DescribeViewOutput,
        http_method = "GET",
        http_path = "/participant/views/{ViewToken}",
    }, options)
end

function Client:disconnectParticipant(input, options)
    return self:invokeOperation(input, {
        name = "DisconnectParticipant",
        input_schema = types.DisconnectParticipantInput,
        output_schema = types.DisconnectParticipantOutput,
        http_method = "POST",
        http_path = "/participant/disconnect",
    }, options)
end

function Client:getAttachment(input, options)
    return self:invokeOperation(input, {
        name = "GetAttachment",
        input_schema = types.GetAttachmentInput,
        output_schema = types.GetAttachmentOutput,
        http_method = "POST",
        http_path = "/participant/attachment",
    }, options)
end

function Client:getAuthenticationUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetAuthenticationUrl",
        input_schema = types.GetAuthenticationUrlInput,
        output_schema = types.GetAuthenticationUrlOutput,
        http_method = "POST",
        http_path = "/participant/authentication-url",
    }, options)
end

function Client:getTranscript(input, options)
    return self:invokeOperation(input, {
        name = "GetTranscript",
        input_schema = types.GetTranscriptInput,
        output_schema = types.GetTranscriptOutput,
        http_method = "POST",
        http_path = "/participant/transcript",
    }, options)
end

function Client:sendEvent(input, options)
    return self:invokeOperation(input, {
        name = "SendEvent",
        input_schema = types.SendEventInput,
        output_schema = types.SendEventOutput,
        http_method = "POST",
        http_path = "/participant/event",
    }, options)
end

function Client:sendMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendMessage",
        input_schema = types.SendMessageInput,
        output_schema = types.SendMessageOutput,
        http_method = "POST",
        http_path = "/participant/message",
    }, options)
end

function Client:startAttachmentUpload(input, options)
    return self:invokeOperation(input, {
        name = "StartAttachmentUpload",
        input_schema = types.StartAttachmentUploadInput,
        output_schema = types.StartAttachmentUploadOutput,
        http_method = "POST",
        http_path = "/participant/start-attachment-upload",
    }, options)
end

return M
