local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ssooidc.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("ssooidc.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSSSOOIDCService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "sso-oauth", signing_region = cfg.region } }
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

function Client:createToken(input, options)
    return self:invokeOperation(input, {
        name = "CreateToken",
        input_schema = schemas.CreateTokenInput,
        output_schema = schemas.CreateTokenOutput,
        http_method = "POST",
        http_path = "/token",
        effective_auth_schemes = {
        },
    }, options)
end

function Client:createTokenWithIAM(input, options)
    return self:invokeOperation(input, {
        name = "CreateTokenWithIAM",
        input_schema = schemas.CreateTokenWithIAMInput,
        output_schema = schemas.CreateTokenWithIAMOutput,
        http_method = "POST",
        http_path = "/token?aws_iam=t",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerClient(input, options)
    return self:invokeOperation(input, {
        name = "RegisterClient",
        input_schema = schemas.RegisterClientInput,
        output_schema = schemas.RegisterClientOutput,
        http_method = "POST",
        http_path = "/client/register",
        effective_auth_schemes = {
        },
    }, options)
end

function Client:startDeviceAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "StartDeviceAuthorization",
        input_schema = schemas.StartDeviceAuthorizationInput,
        output_schema = schemas.StartDeviceAuthorizationOutput,
        http_method = "POST",
        http_path = "/device_authorization",
        effective_auth_schemes = {
        },
    }, options)
end

return M
