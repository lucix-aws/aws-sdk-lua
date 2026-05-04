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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ssm-guiconnect", signing_region = cfg.region } }
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

function Client:deleteConnectionRecordingPreferences(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectionRecordingPreferences",
        input_schema = types.DeleteConnectionRecordingPreferencesInput,
        output_schema = types.DeleteConnectionRecordingPreferencesOutput,
        http_method = "POST",
        http_path = "/DeleteConnectionRecordingPreferences",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnectionRecordingPreferences(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectionRecordingPreferences",
        input_schema = types.GetConnectionRecordingPreferencesInput,
        output_schema = types.GetConnectionRecordingPreferencesOutput,
        http_method = "POST",
        http_path = "/GetConnectionRecordingPreferences",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConnectionRecordingPreferences(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectionRecordingPreferences",
        input_schema = types.UpdateConnectionRecordingPreferencesInput,
        output_schema = types.UpdateConnectionRecordingPreferencesOutput,
        http_method = "POST",
        http_path = "/UpdateConnectionRecordingPreferences",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
