local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("transcribestreaming.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("transcribestreaming.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Transcribe"
    cfg.signing_name = "transcribe"
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

function Client:getMedicalScribeStream(input, options)
    return self:invokeOperation(input, {
        name = "GetMedicalScribeStream",
        input_schema = types.GetMedicalScribeStreamInput,
        output_schema = types.GetMedicalScribeStreamOutput,
        http_method = "GET",
        http_path = "/medical-scribe-stream/{SessionId}",
    }, options)
end

function Client:startCallAnalyticsStreamTranscription(input, options)
    return self:invokeOperation(input, {
        name = "StartCallAnalyticsStreamTranscription",
        input_schema = types.StartCallAnalyticsStreamTranscriptionInput,
        output_schema = types.StartCallAnalyticsStreamTranscriptionOutput,
        http_method = "POST",
        http_path = "/call-analytics-stream-transcription",
    }, options)
end

function Client:startMedicalScribeStream(input, options)
    return self:invokeOperation(input, {
        name = "StartMedicalScribeStream",
        input_schema = types.StartMedicalScribeStreamInput,
        output_schema = types.StartMedicalScribeStreamOutput,
        http_method = "POST",
        http_path = "/medical-scribe-stream",
    }, options)
end

function Client:startMedicalStreamTranscription(input, options)
    return self:invokeOperation(input, {
        name = "StartMedicalStreamTranscription",
        input_schema = types.StartMedicalStreamTranscriptionInput,
        output_schema = types.StartMedicalStreamTranscriptionOutput,
        http_method = "POST",
        http_path = "/medical-stream-transcription",
    }, options)
end

function Client:startStreamTranscription(input, options)
    return self:invokeOperation(input, {
        name = "StartStreamTranscription",
        input_schema = types.StartStreamTranscriptionInput,
        output_schema = types.StartStreamTranscriptionOutput,
        http_method = "POST",
        http_path = "/stream-transcription",
    }, options)
end

return M
