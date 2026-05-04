local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("lexruntimeservice.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("lexruntimeservice.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSDeepSenseRunTimeService"
    cfg.signing_name = "lex"
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
        http_path = "/bot/{botName}/alias/{botAlias}/user/{userId}/session",
    }, options)
end

function Client:getSession(input, options)
    return self:invokeOperation(input, {
        name = "GetSession",
        input_schema = types.GetSessionInput,
        output_schema = types.GetSessionOutput,
        http_method = "GET",
        http_path = "/bot/{botName}/alias/{botAlias}/user/{userId}/session",
    }, options)
end

function Client:postContent(input, options)
    return self:invokeOperation(input, {
        name = "PostContent",
        input_schema = types.PostContentInput,
        output_schema = types.PostContentOutput,
        http_method = "POST",
        http_path = "/bot/{botName}/alias/{botAlias}/user/{userId}/content",
    }, options)
end

function Client:postText(input, options)
    return self:invokeOperation(input, {
        name = "PostText",
        input_schema = types.PostTextInput,
        output_schema = types.PostTextOutput,
        http_method = "POST",
        http_path = "/bot/{botName}/alias/{botAlias}/user/{userId}/text",
    }, options)
end

function Client:putSession(input, options)
    return self:invokeOperation(input, {
        name = "PutSession",
        input_schema = types.PutSessionInput,
        output_schema = types.PutSessionOutput,
        http_method = "POST",
        http_path = "/bot/{botName}/alias/{botAlias}/user/{userId}/session",
    }, options)
end

return M
