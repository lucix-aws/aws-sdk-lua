local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("eksauth.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("eksauth.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "EKSAuthFrontend"
    cfg.signing_name = "eksauthfrontend"
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

function Client:assumeRoleForPodIdentity(input, options)
    return self:invokeOperation(input, {
        name = "AssumeRoleForPodIdentity",
        input_schema = types.AssumeRoleForPodIdentityInput,
        output_schema = types.AssumeRoleForPodIdentityOutput,
        http_method = "POST",
        http_path = "/clusters/{clusterName}/assume-role-for-pod-identity",
    }, options)
end

return M
