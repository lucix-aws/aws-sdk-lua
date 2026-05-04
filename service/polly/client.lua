local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("polly.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("polly.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Parrot_v1"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "polly", signing_region = cfg.region } }
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

function Client:deleteLexicon(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLexicon",
        input_schema = types.DeleteLexiconInput,
        output_schema = types.DeleteLexiconOutput,
        http_method = "DELETE",
        http_path = "/v1/lexicons/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVoices(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVoices",
        input_schema = types.DescribeVoicesInput,
        output_schema = types.DescribeVoicesOutput,
        http_method = "GET",
        http_path = "/v1/voices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLexicon(input, options)
    return self:invokeOperation(input, {
        name = "GetLexicon",
        input_schema = types.GetLexiconInput,
        output_schema = types.GetLexiconOutput,
        http_method = "GET",
        http_path = "/v1/lexicons/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSpeechSynthesisTask(input, options)
    return self:invokeOperation(input, {
        name = "GetSpeechSynthesisTask",
        input_schema = types.GetSpeechSynthesisTaskInput,
        output_schema = types.GetSpeechSynthesisTaskOutput,
        http_method = "GET",
        http_path = "/v1/synthesisTasks/{TaskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLexicons(input, options)
    return self:invokeOperation(input, {
        name = "ListLexicons",
        input_schema = types.ListLexiconsInput,
        output_schema = types.ListLexiconsOutput,
        http_method = "GET",
        http_path = "/v1/lexicons",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSpeechSynthesisTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListSpeechSynthesisTasks",
        input_schema = types.ListSpeechSynthesisTasksInput,
        output_schema = types.ListSpeechSynthesisTasksOutput,
        http_method = "GET",
        http_path = "/v1/synthesisTasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putLexicon(input, options)
    return self:invokeOperation(input, {
        name = "PutLexicon",
        input_schema = types.PutLexiconInput,
        output_schema = types.PutLexiconOutput,
        http_method = "PUT",
        http_path = "/v1/lexicons/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSpeechSynthesisStream(input, options)
    return self:invokeOperation(input, {
        name = "StartSpeechSynthesisStream",
        input_schema = types.StartSpeechSynthesisStreamInput,
        output_schema = types.StartSpeechSynthesisStreamOutput,
        http_method = "POST",
        http_path = "/v1/synthesisStream",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSpeechSynthesisTask(input, options)
    return self:invokeOperation(input, {
        name = "StartSpeechSynthesisTask",
        input_schema = types.StartSpeechSynthesisTaskInput,
        output_schema = types.StartSpeechSynthesisTaskOutput,
        http_method = "POST",
        http_path = "/v1/synthesisTasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:synthesizeSpeech(input, options)
    return self:invokeOperation(input, {
        name = "SynthesizeSpeech",
        input_schema = types.SynthesizeSpeechInput,
        output_schema = types.SynthesizeSpeechOutput,
        http_method = "POST",
        http_path = "/v1/speech",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
