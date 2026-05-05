local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("personalizeevents.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("personalizeevents.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonPersonalizeEvents"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "personalize", signing_region = cfg.region } }
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

function Client:putActionInteractions(input, options)
    return self:invokeOperation(input, {
        name = "PutActionInteractions",
        input_schema = schemas.PutActionInteractionsInput,
        output_schema = schemas.PutActionInteractionsOutput,
        http_method = "POST",
        http_path = "/action-interactions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putActions(input, options)
    return self:invokeOperation(input, {
        name = "PutActions",
        input_schema = schemas.PutActionsInput,
        output_schema = schemas.PutActionsOutput,
        http_method = "POST",
        http_path = "/actions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putEvents(input, options)
    return self:invokeOperation(input, {
        name = "PutEvents",
        input_schema = schemas.PutEventsInput,
        output_schema = schemas.PutEventsOutput,
        http_method = "POST",
        http_path = "/events",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putItems(input, options)
    return self:invokeOperation(input, {
        name = "PutItems",
        input_schema = schemas.PutItemsInput,
        output_schema = schemas.PutItemsOutput,
        http_method = "POST",
        http_path = "/items",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putUsers(input, options)
    return self:invokeOperation(input, {
        name = "PutUsers",
        input_schema = schemas.PutUsersInput,
        output_schema = schemas.PutUsersOutput,
        http_method = "POST",
        http_path = "/users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
