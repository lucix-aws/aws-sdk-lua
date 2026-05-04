local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ssmguiconnect.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("ssmguiconnect.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SSMGuiConnect"
    cfg.signing_name = "ssmguiconnect"
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

function Client:deleteConnectionRecordingPreferences(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectionRecordingPreferences",
        input_schema = types.DeleteConnectionRecordingPreferencesInput,
        output_schema = types.DeleteConnectionRecordingPreferencesOutput,
        http_method = "POST",
        http_path = "/DeleteConnectionRecordingPreferences",
    }, options)
end

function Client:getConnectionRecordingPreferences(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectionRecordingPreferences",
        input_schema = types.GetConnectionRecordingPreferencesInput,
        output_schema = types.GetConnectionRecordingPreferencesOutput,
        http_method = "POST",
        http_path = "/GetConnectionRecordingPreferences",
    }, options)
end

function Client:updateConnectionRecordingPreferences(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectionRecordingPreferences",
        input_schema = types.UpdateConnectionRecordingPreferencesInput,
        output_schema = types.UpdateConnectionRecordingPreferencesOutput,
        http_method = "POST",
        http_path = "/UpdateConnectionRecordingPreferences",
    }, options)
end

return M
