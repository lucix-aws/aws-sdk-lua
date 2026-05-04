local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("appconfigdata.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("appconfigdata.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AppConfigData"
    cfg.signing_name = "appconfigdata"
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

function Client:getLatestConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetLatestConfiguration",
        input_schema = types.GetLatestConfigurationInput,
        output_schema = types.GetLatestConfigurationOutput,
        http_method = "GET",
        http_path = "/configuration",
    }, options)
end

function Client:startConfigurationSession(input, options)
    return self:invokeOperation(input, {
        name = "StartConfigurationSession",
        input_schema = types.StartConfigurationSessionInput,
        output_schema = types.StartConfigurationSessionOutput,
        http_method = "POST",
        http_path = "/configurationsessions",
    }, options)
end

return M
