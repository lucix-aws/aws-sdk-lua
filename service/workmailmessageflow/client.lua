local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("workmailmessageflow.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("workmailmessageflow.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "GiraffeMessageInTransitService"
    cfg.signing_name = "giraffemessageintransitservice"
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

function Client:getRawMessageContent(input, options)
    return self:invokeOperation(input, {
        name = "GetRawMessageContent",
        input_schema = types.GetRawMessageContentInput,
        output_schema = types.GetRawMessageContentOutput,
        http_method = "GET",
        http_path = "/messages/{messageId}",
    }, options)
end

function Client:putRawMessageContent(input, options)
    return self:invokeOperation(input, {
        name = "PutRawMessageContent",
        input_schema = types.PutRawMessageContentInput,
        output_schema = types.PutRawMessageContentOutput,
        http_method = "POST",
        http_path = "/messages/{messageId}",
    }, options)
end

return M
