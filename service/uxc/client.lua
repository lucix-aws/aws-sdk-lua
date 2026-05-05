local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("uxc.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("uxc.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSAccountUXSetting"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "uxc", signing_region = cfg.region } }
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

function Client:getAccountCustomizations(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountCustomizations",
        input_schema = schemas.GetAccountCustomizationsInput,
        output_schema = schemas.GetAccountCustomizationsOutput,
        http_method = "GET",
        http_path = "/v1/account-customizations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServices(input, options)
    return self:invokeOperation(input, {
        name = "ListServices",
        input_schema = schemas.ListServicesInput,
        output_schema = schemas.ListServicesOutput,
        http_method = "GET",
        http_path = "/v1/services",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccountCustomizations(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountCustomizations",
        input_schema = schemas.UpdateAccountCustomizationsInput,
        output_schema = schemas.UpdateAccountCustomizationsOutput,
        http_method = "PATCH",
        http_path = "/v1/account-customizations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
