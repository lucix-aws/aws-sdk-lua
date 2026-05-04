local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("uxc.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("uxc.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSAccountUXSetting"
    cfg.signing_name = "uxc"
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

function Client:getAccountCustomizations(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountCustomizations",
        input_schema = types.GetAccountCustomizationsInput,
        output_schema = types.GetAccountCustomizationsOutput,
        http_method = "GET",
        http_path = "/v1/account-customizations",
    }, options)
end

function Client:listServices(input, options)
    return self:invokeOperation(input, {
        name = "ListServices",
        input_schema = types.ListServicesInput,
        output_schema = types.ListServicesOutput,
        http_method = "GET",
        http_path = "/v1/services",
    }, options)
end

function Client:updateAccountCustomizations(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountCustomizations",
        input_schema = types.UpdateAccountCustomizationsInput,
        output_schema = types.UpdateAccountCustomizationsOutput,
        http_method = "PATCH",
        http_path = "/v1/account-customizations",
    }, options)
end

return M
