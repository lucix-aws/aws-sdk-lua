local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("personalizeevents.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("personalizeevents.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonPersonalizeEvents"
    cfg.signing_name = "amazonpersonalizeevents"
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

function Client:putActionInteractions(input, options)
    return self:invokeOperation(input, {
        name = "PutActionInteractions",
        input_schema = types.PutActionInteractionsInput,
        output_schema = types.PutActionInteractionsOutput,
        http_method = "POST",
        http_path = "/action-interactions",
    }, options)
end

function Client:putActions(input, options)
    return self:invokeOperation(input, {
        name = "PutActions",
        input_schema = types.PutActionsInput,
        output_schema = types.PutActionsOutput,
        http_method = "POST",
        http_path = "/actions",
    }, options)
end

function Client:putEvents(input, options)
    return self:invokeOperation(input, {
        name = "PutEvents",
        input_schema = types.PutEventsInput,
        output_schema = types.PutEventsOutput,
        http_method = "POST",
        http_path = "/events",
    }, options)
end

function Client:putItems(input, options)
    return self:invokeOperation(input, {
        name = "PutItems",
        input_schema = types.PutItemsInput,
        output_schema = types.PutItemsOutput,
        http_method = "POST",
        http_path = "/items",
    }, options)
end

function Client:putUsers(input, options)
    return self:invokeOperation(input, {
        name = "PutUsers",
        input_schema = types.PutUsersInput,
        output_schema = types.PutUsersOutput,
        http_method = "POST",
        http_path = "/users",
    }, options)
end

return M
