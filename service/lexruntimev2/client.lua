local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("lexruntimev2.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("lexruntimev2.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSDeepSenseRunTimeServiceApi2_0"
    cfg.signing_name = "awsdeepsenseruntimeserviceapi2_0"
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

function Client:deleteSession(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSession",
        input_schema = types.DeleteSessionInput,
        output_schema = types.DeleteSessionOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}",
    }, options)
end

function Client:getSession(input, options)
    return self:invokeOperation(input, {
        name = "GetSession",
        input_schema = types.GetSessionInput,
        output_schema = types.GetSessionOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}",
    }, options)
end

function Client:putSession(input, options)
    return self:invokeOperation(input, {
        name = "PutSession",
        input_schema = types.PutSessionInput,
        output_schema = types.PutSessionOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}",
    }, options)
end

function Client:recognizeText(input, options)
    return self:invokeOperation(input, {
        name = "RecognizeText",
        input_schema = types.RecognizeTextInput,
        output_schema = types.RecognizeTextOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/text",
    }, options)
end

function Client:recognizeUtterance(input, options)
    return self:invokeOperation(input, {
        name = "RecognizeUtterance",
        input_schema = types.RecognizeUtteranceInput,
        output_schema = types.RecognizeUtteranceOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/utterance",
    }, options)
end

function Client:startConversation(input, options)
    return self:invokeOperation(input, {
        name = "StartConversation",
        input_schema = types.StartConversationInput,
        output_schema = types.StartConversationOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}/conversation",
    }, options)
end

return M
