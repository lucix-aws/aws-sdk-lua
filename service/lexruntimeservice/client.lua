local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("lexruntimeservice.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("lexruntimeservice.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSDeepSenseRunTimeService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "lex", signing_region = cfg.region } }
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

function Client:deleteSession(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSession",
        input_schema = schemas.DeleteSessionInput,
        output_schema = schemas.DeleteSessionOutput,
        http_method = "DELETE",
        http_path = "/bot/{botName}/alias/{botAlias}/user/{userId}/session",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSession(input, options)
    return self:invokeOperation(input, {
        name = "GetSession",
        input_schema = schemas.GetSessionInput,
        output_schema = schemas.GetSessionOutput,
        http_method = "GET",
        http_path = "/bot/{botName}/alias/{botAlias}/user/{userId}/session",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:postContent(input, options)
    return self:invokeOperation(input, {
        name = "PostContent",
        input_schema = schemas.PostContentInput,
        output_schema = schemas.PostContentOutput,
        http_method = "POST",
        http_path = "/bot/{botName}/alias/{botAlias}/user/{userId}/content",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:postText(input, options)
    return self:invokeOperation(input, {
        name = "PostText",
        input_schema = schemas.PostTextInput,
        output_schema = schemas.PostTextOutput,
        http_method = "POST",
        http_path = "/bot/{botName}/alias/{botAlias}/user/{userId}/text",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putSession(input, options)
    return self:invokeOperation(input, {
        name = "PutSession",
        input_schema = schemas.PutSessionInput,
        output_schema = schemas.PutSessionOutput,
        http_method = "POST",
        http_path = "/bot/{botName}/alias/{botAlias}/user/{userId}/session",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
