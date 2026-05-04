local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ssooidc.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("ssooidc.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSSSOOIDCService"
    cfg.signing_name = "sso-oauth"
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

function Client:createToken(input, options)
    return self:invokeOperation(input, {
        name = "CreateToken",
        input_schema = types.CreateTokenInput,
        output_schema = types.CreateTokenOutput,
        http_method = "POST",
        http_path = "/token",
    }, options)
end

function Client:createTokenWithIAM(input, options)
    return self:invokeOperation(input, {
        name = "CreateTokenWithIAM",
        input_schema = types.CreateTokenWithIAMInput,
        output_schema = types.CreateTokenWithIAMOutput,
        http_method = "POST",
        http_path = "/token?aws_iam=t",
    }, options)
end

function Client:registerClient(input, options)
    return self:invokeOperation(input, {
        name = "RegisterClient",
        input_schema = types.RegisterClientInput,
        output_schema = types.RegisterClientOutput,
        http_method = "POST",
        http_path = "/client/register",
    }, options)
end

function Client:startDeviceAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "StartDeviceAuthorization",
        input_schema = types.StartDeviceAuthorizationInput,
        output_schema = types.StartDeviceAuthorizationOutput,
        http_method = "POST",
        http_path = "/device_authorization",
    }, options)
end

return M
